Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3957
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMNtCsc4241EHy6Do_9typst_kit8datetimeNtB2_4Time5today:bb.a
  %i.aw = trunc i32 %i.am to i8
  %i.ax = add i8 %i.au, %i.aw
  %i.ay = lshr i8 %i.ax, 1
  %i.az = and i8 %i.ay, 31
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations8datetimeNtB2_8Datetime8from_ymd(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i32 noundef %i.ad, i8 noundef %i.av, i8 noundef %i.az)
  br label %bb.i

bb.h:                                             ; preds = %.thread33
  %i.ba = tail call i32 @llvm.fptosi.sat.i32.f64(double %i.x) ; 2 uses
  %i.bb = add i32 %i.ba, 86399
  %or.cond2 = icmp ult i32 %i.bb, 172799
  br i1 %or.cond2, label %bb.e, label %bb.j

bb.i:                                             ; preds = %bb.j, %_RNvXsb_NtCseKXfNLkF2r6_6chrono8datetimeINtB5_8DateTimeNtNtNtB7_6offset5fixed11FixedOffsetENtNtB7_6traits8Datelike3dayCsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void

bb.j:                                             ; preds = %bb.h, %.thread33
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 -1, ptr %i.bc, align 1
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB2_14SystemPackages14latest_version(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !5945, !noundef !17 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.d, -1                ; 2 uses
  %i.e = and i8 %i.d, 127
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5945
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.f
  %i.i = icmp eq i64 %.sroa.3.0.i.i, 7
  br i1 %i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !alias.scope !5945, !nonnull !17
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.j, ptr %2 ; 2 uses
  %i.k = load i32, ptr %.sroa.0.0.i.i, align 1
  %i.l = xor i32 %i.k, 1986359920
  %i.m = getelementptr i8, ptr %.sroa.0.0.i.i, i64 3
  %i.n = load i32, ptr %i.m, align 1
  %i.o = xor i32 %i.n, 2003134838
  %i.p = or i32 %i.l, %i.o
  %i.q = icmp ne i32 %i.p, 0
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %bb.a, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !22, !noundef !17
  %.not = icmp eq i64 %i.u, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  tail call void @_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages14latest_version(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.j

bb.c:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread
  call void @_RNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB4_10FsPackages14latest_version(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  %i.v = load i32, ptr %i.b, align 4, !range !28, !noundef !17
  %i.w = trunc nuw i32 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5946
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.a, i8 0, i64 15, i1 false), !noalias !5946
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !5946
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef 34)
          to label %_RNCNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB4_14SystemPackages14latest_versions_0B6_.exit unwind label %bb.e, !noalias !5946

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #44
          to label %bb.g unwind label %bb.f, !noalias !5946

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !5946
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.x

_RNCNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB4_14SystemPackages14latest_versions_0B6_.exit: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5946
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNCNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB4_14SystemPackages14latest_versions_0B6_.exit
  %storemerge = phi i32 [ 0, %bb.h ], [ 1, %_RNCNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB4_14SystemPackages14latest_versions_0B6_.exit ]
  store i32 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsc4241EHy6Do_9typst_kit8packagesNtB2_14SystemPackages6obtain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [8 x i8], align 4                 ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 8 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.040 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.410.sroa.0 = alloca [20 x i8], align 4   ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.16 = alloca [32 x i8], align 8           ; 6 uses
  %i.aa = alloca [256 x i8], align 8              ; 12 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !22, !noundef !17
  %.not = icmp eq i64 %i.ae, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB4_10FsPackages6obtain(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.af = load i64, ptr %i.ac, align 8, !range !22, !noundef !17
  %.not19 = icmp eq i64 %i.af, -1
  br i1 %.not19, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !22, !noundef !17
  %.not20 = icmp eq i64 %i.ah, -1
  br i1 %.not20, label %._RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread_crit_edge, label %bb.g

._RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread_crit_edge: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !alias.scope !6060
  br label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  store i32 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.c

bb.f:                                             ; preds = %bb.n, %bb.co, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.d
  ret void

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMs_NtCsc4241EHy6Do_9typst_kit8packagesNtB4_10FsPackages6obtain(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.aj = load i64, ptr %i.ab, align 8, !range !22, !noundef !17
  %.not21 = icmp eq i64 %i.aj, -1
  br i1 %.not21, label %bb.o, label %bb.n

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %._RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread_crit_edge, %bb.o, %bb.ck, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  %i.ak = phi i8 [ %.pre, %._RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread_crit_edge ], [ %i.bi, %bb.o ], [ %i.bi, %bb.ck ], [ %i.bi, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.040)
  call void @llvm.experimental.noalias.scope.decl(metadata !6060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6061
  %.not.i = icmp sgt i8 %i.ak, -1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val46.i = load ptr, ptr %2, align 8, !alias.scope !6060 ; 5 uses
  %.val47.i = load i64, ptr %i.al, align 8, !alias.scope !6060
  br i1 %.not.i, label %3, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i

3:                                                ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread
  %.not.i.i.i = icmp eq ptr %.val46.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i, label %bb.h

bb.h:                                             ; preds = %3
  %i.am = getelementptr inbounds i8, ptr %.val46.i, i64 -16
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !6061
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i, !prof !23

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %.val46.i) #43
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread, %bb.h, %3
  %.sroa.06.0.i = phi ptr [ %.val46.i, %bb.h ], [ inttoptr (i64 16 to ptr), %3 ], [ %.val46.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread ]
  store ptr %.sroa.06.0.i, ptr %i.x, align 8, !noalias !6061
  %.sroa.58.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %.val47.i, ptr %.sroa.58.0..sroa_idx9.i, align 8, !noalias !6061
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !6060, !noundef !17
  %.not44.i = icmp sgt i8 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val.i = load ptr, ptr %i.ap, align 8, !alias.scope !6060 ; 5 uses
  %.val45.i = load i64, ptr %i.as, align 8, !alias.scope !6060
  br i1 %.not44.i, label %4, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

4:                                                ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i
  %.not.i.i48.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, label %bb.j

bb.j:                                             ; preds = %4
  %i.at = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.au = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !6061
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.k, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !prof !23

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %.val.i) #43
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x) #44
          to label %common.resume unwind label %bb.m, !noalias !6061

bb.m:                                             ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !6061
  unreachable

common.resume:                                    ; preds = %.body, %bb.cm, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.gz, %bb.cm ], [ %i.aw, %bb.l ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i, %4, %bb.j
  %.sroa.027.0.i = phi ptr [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i, %bb.j ], [ %.val.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.410.sroa.6.0..sroa.410.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.ay, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !noalias !6060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6061
  %.sroa.410.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.410.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.410.sroa.0.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.040)
  store i32 0, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.410.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.410.sroa.0, i64 20, i1 false)
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.027.0.i, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.val45.i, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.sroa.0)
  br label %bb.f

bb.n:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  store i32 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.f

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !6062, !noundef !17 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.bb, -1               ; 2 uses
  %i.bc = and i8 %i.bb, 127
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !6062 ; 2 uses
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.bf, i64 %i.bd
  %i.bg = icmp eq i64 %.sroa.3.0.i.i, 7
  %i.bh = lshr i64 %i.bf, 56
  %i.bi = trunc nuw i64 %i.bh to i8               ; 3 uses
  br i1 %i.bg, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.o
  %i.bj = load ptr, ptr %2, align 8, !alias.scope !6062, !nonnull !17
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.bj, ptr %2 ; 2 uses
  %i.bk = load i32, ptr %.sroa.0.0.i.i, align 1
  %i.bl = xor i32 %i.bk, 1986359920
  %i.bm = getelementptr i8, ptr %.sroa.0.0.i.i, i64 3
  %i.bn = load i32, ptr %i.bm, align 1
  %i.bo = xor i32 %i.bn, 2003134838
  %i.bp = or i32 %i.bl, %i.bo
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.p, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

bb.p:                                             ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages7package(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.y, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.bu = load i8, ptr %i.bt, align 4, !range !18, !noundef !17 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 2
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.bw, i64 64, i1 false)
  br label %bb.co

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.y, i64 12, i1 false)
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 13
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.615.0..sroa_idx, i64 176, i1 false)
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(67) %.sroa.514.0..sroa_idx, i64 67, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i8 %i.bu, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.bx = getelementptr i8, ptr %1, i64 96
  %.val = load ptr, ptr %i.bx, align 8, !nonnull !17, !noundef !17
  %i.by = getelementptr i8, ptr %1, i64 104
  %.val24 = load i64, ptr %i.by, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6063
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6063
  store ptr %2, ptr %i.u, align 8, !noalias !6063
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !6063
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.bz, ptr %i.ca, align 8, !noalias !6063
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx.i, align 8, !noalias !6063
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noundef nonnull @57, ptr noundef nonnull %i.u)
          to label %.noexc unwind label %bb.ce

.noexc:                                           ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6063
  call void @llvm.experimental.noalias.scope.decl(metadata !6064)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.val.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !6064, !noalias !6063, !nonnull !17, !noundef !17 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val1.i.i = load i64, ptr %i.cc, align 8, !alias.scope !6064, !noalias !6063, !noundef !17
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.u unwind label %bb.s, !noalias !6065

bb.s:                                             ; preds = %.noexc
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6066)
  call void @llvm.experimental.noalias.scope.decl(metadata !6067)
  %.val.i.i.i.i = load i64, ptr %i.v, align 8, !range !21, !alias.scope !6068, !noalias !6063, !noundef !17 ; 2 uses
  %i.ce = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ce, label %.body, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !6069
  br label %.body

bb.u:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !6070)
  call void @llvm.experimental.noalias.scope.decl(metadata !6071)
  %.val.i.i2.i.i = load i64, ptr %i.v, align 8, !range !21, !alias.scope !6072, !noalias !6063, !noundef !17 ; 2 uses
  %i.cf = icmp eq i64 %.val.i.i2.i.i, 0
  br i1 %i.cf, label %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i.i2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !6073
  br label %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i

_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6063
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !6063, !nonnull !17, !noundef !17 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !6063, !noundef !17 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6063
  store ptr %i.ck, ptr %i.r, align 8, !noalias !6063
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXsc_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !6063
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @49, ptr noundef nonnull %i.r)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc4241EHy6Do_9typst_kit.exit.i unwind label %bb.x, !noalias !6074

.body.i:                                          ; preds = %bb.ac, %.body98.i, %bb.z, %bb.y, %bb.x
  %.pn64.i = phi { ptr, i32 } [ %i.cp, %bb.y ], [ %i.cm, %bb.x ], [ %i.cp, %bb.z ], [ %.pn62.i, %.body98.i ], [ %.pn62.i, %bb.ac ] ; 2 uses
  %.val75.i = load i64, ptr %i.w, align 8, !range !21, !alias.scope !6075, !noalias !6063, !noundef !17 ; 2 uses
  %i.cl = icmp eq i64 %.val75.i, 0
  br i1 %i.cl, label %.body, label %bb.w

bb.w:                                             ; preds = %.body.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef %.val75.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !6076
  br label %.body

bb.x:                                             ; preds = %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6063
  call void @llvm.experimental.noalias.scope.decl(metadata !6077)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i84.i = load ptr, ptr %i.cn, align 8, !alias.scope !6077, !noalias !6063, !nonnull !17, !noundef !17 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i85.i = load i64, ptr %i.co, align 8, !alias.scope !6077, !noalias !6063, !noundef !17
  invoke void @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.cj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i84.i, i64 noundef %.val1.i85.i)
          to label %bb.aa unwind label %bb.y, !noalias !6078

bb.y:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc4241EHy6Do_9typst_kit.exit.i
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6079)
  call void @llvm.experimental.noalias.scope.decl(metadata !6080)
  %.val.i.i.i86.i = load i64, ptr %i.s, align 8, !range !21, !alias.scope !6081, !noalias !6063, !noundef !17 ; 2 uses
  %i.cq = icmp eq i64 %.val.i.i.i86.i, 0
  br i1 %i.cq, label %.body.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i84.i, i64 noundef %.val.i.i.i86.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !6082
  br label %.body.i

bb.aa:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc4241EHy6Do_9typst_kit.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6083)
  call void @llvm.experimental.noalias.scope.decl(metadata !6084)
  %.val.i.i2.i88.i = load i64, ptr %i.s, align 8, !range !21, !alias.scope !6085, !noalias !6063, !noundef !17 ; 2 uses
  %i.cr = icmp eq i64 %.val.i.i2.i88.i, 0
  br i1 %i.cr, label %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit89.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i84.i, i64 noundef %.val.i.i2.i88.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !6086
  br label %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit89.i

_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit89.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6063
  %i.cs = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjfGn3GvpENR_8fastrand10global_rng3RNG0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !range !41, !noalias !6087, !noundef !17
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %._RNvYNCNKNvNtCsjfGn3GvpENR_8fastrand10global_rng3RNG0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellNtCsjfGn3GvpENR_8fastrand3RngEzE16get_or_init_slowNvNvNtB1O_10global_rng3RNG27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit.exit.i.i.i, !prof !16

._RNvYNCNKNvNtCsjfGn3GvpENR_8fastrand10global_rng3RNG0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtBY_6option6OptionQIB1D_INtNtBY_4cell4CellNtBa_3RngEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit_crit_edge.i.i.i: ; preds = %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit89.i
  %.pre.i.i.i = load i64, ptr %i.cs, align 8, !noalias !6063
  br label %bb.ae

_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellNtCsjfGn3GvpENR_8fastrand3RngEzE16get_or_init_slowNvNvNtB1O_10global_rng3RNG27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit89.i
  %i.cw = invoke { i64, i64 } @_RNvNtCsjfGn3GvpENR_8fastrand10global_rng11random_seed()
          to label %.noexc.i25 unwind label %bb.ad, !noalias !6074 ; 2 uses

end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages14latest_version:bb.a
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.4.0.copyload.i.i.i.i.i.i, ptr nonnull %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !7289
  %i.bs = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bs, label %bb.q, label %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions_0B9_.exit.thread.i.i.i.i.i.i.i

_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions_0B9_.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions_0B9_.exit.i.i.i.i.i.i.i, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.77.i.i, i64 12, i1 false)
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs261H7cERR92_10serde_json5value5ValueNtNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB1Z_16UniversePackages14latest_version18MinimalPackageInfoNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNCB1T_0NCINvNtB6_6filter11filter_foldB1R_B3w_NCB1T_s_0NCINvNtB6_3map8map_foldB1R_B3w_B3w_NCB1T_s0_0NvYB3w_NtNtBa_3cmp3Ord3maxE0E0E0B21_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions_0B9_.exit.thread.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !7290
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs261H7cERR92_10serde_json5value5ValueNtNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB1Z_16UniversePackages14latest_version18MinimalPackageInfoNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNCB1T_0NCINvNtB6_6filter11filter_foldB1R_B3w_NCB1T_s_0NCINvNtB6_3map8map_foldB1R_B3w_B3w_NCB1T_s0_0NvYB3w_NtNtBa_3cmp3Ord3maxE0E0E0B21_.exit.i.i.i.i.i

bb.q:                                             ; preds = %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions_0B9_.exit.i.i.i.i.i.i.i
  %i.bu = icmp eq i64 %i.bq, 0
  br i1 %i.bu, label %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions0_0B9_.exit.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !7291
  br label %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions0_0B9_.exit.i.i.i.i.i.i.i.i

_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions0_0B9_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7292
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.77.i.i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i64 12, i1 false), !noalias !7288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7301)
  %i.bv = load i32, ptr %i.bk, align 4, !alias.scope !7302, !noalias !7303, !noundef !17 ; 2 uses
  %i.bw = load i32, ptr %i.d, align 4, !alias.scope !7304, !noalias !7303, !noundef !17 ; 2 uses
  %i.bx = icmp eq i32 %i.bv, %i.bw
  %i.by = icmp ult i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.s, label %_RNvYNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions0_0B9_.exit.i.i.i.i.i.i.i.i
  %i.bz = load i32, ptr %i.bl, align 4, !alias.scope !7302, !noalias !7303, !noundef !17 ; 2 uses
  %i.ca = load i32, ptr %i.bm, align 4, !alias.scope !7304, !noalias !7303, !noundef !17 ; 2 uses
  %i.cb = icmp eq i32 %i.bz, %i.ca
  %i.cc = icmp ult i32 %i.bz, %i.ca
  br i1 %i.cb, label %.split.i.i.i.i.i.i.i.i.i.i, label %_RNvYNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.s
  %i.cd = load i32, ptr %i.bn, align 4, !alias.scope !7302, !noalias !7303, !noundef !17
  %i.ce = load i32, ptr %i.bo, align 4, !alias.scope !7304, !noalias !7303, !noundef !17
  %i.cf = icmp ult i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.t, label %bb.u

_RNvYNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions0_0B9_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %i.by, %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions0_0B9_.exit.i.i.i.i.i.i.i.i ], [ %i.cc, %bb.s ]
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvYNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvYNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.d, %bb.t ], [ %i.bk, %.split.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %_RNvYNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %.sink.i.i.i.i.i.i.i.i.i.i, i64 12, i1 false), !alias.scope !7305, !noalias !7306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7292
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs261H7cERR92_10serde_json5value5ValueNtNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB1Z_16UniversePackages14latest_version18MinimalPackageInfoNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNCB1T_0NCINvNtB6_6filter11filter_foldB1R_B3w_NCB1T_s_0NCINvNtB6_3map8map_foldB1R_B3w_B3w_NCB1T_s0_0NvYB3w_NtNtBa_3cmp3Ord3maxE0E0E0B21_.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.77.i.i, i64 12, i1 false)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs261H7cERR92_10serde_json5value5ValueNtNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB1Z_16UniversePackages14latest_version18MinimalPackageInfoNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNCB1T_0NCINvNtB6_6filter11filter_foldB1R_B3w_NCB1T_s_0NCINvNtB6_3map8map_foldB1R_B3w_B3w_NCB1T_s0_0NvYB3w_NtNtBa_3cmp3Ord3maxE0E0E0B21_.exit.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs261H7cERR92_10serde_json5value5ValueNtNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB1Z_16UniversePackages14latest_version18MinimalPackageInfoNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNCB1T_0NCINvNtB6_6filter11filter_foldB1R_B3w_NCB1T_s_0NCINvNtB6_3map8map_foldB1R_B3w_B3w_NCB1T_s0_0NvYB3w_NtNtBa_3cmp3Ord3maxE0E0E0B21_.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.p, %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions_0B9_.exit.thread.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.77.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cg = add nuw i64 %.sroa.01.0.i.i.i.i.i, 1    ; 2 uses
  %i.ch = icmp eq i64 %i.cg, %i.bj
  br i1 %i.ch, label %.loopexit, label %bb.n

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtCs261H7cERR92_10serde_json5value5ValueNtNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB1Z_16UniversePackages14latest_version18MinimalPackageInfoNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNCB1T_0NCINvNtB6_6filter11filter_foldB1R_B3w_NCB1T_s_0NCINvNtB6_3map8map_foldB1R_B3w_B3w_NCB1T_s0_0NvYB3w_NtNtBa_3cmp3Ord3maxE0E0E0B21_.exit.i.i.i.i.i, %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ci, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.77.i.i, i64 12, i1 false)
  br label %bb.aa

.loopexit52:                                      ; preds = %bb.i, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7307
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.c, i8 0, i64 15, i1 false), !noalias !7307
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !7307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7307
  store ptr %i.k, ptr %i.b, align 8, !noalias !7307
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRNtNtCs5PEMdK7bMAG_12typst_syntax7package22VersionlessPackageSpecNtB6_7Display3fmtCsc4241EHy6Do_9typst_kit, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !7307
  %i.cj = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @115, ptr noundef nonnull @157, ptr noundef nonnull %i.b)
          to label %bb.x unwind label %bb.w, !noalias !7308

bb.w:                                             ; preds = %bb.y, %.loopexit52
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #44
          to label %common.resume unwind label %bb.z, !noalias !7308

bb.x:                                             ; preds = %.loopexit52
  br i1 %i.cj, label %bb.y, label %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions1_0B9_.exit, !prof !23

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #47
          to label %.noexc.i unwind label %bb.w, !noalias !7308

.noexc.i:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !7308
  unreachable

common.resume:                                    ; preds = %bb.ab, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.w ], [ %i.cn, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions1_0B9_.exit: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7307
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7307
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions1_0B9_.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, %bb.e
  %.sink = phi i32 [ 0, %.loopexit ], [ 1, %_RNCNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB7_16UniversePackages14latest_versions1_0B9_.exit ], [ 1, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit ], [ 1, %bb.e ]
  store i32 %.sink, ptr %0, align 8
  ret void

bb.ab:                                            ; preds = %bb.ad, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #44
          to label %common.resume unwind label %bb.ae

bb.ac:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread
  br i1 %i.ah, label %bb.ad, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #47
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.ad
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aa

bb.ae:                                            ; preds = %bb.ab
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages7package(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [88 x i8], align 8                ; 6 uses
  %i.l = alloca [112 x i8], align 8               ; 5 uses
  %i.m = alloca [104 x i8], align 8               ; 10 uses
  %i.n = alloca [104 x i8], align 8               ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [104 x i8], align 8               ; 15 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.0179 = alloca [216 x i8], align 8        ; 3 uses
  %i.s = alloca [64 x i8], align 8                ; 13 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [32 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 7 uses
  %i.aa = alloca [64 x i8], align 8               ; 11 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 4 uses
  %.sroa.4.sroa.0 = alloca [20 x i8], align 4     ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !7370, !noundef !17 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.ad, -1               ; 5 uses
  %i.ae = and i8 %i.ad, 127
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !7370 ; 6 uses
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.ah, i64 %i.af
  %i.ai = icmp eq i64 %.sroa.3.0.i.i, 7
  br i1 %i.ai, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.a
  %i.aj = load ptr, ptr %2, align 8, !alias.scope !7370 ; 10 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.aj, ptr %2 ; 2 uses
  %i.ak = load i32, ptr %.sroa.0.0.i.i, align 1
  %i.al = xor i32 %i.ak, 1986359920
  %i.am = getelementptr i8, ptr %.sroa.0.0.i.i, i64 3
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = xor i32 %i.an, 2003134838
  %i.ap = or i32 %i.al, %i.ao
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.split, label %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread

.split:                                           ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %1, ptr %i.aa, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXsq_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr @160, ptr %i.av, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsc4241EHy6Do_9typst_kit, ptr %.sroa.418.0..sroa_idx, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.at, ptr %i.aw, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.au, ptr %i.ax, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr @_RNvXsc_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_14PackageVersionNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @238, ptr noundef nonnull %i.aa), !noalias !7371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.sroa.0152.0.copyload = load i64, ptr %i.ab, align 8 ; 4 uses
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.5153.0.copyload = load ptr, ptr %.sroa.5153.0..sroa_idx, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !17, !noundef !17
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !17, !align !25, !noundef !17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !invariant.load !17, !nonnull !17
  invoke void %i.bd(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull %i.az, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @239, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5153.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %bb.i unwind label %.body86

_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread: ; preds = %bb.a, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7373
  %.val46.i = load ptr, ptr %2, align 8, !alias.scope !7372 ; 5 uses
  br i1 %.not.i.i, label %3, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i

3:                                                ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread
  %.not.i.i.i = icmp eq ptr %.val46.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i, label %bb.b

bb.b:                                             ; preds = %3
  %i.be = getelementptr inbounds i8, ptr %.val46.i, i64 -16
  %i.bf = atomicrmw add ptr %i.be, i64 1 monotonic, align 8, !noalias !7373
  %i.bg = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.c, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i, !prof !23

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %.val46.i) #43
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread, %bb.b, %3
  %.sroa.06.0.i = phi ptr [ %.val46.i, %bb.b ], [ inttoptr (i64 16 to ptr), %3 ], [ %.val46.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit.thread ]
  store ptr %.sroa.06.0.i, ptr %i.r, align 8, !noalias !7373
  %.sroa.58.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ah, ptr %.sroa.58.0..sroa_idx9.i, align 8, !noalias !7373
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !7372, !noundef !17
  %.not44.i = icmp sgt i8 %i.bj, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val.i = load ptr, ptr %i.bh, align 8, !alias.scope !7372 ; 5 uses
  %.val45.i = load i64, ptr %i.bk, align 8, !alias.scope !7372
  br i1 %.not44.i, label %4, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

4:                                                ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i
  %.not.i.i48.i = icmp eq ptr %.val.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, label %bb.d

bb.d:                                             ; preds = %4
  %i.bl = getelementptr inbounds i8, ptr %.val.i, i64 -16
  %i.bm = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8, !noalias !7373
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.e, label %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !prof !23

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %.val.i) #43
          to label %.noexc.i unwind label %bb.f

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r) #44
          to label %common.resume unwind label %bb.g, !noalias !7373

bb.g:                                             ; preds = %bb.f
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !7373
  unreachable

common.resume:                                    ; preds = %.thread, %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.f ], [ %.pn71.pn, %bb.h ], [ %.pn71.pn, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i, %4, %bb.d
  %.sroa.027.0.i = phi ptr [ inttoptr (i64 16 to ptr), %4 ], [ %.val.i, %bb.d ], [ %.val.i, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.bq, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !7372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7373
  %.sroa.4.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.sroa.0.4..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.br, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.sroa.0, i64 20, i1 false)
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.027.0.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.val45.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 2, ptr %i.bs, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit91

.thread:                                          ; preds = %bb.s, %bb.am, %.thread55.i, %bb.q, %bb.p, %.body86, %bb.bc, %bb.bd, %bb.cg
  %.pn71.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.cg ], [ %lpad.thr_comm.split-lp, %.body86 ], [ %i.co, %bb.p ], [ %i.ee, %bb.bc ], [ %.pn69, %bb.bd ], [ %eh.lpad-body.i, %bb.s ], [ %eh.lpad-body.i, %bb.am ], [ %.pn1758.i, %.thread55.i ], [ %i.co, %bb.q ] ; 2 uses
  %i.bt = icmp eq i64 %.sroa.0152.0.copyload, 0
  br i1 %i.bt, label %common.resume, label %bb.h

bb.h:                                             ; preds = %.thread
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5153.0.copyload, i64 noundef %.sroa.0152.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !7374
  br label %common.resume

bb.i:                                             ; preds = %.split
  %i.bu = load i64, ptr %i.z, align 8, !range !22, !noundef !17 ; 4 uses
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.val75 = load ptr, ptr %i.bw, align 8          ; 11 uses
  br i1 %i.bv, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bx = ptrtoint ptr %.val75 to i64             ; 4 uses
  %i.by = and i64 %i.bx, 3                        ; 2 uses
  switch i64 %i.by, label %default.unreachable [
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 0, label %bb.m
    i64 1, label %bb.n
  ], !prof !30

default.unreachable:                              ; preds = %bb.cc, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, %bb.ae, %bb.u, %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.bz = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc77 unwind label %bb.cg

.noexc77:                                         ; preds = %bb.k
  %i.ca = lshr i64 %i.bx, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !17, !noundef !17
  %i.ce = invoke noundef i8 %i.cd(i32 noundef %i.cb)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.cg, !inline_history !1

bb.l:                                             ; preds = %bb.j
  %i.cf = lshr i64 %i.bx, 32
  %i.cg = icmp ult ptr %.val75, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.cf to i8  ; 2 uses
  %i.ch = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.assume(i1 %i.ch)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.m:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !range !36, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.n:                                             ; preds = %bb.j
  %i.ck = getelementptr i8, ptr %.val75, i64 31
  %i.cl = load i8, ptr %i.ck, align 8, !range !36, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit

bb.o:                                             ; preds = %bb.i
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5161.0.copyload = load i64, ptr %.sroa.5161.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !7375)
  call void @llvm.experimental.noalias.scope.decl(metadata !7376)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !7377
  %i.cm = call noundef dereferenceable_or_null(32768) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) 32768, i64 noundef range(i64 1, 9) 1) #40, !noalias !7377 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.i.i, label %bb.r

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.o
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 32768) #43
          to label %.noexc.i79 unwind label %bb.p, !noalias !7378

.noexc.i79:                                       ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.i.i
  unreachable

bb.p:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc4241EHy6Do_9typst_kit.exit.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = icmp eq i64 %i.bu, 0
  br i1 %i.cp, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val75) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val75, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !7379
  br label %.thread

.body86:                                          ; preds = %.split, %bb.az, %bb.ce
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.r:                                             ; preds = %bb.o
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.5161.0.copyload, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !alias.scope !7378
  %.sroa.8158.16..sroa.6.0..sroa_idx5.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %.sroa.8158.16..sroa.6.0..sroa_idx5.i.i.sroa_idx, align 8, !alias.scope !7378
  store i64 %i.bu, ptr %i.s, align 8, !alias.scope !7380
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.val75, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !alias.scope !7380
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.cm, ptr %i.cq, align 8, !alias.scope !7380
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 32768, ptr %i.cr, align 8, !alias.scope !7380
  %i.cs = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false), !alias.scope !7380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7381
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  store i8 0, ptr %i.cu, align 8, !noalias !7381
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ct, i8 0, i64 12, i1 false)
  store i64 -1, ptr %i.q, align 8, !noalias !7381
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 -1, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 8, !noalias !7381
  %.sroa.06.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 -1, ptr %.sroa.06.sroa.7.0..sroa_idx.i, align 8, !noalias !7381
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i32 0, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !7381
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 76
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !7381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7381
  %i.cv = invoke fastcc noundef ptr @_RINvMs_NtCs2N41nl8cATr_6flate22gzNtB5_14GzHeaderParser5parseINtNtB7_9bufreader9BufReaderINtNtNtCs3oUPovFnLWP_4core2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %bb.t unwind label %.thread.i, !noalias !7382 ; 9 uses

bb.s:                                             ; preds = %.body.i83
  br i1 %.sroa.0.3.i, label %bb.am, label %.thread

.thread.i:                                        ; preds = %bb.r
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.thread62.i

bb.t:                                             ; preds = %bb.r
  store ptr %i.cv, ptr %i.p, align 8, !noalias !7381
  %.not.i81 = icmp eq ptr %i.cv, null
  br i1 %.not.i81, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = ptrtoint ptr %i.cv to i64               ; 4 uses
  %i.cy = and i64 %i.cx, 3                        ; 2 uses
  switch i64 %i.cy, label %default.unreachable [
    i64 2, label %bb.v
    i64 3, label %bb.w
    i64 0, label %bb.x
    i64 1, label %bb.y
  ], !prof !30

bb.v:                                             ; preds = %bb.u
  %i.cz = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i85 unwind label %bb.ap, !noalias !7381

.noexc.i85:                                       ; preds = %bb.v
  %i.da = lshr i64 %i.cx, 32
  %i.db = trunc nuw i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !7381, !nonnull !17, !noundef !17
  %i.de = invoke noundef i8 %i.dd(i32 noundef %i.db)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %bb.ap, !noalias !7381, !inline_history !1

bb.w:                                             ; preds = %bb.u
  %i.df = lshr i64 %i.cx, 32
  %i.dg = icmp ult ptr %i.cv, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.df to i8 ; 2 uses
  %i.dh = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 %i.dh)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

bb.x:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !range !36, !noalias !7381, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

bb.y:                                             ; preds = %bb.u
  %i.dk = getelementptr i8, ptr %i.cv, i64 31
  %i.dl = load i8, ptr %i.dk, align 8, !range !36, !noalias !7381, !noundef !17
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false), !noalias !7381
  invoke void @_RNvXs0_NtCs2N41nl8cATr_6flate22gzNtB5_8GzHeaderINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_14GzHeaderParserE4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.n)
          to label %.thread34.i unwind label %bb.aa, !noalias !7381

bb.aa:                                            ; preds = %bb.z
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread55.i

end_hunk_1
begin_hunk_2_@_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages7package:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0179.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.m, i64 104, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0179, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %.sroa.0.3.i, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2N41nl8cATr_6flate22gz14GzHeaderParserECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q), !noalias !7381
  br label %bb.aq

.thread62.i:                                      ; preds = %bb.ap, %.thread.i
  %.pn.pn27.ph.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.ap ], [ %i.cw, %.thread.i ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2N41nl8cATr_6flate22gz14GzHeaderParserECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q) #44, !noalias !7381
  br label %.thread55.i

bb.am:                                            ; preds = %bb.s
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs2N41nl8cATr_6flate22gz14GzHeaderParserECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q) #44, !noalias !7381
  br label %.thread

bb.an:                                            ; preds = %bb.ap, %bb.ao, %.body.i83
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !7381
  unreachable

bb.ao:                                            ; preds = %bb.ag
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs2N41nl8cATr_6flate22gz7bufread7GzStateECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(104) %i.m) #44
          to label %.thread55.i unwind label %bb.an, !noalias !7381

bb.ap:                                            ; preds = %.noexc.i85, %bb.v
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #44
          to label %.thread62.i unwind label %bb.an, !noalias !7381

.thread55.i:                                      ; preds = %bb.ao, %.thread62.i, %bb.aa
  %.pn1758.i = phi { ptr, i32 } [ %.pn.pn27.ph.i, %.thread62.i ], [ %lpad.thr_comm.split-lp.i, %bb.aa ], [ %i.ea, %bb.ao ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2N41nl8cATr_6flate29bufreader9BufReaderINtNtNtB4_2io6cursor6CursorINtNtCs1xwejQucwHj_5alloc3vec3VechEEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.s) #44, !noalias !7382
  br label %.thread

bb.aq:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.sroa.837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %0, i8 0, i64 15, i1 false)
  store i8 1, ptr %.sroa.837.0..sroa_idx, align 1
  %.sroa.938.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %.sroa.938.0..sroa_idx, align 8
  %.sroa.1039.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %.sroa.1039.0..sroa_idx, align 1
  %.sroa.1140.sroa.4.0..sroa.1140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.1140.sroa.4.0..sroa.1140.0..sroa_idx.sroa_idx, align 8
  %.sroa.1140.sroa.5.0..sroa.1140.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.1140.sroa.5.0..sroa.1140.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0179, i64 216, i1 false)
  %.sroa.1140.sroa.5.sroa.4.0..sroa.1140.sroa.5.0..sroa.1140.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 0, ptr %.sroa.1140.sroa.5.sroa.4.0..sroa.1140.sroa.5.0..sroa.1140.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.cf, %bb.ba, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.eb = icmp eq i64 %.sroa.0152.0.copyload, 0
  br i1 %i.eb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit91, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5153.0.copyload, i64 noundef %.sroa.0152.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !7393
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit91

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.n, %bb.m, %bb.l, %.noexc77
  %.sroa.0.0.i76 = phi i8 [ %i.cl, %bb.n ], [ %switch.idx.cast.i.i.i, %bb.l ], [ %i.cj, %bb.m ], [ %i.ce, %.noexc77 ]
  %i.ec = icmp eq i8 %.sroa.0.0.i76, 0
  br i1 %i.ec, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.val75, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.u, i8 0, i64 15, i1 false)
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 15
  store i8 -128, ptr %.sroa.448.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.452.0..sroa_idx, align 8
  %i.ed = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @115, ptr noundef nonnull @49, ptr noundef nonnull %i.t)
          to label %bb.aw unwind label %bb.av

bb.au:                                            ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %.val75, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs1_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpec11versionless(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %bb.bf unwind label %bb.be

bb.av:                                            ; preds = %bb.ax, %bb.at
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.u) #44
          to label %bb.bc unwind label %bb.bb

bb.aw:                                            ; preds = %bb.at
  br i1 %i.ed, label %bb.ax, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @198, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #47
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.ax
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45.sroa.4.0..sroa.45.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.ef, align 8
  %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.45.sroa.3.0..sroa.45.0..sroa_idx.sroa_idx, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 2, ptr %i.eg, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !7394)
  %.val.i92 = load ptr, ptr %i.v, align 8, !alias.scope !7394, !nonnull !17, !noundef !17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7394
  %i.eh = ptrtoint ptr %.val.i92 to i64           ; 2 uses
  %i.ei = and i64 %i.eh, 3
  switch i64 %i.ei, label %default.unreachable [
    i64 2, label %bb.ba
    i64 3, label %bb.ay
    i64 0, label %bb.ba
    i64 1, label %bb.az
  ], !prof !30

bb.ay:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit
  %i.ej = icmp ult ptr %.val.i92, inttoptr (i64 188978561024 to ptr)
  %i.ek = and i64 %i.eh, 1095216660480
  %i.el = icmp ne i64 %i.ek, 1095216660480
  call void @llvm.assume(i1 %i.ej)
  call void @llvm.assume(i1 %i.el)
  br label %bb.ba

bb.az:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit
  %i.em = getelementptr i8, ptr %.val.i92, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.em) ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8, !alias.scope !7395, !noalias !7394
  store i8 3, ptr %i.f, align 8, !alias.scope !7395, !noalias !7394
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.en)
          to label %bb.ba unwind label %.body86

bb.ba:                                            ; preds = %bb.ay, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.ar

bb.bb:                                            ; preds = %bb.cg, %.body116, %bb.bg, %bb.bd, %bb.bc, %bb.av
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.bc:                                            ; preds = %bb.av
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #44
          to label %.thread unwind label %bb.bb

bb.bd:                                            ; preds = %bb.bg, %bb.be
  %.pn69 = phi { ptr, i32 } [ %i.ep, %bb.be ], [ %.pn, %bb.bg ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #44
          to label %.thread unwind label %bb.bb

bb.be:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit, %bb.au
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bf:                                            ; preds = %bb.au
  invoke void @_RNvMs3_NtCsc4241EHy6Do_9typst_kit8packagesNtB5_16UniversePackages14latest_version(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w)
          to label %bb.bi unwind label %bb.bh

bb.bg:                                            ; preds = %.body116, %bb.bh
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.bh ], [ %eh.lpad-body117, %.body116 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package22VersionlessPackageSpecECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w) #44
          to label %bb.bd unwind label %bb.bb

bb.bh:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.ca, %bb.bf
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bf
  %i.er = load i32, ptr %i.x, align 8, !range !28, !noundef !17 ; 2 uses
  %i.es = trunc nuw i32 %i.er to i1
  br i1 %i.es, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !7396)
  call void @llvm.experimental.noalias.scope.decl(metadata !7397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7398
  br i1 %.not.i.i, label %5, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98

5:                                                ; preds = %bb.bj
  %.not.i.i.i114 = icmp eq ptr %i.aj, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i114, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98, label %bb.bk

bb.bk:                                            ; preds = %5
  %i.et = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.eu = atomicrmw add ptr %i.et, i64 1 monotonic, align 8, !noalias !7398
  %i.ev = icmp slt i64 %i.eu, 0
  br i1 %i.ev, label %.invoke, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98, !prof !23

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98: ; preds = %bb.bj, %bb.bk, %5
  %.sroa.06.0.i100 = phi ptr [ %i.aj, %bb.bk ], [ inttoptr (i64 16 to ptr), %5 ], [ %i.aj, %bb.bj ] ; 2 uses
  store ptr %.sroa.06.0.i100, ptr %i.e, align 8, !noalias !7398
  %.sroa.58.0..sroa_idx9.i101 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.ah, ptr %.sroa.58.0..sroa_idx9.i101, align 8, !noalias !7398
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !7397, !noundef !17
  %.not44.i102 = icmp sgt i8 %i.ex, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ez = ptrtoint ptr %.sroa.06.0.i100 to i64
  %.val.i108 = load ptr, ptr %i.at, align 8, !alias.scope !7397 ; 5 uses
  %.val45.i109 = load i64, ptr %i.ey, align 8, !alias.scope !7397
  br i1 %.not44.i102, label %6, label %bb.cb

6:                                                ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98
  %.not.i.i48.i110 = icmp eq ptr %.val.i108, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i110, label %bb.cb, label %bb.bl

bb.bl:                                            ; preds = %6
  %i.fa = getelementptr inbounds i8, ptr %.val.i108, i64 -16
  %i.fb = atomicrmw add ptr %i.fa, i64 1 monotonic, align 8, !noalias !7398
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %bb.bm, label %bb.cb, !prof !23

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %.val.i108) #43
          to label %.noexc.i111 unwind label %bb.bn

.noexc.i111:                                      ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #44
          to label %.body116 unwind label %bb.bo, !noalias !7398

bb.bo:                                            ; preds = %bb.bn
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !7398
  unreachable

bb.bp:                                            ; preds = %bb.bi
  %i.ff = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.0177.0.copyload = load i32, ptr %i.ff, align 4
  %.sroa.4178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4178.0.copyload = load i64, ptr %.sroa.4178.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7399)
  call void @llvm.experimental.noalias.scope.decl(metadata !7400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7401
  br i1 %.not.i.i, label %7, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122

7:                                                ; preds = %bb.bp
  %.not.i.i.i138 = icmp eq ptr %i.aj, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i138, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122, label %bb.bq

bb.bq:                                            ; preds = %7
  %i.fg = getelementptr inbounds i8, ptr %i.aj, i64 -16
  %i.fh = atomicrmw add ptr %i.fg, i64 1 monotonic, align 8, !noalias !7401
  %i.fi = icmp slt i64 %i.fh, 0
  br i1 %i.fi, label %.invoke, label %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122, !prof !23

.invoke:                                          ; preds = %bb.bq, %bb.bk
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %i.aj) #43
          to label %.cont unwind label %bb.bv

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122: ; preds = %bb.bp, %bb.bq, %7
  %.sroa.06.0.i124 = phi ptr [ %i.aj, %bb.bq ], [ inttoptr (i64 16 to ptr), %7 ], [ %i.aj, %bb.bp ] ; 2 uses
  store ptr %.sroa.06.0.i124, ptr %i.d, align 8, !noalias !7401
  %.sroa.58.0..sroa_idx9.i125 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ah, ptr %.sroa.58.0..sroa_idx9.i125, align 8, !noalias !7401
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !7400, !noundef !17
  %.not44.i126 = icmp sgt i8 %i.fk, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fm = ptrtoint ptr %.sroa.06.0.i124 to i64
  %i.fn = inttoptr i64 %i.ah to ptr
  %.val.i132 = load ptr, ptr %i.at, align 8, !alias.scope !7400 ; 5 uses
  %.val45.i133 = load i64, ptr %i.fl, align 8, !alias.scope !7400
  br i1 %.not44.i126, label %8, label %bb.bw

8:                                                ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122
  %.not.i.i48.i134 = icmp eq ptr %.val.i132, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i48.i134, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %8
  %i.fo = getelementptr inbounds i8, ptr %.val.i132, i64 -16
  %i.fp = atomicrmw add ptr %i.fo, i64 1 monotonic, align 8, !noalias !7401
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.bs, label %bb.bw, !prof !23

bb.bs:                                            ; preds = %bb.br
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECsc4241EHy6Do_9typst_kit(ptr noundef nonnull %.val.i132) #43
          to label %.noexc.i135 unwind label %bb.bt

.noexc.i135:                                      ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bs
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #44
          to label %.body116 unwind label %bb.bu, !noalias !7401

bb.bu:                                            ; preds = %bb.bt
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !7401
  unreachable

bb.bv:                                            ; preds = %.invoke
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.body116:                                         ; preds = %bb.bv, %bb.bt, %bb.bn
  %eh.lpad-body117 = phi { ptr, i32 } [ %i.fd, %bb.bn ], [ %i.ft, %bb.bv ], [ %i.fr, %bb.bt ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #44
          to label %bb.bg unwind label %bb.bb

bb.bw:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122, %bb.br, %8
  %.sroa.027.0.i129 = phi ptr [ inttoptr (i64 16 to ptr), %8 ], [ %.val.i132, %bb.br ], [ %.val.i132, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i122 ]
  %.sroa.6165.sroa.0.0.copyload = load i64, ptr %i.au, align 8, !alias.scope !7401
  %.sroa.6165.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.6165.sroa.4.0.copyload = load i32, ptr %.sroa.6165.sroa.4.0..sroa_idx, align 8, !alias.scope !7401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7401
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %bb.bw
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0 = phi i64 [ %i.ez, %bb.cb ], [ %.sroa.4178.0.copyload, %bb.bw ]
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.0.0 = phi i32 [ undef, %bb.cb ], [ %.sroa.0177.0.copyload, %bb.bw ]
  %.sroa.53.sroa.0.sroa.0.sroa.5.0 = phi i64 [ %i.ah, %bb.cb ], [ %i.fm, %bb.bw ]
  %.sroa.53.sroa.0.sroa.6.0 = phi ptr [ %.sroa.027.0.i105, %bb.cb ], [ %i.fn, %bb.bw ]
  %.sroa.53.sroa.8.sroa.5.0 = phi i32 [ undef, %bb.cb ], [ %.sroa.6165.sroa.4.0.copyload, %bb.bw ]
  %.sroa.53.sroa.8.sroa.0.0 = phi i64 [ %.sroa.9.0.insert.ext, %bb.cb ], [ %.sroa.6165.sroa.0.0.copyload, %bb.bw ]
  %.sroa.53.sroa.7.0 = phi i64 [ %.sroa.7170.32.copyload, %bb.cb ], [ %.val45.i133, %bb.bw ]
  %.sroa.53.sroa.6.0 = phi ptr [ %i.gf, %bb.cb ], [ %.sroa.027.0.i129, %bb.bw ]
  %.sroa.02.0 = phi i32 [ 0, %bb.cb ], [ 1, %bb.bw ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.02.0, ptr %i.fu, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.0.0, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0, ptr %.sroa.53.sroa.0.sroa.0.sroa.0.sroa.4.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.53.sroa.0.sroa.0.sroa.5.0, ptr %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.53.sroa.0.sroa.6.0, ptr %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.53.sroa.6.0, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.53.sroa.7.0, ptr %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.53.sroa.8.sroa.0.0, ptr %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.8.sroa.5.0..sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.53.sroa.8.sroa.5.0, ptr %.sroa.53.sroa.8.sroa.5.0..sroa.53.sroa.8.0..sroa.53.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 2, ptr %i.fv, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !7402)
  %i.fw = icmp eq i32 %i.er, 0
  br i1 %i.fw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7403)
  %.val.i.i143 = load ptr, ptr %i.fx, align 8, !alias.scope !7404 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  %.val1.i.i144 = load i8, ptr %i.fy, align 1, !alias.scope !7404, !noundef !17
  %.not.i.i.i.i = icmp sgt i8 %.val1.i.i144, -1
  br i1 %.not.i.i.i.i, label %bb.bz, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i143) ]
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i143, inttoptr (i64 16 to ptr)
  %i.fz = getelementptr inbounds i8, ptr %.val.i.i143, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.bz
  %i.ga = atomicrmw add ptr %i.fz, i64 -1 release, align 8, !noalias !7404
  %.not.i.i.i.i.i = icmp eq i64 %i.ga, 1
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7404
  %i.gb = getelementptr i8, ptr %.val.i.i143, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.gb, align 8, !noalias !7404, !noundef !17 ; 2 uses
  %narrow.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i.i.i.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, label %bb.ca, !prof !16

bb.ca:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #43
          to label %.noexc145 unwind label %bb.bh

.noexc145:                                        ; preds = %bb.ca
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  %i.gc = add nuw nsw i64 %.val.i.i.i.i.i.i, 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.fz, ptr %i.gd, align 8, !noalias !7404
  store i64 8, ptr %i.c, align 8, !noalias !7404
  %i.ge = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.gc, ptr %i.ge, align 8, !noalias !7404
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc146 unwind label %bb.bh

.noexc146:                                        ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7404
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit

bb.cb:                                            ; preds = %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98, %bb.bl, %6
  %.sroa.027.0.i105 = phi ptr [ inttoptr (i64 16 to ptr), %6 ], [ %.val.i108, %bb.bl ], [ %.val.i108, %_RNvXs6_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCsc4241EHy6Do_9typst_kit.exit.i98 ]
  %.sroa.7170.32.copyload = load i64, ptr %i.au, align 8, !alias.scope !7398
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.32..sroa_idx, align 8, !alias.scope !7398
  %.sroa.9.0.insert.ext = zext i32 %.sroa.9.0.copyload to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7398
  %i.gf = inttoptr i64 %.val45.i109 to ptr
  br label %bb.bx

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit: ; preds = %.noexc146, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, %bb.bz, %bb.by, %bb.bx
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs5PEMdK7bMAG_12typst_syntax7package22VersionlessPackageSpecECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w)
          to label %bb.cc unwind label %bb.be

bb.cc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs5PEMdK7bMAG_12typst_syntax7package14PackageVersionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7405
  switch i64 %i.by, label %default.unreachable [
    i64 2, label %bb.cf
    i64 3, label %bb.cd
    i64 0, label %bb.cf
    i64 1, label %bb.ce
  ], !prof !30

bb.cd:                                            ; preds = %bb.cc
  %i.gg = icmp ult ptr %.val75, inttoptr (i64 188978561024 to ptr)
  %i.gh = and i64 %i.bx, 1095216660480
  %i.gi = icmp ne i64 %i.gh, 1095216660480
  call void @llvm.assume(i1 %i.gg)
  call void @llvm.assume(i1 %i.gi)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.gj = getelementptr i8, ptr %.val75, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gj) ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.gj, ptr %i.gk, align 8, !alias.scope !7406, !noalias !7405
  store i8 3, ptr %i.b, align 8, !alias.scope !7406, !noalias !7405
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gk)
          to label %bb.cf unwind label %.body86

bb.cf:                                            ; preds = %bb.cd, %bb.cc, %bb.cc, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ar

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECsc4241EHy6Do_9typst_kit.exit91: ; preds = %bb.as, %bb.ar, %_RNvXsB_NtCs5PEMdK7bMAG_12typst_syntax7packageNtB5_11PackageSpecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  ret void

bb.cg:                                            ; preds = %.noexc77, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.gl = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gl) #44
          to label %.thread unwind label %bb.bb
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE4growCsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !17 ; 4 uses
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs1SAYzCH86J4_12vello_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7409)
  %i.b = load i64, ptr %0, align 8, !range !21, !alias.scope !7409, !noundef !17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !7409, !noundef !17 ; 2 uses
  %i.e = sub i64 %i.a, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !7409, !noundef !17 ; 3 uses
  %.not.i = icmp ugt i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.g                       ; 4 uses
  %i.i = sub i64 %i.d, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not2.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not2.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !7409, !nonnull !17, !noundef !17 ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.g
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.q = shl nuw nsw i64 %i.h, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !7409
  store i64 %i.l, ptr %i.f, align 8, !alias.scope !7409
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !7409, !nonnull !17, !noundef !17 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.a
  %i.u = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !7409
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit

_RNvMs2_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequejE24handle_capacity_increaseCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 121) %3) unnamed_addr #13 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !31
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #40
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.k = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #40
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCsc4241EHy6Do_9typst_kit10downloaderNtB5_14ProgressReader3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, i64 noundef range(i64 0, 2) %1, i64 %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %4, i64 noundef %5, i32 noundef range(i32 0, 1000000000) %6, ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %8) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !7412
  %i.a = tail call noundef align 8 dereferenceable_or_null(200) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !7412 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.e

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadEL_EECsc4241EHy6Do_9typst_kit(ptr nonnull %3, ptr nonnull %4) #44
          to label %bb.i unwind label %bb.g

bb.c:                                             ; preds = %bb.d
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 200) #43
          to label %bb.h unwind label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.d = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %bb.f unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequejEECsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 200, i64 noundef range(i64 1, -9223372036854775807) 8) #40
  br label %bb.b

bb.f:                                             ; preds = %bb.e
  %i.f = extractvalue { i64, i32 } %i.d, 0
  %i.g = extractvalue { i64, i32 } %i.d, 1
end_hunk_2
