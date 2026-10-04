Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-benchmark?download=true
inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@parseOptions:bb.a

bb.bu:                                            ; preds = %bb.br
  %i.ji = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(6) @.str.41) #21
  %.not222 = icmp eq i32 %i.ji, 0
  br i1 %.not222, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.c, label %.loopexit319.loopexit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jj = add nsw i32 %.0183332, 1                ; 2 uses
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !22
  %i.jn = tail call noalias ptr @strdup(ptr noundef %i.jm) #20
  store ptr %i.jn, ptr getelementptr inbounds nuw (i8, ptr @config, i64 96), align 8, !tbaa !150
  br label %bb.ce

bb.bx:                                            ; preds = %bb.bu
  %i.jo = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(14) @.str.42) #21
  %.not223 = icmp eq i32 %i.jo, 0
  br i1 %.not223, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  br i1 %i.c, label %.loopexit319.loopexit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jp = add nsw i32 %.0183332, 1                ; 2 uses
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !22
  %i.jt = tail call noalias ptr @strdup(ptr noundef %i.js) #20
  store ptr %i.jt, ptr getelementptr inbounds nuw (i8, ptr @config, i64 104), align 8, !tbaa !151
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bx
  %i.ju = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(19) @.str.43) #21
  %.not224 = icmp eq i32 %i.ju, 0
  br i1 %.not224, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.c, label %.loopexit319.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jv = add nsw i32 %.0183332, 1                ; 2 uses
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !22
  %i.jz = tail call noalias ptr @strdup(ptr noundef %i.jy) #20
  store ptr %i.jz, ptr getelementptr inbounds nuw (i8, ptr @config, i64 112), align 8, !tbaa !152
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  br i1 %.not333, label %.loopexit319, label %.loopexit

bb.ce:                                            ; preds = %.thread, %bb.as, %bb.z, %bb.c, %bb.f, %bb.j, %bb.o, %bb.r, %bb.w, %bb.ag, %bb.ai, %bb.al, %bb.ap, %bb.ax, %bb.ay, %bb.aw, %bb.bc, %bb.bf, %bb.bl, %bb.bq, %bb.bw, %bb.cc, %bb.bz, %bb.bt, %bb.bo, %bb.bi, %bb.ba, %bb.an, %bb.aj, %bb.ah, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h
  %.1 = phi i32 [ %i.jv, %bb.cc ], [ %i.jp, %bb.bz ], [ %i.jj, %bb.bw ], [ %i.jd, %bb.bt ], [ %.0183332, %bb.bq ], [ %i.iw, %bb.bo ], [ %i.iq, %bb.bl ], [ %i.ik, %bb.bi ], [ %.0183332, %bb.bf ], [ %.0183332, %bb.bc ], [ %.0183332, %bb.ba ], [ %i.hv, %bb.aw ], [ %i.hv, %bb.ay ], [ %i.hv, %bb.ax ], [ %i.hm, %bb.as ], [ %i.hd, %bb.ap ], [ %i.gw, %bb.an ], [ %i.gj, %bb.al ], [ %.0183332, %bb.aj ], [ %.0183332, %bb.ai ], [ %.0183332, %bb.ah ], [ %.0183332, %bb.ag ], [ %.0183332, %bb.af ], [ %i.ex, %.thread ], [ %i.em, %bb.ab ], [ %i.eb, %bb.z ], [ %.0183332, %bb.x ], [ %i.di, %bb.w ], [ %i.cx, %bb.t ], [ %i.cp, %bb.r ], [ %.0183332, %bb.p ], [ %i.ca, %bb.o ], [ %i.bo, %bb.l ], [ %i.be, %bb.j ], [ %i.as, %bb.h ], [ %i.ah, %bb.f ], [ %i.m, %bb.c ]
  %i.ka = add nsw i32 %.1, 1                      ; 3 uses
  %i.kb = icmp slt i32 %i.ka, %0
  br i1 %i.kb, label %sub_0, label %.loopexit, !llvm.loop !144

.loopexit319.loopexit:                            ; preds = %bb.b, %bb.e, %bb.g, %bb.i, %bb.k, %bb.n, %bb.q, %bb.s, %bb.y, %bb.aa, %bb.ac, %bb.ak, %bb.am, %bb.ao, %bb.ar, %bb.au, %bb.bh, %bb.bk, %bb.bn, %bb.bs, %bb.bv, %bb.by, %bb.cb, %bb.ae
  %.2.ph = phi i32 [ %i.b, %bb.cb ], [ %i.b, %bb.by ], [ %i.b, %bb.bv ], [ %i.b, %bb.bs ], [ %i.b, %bb.bn ], [ %i.b, %bb.bk ], [ %i.b, %bb.bh ], [ %i.b, %bb.au ], [ %i.b, %bb.ar ], [ %i.b, %bb.ao ], [ %i.b, %bb.am ], [ %i.b, %bb.ak ], [ %i.b, %bb.ac ], [ %i.b, %bb.b ], [ %i.b, %bb.aa ], [ %i.b, %bb.y ], [ %i.b, %bb.s ], [ %i.b, %bb.q ], [ %i.b, %bb.n ], [ %i.b, %bb.k ], [ %i.b, %bb.i ], [ %i.b, %bb.g ], [ %i.b, %bb.e ], [ %i.ex, %bb.ae ]
  %.pre = sext i32 %.2.ph to i64
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre
  %.pre384 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %.loopexit319

.loopexit319:                                     ; preds = %.loopexit319.loopexit, %bb.cd
  %i.kc = phi ptr [ %.pre384, %.loopexit319.loopexit ], [ %i.f, %bb.cd ]
  %i.kd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef %i.kc) ; 0 uses
  br label %.loopexit318

.loopexit318:                                     ; preds = %bb.bd, %.loopexit319
  %.0184 = phi i32 [ 1, %.loopexit319 ], [ 0, %bb.bd ]
  %i.ke = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.48) ; 0 uses
  tail call void @exit(i32 noundef %.0184) #22
  unreachable

.loopexit:                                        ; preds = %bb.ce, %bb.a, %bb.cd
  %.0183326 = phi i32 [ %.0183332, %bb.cd ], [ 1, %bb.a ], [ %i.ka, %bb.ce ]
  ret i32 %.0183326
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @cliVersion() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @hi_sdsfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare ptr @hi_sdsnew(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare void @parseRedisUri(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @hi_sdsfromlonglong(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @srandom(i32 noundef) local_unnamed_addr #7

declare void @init_genrand64(i64 noundef) local_unnamed_addr #3

declare ptr @hi_sdscat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @hi_sdstolower(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 251) i32 @showThroughput(ptr noundef %0, i64 %1, ptr nofree noundef readonly captures(address_is_null) %2) #0 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #20 ; 0 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !62
  %i.c = mul nsw i64 %i.b, 1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !63
  %i.f = add nsw i64 %i.c, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.g = sdiv i64 %i.f, 1000                      ; 3 uses
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) monotonic, align 4
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) monotonic, align 8 ; 5 uses
  %i.j = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 140) monotonic, align 4
  %i.k = icmp ne i32 %i.h, 0
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 128), align 8 ; 2 uses
  %.not = icmp eq i32 %i.i, %i.l
  %or.cond = select i1 %i.k, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !40
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.49, i64 38, i64 1, ptr %i.m) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  %.not24 = icmp eq i32 %i.n, 0
  %.not25 = icmp slt i32 %i.i, %i.l
  %or.cond29 = select i1 %.not24, i1 true, i1 %.not25
  br i1 %or.cond29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @aeStop(ptr noundef %0) #20
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 220), align 4, !tbaa !51
  %.not26 = icmp eq i32 %i.o, 0
  br i1 %.not26, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %2, align 8, !tbaa !65
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !53
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !66
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.s) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.v = tail call i32 @fflush(ptr noundef %i.u)  ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !67
  %i.x = sub nsw i64 %i.g, %i.w
  %i.y = sitofp i64 %i.x to float
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 152), align 8, !tbaa !153
  %i.aa = sub nsw i64 %i.g, %i.z
  %i.ab = sitofp i64 %i.aa to float
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.y, i64 1
  %i.ae = fdiv <2 x float> %i.ad, splat (float 1.000000e+03)
  %i.af = sub nsw i32 %i.i, %i.j
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @config, i64 152), align 8, !tbaa !153
  store atomic i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @config, i64 140) monotonic, align 4
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !68
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %4, ptr noundef nonnull @.str.52) ; 0 uses
  %6 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !69
  %7 = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %8 = insertelement <2 x i32> %7, i32 %i.i, i64 1
  %9 = sitofp <2 x i32> %8 to <2 x float>
  %10 = fdiv <2 x float> %9, %i.ae
  %i.ag = fpext <2 x float> %10 to <2 x double>   ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !70
  %i.ai = tail call double @hdr_mean(ptr noundef %i.ah) #20
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71
  %i.ak = tail call double @hdr_mean(ptr noundef %i.aj) #20
  %i.al = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.ak, i64 1
  %i.an = fdiv <2 x double> %i.am, splat (double 1.000000e+03) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = extractelement <2 x double> %i.an, i64 1
  %i.aq = extractelement <2 x double> %i.ag, i64 0
  %i.ar = extractelement <2 x double> %i.ag, i64 1
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %6, double noundef %i.aq, double noundef %i.ar, double noundef %i.ao, double noundef %i.ap)
  store i32 %i.as, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !68
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !70
  tail call void @hdr_reset(ptr noundef %i.at) #20
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.av = tail call i32 @fflush(ptr noundef %i.au) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.e, %bb.j, %bb.i, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 250, %bb.j ], [ 250, %bb.e ], [ 250, %bb.i ], [ 250, %bb.g ]
  ret i32 %.0
}

declare void @aeStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

declare double @hdr_mean(ptr noundef) local_unnamed_addr #3

declare void @hdr_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @test_is_selected(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 240), align 8, !tbaa !54 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  store i8 44, ptr %i.a, align 16, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %sext = shl i64 %i.d, 32                        ; 3 uses
  %i.f = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %0, i64 %i.f, i1 false)
  %sext5 = add i64 %sext, 4294967296
  %i.g = ashr exact i64 %sext5, 32
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  store i8 44, ptr %i.h, align 1, !tbaa !48
  %sext6 = add i64 %sext, 8589934592
  %i.i = ashr exact i64 %sext6, 32
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !48
  %i.k = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.l = icmp ne ptr %i.k, null
  %i.m = zext i1 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %i.b = alloca [256 x i8], align 16              ; 9 uses
  %i.c = alloca [256 x i8], align 16              ; 7 uses
  %i.d = alloca [256 x i8], align 16              ; 9 uses
  %i.e = alloca [256 x i8], align 16              ; 7 uses
  %i.f = alloca [256 x i8], align 16              ; 9 uses
  %i.g = alloca [256 x i8], align 16              ; 7 uses
  %i.h = alloca [256 x i8], align 16              ; 9 uses
  %i.i = alloca [256 x i8], align 16              ; 7 uses
  %i.j = alloca [256 x i8], align 16              ; 9 uses
  %i.k = alloca [256 x i8], align 16              ; 7 uses
  %i.l = alloca [256 x i8], align 16              ; 7 uses
  %i.m = alloca [256 x i8], align 16              ; 7 uses
  %i.n = alloca [256 x i8], align 16              ; 7 uses
  %i.o = alloca [256 x i8], align 16              ; 9 uses
  %i.p = alloca [256 x i8], align 16              ; 9 uses
  %i.q = alloca [256 x i8], align 16              ; 9 uses
  %i.r = alloca [256 x i8], align 16              ; 9 uses
  %i.s = alloca [256 x i8], align 16              ; 9 uses
  %i.t = alloca [256 x i8], align 16              ; 9 uses
  %i.u = alloca [256 x i8], align 16              ; 9 uses
  %i.v = alloca [256 x i8], align 16              ; 9 uses
  %i.w = alloca [256 x i8], align 16              ; 9 uses
  %i.x = alloca [256 x i8], align 16              ; 9 uses
  %i.y = alloca [256 x i8], align 16              ; 9 uses
  %i.z = alloca [256 x i8], align 16              ; 9 uses
  %i.aa = alloca [256 x i8], align 16             ; 9 uses
  %i.ab = alloca [256 x i8], align 16             ; 7 uses
  %i.ac = alloca [256 x i8], align 16             ; 9 uses
  %i.ad = alloca [256 x i8], align 16             ; 7 uses
  %i.ae = alloca [256 x i8], align 16             ; 8 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.af = alloca ptr, align 8                     ; 65 uses
  %i.ag = alloca [21 x ptr], align 16             ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #20
  %i.ah = tail call i64 @time(ptr noundef null) #20
  %i.ai = tail call i32 @getpid() #20
  %i.aj = trunc i64 %i.ah to i32
  %i.ak = xor i32 %i.ai, %i.aj
  tail call void @srandom(i32 noundef %i.ak) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.al = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #20 ; 0 uses
  %i.am = load i64, ptr %2, align 8, !tbaa !62
  %i.an = mul nsw i64 %i.am, 1000000
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !63
  %i.aq = add nsw i64 %i.an, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ar = tail call i32 @getpid() #20
  %i.as = sext i32 %i.ar to i64
  %i.at = xor i64 %i.aq, %i.as
  tail call void @init_genrand64(i64 noundef %i.at) #20
  %i.au = tail call ptr @signal(i32 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20 ; 0 uses
  %i.av = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @config, i64 56), i8 0, i64 64, i1 false)
  store i32 50, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !34
  store i32 100000, ptr getelementptr inbounds nuw (i8, ptr @config, i64 128), align 8, !tbaa !35
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !66
  %i.aw = tail call ptr @aeCreateEventLoop(i32 noundef 10240) #20 ; 2 uses
  store ptr %i.aw, ptr @config, align 8, !tbaa !72
  %i.ax = tail call i64 @aeCreateTimeEvent(ptr noundef %i.aw, i64 noundef 1, ptr noundef nonnull @showThroughput, ptr noundef null, ptr noundef null) #20 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !73
  store <4 x i32> <i32 3, i32 0, i32 0, i32 1>, ptr getelementptr inbounds nuw (i8, ptr @config, i64 164), align 4, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @config, i64 216), i8 0, i64 16, i1 false)
  %i.ay = tail call ptr @listCreate() #20
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !74
  %i.az = tail call ptr @hi_sdsnew(ptr noundef nonnull @.str.54) #20
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !37
  store i32 6379, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !38
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 40), align 8, !tbaa !41
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 240), align 8, !tbaa !54
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 20), align 4, !tbaa !45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 248), align 8, !tbaa !42
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !43
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !75
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @config, i64 264), i8 0, i64 32, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 312) seq_cst, align 8, !tbaa !167
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316) seq_cst, align 4, !tbaa !168
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 320) seq_cst, align 8, !tbaa !169
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 324), align 4, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 408), align 8, !tbaa !47
  %i.ba = tail call i32 @parseOptions(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.bb = sub i32 %0, %i.ba                       ; 9 uses
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bc ; 3 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 48), align 8, !tbaa !58
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bf = tail call i32 @cliSecureInit() #20      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !56
  %.not141 = icmp eq i32 %i.bg, 0
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !37 ; 2 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !38 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 40), align 8, !tbaa !41 ; 2 uses
  br i1 %.not141, label %bb.cc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = tail call fastcc ptr @getRedisContext(ptr noundef %i.bh, i32 noundef %i.bi, ptr noundef %i.bj) ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !37
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !38
  %i.bo = tail call noalias dereferenceable_or_null(104) ptr @zmalloc(i64 noundef 104) #26 ; 17 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %createClusterNode.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !79
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store i32 %i.bn, ptr %i.bp, align 8, !tbaa !80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr null, ptr %i.bq, align 8, !tbaa !81
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 0, ptr %i.br, align 8, !tbaa !170
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !171
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 68
  store i32 0, ptr %i.bt, align 4, !tbaa !172
  %i.bu = tail call noalias dereferenceable_or_null(65536) ptr @zmalloc(i64 noundef 65536) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
end_hunk_0
begin_hunk_1_@createClient:bb.a
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit, %bb.bf
  %.0159.in = phi ptr [ %i.lo, %bb.bf ], [ @config, %.loopexit ]
  %.0159 = load ptr, ptr %.0159.in, align 8, !tbaa !139 ; 2 uses
  %i.lp = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !53
  %i.lq = icmp eq i32 %i.lp, 0
  %i.lr = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 140
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !140 ; 2 uses
  br i1 %i.lq, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lu = call i32 @aeCreateFileEvent(ptr noundef %.0159, i32 noundef %i.lt, i32 noundef 2, ptr noundef nonnull @writeHandler, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.lv = call i32 @aeCreateFileEvent(ptr noundef %.0159, i32 noundef %i.lt, i32 noundef 1, ptr noundef nonnull @readHandler, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.lw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !74
  %i.lx = call ptr @listAddNodeTail(ptr noundef %i.lw, ptr noundef nonnull %i.i) #20 ; 0 uses
  %i.ly = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @config, i64 124), i32 1 monotonic, align 4 ; 0 uses
  %i.lz = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 320) monotonic, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i32 %i.lz, ptr %i.ma, align 8, !tbaa !141
  ret ptr %i.i
}

declare void @aeMain(ptr noundef) local_unnamed_addr #3

declare ptr @hi_sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @getSdsArrayFromArgv(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @hi_sds_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @readArgFromStdin() local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #10

declare i64 @redisFormatCommandArgv(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @benchmark(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.hdr_iter, align 8           ; 14 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !69
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 132) seq_cst, align 4, !tbaa !198
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) seq_cst, align 8, !tbaa !199
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 140) seq_cst, align 4, !tbaa !200
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !68
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !75
  %i.b = tail call i32 @hdr_init(i64 noundef 10, i64 noundef 3000000, i32 noundef %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 296)) #20 ; 0 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !75
  %i.d = tail call i32 @hdr_init(i64 noundef 10, i64 noundef 3000000, i32 noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 304)) #20 ; 0 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @initBenchmarkThreads()
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  %i.f = icmp slt i32 %.pre, 1
  %i.g = sext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = sext i32 %2 to i64
  %i.j = tail call fastcc ptr @createClient(ptr noundef %1, i64 noundef %i.i, ptr noundef null, i32 noundef %i.h)
  %i.k = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !66
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !34
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %createMissingClients.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.024.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !66
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  %i.q = srem i32 %i.o, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.0.i = phi i32 [ %i.q, %bb.d ], [ -1, %.lr.ph.i ]
  %i.r = tail call fastcc ptr @createClient(ptr noundef null, i64 noundef 0, ptr noundef readonly %i.j, i32 noundef %.0.i), !inline_history !1 ; 0 uses
  %i.s = add nsw i32 %.024.i, 1
  %i.t = icmp sgt i32 %.024.i, 63
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @usleep(i32 noundef 50000) #20, !inline_history !1 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ 0, %bb.f ], [ %i.s, %bb.e ]
  %i.v = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !66
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !34
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i, label %createMissingClients.exit, !llvm.loop !2

createMissingClients.exit:                        ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.y = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #20 ; 0 uses
  %i.z = load i64, ptr %5, align 8, !tbaa !62
  %i.aa = mul nsw i64 %i.z, 1000000
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !63
  %i.ad = add nsw i64 %i.aa, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ae = sdiv i64 %i.ad, 1000
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !67
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55 ; 2 uses
  %.not5 = icmp eq i32 %i.af, 0
  br i1 %.not5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %createMissingClients.exit
  %i.ag = load ptr, ptr @config, align 8, !tbaa !72
  tail call void @aeMain(ptr noundef %i.ag) #20
  br label %startBenchmarkThreads.exit

bb.i:                                             ; preds = %createMissingClients.exit
  %i.ah = icmp sgt i32 %i.af, 0
  br i1 %i.ah, label %.lr.ph.i9, label %startBenchmarkThreads.exit

.preheader.i:                                     ; preds = %bb.k
  %i.ai = icmp sgt i32 %i.ar, 0
  br i1 %i.ai, label %.lr.ph11.i, label %startBenchmarkThreads.exit

.lr.ph.i9:                                        ; preds = %bb.i, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %bb.i ] ; 3 uses
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !101
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !103 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = tail call i32 @pthread_create(ptr noundef nonnull %i.am, ptr noundef null, ptr noundef nonnull @execBenchmarkThread, ptr noundef %i.al) #20
  %.not.i10 = icmp eq i32 %i.an, 0
  br i1 %.not.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i9
  %i.ao = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.194, i32 noundef %i.ao) #25 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.k:                                             ; preds = %.lr.ph.i9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %.lr.ph.i9, label %.preheader.i, !llvm.loop !3

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %.lr.ph11.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !101
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv14.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !104
  %i.az = tail call i32 @pthread_join(i64 noundef %i.ay, ptr noundef null) #20 ; 0 uses
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next15.i, %i.bb
  br i1 %i.bc, label %.lr.ph11.i, label %startBenchmarkThreads.exit, !llvm.loop !4

startBenchmarkThreads.exit:                       ; preds = %.lr.ph11.i, %.preheader.i, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bd = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #20 ; 0 uses
  %i.be = load i64, ptr %4, align 8, !tbaa !62
  %i.bf = mul nsw i64 %i.be, 1000000
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !63
  %i.bi = add nsw i64 %i.bf, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bj = sdiv i64 %i.bi, 1000
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !67
  %i.bl = sub nsw i64 %i.bj, %i.bk
  store i64 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @config, i64 192), align 8, !tbaa !201
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) seq_cst, align 8, !tbaa !199
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 192), align 8, !tbaa !201
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71
  %i.bq = tail call i64 @hdr_min(ptr noundef %i.bp) #20
  %i.br = sitofp i64 %i.bo to float
  %i.bs = sitofp i64 %i.bq to float
  %i.bt = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bs, i64 1
  %i.bv = fdiv <2 x float> %i.bu, splat (float 1.000000e+03) ; 3 uses
  %6 = extractelement <2 x float> %i.bv, i64 0
  %7 = fdiv float %i.bn, %6                       ; 3 uses
  %8 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71
  %9 = tail call i64 @hdr_value_at_percentile(ptr noundef %8, double noundef 5.000000e+01) #20
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71
  %i.bx = tail call i64 @hdr_value_at_percentile(ptr noundef %i.bw, double noundef 9.500000e+01) #20
  %i.by = sitofp i64 %9 to float
  %10 = sitofp i64 %i.bx to float
  %i.bz = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %10, i64 1
  %i.cb = fdiv <2 x float> %i.ca, splat (float 1.000000e+03) ; 4 uses
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71
  %i.cd = tail call i64 @hdr_value_at_percentile(ptr noundef %i.cc, double noundef 9.900000e+01) #20
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71
  %11 = tail call i64 @hdr_max(ptr noundef %i.ce) #20
  %i.cf = sitofp i64 %i.cd to float
  %i.cg = sitofp i64 %11 to float
  %i.ch = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.cg, i64 1
  %i.cj = fdiv <2 x float> %i.ci, splat (float 1.000000e+03) ; 4 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71
  %i.cl = tail call double @hdr_mean(ptr noundef %i.ck) #20
  %i.cm = fdiv double %i.cl, 1.000000e+03
  %i.cn = fptrunc double %i.cm to float           ; 2 uses
  %i.co = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !50
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 220), align 4
  %i.cr = icmp ne i32 %i.cq, 0                    ; 2 uses
  %or.cond.i = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %or.cond.i, label %bb.ag, label %bb.l

bb.l:                                             ; preds = %startBenchmarkThreads.exit
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !68
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.cs, ptr noundef nonnull @.str.52) ; 0 uses
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !69
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.195, ptr noundef %i.cu) ; 0 uses
  %i.cw = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) seq_cst, align 8, !tbaa !199
  %i.cx = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 192), align 8, !tbaa !201
  %i.cy = sitofp i64 %i.cx to float
  %i.cz = fdiv float %i.cy, 1.000000e+03
  %i.da = fpext float %i.cz to double
  %i.db = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.196, i32 noundef %i.cw, double noundef %i.da) ; 0 uses
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !34
  %i.dd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.197, i32 noundef %i.dc) ; 0 uses
  %i.de = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 164), align 4, !tbaa !108
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.198, i32 noundef %i.de) ; 0 uses
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 176), align 8, !tbaa !36
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %i.dg) ; 0 uses
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !56
  %.not.i11 = icmp eq i32 %i.di, 0
  br i1 %.not.i11, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !92
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %i.dj) ; 0 uses
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !92 ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %.pre73.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !93
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.t, %.lr.ph.preheader.i
  %i.dn = phi i32 [ %i.dl, %.lr.ph.preheader.i ], [ %i.et, %bb.t ]
  %i.do = phi ptr [ %.pre73.i, %.lr.ph.preheader.i ], [ %i.eu, %bb.t ] ; 2 uses
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i14, %bb.t ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i13
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !95
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !96 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i12
  %i.du = trunc nuw nsw i64 %indvars.iv.i13 to i32
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.201, i32 noundef %i.du) ; 0 uses
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !98 ; 6 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !48
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  %i.ea = and i32 %i.dz, 7
  switch i32 %i.ea, label %hi_sdslen.exit.thread.i [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.eb = lshr i32 %i.dz, 3
  %i.ec = zext nneg i32 %i.eb to i64
  br label %hi_sdslen.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ed = getelementptr inbounds i8, ptr %i.dw, i64 -3
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !48
  %i.ef = zext i8 %i.ee to i64
  br label %hi_sdslen.exit.i

bb.q:                                             ; preds = %bb.n
  %i.eg = getelementptr inbounds i8, ptr %i.dw, i64 -5
  %i.eh = load i16, ptr %i.eg, align 1, !tbaa !106
  %i.ei = zext i16 %i.eh to i64
  br label %hi_sdslen.exit.i

bb.r:                                             ; preds = %bb.n
  %i.ej = getelementptr inbounds i8, ptr %i.dw, i64 -9
  %i.ek = load i32, ptr %i.ej, align 1, !tbaa !19
  %i.el = zext i32 %i.ek to i64
  br label %hi_sdslen.exit.i

bb.s:                                             ; preds = %bb.n
  %i.em = getelementptr inbounds i8, ptr %i.dw, i64 -17
  %i.en = load i64, ptr %i.em, align 1, !tbaa !107
  br label %hi_sdslen.exit.i

hi_sdslen.exit.i:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i = phi i64 [ %i.en, %bb.s ], [ %i.ec, %bb.o ], [ %i.ef, %bb.p ], [ %i.ei, %bb.q ], [ %i.el, %bb.r ]
  %.not60.i = icmp eq i64 %.0.i.i, 0
  %spec.select.i = select i1 %.not60.i, ptr @.str.203, ptr %i.dw
  br label %hi_sdslen.exit.thread.i

hi_sdslen.exit.thread.i:                          ; preds = %hi_sdslen.exit.i, %bb.n
  %i.eo = phi ptr [ @.str.203, %bb.n ], [ %spec.select.i, %hi_sdslen.exit.i ]
  %i.ep = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.202, ptr noundef nonnull %i.eo) ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !99
  %i.es = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, ptr noundef %i.er) ; 0 uses
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !93
  %.pre74.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !92
  br label %bb.t

bb.t:                                             ; preds = %hi_sdslen.exit.thread.i, %.lr.ph.i12
  %i.et = phi i32 [ %i.dn, %.lr.ph.i12 ], [ %.pre74.i, %hi_sdslen.exit.thread.i ] ; 2 uses
  %i.eu = phi ptr [ %i.do, %.lr.ph.i12 ], [ %.pre.i, %hi_sdslen.exit.thread.i ]
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %i.ev = sext i32 %i.et to i64
  %i.ew = icmp slt i64 %indvars.iv.next.i14, %i.ev
  br i1 %i.ew, label %.lr.ph.i12, label %.loopexit.i, !llvm.loop !194

bb.u:                                             ; preds = %bb.l
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 288), align 8, !tbaa !100 ; 2 uses
  %.not50.i = icmp eq ptr %i.ex, null
  br i1 %.not50.i, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !98
  %i.ez = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %i.ey) ; 0 uses
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 288), align 8, !tbaa !100
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !99
  %i.fd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %i.fc) ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.t, %bb.v, %bb.u, %bb.m
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  %.not51.i = icmp eq i32 %i.fe, 0
  %i.ff = select i1 %.not51.i, ptr @.str.209, ptr @.str.208
  %i.fg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, ptr noundef nonnull %i.ff) ; 0 uses
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55 ; 2 uses
  %.not52.i = icmp eq i32 %i.fh, 0
  br i1 %.not52.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit.i
  %i.fi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.210, i32 noundef %i.fh) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit.i
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.fj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 88
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !204 ; 3 uses
  call void @hdr_iter_percentile_init(ptr noundef nonnull %3, ptr noundef %i.fj, i32 noundef 1) #20
  %i.fm = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %3) #20
  br i1 %i.fm, label %.lr.ph67.i, label %._crit_edge.i

.lr.ph67.i:                                       ; preds = %bb.x
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph67.i
  %.066.i = phi i64 [ -1, %.lr.ph67.i ], [ %i.fq, %bb.aa ]
  %i.fq = load i64, ptr %i.fn, align 8, !tbaa !206 ; 4 uses
  %.not59.i = icmp ne i64 %.066.i, %i.fq
  %i.fr = icmp eq i64 %i.fq, %i.fl
  %or.cond61.i = select i1 %.not59.i, i1 true, i1 %i.fr
  br i1 %or.cond61.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fs = load double, ptr %i.fo, align 8, !tbaa !209
  %i.ft = load i64, ptr %i.fp, align 8, !tbaa !210
  %i.fu = sitofp i64 %i.ft to float
  %i.fv = fdiv float %i.fu, 1.000000e+03
  %i.fw = fpext float %i.fv to double
  %i.fx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.212, double noundef %i.fs, double noundef %i.fw, i64 noundef %i.fq) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fy = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %3) #20
  br i1 %i.fy, label %bb.y, label %._crit_edge.i, !llvm.loop !195

._crit_edge.i:                                    ; preds = %bb.aa, %bb.x
  %putchar53.i = call i32 @putchar(i32 10)        ; 0 uses
  %puts54.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71
  call void @hdr_iter_linear_init(ptr noundef nonnull %3, ptr noundef %i.fz, i64 noundef 100) #20
  %i.ga = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %3) #20
  br i1 %i.ga, label %.lr.ph70.i, label %._crit_edge71.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gd = sitofp i64 %i.fl to double
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.lr.ph70.i
  %.168.i = phi i64 [ -1, %.lr.ph70.i ], [ %i.ge, %bb.af ]
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !206 ; 5 uses
  %.not58.i = icmp ne i64 %.168.i, %i.ge
  %i.gf = icmp eq i64 %i.ge, %i.fl
  %or.cond62.i = select i1 %.not58.i, i1 true, i1 %i.gf
  br i1 %or.cond62.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gg = sitofp i64 %i.ge to double
  %i.gh = fdiv double %i.gg, %i.gd
  %i.gi = fmul double %i.gh, 1.000000e+02
  %i.gj = load i64, ptr %i.gb, align 8, !tbaa !210
  %i.gk = sitofp i64 %i.gj to float
  %i.gl = fdiv float %i.gk, 1.000000e+03
  %i.gm = fpext float %i.gl to double
  %i.gn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.212, double noundef %i.gi, double noundef %i.gm, i64 noundef %i.ge) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.go = load i64, ptr %i.gb, align 8, !tbaa !210
  %i.gp = icmp sgt i64 %i.go, 2000
  br i1 %i.gp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @hdr_iter_linear_set_value_units_per_bucket(ptr noundef nonnull %3, i64 noundef 1000) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gq = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %3) #20
  br i1 %i.gq, label %bb.ab, label %._crit_edge71.i, !llvm.loop !196

._crit_edge71.i:                                  ; preds = %bb.af, %._crit_edge.i
  %putchar55.i = call i32 @putchar(i32 10)        ; 0 uses
  %puts56.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.gr = fpext float %7 to double
  %i.gs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.215, double noundef %i.gr) ; 0 uses
  %puts57.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.gt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.217, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.223) ; 0 uses
  %i.gu = fpext float %i.cn to double
  %i.gv = extractelement <2 x float> %i.bv, i64 1
  %i.gw = fpext float %i.gv to double
  %i.gx = extractelement <2 x float> %i.cb, i64 0
  %i.gy = fpext float %i.gx to double
  %i.gz = extractelement <2 x float> %i.cb, i64 1
  %i.ha = fpext float %i.gz to double
  %i.hb = extractelement <2 x float> %i.cj, i64 0
  %i.hc = fpext float %i.hb to double
  %12 = extractelement <2 x float> %i.cj, i64 1
  %i.hd = fpext float %12 to double
  %i.he = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.224, double noundef %i.gu, double noundef %i.gw, double noundef %i.gy, double noundef %i.ha, double noundef %i.hc, double noundef %i.hd) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %showLatencyReport.exit

bb.ag:                                            ; preds = %startBenchmarkThreads.exit
  %i.hf = extractelement <2 x float> %i.cb, i64 0
  %i.hg = fpext float %i.hf to double             ; 2 uses
  br i1 %i.cr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !69
  %i.hi = fpext float %7 to double
  %i.hj = fpext float %i.cn to double
  %i.hk = extractelement <2 x float> %i.bv, i64 1
  %13 = fpext float %i.hk to double
  %14 = extractelement <2 x float> %i.cb, i64 1
  %i.hl = fpext float %14 to double
  %15 = extractelement <2 x float> %i.cj, i64 0
  %i.hm = fpext float %15 to double
  %16 = extractelement <2 x float> %i.cj, i64 1
  %17 = fpext float %16 to double
  %i.hn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.225, ptr noundef %i.hh, double noundef %i.hi, double noundef %i.hj, double noundef %13, double noundef %i.hg, double noundef %i.hl, double noundef %i.hm, double noundef %17) ; 0 uses
  br label %showLatencyReport.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !68
  %i.hp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ho, ptr noundef nonnull @.str.52) ; 0 uses
  %i.hq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !69
  %i.hr = fpext float %7 to double
  %i.hs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.226, ptr noundef %i.hq, double noundef %i.hr, double noundef %i.hg) ; 0 uses
  br label %showLatencyReport.exit

showLatencyReport.exit:                           ; preds = %._crit_edge71.i, %bb.ah, %bb.ai
  %i.ht = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !74
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !213 ; 2 uses
  %.not4.i = icmp eq ptr %i.hu, null
  br i1 %.not4.i, label %freeAllClients.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %showLatencyReport.exit, %.lr.ph.i15
  %.05.i = phi ptr [ %i.hw, %.lr.ph.i15 ], [ %i.hu, %showLatencyReport.exit ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !215 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !216
  call fastcc void @freeClient(ptr noundef %i.hy)
  %.not.i16 = icmp eq ptr %i.hw, null
  br i1 %.not.i16, label %freeAllClients.exit, label %.lr.ph.i15, !llvm.loop !197

freeAllClients.exit:                              ; preds = %.lr.ph.i15, %showLatencyReport.exit
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !101 ; 3 uses
  %.not6 = icmp eq ptr %i.hz, null
  br i1 %.not6, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %freeAllClients.exit
  %i.ia = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55 ; 2 uses
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %.lr.ph.i19, label %freeBenchmarkThreads.exit

.lr.ph.i19:                                       ; preds = %bb.aj, %bb.am
  %i.ic = phi i32 [ %i.ii, %bb.am ], [ %i.ia, %bb.aj ]
  %i.id = phi ptr [ %i.ij, %bb.am ], [ %i.hz, %bb.aj ] ; 2 uses
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i23, %bb.am ], [ 0, %bb.aj ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %indvars.iv.i20
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !103 ; 3 uses
  %.not.i21 = icmp eq ptr %i.if, null
  br i1 %.not.i21, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i19
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !114 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i, label %freeBenchmarkThread.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @aeDeleteEventLoop(ptr noundef nonnull %i.ih) #20
  br label %freeBenchmarkThread.exit.i

freeBenchmarkThread.exit.i:                       ; preds = %bb.al, %bb.ak
  call void @zfree(ptr noundef nonnull %i.if) #20
  %.pre.i22 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !101
  %.pre8.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !55
  br label %bb.am

bb.am:                                            ; preds = %freeBenchmarkThread.exit.i, %.lr.ph.i19
  %i.ii = phi i32 [ %.pre8.i, %freeBenchmarkThread.exit.i ], [ %i.ic, %.lr.ph.i19 ] ; 2 uses
  %i.ij = phi ptr [ %.pre.i22, %freeBenchmarkThread.exit.i ], [ %i.id, %.lr.ph.i19 ] ; 2 uses
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %i.ik = sext i32 %i.ii to i64
  %i.il = icmp slt i64 %indvars.iv.next.i23, %i.ik
  br i1 %i.il, label %.lr.ph.i19, label %freeBenchmarkThreads.exit, !llvm.loop !5

freeBenchmarkThreads.exit:                        ; preds = %bb.am, %bb.aj
  %i.im = phi ptr [ %i.hz, %bb.aj ], [ %i.ij, %bb.am ]
  call void @zfree(ptr noundef %i.im) #20
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !101
  br label %bb.an

bb.an:                                            ; preds = %freeBenchmarkThreads.exit, %freeAllClients.exit
  %i.in = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !70 ; 2 uses
  %.not7 = icmp eq ptr %i.in, null
  br i1 %.not7, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @hdr_close(ptr noundef nonnull %i.in) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !71 ; 2 uses
  %.not8 = icmp eq ptr %i.io, null
  br i1 %.not8, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @hdr_close(ptr noundef nonnull %i.io) #20
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare void @hi_sdsfreesplitres(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @freeRedisConfig(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @hi_sdsfree(ptr noundef nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %.not6 = icmp eq ptr %i.c, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @hi_sdsfree(ptr noundef nonnull %i.c) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @zfree(ptr noundef nonnull %0) #20
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #3

declare i32 @redisFormatCommand(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @hi_sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @freeCliConnInfo(ptr noundef byval(%struct.cliConnInfo) align 8) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getRedisContext(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = icmp eq ptr %2, null                     ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @redisConnect(ptr noundef %0, i32 noundef %1) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @redisConnectUnix(ptr noundef nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.040 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 10 uses
  %i.e = icmp eq ptr %.040, null                  ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.040, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !126
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !40
  %fwrite48 = tail call i64 @fwrite(ptr nonnull @.str.149, i64 30, i64 1, ptr %i.h) #23 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.040, i64 12
  %i.j = select i1 %i.e, ptr @.str.55, ptr %i.i   ; 2 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !40 ; 2 uses
  br i1 %i.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.150, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.j) #25 ; 0 uses
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.151, ptr noundef nonnull %2, ptr noundef nonnull %i.j) #25 ; 0 uses
  br label %bb.z

bb.i:                                             ; preds = %bb.e
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 48), align 8, !tbaa !58
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !22
  %i.p = call i32 @cliSecureConnection(ptr noundef nonnull %.040, ptr noundef nonnull byval(%struct.cliSSLconfig) align 8 getelementptr inbounds nuw (i8, ptr @config, i64 56), ptr noundef nonnull %i.a) #20
  %i.q = icmp eq i32 %i.p, -1
  %i.r = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.j
end_hunk_1
