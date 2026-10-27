Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-benchmark?download=true
inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@parseOptions:bb.a
  %i.jc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(7) @.str.40) #21
  %.not221 = icmp eq i32 %i.jc, 0
  br i1 %.not221, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  br i1 %i.c, label %.loopexit319.loopexit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jd = add nsw i32 %.0183332, 1                ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !22
  %i.jh = tail call noalias ptr @strdup(ptr noundef %i.jg) #20
  store ptr %i.jh, ptr getelementptr inbounds nuw (i8, ptr @config, i64 88), align 8, !tbaa !150
  br label %bb.ce

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
  store ptr %i.jn, ptr getelementptr inbounds nuw (i8, ptr @config, i64 96), align 8, !tbaa !151
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
  store ptr %i.jt, ptr getelementptr inbounds nuw (i8, ptr @config, i64 104), align 8, !tbaa !152
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
  store ptr %i.jz, ptr getelementptr inbounds nuw (i8, ptr @config, i64 112), align 8, !tbaa !153
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  br i1 %.not333, label %.loopexit319, label %.loopexit

bb.ce:                                            ; preds = %.thread, %bb.as, %bb.z, %bb.c, %bb.f, %bb.j, %bb.o, %bb.r, %bb.w, %bb.ag, %bb.ai, %bb.al, %bb.ap, %bb.ax, %bb.ay, %bb.aw, %bb.bc, %bb.bf, %bb.bl, %bb.bq, %bb.bw, %bb.cc, %bb.bz, %bb.bt, %bb.bo, %bb.bi, %bb.ba, %bb.an, %bb.aj, %bb.ah, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h
  %.1 = phi i32 [ %i.jv, %bb.cc ], [ %i.jp, %bb.bz ], [ %i.jj, %bb.bw ], [ %i.jd, %bb.bt ], [ %.0183332, %bb.bq ], [ %i.iw, %bb.bo ], [ %i.iq, %bb.bl ], [ %i.ik, %bb.bi ], [ %.0183332, %bb.bf ], [ %.0183332, %bb.bc ], [ %.0183332, %bb.ba ], [ %i.hv, %bb.aw ], [ %i.hv, %bb.ay ], [ %i.hv, %bb.ax ], [ %i.hm, %bb.as ], [ %i.hd, %bb.ap ], [ %i.gw, %bb.an ], [ %i.gj, %bb.al ], [ %.0183332, %bb.aj ], [ %.0183332, %bb.ai ], [ %.0183332, %bb.ah ], [ %.0183332, %bb.ag ], [ %.0183332, %bb.af ], [ %i.ex, %.thread ], [ %i.em, %bb.ab ], [ %i.eb, %bb.z ], [ %.0183332, %bb.x ], [ %i.di, %bb.w ], [ %i.cx, %bb.t ], [ %i.cp, %bb.r ], [ %.0183332, %bb.p ], [ %i.ca, %bb.o ], [ %i.bo, %bb.l ], [ %i.be, %bb.j ], [ %i.as, %bb.h ], [ %i.ah, %bb.f ], [ %i.m, %bb.c ]
  %i.ka = add nsw i32 %.1, 1                      ; 3 uses
  %i.kb = icmp slt i32 %i.ka, %0
  br i1 %i.kb, label %sub_0, label %.loopexit, !llvm.loop !145

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
  %i.b = load i64, ptr %3, align 8, !tbaa !66
  %i.c = mul nsw i64 %i.b, 1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !67
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
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  %.not24 = icmp eq i32 %i.n, 0
  %.not25 = icmp slt i32 %i.i, %i.l
  %or.cond29 = select i1 %.not24, i1 true, i1 %.not25
  br i1 %or.cond29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @aeStop(ptr noundef %0) #20
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 220), align 4, !tbaa !54
  %.not26 = icmp eq i32 %i.o, 0
  br i1 %.not26, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %2, align 8, !tbaa !69
  %.not28 = icmp eq i32 %i.p, 0
  br i1 %.not28, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !56
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !70
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.s) ; 0 uses
  br label %.sink.split

bb.j:                                             ; preds = %bb.h
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !71
  %i.v = sub nsw i64 %i.g, %i.u
  %i.w = sitofp i64 %i.v to float
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 152), align 8, !tbaa !154
  %i.y = sub nsw i64 %i.g, %i.x
  %i.z = sitofp i64 %i.y to float
  %i.aa = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.w, i64 1
  %i.ac = fdiv <2 x float> %i.ab, splat (float 1.000000e+03)
  %i.ad = sub nsw i32 %i.i, %i.j
  %i.ae = insertelement <2 x i32> poison, i32 %i.ad, i64 0
  %i.af = insertelement <2 x i32> %i.ae, i32 %i.i, i64 1
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = fdiv <2 x float> %i.ag, %i.ac
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @config, i64 152), align 8, !tbaa !154
  store atomic i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @config, i64 140) monotonic, align 4
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !72
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ai, ptr noundef nonnull @.str.52) ; 0 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !73
  %i.al = fpext <2 x float> %i.ah to <2 x double> ; 2 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !74
  %i.an = tail call double @hdr_mean(ptr noundef %i.am) #20
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  %i.ap = tail call double @hdr_mean(ptr noundef %i.ao) #20
  %i.aq = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ap, i64 1
  %i.as = fdiv <2 x double> %i.ar, splat (double 1.000000e+03) ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = extractelement <2 x double> %i.as, i64 1
  %i.av = extractelement <2 x double> %i.al, i64 0
  %i.aw = extractelement <2 x double> %i.al, i64 1
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %i.ak, double noundef %i.av, double noundef %i.aw, double noundef %i.at, double noundef %i.au)
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !72
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !74
  tail call void @hdr_reset(ptr noundef %i.ay) #20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.i
  %4 = load ptr, ptr @stdout, align 8, !tbaa !40
  %5 = tail call i32 @fflush(ptr noundef %4)      ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ 250, %bb.g ], [ 250, %bb.e ], [ 250, %.sink.split ]
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
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 240), align 8, !tbaa !57 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  store i8 44, ptr %i.a, align 16, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %sext = shl i64 %i.d, 32                        ; 3 uses
  %i.f = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %0, i64 %i.f, i1 false)
  %sext5 = add i64 %sext, 4294967296
  %i.g = ashr exact i64 %sext5, 32
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  store i8 44, ptr %i.h, align 1, !tbaa !50
  %sext6 = add i64 %sext, 8589934592
  %i.i = ashr exact i64 %sext6, 32
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !50
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
  %i.am = load i64, ptr %2, align 8, !tbaa !66
  %i.an = mul nsw i64 %i.am, 1000000
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !67
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
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !70
  %i.aw = tail call ptr @aeCreateEventLoop(i32 noundef 10240) #20 ; 2 uses
  store ptr %i.aw, ptr @config, align 8, !tbaa !76
  %i.ax = tail call i64 @aeCreateTimeEvent(ptr noundef %i.aw, i64 noundef 1, ptr noundef nonnull @showThroughput, ptr noundef null, ptr noundef null) #20 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !49
  store <4 x i32> <i32 3, i32 0, i32 0, i32 1>, ptr getelementptr inbounds nuw (i8, ptr @config, i64 164), align 4, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @config, i64 216), i8 0, i64 16, i1 false)
  %i.ay = tail call ptr @listCreate() #20
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !77
  %i.az = tail call ptr @hi_sdsnew(ptr noundef nonnull @.str.54) #20
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !37
  store i32 6379, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !38
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 40), align 8, !tbaa !41
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 240), align 8, !tbaa !57
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 20), align 4, !tbaa !45
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 248), align 8, !tbaa !42
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !43
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !58
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @config, i64 264), i8 0, i64 32, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 312) seq_cst, align 8, !tbaa !168
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316) seq_cst, align 4, !tbaa !169
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 320) seq_cst, align 8, !tbaa !170
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 324), align 4, !tbaa !61
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 408), align 8, !tbaa !47
  %i.ba = tail call i32 @parseOptions(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.bb = sub i32 %0, %i.ba                       ; 9 uses
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bc ; 3 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 48), align 8, !tbaa !62
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bf = tail call i32 @cliSecureInit() #20      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !60
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
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !81
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store i32 %i.bn, ptr %i.bp, align 8, !tbaa !82
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr null, ptr %i.bq, align 8, !tbaa !83
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 0, ptr %i.br, align 8, !tbaa !171
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !172
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 68
  store i32 0, ptr %i.bt, align 4, !tbaa !173
  %i.bu = tail call noalias dereferenceable_or_null(65536) ptr @zmalloc(i64 noundef 65536) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !84
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i32 0, ptr %i.bw, align 8, !tbaa !85
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store ptr null, ptr %i.bx, align 8, !tbaa !86
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store i32 0, ptr %i.by, align 8, !tbaa !87
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i8 0, i64 32, i1 false)
end_hunk_0
