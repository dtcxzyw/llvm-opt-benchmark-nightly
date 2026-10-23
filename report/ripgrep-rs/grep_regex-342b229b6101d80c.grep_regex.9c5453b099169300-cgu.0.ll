Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_regex-342b229b6101d80c.grep_regex.9c5453b099169300-cgu.0?download=true
inline.NumInlined: 279
inline.NumDeleted: 132
begin_hunk_0_@_RNvNtCsdq8xsXUia3c_10grep_regex5strip16strip_from_match:bb.a
  %i.f = icmp eq i64 %i.e, -1, !dbg !3288
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !3289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !3289
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !3290

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3291
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !3291
  store i64 -1, ptr %0, align 8, !dbg !3292
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !3293
  br label %bb.f, !dbg !3294

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40, !dbg !3295
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3291
  store i64 %i.e, ptr %i.b, align 8, !dbg !3278
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !3278
  %.sroa.8.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !3278
  store i64 %.sroa.5.0.copyload, ptr %.sroa.8.0..sroa_idx5, align 8, !dbg !3278
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !3293
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, i8 noundef 10), !dbg !3296
  br label %bb.f, !dbg !3296

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.d
  ret void, !dbg !3297
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3298 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.7160 = alloca [31 x i8], align 1         ; 6 uses
  %.sroa.632 = alloca [31 x i8], align 1          ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.7153 = alloca [31 x i8], align 1         ; 6 uses
  %.sroa.621 = alloca [31 x i8], align 1          ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.614 = alloca [32 x i8], align 8          ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.t = alloca [40 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [40 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [40 x i8], align 8                ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 9 uses
  %i.ab = alloca [48 x i8], align 8               ; 4 uses
  %i.ac = alloca [40 x i8], align 8               ; 22 uses
  %i.ad = alloca [48 x i8], align 8               ; 27 uses
  %i.ae = alloca [4 x i8], align 4                ; 6 uses
  %i.af = alloca [1 x i8], align 1                ; 7 uses
  store i8 %2, ptr %i.af, align 1
  %i.ag = icmp sgt i8 %2, -1, !dbg !3834
  br i1 %i.ag, label %bb.h, label %bb.b, !dbg !3835

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3836
  store i8 2, ptr %i.ah, align 8, !dbg !3836
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !3836
  store i8 %2, ptr %.sroa.42.0..sroa_idx, align 1, !dbg !3836
  store i64 -1, ptr %0, align 8, !dbg !3836
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.d unwind label %bb.c, !dbg !3837, !inline_history !240

bb.c:                                             ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1) #22
          to label %bb.g unwind label %bb.f, !dbg !3837, !inline_history !240

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit unwind label %bb.e, !dbg !3837, !inline_history !240

bb.e:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3837, !inline_history !240
  unreachable, !dbg !3837

common.resume:                                    ; preds = %bb.bq, %bb.bf, %bb.bc, %bb.ar, %bb.cn, %bb.da, %.body105.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i108, %bb.bz, %.body.i113, %bb.cw, %.body.i96, %bb.ad, %bb.ae, %bb.ai, %.body.i, %bb.u, %bb.v, %bb.z, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.g ], [ %i.cv, %bb.ad ], [ %i.cc, %bb.u ], [ %i.bz, %.body.i ], [ %i.bz, %bb.z ], [ %i.cc, %bb.v ], [ %i.cs, %.body.i96 ], [ %i.cs, %bb.ai ], [ %i.cv, %bb.ae ], [ %i.fm, %bb.bz ], [ %i.dj, %.body105.thread ], [ %i.dn, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i108 ], [ %.pn74186, %bb.bq ], [ %i.ek, %bb.bf ], [ %.pn182, %bb.bc ], [ %i.eb, %bb.ar ], [ %eh.lpad-body80.ph, %bb.cn ], [ %i.go, %bb.cw ], [ %.pn.i.i, %.body.i113 ], [ %eh.lpad-body.ph, %bb.da ]
  resume { ptr, i32 } %common.resume.op, !dbg !3838

bb.g:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.ai, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !3837
  %.val2.i = load ptr, ptr %i.al, align 8, !dbg !3837, !alias.scope !3683, !nonnull !212, !noundef !212
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #23, !dbg !3839, !inline_history !240
  br label %common.resume, !dbg !3837

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !3837
  %.val.i = load ptr, ptr %i.am, align 8, !dbg !3837, !alias.scope !3683, !nonnull !212, !noundef !212
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #23, !dbg !3840, !inline_history !240
  br label %bb.i, !dbg !3841

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !3842
  %i.an = zext nneg i8 %2 to i32, !dbg !3843      ; 3 uses
  store i32 %i.an, ptr %i.ae, align 4, !dbg !3843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !3844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !3845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !3845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !dbg !3845
  call void @_RNvMs2_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3Hir9into_kind(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ab), !dbg !3846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !3847
  %i.ao = load i64, ptr %i.ac, align 8, !dbg !3845, !range !287, !noundef !212 ; 4 uses
  %i.ap = icmp ne i64 %i.ao, 4, !dbg !3845
  call void @llvm.assume(i1 %i.ap), !dbg !3845
  %i.aq = add nsw i64 %i.ao, -2, !dbg !3845
  %.inv = icmp samesign ult i64 %i.ao, 2, !dbg !3845
  %i.ar = select i1 %.inv, i64 2, i64 %i.aq, !dbg !3845
  switch i64 %i.ar, label %bb.j [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.n
    i64 3, label %bb.o
    i64 4, label %bb.p
    i64 5, label %bb.q
    i64 6, label %bb.r
    i64 7, label %bb.aa
  ], !dbg !3844

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit
  ret void, !dbg !3848

bb.j:                                             ; preds = %bb.h
  unreachable, !dbg !3849

bb.k:                                             ; preds = %bb.h
  %i.as = call noundef nonnull align 8 ptr @_RNvMso_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_10Properties5empty(), !dbg !3850
  store i64 2, ptr %i.ad, align 8, !dbg !3851
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 40, !dbg !3851
  store ptr %i.as, ptr %i.at, align 8, !dbg !3851
  br label %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3852

bb.l:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3853
  %i.av = load ptr, ptr %i.au, align 8, !dbg !3853, !nonnull !212, !noundef !212 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3853
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !3853, !noundef !212 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax, !dbg !3854
  call void @llvm.experimental.noalias.scope.decl(metadata !3693), !dbg !3855
  %i.az = load i8, ptr %i.af, align 1, !alias.scope !3693
  %i.ba = icmp samesign eq i64 %i.ax, 0, !dbg !3856
  br i1 %i.ba, label %._crit_edge, label %.lr.ph, !dbg !3857

bb.m:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.bd, i64 1, !dbg !3858 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ay, !dbg !3856
  br i1 %i.bc, label %._crit_edge, label %.lr.ph, !dbg !3857

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %i.bd = phi ptr [ %i.bb, %bb.m ], [ %i.av, %bb.l ] ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !dbg !3859, !noalias !3694, !noundef !212
  %i.bf = icmp eq i8 %i.be, %i.az, !dbg !3860
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis_0EB1I_.exit, label %bb.m, !dbg !3861

bb.n:                                             ; preds = %bb.h
  %i.bg = trunc nuw i64 %i.ao to i1, !dbg !3844
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3862 ; 4 uses
  br i1 %i.bg, label %bb.an, label %bb.ao, !dbg !3844

bb.o:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3863
  %i.bj = load i32, ptr %i.bi, align 8, !dbg !3863, !range !3695, !noundef !212
  %i.bk = call noundef nonnull align 8 ptr @_RNvMso_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_10Properties4look(i32 noundef %i.bj), !dbg !3864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false), !dbg !3865
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 40, !dbg !3865
  store ptr %i.bk, ptr %i.bl, align 8, !dbg !3865
  br label %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3866

bb.p:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3867
  %.sroa.0134.0.copyload = load i64, ptr %i.bm, align 8, !dbg !3867 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3867
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3867, !nonnull !212, !noundef !212 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !3867
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !3867 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !3779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !3779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !3868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0.copyload, i64 48, i1 false), !dbg !3868
  %i.bn = load i8, ptr %i.af, align 1, !dbg !3779, !noundef !212
  invoke void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.r, i8 noundef %i.bn)
          to label %bb.bs unwind label %bb.br, !dbg !3779

bb.q:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3869
  %.sroa.0142.0.copyload = load ptr, ptr %i.bo, align 8, !dbg !3869, !nonnull !212, !noundef !212 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3869
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !3869 ; 7 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !3869 ; 2 uses
  %i.bp = load <2 x i64>, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !3869
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !3869 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614), !dbg !3803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !3803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !3870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0142.0.copyload, i64 48, i1 false), !dbg !3870
  %i.bq = load i8, ptr %i.af, align 1, !dbg !3803, !noundef !212
  invoke void @_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.n, i8 noundef %i.bq)
          to label %bb.cp unwind label %bb.co, !dbg !3803

bb.r:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3871
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3871
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !3871, !nonnull !212, !noundef !212 ; 3 uses
  %i.bu = load i64, ptr %i.br, align 8, !dbg !3871, !range !249, !noundef !212
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !3871
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !3871, !noundef !212 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.621), !dbg !3828
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7153), !dbg !3828
  %i.bx = icmp ult i64 %i.bw, 192153584101141163, !dbg !3872
  call void @llvm.assume(i1 %i.bx), !dbg !3873
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.bt, i64 %i.bw, !dbg !3874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !3875, !noalias !3702
  store i8 -1, ptr %i.g, align 8, !dbg !3876, !noalias !3702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !3877, !noalias !3702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3878, !noalias !3710
  store ptr %i.bt, ptr %i.e, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3879
  store ptr %i.bt, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !3879
  store i64 %i.bu, ptr %.sroa.5156.0..sroa_idx, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !3879
  store ptr %i.by, ptr %.sroa.6157.0..sroa_idx, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.7158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !3879
  store ptr %i.af, ptr %.sroa.7158.0..sroa_idx, align 8, !dbg !3879, !alias.scope !3713, !noalias !3714
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40, !dbg !3879
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx6.i, align 8, !dbg !3879, !alias.scope !3713, !noalias !3718
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB6_9into_iter8IntoIterBY_ENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis0_0EINtNtB2p_6result6ResultzNtNtB42_5error5ErrorEEE9from_iterB42_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.s unwind label %.body.i, !dbg !3880, !noalias !3702

.body.i:                                          ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load i8, ptr %i.g, align 8, !dbg !3881, !range !357, !noalias !3702, !noundef !212
  %.not.i = icmp eq i8 %i.ca, -1, !dbg !3881
  br i1 %.not.i, label %common.resume, label %bb.z, !dbg !3881

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3882, !noalias !3710
  %i.cb = load i8, ptr %i.g, align 8, !dbg !3883, !range !357, !noalias !3702, !noundef !212 ; 2 uses
  %.not.not.i = icmp eq i8 %i.cb, -1, !dbg !3883
  br i1 %.not.not.i, label %bb.dc, label %bb.t, !dbg !3884

bb.t:                                             ; preds = %bb.s
  %.sroa.7153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !3885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7153, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7153.0..sroa_idx, i64 31, i1 false), !dbg !3885, !noalias !3719
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.w unwind label %bb.u, !dbg !3886, !noalias !3702

bb.u:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.f, align 8, !dbg !3886, !alias.scope !3720, !noalias !3702 ; 2 uses
  %i.cd = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cd, label %common.resume, label %bb.v, !dbg !3887

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3886
  %.val3.i.i = load ptr, ptr %i.ce, align 8, !dbg !3886, !alias.scope !3721, !noalias !3702, !nonnull !212, !noundef !212
  %i.cf = mul nuw i64 %.val2.i.i, 48, !dbg !3888
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3889, !noalias !3722
  br label %common.resume, !dbg !3890

bb.w:                                             ; preds = %bb.t
  %.val.i.i = load i64, ptr %i.f, align 8, !dbg !3886, !alias.scope !3720, !noalias !3702 ; 2 uses
  %i.cg = icmp eq i64 %.val.i.i, 0
  br i1 %i.cg, label %bb.db, label %bb.x, !dbg !3891

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !3886
  %.val1.i.i = load ptr, ptr %i.ch, align 8, !dbg !3886, !alias.scope !3721, !noalias !3702, !nonnull !212, !noundef !212
  %i.ci = mul nuw i64 %.val.i.i, 48, !dbg !3892
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3893, !noalias !3723
  br label %bb.db, !dbg !3894

bb.y:                                             ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3895, !noalias !3702
  unreachable, !dbg !3895

bb.z:                                             ; preds = %.body.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsdq8xsXUia3c_10grep_regex5error5ErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #22
          to label %common.resume unwind label %bb.y, !dbg !3881, !noalias !3702

bb.aa:                                            ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !3896
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ac, i64 16, !dbg !3896
  %i.cm = load ptr, ptr %i.cl, align 8, !dbg !3896, !nonnull !212, !noundef !212 ; 3 uses
  %i.cn = load i64, ptr %i.ck, align 8, !dbg !3896, !range !249, !noundef !212
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !3896
  %i.cp = load i64, ptr %i.co, align 8, !dbg !3896, !noundef !212 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.632), !dbg !3831
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7160), !dbg !3831
  %i.cq = icmp ult i64 %i.cp, 192153584101141163, !dbg !3897
  call void @llvm.assume(i1 %i.cq), !dbg !3898
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %i.cm, i64 %i.cp, !dbg !3899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3900, !noalias !3727
  store i8 -1, ptr %i.d, align 8, !dbg !3901, !noalias !3727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3902, !noalias !3727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3903, !noalias !3731
  store ptr %i.cm, ptr %i.b, align 8, !dbg !3904, !alias.scope !3732, !noalias !3733
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !3904
  store ptr %i.cm, ptr %.sroa.4163.0..sroa_idx, align 8, !dbg !3904, !alias.scope !3732, !noalias !3733
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !3904
  store i64 %i.cn, ptr %.sroa.5164.0..sroa_idx, align 8, !dbg !3904, !alias.scope !3732, !noalias !3733
  %.sroa.6165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !3904
  store ptr %i.cr, ptr %.sroa.6165.0..sroa_idx, align 8, !dbg !3904, !alias.scope !3732, !noalias !3733
  %.sroa.7166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !3904
  store ptr %i.af, ptr %.sroa.7166.0..sroa_idx, align 8, !dbg !3904, !alias.scope !3732, !noalias !3733
  %.sroa.4.0..sroa_idx6.i95 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !3904
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx6.i95, align 8, !dbg !3904, !alias.scope !3732, !noalias !3734
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB6_9into_iter8IntoIterBY_ENCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_asciis1_0EINtNtB2p_6result6ResultzNtNtB42_5error5ErrorEEE9from_iterB42_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.ab unwind label %.body.i96, !dbg !3905, !noalias !3727

.body.i96:                                        ; preds = %bb.aa
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load i8, ptr %i.d, align 8, !dbg !3906, !range !357, !noalias !3727, !noundef !212
  %.not.i97 = icmp eq i8 %i.ct, -1, !dbg !3906
  br i1 %.not.i97, label %common.resume, label %bb.ai, !dbg !3906

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3907, !noalias !3731
  %i.cu = load i8, ptr %i.d, align 8, !dbg !3908, !range !357, !noalias !3727, !noundef !212 ; 2 uses
  %.not.not.i100 = icmp eq i8 %i.cu, -1, !dbg !3908
  br i1 %.not.not.i100, label %bb.de, label %bb.ac, !dbg !3909

bb.ac:                                            ; preds = %bb.ab
  %.sroa.7160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1, !dbg !3910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7160, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7160.0..sroa_idx, i64 31, i1 false), !dbg !3910, !noalias !3735
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.af unwind label %bb.ad, !dbg !3911, !noalias !3727

bb.ad:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i101 = load i64, ptr %i.c, align 8, !dbg !3911, !alias.scope !3736, !noalias !3727 ; 2 uses
  %i.cw = icmp eq i64 %.val2.i.i101, 0
  br i1 %i.cw, label %common.resume, label %bb.ae, !dbg !3912

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3911
  %.val3.i.i102 = load ptr, ptr %i.cx, align 8, !dbg !3911, !alias.scope !3737, !noalias !3727, !nonnull !212, !noundef !212
  %i.cy = mul nuw i64 %.val2.i.i101, 48, !dbg !3913
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i102, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3914, !noalias !3738
  br label %common.resume, !dbg !3915

bb.af:                                            ; preds = %bb.ac
  %.val.i.i103 = load i64, ptr %i.c, align 8, !dbg !3911, !alias.scope !3736, !noalias !3727 ; 2 uses
  %i.cz = icmp eq i64 %.val.i.i103, 0
  br i1 %i.cz, label %bb.dd, label %bb.ag, !dbg !3916

bb.ag:                                            ; preds = %bb.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !3911
  %.val1.i.i104 = load ptr, ptr %i.da, align 8, !dbg !3911, !alias.scope !3737, !noalias !3727, !nonnull !212, !noundef !212
  %i.db = mul nuw i64 %.val.i.i103, 48, !dbg !3917
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i104, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !dbg !3918, !noalias !3739
  br label %bb.dd, !dbg !3919

bb.ah:                                            ; preds = %bb.ai
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !3920, !noalias !3727
  unreachable, !dbg !3920

bb.ai:                                            ; preds = %.body.i96
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsdq8xsXUia3c_10grep_regex5error5ErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #22
          to label %common.resume unwind label %bb.ah, !dbg !3906, !noalias !3727

._crit_edge:                                      ; preds = %bb.m, %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !3740), !dbg !3921
end_hunk_0
begin_hunk_1_@_RNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii:bb.a
  invoke fastcc void @_RNCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii0B5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr nonnull %i.ae)
          to label %bb.az unwind label %bb.av, !dbg !3972

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !3973
  %i.ee = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !3973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !dbg !3974
  store i64 0, ptr %i.x, align 8, !dbg !3973
  invoke fastcc void @_RNvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3Hir5class(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.x)
          to label %bb.bb unwind label %bb.av, !dbg !3975

bb.az:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y)
          to label %bb.ba unwind label %.split.thread, !dbg !3969

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !3969
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa), !dbg !3962
  br label %bb.as, !dbg !3962

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !3976
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y), !dbg !3969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !3969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !3962
  br label %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3962

bb.bc:                                            ; preds = %.split.thread, %bb.ar
  %.pn182 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %i.eb, %bb.ar ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir12ClassUnicodeECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aa) #22
          to label %common.resume unwind label %bb.am, !dbg !3962

bb.bd:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !3977
  %i.ef = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !3977
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !dbg !3978
  store i64 1, ptr %i.v, align 8, !dbg !3977
  call fastcc void @_RNvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3Hir5class(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.v), !dbg !3979
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !3980
  br label %bb.bg, !dbg !3981

bb.be:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !3982
  %i.eg = load i8, ptr %i.af, align 1, !dbg !3983, !noundef !212 ; 2 uses
  %i.eh = invoke { i8, i8 } @_RNvMsi_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_15ClassBytesRange3new(i8 noundef %i.eg, i8 noundef %i.eg)
          to label %bb.bh unwind label %.split185.thread, !dbg !3983 ; 2 uses

bb.bf:                                            ; preds = %bb.bj
  br i1 %.sroa.041.2, label %bb.bq, label %common.resume, !dbg !3984

.split185.thread:                                 ; preds = %bb.bn, %bb.bh, %bb.be
  %lpad.thr_comm187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq, !dbg !3984

bb.bg:                                            ; preds = %bb.bo, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !3984
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3963

bb.bh:                                            ; preds = %bb.be
  %i.ei = extractvalue { i8, i8 } %i.eh, 0, !dbg !3983
  %i.ej = extractvalue { i8, i8 } %i.eh, 1, !dbg !3983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !3985
  %.sroa.070.1.insert.ext = zext i8 %i.ei to i24, !dbg !3985
  %.sroa.070.1.insert.shift = shl nuw nsw i24 %.sroa.070.1.insert.ext, 8, !dbg !3985
  %.sroa.070.2.insert.ext = zext i8 %i.ej to i24, !dbg !3985
  %.sroa.070.2.insert.shift = shl nuw i24 %.sroa.070.2.insert.ext, 16, !dbg !3985
  %.sroa.070.1.insert.insert = or disjoint i24 %.sroa.070.1.insert.shift, %.sroa.070.2.insert.shift, !dbg !3985
  %.sroa.070.2.insert.insert = or disjoint i24 %.sroa.070.1.insert.insert, 1, !dbg !3985
  invoke void @_RINvMs0_NtNtCs2G6gJ0Mq9lu_12regex_syntax3hir8intervalINtB6_11IntervalSetNtB8_15ClassBytesRangeE3newINtNtCskKLDkoKarTP_4core6option6OptionB18_EECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, i24 %.sroa.070.2.insert.insert)
          to label %bb.bi unwind label %.split185.thread, !dbg !3985

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !3986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !3987
  invoke void @_RNvMsf_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_10ClassBytes10difference(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u)
          to label %bb.bk unwind label %bb.bj, !dbg !3988

bb.bj:                                            ; preds = %bb.bl, %bb.bm, %bb.bi
  %.sroa.041.2 = phi i1 [ true, %bb.bl ], [ false, %bb.bm ], [ true, %bb.bi ], !dbg !3862
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #22
          to label %bb.bf unwind label %bb.am, !dbg !3989

bb.bk:                                            ; preds = %bb.bi
  %i.el = load i64, ptr %i.dp, align 8, !dbg !3990, !noundef !212
  %i.em = icmp eq i64 %i.el, 0, !dbg !3991
  br i1 %i.em, label %bb.bl, label %bb.bm, !dbg !3991

bb.bl:                                            ; preds = %bb.bk
  invoke fastcc void @_RNCNvNtCsdq8xsXUia3c_10grep_regex5strip22strip_from_match_ascii0B5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr nonnull %i.ae)
          to label %bb.bn unwind label %bb.bj, !dbg !3992

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !3993
  %i.en = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !3993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !dbg !3994
  store i64 1, ptr %i.t, align 8, !dbg !3993
  invoke fastcc void @_RNvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3Hir5class(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.t)
          to label %bb.bp unwind label %bb.bj, !dbg !3995

bb.bn:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u)
          to label %bb.bo unwind label %.split185.thread, !dbg !3989

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !3989
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w), !dbg !3984
  br label %bb.bg, !dbg !3984

bb.bp:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !3996
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u), !dbg !3989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !3989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !3984
  br label %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3984

bb.bq:                                            ; preds = %.split185.thread, %bb.bf
  %.pn74186 = phi { ptr, i32 } [ %lpad.thr_comm187, %.split185.thread ], [ %i.ek, %bb.bf ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir10ClassBytesECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #22
          to label %common.resume unwind label %bb.am, !dbg !3984

bb.br:                                            ; preds = %bb.p
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn, !dbg !3782

bb.bs:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !3997
  %i.ep = load i64, ptr %i.s, align 8, !dbg !3998, !range !355, !noundef !212 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, -1, !dbg !3998
  %i.er = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !3999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.er, i64 32, i1 false), !dbg !3999
  br i1 %i.eq, label %bb.bt, label %bb.bu, !dbg !4000

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !4001
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !4001
  store i64 -1, ptr %0, align 8, !dbg !4002
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !4003
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef 48, i64 noundef 8) #23, !dbg !4004
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3963

bb.bu:                                            ; preds = %bb.bs
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40, !dbg !4005
  %.sroa.553.0.copyload = load i64, ptr %.sroa.553.0..sroa_idx, align 8, !dbg !4005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !4001
  store i64 %i.ep, ptr %i.q, align 8, !dbg !3779
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !3779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !3779
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.q, i64 40, !dbg !3779
  store i64 %.sroa.553.0.copyload, ptr %.sroa.8.0..sroa_idx10, align 8, !dbg !3779
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !4006, !noalias !3787
  %i.et = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #23, !dbg !4007, !noalias !3787 ; 9 uses
  %i.eu = icmp eq ptr %i.et, null, !dbg !4008
  br i1 %i.eu, label %bb.bv, label %bb.by, !dbg !4009, !prof !365

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #25
          to label %.noexc110 unwind label %bb.bw, !dbg !4010

.noexc110:                                        ; preds = %bb.bv
  unreachable, !dbg !4010

bb.bw:                                            ; preds = %bb.bv
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q) #22
          to label %bb.cn unwind label %bb.bx, !dbg !4011

bb.bx:                                            ; preds = %bb.bw
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4012
  unreachable, !dbg !4012

bb.by:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.et, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !dbg !4013
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef 48, i64 noundef 8) #23, !dbg !4014
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !4003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !4015
  store i64 %.sroa.0134.0.copyload, ptr %i.p, align 8, !dbg !4015
  %.sroa.5.0..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !4015 ; 2 uses
  store ptr %i.et, ptr %.sroa.5.0..sroa_idx136, align 8, !dbg !4015
  %.sroa.10.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !4015 ; 2 uses
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx140, align 8, !dbg !4015
  call void @llvm.experimental.noalias.scope.decl(metadata !3798), !dbg !4016
  call void @llvm.experimental.noalias.scope.decl(metadata !3799), !dbg !4016
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 40, !dbg !4017 ; 3 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !dbg !4017, !noalias !3800, !nonnull !212, !noundef !212 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16, !dbg !4017
  %i.fa = load i64, ptr %i.ez, align 8, !dbg !4017, !range !286, !noalias !3800, !noundef !212
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24, !dbg !4017
  %i.fc = load i64, ptr %i.fb, align 8, !dbg !4017, !noalias !3800
  %i.fd = trunc nuw i64 %i.fa to i1, !dbg !4018
  %i.fe = icmp eq i64 %i.fc, 0
  %or.cond.i = select i1 %i.fd, i1 %i.fe, i1 false, !dbg !4018
  %i.ff = trunc i64 %.sroa.10.0.copyload to i32, !dbg !4019 ; 2 uses
  %i.fg = trunc i64 %.sroa.0134.0.copyload to i32, !dbg !4018 ; 2 uses
  %i.fh = lshr i64 %.sroa.0134.0.copyload, 32, !dbg !4018 ; 2 uses
  %i.fi = trunc nuw i64 %i.fh to i32, !dbg !4018
  br i1 %or.cond.i, label %bb.ca, label %._crit_edge.i, !dbg !4018

._crit_edge.i:                                    ; preds = %bb.ca, %bb.by
  %i.fj = phi i32 [ %.sroa.3.0.i, %bb.ca ], [ %i.fi, %bb.by ] ; 2 uses
  %i.fk = phi i32 [ 1, %bb.ca ], [ %i.fg, %bb.by ] ; 2 uses
  %i.fl = phi i32 [ %..i.i, %bb.ca ], [ %i.ff, %bb.by ], !dbg !4020
  switch i32 %i.fl, label %.thread.i [
    i32 0, label %bb.cb
    i32 1, label %bb.ck
  ], !dbg !4020

bb.bz:                                            ; preds = %.thread.i, %bb.cc
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirEECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef readonly align 8 dereferenceable(8) %.sroa.5.0..sroa_idx136)
          to label %common.resume unwind label %bb.cj, !dbg !4021, !noalias !3798, !inline_history !141

bb.ca:                                            ; preds = %bb.by
  %i.fn = icmp ne i32 %i.ff, 0, !dbg !4022
  %..i.i = zext i1 %i.fn to i32, !dbg !4022       ; 2 uses
  store i32 %..i.i, ptr %.sroa.10.0..sroa_idx140, align 8, !dbg !4023, !alias.scope !3799
  %i.fo = getelementptr inbounds nuw i8, ptr %i.p, i64 4, !dbg !4024
  %i.fp = icmp ne i64 %i.fh, 0, !dbg !4025
  %not..i = icmp eq i32 %i.fg, 0, !dbg !4025
  %narrow.i = or i1 %not..i, %i.fp, !dbg !4025
  %.sroa.3.0.i = zext i1 %narrow.i to i32, !dbg !4025 ; 2 uses
  store i32 1, ptr %i.p, align 8, !dbg !4026, !alias.scope !3799
  store i32 %.sroa.3.0.i, ptr %i.fo, align 4, !dbg !4026, !alias.scope !3799
  br label %._crit_edge.i, !dbg !4027

bb.cb:                                            ; preds = %._crit_edge.i
  %i.fq = trunc nuw i32 %i.fk to i1, !dbg !4028
  %i.fr = icmp eq i32 %i.fj, 0
  %or.cond5.i = select i1 %i.fq, i1 %i.fr, i1 false, !dbg !4028
  br i1 %or.cond5.i, label %bb.cc, label %.thread.i, !dbg !4028

bb.cc:                                            ; preds = %bb.cb
  %i.fs = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_10Properties5empty()
          to label %bb.cd unwind label %bb.bz, !dbg !4029, !noalias !3800

bb.cd:                                            ; preds = %bb.cc
  store i64 2, ptr %i.ad, align 8, !dbg !4030, !alias.scope !3798
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ad, i64 40, !dbg !4030
  store ptr %i.fs, ptr %i.ft, align 8, !dbg !4030, !alias.scope !3798
  invoke void @_RNvXsm_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3HirNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.et)
          to label %bb.cf unwind label %bb.ce, !dbg !4031, !noalias !3800, !inline_history !240

bb.ce:                                            ; preds = %bb.cd
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.et) #22
          to label %.body.i113 unwind label %bb.ch, !dbg !4031, !noalias !3800, !inline_history !240

bb.cf:                                            ; preds = %bb.cd
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7HirKindECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.et)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit.i unwind label %bb.cg, !dbg !4031, !noalias !3800, !inline_history !240

bb.cg:                                            ; preds = %bb.cf
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i113

bb.ch:                                            ; preds = %bb.ce
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4031, !noalias !3800, !inline_history !240
  unreachable, !dbg !4031

.body.i113:                                       ; preds = %bb.cg, %bb.ce
  %.pn.i.i = phi { ptr, i32 } [ %i.fv, %bb.cg ], [ %i.fu, %bb.ce ]
  %.val2.i.i114 = load ptr, ptr %i.ex, align 8, !dbg !4031, !alias.scope !3802, !noalias !3800, !nonnull !212, !noundef !212
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i114, i64 noundef 80, i64 noundef 8) #23, !dbg !4032, !noalias !3800, !inline_history !240
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef 48, i64 noundef 8) #23, !dbg !4033, !noalias !3800
  br label %common.resume, !dbg !4034

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit.i: ; preds = %bb.cf
  %.val.i.i115 = load ptr, ptr %i.ex, align 8, !dbg !4031, !alias.scope !3802, !noalias !3800, !nonnull !212, !noundef !212
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i115, i64 noundef 80, i64 noundef 8) #23, !dbg !4035, !noalias !3800, !inline_history !240
  br label %bb.ci, !dbg !4031

bb.ci:                                            ; preds = %bb.cl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex.exit.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.et, i64 noundef 48, i64 noundef 8) #23, !dbg !4036, !noalias !3800
  br label %_RNvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3Hir10repetition.exit, !dbg !4037

bb.cj:                                            ; preds = %bb.bz
  %i.fx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4038, !noalias !3798
  unreachable, !dbg !4038

bb.ck:                                            ; preds = %._crit_edge.i
  %i.fy = trunc nuw i32 %i.fk to i1, !dbg !4039
  %i.fz = icmp eq i32 %i.fj, 1
  %or.cond8.i = select i1 %i.fy, i1 %i.fz, i1 false, !dbg !4039
  br i1 %or.cond8.i, label %bb.cl, label %.thread.i, !dbg !4039

.thread.i:                                        ; preds = %bb.ck, %bb.cb, %._crit_edge.i
  %i.ga = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_10Properties10repetition(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.cm unwind label %bb.bz, !dbg !4040, !noalias !3798

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !dbg !4041
  br label %bb.ci, !dbg !4037

bb.cm:                                            ; preds = %.thread.i
  %.sroa.4.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !4042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i112, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !4043, !alias.scope !3800
  store i64 6, ptr %i.ad, align 8, !dbg !4042, !alias.scope !3798
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ad, i64 40, !dbg !4042
  store ptr %i.ga, ptr %i.gb, align 8, !dbg !4042, !alias.scope !3798
  br label %_RNvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3Hir10repetition.exit, !dbg !4037

_RNvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_3Hir10repetition.exit: ; preds = %bb.cm, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !4044
  br label %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3782

bb.cn:                                            ; preds = %bb.br, %bb.bw
  %eh.lpad-body80.ph = phi { ptr, i32 } [ %i.eo, %bb.br ], [ %i.ev, %bb.bw ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef 48, i64 noundef 8) #23, !dbg !4045
  br label %common.resume, !dbg !4046

bb.co:                                            ; preds = %bb.q
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz, !dbg !3823

bb.cp:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !4047
  %i.gd = load i64, ptr %i.o, align 8, !dbg !4048, !range !355, !noundef !212 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, -1, !dbg !4048
  %i.gf = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !4049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.614, ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i64 32, i1 false), !dbg !4049
  br i1 %i.ge, label %bb.cq, label %bb.cr, !dbg !4050

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !4051
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.614, i64 32, i1 false), !dbg !4051
  store i64 -1, ptr %0, align 8, !dbg !4052
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614), !dbg !4053
  %i.gh = icmp eq ptr %.sroa.11.0.copyload, null, !dbg !4054
  %i.gi = icmp eq i64 %.sroa.13.0.copyload, 0
  %or.cond.i119 = select i1 %i.gh, i1 true, i1 %i.gi, !dbg !4054
  br i1 %or.cond.i119, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEEECsdq8xsXUia3c_10grep_regex.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, !dbg !4054

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.cq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.copyload, i64 noundef %.sroa.13.0.copyload, i64 noundef 1) #23, !dbg !4055
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEEECsdq8xsXUia3c_10grep_regex.exit, !dbg !4056

bb.cr:                                            ; preds = %bb.cp
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40, !dbg !4057
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8, !dbg !4057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !4051
  store i64 %i.gd, ptr %i.m, align 8, !dbg !3803
  %.sroa.614.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !3803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.614.0..sroa_idx15, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.614, i64 32, i1 false), !dbg !3803
  %.sroa.816.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !3803
  store i64 %.sroa.556.0.copyload, ptr %.sroa.816.0..sroa_idx17, align 8, !dbg !3803
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !dbg !4058, !noalias !3806
  %i.gj = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #23, !dbg !4059, !noalias !3806 ; 3 uses
  %i.gk = icmp eq ptr %i.gj, null, !dbg !4060
  br i1 %i.gk, label %bb.cs, label %bb.cv, !dbg !4061, !prof !365

bb.cs:                                            ; preds = %bb.cr
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #25
          to label %.noexc120 unwind label %bb.ct, !dbg !4062

.noexc120:                                        ; preds = %bb.cs
  unreachable, !dbg !4062

bb.ct:                                            ; preds = %bb.cs
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir3HirECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m) #22
          to label %bb.cz unwind label %bb.cu, !dbg !4063

bb.cu:                                            ; preds = %bb.ct
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4064
  unreachable, !dbg !4064

bb.cv:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !4065
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0142.0.copyload, i64 noundef 48, i64 noundef 8) #23, !dbg !4066
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614), !dbg !4053
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !4067
  store ptr %i.gj, ptr %i.l, align 8, !dbg !4067
  %.sroa.11.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !4067
  store ptr %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx146, align 8, !dbg !4067
  %.sroa.13.0..sroa_idx148 = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !4067
  store <2 x i64> %i.bp, ptr %.sroa.13.0..sroa_idx148, align 8, !dbg !4067
  call void @llvm.experimental.noalias.scope.decl(metadata !3816), !dbg !4068
  call void @llvm.experimental.noalias.scope.decl(metadata !3817), !dbg !4068
  %i.gn = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_10Properties7capture(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.cy unwind label %bb.cw, !dbg !4069, !noalias !3816

bb.cw:                                            ; preds = %bb.cv
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7CaptureECsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l) #22
          to label %common.resume unwind label %bb.cx, !dbg !4070, !noalias !3816

bb.cx:                                            ; preds = %bb.cw
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !4071, !noalias !3816
  unreachable, !dbg !4071

bb.cy:                                            ; preds = %bb.cv
  %.sroa.4.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !4072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i122, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !4073, !alias.scope !3818
  store i64 7, ptr %i.ad, align 8, !dbg !4072, !alias.scope !3816
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ad, i64 40, !dbg !4072
  store ptr %i.gn, ptr %i.gq, align 8, !dbg !4072, !alias.scope !3816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !4074
  br label %_RINvMs3_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB6_3Hir7literalINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3823

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.cq
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0142.0.copyload, i64 noundef 48, i64 noundef 8) #23, !dbg !4075
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsdq8xsXUia3c_10grep_regex.exit, !dbg !3963

bb.cz:                                            ; preds = %bb.co, %bb.ct
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.gc, %bb.co ], [ %i.gl, %bb.ct ]
end_hunk_1
