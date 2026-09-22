Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-lib?download=true
inline.NumInlined: 19
inline.NumDeleted: 7
begin_hunk_0_@test__run_end:bb.a
  %i.aq = call i32 @fflush(ptr noundef %i.ap)     ; 0 uses
  %i.ar = load i32, ptr @ctx, align 4, !tbaa !18  ; 2 uses
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = load i8, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 8), align 4
  %i.au = zext i1 %i.as to i8
  %i.av = or i8 %i.at, %i.au
  store i8 %i.av, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 8), align 4
  %i.aw = icmp ne i32 %i.ar, 1
  %i.ax = zext i1 %i.aw to i32
  br label %bb.r

bb.r:                                             ; preds = %print_description.exit, %bb.q
  %.0 = phi i32 [ %i.ax, %bb.q ], [ 1, %print_description.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @test_skip(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #3 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 8), align 4
  %i.b = and i8 %i.a, 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 146, ptr noundef nonnull @__PRETTY_FUNCTION__.test_skip) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  store i32 2, ptr @ctx, align 4, !tbaa !18
  call void @llvm.va_start.p0(ptr nonnull %1)
  %.not2 = icmp eq ptr %0, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.d = call i32 @fflush(ptr noundef %i.c)       ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 18, i64 1, ptr %i.e) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !15, !noalias !41
  %i.g = call i32 @vfprintf(ptr noundef %i.f, ptr noundef nonnull readonly %0, ptr noundef nonnull %1) #10, !inline_history !0 ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.i = call i32 @putc(i32 noundef 10, ptr noundef %i.h) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.k = call i32 @fflush(ptr noundef %i.j)       ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @test_skip_all(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 4), align 4, !tbaa !17
  %.not = icmp ne i32 %i.a, 0
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 8), align 4 ; 3 uses
  %i.b = and i8 %.pre, 2
  %.not2 = icmp eq i8 %i.b, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not2  ; 2 uses
  %i.c = and i8 %.pre, -11
  %i.d = or i8 %.pre, 1
  %storemerge = select i1 %or.cond, i8 %i.d, i8 %i.c
  %.0 = select i1 %or.cond, ptr @.str.8, ptr @.str.7
  %i.e = or i8 %storemerge, 8
  store i8 %i.e, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 8), align 4
  store i32 2, ptr @ctx, align 4, !tbaa !18
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.g = call i32 @fflush(ptr noundef %i.f)       ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = call i64 @fwrite(ptr nonnull %.0, i64 12, i64 1, ptr %i.h) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !15, !noalias !44
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef readonly %0, ptr noundef nonnull %1) #10, !inline_history !0 ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.l = call i32 @putc(i32 noundef 10, ptr noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.n = call i32 @fflush(ptr noundef %i.m)       ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @test__run_describe(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #3 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 8), align 4
  %i.b = and i8 %i.a, 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef 181, ptr noundef nonnull @__PRETTY_FUNCTION__.test__run_describe) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 9), align 1, !tbaa !19
  %.not5 = icmp eq i8 %i.c, 0
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__.test__run_describe) #11
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @ctx, i64 109), align 1, !tbaa !19
  %.not6 = icmp eq i8 %i.d, 0
  br i1 %.not6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 183, ptr noundef nonnull @__PRETTY_FUNCTION__.test__run_describe) #11
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.e = tail call fastcc ptr @make_relative(ptr noundef %0)
  %i.f = tail call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctx, i64 9), i64 noundef 100, ptr noundef nonnull @.str.4, ptr noundef %i.e) #10 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.g = call i32 @vsnprintf(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctx, i64 109), i64 noundef 100, ptr noundef %1, ptr noundef nonnull %2) #10 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @die(ptr noundef nonnull @.str.11, ptr noundef %1) #11
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = icmp samesign ugt i32 %i.g, 99
  br i1 %i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.2, i32 noundef 194, ptr noundef nonnull @.str.12, ptr noundef %1) #11
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare i32 @xsnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_relative(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 47 uses
  %i.b = load i32, ptr @make_relative.need_bs_to_fs, align 4, !tbaa !49
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr @make_relative.prefix_len, align 8, !tbaa !51
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @make_relative.prefix) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const.make_relative.needle, i64 24, i1 false)
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 11 uses
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.33, ptr noundef nonnull @make_relative.prefix) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = sub nuw i64 %i.d, %i.e                   ; 2 uses
  store i64 %i.g, ptr @make_relative.prefix_len, align 8, !tbaa !51
  %i.h = getelementptr i8, ptr @make_relative.prefix, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19
  %i.k = icmp eq i8 %i.j, 47
  br i1 %i.k, label %.preheader, label %.loopexit26

.preheader:                                       ; preds = %bb.d
  %.not28 = icmp eq i64 %i.e, 0
  br i1 %.not28, label %.loopexit26, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue96, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue96 ] ; 33 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load = load <16 x i8>, ptr %i.m, align 16, !tbaa !19
  %wide.load34 = load <16 x i8>, ptr %i.n, align 16, !tbaa !19
  %i.o = icmp eq <16 x i8> %wide.load, splat (i8 92) ; 16 uses
  %i.p = icmp eq <16 x i8> %wide.load34, splat (i8 92) ; 16 uses
  %i.q = extractelement <16 x i1> %i.o, i64 0
  br i1 %i.q, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 47, ptr %i.m, align 16, !tbaa !19
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.r = extractelement <16 x i1> %i.o, i64 1
  br i1 %i.r, label %pred.store.if35, label %pred.store.continue36

pred.store.if35:                                  ; preds = %pred.store.continue
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 47, ptr %i.t, align 1, !tbaa !19
  br label %pred.store.continue36

pred.store.continue36:                            ; preds = %pred.store.if35, %pred.store.continue
  %i.u = extractelement <16 x i1> %i.o, i64 2
  br i1 %i.u, label %pred.store.if37, label %pred.store.continue38

pred.store.if37:                                  ; preds = %pred.store.continue36
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 47, ptr %i.w, align 2, !tbaa !19
  br label %pred.store.continue38

pred.store.continue38:                            ; preds = %pred.store.if37, %pred.store.continue36
  %i.x = extractelement <16 x i1> %i.o, i64 3
  br i1 %i.x, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue38
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  store i8 47, ptr %i.z, align 1, !tbaa !19
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue38
  %i.aa = extractelement <16 x i1> %i.o, i64 4
  br i1 %i.aa, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i8 47, ptr %i.ac, align 4, !tbaa !19
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %i.ad = extractelement <16 x i1> %i.o, i64 5
  br i1 %i.ad, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  store i8 47, ptr %i.af, align 1, !tbaa !19
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %i.ag = extractelement <16 x i1> %i.o, i64 6
  br i1 %i.ag, label %pred.store.if45, label %pred.store.continue46

pred.store.if45:                                  ; preds = %pred.store.continue44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i8 47, ptr %i.ai, align 2, !tbaa !19
  br label %pred.store.continue46

pred.store.continue46:                            ; preds = %pred.store.if45, %pred.store.continue44
  %i.aj = extractelement <16 x i1> %i.o, i64 7
  br i1 %i.aj, label %pred.store.if47, label %pred.store.continue48

pred.store.if47:                                  ; preds = %pred.store.continue46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 7
  store i8 47, ptr %i.al, align 1, !tbaa !19
  br label %pred.store.continue48

pred.store.continue48:                            ; preds = %pred.store.if47, %pred.store.continue46
  %i.am = extractelement <16 x i1> %i.o, i64 8
  br i1 %i.am, label %pred.store.if49, label %pred.store.continue50

pred.store.if49:                                  ; preds = %pred.store.continue48
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i8 47, ptr %i.ao, align 8, !tbaa !19
  br label %pred.store.continue50

pred.store.continue50:                            ; preds = %pred.store.if49, %pred.store.continue48
  %i.ap = extractelement <16 x i1> %i.o, i64 9
  br i1 %i.ap, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue50
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  store i8 47, ptr %i.ar, align 1, !tbaa !19
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue50
  %i.as = extractelement <16 x i1> %i.o, i64 10
  br i1 %i.as, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 10
  store i8 47, ptr %i.au, align 2, !tbaa !19
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.av = extractelement <16 x i1> %i.o, i64 11
  br i1 %i.av, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  store i8 47, ptr %i.ax, align 1, !tbaa !19
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.ay = extractelement <16 x i1> %i.o, i64 12
  br i1 %i.ay, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i8 47, ptr %i.ba, align 4, !tbaa !19
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.bb = extractelement <16 x i1> %i.o, i64 13
  br i1 %i.bb, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 13
  store i8 47, ptr %i.bd, align 1, !tbaa !19
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.be = extractelement <16 x i1> %i.o, i64 14
  br i1 %i.be, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  store i8 47, ptr %i.bg, align 2, !tbaa !19
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.bh = extractelement <16 x i1> %i.o, i64 15
  br i1 %i.bh, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 15
  store i8 47, ptr %i.bj, align 1, !tbaa !19
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.bk = extractelement <16 x i1> %i.p, i64 0
  br i1 %i.bk, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i8 47, ptr %i.bm, align 16, !tbaa !19
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %i.bn = extractelement <16 x i1> %i.p, i64 1
  br i1 %i.bn, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 17
  store i8 47, ptr %i.bp, align 1, !tbaa !19
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %i.bq = extractelement <16 x i1> %i.p, i64 2
  br i1 %i.bq, label %pred.store.if69, label %pred.store.continue70

pred.store.if69:                                  ; preds = %pred.store.continue68
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 18
  store i8 47, ptr %i.bs, align 2, !tbaa !19
  br label %pred.store.continue70

pred.store.continue70:                            ; preds = %pred.store.if69, %pred.store.continue68
  %i.bt = extractelement <16 x i1> %i.p, i64 3
  br i1 %i.bt, label %pred.store.if71, label %pred.store.continue72

pred.store.if71:                                  ; preds = %pred.store.continue70
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
end_hunk_0
