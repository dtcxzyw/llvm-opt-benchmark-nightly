Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_derive-b7a2b5711ccaa8a0.lance_derive.959214ef50ae52d2-cgu.0?download=true
inline.NumInlined: 1621
inline.NumDeleted: 596
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundNtNtBG_5token4PlusEECscQ9YKgepC2A_12lance_derive:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4path4PathECscQ9YKgepC2A_12lance_derive(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) #27
          to label %common.resume unwind label %bb.h, !inline_history !16

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECscQ9YKgepC2A_12lance_derive.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentEEECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(8) %i.k) #27
          to label %common.resume unwind label %bb.g, !inline_history !15

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !inline_history !15
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !inline_history !16
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics10TraitBoundECscQ9YKgepC2A_12lance_derive.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECscQ9YKgepC2A_12lance_derive.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentEEECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(8) %i.n), !inline_history !15
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundECscQ9YKgepC2A_12lance_derive.exit

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3357)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i8, ptr %i.p, align 8, !range !47, !alias.scope !3358, !noundef !44
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundECscQ9YKgepC2A_12lance_derive.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !3358, !noundef !44 ; 2 uses
  %i.t = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundECscQ9YKgepC2A_12lance_derive.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.j
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !3358, !nonnull !44, !noundef !44
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #26, !noalias !3358
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundECscQ9YKgepC2A_12lance_derive.exit

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14PreciseCaptureECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(48) %i.u), !inline_history !59
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundECscQ9YKgepC2A_12lance_derive.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundECscQ9YKgepC2A_12lance_derive.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.j, %bb.i, %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics10TraitBoundECscQ9YKgepC2A_12lance_derive.exit, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateNtNtBG_5token5CommaEECscQ9YKgepC2A_12lance_derive(ptr noalias noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3369 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !60, !alias.scope !3370, !noundef !44
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3374)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !range !47, !alias.scope !3375, !noundef !44
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics17PredicateLifetimeECscQ9YKgepC2A_12lance_derive.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !3375, !noundef !44 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics17PredicateLifetimeECscQ9YKgepC2A_12lance_derive.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3375, !nonnull !44, !noundef !44
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #26, !noalias !3375
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics17PredicateLifetimeECscQ9YKgepC2A_12lance_derive.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics17PredicateLifetimeECscQ9YKgepC2A_12lance_derive.exit: ; preds = %bb.b, %bb.c, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_8lifetime8LifetimeNtNtBG_5token4PlusEECscQ9YKgepC2A_12lance_derive(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateECscQ9YKgepC2A_12lance_derive.exit

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics13PredicateTypeECscQ9YKgepC2A_12lance_derive(ptr noalias noundef nonnull align 8 dereferenceable(312) %0), !inline_history !61
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateECscQ9YKgepC2A_12lance_derive.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateECscQ9YKgepC2A_12lance_derive.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics17PredicateLifetimeECscQ9YKgepC2A_12lance_derive.exit, %bb.d
  ret void
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core9panicking13panic_displayNtNtCsb2PI9uRnNxu_3syn5error5ErrorECscQ9YKgepC2A_12lance_derive(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #2 !guid !3376 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtCsb2PI9uRnNxu_3syn5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs50gxqRnCXtk_10proc_macro6bridge6client10run_clientNtB2_11TokenStreamINtNtCscI6d9CVNmLh_4core6option6OptionBW_ENCNCINvMsg_B2_INtB2_6ClientNtB6_11TokenStreamB2l_E7expand1NvCscQ9YKgepC2A_12lance_derive19derive_deep_size_ofE00EB2S_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !3782 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [40 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [120 x i8], align 8               ; 5 uses
  %i.l = alloca [120 x i8], align 8               ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [120 x i8], align 8               ; 8 uses
  %i.q = alloca [120 x i8], align 8               ; 11 uses
  %i.r = alloca [32 x i8], align 8                ; 11 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.10.i.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 8 uses
  %.sroa.11.i.i.i.i.i.i.i.i.i = alloca [88 x i8], align 8 ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 10 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 11 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 13 uses
  %i.af = alloca [8 x i8], align 4                ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 11 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 13 uses
  %i.aj = alloca [32 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [240 x i8], align 8              ; 9 uses
  %i.as = alloca [240 x i8], align 8              ; 9 uses
  %i.at = alloca [32 x i8], align 8               ; 14 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 17 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 11 uses
  %i.bb = alloca [32 x i8], align 8               ; 4 uses
  %i.bc = alloca [32 x i8], align 8               ; 17 uses
  %i.bd = alloca [32 x i8], align 8               ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 8 uses
  %i.bf = alloca [32 x i8], align 8               ; 4 uses
  %i.bg = alloca [32 x i8], align 8               ; 8 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [32 x i8], align 8               ; 8 uses
  %i.bj = alloca [24 x i8], align 8               ; 11 uses
  %i.bk = alloca [32 x i8], align 8               ; 10 uses
  %i.bl = alloca [24 x i8], align 8               ; 4 uses
  %i.bm = alloca [8 x i8], align 8                ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [8 x i8], align 8                ; 5 uses
  %i.bp = alloca [32 x i8], align 8               ; 10 uses
  %i.bq = alloca [120 x i8], align 8              ; 9 uses
  %i.br = alloca [88 x i8], align 8               ; 11 uses
  %i.bs = alloca [32 x i8], align 8               ; 4 uses
  %i.bt = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.13.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 9 uses
  %.sroa.14.i.i.i.i.i.i.i.i = alloca [208 x i8], align 8 ; 5 uses
  %i.bu = alloca [240 x i8], align 8              ; 15 uses
  %i.bv = alloca [8 x i8], align 8                ; 5 uses
  %i.bw = alloca [40 x i8], align 8               ; 4 uses
  %i.bx = alloca [80 x i8], align 8               ; 9 uses
  %i.by = alloca [40 x i8], align 8               ; 4 uses
  %i.bz = alloca [40 x i8], align 8               ; 5 uses
  %i.ca = alloca [40 x i8], align 8               ; 4 uses
  %i.cb = alloca [40 x i8], align 8               ; 5 uses
  %i.cc = alloca [40 x i8], align 8               ; 4 uses
  %i.cd = alloca [40 x i8], align 8               ; 5 uses
  %i.ce = alloca [40 x i8], align 8               ; 4 uses
  %i.cf = alloca [40 x i8], align 8               ; 5 uses
  %i.cg = alloca [40 x i8], align 8               ; 4 uses
  %i.ch = alloca [40 x i8], align 8               ; 5 uses
  %i.ci = alloca [40 x i8], align 8               ; 4 uses
  %i.cj = alloca [40 x i8], align 8               ; 5 uses
  %i.ck = alloca [24 x i8], align 8               ; 6 uses
  %i.cl = alloca [40 x i8], align 8               ; 78 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cn = load <2 x ptr>, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cp = load i8, ptr %i.co, align 8, !range !3783, !noundef !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  %i.cq = trunc nuw i8 %i.cp to i1
  invoke void @_RNvNtNtCs50gxqRnCXtk_10proc_macro6bridge6client24maybe_install_panic_hook(i1 noundef zeroext %i.cq)
          to label %.noexc unwind label %bb.lg, !noalias !3784

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvMs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6symbolNtB5_6Symbol14invalidate_all()
          to label %.noexc44 unwind label %bb.lg, !noalias !3784

.noexc44:                                         ; preds = %.noexc
  %i.cr = load ptr, ptr %i.cl, align 8, !noalias !3784, !noundef !44 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 14 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !3784, !noundef !44 ; 5 uses
  %i.cu = icmp ugt i64 %i.ct, 3
  br i1 %i.cu, label %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i, label %.invoke280, !prof !3785

_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i: ; preds = %.noexc44
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cr) ]
  %.val.i.i.i.i.i.i.i.i = load i32, ptr %i.cr, align 1, !noalias !3786
  %2 = freeze i32 %.val.i.i.i.i.i.i.i.i           ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %.not.i.i.i.i.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.invoke, label %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i, !prof !83

_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i: ; preds = %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i
  %i.cw = add i64 %i.ct, -4                       ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, 3
  br i1 %i.cx, label %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i2.i.i.i.i.i, label %.invoke280, !prof !3785

_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i2.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i
  %.val.i.i.i3.i.i.i.i.i = load i32, ptr %i.cv, align 1, !noalias !3787
  %3 = freeze i32 %.val.i.i.i3.i.i.i.i.i          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.not.i.i4.i.i.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i4.i.i.i.i.i, label %.invoke, label %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit5.i.i.i.i.i, !prof !83

_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit5.i.i.i.i.i: ; preds = %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i2.i.i.i.i.i
  %i.cz = add i64 %i.ct, -8                       ; 2 uses
  %i.da = icmp ugt i64 %i.cz, 3
  br i1 %i.da, label %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i6.i.i.i.i.i, label %.invoke280, !prof !3785

_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i6.i.i.i.i.i: ; preds = %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit5.i.i.i.i.i
  %.val.i.i.i7.i.i.i.i.i = load i32, ptr %i.cy, align 1, !noalias !3788 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.not.i.i8.i.i.i.i.i = icmp eq i32 %.val.i.i.i7.i.i.i.i.i, 0
  br i1 %.not.i.i8.i.i.i.i.i, label %.invoke, label %_RNvXs15_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i, !prof !83

_RNvXs15_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i: ; preds = %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i6.i.i.i.i.i
  %i.dc = add i64 %i.ct, -12                      ; 2 uses
  %i.dd = icmp ugt i64 %i.dc, 3
  br i1 %i.dd, label %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i, label %.invoke280, !prof !3785

.invoke280:                                       ; preds = %_RNvXs15_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i, %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit5.i.i.i.i.i, %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i, %.noexc44
  %i.de = phi i64 [ %i.cz, %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit5.i.i.i.i.i ], [ %i.cw, %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_4SpanINtNtB7_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i ], [ %i.ct, %.noexc44 ], [ %i.dc, %_RNvXs15_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 4, i64 noundef %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #31
          to label %.cont281 unwind label %bb.lg, !noalias !3789

.cont281:                                         ; preds = %.invoke280
  unreachable

_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i: ; preds = %_RNvXs15_NtCs50gxqRnCXtk_10proc_macro6bridgeINtB6_11ExpnGlobalsNtNtB6_6client4SpanEINtNtB6_3rpc6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.db, align 1, !noalias !3789 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.val.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.invoke, label %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB16_11TokenStreamEINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i, !prof !83

.invoke:                                          ; preds = %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i, %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i6.i.i.i.i.i, %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i2.i.i.i.i.i, %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #31
          to label %.cont unwind label %bb.lg, !noalias !3790

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB16_11TokenStreamEINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i: ; preds = %_RNvXsk_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcmINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !3784
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.cl, align 8, !noalias !3784
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false), !noalias !3784
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.67.0..sroa_idx.i.i.i, align 8, !noalias !3784
  %.sroa.78.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 5 uses
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !noalias !3784
  store i64 0, ptr %i.bx, align 8, !noalias !3784
  %i.df = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store <2 x ptr> %i.cn, ptr %i.df, align 8, !noalias !3784
  %.sroa.612.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %4 = zext i32 %2 to i64
  %5 = zext i32 %3 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or disjoint i64 %6, %4
  store i64 %7, ptr %.sroa.612.0..sroa_idx.i.i.i, align 8, !noalias !3784
  %.sroa.612.sroa.5.0..sroa.612.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  store i32 %.val.i.i.i7.i.i.i.i.i, ptr %.sroa.612.sroa.5.0..sroa.612.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !3784
  %i.dg = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCs50gxqRnCXtk_10proc_macro6bridge6client5state12BRIDGE_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !3784, !noundef !44
  store ptr %i.bx, ptr %i.dg, align 8, !noalias !3784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !3784
  store ptr %i.dh, ptr %i.bv, align 8, !noalias !3784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !3784
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3784
  invoke void @_RNvXs1_Cs7xemmV0rX3c_11proc_macro2NtB5_11TokenStreamINtNtCscI6d9CVNmLh_4core7convert4FromNtCs50gxqRnCXtk_10proc_macro11TokenStreamE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.av, i32 noundef range(i32 1, 0) %.val.i.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.kt, !noalias !3791

.noexc.i.i.i.i:                                   ; preds = %_RNvXs7_NtNtCs50gxqRnCXtk_10proc_macro6bridge3rpcTINtB7_11ExpnGlobalsNtNtB7_6client4SpanENtB16_11TokenStreamEINtB5_6DecodeuE6decodeCscQ9YKgepC2A_12lance_derive.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.av, i64 32, i1 false), !noalias !3793
  %i.di = invoke { ptr, i64 } @_RNvMNtCsb2PI9uRnNxu_3syn6bufferNtB2_11TokenBuffer4new2(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ao)
          to label %.noexc3.i.i.i.i unwind label %bb.kt, !noalias !3792 ; 2 uses

.noexc3.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3792
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 10 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1      ; 12 uses
  store ptr %i.dj, ptr %i.au, align 8, !noalias !3792
  %i.dl = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !noalias !3792
  invoke void @_RNvNtCsb2PI9uRnNxu_3syn5parse22tokens_to_parse_buffer(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.au)
          to label %bb.c unwind label %bb.b, !noalias !3792

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.p, %bb.o, %bb.n, %bb.d, %bb.b
  %.pn8.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i.i.i, %bb.d ], [ %i.ea, %bb.n ], [ %i.dm, %bb.b ], [ %i.ea, %bb.p ], [ %i.ea, %bb.o ], [ %i.ez, %bb.ad ], [ %i.ez, %bb.ac ], [ %i.ez, %bb.ab ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6buffer11TokenBufferECscQ9YKgepC2A_12lance_derive(ptr %i.dj, i64 %i.dk) #27
          to label %.body.i.i.i.i unwind label %bb.ai, !noalias !3792

bb.b:                                             ; preds = %bb.ag, %bb.s, %.noexc3.i.i.i.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.noexc3.i.i.i.i
  invoke void @_RNvXNtNtCsb2PI9uRnNxu_3syn6derive7parsingNtB4_11DeriveInputNtNtB6_5parse5Parse5parse(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.ar, ptr noundef nonnull align 8 %i.at)
          to label %_RNvYNvYNtNtCsb2PI9uRnNxu_3syn6derive11DeriveInputNtNtB9_5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtBN_11ParseBufferEE9call_onceCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.e, !noalias !3792

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.dn, %bb.e ], [ %i.dr, %bb.g ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5parse11ParseBufferECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(32) %i.at) #27
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.ai, !noalias !3792

bb.e:                                             ; preds = %bb.z, %bb.u, %bb.c
  %i.dn = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.d

_RNvYNvYNtNtCsb2PI9uRnNxu_3syn6derive11DeriveInputNtNtB9_5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtBN_11ParseBufferEE9call_onceCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.do = load i64, ptr %i.ar, align 8, !range !3794, !alias.scope !3795, !noalias !3792, !noundef !44 ; 3 uses
  %i.dp = icmp eq i64 %i.do, -1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  br i1 %i.dp, label %bb.aj, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYNtNtCsb2PI9uRnNxu_3syn6derive11DeriveInputNtNtB9_5parse5Parse5parseINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRNtBN_11ParseBufferEE9call_onceCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0..sroa_idx30.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6.0..sroa_idx30.i.i.i.i.i.i.i.i.i.i, i64 208, i1 false), !noalias !3792
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !noalias !3792
  store i64 %i.do, ptr %i.as, align 8, !noalias !3792
  invoke void @_RNvMs9_NtCsb2PI9uRnNxu_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noundef nonnull align 8 %i.at)
          to label %bb.h unwind label %bb.g, !noalias !3792

bb.g:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.f
  %i.dr = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6derive11DeriveInputECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(240) %i.as) #27
          to label %bb.d unwind label %bb.ai, !noalias !3792

bb.h:                                             ; preds = %bb.f
  %i.ds = load i64, ptr %i.aq, align 8, !range !50, !alias.scope !3796, !noalias !3792, !noundef !44 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.dt = invoke { ptr, ptr } @_RNvMs9_NtCsb2PI9uRnNxu_3syn5parseNtB5_11ParseBuffer6cursor(ptr noundef nonnull align 8 %i.at)
          to label %bb.j unwind label %bb.g, !noalias !3792 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.du = extractvalue { ptr, ptr } %i.dt, 0
  %i.dv = extractvalue { ptr, ptr } %i.dt, 1
  %i.dw = invoke { i32, i8 } @_RNvNtCsb2PI9uRnNxu_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef %i.du, ptr noundef %i.dv)
          to label %bb.k unwind label %bb.g, !noalias !3792 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.dx = extractvalue { i32, i8 } %i.dw, 1       ; 2 uses
  %.not6.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dx, -1
  br i1 %.not6.not.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = extractvalue { i32, i8 } %i.dw, 0
  invoke void @_RNvNtCsb2PI9uRnNxu_3syn5parse20err_unexpected_token(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, i32 noundef %i.dy, i8 noundef %i.dx)
          to label %bb.u unwind label %bb.g, !noalias !3792

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.k
  %.sroa.9.0.copyload121.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !3797
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !noalias !3784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.14.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.6.0..sroa_idx30.i.i.i.i.i.i.i.i.i.i, i64 208, i1 false), !noalias !3784
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %.thread.i.i.i.i.i.i.i.i.i.i
  %.sroa.9.2.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.9.0.copyload121.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.9.8.copyload122.i.i.i.i.i.i.i.i, %bb.u ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i.i.i.i = phi i64 [ %i.do, %.thread.i.i.i.i.i.i.i.i.i.i ], [ -1, %bb.u ] ; 2 uses
  invoke void @_RNvXNtCsb2PI9uRnNxu_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %bb.q unwind label %bb.n, !noalias !3792

bb.n:                                             ; preds = %bb.m
  %i.ea = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3798)
  call void @llvm.experimental.noalias.scope.decl(metadata !3799)
  call void @llvm.experimental.noalias.scope.decl(metadata !3800)
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !3801, !noalias !3792, !noundef !44 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.body.i.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ee = load i64, ptr %i.ec, align 8, !noalias !3802, !noundef !44
  %i.ef = add i64 %i.ee, -1                       ; 2 uses
  store i64 %i.ef, ptr %i.ec, align 8, !noalias !3802
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.p, label %.body.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eb)
          to label %.body.i.i.i.i.i.i.i.i.i.i unwind label %bb.t, !noalias !3792

bb.q:                                             ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3803)
  call void @llvm.experimental.noalias.scope.decl(metadata !3804)
  call void @llvm.experimental.noalias.scope.decl(metadata !3805)
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !3806, !noalias !3792, !noundef !44 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5parse11ParseBufferECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = load i64, ptr %i.ei, align 8, !noalias !3807, !noundef !44
  %i.el = add i64 %i.ek, -1                       ; 2 uses
  store i64 %i.el, ptr %i.ei, align 8, !noalias !3807
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5parse11ParseBufferECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5parse11ParseBufferECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.b, !noalias !3792

bb.t:                                             ; preds = %bb.p
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #28, !noalias !3792
  unreachable

bb.u:                                             ; preds = %bb.l
  %.sroa.9.8.copyload122.i.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !3797
  %.sroa.13.8..sroa_idx125.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.8..sroa_idx125.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !3797
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6derive11DeriveInputECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(240) %i.as)
          to label %bb.m unwind label %bb.e, !noalias !3792

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5parse11ParseBufferECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dj) ]
  %cond = icmp eq i64 %i.dk, 0
  br i1 %cond, label %_RNvYNvYNtNtCsb2PI9uRnNxu_3syn6derive11DeriveInputNtNtB9_5parse5Parse5parseNtBN_6Parser5parseCscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.eo = icmp eq i64 %i.eq, %i.dk
  br i1 %i.eo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6buffer11TokenBufferECscQ9YKgepC2A_12lance_derive.exit.sink.split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5parse11ParseBufferECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i, %bb.v
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i282 = phi i64 [ %i.eq, %bb.v ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5parse11ParseBufferECscQ9YKgepC2A_12lance_derive.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i282
  %i.eq = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i282, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6buffer5EntryECscQ9YKgepC2A_12lance_derive(ptr noalias noundef align 8 dereferenceable(32) %i.ep)
          to label %bb.v unwind label %bb.x, !noalias !3792

bb.w:                                             ; preds = %.lr.ph284
  %i.er = add nuw nsw i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i283, 1 ; 2 uses
  %i.es = icmp eq i64 %i.er, %i.dk
  br i1 %i.es, label %common.resume.sink.split.i.i.i.i.i.i.i.i.i.i, label %.lr.ph284

end_hunk_0
