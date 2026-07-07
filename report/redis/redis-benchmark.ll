inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@parseOptions:bb.a
  %i.jm = add nsw i32 %.0183331, 1                ; 2 uses
  %i.jn = sext i32 %i.jm to i64
  %i.jo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jn
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !13
  %i.jq = tail call noalias ptr @strdup(ptr noundef %i.jp) #20
  store ptr %i.jq, ptr getelementptr inbounds nuw (i8, ptr @config, i64 96), align 8, !tbaa !58
  br label %bb.ce

bb.bx:                                            ; preds = %bb.bu
  %i.jr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(14) @.str.42) #21
  %.not221 = icmp eq i32 %i.jr, 0
  br i1 %.not221, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  br i1 %i.c, label %.loopexit318.loopexit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.js = add nsw i32 %.0183331, 1                ; 2 uses
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !13
  %i.jw = tail call noalias ptr @strdup(ptr noundef %i.jv) #20
  store ptr %i.jw, ptr getelementptr inbounds nuw (i8, ptr @config, i64 104), align 8, !tbaa !59
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bx
  %i.jx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(19) @.str.43) #21
  %.not222 = icmp eq i32 %i.jx, 0
  br i1 %.not222, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.c, label %.loopexit318.loopexit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jy = add nsw i32 %.0183331, 1                ; 2 uses
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !13
  %i.kc = tail call noalias ptr @strdup(ptr noundef %i.kb) #20
  store ptr %i.kc, ptr getelementptr inbounds nuw (i8, ptr @config, i64 112), align 8, !tbaa !60
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  br i1 %.not332, label %.loopexit318, label %.loopexit

bb.ce:                                            ; preds = %.thread, %bb.as, %bb.z, %bb.c, %bb.f, %bb.j, %bb.o, %bb.r, %bb.w, %bb.ag, %bb.ai, %bb.al, %bb.ap, %bb.ax, %bb.ay, %bb.aw, %bb.bc, %bb.bf, %bb.bl, %bb.bq, %bb.bw, %bb.cc, %bb.bz, %bb.bt, %bb.bo, %bb.bi, %bb.ba, %bb.an, %bb.aj, %bb.ah, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h
  %.1 = phi i32 [ %i.jy, %bb.cc ], [ %i.js, %bb.bz ], [ %i.jm, %bb.bw ], [ %i.jg, %bb.bt ], [ %.0183331, %bb.bq ], [ %i.iz, %bb.bo ], [ %i.it, %bb.bl ], [ %i.in, %bb.bi ], [ %.0183331, %bb.bf ], [ %.0183331, %bb.bc ], [ %.0183331, %bb.ba ], [ %i.hy, %bb.aw ], [ %i.hy, %bb.ay ], [ %i.hy, %bb.ax ], [ %i.hp, %bb.as ], [ %i.hg, %bb.ap ], [ %i.gz, %bb.an ], [ %i.gm, %bb.al ], [ %.0183331, %bb.aj ], [ %.0183331, %bb.ai ], [ %.0183331, %bb.ah ], [ %.0183331, %bb.ag ], [ %.0183331, %bb.af ], [ %i.ez, %.thread ], [ %i.eo, %bb.ab ], [ %i.ed, %bb.z ], [ %.0183331, %bb.x ], [ %i.dj, %bb.w ], [ %i.cy, %bb.t ], [ %i.cq, %bb.r ], [ %.0183331, %bb.p ], [ %i.cb, %bb.o ], [ %i.bo, %bb.l ], [ %i.be, %bb.j ], [ %i.as, %bb.h ], [ %i.ah, %bb.f ], [ %i.m, %bb.c ]
  %i.kd = add nsw i32 %.1, 1                      ; 3 uses
  %i.ke = icmp slt i32 %i.kd, %0
  br i1 %i.ke, label %sub_0, label %.loopexit, !llvm.loop !61

.loopexit318.loopexit:                            ; preds = %bb.b, %bb.e, %bb.g, %bb.i, %bb.k, %bb.n, %bb.q, %bb.s, %bb.y, %bb.aa, %bb.ac, %bb.ak, %bb.am, %bb.ao, %bb.ar, %bb.au, %bb.bh, %bb.bk, %bb.bn, %bb.bs, %bb.bv, %bb.by, %bb.cb, %bb.ae
  %.2.ph = phi i32 [ %i.b, %bb.cb ], [ %i.b, %bb.by ], [ %i.b, %bb.bv ], [ %i.b, %bb.bs ], [ %i.b, %bb.bn ], [ %i.b, %bb.bk ], [ %i.b, %bb.bh ], [ %i.b, %bb.au ], [ %i.b, %bb.ar ], [ %i.b, %bb.ao ], [ %i.b, %bb.am ], [ %i.b, %bb.ak ], [ %i.b, %bb.ac ], [ %i.b, %bb.b ], [ %i.b, %bb.aa ], [ %i.b, %bb.y ], [ %i.b, %bb.s ], [ %i.b, %bb.q ], [ %i.b, %bb.n ], [ %i.b, %bb.k ], [ %i.b, %bb.i ], [ %i.b, %bb.g ], [ %i.b, %bb.e ], [ %i.ez, %bb.ae ]
  %.pre = sext i32 %.2.ph to i64
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre
  %.pre383 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !13
  br label %.loopexit318

.loopexit318:                                     ; preds = %.loopexit318.loopexit, %bb.cd
  %i.kf = phi ptr [ %.pre383, %.loopexit318.loopexit ], [ %i.f, %bb.cd ]
  %i.kg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, ptr noundef %i.kf) ; 0 uses
  br label %.loopexit317

.loopexit317:                                     ; preds = %bb.bd, %.loopexit318
  %.0184 = phi i32 [ 1, %.loopexit318 ], [ 0, %bb.bd ]
  %i.kh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.48) ; 0 uses
  tail call void @exit(i32 noundef %.0184) #22
  unreachable

.loopexit:                                        ; preds = %bb.ce, %bb.a, %bb.cd
  %.0183325 = phi i32 [ %.0183331, %bb.cd ], [ 1, %bb.a ], [ %i.kd, %bb.ce ]
  ret i32 %.0183325
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
  %i.b = load i64, ptr %3, align 8, !tbaa !63
  %i.c = mul nsw i64 %i.b, 1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
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
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.49, i64 38, i64 1, ptr %i.m) #23 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  %.not24 = icmp eq i32 %i.o, 0
  %.not25 = icmp slt i32 %i.i, %i.l
  %or.cond29 = select i1 %.not24, i1 true, i1 %.not25
  br i1 %or.cond29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @aeStop(ptr noundef %0) #20
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 220), align 4, !tbaa !45
  %.not26 = icmp eq i32 %i.p, 0
  br i1 %.not26, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %2, align 8, !tbaa !67
  %.not28 = icmp eq i32 %i.q, 0
  br i1 %.not28, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !47
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !69
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.t) ; 0 uses
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.w = tail call i32 @fflush(ptr noundef %i.v)  ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !70
  %i.y = sub nsw i64 %i.g, %i.x
  %i.z = sitofp i64 %i.y to float
  %i.aa = fdiv float %i.z, 1.000000e+03
  %i.ab = sitofp i32 %i.i to float
  %i.ac = fdiv float %i.ab, %i.aa
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 152), align 8, !tbaa !71
  %i.ae = sub nsw i64 %i.g, %i.ad
  %i.af = sitofp i64 %i.ae to float
  %i.ag = fdiv float %i.af, 1.000000e+03
  %i.ah = sub nsw i32 %i.i, %i.j
  %i.ai = sitofp i32 %i.ah to float
  %i.aj = fdiv float %i.ai, %i.ag
  store i64 %i.g, ptr getelementptr inbounds nuw (i8, ptr @config, i64 152), align 8, !tbaa !71
  store atomic i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @config, i64 140) monotonic, align 4
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !72
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ak, ptr noundef nonnull @.str.52) ; 0 uses
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !73
  %i.an = fpext float %i.aj to double
  %i.ao = fpext float %i.ac to double
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !74
  %i.aq = tail call double @hdr_mean(ptr noundef %i.ap) #20
  %4 = fdiv double %i.aq, 1.000000e+03
  %5 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  %6 = tail call double @hdr_mean(ptr noundef %5) #20
  %7 = fdiv double %6, 1.000000e+03
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %i.am, double noundef %i.an, double noundef %i.ao, double noundef %4, double noundef %7)
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !72
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !74
  tail call void @hdr_reset(ptr noundef %i.as) #20
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !33
  %i.au = tail call i32 @fflush(ptr noundef %i.at) ; 0 uses
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
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 240), align 8, !tbaa !48 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  store i8 44, ptr %i.a, align 16, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %sext = shl i64 %i.d, 32                        ; 3 uses
  %i.f = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %0, i64 %i.f, i1 false)
  %sext5 = add i64 %sext, 4294967296
  %i.g = ashr exact i64 %sext5, 32
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  store i8 44, ptr %i.h, align 1, !tbaa !42
  %sext6 = add i64 %sext, 8589934592
  %i.i = ashr exact i64 %sext6, 32
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 0, ptr %i.j, align 1, !tbaa !42
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
  %i.am = load i64, ptr %2, align 8, !tbaa !63
  %i.an = mul nsw i64 %i.am, 1000000
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !66
  %i.aq = add nsw i64 %i.an, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ar = tail call i32 @getpid() #20
  %i.as = sext i32 %i.ar to i64
  %i.at = xor i64 %i.aq, %i.as
  tail call void @init_genrand64(i64 noundef %i.at) #20
  %i.au = tail call ptr @signal(i32 noundef 1, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20 ; 0 uses
  %i.av = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #20 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) getelementptr inbounds nuw (i8, ptr @config, i64 56), i8 0, i64 64, i1 false)
  store i32 50, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !17
  store i32 100000, ptr getelementptr inbounds nuw (i8, ptr @config, i64 128), align 8, !tbaa !29
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !69
  %i.aw = tail call ptr @aeCreateEventLoop(i32 noundef 10240) #20 ; 2 uses
  store ptr %i.aw, ptr @config, align 8, !tbaa !76
  %i.ax = tail call i64 @aeCreateTimeEvent(ptr noundef %i.aw, i64 noundef 1, ptr noundef nonnull @showThroughput, ptr noundef null, ptr noundef null) #20 ; 0 uses
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 180), align 4, !tbaa !77
  store <4 x i32> <i32 3, i32 0, i32 0, i32 1>, ptr getelementptr inbounds nuw (i8, ptr @config, i64 164), align 4, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @config, i64 216), i8 0, i64 16, i1 false)
  %i.ay = tail call ptr @listCreate() #20
  store ptr %i.ay, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !78
  %i.az = tail call ptr @hi_sdsnew(ptr noundef nonnull @.str.54) #20
  store ptr %i.az, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !31
  store i32 6379, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !32
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 40), align 8, !tbaa !35
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 240), align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 20), align 4, !tbaa !39
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 248), align 8, !tbaa !36
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 24), align 8, !tbaa !37
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !79
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @config, i64 264), i8 0, i64 32, i1 false)
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 312) seq_cst, align 8, !tbaa !80
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 316) seq_cst, align 4, !tbaa !81
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 320) seq_cst, align 8, !tbaa !82
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 324), align 4, !tbaa !51
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 408), align 8, !tbaa !41
  %i.ba = tail call i32 @parseOptions(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.bb = sub i32 %0, %i.ba                       ; 9 uses
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bc ; 3 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 48), align 8, !tbaa !52
  %.not = icmp eq i32 %i.be, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bf = tail call i32 @cliSecureInit() #20      ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !50
  %.not141 = icmp eq i32 %i.bg, 0
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !31 ; 2 uses
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !32 ; 2 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 40), align 8, !tbaa !35 ; 2 uses
  br i1 %.not141, label %bb.cc, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = tail call fastcc ptr @getRedisContext(ptr noundef %i.bh, i32 noundef %i.bi, ptr noundef %i.bj) ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !31
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 16), align 8, !tbaa !32
  %i.bo = tail call noalias dereferenceable_or_null(104) ptr @zmalloc(i64 noundef 104) #26 ; 17 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %createClusterNode.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !83
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  store i32 %i.bn, ptr %i.bp, align 8, !tbaa !87
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr null, ptr %i.bq, align 8, !tbaa !88
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 0, ptr %i.br, align 8, !tbaa !89
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !90
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 68
  store i32 0, ptr %i.bt, align 4, !tbaa !91
  %i.bu = tail call noalias dereferenceable_or_null(65536) ptr @zmalloc(i64 noundef 65536) #26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
end_hunk_0
begin_hunk_1_@createClient:bb.a
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.ly
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !126
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit, %bb.bf
  %.0162.in = phi ptr [ %i.mb, %bb.bf ], [ @config, %.loopexit ]
  %.0162 = load ptr, ptr %.0162.in, align 8, !tbaa !188 ; 2 uses
  %i.mc = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 228), align 4, !tbaa !47
  %i.md = icmp eq i32 %i.mc, 0
  %i.me = load ptr, ptr %i.i, align 8, !tbaa !151
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 140
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !189 ; 2 uses
  br i1 %i.md, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.mh = call i32 @aeCreateFileEvent(ptr noundef %.0162, i32 noundef %i.mg, i32 noundef 2, ptr noundef nonnull @writeHandler, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.mi = call i32 @aeCreateFileEvent(ptr noundef %.0162, i32 noundef %i.mg, i32 noundef 1, ptr noundef nonnull @readHandler, ptr noundef nonnull %i.i) #20 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.mj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !78
  %i.mk = call ptr @listAddNodeTail(ptr noundef %i.mj, ptr noundef nonnull %i.i) #20 ; 0 uses
  %i.ml = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @config, i64 124), i32 1 monotonic, align 4 ; 0 uses
  %i.mm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 320) monotonic, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i32 %i.mm, ptr %i.mn, align 8, !tbaa !190
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
  store ptr %0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !73
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 132) seq_cst, align 4, !tbaa !191
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) seq_cst, align 8, !tbaa !192
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 140) seq_cst, align 4, !tbaa !193
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !72
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !79
  %i.b = tail call i32 @hdr_init(i64 noundef 10, i64 noundef 3000000, i32 noundef %i.a, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 296)) #20 ; 0 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 252), align 4, !tbaa !79
  %i.d = tail call i32 @hdr_init(i64 noundef 10, i64 noundef 3000000, i32 noundef %i.c, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @config, i64 304)) #20 ; 0 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @initBenchmarkThreads()
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  %i.f = icmp slt i32 %.pre, 1
  %i.g = sext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = sext i32 %2 to i64
  %i.j = tail call fastcc ptr @createClient(ptr noundef %1, i64 noundef %i.i, ptr noundef null, i32 noundef %i.h)
  %i.k = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !69
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !17
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.lr.ph.i, label %createMissingClients.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.024.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !69
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  %i.q = srem i32 %i.o, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.0.i = phi i32 [ %i.q, %bb.d ], [ -1, %.lr.ph.i ]
  %i.r = tail call fastcc ptr @createClient(ptr noundef null, i64 noundef 0, ptr noundef readonly %i.j, i32 noundef %.0.i), !inline_history !123 ; 0 uses
  %i.s = add nsw i32 %.024.i, 1
  %i.t = icmp sgt i32 %.024.i, 63
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @usleep(i32 noundef 50000) #20, !inline_history !123 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ 0, %bb.f ], [ %i.s, %bb.e ]
  %i.v = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 124) seq_cst, align 4, !tbaa !69
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !17
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i, label %createMissingClients.exit, !llvm.loop !124

createMissingClients.exit:                        ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.y = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #20 ; 0 uses
  %i.z = load i64, ptr %5, align 8, !tbaa !63
  %i.aa = mul nsw i64 %i.z, 1000000
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !66
  %i.ad = add nsw i64 %i.aa, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ae = sdiv i64 %i.ad, 1000
  store i64 %i.ae, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !70
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49 ; 2 uses
  %.not5 = icmp eq i32 %i.af, 0
  br i1 %.not5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %createMissingClients.exit
  %i.ag = load ptr, ptr @config, align 8, !tbaa !76
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
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !125
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !126 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = tail call i32 @pthread_create(ptr noundef nonnull %i.am, ptr noundef null, ptr noundef nonnull @execBenchmarkThread, ptr noundef %i.al) #20
  %.not.i10 = icmp eq i32 %i.an, 0
  br i1 %.not.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i9
  %i.ao = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.194, i32 noundef %i.ao) #25 ; 0 uses
  tail call void @exit(i32 noundef 1) #24
  unreachable

bb.k:                                             ; preds = %.lr.ph.i9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next.i, %i.as
  br i1 %i.at, label %.lr.ph.i9, label %.preheader.i, !llvm.loop !128

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %.lr.ph11.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !125
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv14.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !129
  %i.az = tail call i32 @pthread_join(i64 noundef %i.ay, ptr noundef null) #20 ; 0 uses
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next15.i, %i.bb
  br i1 %i.bc, label %.lr.ph11.i, label %startBenchmarkThreads.exit, !llvm.loop !130

startBenchmarkThreads.exit:                       ; preds = %.lr.ph11.i, %.preheader.i, %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.bd = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #20 ; 0 uses
  %i.be = load i64, ptr %4, align 8, !tbaa !63
  %i.bf = mul nsw i64 %i.be, 1000000
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !66
  %i.bi = add nsw i64 %i.bf, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bj = sdiv i64 %i.bi, 1000
  %i.bk = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 184), align 8, !tbaa !70
  %i.bl = sub nsw i64 %i.bj, %i.bk
  store i64 %i.bl, ptr getelementptr inbounds nuw (i8, ptr @config, i64 192), align 8, !tbaa !194
  %i.bm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) seq_cst, align 8, !tbaa !192
  %i.bn = sitofp i32 %i.bm to float
  %i.bo = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 192), align 8, !tbaa !194
  %i.bp = sitofp i64 %i.bo to float
  %i.bq = fdiv float %i.bp, 1.000000e+03
  %i.br = fdiv float %i.bn, %i.bq                 ; 3 uses
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  %i.bt = tail call i64 @hdr_min(ptr noundef %i.bs) #20
  %6 = sitofp i64 %i.bt to float
  %7 = fdiv float %6, 1.000000e+03                ; 2 uses
  %8 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  %9 = tail call i64 @hdr_value_at_percentile(ptr noundef %8, double noundef 5.000000e+01) #20
  %10 = sitofp i64 %9 to float
  %11 = fdiv float %10, 1.000000e+03              ; 2 uses
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  %i.bv = tail call i64 @hdr_value_at_percentile(ptr noundef %i.bu, double noundef 9.500000e+01) #20
  %12 = sitofp i64 %i.bv to float
  %13 = fdiv float %12, 1.000000e+03              ; 2 uses
  %14 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  %15 = tail call i64 @hdr_value_at_percentile(ptr noundef %14, double noundef 9.900000e+01) #20
  %16 = sitofp i64 %15 to float
  %17 = fdiv float %16, 1.000000e+03              ; 2 uses
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  %i.bx = tail call i64 @hdr_max(ptr noundef %i.bw) #20
  %i.by = sitofp i64 %i.bx to float
  %i.bz = fdiv float %i.by, 1.000000e+03          ; 2 uses
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  %i.cb = tail call double @hdr_mean(ptr noundef %i.ca) #20
  %i.cc = fdiv double %i.cb, 1.000000e+03
  %i.cd = fptrunc double %i.cc to float           ; 2 uses
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 216), align 8, !tbaa !44
  %i.cf = icmp ne i32 %i.ce, 0
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 220), align 4
  %i.ch = icmp ne i32 %i.cg, 0                    ; 2 uses
  %or.cond.i = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond.i, label %bb.ag, label %bb.l

bb.l:                                             ; preds = %startBenchmarkThreads.exit
  %i.ci = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !72
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ci, ptr noundef nonnull @.str.52) ; 0 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !73
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.195, ptr noundef %i.ck) ; 0 uses
  %i.cm = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 136) seq_cst, align 8, !tbaa !192
  %i.cn = load i64, ptr getelementptr inbounds nuw (i8, ptr @config, i64 192), align 8, !tbaa !194
  %i.co = sitofp i64 %i.cn to float
  %i.cp = fdiv float %i.co, 1.000000e+03
  %i.cq = fpext float %i.cp to double
  %i.cr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.196, i32 noundef %i.cm, double noundef %i.cq) ; 0 uses
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 120), align 8, !tbaa !17
  %i.ct = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.197, i32 noundef %i.cs) ; 0 uses
  %i.cu = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 164), align 4, !tbaa !136
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.198, i32 noundef %i.cu) ; 0 uses
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 176), align 8, !tbaa !30
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %i.cw) ; 0 uses
  %i.cy = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 272), align 8, !tbaa !50
  %.not.i11 = icmp eq i32 %i.cy, 0
  br i1 %.not.i11, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !110
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %i.cz) ; 0 uses
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !110 ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %.pre73.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !111
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.t, %.lr.ph.preheader.i
  %i.dd = phi i32 [ %i.db, %.lr.ph.preheader.i ], [ %i.ej, %bb.t ]
  %i.de = phi ptr [ %.pre73.i, %.lr.ph.preheader.i ], [ %i.ek, %bb.t ] ; 2 uses
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i14, %bb.t ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.i13
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !112
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !116 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i12
  %i.dk = trunc nuw nsw i64 %indvars.iv.i13 to i32
  %i.dl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.201, i32 noundef %i.dk) ; 0 uses
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !117 ; 6 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !42
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %i.dq = and i32 %i.dp, 7
  switch i32 %i.dq, label %hi_sdslen.exit.thread.i [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.s
  ]

bb.o:                                             ; preds = %bb.n
  %i.dr = lshr i32 %i.dp, 3
  %i.ds = zext nneg i32 %i.dr to i64
  br label %hi_sdslen.exit.i

bb.p:                                             ; preds = %bb.n
  %i.dt = getelementptr inbounds i8, ptr %i.dm, i64 -3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !42
  %i.dv = zext i8 %i.du to i64
  br label %hi_sdslen.exit.i

bb.q:                                             ; preds = %bb.n
  %i.dw = getelementptr inbounds i8, ptr %i.dm, i64 -5
  %i.dx = load i16, ptr %i.dw, align 1, !tbaa !132
  %i.dy = zext i16 %i.dx to i64
  br label %hi_sdslen.exit.i

bb.r:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds i8, ptr %i.dm, i64 -9
  %i.ea = load i32, ptr %i.dz, align 1, !tbaa !9
  %i.eb = zext i32 %i.ea to i64
  br label %hi_sdslen.exit.i

bb.s:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds i8, ptr %i.dm, i64 -17
  %i.ed = load i64, ptr %i.ec, align 1, !tbaa !134
  br label %hi_sdslen.exit.i

hi_sdslen.exit.i:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.0.i.i = phi i64 [ %i.ed, %bb.s ], [ %i.ds, %bb.o ], [ %i.dv, %bb.p ], [ %i.dy, %bb.q ], [ %i.eb, %bb.r ]
  %.not60.i = icmp eq i64 %.0.i.i, 0
  %spec.select.i = select i1 %.not60.i, ptr @.str.203, ptr %i.dm
  br label %hi_sdslen.exit.thread.i

hi_sdslen.exit.thread.i:                          ; preds = %hi_sdslen.exit.i, %bb.n
  %i.ee = phi ptr [ @.str.203, %bb.n ], [ %spec.select.i, %hi_sdslen.exit.i ]
  %i.ef = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.202, ptr noundef nonnull %i.ee) ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !119
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.204, ptr noundef %i.eh) ; 0 uses
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 280), align 8, !tbaa !111
  %.pre74.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 276), align 4, !tbaa !110
  br label %bb.t

bb.t:                                             ; preds = %hi_sdslen.exit.thread.i, %.lr.ph.i12
  %i.ej = phi i32 [ %i.dd, %.lr.ph.i12 ], [ %.pre74.i, %hi_sdslen.exit.thread.i ] ; 2 uses
  %i.ek = phi ptr [ %i.de, %.lr.ph.i12 ], [ %.pre.i, %hi_sdslen.exit.thread.i ]
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %i.el = sext i32 %i.ej to i64
  %i.em = icmp slt i64 %indvars.iv.next.i14, %i.el
  br i1 %i.em, label %.lr.ph.i12, label %.loopexit.i, !llvm.loop !195

bb.u:                                             ; preds = %bb.l
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 288), align 8, !tbaa !122 ; 2 uses
  %.not50.i = icmp eq ptr %i.en, null
  br i1 %.not50.i, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !117
  %i.ep = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %i.eo) ; 0 uses
  %i.eq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 288), align 8, !tbaa !122
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !119
  %i.et = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %i.es) ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.t, %bb.v, %bb.u, %bb.m
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  %.not51.i = icmp eq i32 %i.eu, 0
  %i.ev = select i1 %.not51.i, ptr @.str.209, ptr @.str.208
  %i.ew = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.207, ptr noundef nonnull %i.ev) ; 0 uses
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49 ; 2 uses
  %.not52.i = icmp eq i32 %i.ex, 0
  br i1 %.not52.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit.i
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.210, i32 noundef %i.ex) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.loopexit.i
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !196 ; 3 uses
  call void @hdr_iter_percentile_init(ptr noundef nonnull %3, ptr noundef %i.ez, i32 noundef 1) #20
  %i.fc = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %3) #20
  br i1 %i.fc, label %.lr.ph67.i, label %._crit_edge.i

.lr.ph67.i:                                       ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph67.i
  %.04466.i = phi i64 [ -1, %.lr.ph67.i ], [ %i.fg, %bb.aa ]
  %i.fg = load i64, ptr %i.fd, align 8, !tbaa !199 ; 4 uses
  %.not59.i = icmp ne i64 %.04466.i, %i.fg
  %i.fh = icmp eq i64 %i.fg, %i.fb
  %or.cond61.i = select i1 %.not59.i, i1 true, i1 %i.fh
  br i1 %or.cond61.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fi = load double, ptr %i.fe, align 8, !tbaa !201
  %i.fj = load i64, ptr %i.ff, align 8, !tbaa !204
  %i.fk = sitofp i64 %i.fj to float
  %i.fl = fdiv float %i.fk, 1.000000e+03
  %i.fm = fpext float %i.fl to double
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.212, double noundef %i.fi, double noundef %i.fm, i64 noundef %i.fg) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fo = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %3) #20
  br i1 %i.fo, label %bb.y, label %._crit_edge.i, !llvm.loop !205

._crit_edge.i:                                    ; preds = %bb.aa, %bb.x
  %putchar53.i = call i32 @putchar(i32 10)        ; 0 uses
  %puts54.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75
  call void @hdr_iter_linear_init(ptr noundef nonnull %3, ptr noundef %i.fp, i64 noundef 100) #20
  %i.fq = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %3) #20
  br i1 %i.fq, label %.lr.ph70.i, label %._crit_edge71.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ft = sitofp i64 %i.fb to double
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %.lr.ph70.i
  %.168.i = phi i64 [ -1, %.lr.ph70.i ], [ %i.fu, %bb.af ]
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !199 ; 5 uses
  %.not58.i = icmp ne i64 %.168.i, %i.fu
  %i.fv = icmp eq i64 %i.fu, %i.fb
  %or.cond62.i = select i1 %.not58.i, i1 true, i1 %i.fv
  br i1 %or.cond62.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fw = sitofp i64 %i.fu to double
  %i.fx = fdiv double %i.fw, %i.ft
  %i.fy = fmul double %i.fx, 1.000000e+02
  %i.fz = load i64, ptr %i.fr, align 8, !tbaa !204
  %i.ga = sitofp i64 %i.fz to float
  %i.gb = fdiv float %i.ga, 1.000000e+03
  %i.gc = fpext float %i.gb to double
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.212, double noundef %i.fy, double noundef %i.gc, i64 noundef %i.fu) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ge = load i64, ptr %i.fr, align 8, !tbaa !204
  %i.gf = icmp sgt i64 %i.ge, 2000
  br i1 %i.gf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @hdr_iter_linear_set_value_units_per_bucket(ptr noundef nonnull %3, i64 noundef 1000) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gg = call zeroext i1 @hdr_iter_next(ptr noundef nonnull %3) #20
  br i1 %i.gg, label %bb.ab, label %._crit_edge71.i, !llvm.loop !206

._crit_edge71.i:                                  ; preds = %bb.af, %._crit_edge.i
  %putchar55.i = call i32 @putchar(i32 10)        ; 0 uses
  %puts56.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.gh = fpext float %i.br to double
  %i.gi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.215, double noundef %i.gh) ; 0 uses
  %puts57.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.217, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.223) ; 0 uses
  %i.gk = fpext float %i.cd to double
  %i.gl = fpext float %7 to double
  %i.gm = fpext float %11 to double
  %i.gn = fpext float %13 to double
  %i.go = fpext float %17 to double
  %i.gp = fpext float %i.bz to double
  %i.gq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.224, double noundef %i.gk, double noundef %i.gl, double noundef %i.gm, double noundef %i.gn, double noundef %i.go, double noundef %i.gp) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %showLatencyReport.exit

bb.ag:                                            ; preds = %startBenchmarkThreads.exit
  %i.gr = fpext float %11 to double               ; 2 uses
  br i1 %i.ch, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !73
  %i.gt = fpext float %i.br to double
  %i.gu = fpext float %i.cd to double
  %i.gv = fpext float %7 to double
  %i.gw = fpext float %13 to double
  %i.gx = fpext float %17 to double
  %i.gy = fpext float %i.bz to double
  %i.gz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.225, ptr noundef %i.gs, double noundef %i.gt, double noundef %i.gu, double noundef %i.gv, double noundef %i.gr, double noundef %i.gw, double noundef %i.gx, double noundef %i.gy) ; 0 uses
  br label %showLatencyReport.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ha = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !72
  %i.hb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, i32 noundef %i.ha, ptr noundef nonnull @.str.52) ; 0 uses
  %i.hc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 200), align 8, !tbaa !73
  %i.hd = fpext float %i.br to double
  %i.he = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.226, ptr noundef %i.hc, double noundef %i.hd, double noundef %i.gr) ; 0 uses
  br label %showLatencyReport.exit

showLatencyReport.exit:                           ; preds = %._crit_edge71.i, %bb.ah, %bb.ai
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 208), align 8, !tbaa !78
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !207 ; 2 uses
  %.not4.i = icmp eq ptr %i.hg, null
  br i1 %.not4.i, label %freeAllClients.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %showLatencyReport.exit, %.lr.ph.i15
  %.05.i = phi ptr [ %i.hi, %.lr.ph.i15 ], [ %i.hg, %showLatencyReport.exit ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !210 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !212
  call fastcc void @freeClient(ptr noundef %i.hk)
  %.not.i16 = icmp eq ptr %i.hi, null
  br i1 %.not.i16, label %freeAllClients.exit, label %.lr.ph.i15, !llvm.loop !213

freeAllClients.exit:                              ; preds = %.lr.ph.i15, %showLatencyReport.exit
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !125 ; 3 uses
  %.not6 = icmp eq ptr %i.hl, null
  br i1 %.not6, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %freeAllClients.exit
  %i.hm = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49 ; 2 uses
  %i.hn = icmp sgt i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.i19, label %freeBenchmarkThreads.exit

.lr.ph.i19:                                       ; preds = %bb.aj, %bb.am
  %i.ho = phi i32 [ %i.hu, %bb.am ], [ %i.hm, %bb.aj ]
  %i.hp = phi ptr [ %i.hv, %bb.am ], [ %i.hl, %bb.aj ] ; 2 uses
  %indvars.iv.i20 = phi i64 [ %indvars.iv.next.i23, %bb.am ], [ 0, %bb.aj ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.i20
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !126 ; 3 uses
  %.not.i21 = icmp eq ptr %i.hr, null
  br i1 %.not.i21, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i19
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !145 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i, label %freeBenchmarkThread.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @aeDeleteEventLoop(ptr noundef nonnull %i.ht) #20
  br label %freeBenchmarkThread.exit.i

freeBenchmarkThread.exit.i:                       ; preds = %bb.al, %bb.ak
  call void @zfree(ptr noundef nonnull %i.hr) #20
  %.pre.i22 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !125
  %.pre8.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 256), align 8, !tbaa !49
  br label %bb.am

bb.am:                                            ; preds = %freeBenchmarkThread.exit.i, %.lr.ph.i19
  %i.hu = phi i32 [ %.pre8.i, %freeBenchmarkThread.exit.i ], [ %i.ho, %.lr.ph.i19 ] ; 2 uses
  %i.hv = phi ptr [ %.pre.i22, %freeBenchmarkThread.exit.i ], [ %i.hp, %.lr.ph.i19 ] ; 2 uses
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %i.hw = sext i32 %i.hu to i64
  %i.hx = icmp slt i64 %indvars.iv.next.i23, %i.hw
  br i1 %i.hx, label %.lr.ph.i19, label %freeBenchmarkThreads.exit, !llvm.loop !146

freeBenchmarkThreads.exit:                        ; preds = %bb.am, %bb.aj
  %i.hy = phi ptr [ %i.hl, %bb.aj ], [ %i.hv, %bb.am ]
  call void @zfree(ptr noundef %i.hy) #20
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @config, i64 264), align 8, !tbaa !125
  br label %bb.an

bb.an:                                            ; preds = %freeBenchmarkThreads.exit, %freeAllClients.exit
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 304), align 8, !tbaa !74 ; 2 uses
  %.not7 = icmp eq ptr %i.hz, null
  br i1 %.not7, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @hdr_close(ptr noundef nonnull %i.hz) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 296), align 8, !tbaa !75 ; 2 uses
  %.not8 = icmp eq ptr %i.ia, null
  br i1 %.not8, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @hdr_close(ptr noundef nonnull %i.ia) #20
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @hi_sdsfree(ptr noundef nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119  ; 2 uses
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
  %.041 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 10 uses
  %i.e = icmp eq ptr %.041, null                  ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.041, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !152
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !33
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.149, i64 30, i64 1, ptr %i.h) #23 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.041, i64 12
  %i.k = select i1 %i.e, ptr @.str.55, ptr %i.j   ; 2 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !33 ; 2 uses
  br i1 %i.b, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.150, ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.k) #25 ; 0 uses
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.151, ptr noundef nonnull %2, ptr noundef nonnull %i.k) #25 ; 0 uses
  br label %bb.z

bb.i:                                             ; preds = %bb.e
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 48), align 8, !tbaa !52
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !13
  %i.q = call i32 @cliSecureConnection(ptr noundef nonnull %.041, ptr noundef nonnull byval(%struct.cliSSLconfig) align 8 getelementptr inbounds nuw (i8, ptr @config, i64 56), ptr noundef nonnull %i.a) #20
  %i.r = icmp eq i32 %i.q, -1
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = icmp ne ptr %i.s, null
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.k, label %.thread
end_hunk_1
