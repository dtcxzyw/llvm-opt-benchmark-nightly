Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvMNtCskXtk6F4WjxZ_4just17execution_contextNtB3_16ExecutionContext7tempdirNtNtB5_10dependency10DependencyEB5_:bb.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit20: ; preds = %bb.v, %bb.u
  %i.bg = icmp eq i64 %i.aq, 0
  br i1 %i.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit23, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit20
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !373
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit23

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit23: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit20, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.x

bb.x:                                             ; preds = %_RNCINvMNtCskXtk6F4WjxZ_4just17execution_contextNtB5_16ExecutionContext7tempdirNtNtB7_10dependency10DependencyEs_0B7_.exit, %bb.ag, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.body.thread:                                     ; preds = %bb.p, %.body.thread73
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.ax, %.body.thread73 ], [ %i.bc, %bb.p ] ; 2 uses
  %.val.i.i24 = load i64, ptr %i.d, align 8       ; 2 uses
  %i.bh = icmp eq i64 %.val.i.i24, 0
  br i1 %i.bh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit26, label %bb.y

bb.y:                                             ; preds = %.body.thread
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i13, i64 noundef %.val.i.i24, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !374
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit26

common.resume:                                    ; preds = %bb.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit26, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit26 ], [ %.pn, %bb.i ], [ %i.cd, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

bb.z:                                             ; preds = %bb.d
  %i.bi = load ptr, ptr %i.h, align 8, !nonnull !28, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bi, ptr %i.a, align 8, !noalias !376
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !378, !noalias !379, !nonnull !28, !noundef !28 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !378, !noalias !379, !noundef !28 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !378, !noalias !379, !noundef !28 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !378, !noalias !379, !noundef !28 ; 2 uses
  %i.br = add i64 %i.bq, %i.bo                    ; 5 uses
  %i.bs = icmp ugt i64 %i.bo, %i.br
  %i.bt = icmp ugt i64 %i.br, %i.bm
  %or.cond.i.i.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, label %bb.aa, !prof !31

bb.aa:                                            ; preds = %bb.z
  %i.bu = icmp eq i64 %i.bo, %i.bm
  br i1 %i.bu, label %_RNCINvMNtCskXtk6F4WjxZ_4just17execution_contextNtB5_16ExecutionContext7tempdirNtNtB7_10dependency10DependencyEs_0B7_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = icmp eq i64 %i.bo, 0
  br i1 %i.bv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.bw = icmp eq i64 %i.br, %i.bm
  br i1 %i.bw, label %_RNCINvMNtCskXtk6F4WjxZ_4just17execution_contextNtB5_16ExecutionContext7tempdirNtNtB7_10dependency10DependencyEs_0B7_.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  %i.by = load i8, ptr %i.bx, align 1, !alias.scope !380, !noalias !381, !noundef !28
  %i.bz = icmp sgt i8 %i.by, -65
  br i1 %i.bz, label %bb.ac, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i: ; preds = %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.br
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !380, !noalias !381, !noundef !28
  %i.cc = icmp sgt i8 %i.cb, -65
  br i1 %i.cc, label %_RNCINvMNtCskXtk6F4WjxZ_4just17execution_contextNtB5_16ExecutionContext7tempdirNtNtB7_10dependency10DependencyEs_0B7_.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i, %bb.ad, %bb.z
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i64 noundef %i.bo, i64 noundef %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc.i27 unwind label %bb.ae, !noalias !376

.noexc.i27:                                       ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i
  unreachable

bb.ae:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #72
          to label %common.resume unwind label %bb.af, !noalias !376

bb.af:                                            ; preds = %bb.ae
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !376
  unreachable

_RNCINvMNtCskXtk6F4WjxZ_4just17execution_contextNtB5_16ExecutionContext7tempdirNtNtB7_10dependency10DependencyEs_0B7_.exit: ; preds = %bb.aa, %bb.ac, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 87, ptr %0, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bq, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %.sroa.668.0..sroa_idx, align 8
  br label %bb.x

bb.ag:                                            ; preds = %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB3_16InvocationParser14resolve_recipeReEB5_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr nofree readonly captures(address, read_provenance) %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.16.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 5 uses
  store i64 0, ptr %i.k, align 8
  %.idx = shl nuw nsw i64 %2, 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

.thread41.loopexit:                               ; preds = %bb.af
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread36

.thread41.loopexit.split-lp:                      ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, %bb.bd, %bb.ah, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread36

._crit_edge:                                      ; preds = %bb.ae, %bb.a
  %.sroa.011.0.lcssa = phi ptr [ %.16.val, %bb.a ], [ %.sroa.011.1, %bb.ae ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa, i64 672
  %i.o = load ptr, ptr %i.n, align 8, !noundef !28 ; 8 uses
  %.not60 = icmp eq ptr %i.o, null
  br i1 %.not60, label %bb.k, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %.val.i = load ptr, ptr %i.q, align 8, !alias.scope !468, !noalias !469, !nonnull !28, !noundef !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %.val1.i = load i64, ptr %i.r, align 8, !alias.scope !468, !noalias !469, !noundef !28 ; 3 uses
  %i.s = icmp eq i64 %.val1.i, 0
  br i1 %i.s, label %bb.m, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.aj, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi i64 [ %i.ai, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i ], [ 0, %bb.b ]
  %i.t = getelementptr inbounds nuw [448 x i8], ptr %.val.i, i64 %.sroa.04.0.i.i.i.i ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load i64, ptr %i.u, align 8, !range !39, !alias.scope !470, !noalias !471, !noundef !28
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.v, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 441
  %i.x = load i8, ptr %i.w, align 1, !range !40, !alias.scope !470, !noalias !471
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 443
  %i.aa = load i8, ptr %i.z, align 1, !range !38, !alias.scope !470, !noalias !471, !noundef !28
  %.not3.i.i.i.i.i.i.i = icmp eq i8 %i.aa, 2
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.d, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !41, !alias.scope !470, !noalias !471, !noundef !28
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !470, !noalias !471
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = zext i1 %i.ag to i64
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %.preheader.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %.preheader.i.i.i ], [ 0, %bb.d ], [ %i.ah, %bb.e ]
  %i.ai = add i64 %.sroa.0.1.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i ; 4 uses
  %i.aj = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %.val1.i
  br i1 %i.ak, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i, label %.preheader.i.i.i

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i
  %i.al = icmp ule i64 %i.ai, %.val1.i
  call void @llvm.assume(i1 %i.al)
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !473, !noalias !469, !nonnull !28, !noundef !28 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 224
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !473, !noalias !469, !noundef !28 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !473, !noalias !469, !noundef !28 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !473, !noalias !469, !noundef !28 ; 2 uses
  %i.au = add i64 %i.at, %i.ar                    ; 5 uses
  %i.av = icmp ugt i64 %i.ar, %i.au
  %i.aw = icmp ugt i64 %i.au, %i.ap
  %or.cond.i.i.i = or i1 %i.av, %i.aw
  br i1 %or.cond.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.ax = icmp eq i64 %i.ar, %i.ap
  br i1 %i.ax, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = icmp eq i64 %i.ar, 0
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.az = icmp eq i64 %i.au, %i.ap
  br i1 %i.az, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !474, !noalias !475, !noundef !28
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %bb.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i: ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.au
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !474, !noalias !475, !noundef !28
  %i.bf = icmp sgt i8 %i.be, -65
  br i1 %i.bf, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i, %bb.j, %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.ap, i64 noundef %i.ar, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc unwind label %.thread41.loopexit.split-lp

.noexc:                                           ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i
  unreachable

bb.k:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa, i64 840
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !28
  %i.bi = icmp eq i64 %i.bh, 0
  %spec.select = select i1 %i.bi, i64 67, i64 66
  br label %bb.n

bb.l:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i, %bb.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  store i64 32, ptr %0, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.at, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ai, ptr %.sroa.631.0..sroa_idx, align 8
  br label %bb.bl

bb.m:                                             ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i, %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.bl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.sink = phi i64 [ -1, %bb.m ], [ %spec.select, %bb.k ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %.val.i84 = load ptr, ptr %i.j, align 8, !alias.scope !476, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i85 = load i64, ptr %i.k, align 8, !alias.scope !476, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.bm = icmp eq i64 %.val1.i85, 0
  br i1 %i.bm, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.bo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.val.i84, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.bo = add nuw nsw i64 %.sroa.0.010.i.i.i, 1   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !478)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %.val.i.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !480, !noalias !476 ; 2 uses
  %i.bp = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.bp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !480, !noalias !476, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !481
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.o, %.lr.ph.i.i.i
  %i.br = icmp eq i64 %i.bo, %.val1.i85
  br i1 %i.br, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.n
  %.val2.i = load i64, ptr %i.i, align 8, !alias.scope !476 ; 2 uses
  %i.bs = icmp eq i64 %.val2.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit144, label %bb.p

bb.p:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i
  %i.bt = mul nuw i64 %.val2.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i84, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !476
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit144

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just.exit144: ; preds = %bb.p, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i, %bb.bj, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit134, %_RNvXs0_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtNtB7_7set_val9SetValZSTENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB1b_.exit, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i142, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.ae
  %.sroa.011.0137 = phi ptr [ %.sroa.011.1, %bb.ae ], [ %.16.val, %bb.a ] ; 13 uses
  %.sroa.0.0136 = phi ptr [ %i.bu, %bb.ae ], [ %1, %bb.a ] ; 3 uses
  %.sroa.9.0135 = phi i64 [ %i.bv, %bb.ae ], [ 0, %bb.a ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0136, i64 16 ; 2 uses
  %i.bv = add i64 %.sroa.9.0135, 1                ; 2 uses
  %.val82 = load ptr, ptr %.sroa.0.0136, align 8, !nonnull !28, !noundef !28 ; 9 uses
  %i.bw = getelementptr i8, ptr %.sroa.0.0136, i64 8
  %.val83 = load i64, ptr %i.bw, align 8, !noundef !28 ; 20 uses
  %.not.i86 = icmp slt i64 %.val83, 0
  br i1 %.not.i86, label %bb.s, label %bb.q, !prof !42

bb.q:                                             ; preds = %.lr.ph
  %i.bx = icmp eq i64 %.val83, 0                  ; 2 uses
  br i1 %i.bx, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread60, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !482
  %i.by = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.val83, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !482 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.4.0.ph = phi i64 [ 1, %bb.r ], [ 0, %.lr.ph ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %.val83) #71
          to label %bb.ai unwind label %.thread41.loopexit.split-lp

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread60: ; preds = %bb.q, %bb.w
  %i.ca = phi ptr [ %i.by, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.q ] ; 2 uses
  %i.cb = load i64, ptr %i.k, align 8, !alias.scope !483, !noalias !484, !noundef !28 ; 3 uses
  %i.cc = load i64, ptr %i.i, align 8, !range !43, !alias.scope !483, !noalias !484, !noundef !28
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.t, label %bb.x

bb.t:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread60
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaKJjC64KgbL_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.x unwind label %bb.u, !noalias !484

bb.u:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bx, label %.thread36, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %.val83, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !485
  br label %.thread36

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull align 1 %.val82, i64 %.val83, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread60

bb.x:                                             ; preds = %bb.t, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread60
  %i.cf = load ptr, ptr %i.j, align 8, !alias.scope !483, !noalias !484, !nonnull !28, !noundef !28
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  store i64 %.val83, ptr %i.cg, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ca, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.72.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 %.val83, ptr %.sroa.72.0..sroa_idx, align 8
  %i.ch = add i64 %i.cb, 1
  store i64 %i.ch, ptr %i.k, align 8, !alias.scope !483, !noalias !484
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.011.0137, i64 776
  %.val76 = load ptr, ptr %i.ci, align 8, !noundef !28 ; 2 uses
  %.not.i87 = icmp eq ptr %.val76, null
  br i1 %.not.i87, label %.loopexit76, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.x
  %i.cj = getelementptr i8, ptr %.sroa.011.0137, i64 784
  %.val77 = load i64, ptr %i.cj, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.aa
  %.sroa.3.0.i.i = phi i64 [ %i.dd, %bb.aa ], [ %.val77, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.dc, %bb.aa ], [ %.val76, %.preheader.i.preheader ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 10130
end_hunk_0
begin_hunk_1_@_RNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB2_16InvocationParser16parse_invocation:bb.a
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val241 = load ptr, ptr %i.no, align 8, !nonnull !28, !align !35, !noundef !28
  call fastcc void @_RINvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB3_16InvocationParser14resolve_recipeReEB5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bb, ptr nonnull %.val241, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bv, i64 noundef %i.nn)
  %i.np = load i64, ptr %i.bb, align 8, !range !116, !noundef !28 ; 2 uses
  %.not218 = icmp eq i64 %i.np, -1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8            ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.nt = load i64, ptr %i.ns, align 8            ; 2 uses
  br i1 %.not218, label %bb.bc, label %bb.bb

.loopexit838:                                     ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.5.0.i.i.i = phi i64 [ %i.cc, %bb.e ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ]
  %i.nu = icmp ult i64 %.sroa.5.0.i.i.i, %i.by
  tail call void @llvm.assume(i1 %i.nu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.nv = add i64 %i.bi, 1                        ; 2 uses
  %i.nw = icmp eq i64 %i.nv, %i.bg
  br i1 %i.nw, label %bb.be, label %bb.bd

bb.bb:                                            ; preds = %.loopexit839
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6163.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6159.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 %i.np, ptr %0, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nr, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.nt, ptr %.sroa.5162.0..sroa_idx, align 8
  br label %bb.mv

bb.bc:                                            ; preds = %.loopexit839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.nx = add i64 %i.nt, %i.bi
  store i64 %i.nx, ptr %i.bh, align 8
  br label %bb.k

bb.bd:                                            ; preds = %.loopexit838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %i.bw, ptr %i.bc, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.by, ptr %i.ny, align 8
  call void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bc, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.bf

bb.be:                                            ; preds = %.loopexit838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !36852
  %.not.i.i = icmp samesign ult i64 %i.by, 2
  br i1 %.not.i.i, label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.be
  %i.nz = getelementptr i8, ptr %i.bw, i64 %i.by
  %i.oa = getelementptr i8, ptr %i.nz, i64 -2
  %i.ob = load i16, ptr %i.oa, align 1
  %i.oc = icmp ne i16 14906, %i.ob
  %i.od = zext i1 %i.oc to i32
  %bcmp.i.i.fr.i = freeze i32 %i.od
  %i.oe = icmp eq i32 %bcmp.i.i.fr.i, 0
  %i.of = add nsw i64 %i.by, -2
  %spec.select.i = select i1 %i.oe, i64 %i.of, i64 %i.by
  br label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit

_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit: ; preds = %bb.be, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i
  %i.og = phi i64 [ 1, %bb.be ], [ %spec.select.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i ]
  store ptr %i.bw, ptr %i.ak, align 8, !noalias !36852
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.og, ptr %i.oh, align 8, !noalias !36852
  call void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ak, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !36852
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit, %bb.bd
  %i.oi = load i64, ptr %i.bd, align 8, !range !37, !noundef !28 ; 6 uses
  %i.oj = icmp eq i64 %i.oi, -1
  br i1 %i.oj, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i262 = icmp slt i64 %i.by, 0
  br i1 %.not.i.i262, label %bb.bi, label %bb.bh, !prof !42

bb.bh:                                            ; preds = %bb.bg
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36853
  %i.ok = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36853 ; 3 uses
  %i.ol = icmp eq ptr %i.ok, null
  br i1 %i.ol, label %bb.bi, label %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocation0B6_.exit

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.bh ], [ 0, %bb.bg ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.by) #71, !noalias !36854
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocation0B6_.exit: ; preds = %bb.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ok, ptr nonnull readonly align 1 %i.bw, i64 %i.by, i1 false), !noalias !36855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 92, ptr %0, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.by, ptr %.sroa.4138.0..sroa_idx, align 8
  %.sroa.4138.sroa.4.0..sroa.4138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ok, ptr %.sroa.4138.sroa.4.0..sroa.4138.0..sroa_idx.sroa_idx, align 8
  %.sroa.4138.sroa.5.0..sroa.4138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.by, ptr %.sroa.4138.sroa.5.0..sroa.4138.0..sroa_idx.sroa_idx, align 8
  %.sroa.4138.sroa.6.0..sroa.4138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4138.sroa.6.0..sroa.4138.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_.exit

bb.bj:                                            ; preds = %bb.bf
  %.sroa.4635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4635.0.copyload = load ptr, ptr %.sroa.4635.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.5636.0.copyload = load i64, ptr %.sroa.5636.0..sroa_idx, align 8 ; 9 uses
  %.sroa.6637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.6637.0.copyload = load ptr, ptr %.sroa.6637.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 %i.oi, ptr %i.be, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.4635.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.5636.0.copyload, ptr %.sroa.5651.0..sroa_idx, align 8
  %.sroa.6652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %.sroa.6637.0.copyload, ptr %.sroa.6652.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.sroa.9)
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val243 = load ptr, ptr %i.om, align 8, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !36857
  store i64 0, ptr %i.aj, align 8, !noalias !36857
  %i.on = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.on, align 8, !noalias !36857
  %i.oo = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 6 uses
  store i64 0, ptr %i.oo, align 8, !noalias !36857
  %.idx.i = mul nuw nsw i64 %.sroa.5636.0.copyload, 24
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.4635.0.copyload, i64 %.idx.i
  %i.oq = icmp eq i64 %.sroa.5636.0.copyload, 0   ; 3 uses
  br i1 %i.oq, label %._crit_edge.i, label %.lr.ph.i

.thread51.loopexit.i:                             ; preds = %bb.cn
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread47.i

.thread51.loopexit.split-lp.i:                    ; preds = %bb.dr, %bb.dp, %bb.cx, %bb.cp, %bb.ca, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread47.i

._crit_edge.i:                                    ; preds = %bb.cm, %bb.bj
  %.sroa.011.0.lcssa.i = phi ptr [ %.val243, %bb.bj ], [ %.sroa.011.1.i, %bb.cm ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i, i64 672
  %i.os = load ptr, ptr %i.or, align 8, !noalias !36857, !noundef !28 ; 8 uses
  %.not60.i = icmp eq ptr %i.os, null
  br i1 %.not60.i, label %bb.bt, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !36858)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 96
  %.val.i.i = load ptr, ptr %i.ou, align 8, !alias.scope !36858, !noalias !36859, !nonnull !28, !noundef !28
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 104
  %.val1.i.i = load i64, ptr %i.ov, align 8, !alias.scope !36858, !noalias !36859, !noundef !28 ; 3 uses
  %i.ow = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ow, label %bb.bv, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.bk, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.pn, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i ], [ 0, %bb.bk ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.pm, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i ], [ 0, %bb.bk ]
  %i.ox = getelementptr inbounds nuw [448 x i8], ptr %.val.i.i, i64 %.sroa.04.0.i.i.i.i.i ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 104
  %i.oz = load i64, ptr %i.oy, align 8, !range !39, !alias.scope !36860, !noalias !36861, !noundef !28
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.oz, -1
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 441
  %i.pb = load i8, ptr %i.pa, align 1, !range !40, !alias.scope !36860, !noalias !36861
  %i.pc = trunc nuw i8 %i.pb to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.pc
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.preheader.i.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ox, i64 443
  %i.pe = load i8, ptr %i.pd, align 1, !range !38, !alias.scope !36860, !noalias !36861, !noundef !28
  %.not3.i.i.i.i.i.i.i.i = icmp eq i8 %i.pe, 2
  br i1 %.not3.i.i.i.i.i.i.i.i, label %bb.bm, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !range !41, !alias.scope !36860, !noalias !36861, !noundef !28
  %i.ph = trunc nuw i64 %i.pg to i1
  br i1 %i.ph, label %bb.bn, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !36860, !noalias !36861
  %i.pk = icmp ne i64 %i.pj, 0
  %i.pl = zext i1 %i.pk to i64
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.bl ], [ 0, %.preheader.i.i.i.i ], [ 0, %bb.bm ], [ %i.pl, %bb.bn ]
  %i.pm = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i ; 4 uses
  %i.pn = add nuw i64 %.sroa.04.0.i.i.i.i.i, 1    ; 2 uses
  %i.po = icmp eq i64 %i.pn, %.val1.i.i
  br i1 %i.po, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i, label %.preheader.i.i.i.i

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i
  %i.pp = icmp ule i64 %i.pm, %.val1.i.i
  call void @llvm.assume(i1 %i.pp)
  %.not.i.i267 = icmp eq i64 %i.pm, 0
  br i1 %.not.i.i267, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36862)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.os, i64 216
  %i.pr = load ptr, ptr %i.pq, align 8, !alias.scope !36863, !noalias !36859, !nonnull !28, !noundef !28 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.os, i64 224
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !36863, !noalias !36859, !noundef !28 ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.os, i64 256
  %i.pv = load i64, ptr %i.pu, align 8, !alias.scope !36863, !noalias !36859, !noundef !28 ; 7 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.os, i64 240
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !36863, !noalias !36859, !noundef !28 ; 2 uses
  %i.py = add i64 %i.px, %i.pv                    ; 5 uses
  %i.pz = icmp ugt i64 %i.pv, %i.py
  %i.qa = icmp ugt i64 %i.py, %i.pt
  %or.cond.i.i.i.i = or i1 %i.pz, %i.qa
  br i1 %or.cond.i.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i, label %bb.bp, !prof !31

bb.bp:                                            ; preds = %bb.bo
  %i.qb = icmp eq i64 %i.pv, %i.pt
  br i1 %i.qb, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qc = icmp eq i64 %i.pv, 0
  br i1 %i.qc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %i.qd = icmp eq i64 %i.py, %i.pt
  br i1 %i.qd, label %bb.bu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pv
  %i.qf = load i8, ptr %i.qe, align 1, !alias.scope !36864, !noalias !36865, !noundef !28
  %i.qg = icmp sgt i8 %i.qf, -65
  br i1 %i.qg, label %bb.br, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i: ; preds = %bb.br
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.py
  %i.qi = load i8, ptr %i.qh, align 1, !alias.scope !36864, !noalias !36865, !noundef !28
  %i.qj = icmp sgt i8 %i.qi, -65
  br i1 %i.qj, label %bb.bu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i, %bb.bs, %bb.bo
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pr, i64 noundef %i.pt, i64 noundef %i.pv, i64 noundef %i.py, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc.i269 unwind label %.thread51.loopexit.split-lp.i, !noalias !36857

.noexc.i269:                                      ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i
  unreachable

bb.bt:                                            ; preds = %._crit_edge.i
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i, i64 840
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !36857, !noundef !28
  %i.qm = icmp eq i64 %i.ql, 0
  %spec.select.i271 = select i1 %i.qm, i64 67, i64 66
  br label %bb.bw

bb.bu:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i, %bb.br, %bb.bp
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pv
  %i.qo = ptrtoint ptr %i.qn to i64
  br label %bb.ec

bb.bv:                                            ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i, %bb.bk
  %i.qp = ptrtoint ptr %i.ot to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  %.sroa.14.1 = phi i64 [ undef, %bb.bt ], [ %i.qp, %bb.bv ] ; 2 uses
  %.sink.i270 = phi i64 [ %spec.select.i271, %bb.bt ], [ -1, %bb.bv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36866)
  %.val.i84.i = load ptr, ptr %i.on, align 8, !alias.scope !36866, !noalias !36857, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i85.i = load i64, ptr %i.oo, align 8, !alias.scope !36866, !noalias !36857, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36867)
  %i.qq = icmp eq i64 %.val1.i85.i, 0
  br i1 %i.qq, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.qs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ 0, %bb.bw ] ; 2 uses
  %i.qr = getelementptr inbounds nuw [24 x i8], ptr %.val.i84.i, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.qs = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36868)
  call void @llvm.experimental.noalias.scope.decl(metadata !36869)
  %.val.i.i.i.i.i.i = load i64, ptr %i.qr, align 8, !alias.scope !36870, !noalias !36871 ; 2 uses
  %i.qt = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.qt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.qu, align 8, !alias.scope !36870, !noalias !36871, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36872
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.bx, %.lr.ph.i.i.i.i
  %i.qv = icmp eq i64 %i.qs, %.val1.i85.i
  br i1 %i.qv, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i, %bb.bw
  %.val2.i.i = load i64, ptr %i.aj, align 8, !alias.scope !36866, !noalias !36857 ; 2 uses
  %i.qw = icmp eq i64 %.val2.i.i, 0
  br i1 %i.qw, label %bb.eg, label %.sink.split

.lr.ph.i:                                         ; preds = %bb.bj, %bb.cm
  %.sroa.011.0153.i = phi ptr [ %.sroa.011.1.i, %bb.cm ], [ %.val243, %bb.bj ] ; 14 uses
  %.sroa.0.0152.i = phi ptr [ %i.qx, %bb.cm ], [ %.sroa.4635.0.copyload, %bb.bj ] ; 3 uses
  %.sroa.9.0151.i = phi i64 [ %i.qy, %bb.cm ], [ 0, %bb.bj ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0.0152.i, i64 24 ; 2 uses
  %i.qy = add nuw nsw i64 %.sroa.9.0151.i, 1      ; 4 uses
  %i.qz = getelementptr i8, ptr %.sroa.0.0152.i, i64 8
  %.val.i = load ptr, ptr %i.qz, align 8, !alias.scope !36856, !noalias !36873, !nonnull !28, !noundef !28 ; 10 uses
  %i.ra = getelementptr i8, ptr %.sroa.0.0152.i, i64 16
  %.val73.i = load i64, ptr %i.ra, align 8, !alias.scope !36856, !noalias !36873, !noundef !28 ; 21 uses
  %.not.i86.i = icmp slt i64 %.val73.i, 0
  br i1 %.not.i86.i, label %bb.ca, label %bb.by, !prof !42

bb.by:                                            ; preds = %.lr.ph.i
  %i.rb = icmp eq i64 %.val73.i, 0                ; 2 uses
  br i1 %i.rb, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread70.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36874
  %i.rc = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.val73.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36874 ; 3 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz, %.lr.ph.i
  %.sroa.412.0.ph.i = phi i64 [ 1, %bb.bz ], [ 0, %.lr.ph.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.412.0.ph.i, i64 %.val73.i) #71
          to label %bb.cq unwind label %.thread51.loopexit.split-lp.i, !noalias !36857

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread70.i: ; preds = %bb.ce, %bb.by
  %i.re = phi ptr [ %i.rc, %bb.ce ], [ inttoptr (i64 1 to ptr), %bb.by ] ; 2 uses
  %i.rf = load i64, ptr %i.oo, align 8, !alias.scope !36875, !noalias !36876, !noundef !28 ; 3 uses
  %i.rg = load i64, ptr %i.aj, align 8, !range !43, !alias.scope !36875, !noalias !36876, !noundef !28
  %i.rh = icmp eq i64 %i.rf, %i.rg
  br i1 %i.rh, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread70.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaKJjC64KgbL_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.cf unwind label %bb.cc, !noalias !36876

bb.cc:                                            ; preds = %bb.cb
  %i.ri = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.rb, label %.thread47.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.re, i64 noundef %.val73.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36877
  br label %.thread47.i

bb.ce:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rc, ptr nonnull align 1 %.val.i, i64 %.val73.i, i1 false), !noalias !36857
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread70.i

bb.cf:                                            ; preds = %bb.cb, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread70.i
  %i.rj = load ptr, ptr %i.on, align 8, !alias.scope !36875, !noalias !36876, !nonnull !28, !noundef !28
  %i.rk = getelementptr inbounds nuw [24 x i8], ptr %i.rj, i64 %i.rf ; 3 uses
  store i64 %.val73.i, ptr %i.rk, align 8, !noalias !36857
  %.sroa.5.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store ptr %i.re, ptr %.sroa.5.0..sroa_idx.i264, align 8, !noalias !36857
  %.sroa.72.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store i64 %.val73.i, ptr %.sroa.72.0..sroa_idx.i, align 8, !noalias !36857
  %i.rl = add i64 %i.rf, 1                        ; 3 uses
  store i64 %i.rl, ptr %i.oo, align 8, !alias.scope !36875, !noalias !36876
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.011.0153.i, i64 776
  %.val78.i = load ptr, ptr %i.rm, align 8, !noalias !36857, !noundef !28 ; 2 uses
  %.not.i87.i = icmp eq ptr %.val78.i, null
  br i1 %.not.i87.i, label %.loopexit86.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.cf
  %i.rn = getelementptr i8, ptr %.sroa.011.0153.i, i64 784
  %.val79.i = load i64, ptr %i.rn, align 8, !noalias !36857
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ci, %.preheader.i.preheader.i
  %.sroa.3.0.i.i.i265 = phi i64 [ %i.sh, %bb.ci ], [ %.val79.i, %.preheader.i.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i.i266 = phi ptr [ %i.sg, %bb.ci ], [ %.val78.i, %.preheader.i.preheader.i ] ; 5 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i266, i64 10130
  %i.rp = load i16, ptr %i.ro, align 2, !noalias !36878, !noundef !28 ; 2 uses
  %i.rq = zext i16 %i.rp to i64                   ; 3 uses
  %.idx2611 = shl nuw nsw i64 %i.rq, 4
  %i.rr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i266, i64 %.idx2611
  %i.rs = icmp eq i16 %i.rp, 0
  br i1 %i.rs, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i

bb.cg:                                            ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i2563, i64 16 ; 2 uses
  %i.ru = add nuw nsw i64 %.sroa.8.0.i.i.i.i2562, 1
  %i.rv = icmp eq ptr %i.rt, %i.rr
  br i1 %i.rv, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterReEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %.preheader.i.i, %bb.cg
  %.sroa.0.01.i.i.i.i2563 = phi ptr [ %i.rt, %bb.cg ], [ %.sroa.0.0.i.i.i266, %.preheader.i.i ] ; 3 uses
  %.sroa.8.0.i.i.i.i2562 = phi i64 [ %i.ru, %bb.cg ], [ 0, %.preheader.i.i ] ; 4 uses
  %.val.i.i.i88.i = load ptr, ptr %.sroa.0.01.i.i.i.i2563, align 8, !noalias !36878, !nonnull !28, !noundef !28
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB2_16InvocationParser16parse_invocation:bb.a
bb.mu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapRejEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.mv

bb.mv:                                            ; preds = %bb.bb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_.exit, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCskXtk6F4WjxZ_4just5value5ValueEEB1c_.exit, %bb.mu
  ret void

bb.mw:                                            ; preds = %.lr.ph1287
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bds, i64 16 ; 2 uses
  %i.bec = load i64, ptr %i.beb, align 8, !noundef !28 ; 3 uses
  %i.bed = icmp ult i64 %i.bec, 384307168202282326
  call void @llvm.assume(i1 %i.bed)
  %i.bee = icmp eq i64 %i.bec, 0
  br i1 %i.bee, label %.backedge, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9parameterNtB2_9Parameter17check_value_count(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(448) %i.bdt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.0194.0, i64 %i.bec)
          to label %bb.mz unwind label %.loopexit.split-lp814.loopexit

bb.my:                                            ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.pre1676 = load i64, ptr %i.beb, align 8       ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bds, i64 8
  %i.beg = load ptr, ptr %i.bef, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %.idx1293 = mul nuw nsw i64 %.pre1676, 24
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 %.idx1293
  %i.bei = icmp eq i64 %.pre1676, 0
  br i1 %i.bei, label %.backedge, label %.lr.ph1284

bb.mz:                                            ; preds = %bb.mx
  %i.bej = load i64, ptr %i.ar, align 8, !range !116, !noundef !28
  %.not229 = icmp eq i64 %i.bej, -1
  br i1 %.not229, label %bb.my, label %bb.na

bb.na:                                            ; preds = %bb.mz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.ar, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.kf

.lr.ph1284:                                       ; preds = %bb.my, %bb.nd
  %.sroa.0126.01282 = phi ptr [ %i.bek, %bb.nd ], [ %i.beg, %bb.my ] ; 3 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %.sroa.0126.01282, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.bel = getelementptr inbounds nuw i8, ptr %.sroa.0126.01282, i64 8
  %i.bem = load ptr, ptr %i.bel, align 8, !nonnull !28, !noundef !28
  %i.ben = getelementptr inbounds nuw i8, ptr %.sroa.0126.01282, i64 16
  %i.beo = load i64, ptr %i.ben, align 8, !noundef !28
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9parameterNtB2_9Parameter19check_pattern_match(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(448) %i.bdt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %.sroa.0194.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bem, i64 noundef %i.beo)
          to label %bb.nb unwind label %.loopexit813

bb.nb:                                            ; preds = %.lr.ph1284
  %i.bep = load i64, ptr %i.aq, align 8, !range !116, !noundef !28
  %.not230 = icmp eq i64 %i.bep, -1
  br i1 %.not230, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.aq, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.kf

bb.nd:                                            ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.beq = icmp eq ptr %i.bek, %i.beh
  br i1 %i.beq, label %.backedge, label %.lr.ph1284

bb.ne:                                            ; preds = %bb.mn
  %i.ber = getelementptr inbounds nuw i8, ptr %.sroa.0194.0, i64 184
  %i.bes = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bes, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !37051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !37054
  %i.bet = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bet, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !37051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !37051
  %i.beu = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.beu, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !noalias !37051
  %i.bev = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i64 %.sroa.028.0.i, ptr %i.bev, align 8, !alias.scope !37050, !noalias !37051
  %.sroa.6.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx30.i, align 8, !alias.scope !37050, !noalias !37051
  %.sroa.7.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx32.i, align 8, !alias.scope !37050, !noalias !37051
  %i.bew = getelementptr inbounds nuw i8, ptr %i.as, i64 336
  store i32 %i.bcg, ptr %i.bew, align 8, !alias.scope !37050, !noalias !37051
  %i.bex = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store i64 %.val18.i, ptr %i.bex, align 8, !alias.scope !37050, !noalias !37051
  %.sroa.635.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store ptr %.sroa.635.0.i, ptr %.sroa.635.0..sroa_idx.i, align 8, !alias.scope !37050, !noalias !37051
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store i64 %.val18.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !37050, !noalias !37051
  %i.bey = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bey, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !37051
  %i.bez = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bez, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ber, i64 72, i1 false), !alias.scope !37054
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.as, i64 340
  store i32 %i.bcu, ptr %i.bfa, align 4, !alias.scope !37050, !noalias !37051
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bfb, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !37051
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.as, i64 328
  store i64 %i.bda, ptr %i.bfc, align 8, !alias.scope !37050, !noalias !37051
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.as, i64 344
  store i8 %i.bdc, ptr %i.bfd, align 8, !alias.scope !37050, !noalias !37051
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.as, i64 345
  store i8 %i.bde, ptr %i.bfe, align 1, !alias.scope !37050, !noalias !37051
  %i.bff = getelementptr inbounds nuw i8, ptr %i.as, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bff, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false), !noalias !37051
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.as, i64 346
  store i8 %i.bdk, ptr %i.bfg, align 2, !alias.scope !37050, !noalias !37051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !37054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !37054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !37054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !37054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !37054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !37089
  %i.bfh = call noundef align 8 dereferenceable_or_null(352) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 352, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !37089 ; 3 uses
  %i.bfi = icmp eq ptr %i.bfh, null
  br i1 %i.bfi, label %bb.nf, label %bb.ni, !prof !26

bb.nf:                                            ; preds = %bb.ne
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 352) #71
          to label %.noexc466 unwind label %bb.ng

.noexc466:                                        ; preds = %bb.nf
  unreachable

bb.ng:                                            ; preds = %bb.nf
  %i.bfj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.as) #72
          to label %.body unwind label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bfk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.ni:                                            ; preds = %bb.ne
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.bfh, ptr noundef nonnull align 8 dereferenceable(352) %i.as, i64 352, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.bfl = load ptr, ptr %i.da, align 8, !nonnull !28, !noundef !28 ; 6 uses
  %i.bfm = load i64, ptr %i.cj, align 8, !noundef !28 ; 9 uses
  %.idx = mul nuw nsw i64 %i.bfm, 448
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfl, i64 %.idx
  %i.bfo = icmp eq i64 %i.bfm, 0
  br i1 %i.bfo, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ni, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.bgj, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i ], [ 0, %bb.ni ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.bgi, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i ], [ 0, %bb.ni ]
  %i.bfp = getelementptr inbounds nuw [448 x i8], ptr %i.bfl, i64 %.sroa.04.0.i.i ; 8 uses
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfp, i64 104
  %i.bfr = load i64, ptr %i.bfq, align 8, !range !39, !alias.scope !37090, !noundef !28
  %.not.i.i.i.i.i468 = icmp ne i64 %i.bfr, -1
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfp, i64 441
  %i.bft = load i8, ptr %i.bfs, align 1, !range !40, !alias.scope !37090
  %i.bfu = trunc nuw i8 %i.bft to i1
  %or.cond.i.i.i.i469 = select i1 %.not.i.i.i.i.i468, i1 true, i1 %i.bfu
  br i1 %or.cond.i.i.i.i469, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i, label %bb.nj

bb.nj:                                            ; preds = %.preheader.i
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfp, i64 443
  %i.bfw = load i8, ptr %i.bfv, align 1, !range !38, !alias.scope !37090, !noundef !28
  %.not4.i.i.i.i.i = icmp eq i8 %i.bfw, 2
  br i1 %.not4.i.i.i.i.i, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfp, i64 16
  %i.bfy = load i64, ptr %i.bfx, align 8, !range !41, !alias.scope !37090, !noundef !28
  %i.bfz = trunc nuw i64 %i.bfy to i1
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfp, i64 24
  %i.bgb = load i64, ptr %i.bga, align 8, !alias.scope !37090
  %.not5.i.i.i.i.i = icmp ne i64 %i.bgb, 0
  %or.cond4.not7.i.i.i.i = select i1 %i.bfz, i1 %.not5.i.i.i.i.i, i1 false
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfp, i64 56
  %i.bgd = load i64, ptr %i.bgc, align 8, !range !37, !alias.scope !37090
  %.not6.i.i.i.i.i = icmp eq i64 %i.bgd, -1
  %or.cond6.i.i.i.i = select i1 %or.cond4.not7.i.i.i.i, i1 %.not6.i.i.i.i.i, i1 false
  br i1 %or.cond6.i.i.i.i, label %bb.nm, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

bb.nl:                                            ; preds = %bb.nj
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bfp, i64 56
  %.old5.i.i.i.i = load i64, ptr %.old.i.i.i.i, align 8, !range !37, !alias.scope !37090, !noundef !28
  %.not6.i.old.i.i.i.i = icmp eq i64 %.old5.i.i.i.i, -1
  br i1 %.not6.i.old.i.i.i.i, label %bb.nm, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

bb.nm:                                            ; preds = %bb.nl, %bb.nk
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bfp, i64 432
  %i.bgf = load i32, ptr %i.bge, align 8, !range !49, !alias.scope !37090, !noundef !28
  %i.bgg = icmp eq i32 %i.bgf, -1
  %i.bgh = zext i1 %i.bgg to i64
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i: ; preds = %bb.nm, %bb.nl, %bb.nk, %.preheader.i
  %.sroa.0.0.i.i.i.i.i470 = phi i64 [ %i.bgh, %bb.nm ], [ 0, %bb.nk ], [ 0, %bb.nl ], [ 0, %.preheader.i ]
  %i.bgi = add i64 %.sroa.0.0.i.i.i.i.i470, %.sroa.02.0.i.i ; 5 uses
  %i.bgj = add nuw i64 %.sroa.04.0.i.i, 1         ; 2 uses
  %i.bgk = icmp eq i64 %i.bgj, %i.bfm
  br i1 %i.bgk, label %bb.nn, label %.preheader.i

bb.nn:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMNtBZ_17invocation_parserNtB3d_16InvocationParser16parse_invocations3_0E0NCINvXsK_NtB2m_5accumjNtB4w_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i
  %i.bgl = icmp ule i64 %i.bgi, %i.bfm
  call void @llvm.assume(i1 %i.bgl)
  br label %.lr.ph.i473

.lr.ph.i473:                                      ; preds = %bb.nn, %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i
  %i.bgm = phi ptr [ %i.bgn, %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i ], [ %i.bfl, %bb.nn ] ; 4 uses
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 448 ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgm, i64 443
  %i.bgp = load i8, ptr %i.bgo, align 1, !range !38, !alias.scope !37091, !noalias !37092, !noundef !28
  %.not.i.i474 = icmp eq i8 %i.bgp, 1
  br i1 %.not.i.i474, label %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i473
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgm, i64 56
  %i.bgr = load i64, ptr %i.bgq, align 8, !range !37, !alias.scope !37091, !noalias !37092, !noundef !28
  %.not2.i.i = icmp eq i64 %i.bgr, -1
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.bgm, i64 432
  %i.bgt = load i32, ptr %i.bgs, align 8, !range !49, !alias.scope !37091, !noalias !37092
  %i.bgu = icmp eq i32 %i.bgt, -1
  %.sroa.01.0.i.i = select i1 %.not2.i.i, i1 %i.bgu, i1 false
  br i1 %.sroa.01.0.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_17invocation_parserNtB2m_16InvocationParser16parse_invocations4_0EBU_.exit, label %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i

_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i473
  %.not5.i475 = icmp eq ptr %i.bgn, %i.bfn
  br i1 %.not5.i475, label %.preheader.i476.preheader, label %.lr.ph.i473

.preheader.i476.preheader:                        ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocations4_0B6_.exit.backedge.i
  %xtraiter2989 = and i64 %i.bfm, 1
  %i.bgv = icmp eq i64 %i.bfm, 1
  br i1 %i.bgv, label %.preheader.i476.epil.preheader, label %.preheader.i476.preheader.new

.preheader.i476.preheader.new:                    ; preds = %.preheader.i476.preheader
  %unroll_iter = and i64 %i.bfm, -2
  br label %.preheader.i476

.preheader.i476:                                  ; preds = %.preheader.i476, %.preheader.i476.preheader.new
  %.sroa.04.0.i.i477 = phi i64 [ 0, %.preheader.i476.preheader.new ], [ %i.bhi, %.preheader.i476 ] ; 3 uses
  %.sroa.02.0.i.i478 = phi i64 [ 0, %.preheader.i476.preheader.new ], [ %i.bhh, %.preheader.i476 ]
  %niter = phi i64 [ 0, %.preheader.i476.preheader.new ], [ %niter.next.1, %.preheader.i476 ]
  %i.bgw = getelementptr inbounds nuw [448 x i8], ptr %i.bfl, i64 %.sroa.04.0.i.i477 ; 2 uses
  %i.bgx = getelementptr i8, ptr %i.bgw, i64 56
  %.val.i.i479 = load i64, ptr %i.bgx, align 8, !range !37, !alias.scope !37093, !noundef !28
  %i.bgy = getelementptr i8, ptr %i.bgw, i64 432
  %.val11.i.i = load i32, ptr %i.bgy, align 8, !alias.scope !37093
  %.not.i.i.i.i.i480 = icmp eq i64 %.val.i.i479, -1
  %i.bgz = icmp eq i32 %.val11.i.i, -1
  %.sroa.0.0.i.i.i.i.i481 = select i1 %.not.i.i.i.i.i480, i1 %i.bgz, i1 false
  %i.bha = zext i1 %.sroa.0.0.i.i.i.i.i481 to i64
  %i.bhb = add i64 %.sroa.02.0.i.i478, %i.bha
  %i.bhc = getelementptr inbounds nuw [448 x i8], ptr %i.bfl, i64 %.sroa.04.0.i.i477 ; 2 uses
  %i.bhd = getelementptr i8, ptr %i.bhc, i64 504
  %.val.i.i479.1 = load i64, ptr %i.bhd, align 8, !range !37, !alias.scope !37093, !noundef !28
  %i.bhe = getelementptr i8, ptr %i.bhc, i64 880
  %.val11.i.i.1 = load i32, ptr %i.bhe, align 8, !alias.scope !37093
  %.not.i.i.i.i.i480.1 = icmp eq i64 %.val.i.i479.1, -1
  %i.bhf = icmp eq i32 %.val11.i.i.1, -1
  %.sroa.0.0.i.i.i.i.i481.1 = select i1 %.not.i.i.i.i.i480.1, i1 %i.bhf, i1 false
  %i.bhg = zext i1 %.sroa.0.0.i.i.i.i.i481.1 to i64
  %i.bhh = add i64 %i.bhb, %i.bhg                 ; 3 uses
  %i.bhi = add nuw i64 %.sroa.04.0.i.i477, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, label %.preheader.i476

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa: ; preds = %.preheader.i476
  %lcmp.mod2990.not = icmp eq i64 %xtraiter2989, 0
  br i1 %lcmp.mod2990.not, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i476.epil.preheader

.preheader.i476.epil.preheader:                   ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, %.preheader.i476.preheader
  %.sroa.04.0.i.i477.epil.init = phi i64 [ 0, %.preheader.i476.preheader ], [ %i.bhi, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i478.epil.init = phi i64 [ 0, %.preheader.i476.preheader ], [ %i.bhh, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2992 = trunc i64 %i.bfm to i1
  call void @llvm.assume(i1 %lcmp.mod2992)
  %i.bhj = getelementptr inbounds nuw [448 x i8], ptr %i.bfl, i64 %.sroa.04.0.i.i477.epil.init ; 2 uses
  %i.bhk = getelementptr i8, ptr %i.bhj, i64 56
  %.val.i.i479.epil = load i64, ptr %i.bhk, align 8, !range !37, !alias.scope !37093, !noundef !28
  %i.bhl = getelementptr i8, ptr %i.bhj, i64 432
  %.val11.i.i.epil = load i32, ptr %i.bhl, align 8, !alias.scope !37093
  %.not.i.i.i.i.i480.epil = icmp eq i64 %.val.i.i479.epil, -1
  %i.bhm = icmp eq i32 %.val11.i.i.epil, -1
  %.sroa.0.0.i.i.i.i.i481.epil = select i1 %.not.i.i.i.i.i480.epil, i1 %i.bhm, i1 false
  %i.bhn = zext i1 %.sroa.0.0.i.i.i.i.i481.epil to i64
  %i.bho = add i64 %.sroa.02.0.i.i478.epil.init, %i.bhn
  br label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit: ; preds = %.preheader.i476.epil.preheader, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa, %bb.ni
  %.sroa.0.0.i.i471793.ph801 = phi i64 [ 0, %bb.ni ], [ %i.bgi, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ], [ %i.bgi, %.preheader.i476.epil.preheader ]
  %.sroa.0.0.i.i482 = phi i64 [ 0, %bb.ni ], [ %i.bhh, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit.loopexit.unr-lcssa ], [ %i.bho, %.preheader.i476.epil.preheader ] ; 2 uses
  %i.bhp = icmp ule i64 %.sroa.0.0.i.i482, %i.bfm
  call void @llvm.assume(i1 %i.bhp)
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_17invocation_parserNtB2m_16InvocationParser16parse_invocations4_0EBU_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtBU_17invocation_parserNtB2m_16InvocationParser16parse_invocations4_0EBU_.exit: ; preds = %.split.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit
  %.sroa.0.0.i.i471793796 = phi i64 [ %.sroa.0.0.i.i471793.ph801, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit ], [ %i.bgi, %.split.i ]
  %.sroa.0121.0 = phi i64 [ %.sroa.0.0.i.i482, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMNtB1w_17invocation_parserNtB2f_16InvocationParser16parse_invocations5_0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit ], [ -2, %.split.i ]
  store i64 71, ptr %0, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bfh, ptr %.sroa.4116.0..sroa_idx, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.067.0.lcssa, ptr %.sroa.5117.0..sroa_idx, align 8
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i471793796, ptr %.sroa.6118.0..sroa_idx, align 8
  %.sroa.7119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0121.0, ptr %.sroa.7119.0..sroa_idx, align 8
  br label %bb.kf

bb.no:                                            ; preds = %bb.ki
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.ayv, i64 104
  %i.bhr = load i64, ptr %i.bhq, align 8, !range !39, !noundef !28
  %.not231 = icmp eq i64 %i.bhr, -1
  br i1 %.not231, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %bb.no, %bb.nq, %bb.nr, %bb.ki
  %i.bhs = icmp ult i64 %i.ayu, %..i.i.i
  br i1 %i.bhs, label %bb.ki, label %.outer._crit_edge

bb.nq:                                            ; preds = %bb.no
  %i.bht = getelementptr inbounds nuw i8, ptr %i.ayv, i64 443
  %i.bhu = load i8, ptr %i.bht, align 1, !range !38, !noundef !28
  %i.bhv = icmp eq i8 %i.bhu, 2
  br i1 %i.bhv, label %bb.np, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 441
  %i.bhx = load i8, ptr %i.bhw, align 1, !range !40, !noundef !28
  %i.bhy = trunc nuw i8 %i.bhx to i1
  br i1 %i.bhy, label %bb.np, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.ayv, i64 56
  %i.bia = load i64, ptr %i.bhz, align 8, !range !37, !noundef !28
  %.not232 = icmp eq i64 %i.bia, -1
  br i1 %.not232, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.bib = getelementptr inbounds nuw i8, ptr %.sroa.0194.0, i64 184
  %i.bic = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bib)
          to label %bb.nv unwind label %.loopexit.split-lp814.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.nu:                                            ; preds = %bb.ns
  %i.bid = getelementptr inbounds nuw i8, ptr %i.ayv, i64 432
  %i.bie = load i32, ptr %i.bid, align 8, !range !49, !noundef !28
  %.not233 = icmp eq i32 %i.bie, -1
  br i1 %.not233, label %.outer, label %bb.nx

bb.nv:                                            ; preds = %bb.nt
  %i.bif = getelementptr inbounds nuw i8, ptr %i.ayv, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bif)
          to label %bb.nw unwind label %.loopexit.split-lp814.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nw:                                            ; preds = %bb.nv
  %i.big = extractvalue { ptr, i64 } %i.bic, 1
  %i.bih = extractvalue { ptr, i64 } %i.bic, 0
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4104.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 63, ptr %0, align 8
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bih, ptr %.sroa.5105.0..sroa_idx, align 8
  %.sroa.6106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.big, ptr %.sroa.6106.0..sroa_idx, align 8
  br label %bb.kf

bb.nx:                                            ; preds = %bb.nu
  %i.bii = getelementptr inbounds nuw i8, ptr %.sroa.0194.0, i64 184
  %i.bij = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bii)
          to label %bb.ny unwind label %.loopexit.split-lp814.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.outer:                                           ; preds = %bb.nu
  %i.bik = add i32 %.sroa.097.0.ph1280, 1         ; 2 uses
  %i.bil = icmp ult i64 %i.ayu, %..i.i.i
  br i1 %i.bil, label %.lr.ph1274, label %.outer._crit_edge

bb.ny:                                            ; preds = %bb.nx
  %i.bim = getelementptr inbounds nuw i8, ptr %i.ayv, i64 432
  %i.bin = extractvalue { ptr, i64 } %i.bij, 0
  %i.bio = extractvalue { ptr, i64 } %i.bij, 1
  %i.bip = load i32, ptr %i.bim, align 8, !range !52, !noundef !28
  store i64 63, ptr %0, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4108.0..sroa_idx, align 8
  %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bip, ptr %.sroa.4108.sroa.4.0..sroa.4108.0..sroa_idx.sroa_idx, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bin, ptr %.sroa.5109.0..sroa_idx, align 8
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.bio, ptr %.sroa.6110.0..sroa_idx, align 8
  br label %bb.kf

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit429: ; preds = %bb.kg, %bb.kf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37094
  %.not.i.i483 = icmp eq ptr %.val249548, null
  br i1 %.not.i.i483, label %bb.oa, label %bb.nz

bb.nz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit429
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !37094
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.val249548, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37094
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.val250550, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37094
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !37094
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.val249548, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37094
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.val250550, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !37094
  br label %bb.oa

bb.oa:                                            ; preds = %bb.nz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit429
  %.sink31.i.i = phi i64 [ 1, %bb.nz ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit429 ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i = phi i64 [ %.sink.i316, %bb.nz ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECskXtk6F4WjxZ_4just.exit429 ]
  store i64 %.sink31.i.i, ptr %i.d, align 8, !noalias !37094
  %i.biq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sink31.i.i, ptr %i.biq, align 8, !noalias !37094
  %i.bir = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i, ptr %i.bir, align 8, !noalias !37094
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37095
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItercjE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.noexc486 unwind label %.loopexit.split-lp

.noexc486:                                        ; preds = %bb.oa
  %i.bis = load ptr, ptr %i.c, align 8, !noalias !37095, !noundef !28
  %.not5.i.i.i.i = icmp eq ptr %i.bis, null
  br i1 %.not5.i.i.i.i, label %.loopexit811, label %.lr.ph.i.i.i.i484

.lr.ph.i.i.i.i484:                                ; preds = %.noexc486, %.noexc487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37095
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37095
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoItercjE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %.noexc487 unwind label %.loopexit807

.noexc487:                                        ; preds = %.lr.ph.i.i.i.i484
  %i.bit = load ptr, ptr %i.c, align 8, !noalias !37095, !noundef !28
  %.not.i.i.i.i485 = icmp eq ptr %i.bit, null
  br i1 %.not.i.i.i.i485, label %.loopexit811, label %.lr.ph.i.i.i.i484

.loopexit811:                                     ; preds = %.noexc487, %.noexc486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37096
  %.not.i.i489 = icmp eq ptr %.val247542, null
  br i1 %.not.i.i489, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %.loopexit811
  %.sroa.414.0..sroa_idx.i.i494 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i494, align 8, !noalias !37096
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i495 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val247542, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i495, align 8, !noalias !37096
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i496 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val248544, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i496, align 8, !noalias !37096
  %.sroa.616.0..sroa_idx.i.i497 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i497, align 8, !noalias !37096
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i498 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.val247542, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i498, align 8, !noalias !37096
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i499 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.val248544, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i499, align 8, !noalias !37096
  br label %bb.oc
end_hunk_2
begin_hunk_3_@_RNvMNtCskXtk6F4WjxZ_4just8compilerNtB2_8Compiler7compile:bb.a
  br label %.thread1100

.thread1100:                                      ; preds = %.thread1100.loopexit.split-lp, %.thread1100.loopexit
  %lpad.phi1127 = phi { ptr, i32 } [ %lpad.loopexit1125, %.thread1100.loopexit ], [ %lpad.loopexit.split-lp1126, %.thread1100.loopexit.split-lp ] ; 2 uses
  %i.bgn = icmp eq i64 %.sroa.11809.sroa.0.0.insert.insert, 0
  br i1 %i.bgn, label %.body594, label %bb.uo

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit606: ; preds = %bb.ss, %bb.sr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.20.3) ]
  %i.bgo = icmp eq i64 %.sroa.26.3, 0             ; 4 uses
  br i1 %i.bgo, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit609, label %bb.sv

bb.sv:                                            ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit606
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54390
  %i.bgp = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.26.3, i64 noundef range(i64 1, 9) 1) #70, !noalias !54390 ; 3 uses
  %i.bgq = icmp eq ptr %i.bgp, null
  br i1 %i.bgq, label %bb.sw, label %bb.sx

bb.sw:                                            ; preds = %bb.sv
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.26.3) #71
          to label %.noexc608 unwind label %.thread1100.loopexit.split-lp

.noexc608:                                        ; preds = %bb.sw
  unreachable

bb.sx:                                            ; preds = %bb.sv
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bgp, ptr nonnull readonly align 1 %.sroa.20.3, i64 range(i64 0, -9223372036854775808) %.sroa.26.3, i1 false), !noalias !54391
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit609

bb.sy:                                            ; preds = %.noexc605
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 2 uses
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.469.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bgr, i64 24, i1 false)
  %i.bgs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 22, ptr %i.bgs, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.11809.sroa.0.0.insert.insert, ptr %.sroa.570.0..sroa_idx, align 8
  %.sroa.570.sroa.4.0..sroa.570.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.20.3, ptr %.sroa.570.sroa.4.0..sroa.570.0..sroa_idx.sroa_idx, align 8
  %.sroa.570.sroa.5.0..sroa.570.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.26.3, ptr %.sroa.570.sroa.5.0..sroa.570.0..sroa_idx.sroa_idx, align 8
  br label %bb.um

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit609: ; preds = %bb.sx, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit606
  %.sroa.5923.0 = phi ptr [ %i.bgp, %bb.sx ], [ inttoptr (i64 1 to ptr), %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCsaKJjC64KgbL_3std4path7PathBufNtB5_13SliceContains14slice_containsCskXtk6F4WjxZ_4just.exit606 ]
  %i.bgt = getelementptr inbounds nuw i8, ptr %.sroa.024.04029, i64 8 ; 2 uses
  %.val361 = load i64, ptr %i.bgt, align 8, !range !37, !noundef !28 ; 2 uses
  %i.bgu = getelementptr i8, ptr %.sroa.024.04029, i64 16 ; 2 uses
  %i.bgv = icmp sgt i64 %.val361, 0
  br i1 %i.bgv, label %bb.sz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit613

bb.sz:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit609
  %.val362 = load ptr, ptr %i.bgu, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val362, i64 noundef %.val361, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54392
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit613

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit613: ; preds = %bb.sz, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit609
  store i64 %.sroa.26.3, ptr %i.bgt, align 8
  store ptr %.sroa.5923.0, ptr %i.bgu, align 8
  %.sroa.6939.0..sroa_idx940 = getelementptr inbounds nuw i8, ptr %.sroa.024.04029, i64 24
  store i64 %.sroa.26.3, ptr %.sroa.6939.0..sroa_idx940, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0850)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6854)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0850, ptr noundef nonnull align 8 dereferenceable(64) %i.agk, i64 64, i1 false)
  %.sroa.5851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.024.04029, i64 224
  %.sroa.5851.0.copyload = load i8, ptr %.sroa.5851.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.024.04029, i64 225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6854, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6854.0..sroa_idx, i64 7, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !54393)
  call void @llvm.experimental.noalias.scope.decl(metadata !54394)
  %i.bgw = load i32, ptr %i.gu, align 8, !alias.scope !54394, !noalias !54395, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !54396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !54396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54396
  %.val26.i = load ptr, ptr %i.gs, align 8, !alias.scope !54394, !noalias !54395, !nonnull !28, !noundef !28
  %.val27.i = load i64, ptr %i.gt, align 8, !alias.scope !54394, !noalias !54395, !noundef !28
  invoke fastcc void @_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsaKJjC64KgbL_3std4path7PathBufNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val26.i, i64 noundef %.val27.i) #76
          to label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i618 unwind label %bb.tb, !noalias !54396

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit789: ; preds = %bb.ug, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i787, %bb.uh, %bb.tb
  %.pn.pn.pn.i614 = phi { ptr, i32 } [ %i.bja, %bb.uh ], [ %i.bgy, %bb.tb ], [ %.pn.pn.i622, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i787 ], [ %.pn.pn.i622, %bb.ug ] ; 2 uses
  %i.bgx = icmp eq i64 %.sroa.11809.sroa.0.0.insert.insert, 0
  br i1 %i.bgx, label %.body594, label %bb.ta

bb.ta:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit789
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.20.3, i64 noundef %.sroa.11809.sroa.0.0.insert.insert, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54397
  br label %.body594

bb.tb:                                            ; preds = %bb.tf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit613
  %i.bgy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit789

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i618: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit613
  %i.bgz = load ptr, ptr %i.gv, align 8, !noalias !54396, !nonnull !28, !noundef !28 ; 3 uses
  %i.bha = load i64, ptr %i.e, align 8, !range !43, !noalias !54396, !noundef !28
  %i.bhb = load i64, ptr %i.gw, align 8, !noalias !54396, !noundef !28 ; 2 uses
  %i.bhc = icmp ult i64 %i.bhb, 384307168202282326
  call void @llvm.assume(i1 %i.bhc)
  %i.bhd = getelementptr inbounds nuw [24 x i8], ptr %i.bgz, i64 %i.bhb
  store ptr %i.bgz, ptr %i.f, align 8, !noalias !54396
  store i64 %i.bha, ptr %i.gx, align 8, !noalias !54396
  store ptr %i.bgz, ptr %i.gy, align 8, !noalias !54396
  store ptr %i.bhd, ptr %i.gz, align 8, !noalias !54396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54396
  br i1 %i.bgo, label %bb.tf, label %bb.tc

bb.tc:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i618
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54398
  %i.bhe = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.26.3, i64 noundef range(i64 1, 9) 1) #70, !noalias !54398 ; 3 uses
  %i.bhf = icmp eq ptr %i.bhe, null
  br i1 %i.bhf, label %bb.td, label %bb.te

bb.td:                                            ; preds = %bb.tc
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.26.3) #71
          to label %.noexc.i626 unwind label %bb.uh, !noalias !54396

.noexc.i626:                                      ; preds = %bb.td
  unreachable

bb.te:                                            ; preds = %bb.tc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bhe, ptr nonnull readonly align 1 %.sroa.20.3, i64 range(i64 0, -9223372036854775808) %.sroa.26.3, i1 false), !noalias !54399
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i618
  %.sroa.558.0.i = phi ptr [ %i.bhe, %bb.te ], [ inttoptr (i64 1 to ptr), %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit.i618 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !54400)
  call void @llvm.experimental.noalias.scope.decl(metadata !54401)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ha, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !54402, !noalias !54403
  store i64 %.sroa.26.3, ptr %i.g, align 8, !alias.scope !54404, !noalias !54405
  store ptr %.sroa.558.0.i, ptr %.sroa.479.0..sroa_idx.i, align 8, !alias.scope !54404, !noalias !54405
  store i64 %.sroa.26.3, ptr %.sroa.580.0..sroa_idx.i, align 8, !alias.scope !54404, !noalias !54405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54396
  invoke fastcc void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterB13_EINtNtNtB2e_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.g)
          to label %bb.tg unwind label %bb.tb, !noalias !54396

bb.tg:                                            ; preds = %bb.tf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !54396
  %i.bhg = load i64, ptr %i.fb, align 8, !range !37, !alias.scope !54394, !noalias !54395, !noundef !28
  %.not.i619 = icmp eq i64 %i.bhg, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !54406)
  br i1 %.not.i619, label %bb.tl, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %.val.i.i620 = load ptr, ptr %i.hb, align 8, !alias.scope !54407, !noalias !54408, !nonnull !28, !noundef !28 ; 3 uses
  %.val4.i.i = load i64, ptr %i.hc, align 8, !alias.scope !54407, !noalias !54408, !noundef !28 ; 9 uses
  %narrow.i.i.i.i.i = icmp ult i8 %.sroa.5851.0.copyload, -2
  %i.bhh = zext i1 %narrow.i.i.i.i.i to i64
  %.sink22.i.i.i.i.i.i = add nuw nsw i64 %.val4.i.i, %i.bhh ; 4 uses
  %i.bhi = mul i64 %.sink22.i.i.i.i.i.i, 72       ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sink22.i.i.i.i.i.i, 128102389400760775
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.tk, label %bb.ti, !prof !117

bb.ti:                                            ; preds = %bb.th
  %i.bhj = icmp eq i64 %i.bhi, 0
  br i1 %i.bhj, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54409
  %i.bhk = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.bhi, i64 noundef range(i64 1, 9) 8) #70, !noalias !54409 ; 2 uses
  %i.bhl = icmp eq ptr %i.bhk, null
  br i1 %i.bhl, label %bb.tk, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i

bb.tk:                                            ; preds = %bb.tj, %bb.th
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.tj ], [ 0, %bb.th ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.bhi) #71
          to label %.noexc28.i unwind label %bb.tn, !noalias !54396

.noexc28.i:                                       ; preds = %bb.tk
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i: ; preds = %bb.tj, %bb.ti
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ti ], [ %i.bhk, %bb.tj ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.ti ], [ %.sink22.i.i.i.i.i.i, %bb.tj ] ; 3 uses
  %i.bhm = icmp samesign ule i64 %.sink22.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bhm)
  %i.bhn = icmp eq i64 %.val4.i.i, 0
  br i1 %i.bhn, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i
  %xtraiter12535 = and i64 %.val4.i.i, 1
  %i.bho = icmp eq i64 %.val4.i.i, 1
  br i1 %i.bho, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter12539 = and i64 %.val4.i.i, 144115188075855870
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.bhp = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.bhv, %.preheader.i.i.i.i ] ; 4 uses
  %niter12540 = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter12540.next.1, %.preheader.i.i.i.i ]
  %i.bhq = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i620, i64 %i.bhp
  %i.bhr = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.bhp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bhr, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bhq, i64 72, i1 false), !noalias !54410
  %i.bhs = or disjoint i64 %i.bhp, 1              ; 2 uses
  %i.bht = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i620, i64 %i.bhs
  %i.bhu = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.bhs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bhu, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bht, i64 72, i1 false), !noalias !54410
  %i.bhv = add nuw i64 %i.bhp, 2                  ; 2 uses
  %niter12540.next.1 = add nuw i64 %niter12540, 2 ; 2 uses
  %niter12540.ncmp.1 = icmp eq i64 %niter12540.next.1, %unroll_iter12539
  br i1 %niter12540.ncmp.1, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod12537.not = icmp eq i64 %xtraiter12535, 0
  br i1 %lcmp.mod12537.not, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.bhv, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod12538 = trunc i64 %.val4.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod12538)
  %i.bhw = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i620, i64 %.epil.init
  %i.bhx = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bhx, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.bhw, i64 72, i1 false), !noalias !54410
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.epil.preheader, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCskXtk6F4WjxZ_4just4name4NameE7reserveBI_.exit.i.i.i.i.i.i.i
  %switch.i.i.i.i.i.i.i.i = icmp ugt i8 %.sroa.5851.0.copyload, -3
  br i1 %switch.i.i.i.i.i.i.i.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i, label %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i:              ; preds = %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i
  %i.bhy = getelementptr inbounds nuw [72 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.val4.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bhy, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0850, i64 64, i1 false), !noalias !54411
  %.sroa.411.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bhy, i64 64
  store i8 %.sroa.5851.0.copyload, ptr %.sroa.411.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !54412
  %.sroa.512.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bhy, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.512.0..sroa_idx.us.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6854, i64 7, i1 false), !noalias !54413
  %i.bhz = add nuw nsw i64 %.val4.i.i, 1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i

bb.tl:                                            ; preds = %bb.tg
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54414
  %i.bia = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !54414 ; 5 uses
  %i.bib = icmp eq ptr %i.bia, null
  br i1 %i.bib, label %bb.tm, label %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i, !prof !26

bb.tm:                                            ; preds = %bb.tl
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #71
          to label %.noexc29.i unwind label %bb.tn, !noalias !54396

.noexc29.i:                                       ; preds = %bb.tm
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i: ; preds = %bb.tl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bia, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0850, i64 64, i1 false), !noalias !54415
  %.sroa.5851.0..sroa_idx852 = getelementptr inbounds nuw i8, ptr %i.bia, i64 64
  store i8 %.sroa.5851.0.copyload, ptr %.sroa.5851.0..sroa_idx852, align 8, !noalias !54415
  %.sroa.6854.0..sroa_idx855 = getelementptr inbounds nuw i8, ptr %i.bia, i64 65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6854.0..sroa_idx855, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6854, i64 7, i1 false), !noalias !54415
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i

bb.tn:                                            ; preds = %bb.tm, %bb.tk
  %i.bic = landingpad { ptr, i32 }
          cleanup
  br label %bb.ue

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.sink.i.i = phi i64 [ 1, %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i ], [ %.sroa.4.0.i.i.i.i.i.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i.i.sink.i.i = phi ptr [ %i.bia, %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.0.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %storemerge.i.i.i.i.i.i.sink.i.i = phi i64 [ 1, %_RNCNvMNtCskXtk6F4WjxZ_4just6sourceNtB4_6Source6module0B6_.exit.i.i ], [ %.val4.i.i, %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just4name4NameEENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB21_8for_each4callB1s_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3i_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainBP_INtNtNtB9_7sources4once4OnceB1s_EEE0E0EB1w_.exit.i.i.i.i.i.i.i.i.i ], [ %i.bhz, %.lr.ph.split.us.i.i.i.i.i.i.i.i.i.i ]
  br i1 %i.bgo, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i, label %bb.to

bb.to:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54416
  %i.bid = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.26.3, i64 noundef range(i64 1, 9) 1) #70, !noalias !54416 ; 3 uses
  %i.bie = icmp eq ptr %i.bid, null
  br i1 %i.bie, label %bb.tp, label %bb.tq

bb.tp:                                            ; preds = %bb.to
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.26.3) #71
          to label %.noexc32.i unwind label %bb.ts, !noalias !54396

.noexc32.i:                                       ; preds = %bb.tp
  unreachable

bb.tq:                                            ; preds = %bb.to
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bid, ptr nonnull readonly align 1 %.sroa.20.3, i64 range(i64 0, -9223372036854775808) %.sroa.26.3, i1 false), !noalias !54417
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i: ; preds = %bb.tu, %bb.tt, %bb.ts
  %.pn.i621 = phi { ptr, i32 } [ %i.big, %bb.ts ], [ %lpad.phi1143, %bb.tt ], [ %lpad.phi1143, %bb.tu ] ; 2 uses
  %.not110.i = icmp eq i64 %.sroa.4.0.i.i.i.i.sink.i.i, 0
  br i1 %.not110.i, label %bb.ue, label %bb.tr

bb.tr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.i.i.i.i.sink.i.i) ]
  %i.bif = mul nuw nsw i64 %.sroa.4.0.i.i.i.i.sink.i.i, 72
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i.sink.i.i, i64 noundef %i.bif, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !54418
  br label %bb.ue

bb.ts:                                            ; preds = %bb.tp
  %i.big = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i: ; preds = %bb.tq, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i
  %.sroa.588.0.i = phi ptr [ %i.bid, %bb.tq ], [ inttoptr (i64 1 to ptr), %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtCskXtk6F4WjxZ_4just8namepath8NamepathE11map_or_elseBJ_NCNvMNtBN_6sourceNtB1K_6Source6module0NCB1H_s_0EBN_.exit.i ] ; 2 uses
  %i.bih = invoke { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.20.3, i64 noundef %.sroa.26.3)
          to label %bb.tv unwind label %.loopexit1139, !noalias !54396 ; 2 uses

.loopexit1139:                                    ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i
  %lpad.loopexit1141 = landingpad { ptr, i32 }
          cleanup
  br label %bb.tt

.loopexit.split-lp1140:                           ; preds = %bb.tz, %bb.ub
  %lpad.loopexit.split-lp1142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.tt

bb.tt:                                            ; preds = %.loopexit.split-lp1140, %.loopexit1139
  %lpad.phi1143 = phi { ptr, i32 } [ %lpad.loopexit1141, %.loopexit1139 ], [ %lpad.loopexit.split-lp1142, %.loopexit.split-lp1140 ] ; 2 uses
  br i1 %i.bgo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.588.0.i, i64 noundef %.sroa.26.3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54419
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i

bb.tv:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit33.i
  %i.bii = extractvalue { ptr, i64 } %i.bih, 0    ; 2 uses
  %i.bij = extractvalue { ptr, i64 } %i.bih, 1    ; 7 uses
  %.not16.i = icmp eq ptr %i.bii, null
  br i1 %.not16.i, label %bb.tz, label %bb.tw, !prof !44

bb.tw:                                            ; preds = %bb.tv
  %.not.i.i623 = icmp slt i64 %i.bij, 0
  br i1 %.not.i.i623, label %bb.ub, label %bb.tx, !prof !42

bb.tx:                                            ; preds = %bb.tw
  %i.bik = icmp eq i64 %i.bij, 0
  br i1 %i.bik, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread97.i, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !54420
  %i.bil = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.bij, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54420 ; 3 uses
  %i.bim = icmp eq ptr %i.bil, null
  br i1 %i.bim, label %bb.ub, label %bb.ud

bb.tz:                                            ; preds = %bb.tv
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @924) #71
          to label %bb.ua unwind label %.loopexit.split-lp1140, !noalias !54396

bb.ua:                                            ; preds = %bb.ub, %bb.tz
  unreachable

bb.ub:                                            ; preds = %bb.ty, %bb.tw
  %.sroa.490.0.ph.i = phi i64 [ 1, %bb.ty ], [ 0, %bb.tw ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.490.0.ph.i, i64 %i.bij) #71
          to label %bb.ua unwind label %.loopexit.split-lp1140, !noalias !54396

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread97.i: ; preds = %bb.ud, %bb.tx
  %i.bin = phi ptr [ %i.bil, %bb.ud ], [ inttoptr (i64 1 to ptr), %bb.tx ]
  %i.bio = add i32 %i.bgw, 1
  store i32 %i.bio, ptr %i.hd, align 8, !alias.scope !54393, !noalias !54421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !54421
  store i64 0, ptr %i.he, align 8, !alias.scope !54393, !noalias !54421
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i624, align 8, !alias.scope !54393, !noalias !54421
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !54393, !noalias !54421
  store i64 %.sroa.4.0.i.i.i.i.sink.i.i, ptr %i.hf, align 8, !alias.scope !54393, !noalias !54421
  store ptr %.sroa.10.0.i.i.i.i.sink.i.i, ptr %.sroa.542.0..sroa_idx43.i625, align 8, !alias.scope !54393, !noalias !54421
  store i64 %storemerge.i.i.i.i.i.i.sink.i.i, ptr %.sroa.6.0..sroa_idx45.i, align 8, !alias.scope !54393, !noalias !54421
  store i64 %.sroa.26.3, ptr %i.hg, align 8, !alias.scope !54393, !noalias !54421
  store ptr %.sroa.588.0.i, ptr %.sroa.551.0..sroa_idx52.i, align 8, !alias.scope !54393, !noalias !54421
  store i64 %.sroa.26.3, ptr %.sroa.654.0..sroa_idx55.i, align 8, !alias.scope !54393, !noalias !54421
  store i64 %i.bij, ptr %i.hh, align 8, !alias.scope !54393, !noalias !54421
  store ptr %i.bin, ptr %.sroa.413.0..sroa_idx.i, align 8, !alias.scope !54393, !noalias !54421
  store i64 %i.bij, ptr %.sroa.514.0..sroa_idx.i, align 8, !alias.scope !54393, !noalias !54421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54396
  %i.bip = icmp eq i64 %.sroa.11809.sroa.0.0.insert.insert, 0
  br i1 %i.bip, label %_RNvMNtCskXtk6F4WjxZ_4just6sourceNtB2_6Source6module.exit, label %bb.uc

bb.uc:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread97.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.20.3, i64 noundef %.sroa.11809.sroa.0.0.insert.insert, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !54422
  br label %_RNvMNtCskXtk6F4WjxZ_4just6sourceNtB2_6Source6module.exit

bb.ud:                                            ; preds = %bb.ty
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bil, ptr nonnull align 1 %i.bii, i64 %i.bij, i1 false), !noalias !54396
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread97.i

bb.ue:                                            ; preds = %bb.tr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i, %bb.tn
  %.pn.pn.i622 = phi { ptr, i32 } [ %i.bic, %bb.tn ], [ %.pn.i621, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit36.i ], [ %.pn.i621, %bb.tr ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54423)
  %i.biq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i780 = load ptr, ptr %i.biq, align 8, !alias.scope !54423, !noalias !54396, !nonnull !28, !noundef !28 ; 2 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val1.i781 = load i64, ptr %i.bir, align 8, !alias.scope !54423, !noalias !54396, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54424), !noalias !54396
  %i.bis = icmp eq i64 %.val1.i781, 0
  br i1 %i.bis, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaKJjC64KgbL_3std4path7PathBufENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i787, label %.lr.ph.i.i.i782

.lr.ph.i.i.i782:                                  ; preds = %bb.ue, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i786
  %.sroa.0.010.i.i.i783 = phi i64 [ %i.biu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i786 ], [ 0, %bb.ue ] ; 2 uses
  %i.bit = getelementptr inbounds nuw [24 x i8], ptr %.val.i780, i64 %.sroa.0.010.i.i.i783 ; 2 uses
  %i.biu = add nuw nsw i64 %.sroa.0.010.i.i.i783, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !54425), !noalias !54396
  call void @llvm.experimental.noalias.scope.decl(metadata !54426), !noalias !54396
  %.val.i.i.i.i.i784 = load i64, ptr %i.bit, align 8, !alias.scope !54427, !noalias !54428 ; 2 uses
  %i.biv = icmp eq i64 %.val.i.i.i.i.i784, 0
  br i1 %i.biv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit.i.i.i786, label %bb.uf
end_hunk_3
begin_hunk_4_@_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile13public_groups:.preheader
  %i.aw = load i16, ptr %i.av, align 8, !noalias !55926 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 274
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !55925, !noundef !28
  %i.az = icmp ult i16 %i.aw, %i.ay
  br i1 %i.az, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i unwind label %bb.h, !noalias !55927

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtBb_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEE10init_frontB26_.exit.i
  %.sroa.10.0.ph.i.i.i = phi i64 [ %i.at, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.59.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtBb_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEE10init_frontB26_.exit.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.au, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.48.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtBb_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEE10init_frontB26_.exit.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i = phi ptr [ %i.as, %._crit_edge.loopexit.i.i.i.i ], [ %.sroa.07.0.copyload.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReINtNtBb_4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEE10init_frontB26_.exit.i ] ; 3 uses
  %i.ba = icmp eq i64 %.sroa.7.0.ph.i.i.i, 0
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = add nuw nsw i64 %.sroa.10.0.ph.i.i.i, 1
  br label %.loopexit276

bb.g:                                             ; preds = %bb.e
  %i.bc = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i, i64 288
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %xtraiter511 = and i64 %.sroa.7.0.ph.i.i.i, 7   ; 2 uses
  %lcmp.mod512.not = icmp eq i64 %xtraiter511, 0
  br i1 %lcmp.mod512.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.prol = phi ptr [ %i.bf, %.prol.preheader ], [ %i.be, %bb.g ]
  %.sroa.019.0.in.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i, %bb.g ]
  %prol.iter513 = phi i64 [ %prol.iter513.next, %.prol.preheader ], [ 0, %bb.g ]
  %.sroa.019.0.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.prol, align 8, !noalias !55928, !nonnull !28, !noundef !28 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter513.next = add i64 %prol.iter513, 1   ; 2 uses
  %prol.iter513.cmp.not = icmp eq i64 %prol.iter513.next, %xtraiter511
  br i1 %prol.iter513.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !55690

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.sroa.017.0.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.sroa.017.0.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.unr = phi ptr [ %i.be, %bb.g ], [ %i.bf, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.g ], [ %.sroa.019.0.i.i.i.i.prol, %.prol.preheader ]
  %i.bg = icmp ult i64 %.sroa.7.0.ph.i.i.i, 8
  br i1 %i.bg, label %.loopexit276, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i = phi ptr [ %i.bp, %.new ], [ %.sroa.017.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i, align 8, !noalias !55928, !nonnull !28, !noundef !28
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i, i64 280
  %.sroa.017.0.i.i.i.i.1 = load ptr, ptr %i.bh, align 8, !noalias !55928, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.1, i64 280
  %.sroa.017.0.i.i.i.i.2 = load ptr, ptr %i.bi, align 8, !noalias !55928, !nonnull !28, !noundef !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.2, i64 280
  %.sroa.017.0.i.i.i.i.3 = load ptr, ptr %i.bj, align 8, !noalias !55928, !nonnull !28, !noundef !28
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.3, i64 280
  %.sroa.017.0.i.i.i.i.4 = load ptr, ptr %i.bk, align 8, !noalias !55928, !nonnull !28, !noundef !28
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.4, i64 280
  %.sroa.017.0.i.i.i.i.5 = load ptr, ptr %i.bl, align 8, !noalias !55928, !nonnull !28, !noundef !28
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.5, i64 280
  %.sroa.017.0.i.i.i.i.6 = load ptr, ptr %i.bm, align 8, !noalias !55928, !nonnull !28, !noundef !28
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.6, i64 280
  %.sroa.019.0.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.7 = load ptr, ptr %i.bn, align 8, !noalias !55928, !nonnull !28, !noundef !28 ; 2 uses
  %i.bo = icmp eq i64 %.sroa.019.0.i.i.i.i.7, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.7, i64 280
  br i1 %i.bo, label %.loopexit276, label %.new

bb.h:                                             ; preds = %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.loopexit86:                                      ; preds = %bb.bb, %bb.i, %_RNvXsA_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit

.loopexit.split-lp:                               ; preds = %.thread, %bb.r, %bb.v, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, %.critedge.i.i168
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit

.loopexit276:                                     ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.78.0.i.i.i = phi i64 [ %i.bb, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.f ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ]
  %i.br = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 184
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.sroa.10.0.ph.i.i.i ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 360
  %i.bw = load i8, ptr %i.bv, align 8, !range !40, !alias.scope !55929, !noundef !28
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe9is_public.exit.thread, label %bb.i

bb.i:                                             ; preds = %.loopexit276
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 320
  %i.bz = invoke fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet8contains(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, i8 noundef 23)
          to label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe9is_public.exit unwind label %.loopexit86

.thread:                                          ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe9is_public.exit.thread, %.preheader
  %i.ca = phi i64 [ 0, %.preheader ], [ %i.iv, %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe9is_public.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile14public_modules(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %1, i8 %.540.val)
          to label %bb.j unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.cd = load i64, ptr %i.f, align 8, !range !43, !noundef !28 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !28 ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 1152921504606846976
  tail call void @llvm.assume(i1 %i.cg)
  %.idx152 = shl nuw nsw i64 %i.cf, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ci = icmp eq i64 %i.cf, 0
  br i1 %i.ci, label %._crit_edge149, label %.lr.ph148

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit: ; preds = %.body143, %bb.l
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.l ], [ %eh.lpad-body144, %.body143 ] ; 2 uses
  %i.cj = icmp eq i64 %i.cd, 0
  br i1 %i.cj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit
  %i.ck = shl nuw i64 %i.cd, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !55930
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit

bb.l:                                             ; preds = %bb.n
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit

.lr.ph148:                                        ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142
  %i.cm = phi i64 [ %i.if, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142 ], [ %i.ca, %bb.j ] ; 2 uses
  %.sroa.515.0146 = phi ptr [ %i.cn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142 ], [ %i.cc, %bb.j ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.515.0146, i64 8 ; 2 uses
  %i.co = load ptr, ptr %.sroa.515.0146, align 8, !noalias !55931, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 32
  %.val126 = load ptr, ptr %i.cp, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 40
  %.val127 = load i64, ptr %i.cq, align 8, !noundef !28 ; 7 uses
  %i.cr = shl nuw i64 %.val127, 4                 ; 5 uses
  %i.cs = icmp eq i64 %.val127, 0
  br i1 %i.cs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142, label %bb.m

bb.m:                                             ; preds = %.lr.ph148
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !55932
  %i.ct = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.cr, i64 noundef range(i64 1, 9) 8) #70, !noalias !55932 ; 8 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.n, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.m
  %xtraiter541 = and i64 %.val127, 1
  %i.cv = icmp eq i64 %.val127, 1
  br i1 %i.cv, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %.val127, -2
  br label %.preheader.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cr) #71
          to label %.noexc131 unwind label %bb.l

.noexc131:                                        ; preds = %bb.n
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.cw = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.di, %.preheader.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw [104 x i8], ptr %.val126, i64 %i.cw ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !55933, !nonnull !28, !noundef !28
  %i.cz = getelementptr i8, ptr %i.cx, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !55933, !noundef !28
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cw ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i, ptr %i.da, align 8, !noalias !55934, !captures !36
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.db, align 8, !noalias !55935
  %i.dc = or disjoint i64 %i.cw, 1                ; 2 uses
  %i.dd = getelementptr inbounds nuw [104 x i8], ptr %.val126, i64 %i.dc ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val15.i.i.i.i.i.i.i.1 = load ptr, ptr %i.de, align 8, !noalias !55933, !nonnull !28, !noundef !28
  %i.df = getelementptr i8, ptr %i.dd, i64 16
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.df, align 8, !noalias !55933, !noundef !28
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.dc ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.1, ptr %i.dg, align 8, !noalias !55934, !captures !36
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.dh, align 8, !noalias !55935
  %i.di = add nuw i64 %i.cw, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph144.unr-lcssa, label %.preheader.i.i.i.i

._crit_edge149:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142, %bb.j
  %i.dj = phi i64 [ %i.ca, %bb.j ], [ %i.if, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit142 ] ; 15 uses
  %i.dk = icmp eq i64 %i.cd, 0
  br i1 %i.dk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132, label %bb.o

bb.o:                                             ; preds = %._crit_edge149
  %i.dl = shl nuw i64 %i.cd, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !55936
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132: ; preds = %bb.o, %._crit_edge149
  %i.dm = trunc nuw i8 %.540.val to i1
  %i.dn = load ptr, ptr %i.j, align 8, !nonnull !28, !noundef !28 ; 17 uses
  br i1 %i.dm, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !55937
  %i.do = icmp samesign ult i64 %i.dj, 2
  br i1 %i.do, label %_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit, label %bb.q, !prof !29

bb.q:                                             ; preds = %bb.p
  %i.dp = icmp samesign ult i64 %i.dj, 21
  br i1 %i.dp, label %bb.s, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB18_5sliceSBZ_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2g_8Justfile13public_groups0E0INtNtB18_3vec3VecBZ_EEB2i_(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 192153584101141163) %i.dj, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #74
          to label %_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENCINvMNtB1v_5sliceSB1m_7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB2E_8Justfile13public_groups0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 192153584101141163) %i.dj)
  br label %_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit

_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit: ; preds = %bb.r, %bb.p, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !55937
  br label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit132
  %i.dq = icmp samesign ult i64 %i.dj, 2
  br i1 %i.dq, label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  %i.dr = icmp samesign ult i64 %i.dj, 21
  br i1 %i.dr, label %bb.w, label %bb.v, !prof !29

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable14driftsort_mainTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYBZ_NtNtB8_3cmp10PartialOrd2ltINtNtB18_3vec3VecBZ_EECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 192153584101141163) %i.dj, ptr noalias nofree noundef nonnull %i.a) #74
          to label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  tail call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringENvYB1m_NtNtBa_3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 %i.dn, i64 noundef range(i64 0, 192153584101141163) %i.dj)
  br label %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit

_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit: ; preds = %bb.w, %bb.t, %bb.v, %_RINvMNtCs4wP2HXfJTCR_5alloc5sliceSTRSjjNtNtB5_6string6StringE7sort_byNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1a_8Justfile13public_groups0EB1c_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ds = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 8, !range !40, !noalias !55938, !noundef !28
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i: ; preds = %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit
  %.pre.i.i = load i64, ptr %i.ds, align 8, !noalias !55939
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !55939
  br label %bb.x

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RINvNtCs4wP2HXfJTCR_5alloc5slice11stable_sortTRSjjNtNtB4_6string6StringENvYBH_NtNtCsj6eKBz9Db1c_4core3cmp10PartialOrd2ltECskXtk6F4WjxZ_4just.exit
  %i.dw = invoke { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc135 unwind label %.loopexit.split-lp ; 2 uses

.noexc135:                                        ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i
  %i.dx = extractvalue { i64, i64 } %i.dw, 0
  %i.dy = extractvalue { i64, i64 } %i.dw, 1      ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %i.dy, ptr %i.dz, align 8, !noalias !55940
  store i8 1, ptr %i.dt, align 8, !noalias !55940
  br label %bb.x

bb.x:                                             ; preds = %.noexc135, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i
  %.pre-phi222 = phi i64 [ %i.dy, %.noexc135 ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.dx, %.noexc135 ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ] ; 2 uses
  %i.ea = add i64 %.pre-phi, 1
  store i64 %i.ea, ptr %i.ds, align 8, !noalias !55939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.pre-phi, ptr %.sroa.4101.0..sroa_idx, align 8
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.pre-phi222, ptr %.sroa.5102.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8, !noalias !55942
  call void @llvm.experimental.noalias.scope.decl(metadata !55943)
  %i.eb = icmp ult i64 %i.dj, 192153584101141163
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp eq i64 %i.dj, 0
  br i1 %i.ec, label %._crit_edge.i.i.i.i.thread, label %.preheader.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ed = load i64, ptr %i.i, align 8, !range !43, !noundef !28
  br label %.loopexit

.preheader.i.i:                                   ; preds = %bb.x, %bb.y
  %.sroa.0.0.i.i = phi i64 [ %i.eg, %bb.y ], [ 0, %bb.x ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.0.0.i.i ; 3 uses
  %i.ef = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB7_3VecTRSjjNtNtB9_6string6StringEE6retainNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1l_8Justfile13public_groupss_0E0B1n_(ptr nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef align 8 dereferenceable(48) %i.ee) #76
          to label %.noexc138 unwind label %bb.ag

.noexc138:                                        ; preds = %.preheader.i.i
  br i1 %i.ef, label %bb.y, label %bb.z, !prof !29

bb.y:                                             ; preds = %.noexc138
  %i.eg = add nuw nsw i64 %.sroa.0.0.i.i, 1       ; 2 uses
  %i.eh = icmp eq i64 %i.eg, %i.dj
  br i1 %i.eh, label %.loopexit84.thread254, label %.preheader.i.i

.loopexit84.thread254:                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ei = load i64, ptr %i.i, align 8, !range !43, !noundef !28
  %.idx255 = mul nuw nsw i64 %i.dj, 48
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx255
  br label %.lr.ph.i.i.i.i139.preheader

bb.z:                                             ; preds = %.noexc138
  %i.ek = getelementptr i8, ptr %i.ee, i64 24
  %.val10.i.i = load i64, ptr %i.ek, align 8, !alias.scope !55944, !noalias !55945 ; 2 uses
  %i.el = icmp eq i64 %.val10.i.i, 0
  br i1 %i.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr i8, ptr %i.ee, i64 32
  %.val11.i.i = load ptr, ptr %i.em, align 8, !noalias !55945, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i, i64 noundef %.val10.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !55946
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.8.033.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1 ; 2 uses
  %i.en = icmp samesign ult i64 %.sroa.8.033.i.i, %i.dj
  br i1 %i.en, label %.lr.ph.i.i137, label %.loopexit84

.lr.ph.i.i137:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i
  %.sroa.8.035.i.i = phi i64 [ %.sroa.8.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i ], [ %.sroa.8.033.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i ] ; 3 uses
  %.sroa.15.034.i.i = phi i64 [ %.sroa.15.1.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i ], [ %.sroa.0.0.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i ] ; 6 uses
  %i.eo = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.8.035.i.i ; 5 uses
  %i.ep = invoke fastcc noundef zeroext i1 @_RNCINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB7_3VecTRSjjNtNtB9_6string6StringEE6retainNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB1l_8Justfile13public_groupss_0E0B1n_(ptr nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef align 8 dereferenceable(48) %i.eo)
          to label %bb.ab unwind label %bb.af, !noalias !55947

bb.ab:                                            ; preds = %.lr.ph.i.i137
  br i1 %i.ep, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eq = getelementptr i8, ptr %i.eo, i64 24
  %.val.i.i = load i64, ptr %i.eq, align 8, !alias.scope !55944, !noalias !55945 ; 2 uses
  %i.er = icmp eq i64 %.val.i.i, 0
  br i1 %i.er, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = getelementptr i8, ptr %i.eo, i64 32
  %.val9.i.i = load ptr, ptr %i.es, align 8, !noalias !55945, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !55948
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.et = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.15.034.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.et, ptr noundef nonnull align 8 dereferenceable(48) %i.eo, i64 48, i1 false), !noalias !55945
  %i.eu = add i64 %.sroa.15.034.i.i, 1
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sroa.15.1.i.i = phi i64 [ %i.eu, %bb.ae ], [ %.sroa.15.034.i.i, %bb.ac ], [ %.sroa.15.034.i.i, %bb.ad ] ; 2 uses
  %.sroa.8.0.i.i = add nuw nsw i64 %.sroa.8.035.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %.sroa.8.0.i.i, %i.dj
  br i1 %exitcond.not.i.i, label %.loopexit84, label %.lr.ph.i.i137

bb.af:                                            ; preds = %.lr.ph.i.i137
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = sub nuw nsw i64 %i.dj, %.sroa.8.035.i.i ; 2 uses
  %i.ex = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %.sroa.15.034.i.i
  %i.ey = mul nuw nsw i64 %i.ew, 48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ex, ptr nonnull align 8 %i.eo, i64 %i.ey, i1 false), !noalias !55949
  %i.ez = add i64 %i.ew, %.sroa.15.034.i.i
  store i64 %i.ez, ptr %i.k, align 8, !alias.scope !55947, !noalias !55950
  br label %.body

bb.ag:                                            ; preds = %.preheader.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.af, %bb.ag
  %eh.lpad-body = phi { ptr, i32 } [ %i.fa, %bb.ag ], [ %i.ev, %bb.af ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e) #72
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit

.loopexit84:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit14.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTRSjjNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i
end_hunk_4
begin_hunk_5_@_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule:bb.a

bb.g:                                             ; preds = %._crit_edge81
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i21, i64 1600
  %i.bd = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i29, 12
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.4.0.i.ph.i.i29
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !59062, !nonnull !28, !noundef !28
  %i.bg = add i64 %.sroa.3.0.i.i20, -1
  br label %.preheader.i19

bb.h:                                             ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE3geteEB1e_.exit, %bb.i
  %.sroa.05.1 = phi ptr [ %i.aj, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReNtNtCskXtk6F4WjxZ_4just8justfile8JustfileE3geteEB1e_.exit ], [ %i.bk, %bb.i ] ; 2 uses
  %i.bh = icmp eq ptr %i.g, %i.e
  br i1 %i.bh, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReINtNtCskXtk6F4WjxZ_4just5alias5AliasNtNtB1f_10modulepath10ModulepathEE3geteEB1f_.exit.thread, label %.lr.ph

bb.i:                                             ; preds = %.lr.ph80
  %i.bi = icmp samesign ult i64 %.sroa.8.0.i.i.i2278, 11
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [128 x i8], ptr %.sroa.0.0.i.i21, i64 %.sroa.8.0.i.i.i2278
  %i.bk = tail call fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj) ; 2 uses
  %.not14 = icmp eq ptr %i.bk, null
  br i1 %.not14, label %bb.j, label %bb.h, !prof !44

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapReINtNtCskXtk6F4WjxZ_4just5alias5AliasNtNtB1f_10modulepath10ModulepathEE3geteEB1f_.exit.thread: ; preds = %bb.h, %.loopexit, %._crit_edge81, %bb.a
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ null, %._crit_edge81 ], [ %.sroa.05.1, %bb.h ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @976) #75
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8settingsNtB2_8Settings13shell_command(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8settingsNtB2_8Settings5shell(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %2)
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx18, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtNtNtNtCsaKJjC64KgbL_3std3sys7process4unix6commonNtB4_7Command3new(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit unwind label %bb.f

_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.g = icmp ult i64 %.sroa.7.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.g)
  %.idx = shl nuw nsw i64 %.sroa.7.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 %.idx
  %i.i = icmp sgt i64 %.sroa.0.0.copyload, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.j, label %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge, label %.lr.ph

_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.520.031, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59069
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit

.lr.ph:                                           ; preds = %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit, %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit
  %.sroa.520.031 = phi ptr [ %i.k, %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit ], [ %.sroa.5.0.copyload, %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit ] ; 3 uses
  %i.p = load ptr, ptr %.sroa.520.031, align 8, !noalias !59070, !nonnull !28, !noundef !28
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.520.031, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !59070, !noundef !28
  invoke void @_RNvMs_NtNtNtNtCsaKJjC64KgbL_3std3sys7process4unix6commonNtB4_7Command3arg(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit unwind label %bb.b

_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge: ; preds = %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit, %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveReEB5_.exit
  %i.s = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit17, label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge
  %i.t = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59071
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit17

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(200) %i.a) #72
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit17: ; preds = %bb.d, %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command3argReECskXtk6F4WjxZ_4just.exit._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit
  %.pn.pn24 = phi { ptr, i32 } [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterReEECskXtk6F4WjxZ_4just.exit ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  resume { ptr, i32 } %.pn.pn24

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8settingsNtB2_8Settings5shell(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.c = load i64, ptr %i.a, align 8, !range !37, !noundef !28
  %.not = icmp eq i64 %i.c, -1
  %i.d = load i64, ptr %i.b, align 8, !range !37, !noundef !28
  %.not4 = icmp eq i64 %i.d, -1                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.h = load i64, ptr %i.g, align 8, !noundef !28 ; 4 uses
  br i1 %.not4, label %bb.p, label %bb.m

bb.c:                                             ; preds = %bb.a
  br i1 %.not4, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.l = load i64, ptr %i.k, align 8, !noundef !28 ; 9 uses
  %i.m = shl nuw i64 %i.l, 4                      ; 2 uses
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59142
  %i.o = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 8) #70, !noalias !59142 ; 6 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter76 = and i64 %i.l, 1
  %i.q = icmp eq i64 %i.l, 1
  br i1 %i.q, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter81 = and i64 %i.l, -2
  br label %.preheader.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.m) #71, !noalias !59143
  unreachable

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %i.r = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ad, %.preheader.i.i.i ] ; 4 uses
  %niter82 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter82.next.1, %.preheader.i.i.i ]
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val15.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !noalias !59144, !nonnull !28, !noundef !28
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val16.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !59144, !noundef !28
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.r ; 2 uses
  store ptr %.val15.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !59145, !captures !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %.val16.i.i.i.i.i.i, ptr %i.w, align 8, !noalias !59146
  %i.x = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val15.i.i.i.i.i.i.1 = load ptr, ptr %i.z, align 8, !noalias !59144, !nonnull !28, !noundef !28
  %i.aa = getelementptr i8, ptr %i.y, i64 16
  %.val16.i.i.i.i.i.i.1 = load i64, ptr %i.aa, align 8, !noalias !59144, !noundef !28
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.x ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.1, ptr %i.ab, align 8, !noalias !59145, !captures !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %.val16.i.i.i.i.i.i.1, ptr %i.ac, align 8, !noalias !59146
  %i.ad = add nuw i64 %i.r, 2                     ; 2 uses
  %niter82.next.1 = add nuw i64 %niter82, 2       ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa, label %.preheader.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = load i64, ptr %i.ae, align 8, !range !37, !noundef !28
  %.not5 = icmp eq i64 %i.af, -1
  br i1 %.not5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !28 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.an = load i64, ptr %i.am, align 8, !noundef !28 ; 9 uses
  %i.ao = shl nuw i64 %i.an, 4                    ; 2 uses
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59147
  %i.aq = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, 9) 8) #70, !noalias !59147 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.j, label %.preheader.i.i.i9.preheader

.preheader.i.i.i9.preheader:                      ; preds = %bb.i
  %xtraiter83 = and i64 %i.an, 1
  %i.as = icmp eq i64 %i.an, 1
  br i1 %i.as, label %.preheader.i.i.i9.epil.preheader, label %.preheader.i.i.i9.preheader.new

.preheader.i.i.i9.preheader.new:                  ; preds = %.preheader.i.i.i9.preheader
  %unroll_iter88 = and i64 %i.an, -2
  br label %.preheader.i.i.i9

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ao) #71, !noalias !59148
  unreachable

.preheader.i.i.i9:                                ; preds = %.preheader.i.i.i9, %.preheader.i.i.i9.preheader.new
  %i.at = phi i64 [ 0, %.preheader.i.i.i9.preheader.new ], [ %i.bf, %.preheader.i.i.i9 ] ; 4 uses
  %niter89 = phi i64 [ 0, %.preheader.i.i.i9.preheader.new ], [ %niter89.next.1, %.preheader.i.i.i9 ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val15.i.i.i.i.i.i10 = load ptr, ptr %i.av, align 8, !noalias !59149, !nonnull !28, !noundef !28
  %i.aw = getelementptr i8, ptr %i.au, i64 16
  %.val16.i.i.i.i.i.i11 = load i64, ptr %i.aw, align 8, !noalias !59149, !noundef !28
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.at ; 2 uses
  store ptr %.val15.i.i.i.i.i.i10, ptr %i.ax, align 8, !noalias !59150, !captures !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %.val16.i.i.i.i.i.i11, ptr %i.ay, align 8, !noalias !59151
  %i.az = or disjoint i64 %i.at, 1                ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val15.i.i.i.i.i.i10.1 = load ptr, ptr %i.bb, align 8, !noalias !59149, !nonnull !28, !noundef !28
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %.val16.i.i.i.i.i.i11.1 = load i64, ptr %i.bc, align 8, !noalias !59149, !noundef !28
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  store ptr %.val15.i.i.i.i.i.i10.1, ptr %i.bd, align 8, !noalias !59150, !captures !36
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.val16.i.i.i.i.i.i11.1, ptr %i.be, align 8, !noalias !59151
  %i.bf = add nuw i64 %i.at, 2                    ; 2 uses
  %niter89.next.1 = add nuw i64 %niter89, 2       ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa, label %.preheader.i.i.i9

bb.k:                                             ; preds = %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59152
  %i.bg = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59152 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.l, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #71
  unreachable

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split: ; preds = %bb.k, %bb.p
  %.sink = phi ptr [ %i.cv, %bb.p ], [ %i.bg, %bb.k ] ; 2 uses
  %.sink70.ph = phi ptr [ %i.f, %bb.p ], [ @663, %bb.k ]
  %.sink68.ph = phi i64 [ %i.h, %bb.p ], [ 2, %bb.k ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, ptr noundef nonnull align 8 dereferenceable(16) @981, i64 16, i1 false)
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i9
  %lcmp.mod86.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod86.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %.preheader.i.i.i9.epil.preheader

.preheader.i.i.i9.epil.preheader:                 ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa, %.preheader.i.i.i9.preheader
  %.epil.init85 = phi i64 [ 0, %.preheader.i.i.i9.preheader ], [ %i.bf, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod87 = trunc i64 %i.an to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %.epil.init85 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %.val15.i.i.i.i.i.i10.epil = load ptr, ptr %i.bj, align 8, !noalias !59149, !nonnull !28, !noundef !28
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val16.i.i.i.i.i.i11.epil = load i64, ptr %i.bk, align 8, !noalias !59149, !noundef !28
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.epil.init85 ; 2 uses
  store ptr %.val15.i.i.i.i.i.i10.epil, ptr %i.bl, align 8, !noalias !59150, !captures !36
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.val16.i.i.i.i.i.i11.epil, ptr %i.bm, align 8, !noalias !59151
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod79.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod79.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa, %.preheader.i.i.i.preheader
  %.epil.init78 = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ad, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ] ; 2 uses
  %lcmp.mod80 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod80)
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.epil.init78 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %.val15.i.i.i.i.i.i.epil = load ptr, ptr %i.bo, align 8, !noalias !59144, !nonnull !28, !noundef !28
  %i.bp = getelementptr i8, ptr %i.bn, i64 16
  %.val16.i.i.i.i.i.i.epil = load i64, ptr %i.bp, align 8, !noalias !59144, !noundef !28
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.epil.init78 ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.epil, ptr %i.bq, align 8, !noalias !59145, !captures !36
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %.val16.i.i.i.i.i.i.epil, ptr %i.br, align 8, !noalias !59146
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa: ; preds = %.preheader.i.i.i22
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %.preheader.i.i.i22.epil.preheader

.preheader.i.i.i22.epil.preheader:                ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa, %.preheader.i.i.i22.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i22.preheader ], [ %i.cu, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ] ; 2 uses
  %lcmp.mod75 = trunc i64 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %.epil.init ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val15.i.i.i.i.i.i23.epil = load ptr, ptr %i.bt, align 8, !noalias !59153, !nonnull !28, !noundef !28
  %i.bu = getelementptr i8, ptr %i.bs, i64 16
  %.val16.i.i.i.i.i.i24.epil = load i64, ptr %i.bu, align 8, !noalias !59153, !noundef !28
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.i23.epil, ptr %i.bv, align 8, !noalias !59154, !captures !36
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %.val16.i.i.i.i.i.i24.epil, ptr %i.bw, align 8, !noalias !59155
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32: ; preds = %.preheader.i.i.i22.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa, %.preheader.i.i.i.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa, %.preheader.i.i.i9.epil.preheader, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split, %bb.h, %bb.d, %bb.m
  %.sink70 = phi ptr [ @663, %bb.d ], [ %.sink70.ph, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split ], [ %i.ah, %bb.h ], [ %i.f, %bb.m ], [ %i.ah, %.preheader.i.i.i9.epil.preheader ], [ @663, %.preheader.i.i.i.epil.preheader ], [ %i.ah, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ], [ @663, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ], [ %i.f, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ], [ %i.f, %.preheader.i.i.i22.epil.preheader ]
  %.sink68 = phi i64 [ 2, %bb.d ], [ %.sink68.ph, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split ], [ %i.aj, %bb.h ], [ %i.h, %bb.m ], [ %i.aj, %.preheader.i.i.i9.epil.preheader ], [ 2, %.preheader.i.i.i.epil.preheader ], [ %i.aj, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ], [ 2, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ], [ %i.h, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ], [ %i.h, %.preheader.i.i.i22.epil.preheader ]
  %.sink66 = phi i64 [ %i.l, %bb.d ], [ 1, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split ], [ %i.an, %bb.h ], [ %i.cc, %bb.m ], [ %i.an, %.preheader.i.i.i9.epil.preheader ], [ %i.l, %.preheader.i.i.i.epil.preheader ], [ %i.an, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ], [ %i.l, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ], [ %i.cc, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ], [ %i.cc, %.preheader.i.i.i22.epil.preheader ] ; 2 uses
  %.sroa.10.0.i10.i13.sink = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.sink, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split ], [ inttoptr (i64 8 to ptr), %bb.h ], [ inttoptr (i64 8 to ptr), %bb.m ], [ %i.aq, %.preheader.i.i.i9.epil.preheader ], [ %i.o, %.preheader.i.i.i.epil.preheader ], [ %i.aq, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit.unr-lcssa ], [ %i.o, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit73.unr-lcssa ], [ %i.cf, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa ], [ %i.cf, %.preheader.i.i.i22.epil.preheader ]
  store ptr %.sink70, ptr %0, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink68, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink66, ptr %i.by, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i10.i13.sink, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink66, ptr %.sroa.541.0..sroa_idx, align 8
  ret void

bb.m:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !28 ; 9 uses
  %i.cd = shl nuw i64 %i.cc, 4                    ; 2 uses
  %i.ce = icmp eq i64 %i.cc, 0
  br i1 %i.ce, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59156
  %i.cf = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.cd, i64 noundef range(i64 1, 9) 8) #70, !noalias !59156 ; 6 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.o, label %.preheader.i.i.i22.preheader

.preheader.i.i.i22.preheader:                     ; preds = %bb.n
  %xtraiter = and i64 %i.cc, 1
  %i.ch = icmp eq i64 %i.cc, 1
  br i1 %i.ch, label %.preheader.i.i.i22.epil.preheader, label %.preheader.i.i.i22.preheader.new

.preheader.i.i.i22.preheader.new:                 ; preds = %.preheader.i.i.i22.preheader
  %unroll_iter = and i64 %i.cc, -2
  br label %.preheader.i.i.i22

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.cd) #71, !noalias !59157
  unreachable

.preheader.i.i.i22:                               ; preds = %.preheader.i.i.i22, %.preheader.i.i.i22.preheader.new
  %i.ci = phi i64 [ 0, %.preheader.i.i.i22.preheader.new ], [ %i.cu, %.preheader.i.i.i22 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i22.preheader.new ], [ %niter.next.1, %.preheader.i.i.i22 ]
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val15.i.i.i.i.i.i23 = load ptr, ptr %i.ck, align 8, !noalias !59153, !nonnull !28, !noundef !28
  %i.cl = getelementptr i8, ptr %i.cj, i64 16
  %.val16.i.i.i.i.i.i24 = load i64, ptr %i.cl, align 8, !noalias !59153, !noundef !28
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.ci ; 2 uses
  store ptr %.val15.i.i.i.i.i.i23, ptr %i.cm, align 8, !noalias !59154, !captures !36
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %.val16.i.i.i.i.i.i24, ptr %i.cn, align 8, !noalias !59155
  %i.co = or disjoint i64 %i.ci, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ca, i64 %i.co ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %.val15.i.i.i.i.i.i23.1 = load ptr, ptr %i.cq, align 8, !noalias !59153, !nonnull !28, !noundef !28
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.val16.i.i.i.i.i.i24.1 = load i64, ptr %i.cr, align 8, !noalias !59153, !noundef !28
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.co ; 2 uses
  store ptr %.val15.i.i.i.i.i.i23.1, ptr %i.cs, align 8, !noalias !59154, !captures !36
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i64 %.val16.i.i.i.i.i.i24.1, ptr %i.ct, align 8, !noalias !59155
  %i.cu = add nuw i64 %i.ci, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.loopexit74.unr-lcssa, label %.preheader.i.i.i22

bb.p:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59158
  %i.cv = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59158 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.q, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvYB2P_INtNtB1J_7convert5AsRefeE6as_refEE9from_iterCskXtk6F4WjxZ_4just.exit32.sink.split

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #71
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9completerNtB2_9Completer17candidate_recipes(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1472) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [120 x i8], align 8               ; 12 uses
  %i.m = alloca [120 x i8], align 8               ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [120 x i8], align 8               ; 12 uses
  %i.q = alloca [120 x i8], align 8               ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 540
  %.val30 = load i8, ptr %i.w, align 4            ; 2 uses
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile24public_recipes_recursive(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %i.v, i8 %.val30)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.at, %.body48, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit61.i, %bb.ar, %bb.d, %.body59, %bb.b
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %bb.d ], [ %.pn48.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit61.i ], [ %i.x, %bb.b ], [ %.pn23.pn, %.body59 ], [ %.pn48.i, %bb.ar ], [ %.pn.pn, %.body48 ], [ %.pn.pn, %bb.at ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsgYJ0xFPoqCG_13clap_complete6engine9candidate19CompletionCandidateEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #72
  resume { ptr, i32 } %.pn23.pn.pn

bb.b:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.aa = load i64, ptr %i.r, align 8, !range !43, !noundef !28 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !28 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ad)
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1464
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  br label %bb.f

.body59:                                          ; preds = %bb.cl, %bb.cj, %bb.cf, %bb.bv, %bb.bw, %bb.e
  %.pn23.pn = phi { ptr, i32 } [ %lpad.phi125, %bb.bv ], [ %lpad.phi125, %bb.bw ], [ %i.at, %bb.e ], [ %i.lu, %bb.cf ], [ %i.mc, %bb.cl ], [ %i.ly, %bb.cj ] ; 2 uses
  %i.ar = icmp eq i64 %i.aa, 0
  br i1 %i.ar, label %.body, label %bb.d

bb.d:                                             ; preds = %.body59
  %i.as = shl nuw i64 %i.aa, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59292
  br label %.body

bb.e:                                             ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body59

bb.f:                                             ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit68
  %.sroa.5.0198 = phi ptr [ %i.z, %.lr.ph ], [ %i.au, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit68 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.5.0198, i64 8 ; 2 uses
  %i.av = load ptr, ptr %.sroa.5.0198, align 8, !noalias !59293, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !37, !alias.scope !59294, !noundef !28
  %.not.i = icmp eq i64 %i.ax, -1
  br i1 %.not.i, label %bb.g, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe11recipe_path.exit, !prof !44

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1258) #75
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.g
  unreachable

._crit_edge:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit68, %bb.c
  %i.ay = icmp eq i64 %i.aa, 0
  br i1 %i.ay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.az = shl nuw i64 %i.aa, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59295
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36: ; preds = %bb.h, %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 526
  %i.bb = load i8, ptr %i.ba, align 2, !range !40, !noundef !28
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtCskXtk6F4WjxZ_4just5alias5AliasINtNtBI_4sync3ArcNtNtB1w_6recipe6RecipeEERNtNtB1w_10modulepath10ModulepathEEEB1w_.exit39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTRINtNtCskXtk6F4WjxZ_4just5alias5AliasINtNtBI_4sync3ArcNtNtB1w_6recipe6RecipeEERNtNtB1w_10modulepath10ModulepathEEEB1w_.exit39: ; preds = %._crit_edge202, %bb.az, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1u_.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !59296
  store i64 0, ptr %i.h, align 8, !noalias !59296
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bd, align 8, !noalias !59296
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store i64 0, ptr %i.be, align 8, !noalias !59296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !59296
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !59296
  %i.bf = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59296 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.j, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i, !prof !26

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #71
          to label %.noexc.i unwind label %bb.k, !noalias !59297

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit61.i

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.i
  store ptr %i.v, ptr %i.bf, align 8, !noalias !59296
  store i64 1, ptr %i.g, align 8, !noalias !59296
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.bf, ptr %i.bi, align 8, !noalias !59296
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.n

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i
  %.sroa.084.0.copyload = load i64, ptr %i.h, align 8, !noalias !59298 ; 4 uses
  %.sroa.485.0.copyload = load ptr, ptr %i.bd, align 8, !noalias !59298 ; 5 uses
  %.sroa.586.0.copyload = load i64, ptr %i.be, align 8, !noalias !59298 ; 3 uses
  %.val51.i = load i64, ptr %i.g, align 8, !noalias !59296 ; 2 uses
  %i.bm = icmp eq i64 %.val51.i, 0
  br i1 %i.bm, label %bb.as, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val52.i = load ptr, ptr %i.bi, align 8, !noalias !59296, !nonnull !28, !noundef !28
  %i.bn = shl nuw i64 %.val51.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !59297
  br label %bb.as

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i
  %i.bo = phi ptr [ %i.bf, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %i.ie, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 2 uses
  %i.bp = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %i.hj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 3 uses
  %i.bq = phi i64 [ 0, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %i.hk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 3 uses
  %i.br = phi ptr [ %i.bf, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %i.if, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 2 uses
  %i.bs = phi i64 [ 1, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit.i ], [ %.pr.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB22_.exit68.i ] ; 2 uses
  %i.bt = add nsw i64 %i.bs, -1                   ; 3 uses
  store i64 %i.bt, ptr %i.bj, align 8, !noalias !59296
end_hunk_5
begin_hunk_6_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand11list_module:bb.a
bb.hp:                                            ; preds = %bb.ho
  %i.arf = icmp eq i64 %i.aqy, 0
  br i1 %i.arf, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hr, %bb.hp
  %i.arg = icmp eq i64 %i.arb, %i.aqw
  br i1 %i.arg, label %bb.hu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i846

bb.hr:                                            ; preds = %bb.hp
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqy
  %i.ari = load i8, ptr %i.arh, align 1, !alias.scope !65545, !noalias !65544, !noundef !28
  %i.arj = icmp sgt i8 %i.ari, -65
  br i1 %i.arj, label %bb.hq, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i846: ; preds = %bb.hq
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.arb
  %i.arl = load i8, ptr %i.ark, align 1, !alias.scope !65545, !noalias !65544, !noundef !28
  %i.arm = icmp sgt i8 %i.arl, -65
  br i1 %i.arm, label %bb.hu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i846, %bb.hr, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit843
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aqu, i64 noundef %i.aqw, i64 noundef %i.aqy, i64 noundef %i.arb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc847 unwind label %bb.hs

.noexc847:                                        ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845
  unreachable

bb.hs:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i845
  %i.arn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.01825.0.copyload.off = add i64 %.sroa.01825.0.copyload, -1
  %switch = icmp ult i64 %.sroa.01825.0.copyload.off, -2
  br i1 %switch, label %bb.ht, label %.body853

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51826.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.51826.0.copyload, i64 noundef %.sroa.01825.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !65546
  br label %.body853

bb.hu:                                            ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i846, %bb.hq, %bb.ho
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqu, i64 %i.aqy
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqs, i64 24
  %i.arq = load ptr, ptr %i.arp, align 8, !nonnull !28, !noundef !28
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !65547)
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aql, i64 16 ; 2 uses
  %i.art = load i64, ptr %i.ars, align 8, !alias.scope !65547, !noalias !65548, !noundef !28 ; 3 uses
  %i.aru = load i64, ptr %i.aql, align 8, !range !43, !alias.scope !65547, !noalias !65548, !noundef !28
  %i.arv = icmp eq i64 %i.art, %i.aru
  br i1 %i.arv, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aql)
          to label %bb.hy unwind label %bb.hw, !noalias !65548

bb.hw:                                            ; preds = %bb.hv
  %i.arw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.arx = icmp sgt i64 %.sroa.01825.0.copyload, 0
  br i1 %i.arx, label %bb.hx, label %.body853

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51826.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.51826.0.copyload, i64 noundef %.sroa.01825.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !65549
  br label %.body853

bb.hy:                                            ; preds = %bb.hv, %bb.hu
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  %i.arz = load ptr, ptr %i.ary, align 8, !alias.scope !65547, !noalias !65548, !nonnull !28, !noundef !28
  %i.asa = getelementptr inbounds nuw [64 x i8], ptr %i.arz, i64 %i.art ; 8 uses
  store i64 %.sroa.01825.0.copyload, ptr %i.asa, align 8, !noalias !65547
  %.sroa.51814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  store ptr %.sroa.51826.0.copyload, ptr %.sroa.51814.0..sroa_idx, align 8, !noalias !65547
  %.sroa.61817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  store i64 %.sroa.71827.0.copyload, ptr %.sroa.61817.0..sroa_idx, align 8, !noalias !65547
  %.sroa.61820.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.61820.0..sroa_idx, align 8, !noalias !65547
  %.sroa.71821.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 32
  store i64 0, ptr %.sroa.71821.0..sroa_idx, align 8, !noalias !65547
  %.sroa.81822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 40
  store ptr %i.aro, ptr %.sroa.81822.0..sroa_idx, align 8, !noalias !65547
  %.sroa.91823.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 48
  store i64 %i.ara, ptr %.sroa.91823.0..sroa_idx, align 8, !noalias !65547
  %.sroa.101824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.asa, i64 56
  store ptr %i.arr, ptr %.sroa.101824.0..sroa_idx, align 8, !noalias !65547
  %i.asb = add i64 %i.art, 1
  store i64 %i.asb, ptr %i.ars, align 8, !alias.scope !65547, !noalias !65548
  %i.asc = icmp eq ptr %i.aqk, %i.acn
  br i1 %i.asc, label %._crit_edge3004, label %bb.hl

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit857: ; preds = %bb.ic, %bb.ib, %bb.hz
  %.pn624.pn = phi { ptr, i32 } [ %i.asd, %bb.hz ], [ %.pn624, %bb.ib ], [ %.pn624, %bb.ic ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtB4_6option6OptionNtNtBK_6string6StringEINtNtBK_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB2D_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bb) #72
          to label %bb.jg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hz:                                            ; preds = %._crit_edge3004
  %i.asd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit857

bb.ia:                                            ; preds = %._crit_edge3004
  %i.ase = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.asf = load ptr, ptr %i.ase, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.asg = load i64, ptr %i.ba, align 8, !range !43, !noundef !28 ; 4 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.asi = load i64, ptr %i.ash, align 8, !noundef !28 ; 3 uses
  %i.asj = icmp ult i64 %i.asi, 1152921504606846976
  call void @llvm.assume(i1 %i.asj)
  %.idx3175 = shl nuw nsw i64 %i.asi, 3
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asf, i64 %.idx3175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.asl = icmp eq i64 %i.asi, 0
  br i1 %i.asl, label %._crit_edge3012, label %.lr.ph3011

.lr.ph3011:                                       ; preds = %bb.ia
  %i.asm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %.sroa.03.sroa.4.0..sroa_idx.i1219 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %.sroa.03.sroa.5.0..sroa_idx.i1220 = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 3 uses
  %.sroa.44.0..sroa_idx.i1221 = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.aso = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx7.sroa_idx.i4966 = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  br label %bb.ie

bb.ib:                                            ; preds = %bb.om, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit1239, %bb.id
  %.pn624 = phi { ptr, i32 } [ %i.asr, %bb.id ], [ %i.bow, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit1239 ], [ %lpad.phi2261, %bb.om ] ; 2 uses
  %i.asp = icmp eq i64 %i.asg, 0
  br i1 %i.asp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit857, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.asq = shl nuw i64 %i.asg, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asf, i64 noundef %i.asq, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !65550
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit857

bb.id:                                            ; preds = %bb.ig
  %i.asr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ie:                                            ; preds = %.lr.ph3011, %bb.on
  %.sroa.51831.03009 = phi ptr [ %i.asf, %.lr.ph3011 ], [ %i.ass, %bb.on ] ; 2 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %.sroa.51831.03009, i64 8 ; 2 uses
  %i.ast = load ptr, ptr %.sroa.51831.03009, align 8, !noalias !65551, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.asu = getelementptr i8, ptr %i.ast, i64 32
  %.val687 = load ptr, ptr %i.asu, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.asv = getelementptr i8, ptr %i.ast, i64 40
  %.val688 = load i64, ptr %i.asv, align 8, !noundef !28 ; 7 uses
  %i.asw = shl nuw i64 %.val688, 4                ; 5 uses
  %i.asx = icmp eq i64 %.val688, 0
  br i1 %i.asx, label %bb.of, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !65552
  %i.asy = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.asw, i64 noundef range(i64 1, 9) 8) #70, !noalias !65552 ; 8 uses
  %i.asz = icmp eq ptr %i.asy, null
  br i1 %i.asz, label %bb.ig, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %bb.if
  %xtraiter8731 = and i64 %.val688, 1
  %i.ata = icmp eq i64 %.val688, 1
  br i1 %i.ata, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter8735 = and i64 %.val688, -2
  br label %.preheader.i.i.i.i

bb.ig:                                            ; preds = %bb.if
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.asw) #71
          to label %.noexc858 unwind label %bb.id

.noexc858:                                        ; preds = %bb.ig
  unreachable

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %i.atb = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.atn, %.preheader.i.i.i.i ] ; 4 uses
  %niter8736 = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter8736.next.1, %.preheader.i.i.i.i ]
  %i.atc = getelementptr inbounds nuw [104 x i8], ptr %.val687, i64 %i.atb ; 2 uses
  %i.atd = getelementptr i8, ptr %i.atc, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.atd, align 8, !noalias !65553, !nonnull !28, !noundef !28
  %i.ate = getelementptr i8, ptr %i.atc, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.ate, align 8, !noalias !65553, !noundef !28
  %i.atf = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %i.atb ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i, ptr %i.atf, align 8, !noalias !65554, !captures !36
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.atg, align 8, !noalias !65555
  %i.ath = or disjoint i64 %i.atb, 1              ; 2 uses
  %i.ati = getelementptr inbounds nuw [104 x i8], ptr %.val687, i64 %i.ath ; 2 uses
  %i.atj = getelementptr i8, ptr %i.ati, i64 8
  %.val15.i.i.i.i.i.i.i.1 = load ptr, ptr %i.atj, align 8, !noalias !65553, !nonnull !28, !noundef !28
  %i.atk = getelementptr i8, ptr %i.ati, i64 16
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.atk, align 8, !noalias !65553, !noundef !28
  %i.atl = getelementptr inbounds nuw [16 x i8], ptr %i.asy, i64 %i.ath ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.1, ptr %i.atl, align 8, !noalias !65554, !captures !36
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.atm, align 8, !noalias !65555
  %i.atn = add nuw i64 %i.atb, 2                  ; 2 uses
  %niter8736.next.1 = add nuw i64 %niter8736, 2   ; 2 uses
  %niter8736.ncmp.1 = icmp eq i64 %niter8736.next.1, %unroll_iter8735
  br i1 %niter8736.ncmp.1, label %.lr.ph3007.preheader.unr-lcssa, label %.preheader.i.i.i.i

._crit_edge3012:                                  ; preds = %bb.on, %bb.ia
  %i.ato = icmp eq i64 %i.asg, 0
  br i1 %i.ato, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859, label %bb.ih

bb.ih:                                            ; preds = %._crit_edge3012
  %i.atp = shl nuw i64 %i.asg, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.asf, i64 noundef %i.atp, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !65556
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859: ; preds = %bb.ih, %._crit_edge3012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  br i1 %i.ams, label %bb.il, label %bb.ii

bb.ii:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !65557
  %.idx2203 = mul nuw nsw i64 %4, 24              ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !65558
  %i.atq = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %.idx2203, i64 noundef range(i64 1, 9) 8) #70, !noalias !65558 ; 3 uses
  %i.atr = icmp eq ptr %i.atq, null
  br i1 %i.atr, label %bb.ij, label %.preheader.i.i.preheader.i

bb.ij:                                            ; preds = %bb.ii
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx2203) #71
          to label %.noexc863 unwind label %bb.im

.noexc863:                                        ; preds = %bb.ij
  unreachable

.preheader.i.i.preheader.i:                       ; preds = %bb.ii
  store i64 %4, ptr %i.w, align 8, !noalias !65557
  %i.ats = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.atq, ptr %i.ats, align 8, !noalias !65557
  %i.att = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65559)
  call void @llvm.experimental.noalias.scope.decl(metadata !65560)
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ik, %.preheader.i.i.preheader.i
  %.val10.i.i.i.i.i.i.i = phi i64 [ %i.atw, %bb.ik ], [ 0, %.preheader.i.i.preheader.i ] ; 4 uses
  %i.atu = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %.val10.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !65561
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.atu)
          to label %bb.ik unwind label %.body.i, !noalias !65562

bb.ik:                                            ; preds = %.preheader.i.i.i
  %i.atv = getelementptr inbounds nuw [24 x i8], ptr %i.atq, i64 %.val10.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.atv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !65563
  %i.atw = add nuw nsw i64 %.val10.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !65561
  %i.atx = icmp eq i64 %i.atw, %4
  br i1 %i.atx, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtB2B_6cloned6ClonedINtNtNtB18_5slice4iter4IterB1F_EENcNtB13_4Some0EE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader.i.i.i

.body.i:                                          ; preds = %.preheader.i.i.i
  %i.aty = landingpad { ptr, i32 }
          cleanup
  store i64 %.val10.i.i.i.i.i.i.i, ptr %i.att, align 8, !alias.scope !65564, !noalias !65565
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtBG_6string6StringEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #72, !noalias !65557
  br label %.body864

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB8_6string6StringEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter8adapters3map3MapINtNtB2B_6cloned6ClonedINtNtNtB18_5slice4iter4IterB1F_EENcNtB13_4Some0EE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %bb.ik
  store i64 %4, ptr %i.att, align 8, !alias.scope !65564, !noalias !65565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !65557
  %.phi.trans.insert3903 = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.pre3904 = load i64, ptr %.phi.trans.insert3903, align 8
  %.phi.trans.insert3905.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.pre3906.pre = load ptr, ptr %.phi.trans.insert3905.phi.trans.insert, align 8
  %.pre6360 = load i64, ptr %i.ax, align 8, !range !43
  br label %bb.iy

bb.il:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1u_.exit859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile13public_groups(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %5, i8 %.val672)
          to label %.loopexit2256 unwind label %bb.im

.body864:                                         ; preds = %bb.oe, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i, %bb.jb, %bb.im, %.body.i
  %.pn617.pn = phi { ptr, i32 } [ %i.bmc, %bb.oe ], [ %.pn612, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i ], [ %i.atz, %bb.im ], [ %i.aty, %.body.i ], [ %.pn612, %bb.jb ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapINtNtB4_6option6OptionNtNtBK_6string6StringEINtNtBK_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEEB2D_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #72
          to label %bb.jg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.im:                                            ; preds = %bb.ij, %bb.il
  %i.atz = landingpad { ptr, i32 }
          cleanup
  br label %.body864

.loopexit2256:                                    ; preds = %bb.il
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.aub = load ptr, ptr %i.aua, align 8, !nonnull !28, !noundef !28 ; 4 uses
  %i.auc = load i64, ptr %i.aw, align 8, !range !43, !noundef !28 ; 4 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.aue = load i64, ptr %i.aud, align 8, !noundef !28 ; 8 uses
  %i.auf = icmp ult i64 %i.aue, 384307168202282326
  call void @llvm.assume(i1 %i.auf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.not11.i.i.i.i = icmp eq i64 %i.aue, 0
  %.idx2205 = mul nuw i64 %i.aue, 24
  store i64 %i.auc, ptr %i.ax, align 8, !alias.scope !65566, !noalias !65567
  %i.aug = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.aub, ptr %i.aug, align 8, !alias.scope !65566, !noalias !65567
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  store i64 %i.aue, ptr %i.auh, align 8, !alias.scope !65566, !noalias !65567
  %.val704 = load ptr, ptr %i.bs, align 8, !noundef !28 ; 2 uses
  %.not.i875 = icmp eq ptr %.val704, null
  br i1 %.not.i875, label %.loopexit2255, label %bb.in

bb.in:                                            ; preds = %.loopexit2256
  %i.aui = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.val705 = load i64, ptr %i.aui, align 8
  br label %.split.us.i.us.i.i

.split.us.i.us.i.i:                               ; preds = %bb.ip, %bb.in
  %.sroa.3.0.us.i.i = phi i64 [ %i.aur, %bb.ip ], [ %.val705, %bb.in ] ; 2 uses
  %.sroa.0.0.us.i.i = phi ptr [ %i.auq, %bb.ip ], [ %.val704, %bb.in ] ; 3 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 538
  %i.auk = load i16, ptr %i.auj, align 2, !noalias !65568, !noundef !28
  %i.aul = icmp eq i16 %i.auk, 0
  br i1 %i.aul, label %bb.io, label %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i

_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i: ; preds = %.split.us.i.us.i.i
  %i.aum = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 8
  %i.aun = load i64, ptr %i.aum, align 8, !range !37, !alias.scope !65569, !noalias !65570, !noundef !28
  %.not1.i.us.not.i.us.i.i = icmp eq i64 %i.aun, -1
  br i1 %.not1.i.us.not.i.us.i.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit, label %bb.io

bb.io:                                            ; preds = %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i, %.split.us.i.us.i.i
  %i.auo = icmp eq i64 %.sroa.3.0.us.i.i, 0
  br i1 %i.auo, label %.loopexit2255, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i, i64 544
  %i.auq = load ptr, ptr %i.aup, align 8, !noalias !65571, !nonnull !28, !noundef !28
  %i.aur = add i64 %.sroa.3.0.us.i.i, -1
  br label %.split.us.i.us.i.i

.loopexit2255:                                    ; preds = %bb.io, %.loopexit2256
  %.val708 = load ptr, ptr %i.bc, align 8, !noundef !28 ; 2 uses
  %.not.i877 = icmp eq ptr %.val708, null
  br i1 %.not.i877, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEE3getB18_EB2r_.exit.thread, label %bb.iq

bb.iq:                                            ; preds = %.loopexit2255
  %i.aus = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.val709 = load i64, ptr %i.aus, align 8
  br label %.split.us.i.us.i.i878

.split.us.i.us.i.i878:                            ; preds = %bb.is, %bb.iq
  %.sroa.3.0.us.i.i879 = phi i64 [ %i.avb, %bb.is ], [ %.val709, %bb.iq ] ; 2 uses
  %.sroa.0.0.us.i.i880 = phi ptr [ %i.ava, %bb.is ], [ %.val708, %bb.iq ] ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i880, i64 538
  %i.auu = load i16, ptr %i.aut, align 2, !noalias !65572, !noundef !28
  %i.auv = icmp eq i16 %i.auu, 0
  br i1 %i.auv, label %bb.ir, label %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i881

_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i881: ; preds = %.split.us.i.us.i.i878
  %i.auw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i880, i64 8
  %i.aux = load i64, ptr %i.auw, align 8, !range !37, !alias.scope !65573, !noalias !65574, !noundef !28
  %.not1.i.us.not.i.us.i.i882 = icmp eq i64 %i.aux, -1
  br i1 %.not1.i.us.not.i.us.i.i882, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit, label %bb.ir

bb.ir:                                            ; preds = %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i881, %.split.us.i.us.i.i878
  %i.auy = icmp eq i64 %.sroa.3.0.us.i.i879, 0
  br i1 %i.auy, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEE3getB18_EB2r_.exit.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.auz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us.i.i880, i64 544
  %i.ava = load ptr, ptr %i.auz, align 8, !noalias !65575, !nonnull !28, !noundef !28
  %i.avb = add i64 %.sroa.3.0.us.i.i879, -1
  br label %.split.us.i.us.i.i878

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEE3getB18_EB2r_.exit.thread: ; preds = %bb.ir, %.loopexit2255, %bb.iw
  %.pre6361 = phi i64 [ %.pre6361.pre, %bb.iw ], [ %i.auc, %.loopexit2255 ], [ %i.auc, %bb.ir ] ; 2 uses
  %i.avc = phi ptr [ %i.avh, %bb.iw ], [ %i.aub, %.loopexit2255 ], [ %i.aub, %bb.ir ] ; 4 uses
  %i.avd = phi i64 [ %i.avj, %bb.iw ], [ %i.aue, %.loopexit2255 ], [ %i.aue, %bb.ir ] ; 3 uses
  %i.ave = icmp ult i64 %i.avd, 384307168202282326
  call void @llvm.assume(i1 %i.ave)
  %i.avf = icmp eq i64 %i.avd, 1
  br i1 %i.avf, label %bb.ix, label %bb.iy

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit: ; preds = %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i, %_RNvXsh_NtCsj6eKBz9Db1c_4core6optionINtB5_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtNtB7_3cmp3Ord3cmpCskXtk6F4WjxZ_4just.exit.us.i.us.i.i881
  call void @llvm.experimental.noalias.scope.decl(metadata !65576)
  %i.avg = icmp eq i64 %i.aue, %i.auc
  br i1 %i.avg, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB7_6string6StringEE8grow_oneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %._crit_edge3901 unwind label %bb.oe, !noalias !65577

._crit_edge3901:                                  ; preds = %bb.it
  %.pre3902 = load ptr, ptr %i.aug, align 8, !alias.scope !65576, !noalias !65577
  br label %bb.iu

bb.iu:                                            ; preds = %._crit_edge3901, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit
  %i.avh = phi ptr [ %.pre3902, %._crit_edge3901 ], [ %i.aub, %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtBc_6string6StringEINtNtBc_3vec3VecNtNtCskXtk6F4WjxZ_4just10list_entry9ListEntryEE3getB18_EB2q_.exit ] ; 4 uses
  br i1 %.not11.i.i.i.i, label %bb.iw, label %bb.iv

end_hunk_6
begin_hunk_7_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand12resolve_path:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.447.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 92, ptr %0, align 8
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand3run(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(552) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(72) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(1024) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 384307168202282326) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  %.sroa.4 = alloca [912 x i8], align 8           ; 3 uses
  %i.i = alloca [1024 x i8], align 8              ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 11 uses
  %i.o = alloca [104 x i8], align 8               ; 8 uses
  %i.p = alloca [104 x i8], align 8               ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !28, !noundef !28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !28
  %i.w = invoke { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit: ; preds = %bb.ad, %.body, %bb.b
  %.pn38 = phi { ptr, i32 } [ %i.x, %bb.b ], [ %.pn36, %.body ], [ %.pn36, %bb.ad ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just11compilation11CompilationEBF_(ptr noalias nofree noundef align 8 dereferenceable(1024) %4) #72
          to label %bb.cf unwind label %bb.al

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.a
  %i.y = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.z = extractvalue { ptr, i64 } %i.w, 1
  invoke void @_RNvXNtCskXtk6F4WjxZ_4just5cleanRNtNtCsaKJjC64KgbL_3std4path4PathNtB2_5Clean5clean(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ac = load i64, ptr %i.ab, align 8, !range !91
  %switch107 = icmp slt i64 %i.ac, -9223372036854775806
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 527
  %.val46 = load i8, ptr %i.ad, align 1
  %i.ae = icmp eq i64 %6, 0
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = icmp eq i64 %6, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.aj = shl nuw nsw i64 %6, 4                   ; 5 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.al = trunc nuw i8 %.val46 to i1
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 976
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ao = load i8, ptr %i.an, align 8, !range !103
  %i.ap = icmp samesign ugt i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.sroa.3.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %xtraiter = and i64 %6, 1
  %i.av = icmp eq i64 %6, 1
  %unroll_iter = and i64 %6, 576460752303423486
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod340 = trunc i64 %6 to i1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #71
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.bl, %bb.e
  unreachable

bb.g:                                             ; preds = %.preheader, %bb.bw
  %i.aw = load i8, ptr %i.aa, align 8, !range !40, !noundef !28
  %i.ax = trunc nuw i8 %i.aw to i1
  %.sroa.01.0 = select i1 %i.ax, i1 %switch107, i1 false
  call void @llvm.experimental.noalias.scope.decl(metadata !66107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !66108
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.h, align 8, !noalias !66108
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66108
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66108
  store i8 0, ptr %i.ak, align 8, !noalias !66108
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.af, align 8, !alias.scope !66107, !noalias !66109, !nonnull !28, !noundef !28 ; 4 uses
  %i.az = load i64, ptr %i.ag, align 8, !alias.scope !66107, !noalias !66109, !noundef !28 ; 9 uses
  %i.ba = icmp samesign ult i64 %i.az, 16
  br i1 %i.ba, label %.preheader.i.i.i.i, label %bb.j

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i, label %.loopexit35.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.az)
          to label %.noexc49 unwind label %.loopexit109 ; 2 uses

.noexc49:                                         ; preds = %bb.j
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  %i.be = trunc nuw i64 %i.bc to i1
  br i1 %i.be, label %.loopexit.i, label %.loopexit35.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.k
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.bi, %bb.k ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.011.i.i.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !66110, !noalias !66108, !noundef !28
  %i.bh = icmp eq i8 %i.bg, 58
  br i1 %i.bh, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.az
  br i1 %exitcond.not.i.i.i.i, label %.loopexit35.i, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i, %bb.h
  %i.bj = phi i64 [ %i.ch, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i ], [ %i.cr, %bb.r ], [ 0, %bb.h ] ; 7 uses
  %i.bk = invoke fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(904) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.s unwind label %bb.ac, !noalias !66111 ; 2 uses

.loopexit35.i:                                    ; preds = %bb.k, %.noexc49, %.preheader.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !66108
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !66112
  %i.bl = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, 9) 8) #70, !noalias !66112 ; 8 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %.preheader.i.i.i38.i.preheader

.preheader.i.i.i38.i.preheader:                   ; preds = %.loopexit35.i
  br i1 %i.av, label %.preheader.i.i.i38.i.epil.preheader, label %.preheader.i.i.i38.i

bb.m:                                             ; preds = %.loopexit35.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aj) #71
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.m
  unreachable

.preheader.i.i.i38.i:                             ; preds = %.preheader.i.i.i38.i.preheader, %.preheader.i.i.i38.i
  %i.bn = phi i64 [ %i.bz, %.preheader.i.i.i38.i ], [ 0, %.preheader.i.i.i38.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i38.i ], [ 0, %.preheader.i.i.i38.i.preheader ]
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !66107, !noalias !66113, !nonnull !28, !noundef !28
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !66107, !noalias !66113, !noundef !28
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bn ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i, ptr %i.br, align 8, !noalias !66114, !captures !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.bs, align 8, !noalias !66115
  %i.bt = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val15.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bv, align 8, !alias.scope !66107, !noalias !66113, !nonnull !28, !noundef !28
  %i.bw = getelementptr i8, ptr %i.bu, i64 16
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.bw, align 8, !alias.scope !66107, !noalias !66113, !noundef !28
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.1, ptr %i.bx, align 8, !noalias !66114, !captures !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.by, align 8, !noalias !66115
  %i.bz = add nuw i64 %i.bn, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, label %.preheader.i.i.i38.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa: ; preds = %.preheader.i.i.i38.i
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i, label %.preheader.i.i.i38.i.epil.preheader

.preheader.i.i.i38.i.epil.preheader:              ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, %.preheader.i.i.i38.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i38.i.preheader ], [ %i.bz, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.epil.init ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val15.i.i.i.i.i.i.i.epil = load ptr, ptr %i.cb, align 8, !alias.scope !66107, !noalias !66113, !nonnull !28, !noundef !28
  %i.cc = getelementptr i8, ptr %i.ca, i64 16
  %.val16.i.i.i.i.i.i.i.epil = load i64, ptr %i.cc, align 8, !alias.scope !66107, !noalias !66113, !noundef !28
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.epil, ptr %i.cd, align 8, !noalias !66114, !captures !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.epil, ptr %i.ce, align 8, !noalias !66115
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, %.preheader.i.i.i38.i.epil.preheader
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, 384307168202282326) %6)
          to label %bb.o unwind label %bb.n, !noalias !66108

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %.noexc49
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.bd, %.noexc49 ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.cf = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.az
  call void @llvm.assume(i1 %i.cf)
  br i1 %i.ah, label %bb.p, label %bb.ae

bb.n:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66108
  br label %.body

bb.o:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i
  %i.ch = load i64, ptr %i.f, align 8, !range !37, !noalias !66108, !noundef !28 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, -1
  br i1 %i.ci, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !66108
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66108
  br label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.421.0..sroa_idx.i, i64 24, i1 false), !noalias !66108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !66108
  store i64 %i.ch, ptr %i.h, align 8, !noalias !66108
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66108
  br label %bb.l

bb.p:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !66108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66116
  %.not.i.i.i = icmp samesign ult i64 %i.az, 2
  br i1 %.not.i.i.i, label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.ck = getelementptr i8, ptr %i.cj, i64 -2
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = icmp ne i16 14906, %i.cl
  %i.cn = zext i1 %i.cm to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.cn
  %i.co = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  %i.cp = add nsw i64 %i.az, -2
  %spec.select.i.i = select i1 %i.co, i64 %i.cp, i64 %i.az
  br label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i

_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %bb.p
  %i.cq = phi i64 [ 1, %bb.p ], [ %spec.select.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ]
  store ptr %i.ay, ptr %i.e, align 8, !noalias !66116
  store i64 %i.cq, ptr %i.ai, align 8, !noalias !66116
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %.noexc51 unwind label %.loopexit109

.noexc51:                                         ; preds = %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !66116
  %i.cr = load i64, ptr %i.g, align 8, !range !37, !noalias !66108, !noundef !28 ; 3 uses
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66108
  br label %bb.ae

bb.r:                                             ; preds = %.noexc51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.413.0..sroa_idx.i, i64 24, i1 false), !noalias !66108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66108
  store i64 %i.cr, ptr %i.h, align 8, !noalias !66108
  br label %bb.l

bb.s:                                             ; preds = %bb.l
  %.not30.i = icmp eq ptr %i.bk, null
  br i1 %.not30.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.al, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !66117)
  call void @llvm.experimental.noalias.scope.decl(metadata !66118)
  %.val.i.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !66119, !noalias !66108, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !66119, !noalias !66108, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66120)
  %i.ct = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ct, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.cv = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66121)
  call void @llvm.experimental.noalias.scope.decl(metadata !66122)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !66123, !noalias !66124 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.cw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !66123, !noalias !66124, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !66125
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %i.cy = icmp eq i64 %i.cv, %.val1.i.i.i
  br i1 %i.cy, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.u
  %i.cz = icmp eq i64 %i.bj, 0
  br i1 %i.cz, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.da = mul nuw i64 %i.bj, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66124
  br label %bb.ae

bb.x:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 386
  %i.dc = load i8, ptr %i.db, align 2, !range !40, !noalias !66111, !noundef !28
  %i.dd = trunc nuw i8 %i.dc to i1
  %.sroa.77.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66108 ; 4 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66108 ; 3 uses
  br i1 %i.dd, label %.loopexit110, label %bb.z

bb.y:                                             ; preds = %bb.t
  %.sroa.77.0.copyload9.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66108
  %.sroa.8.0.copyload13.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66108
  br label %.loopexit110

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.77.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !66126)
  %i.de = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.de, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, label %.lr.ph.i.i.i.i53.i

.lr.ph.i.i.i.i53.i:                               ; preds = %bb.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i
  %.sroa.0.010.i.i.i.i54.i = phi i64 [ %i.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i ], [ 0, %bb.z ] ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %.sroa.77.0.copyload.i, i64 %.sroa.0.010.i.i.i.i54.i ; 2 uses
  %i.dg = add nuw nsw i64 %.sroa.0.010.i.i.i.i54.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66127)
  call void @llvm.experimental.noalias.scope.decl(metadata !66128)
  %.val.i.i.i.i.i.i55.i = load i64, ptr %i.df, align 8, !alias.scope !66129, !noalias !66130 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i.i.i.i.i55.i, 0
  br i1 %i.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i53.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.val1.i.i.i.i.i.i56.i = load ptr, ptr %i.di, align 8, !alias.scope !66129, !noalias !66130, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i56.i, i64 noundef %.val.i.i.i.i.i.i55.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !66131
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i53.i
  %i.dj = icmp eq i64 %i.dg, %.sroa.8.0.copyload.i
  br i1 %i.dj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, label %.lr.ph.i.i.i.i53.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i, %bb.z
  %i.dk = icmp eq i64 %i.bj, 0
  br i1 %i.dk, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i
  %i.dl = mul nuw i64 %i.bj, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.77.0.copyload.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66130
  br label %bb.ae

bb.ac:                                            ; preds = %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #72, !noalias !66111
  br label %.body

.body:                                            ; preds = %.loopexit109, %.loopexit.split-lp, %bb.af, %bb.ax, %bb.ac, %bb.n, %.thread99
  %.pn36 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ax ], [ %i.do, %bb.af ], [ %.pn3198, %.thread99 ], [ %i.cg, %bb.n ], [ %i.dm, %bb.ac ], [ %lpad.loopexit, %.loopexit109 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66132)
  call void @llvm.experimental.noalias.scope.decl(metadata !66133)
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !66134 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i, 0
end_hunk_7
begin_hunk_8_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand6choose:bb.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit275: ; preds = %bb.ej, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process5ChildECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit241: ; preds = %bb.cs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit236, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process5ChildECskXtk6F4WjxZ_4just.exit, %bb.p
  %.sroa.048.11 = phi i1 [ true, %bb.p ], [ %i.en, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process5ChildECskXtk6F4WjxZ_4just.exit ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just.exit ], [ false, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit236 ], [ false, %bb.cs ]
  %.val176 = load i64, ptr %i.aj, align 8         ; 2 uses
  %i.mn = icmp eq i64 %.val176, 0
  br i1 %i.mn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit276, label %bb.ek

bb.ek:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit241
  %.val177 = load ptr, ptr %i.by, align 8, !nonnull !28, !noundef !28
  %i.mo = shl nuw i64 %.val176, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val177, i64 noundef %i.mo, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit276

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.ec, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit274, %bb.dy
  %.pn146.pn = phi { ptr, i32 } [ %i.ly, %bb.dy ], [ %.pn146, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit274 ], [ %.pn146, %bb.ec ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #72
          to label %.thread433 unwind label %bb.co

.thread448:                                       ; preds = %.thread392.thread883
  %i.mp = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process5ChildECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 4 dereferenceable(28) %i.mp) #72
  br label %.thread433

bb.el:                                            ; preds = %.thread392.thread883, %.thread392
  %.pn146.pn.pn891 = phi { ptr, i32 } [ %i.ej, %.thread392.thread883 ], [ %.pn146.pn.pn, %.thread392 ]
  %.sroa.048.5889 = phi i1 [ true, %.thread392.thread883 ], [ %.sroa.048.5, %.thread392 ]
  %i.mq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mq) #72
          to label %.thread433 unwind label %bb.co

.thread433:                                       ; preds = %.thread392, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit, %.thread448, %bb.ad, %bb.af, %bb.el
  %.sroa.048.4 = phi i1 [ true, %.thread448 ], [ true, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit ], [ %.sroa.048.5889, %bb.el ], [ true, %bb.ad ], [ true, %bb.af ], [ %.sroa.048.5, %.thread392 ] ; 2 uses
  %.pn146.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %.thread448 ], [ %.pn146.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit ], [ %.pn146.pn.pn891, %bb.el ], [ %i.ed, %bb.ad ], [ %i.ee, %bb.af ], [ %.pn146.pn.pn, %.thread392 ] ; 2 uses
  %i.mr = icmp eq i64 %.sroa.0299.0, 0
  br i1 %i.mr, label %.body295, label %bb.em

bb.em:                                            ; preds = %.thread433
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.0, i64 noundef %.sroa.0299.0, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !67965
  br label %.body295

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit276: ; preds = %bb.ek, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br i1 %.sroa.048.11, label %bb.er, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit: ; preds = %bb.es, %bb.er, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.experimental.noalias.scope.decl(metadata !67966)
  call void @llvm.experimental.noalias.scope.decl(metadata !67967)
  call void @llvm.experimental.noalias.scope.decl(metadata !67968)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !67969
  %.sroa.06.0.copyload.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !67969 ; 3 uses
  %.not.i.i.i280 = icmp eq ptr %.sroa.06.0.copyload.i.i.i, null
  br i1 %.not.i.i.i280, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit
  %.sroa.58.0.copyload.i.i.i = load i64, ptr %i.ce, align 8, !alias.scope !67969
  %.sroa.47.0.copyload.i.i.i = load i64, ptr %.sroa.15.0.i.ph.i.i.i.i.i.i.sroa.gep369, align 8, !alias.scope !67969 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !67969
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !67969
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !67969
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !67969
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !67969
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !67969
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit
  %.sink31.i.i.i = phi i64 [ 1, %bb.en ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i = phi i64 [ %.sroa.58.0.copyload.i.i.i, %bb.en ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit ]
  store i64 %.sink31.i.i.i, ptr %i.d, align 8, !noalias !67969
  %i.ms = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sink31.i.i.i, ptr %i.ms, align 8, !noalias !67969
  %i.mt = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i, ptr %i.mt, align 8, !noalias !67969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !67970
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !67969
  %i.mu = load ptr, ptr %i.c, align 8, !noalias !67970, !noundef !28 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.mu, null
  br i1 %.not5.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.eo
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.ep

bb.ep:                                            ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.mv = phi ptr [ %i.mu, %.lr.ph.i.i.i.i.i ], [ %i.na, %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.43.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !67970
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %i.mw, i64 %.sroa.43.0.copyload.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67971)
  call void @llvm.experimental.noalias.scope.decl(metadata !67972)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.mx, align 8, !alias.scope !67973, !noalias !67970 ; 2 uses
  %i.my = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.my, label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.mz, align 8, !alias.scope !67973, !noalias !67970, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !67974
  br label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.eq, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !67970
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d), !noalias !67969
  %i.na = load ptr, ptr %i.c, align 8, !noalias !67970, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECskXtk6F4WjxZ_4just.exit, label %bb.ep

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !67969
  br label %bb.br

bb.er:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileEEB1d_.exit276
  %.val174 = load i64, ptr %i.ak, align 8         ; 2 uses
  %i.nb = icmp eq i64 %.val174, 0
  br i1 %i.nb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.val175 = load ptr, ptr %i.bt, align 8, !nonnull !28, !noundef !28
  %i.nc = shl nuw i64 %.val174, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val175, i64 noundef %i.nc, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEB1d_.exit297: ; preds = %bb.hk, %bb.hj, %bb.l
  %.pn155 = phi { ptr, i32 } [ %.pn153372, %bb.hk ], [ %.pn151, %bb.l ], [ %.pn153372, %bb.hj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.al) #72
          to label %common.resume unwind label %bb.co

bb.et:                                            ; preds = %bb.n
  %i.nd = load ptr, ptr %i.cb, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.ne = load i64, ptr %i.cc, align 8, !noundef !28 ; 2 uses
  %.idx455 = shl nuw nsw i64 %i.ne, 3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx455 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !67975)
  %i.ng = icmp eq i64 %i.ne, 0
  br i1 %i.ng, label %_RINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeE16extend_desugaredINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6cloned6ClonedINtNtB1G_6filter6FilterINtNtNtB1K_5slice4iter4IterBG_ENCNvMs_NtBL_10subcommandNtB3u_10Subcommand6choose0EEEBL_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.et, %.noexc288
  %i.nh = phi ptr [ %i.alr, %.noexc288 ], [ %i.ck, %bb.et ] ; 3 uses
  %i.ni = phi i64 [ %i.alt, %.noexc288 ], [ %i.cl, %bb.et ] ; 7 uses
  %i.nj = phi ptr [ %i.nl, %.noexc288 ], [ %i.nd, %bb.et ]
  br label %bb.eu

bb.eu:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtBV_10Subcommand6choose0INtB7_5FnMutTRRRNtNtBX_6recipe6RecipeEE8call_mutBX_.exit.thread16.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nk = phi ptr [ %i.nj, %.lr.ph.i.i.i.i ], [ %i.nl, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtBV_10Subcommand6choose0INtB7_5FnMutTRRRNtNtBX_6recipe6RecipeEE8call_mutBX_.exit.thread16.i.i.i.i ] ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 4 uses
  %i.nm = load ptr, ptr %i.nk, align 8, !noalias !67976, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.nn = getelementptr i8, ptr %i.nm, i64 80
  %.val.i.i.i.i.i.i = load ptr, ptr %i.nn, align 8, !noalias !67976, !nonnull !28, !noundef !28
  %i.no = getelementptr i8, ptr %i.nm, i64 88
  %.val2.i.i.i.i.i.i = load i64, ptr %i.no, align 8, !noalias !67976, !noundef !28 ; 3 uses
  %i.np = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.np, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.eu, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.og, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.eu ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.of, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.eu ]
  %i.nq = getelementptr inbounds nuw [448 x i8], ptr %.val.i.i.i.i.i.i, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 104
  %i.ns = load i64, ptr %i.nr, align 8, !range !39, !alias.scope !67977, !noalias !67976, !noundef !28
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.ns, -1
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 441
  %i.nu = load i8, ptr %i.nt, align 1, !range !40, !alias.scope !67977, !noalias !67976
  %i.nv = trunc nuw i8 %i.nu to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.nv
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 443
  %i.nx = load i8, ptr %i.nw, align 1, !range !38, !alias.scope !67977, !noalias !67976, !noundef !28
  %.not3.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.nx, 2
  br i1 %.not3.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ew, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i

bb.ew:                                            ; preds = %bb.ev
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.nz = load i64, ptr %i.ny, align 8, !range !41, !alias.scope !67977, !noalias !67976, !noundef !28
  %i.oa = trunc nuw i64 %i.nz to i1
  br i1 %i.oa, label %bb.ex, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i

bb.ex:                                            ; preds = %bb.ew
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !alias.scope !67977, !noalias !67976
  %i.od = icmp ne i64 %i.oc, 0
  %i.oe = zext i1 %i.od to i64
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ex, %bb.ew, %bb.ev, %.preheader.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.ev ], [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 0, %bb.ew ], [ %i.oe, %bb.ex ]
  %i.of = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.og = add nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.oh = icmp eq i64 %i.og, %.val2.i.i.i.i.i.i
  br i1 %i.oh, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i.i.i.i.i
  %i.oi = icmp ule i64 %i.of, %.val2.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.oi)
  %i.oj = icmp eq i64 %i.of, 0
  br i1 %i.oj, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.thread.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtBV_10Subcommand6choose0INtB7_5FnMutTRRRNtNtBX_6recipe6RecipeEE8call_mutBX_.exit.thread16.i.i.i.i

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i.i.i.i.i, %bb.eu
  %i.ok = load i64, ptr %i.ce, align 8, !noalias !67976, !noundef !28 ; 5 uses
  %i.ol = icmp eq i64 %i.ok, 0
  br i1 %i.ol, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeENCNvMs_NtB1S_10subcommandNtB2x_10Subcommand6choose0EENtNtNtB8_6traits8iterator8Iterator4nextB1S_.exit.thread61.i, label %bb.ey

bb.ey:                                            ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !67976
  invoke fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe6groups(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.nm)
          to label %.noexc287 unwind label %.loopexit471

.noexc287:                                        ; preds = %bb.ey
  call void @llvm.experimental.noalias.scope.decl(metadata !67978)
  call void @llvm.experimental.noalias.scope.decl(metadata !67979)
  %.val262.i.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !67978, !noalias !67980, !noundef !28 ; 12 uses
  %.val263.i.i.i.i.i.i.i = load i64, ptr %.sroa.15.0.i.ph.i.i.i.i.i.i.sroa.gep369, align 8, !alias.scope !67978, !noalias !67980 ; 14 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val262.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsS_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB5_12IntersectionNtNtBb_6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %.preheader.i.i3.i.i.i.i.i.i

.preheader.i.i3.i.i.i.i.i.i:                      ; preds = %.noexc287
  %i.om = icmp eq i64 %.val263.i.i.i.i.i.i.i, 0   ; 2 uses
  br i1 %i.om, label %._crit_edge.i.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.preheader.i.i3.i.i.i.i.i.i
  %xtraiter = and i64 %.val263.i.i.i.i.i.i.i, 7   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.015.02.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.op, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.val263.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.017.01.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.val262.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.017.01.i.i.i.i.i.i.i.i.prol, i64 280
  %i.oo = load ptr, ptr %i.on, align 8, !noalias !67981, !nonnull !28, !noundef !28 ; 3 uses
  %i.op = add i64 %.sroa.015.02.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !67618

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa1301.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.oo, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.015.02.i.i.i.i.i.i.i.i.unr = phi i64 [ %.val263.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.op, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.017.01.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val262.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.oo, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.oq = icmp ult i64 %.val263.i.i.i.i.i.i.i, 8
  br i1 %i.oq, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa1301 = phi ptr [ %.lcssa1301.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.pt, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.lcssa1301, i64 274
  %i.os = load i16, ptr %i.or, align 2, !noalias !67981, !noundef !28
  %.not29.i.i.i.i.i.i.i.i = icmp eq i16 %i.os, 0
  br i1 %.not29.i.i.i.i.i.i.i.i, label %_RNvXsS_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB5_12IntersectionNtNtBb_6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %xtraiter1435 = and i64 %.val263.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod1436.not = icmp eq i64 %xtraiter1435, 0
  br i1 %lcmp.mod1436.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.oz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.val262.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.pa, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.val263.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter1437 = phi i64 [ %prol.iter1437.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.prol, i64 274
  %i.ou = load i16, ptr %i.ot, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.ov = zext nneg i16 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i.prol, i64 280
  %i.ox = icmp ult i16 %i.ou, 12
  call void @llvm.assume(i1 %i.ox)
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.ov
  %i.oz = load ptr, ptr %i.oy, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 3 uses
  %i.pa = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter1437.next = add i64 %prol.iter1437, 1 ; 2 uses
  %prol.iter1437.cmp.not = icmp eq i64 %prol.iter1437.next, %xtraiter1435
  br i1 %prol.iter1437.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !67621

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa1302.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.03.08.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val262.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.oz, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.05.07.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.val263.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.pa, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.pb = icmp ult i64 %.val263.i.i.i.i.i.i.i, 8
  br i1 %i.pb, label %_RNvMsn_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.thread.i.i.i.i.i.i.i:               ; preds = %.preheader.i.i3.i.i.i.i.i.i
  %i.pc = getelementptr inbounds nuw i8, ptr %.val262.i.i.i.i.i.i.i, i64 274
  %i.pd = load i16, ptr %i.pc, align 2, !noalias !67981, !noundef !28 ; 2 uses
  %.not29.i298.i.i.i.i.i.i.i = icmp eq i16 %i.pd, 0
  br i1 %.not29.i298.i.i.i.i.i.i.i, label %_RNvXsS_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB5_12IntersectionNtNtBb_6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE14last_key_valueCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.015.02.i.i.i.i.i.i.i.i = phi i64 [ %i.pu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.015.02.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.017.01.i.i.i.i.i.i.i.i = phi ptr [ %i.pt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.017.01.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.017.01.i.i.i.i.i.i.i.i, i64 280
  %i.pf = load ptr, ptr %i.pe, align 8, !noalias !67981, !nonnull !28, !noundef !28
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 280
  %i.ph = load ptr, ptr %i.pg, align 8, !noalias !67981, !nonnull !28, !noundef !28
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 280
  %i.pj = load ptr, ptr %i.pi, align 8, !noalias !67981, !nonnull !28, !noundef !28
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 280
  %i.pl = load ptr, ptr %i.pk, align 8, !noalias !67981, !nonnull !28, !noundef !28
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 280
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !67981, !nonnull !28, !noundef !28
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 280
  %i.pp = load ptr, ptr %i.po, align 8, !noalias !67981, !nonnull !28, !noundef !28
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 280
  %i.pr = load ptr, ptr %i.pq, align 8, !noalias !67981, !nonnull !28, !noundef !28
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 280
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !67981, !nonnull !28, !noundef !28 ; 2 uses
  %i.pu = add i64 %.sroa.015.02.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.pv = icmp eq i64 %i.pu, 0
  br i1 %i.pv, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.03.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rz, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sa, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i, i64 274
  %i.px = load i16, ptr %i.pw, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.py = zext nneg i16 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i.i.i.i.i.i.i.i, i64 280
  %i.qa = icmp ult i16 %i.px, 12
  call void @llvm.assume(i1 %i.qa)
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pz, i64 %i.py
  %i.qc = load ptr, ptr %i.qb, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 274
  %i.qe = load i16, ptr %i.qd, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.qf = zext nneg i16 %i.qe to i64
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 280
  %i.qh = icmp ult i16 %i.qe, 12
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qg, i64 %i.qf
  %i.qj = load ptr, ptr %i.qi, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 274
  %i.ql = load i16, ptr %i.qk, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.qm = zext nneg i16 %i.ql to i64
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qj, i64 280
  %i.qo = icmp ult i16 %i.ql, 12
  call void @llvm.assume(i1 %i.qo)
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.qm
  %i.qq = load ptr, ptr %i.qp, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 274
  %i.qs = load i16, ptr %i.qr, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.qt = zext nneg i16 %i.qs to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 280
  %i.qv = icmp ult i16 %i.qs, 12
  call void @llvm.assume(i1 %i.qv)
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %i.qt
  %i.qx = load ptr, ptr %i.qw, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 274
  %i.qz = load i16, ptr %i.qy, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.ra = zext nneg i16 %i.qz to i64
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 280
  %i.rc = icmp ult i16 %i.qz, 12
  call void @llvm.assume(i1 %i.rc)
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %i.ra
  %i.re = load ptr, ptr %i.rd, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 274
  %i.rg = load i16, ptr %i.rf, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.rh = zext nneg i16 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 280
  %i.rj = icmp ult i16 %i.rg, 12
  call void @llvm.assume(i1 %i.rj)
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rh
  %i.rl = load ptr, ptr %i.rk, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 274
  %i.rn = load i16, ptr %i.rm, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.ro = zext nneg i16 %i.rn to i64
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 280
  %i.rq = icmp ult i16 %i.rn, 12
  call void @llvm.assume(i1 %i.rq)
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.ro
  %i.rs = load ptr, ptr %i.rr, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 274
  %i.ru = load i16, ptr %i.rt, align 2, !noalias !67982, !noundef !28 ; 2 uses
  %i.rv = zext nneg i16 %i.ru to i64
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 280
  %i.rx = icmp ult i16 %i.ru, 12
  call void @llvm.assume(i1 %i.rx)
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.rv
  %i.rz = load ptr, ptr %i.ry, align 8, !noalias !67982, !nonnull !28, !noundef !28 ; 2 uses
  %i.sa = add i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.sb = icmp eq i64 %i.sa, 0
  br i1 %i.sb, label %_RNvMsn_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvMsn_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa1302 = phi ptr [ %.lcssa1302.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.rz, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.lcssa1302, i64 274
  %.pre.i.i.i.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 2, !noalias !67982 ; 2 uses
  %.not18.i.i.i.i.i.i.i.i = icmp eq i16 %.pre.i.i.i.i.i.i.i, 0
  br i1 %.not18.i.i.i.i.i.i.i.i, label %_RNvXsS_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3setINtB5_12IntersectionNtNtBb_6string6StringENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE14last_key_valueCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE14last_key_valueCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %_RNvMsn_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %._crit_edge.i.thread.i.i.i.i.i.i.i
  %.sroa.03.0.lcssa.i.i335.i.i.i.i.i.i.i = phi ptr [ %.lcssa1302, %_RNvMsn_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ %.val262.i.i.i.i.i.i.i, %._crit_edge.i.thread.i.i.i.i.i.i.i ]
  %.val262.pn334.i.i.i.i.i.i.i = phi ptr [ %.lcssa1301, %_RNvMsn_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtB10_6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1k_14LeafOrInternalE14last_leaf_edgeCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ], [ %.val262.i.i.i.i.i.i.i, %._crit_edge.i.thread.i.i.i.i.i.i.i ] ; 2 uses
end_hunk_8
begin_hunk_9_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand9variables:bb.a

bb.k:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !68698
  unreachable

.critedge.i:                                      ; preds = %bb.c
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2870) #75, !noalias !68700
  unreachable

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.i
  %.sroa.78.0.i.i.i = phi i64 [ %i.ao, %bb.i ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 2 uses
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i, %bb.i ], [ %.sroa.017.0.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.7, %.new ] ; 2 uses
  %i.be = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.be), !noalias !68698
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i, i64 176
  %i.bg = getelementptr inbounds nuw [240 x i8], ptr %i.bf, i64 %.sroa.10.0.ph.i.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 235
  %i.bi = load i8, ptr %i.bh, align 1, !range !40, !alias.scope !68701, !noalias !68702, !noundef !28
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.b, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.bk = add i64 %.sroa.25.096, 1
  %.not35 = icmp eq i64 %.sroa.25.096, 0
  br i1 %.not35, label %bb.m, label %bb.n

_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1a_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1a_.exit.thread: ; preds = %bb.m, %bb.b, %bb.a
  call void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @538, ptr noundef nonnull inttoptr (i64 3 to ptr))
  ret void

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bl, ptr %i.a, align 8
  store ptr @_RNvXs0_NtCskXtk6F4WjxZ_4just4nameNtB5_4NameNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.433.0..sroa_idx, align 8
  call void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @85, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = icmp eq i64 %i.k, 0
  br i1 %i.bm, label %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterReINtNtCskXtk6F4WjxZ_4just7binding7BindingNtNtB1a_10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB1a_.exit.thread, label %.lr.ph

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsaKJjC64KgbL_3std2io5stdio6__print(ptr noundef nonnull @870, ptr noundef nonnull inttoptr (i64 3 to ptr))
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe11continue_on(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef range(i32 1, 16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = tail call fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i8 noundef 4) ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 8, !range !97, !noundef !28 ; 2 uses
  %i.d = icmp ne i64 %i.c, 3
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 6
  br i1 %i.e, label %bb.c, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !28
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val = load ptr, ptr %i.i, align 8, !noundef !28 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val3 = load i64, ptr %i.j, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.g
  %.sroa.3.0.i.i = phi i64 [ %i.z, %bb.g ], [ %.val3, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.y, %bb.g ], [ %.val, %.preheader.i.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 54
  %i.m = load i16, ptr %i.l, align 2, !noalias !68705, !noundef !28 ; 2 uses
  %i.n = zext i16 %i.m to i64                     ; 3 uses
  %.idx = shl nuw nsw i64 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  %i.p = icmp eq i16 %i.m, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i14, i64 4 ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.8.0.i.i.i13, 1
  %i.s = icmp eq ptr %i.q, %i.o
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.e
  %.sroa.0.03.i.i.i14 = phi ptr [ %i.q, %bb.e ], [ %i.k, %.preheader.i ] ; 2 uses
  %.sroa.8.0.i.i.i13 = phi i64 [ %i.r, %bb.e ], [ 0, %.preheader.i ] ; 2 uses
  %.val6.i.i.i = load i32, ptr %.sroa.0.03.i.i.i14, align 4, !range !110, !noalias !68705, !noundef !28
  %i.t = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %1, i32 %.val6.i.i.i)
  switch i8 %i.t, label %bb.f [
    i8 -1, label %._crit_edge
    i8 0, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit
    i8 1, label %bb.e
  ]

bb.f:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %.preheader.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.n, %.preheader.i ], [ %i.n, %bb.e ], [ %.sroa.8.0.i.i.i13, %.lr.ph ] ; 2 uses
  %i.u = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.u, label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 56
  %i.w = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.sroa.4.0.i.ph.i.i
  %i.y = load ptr, ptr %i.x, align 8, !noalias !68705, !nonnull !28, !noundef !28
  %i.z = add i64 %.sroa.3.0.i.i, -1
  br label %.preheader.i

bb.h:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %1, 2
  br label %_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit

_RINvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB8_7set_val9SetValZSTE3getB18_EB1c_.exit: ; preds = %._crit_edge, %.lr.ph, %bb.d, %bb.a, %bb.b, %bb.h
  %.sroa.0.0.shrunk = phi i1 [ %i.aa, %bb.h ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ true, %.lr.ph ], [ false, %._crit_edge ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe11subsequents(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load i64, ptr %i.a, align 8, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !28 ; 4 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !28, !noundef !28
  %i.h = sub nuw i64 %i.d, %i.b
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %i.b
  %i.j = insertvalue { ptr, i64 } poison, ptr %i.i, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %i.h, 1
  ret { ptr, i64 } %i.k

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1259) #75
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments(ptr nofree readonly captures(none) %.80.val, i64 %.88.val) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.80.val) ]
  %i.a = icmp eq i64 %.88.val, 0
  br i1 %i.a, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMs_NtB1w_6recipeNtB2h_6Recipe13min_arguments0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.r, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.q, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [448 x i8], ptr %.80.val, i64 %.sroa.04.0.i.i ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i64, ptr %i.c, align 8, !range !39, !alias.scope !68710, !noundef !28
  %.not.i.i.i.i.i = icmp ne i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 441
  %i.f = load i8, ptr %i.e, align 1, !range !40, !alias.scope !68710
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.g
  br i1 %or.cond.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 443
  %i.i = load i8, ptr %i.h, align 1, !range !38, !alias.scope !68710, !noundef !28
  %.not3.i.i.i.i.i = icmp eq i8 %i.i, 2
  br i1 %.not3.i.i.i.i.i, label %bb.c, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !41, !alias.scope !68710, !noundef !28
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.d, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !68710
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.preheader.i
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %.preheader.i ], [ 0, %bb.c ], [ %i.p, %bb.d ]
  %i.q = add i64 %.sroa.0.1.i.i.i.i.i, %.sroa.02.0.i.i ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.i, 1           ; 2 uses
  %i.s = icmp eq i64 %i.r, %.88.val
  br i1 %i.s, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMs_NtB1w_6recipeNtB2h_6Recipe13min_arguments0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit, label %.preheader.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENCNvMs_NtB1w_6recipeNtB2h_6Recipe13min_arguments0ENtNtNtB9_6traits8iterator8Iterator5countB1w_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i, %bb.a
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i ] ; 2 uses
  %i.t = icmp ule i64 %.sroa.0.0.i.i, %.88.val
  tail call void @llvm.assume(i1 %i.t)
  ret i64 %.sroa.0.0.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe14argument_range(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.80.val, i64 %.88.val, i8 %.292.val) unnamed_addr #22 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.80.val) ]
  %i.a = icmp eq i64 %.88.val, 0
  br i1 %i.a, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i
  %.sroa.04.0.i.i.i = phi i64 [ %i.r, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i.i = phi i64 [ %i.q, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw [448 x i8], ptr %.80.val, i64 %.sroa.04.0.i.i.i ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i64, ptr %i.c, align 8, !range !39, !alias.scope !68717, !noundef !28
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 441
  %i.f = load i8, ptr %i.e, align 1, !range !40, !alias.scope !68717
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 true, i1 %i.g
  br i1 %or.cond.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 443
  %i.i = load i8, ptr %i.h, align 1, !range !38, !alias.scope !68717, !noundef !28
  %.not3.i.i.i.i.i.i = icmp eq i8 %i.i, 2
  br i1 %.not3.i.i.i.i.i.i, label %bb.c, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !41, !alias.scope !68717, !noundef !28
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.d, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !68717
  %i.o = icmp ne i64 %i.n, 0
  %i.p = zext i1 %i.o to i64
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b, %.preheader.i.i
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %.preheader.i.i ], [ 0, %bb.c ], [ %i.p, %bb.d ]
  %i.q = add i64 %.sroa.0.1.i.i.i.i.i.i, %.sroa.02.0.i.i.i ; 2 uses
  %i.r = add nuw i64 %.sroa.04.0.i.i.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %.88.val
  br i1 %i.s, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit, label %.preheader.i.i

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i, %bb.a
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.a ], [ %i.q, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i ] ; 2 uses
  %i.t = icmp ule i64 %.sroa.0.0.i.i.i, %.88.val
  tail call void @llvm.assume(i1 %i.t)
  %i.u = trunc nuw i8 %.292.val to i1
  br i1 %i.u, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6recipeNtB2o_6Recipe13max_arguments0EBU_.exit.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit
  %.idx = mul nuw nsw i64 %.88.val, 448
  %i.v = getelementptr inbounds nuw i8, ptr %.80.val, i64 %.idx
  %.not2.not.not.i.not.i2 = icmp eq i64 %.88.val, 0
  br i1 %.not2.not.not.i.not.i2, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6recipeNtB2o_6Recipe13max_arguments0EBU_.exit.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.x, i64 448 ; 2 uses
  %.not2.not.not.i.not.i = icmp eq ptr %i.w, %i.v
  br i1 %.not2.not.not.i.not.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6recipeNtB2o_6Recipe13max_arguments0EBU_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.x = phi ptr [ %i.w, %bb.f ], [ %.80.val, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 443
  %.val.i.i = load i8, ptr %i.y, align 1, !range !38, !noalias !68718, !noundef !28
  %.not.i.i = icmp eq i8 %.val.i.i, 1
  br i1 %.not.i.i, label %bb.f, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13max_arguments.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6recipeNtB2o_6Recipe13max_arguments0EBU_.exit.i: ; preds = %bb.f, %bb.e, %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit
  %i.z = icmp ult i64 %.88.val, 20587884010836554
  tail call void @llvm.assume(i1 %i.z)
  br label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13max_arguments.exit

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13max_arguments.exit: ; preds = %.lr.ph, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6recipeNtB2o_6Recipe13max_arguments0EBU_.exit.i
  %.sroa.0.0.i = phi i64 [ %.88.val, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtBU_6recipeNtB2o_6Recipe13max_arguments0EBU_.exit.i ], [ -2, %.lr.ph ]
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ab, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe16timestamp_format(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(552) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.g = tail call fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just13attribute_setNtB2_12AttributeSet3get(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, i8 noundef 26) ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !range !97, !noundef !28 ; 2 uses
  %i.i = icmp ne i64 %i.h, 3
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 28
  br i1 %i.j, label %bb.d, label %bb.e, !prof !29

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 539
  %i.l = load i8, ptr %i.k, align 1, !range !40, !noundef !28
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.o, label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !39, !noundef !28
  %.not55 = icmp eq i64 %i.o, -1
  br i1 %.not55, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1260) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !68733
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !68733, !noundef !28 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 312
  %.val1.i = load i64, ptr %i.p, align 8, !noalias !68733
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.h, %.preheader.i.i.preheader.i
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.af, %bb.h ], [ %.val1.i, %.preheader.i.i.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %.val.i, %.preheader.i.i.preheader.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 15674
  %i.s = load i16, ptr %i.r, align 2, !noalias !68734, !noundef !28 ; 2 uses
  %i.t = zext i16 %i.s to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.t, 1352
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.v = icmp eq i16 %i.s, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i.i.i75, i64 1352 ; 2 uses
  %i.x = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i74, 1
  %i.y = icmp eq ptr %i.w, %i.u
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.i, %bb.g
  %.sroa.0.01.i.i.i.i.i75 = phi ptr [ %i.w, %bb.g ], [ %i.q, %.preheader.i.i.i ] ; 2 uses
  %.sroa.8.0.i.i.i.i.i74 = phi i64 [ %i.x, %bb.g ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %i.z = tail call fastcc noundef i8 @_RNvXsk_NtCskXtk6F4WjxZ_4just9attributeNtB5_9AttributeNtNtCsj6eKBz9Db1c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1352) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1352) %.sroa.0.01.i.i.i.i.i75) #76, !noalias !68735
  switch i8 %i.z, label %default.unreachable [
    i8 -1, label %._crit_edge
    i8 0, label %_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe16timestamp_format0B8_.exit
    i8 1, label %bb.g
  ]

default.unreachable:                              ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.g, %.lr.ph, %.preheader.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i = phi i64 [ %i.t, %.preheader.i.i.i ], [ %i.t, %bb.g ], [ %.sroa.8.0.i.i.i.i.i74, %.lr.ph ] ; 2 uses
  %i.aa = icmp eq i64 %.sroa.3.0.i.i.i.i, 0
  br i1 %i.aa, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 15680
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.4.0.i.ph.i.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !68736, !nonnull !28, !noundef !28
  %i.af = add i64 %.sroa.3.0.i.i.i.i, -1
  br label %.preheader.i.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge, %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @809) #75, !noalias !68737
  unreachable

_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe16timestamp_format0B8_.exit: ; preds = %.lr.ph
  %i.ag = icmp samesign ult i64 %.sroa.8.0.i.i.i.i.i74, 11
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 14880
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.ah, i64 %.sroa.8.0.i.i.i.i.i74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i64 72, i1 false), !noalias !68733
  store i64 3, ptr %i.a, align 8, !noalias !68733
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator15evaluate_string(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.n, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !68733
  %.sroa.010.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.712.sroa.0.0.copyload = load i64, ptr %.sroa.712.0..sroa_idx, align 8 ; 2 uses
  %.not56 = icmp eq i64 %.sroa.010.0.copyload, -1
  br i1 %.not56, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 192
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.m

bb.k:                                             ; preds = %_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe16timestamp_format0B8_.exit
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.553.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store i64 %.sroa.010.0.copyload, ptr %0, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.712.sroa.0.0.copyload, ptr %.sroa.452.0..sroa_idx, align 8
  br label %bb.m

bb.l:                                             ; preds = %_RNCNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB6_6Recipe16timestamp_format0B8_.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  store i64 %.sroa.712.sroa.0.0.copyload, ptr %i.e, align 8
  br label %bb.j

bb.m:                                             ; preds = %bb.n, %bb.o, %bb.k, %bb.j
  ret void

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
  store i64 -1, ptr %0, align 8
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe17working_directory(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1, ptr nofree readonly captures(none) %.16.val, ptr nofree readonly captures(none) %.40.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_9
