Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_syntax-4c380be9ffe8a404.typst_syntax.43f15894b109c63c-cgu.0?download=true
inline.NumInlined: 3813
inline.NumDeleted: 1552
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvMNtCs5PEMdK7bMAG_12typst_syntax6sourceNtB2_6Source7replace:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvMNtCs5PEMdK7bMAG_12typst_syntax6sourceNtB2_6Source9with_root(i16 noundef range(i16 1, 0) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 10 uses
  %i.b = invoke fastcc noundef nonnull ptr @_RNvMNtCs5PEMdK7bMAG_12typst_syntax5linesINtB2_5LinesNtNtCs1xwejQucwHj_5alloc6string6StringE3newB4_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  store i64 1, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i128 0, ptr %i.d, align 16
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.b, ptr %.sroa.52.0..sroa_idx, align 16
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i16 %0, ptr %.sroa.63.0..sroa_idx, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #60, !noalias !1663
  %i.e = tail call noundef align 16 dereferenceable_or_null(80) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef range(i64 1, -9223372036854775807) 16) #60, !noalias !1663 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.f, !prof !23

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 80) #58
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtCs5PEMdK7bMAG_12typst_syntax6source11SourceInnerEEEB22_(ptr noalias nofree noundef nonnull align 16 dereferenceable(80) %i.a) #59
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.e, ptr noundef nonnull align 16 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.e

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %eh.lpad-body15

bb.g:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %2) #59
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs5PEMdK7bMAG_12typst_syntax7packageNtB2_15PackageManifest8validate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(432) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [20 x i8], align 4                ; 12 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1678)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 231
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1679, !noundef !19 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.m, -1                ; 2 uses
  %i.n = and i8 %i.m, 127
  %i.o = zext nneg i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1679
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.q, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !1680, !noundef !19 ; 2 uses
  %.not.i1.i = icmp sgt i8 %i.s, -1               ; 2 uses
  %i.t = and i8 %i.s, 127
  %i.u = zext nneg i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !1680
  %.sroa.3.0.i2.i = select i1 %.not.i1.i, i64 %i.w, i64 %i.u
  %i.x = icmp eq i64 %.sroa.3.0.i.i, %.sroa.3.0.i2.i
  br i1 %i.x, label %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1680, !nonnull !19
  %.sroa.0.0.i3.i = select i1 %.not.i1.i, ptr %i.z, ptr %i.y
  %i.aa = load ptr, ptr %i.k, align 8, !alias.scope !1679, !nonnull !19
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.aa, ptr %i.k
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i, ptr nonnull %.sroa.0.0.i3.i, i64 %.sroa.3.0.i.i)
  %i.ab = icmp eq i32 %bcmp.i, 0
  br i1 %i.ab, label %bb.b, label %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 292 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noundef !19
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !noundef !19
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.c, label %bb.e

_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.a, %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.j, i8 0, i64 15, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  store i8 -128, ptr %.sroa.47.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx, align 8
  %i.ah = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @246, ptr noundef nonnull %i.i)
          to label %bb.w unwind label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aj = load i32, ptr %i.ai, align 8, !noundef !19
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !noundef !19
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.ao = load i32, ptr %i.an, align 4, !noundef !19
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !19
  %.not = icmp eq i32 %i.ao, %i.aq
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.h, i8 0, i64 15, i1 false)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 15
  store i8 -128, ptr %.sroa.428.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ac, ptr %i.g, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsc_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx, align 8
  %i.ar = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @244, ptr noundef nonnull %i.g)
          to label %bb.t unwind label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !range !1681, !noundef !19
  %.not73 = icmp eq i32 %i.at, 2
  br i1 %.not73, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, ptr noundef nonnull align 8 dereferenceable(20) %i.as, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1682
  call void @_RNvNtCs6xpQEr8gLsQ_11typst_utils8version_7version(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b), !noalias !1682
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.av = load i32, ptr %i.au, align 8, !noalias !1682, !noundef !19 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !1682, !noundef !19 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !noalias !1682, !noundef !19 ; 3 uses
  store i32 %i.av, ptr %i.e, align 4, !alias.scope !1682
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.ax, ptr %i.ba, align 4, !alias.scope !1682
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.az, ptr %i.bb, align 4, !alias.scope !1682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1682
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !alias.scope !1683, !noundef !19 ; 2 uses
  %i.be = icmp eq i32 %i.av, %i.bd
  br i1 %i.be, label %bb.h, label %.split85

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.f, align 4, !range !47, !alias.scope !1683, !noundef !19
  %i.bg = trunc nuw i32 %i.bf to i1               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = icmp ne i32 %i.ax, %i.bi                ; 2 uses
  %or.cond.not = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %or.cond.not, label %.split84, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !range !47, !alias.scope !1683, !noundef !19
  %i.bm = trunc nuw i32 %i.bl to i1
  br i1 %i.bm, label %bb.k, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread

.split85:                                         ; preds = %bb.g
  %i.bn = icmp ugt i32 %i.av, %i.bd
  br i1 %i.bn, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82

.thread.i:                                        ; preds = %bb.k
  br i1 %i.bj, label %.split84, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !range !47, !alias.scope !1684, !noundef !19
  %i.bq = trunc nuw i32 %i.bp to i1
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = icmp ugt i32 %i.az, %i.bs
  %or.cond91 = select i1 %i.bq, i1 %i.bt, i1 false
  br i1 %or.cond91, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82

.split84:                                         ; preds = %bb.h, %.thread.i
  %i.bu = icmp ugt i32 %i.ax, %i.bi
  br i1 %i.bu, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82

bb.k:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !alias.scope !1683
  %i.bx = icmp ne i32 %i.az, %i.bw                ; 2 uses
  %brmerge.i.not = and i1 %i.bx, %i.bg
  br i1 %brmerge.i.not, label %.thread.i, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit

_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit: ; preds = %bb.k
  br i1 %i.bx, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82, label %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread

bb.l:                                             ; preds = %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread, %bb.f
  store i64 0, ptr %0, align 8
  br label %bb.p

_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82: ; preds = %bb.j, %.split85, %.split84, %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.450.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsh_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_12VersionBoundNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.by, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsc_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  %i.bz = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @242, ptr noundef nonnull %i.c)
          to label %bb.n unwind label %bb.m

_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread: ; preds = %bb.j, %bb.i, %.split85, %.split84, %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.m:                                             ; preds = %bb.o, %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %bb.r unwind label %bb.q

bb.n:                                             ; preds = %_RNvMs9_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersion10matches_ge.exit.thread82
  br i1 %i.bz, label %bb.o, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit78, !prof !23

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @243) #62
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.o
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit78: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit76, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit78, %bb.l
  ret void

bb.q:                                             ; preds = %bb.v, %bb.s, %bb.m
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.r:                                             ; preds = %bb.v, %bb.s, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.v ], [ %i.cd, %bb.s ], [ %i.ca, %bb.m ]
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.u, %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #59
          to label %bb.r unwind label %bb.q

bb.t:                                             ; preds = %bb.e
  br i1 %i.ar, label %bb.u, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit76, !prof !23

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @245) #62
          to label %.noexc75 unwind label %bb.s

.noexc75:                                         ; preds = %bb.u
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit76: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 1, ptr %0, align 8
  br label %bb.p

bb.v:                                             ; preds = %bb.x, %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #59
          to label %bb.r unwind label %bb.q

bb.w:                                             ; preds = %_RNvXs4_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  br i1 %i.ah, label %bb.x, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !23

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @247) #62
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.x
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 1, ptr %0, align 8
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [4 x i8], align 4                 ; 13 uses
  %i.d = icmp samesign ult i32 %1, 128
  %.sink7.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sink7.sroa.gep8 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.sink7.sroa.gep9 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.e = icmp samesign ult i32 %1, 2048
  %i.f = trunc i32 %1 to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128
  %i.i = lshr i32 %1, 6
  %i.j = trunc i32 %i.i to i8                     ; 2 uses
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 2 uses
  %i.m = lshr i32 %1, 12
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = lshr i32 %1, 18
  %i.r = trunc nuw nsw i32 %i.q to i8
  %i.s = or disjoint i8 %i.r, -16
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.j, -64
  store i8 %i.t, ptr %i.c, align 4, !alias.scope !1698
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = or disjoint i8 %i.n, -32
  store i8 %i.v, ptr %i.c, align 4, !alias.scope !1698
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.l, ptr %i.w, align 1, !alias.scope !1698
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.f:                                             ; preds = %bb.d
  store i8 %i.s, ptr %i.c, align 4, !alias.scope !1698
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.p, ptr %i.x, align 1, !alias.scope !1698
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.l, ptr %i.y, align 2, !alias.scope !1698
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.sink7.sroa.phi = phi ptr [ %.sink7.sroa.gep, %bb.c ], [ %.sink7.sroa.gep8, %bb.e ], [ %.sink7.sroa.gep9, %bb.f ]
  %.sroa.0.05.i = phi i64 [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.f ]
  store i8 %i.h, ptr %.sink7.sroa.phi, align 1, !alias.scope !1698
  call void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec4push.exit

bb.g:                                             ; preds = %bb.a
  %i.z = trunc nuw nsw i32 %1 to i8               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !1699, !noundef !19 ; 3 uses
  %.not.i = icmp sgt i8 %i.ab, -1
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1700)
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_12BlockComment4text:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode10unexpected(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.d, i8 0, i64 15, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  store i8 -128, ptr %.sroa.46.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.01.0 = load i8, ptr %.sroa.01.0.in, align 1, !range !21, !noundef !19
  %i.f = tail call { ptr, i64 } @_RNvMNtCs5PEMdK7bMAG_12typst_syntax4kindNtB2_10SyntaxKind4name(i8 noundef %.sroa.01.0) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs5PEMdK7bMAG_12typst_syntax, ptr %.sroa.410.0..sroa_idx, align 8
  %i.j = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @31, ptr noundef nonnull @275, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5PEMdK7bMAG_12typst_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #59
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit, !prof !23

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #62
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs5PEMdK7bMAG_12typst_syntax.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @_RINvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB6_10SyntaxNode16convert_to_errorNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB8_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #61
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode15convert_to_kind(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i8 noundef range(i8 6, 55) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #5 {
bb.a:
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.0.0 = load i8, ptr %.sroa.0.0.in, align 1, !range !21, !noundef !19
  %i.a = icmp eq i8 %.sroa.0.0, 1
  br i1 %i.a, label %bb.b, label %.preheader, !prof !23

default.unreachable11:                            ; preds = %.preheader
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @277, ptr noundef nonnull inttoptr (i64 87 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #62
  unreachable

.preheader:                                       ; preds = %bb.a, %bb.d
  %.sroa.02.0 = phi ptr [ %i.e, %bb.d ], [ %0, %bb.a ] ; 4 uses
  %i.b = load i8, ptr %.sroa.02.0, align 8, !range !30, !noundef !19
  switch i8 %i.b, label %default.unreachable11 [
    i8 0, label %bb.e
    i8 1, label %bb.e
    i8 2, label %bb.c
    i8 3, label %bb.d
  ], !prof !48

bb.c:                                             ; preds = %.preheader
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #62
  unreachable

bb.d:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 1
  store i8 %1, ptr %i.d, align 1
  %i.e = tail call fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #63
  br label %.preheader

bb.e:                                             ; preds = %.preheader, %.preheader
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 1
  store i8 %1, ptr %.sroa.01.0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs0_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB5_10SyntaxNode16replace_children(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i50.i.i.i = alloca [31 x i8], align 1  ; 4 uses
  %.sroa.4.i36.i.i.i = alloca [31 x i8], align 1  ; 4 uses
  %.sroa.4.i.i.i.i = alloca [31 x i8], align 1    ; 4 uses
  %.sroa.49.i.i.i.i.i.i.i.i.i = alloca [31 x i8], align 1 ; 4 uses
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  br label %.noexc7

.noexc7:                                          ; preds = %bb.c, %bb.a
  %.sroa.01.0.i = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ] ; 3 uses
  %i.d = load i8, ptr %.sroa.01.0.i, align 8, !range !30, !noundef !19
  switch i8 %i.d, label %.noexc7.unreachabledefault [
    i8 0, label %bb.ds
    i8 1, label %bb.b
    i8 2, label %bb.ds
    i8 3, label %bb.c
  ]

.noexc7.unreachabledefault:                       ; preds = %.noexc7
  unreachable

default.unreachable:                              ; preds = %bb.q, %bb.ab, %bb.ak, %bb.ap, %bb.as, %bb.aw, %bb.az, %bb.dh
  unreachable

bb.b:                                             ; preds = %.noexc7
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.f = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node9InnerNodeE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #63
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 14 uses

bb.c:                                             ; preds = %.noexc7
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.h = invoke fastcc noundef nonnull align 8 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs5PEMdK7bMAG_12typst_syntax4node14WarningWrapperE8make_mutBK_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.g) #63
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  %i.j = load i64, ptr %i.i, align 8, !range !31, !alias.scope !1914, !noundef !19
  %i.k = lshr i64 %i.j, 48                        ; 2 uses
  %i.l = trunc nuw i64 %i.k to i16
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1915, !noundef !19 ; 15 uses
  %i.o = icmp ult i64 %i.n, 288230376151711744
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ult i64 %1, %2
  %i.q = icmp ne i64 %i.n, 0
  %or.cond285.i = and i1 %i.p, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 14 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1913 ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !1915 ; 25 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !1913 ; 15 uses
  br i1 %or.cond285.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %1)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1917, !nonnull !19, !noundef !19 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1917, !noundef !19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.z, i64 noundef %i.ab)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i unwind label %bb.g, !noalias !1918, !inline_history !6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %3, align 8, !range !33, !alias.scope !1919, !noundef !19 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ad, label %common.resume, label %common.resume.sink.split

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %bb.f
  %.val.i.i = load i64, ptr %3, align 8, !range !33, !alias.scope !1919, !noundef !19 ; 2 uses
  %i.ae = icmp eq i64 %.val.i.i, 0
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEEB1c_.exit.sink.split

._crit_edge.i:                                    ; preds = %bb.j, %bb.i, %bb.e
  %.sroa.0163.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.al, %bb.j ], [ %.sroa.0163.0286.i, %bb.i ] ; 27 uses
  %.promoted.i = phi i64 [ %1, %bb.e ], [ %i.ak, %bb.j ], [ %.sroa.0.0287.i, %bb.i ] ; 26 uses
  %i.af = icmp ult i64 %.promoted.i, %2           ; 3 uses
  %i.ag = icmp samesign ult i64 %.sroa.0163.0.lcssa.i, %i.n
  %or.cond66.i344 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond66.i344, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.sroa.0.0287.i = phi i64 [ %1, %.lr.ph.i ], [ %i.ak, %bb.j ] ; 4 uses
  %.sroa.0163.0286.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.j ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.0163.0286.i, %i.x
  br i1 %exitcond.not.i, label %.invoke489.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.sroa.0.0287.i
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.sroa.0163.0286.i
  %i.aj = tail call noundef zeroext i1 @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode11spanless_eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai), !noalias !1920
  br i1 %i.aj, label %bb.j, label %._crit_edge.i

bb.j:                                             ; preds = %bb.i
  %i.ak = add nuw i64 %.sroa.0.0287.i, 1          ; 3 uses
  %i.al = add nuw nsw i64 %.sroa.0163.0286.i, 1   ; 3 uses
  %i.am = icmp ult i64 %i.ak, %2
  %i.an = icmp samesign ult i64 %i.al, %i.n
  %or.cond.i = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond.i, label %bb.h, label %._crit_edge.i

bb.k:                                             ; preds = %bb.l
  %i.ao = icmp ult i64 %.promoted.i, %i.aq        ; 3 uses
  %i.ap = icmp samesign ult i64 %.sroa.0163.0.lcssa.i, %i.as
  %or.cond66.i = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond66.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.k
  %4 = phi i1 [ %i.ao, %bb.k ], [ %i.af, %._crit_edge.i ]
  %.sroa.4.0.i346 = phi i64 [ %i.aq, %bb.k ], [ %2, %._crit_edge.i ] ; 2 uses
  %.sroa.6.0.i345 = phi i64 [ %i.as, %bb.k ], [ %i.n, %._crit_edge.i ] ; 2 uses
  %i.aq = add i64 %.sroa.4.0.i346, -1             ; 6 uses
  %i.ar = icmp ult i64 %i.aq, %i.s
  br i1 %i.ar, label %bb.l, label %.invoke489.i

bb.l:                                             ; preds = %.lr.ph
  %i.as = add nsw i64 %.sroa.6.0.i345, -1         ; 4 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.aq
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.as
  %i.av = tail call noundef zeroext i1 @_RNvMs_NtCs5PEMdK7bMAG_12typst_syntax4nodeNtB4_10SyntaxNode11spanless_eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au), !noalias !1920
  br i1 %i.av, label %bb.k, label %._crit_edge

.invoke489.i:                                     ; preds = %bb.h, %.lr.ph
  %i.aw = phi i64 [ %i.aq, %.lr.ph ], [ %.sroa.0.0287.i, %bb.h ]
  %i.ax = phi ptr [ @358, %.lr.ph ], [ @357, %bb.h ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aw, i64 noundef %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #58
          to label %.cont490.i unwind label %bb.dr, !noalias !1920

.cont490.i:                                       ; preds = %.invoke489.i
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit:  ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeE6map_oryNCNvMs4_BL_NtBL_9InnerNode16replace_childrens0_0EBN_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %.invoke.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %bb.cz, %bb.cx, %bb.ct, %bb.cr, %bb.cl, %bb.cj
  %.sroa.14.0 = phi i64 [ %i.nc, %bb.ct ], [ %.sroa.0163.0.lcssa.i, %bb.cx ], [ %i.nl, %bb.cz ], [ %.sroa.0163.0.lcssa.i, %bb.cj ], [ %i.ml, %bb.cl ], [ %.sroa.0163.0.lcssa.i, %bb.cr ], [ %.sroa.14.1, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %i.n, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body.i209.i, %bb.ct ], [ %i.nj, %bb.cx ], [ %i.nj, %bb.cz ], [ %eh.lpad-body.i209.i, %bb.cj ], [ %eh.lpad-body.i209.i, %bb.cl ], [ %eh.lpad-body.i209.i, %bb.cr ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeEBG_(ptr noalias nofree noundef nonnull align 8 %i.u, i64 noundef %.sroa.14.0)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10 unwind label %bb.m, !noalias !1921, !inline_history !6

bb.m:                                             ; preds = %.body.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.az, label %.body12, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = shl nuw i64 %.sroa.0.0.copyload, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #60, !noalias !1921, !inline_history !41
  br label %.body12

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit.i10: ; preds = %.body.i
  %i.bb = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bb, label %common.resume, label %common.resume.sink.split

._crit_edge:                                      ; preds = %bb.k, %bb.l, %._crit_edge.i
  %.sroa.6.0.i.lcssa = phi i64 [ %i.n, %._crit_edge.i ], [ %i.as, %bb.k ], [ %.sroa.6.0.i345, %bb.l ] ; 17 uses
  %.sroa.4.0.i.lcssa = phi i64 [ %2, %._crit_edge.i ], [ %i.aq, %bb.k ], [ %.sroa.4.0.i346, %bb.l ] ; 31 uses
  %.lcssa160 = phi i1 [ %i.af, %._crit_edge.i ], [ %i.ao, %bb.k ], [ %4, %bb.l ]
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !noalias !1922 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.bc = icmp samesign ult i64 %.sroa.6.0.i.lcssa, %.sroa.0163.0.lcssa.i
  br i1 %i.bc, label %.invoke.i, label %bb.o, !prof !23

bb.o:                                             ; preds = %._crit_edge
  %i.bd = sub nuw nsw i64 %.sroa.6.0.i.lcssa, %.sroa.0163.0.lcssa.i ; 6 uses
  %.idx223.i = shl nuw nsw i64 %.sroa.0163.0.lcssa.i, 5
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx223.i ; 11 uses
  %i.bf = icmp ult i64 %.sroa.4.0.i.lcssa, %.promoted.i
  %.not61.i = icmp ugt i64 %.sroa.4.0.i.lcssa, %i.s
  %or.cond67.i = or i1 %i.bf, %.not61.i
  br i1 %or.cond67.i, label %.invoke.i, label %bb.p, !prof !49

.invoke.i:                                        ; preds = %bb.o, %._crit_edge
  %i.bg = phi i64 [ %.promoted.i, %bb.o ], [ %.sroa.0163.0.lcssa.i, %._crit_edge ]
  %i.bh = phi i64 [ %.sroa.4.0.i.lcssa, %bb.o ], [ %.sroa.6.0.i.lcssa, %._crit_edge ]
  %i.bi = phi i64 [ %i.s, %bb.o ], [ %i.n, %._crit_edge ]
  %i.bj = phi ptr [ @359, %bb.o ], [ @360, %._crit_edge ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.bg, i64 noundef %i.bh, i64 noundef %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #58
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !1920

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.p:                                             ; preds = %bb.o
  %.idx225.i = shl nuw nsw i64 %.promoted.i, 5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx225.i ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1913, !noundef !19
  %.idx.i = shl nuw nsw i64 %.sroa.6.0.i.lcssa, 5
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx.i ; 17 uses
  %i.bo = icmp eq i64 %.sroa.0163.0.lcssa.i, %.sroa.6.0.i.lcssa ; 10 uses
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader45

.preheader45:                                     ; preds = %bb.p, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i.i = phi i64 [ %i.cn, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %bb.p ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.cm, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %bb.p ]
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %.sroa.04.0.i.i
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.preheader45
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %i.bp, %.preheader45 ], [ %i.cd, %bb.u ] ; 6 uses
  %i.bq = load i8, ptr %.sroa.04.0.i.i.i.i.i, align 8, !range !30, !noalias !1920, !noundef !19
  switch i8 %i.bq, label %default.unreachable [
    i8 0, label %bb.r
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 23
  %i.bs = load i8, ptr %i.br, align 1, !noalias !1920, !noundef !19 ; 2 uses
  %.not14.i.i.i.i.i = icmp sgt i8 %i.bs, -1
  br i1 %.not14.i.i.i.i.i, label %bb.v, label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !1920, !nonnull !19, !noundef !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !noalias !1923, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.t:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !1920, !nonnull !19, !noundef !19 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 47
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !1923, !noundef !19 ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i8 %i.ca, -1
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.y

bb.u:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !1920, !nonnull !19, !noundef !19
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  br label %bb.q

bb.v:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !1920, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.w:                                             ; preds = %bb.r
  %i.cg = and i8 %i.bs, 127
  %i.ch = zext nneg i8 %i.cg to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.x:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !1923, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

bb.y:                                             ; preds = %bb.t
  %i.ck = and i8 %i.ca, 127
  %i.cl = zext nneg i8 %i.ck to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.s
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %i.cf, %bb.v ], [ %i.bw, %bb.s ], [ %i.ch, %bb.w ], [ %i.cl, %bb.y ], [ %i.cj, %bb.x ]
  %i.cm = add i64 %.sroa.0.1.i.i.i.i.i, %.sroa.02.0.i.i ; 2 uses
  %i.cn = add nuw i64 %.sroa.04.0.i.i, 1          ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.bd
  br i1 %i.co, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader45

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i, %bb.p
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.p ], [ %i.cm, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ]
  %.idx224.i = shl nuw nsw i64 %.sroa.4.0.i.lcssa, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx224.i ; 3 uses
  %i.cq = icmp samesign eq i64 %.promoted.i, %.sroa.4.0.i.lcssa ; 3 uses
  br i1 %i.cq, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, label %bb.z

bb.z:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i
  %i.cr = sub nuw nsw i64 %.sroa.4.0.i.lcssa, %.promoted.i
  br label %bb.aa

bb.aa:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i, %bb.z
  %.sroa.04.0.i76.i = phi i64 [ 0, %bb.z ], [ %i.dq, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ] ; 2 uses
  %.sroa.02.0.i77.i = phi i64 [ 0, %bb.z ], [ %i.dp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ]
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %.sroa.04.0.i76.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %bb.aa
  %.sroa.04.0.i.i.i.i78.i = phi ptr [ %i.cs, %bb.aa ], [ %i.dg, %bb.af ] ; 6 uses
  %i.ct = load i8, ptr %.sroa.04.0.i.i.i.i78.i, align 8, !range !30, !noalias !1920, !noundef !19
  switch i8 %i.ct, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 23
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !1920, !noundef !19 ; 2 uses
  %.not14.i.i.i.i83.i = icmp sgt i8 %i.cv, -1
  br i1 %.not14.i.i.i.i83.i, label %bb.ag, label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !1920, !nonnull !19, !noundef !19
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !1924, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ae:                                            ; preds = %bb.ab
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !noalias !1920, !nonnull !19, !noundef !19 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 47
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !1924, !noundef !19 ; 2 uses
  %.not.i.i.i.i79.i = icmp sgt i8 %i.dd, -1
  br i1 %.not.i.i.i.i79.i, label %bb.ai, label %bb.aj

bb.af:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !noalias !1920, !nonnull !19, !noundef !19
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  br label %bb.ab

bb.ag:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i78.i, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !1920, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ah:                                            ; preds = %bb.ac
  %i.dj = and i8 %i.cv, 127
  %i.dk = zext nneg i8 %i.dj to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.ai:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !1924, !noundef !19
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

bb.aj:                                            ; preds = %bb.ae
  %i.dn = and i8 %i.dd, 127
  %i.do = zext nneg i8 %i.dn to i64
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ad
  %.sroa.0.1.i.i.i.i81.i = phi i64 [ %i.di, %bb.ag ], [ %i.cz, %bb.ad ], [ %i.dk, %bb.ah ], [ %i.do, %bb.aj ], [ %i.dm, %bb.ai ]
  %i.dp = add i64 %.sroa.0.1.i.i.i.i81.i, %.sroa.02.0.i77.i ; 2 uses
  %i.dq = add nuw i64 %.sroa.04.0.i76.i, 1        ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %i.cr
  br i1 %i.dr, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, label %bb.aa

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i
  %.sroa.0.0.i82.i = phi i64 [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i ], [ %i.dp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs_BX_BV_3lenNCINvXsK_NtNtB8_6traits5accumjNtB28_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i80.i ]
  %i.ds = add i64 %.sroa.0.0.i.i, %i.bm
  %i.dt = sub i64 %i.ds, %.sroa.0.0.i82.i
  store i64 %i.dt, ptr %i.bl, align 8, !alias.scope !1913
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !1913, !noundef !19
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs0_BS_BQ_11descendantsNCINvXsK_NtB1I_5accumjNtB3C_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit.i, label %.preheader

.preheader:                                       ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i
  %.sroa.04.0.i86.i = phi i64 [ %i.eg, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ] ; 2 uses
  %.sroa.02.0.i87.i = phi i64 [ %i.ef, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodejjNvMs0_BX_BV_11descendantsNCINvXsK_NtNtB8_6traits5accumjNtB2i_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1K_EE0E0BZ_.exit.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs5PEMdK7bMAG_12typst_syntax4node10SyntaxNodeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1K_8adapters3map8map_foldRBQ_jjNvMs_BS_BQ_3lenNCINvXsK_NtB1I_5accumjNtB3s_3Sum3sumINtB2u_3MapBF_B34_EE0E0EBU_.exit85.i ]
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %.sroa.04.0.i86.i
  br label %bb.ak
end_hunk_1
