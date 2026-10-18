Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/vcpkgpaths?download=true
inline.NumInlined: 3227
inline.NumDeleted: 1368
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5vcpkg14BundleSettingsC2ERKS0_:bb.a
common.resume.sink.split:                         ; preds = %bb.l, %bb.f
  %.sink20.in = phi ptr [ %i.j, %bb.f ], [ %i.bi, %bb.l ]
  %.sink = phi ptr [ %i.z, %bb.f ], [ %i.bh, %bb.l ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.ay, %bb.l ]
  %.sink20 = load i64, ptr %.sink20.in, align 8, !tbaa !39
  %i.ab = add i64 %.sink20, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ab) #28
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.l, %bb.f, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.ay, %bb.l ], [ %i.ay, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !591
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !591
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i8 0, ptr %i.af, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  store i8 0, ptr %i.ah, align 8, !tbaa !39
  %i.ai = load i8, ptr %i.ag, align 8, !tbaa !44, !range !45, !noundef !46
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit13

bb.g:                                             ; preds = %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  store i8 1, ptr %i.af, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !41
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !38 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !47
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i.i.i8, label %._crit_edge.i.i.i.i6

.noexc.i.i.i8:                                    ; preds = %bb.g
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i12 unwind label %bb.j ; 2 uses

.noexc.i.i12:                                     ; preds = %.noexc.i.i.i8
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !38
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !39
  br label %._crit_edge.i.i.i.i6

._crit_edge.i.i.i.i6:                             ; preds = %.noexc.i.i12, %bb.g
  %i.as = phi ptr [ %i.aq, %.noexc.i.i12 ], [ %i.al, %bb.g ] ; 2 uses
  switch i64 %i.ao, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i7
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i6
  %i.at = load i8, ptr %i.am, align 1, !tbaa !39
  store i8 %i.at, ptr %i.as, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i7

bb.i:                                             ; preds = %._crit_edge.i.i.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i7: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i6
  %i.au = load i64, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.au, ptr %i.av, align 8, !tbaa !40
  %i.aw = load ptr, ptr %i.ah, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit13

bb.j:                                             ; preds = %.noexc.i.i.i8
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.az = load i8, ptr %i.af, align 8, !tbaa !44, !range !45, !noundef !46
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.al
  br i1 %i.bc, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10: ; preds = %bb.k
  %i.bd = load i64, ptr %i.al, align 8, !tbaa !39
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #28
  br label %.body

_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i7, %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS7_.exit
  ret void

.body:                                            ; preds = %bb.k, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i10
  %i.bf = load i8, ptr %i.d, align 8, !tbaa !44, !range !45, !noundef !46
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %common.resume

bb.l:                                             ; preds = %.body
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !38  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %common.resume, label %common.resume.sink.split
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5vcpkg14VcpkgPathsImplC2ERKNS_10FilesystemERKNS_17VcpkgCmdArgumentsENS_14BundleSettingsERKNS_4PathESA_(ptr noundef nonnull align 8 dereferenceable(1816) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1752) %2, ptr noundef align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %7 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.vcpkg::Path", align 8      ; 11 uses
  %9 = alloca %"struct.vcpkg::ExpectedT.287", align 16 ; 16 uses
  %10 = alloca %"struct.vcpkg::ExpectedT.331", align 8 ; 16 uses
  %11 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %12 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"struct.vcpkg::InstalledPaths", align 8 ; 7 uses
  %14 = alloca %"struct.vcpkg::Path", align 8     ; 10 uses
  %15 = alloca %"struct.vcpkg::Path", align 8     ; 10 uses
  %16 = alloca %"struct.vcpkg::InstalledPaths", align 8 ; 7 uses
  %17 = alloca %"struct.vcpkg::Path", align 8     ; 10 uses
  %18 = alloca %"struct.vcpkg::Path", align 8     ; 10 uses
  %19 = alloca %"struct.vcpkg::Path", align 8     ; 21 uses
  %20 = alloca %"struct.vcpkg::Path", align 8     ; 15 uses
  %21 = alloca %"struct.vcpkg::Path", align 8     ; 15 uses
  %22 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %23 = alloca %"struct.vcpkg::Path", align 8     ; 15 uses
  %24 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %25 = alloca %"struct.vcpkg::msg::TagArg.250", align 8 ; 5 uses
  %26 = alloca %"struct.vcpkg::msg::TagArg.250", align 8 ; 5 uses
  %27 = alloca %"struct.vcpkg::Path", align 8     ; 21 uses
  %28 = alloca %"struct.vcpkg::Path", align 8     ; 15 uses
  %29 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %30 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %31 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %32 = alloca %"struct.vcpkg::Path", align 8     ; 15 uses
  %33 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %34 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %35 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %36 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %37 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %38 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %39 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %40 = alloca %"struct.vcpkg::Path", align 8     ; 7 uses
  %41 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %42 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %43 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %44 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %45 = alloca %"struct.vcpkg::ExpectedT.322", align 8 ; 32 uses
  %46 = alloca %"struct.vcpkg::Optional.16", align 8 ; 11 uses
  %47 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %48 = alloca %"struct.vcpkg::Path", align 8     ; 10 uses
  %49 = alloca %"struct.vcpkg::Optional", align 8 ; 15 uses
  %50 = alloca %"struct.vcpkg::Path", align 8     ; 7 uses
  %51 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %52 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %53 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %54 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %55 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %56 = alloca %"struct.vcpkg::Path", align 8     ; 7 uses
  %57 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %58 = alloca %"struct.vcpkg::Path", align 8     ; 15 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %59 = alloca %"struct.vcpkg::Path", align 8     ; 15 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %60 = alloca %"struct.vcpkg::Optional.105", align 8 ; 12 uses
  %61 = alloca %"struct.vcpkg::ManifestAndPath", align 8 ; 11 uses
  store i8 0, ptr %0, align 8, !tbaa !166
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.k, align 8, !tbaa !39
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.l, align 8, !tbaa !295
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.n, align 8, !tbaa !171
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.o, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %i.p, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.q, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.r, align 8, !tbaa !185
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 0, ptr %i.s, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %1, ptr %i.t, align 8, !tbaa !626
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1428
  %62 = load i8, ptr %i.u, align 4, !tbaa !223, !range !45, !noundef !46
  %63 = trunc nuw i8 %62 to i1
  %64 = getelementptr inbounds nuw i8, ptr %2, i64 1429
  %.val.i.i.i.i = load i8, ptr %64, align 1, !range !45
  %65 = trunc nuw i8 %.val.i.i.i.i to i1
  %not..i.i.i = xor i1 %63, true
  %66 = select i1 %not..i.i.i, i1 true, i1 %65
  %67 = getelementptr inbounds nuw i8, ptr %2, i64 1430
  %68 = load i8, ptr %67, align 2, !tbaa !223, !range !45, !noundef !46
  %69 = trunc nuw i8 %68 to i1
  %70 = getelementptr inbounds nuw i8, ptr %2, i64 1431
  %.val.i.i1.i.i = load i8, ptr %70, align 1, !range !45
  %71 = trunc nuw i8 %.val.i.i1.i.i to i1
  %not..i2.i.i = xor i1 %69, true
  %72 = select i1 %not..i2.i.i, i1 true, i1 %71
  %73 = getelementptr inbounds nuw i8, ptr %2, i64 1432
  %74 = load i8, ptr %73, align 8, !tbaa !223, !range !45, !noundef !46
  %75 = trunc nuw i8 %74 to i1
  %76 = getelementptr inbounds nuw i8, ptr %2, i64 1433
  %.val.i.i3.i.i = load i8, ptr %76, align 1, !range !45
  %77 = trunc nuw i8 %.val.i.i3.i.i to i1
  %not..i4.i.i = xor i1 %75, true
  %78 = select i1 %not..i4.i.i, i1 true, i1 %77
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1434
  %i.w = load i8, ptr %i.v, align 2, !tbaa !223, !range !45, !noundef !46
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1435
  %.val.i.i5.i.i = load i8, ptr %i.y, align 1, !range !45
  %i.z = trunc nuw i8 %.val.i.i5.i.i to i1
  %not..i6.i.i = xor i1 %i.x, true
  %i.aa = select i1 %not..i6.i.i, i1 true, i1 %i.z
  %79 = getelementptr inbounds nuw i8, ptr %2, i64 1424
  %80 = load i8, ptr %79, align 8, !tbaa !223, !range !45, !noundef !46
  %81 = trunc nuw i8 %80 to i1
  %82 = getelementptr inbounds nuw i8, ptr %2, i64 1425
  %.val.i.i7.i.i = load i8, ptr %82, align 1, !range !45
  %83 = trunc nuw i8 %.val.i.i7.i.i to i1
  %84 = select i1 %81, i1 %83, i1 false
  %.sroa.5.0.insert.shift.i.i = select i1 %84, i40 4294967296, i40 0
  %.sroa.4.0.insert.shift.i.i = select i1 %i.aa, i40 16777216, i40 0
  %.sroa.3.0.insert.shift.i.i = select i1 %66, i40 65536, i40 0
  %.sroa.2.0.insert.shift.i.i = select i1 %72, i40 256, i40 0
  %.sroa.0.0.insert.ext.i.i = zext i1 %78 to i40
  %.sroa.4.0.insert.insert.i.i = or disjoint i40 %.sroa.2.0.insert.shift.i.i, %.sroa.3.0.insert.shift.i.i
  %.sroa.3.0.insert.insert.i.i = or disjoint i40 %.sroa.4.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %.sroa.2.0.insert.insert.i.i = or disjoint i40 %.sroa.3.0.insert.insert.i.i, %.sroa.4.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i40 %.sroa.2.0.insert.insert.i.i, %.sroa.5.0.insert.shift.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i40 %.sroa.0.0.insert.insert.i.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !223, !range !45, !noalias !627, !noundef !46
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 81
  %.val.i.i.i = load i8, ptr %i.ag, align 1, !range !45, !noalias !627
  %i.ah = trunc nuw i8 %.val.i.i.i to i1
  %i.ai = select i1 %i.af, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !alias.scope !627
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !41, !alias.scope !627
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.ak, align 8, !tbaa !40, !alias.scope !627
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.am = load i8, ptr %i.al, align 8, !tbaa !44, !range !45, !noalias !627, !noundef !46
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27, !noalias !627
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %.noexc.i unwind label %bb.by

.noexc.i:                                         ; preds = %bb.d
  store i32 277, ptr %42, align 8, !tbaa !32, !noalias !627
  %i.ap = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr @.str, ptr %i.ap, align 8, !tbaa !33, !noalias !627
  %i.aq = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr @__func__._ZN12_GLOBAL__N_120compute_manifest_dirERKN5vcpkg18ReadOnlyFilesystemERKNS0_17VcpkgCmdArgumentsERKNS0_4PathE, ptr %i.aq, align 8, !tbaa !34, !noalias !627
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem16almost_canonicalERKNS_4PathENS_8LineInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %42)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc.i
  %i.ar = load ptr, ptr %41, align 8, !tbaa !38, !noalias !627 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.au = load i64, ptr %i.as, align 8, !tbaa !39, !noalias !627
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #28
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.f:                                             ; preds = %.noexc.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %41, align 8, !tbaa !38, !noalias !627 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN5vcpkg4PathD2Ev.exit15.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i: ; preds = %bb.f
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !39, !noalias !627
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZN5vcpkg4PathD2Ev.exit15.i.i

_ZN5vcpkg4PathD2Ev.exit15.i.i:                    ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27, !noalias !627
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #27, !noalias !627
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27, !noalias !627
  invoke void @_ZN5vcpkg4PathC1ENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr nonnull @.str.71, i64 10)
          to label %.noexc40.i unwind label %bb.by

.noexc40.i:                                       ; preds = %bb.g
  store i32 280, ptr %44, align 8, !tbaa !32, !noalias !627
  %i.bc = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr @.str, ptr %i.bc, align 8, !tbaa !33, !noalias !627
  %i.bd = getelementptr inbounds nuw i8, ptr %44, i64 16
  store ptr @__func__._ZN12_GLOBAL__N_120compute_manifest_dirERKN5vcpkg18ReadOnlyFilesystemERKNS0_17VcpkgCmdArgumentsERKNS0_4PathE, ptr %i.bd, align 8, !tbaa !34, !noalias !627
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem24find_file_recursively_upERKNS_4PathES3_NS_8LineInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %44)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc40.i
  %i.be = load ptr, ptr %43, align 8, !tbaa !38, !noalias !627 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN5vcpkg4PathD2Ev.exit18.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i: ; preds = %bb.h
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !39, !noalias !627
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #28
  br label %_ZN5vcpkg4PathD2Ev.exit18.i.i

_ZN5vcpkg4PathD2Ev.exit18.i.i:                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27, !noalias !627
  br label %bb.j

bb.i:                                             ; preds = %.noexc40.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %43, align 8, !tbaa !38, !noalias !627 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN5vcpkg4PathD2Ev.exit21.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i: ; preds = %bb.i
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !39, !noalias !627
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #28
  br label %_ZN5vcpkg4PathD2Ev.exit21.i.i

_ZN5vcpkg4PathD2Ev.exit21.i.i:                    ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27, !noalias !627
  br label %.body.i

bb.j:                                             ; preds = %_ZN5vcpkg4PathD2Ev.exit18.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  invoke void @_ZN5vcpkg14BundleSettingsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %i.bp, ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.k unwind label %bb.bz

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #27
  invoke void @_ZNK5vcpkg17VcpkgCmdArguments22asset_sources_templateB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.16") align 8 %46, ptr noundef nonnull align 8 dereferenceable(1752) %2)
          to label %bb.l unwind label %bb.ca

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5vcpkg28parse_download_configurationERKNS_8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.322") align 8 %45, ptr noundef nonnull align 8 dereferenceable(40) %46)
          to label %bb.m unwind label %bb.cb

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #27
  store i32 336, ptr %47, align 8, !tbaa !32
  %i.br = getelementptr inbounds nuw i8, ptr %47, i64 8
  store ptr @.str, ptr %i.br, align 8, !tbaa !33
  %i.bs = getelementptr inbounds nuw i8, ptr %47, i64 16
  store ptr @__func__._ZN12_GLOBAL__N_120VcpkgPathsImplStage1C2ERKN5vcpkg10FilesystemERKNS1_17VcpkgCmdArgumentsERKNS1_14BundleSettingsERKNS1_4PathESD_, ptr %i.bs, align 8, !tbaa !34
  %i.bt = getelementptr inbounds nuw i8, ptr %45, i64 200
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !297, !range !45, !noundef !46
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.n, label %_ZNO5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit.i

bb.n:                                             ; preds = %bb.m
  %i.bw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(201) %45) #27
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(32) %i.bw) #29
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #30
  unreachable

_ZNO5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit.i: ; preds = %bb.m
  store i8 0, ptr %i.bq, align 8, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !39
  %i.ca = load i8, ptr %45, align 8, !tbaa !44, !range !45, !noundef !46
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.q, label %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i

bb.q:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit.i
  store i8 1, ptr %i.bq, align 8, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !41
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !38 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %45, i64 24 ; 5 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41.i

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !40 ; 3 uses
  %i.cj = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.cj)
  %i.ck = add nuw nsw i64 %i.ci, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cd, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.ck, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41.i: ; preds = %bb.q
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_:bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %.sroa.01.0.copyload.i.i.i32 = load ptr, ptr %1, align 8, !tbaa !181
  %.sroa.22.0.copyload.i.i.i34 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !47
  %.sroa.0.0.copyload.i.i.i35 = load ptr, ptr %3, align 8, !tbaa !181
  %.sroa.2.0.copyload.i.i.i37 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i30, align 8, !tbaa !47
  %i.c = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i32, i64 %.sroa.22.0.copyload.i.i.i34, ptr %.sroa.0.0.copyload.i.i.i35, i64 %.sroa.2.0.copyload.i.i.i37) #27
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i38)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i38, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i38, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i38)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i39)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i39, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i39, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i39)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %.sroa.01.0.copyload.i.i.i40 = load ptr, ptr %1, align 8, !tbaa !181
  %.sroa.22.0.copyload.i.i.i42 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !47
  %i.d = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i40, i64 %.sroa.22.0.copyload.i.i.i42, ptr %.sroa.0.0.copyload.i.i.i29, i64 %.sroa.2.0.copyload.i.i.i31) #27
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i46)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i46, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i46, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i46)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.sroa.01.0.copyload.i.i.i47 = load ptr, ptr %2, align 8, !tbaa !181
  %.sroa.22.0.copyload.i.i.i49 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !47
  %.sroa.0.0.copyload.i.i.i50 = load ptr, ptr %3, align 8, !tbaa !181
  %.sroa.2.0.copyload.i.i.i52 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i30, align 8, !tbaa !47
  %i.e = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i47, i64 %.sroa.22.0.copyload.i.i.i49, ptr %.sroa.0.0.copyload.i.i.i50, i64 %.sroa.2.0.copyload.i.i.i52) #27
  br i1 %i.e, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i53)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i53, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i53, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i53)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i54)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i54, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i54, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i54)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.06 = alloca %"struct.vcpkg::StringView", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.017 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.0.017, %1
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.020 = phi ptr [ %.sroa.0.017, %.lr.ph ], [ %.sroa.0.0, %bb.h ] ; 8 uses
  %.pn19 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.020, %bb.h ] ; 6 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %.sroa.0.020, align 8, !tbaa !181
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19, i64 24 ; 2 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !47
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %0, align 8, !tbaa !181
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !47
  %i.c = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i, i64 %.sroa.22.0.copyload.i.i.i, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #27
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.020, i64 16, i1 false)
  %i.d = ptrtoint ptr %.sroa.0.020 to i64
  %i.e = sub i64 %i.d, %i.b                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !734

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.pn19, i64 32
  %i.i = sub nsw i64 0, %i.f
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.e, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.e, 16
  br i1 %i.k, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.pn19, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i = load ptr, ptr %.sroa.0.020, align 8 ; 3 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i11.i = load ptr, ptr %.pn19, align 8, !tbaa !181
  %.sroa.2.0..sroa_idx.i.i.i12.i = getelementptr inbounds nuw i8, ptr %.pn19, i64 8
  %.sroa.2.0.copyload.i.i.i13.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i12.i, align 8, !tbaa !47
  %i.m = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.03.0.copyload.i, i64 %.sroa.5.0.copyload.i, ptr %.sroa.0.0.copyload.i.i.i11.i, i64 %.sroa.2.0.copyload.i.i.i13.i) #27
  br i1 %i.m, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.015.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn19, %bb.g ] ; 5 uses
  %.sroa.07.014.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i ], [ %.sroa.0.020, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.014.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.015.i, i64 16, i1 false)
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.015.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !181
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.015.i, i64 -8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !47
  %i.n = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.03.0.copyload.i, i64 %.sroa.5.0.copyload.i, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i) #27
  br i1 %i.n, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit, !llvm.loop !4

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit: ; preds = %.lr.ph.i, %bb.g
  %.sroa.07.0.lcssa.i = phi ptr [ %.sroa.0.020, %bb.g ], [ %.sroa.0.015.i, %.lr.ph.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i, ptr %.sroa.07.0.lcssa.i, align 8
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i, i64 8
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx5.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg13StringLiteralESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !733

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg7Triplet14canonical_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind willreturn memory(none) }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!20, !21, !22}
!llvm.ident = !{!23}
!llvm.errno.tbaa = !{!28}

!0 = distinct !{!0, !135}
!1 = distinct !{!1, !135}
!2 = distinct !{!2, !135}
!3 = distinct !{null, null}
!4 = distinct !{!4, !135}
!5 = distinct !{!5, !135}
!6 = distinct !{!6, !135}
!7 = distinct !{null, null}
!8 = distinct !{!8, !135}
!9 = distinct !{null, null, null}
!10 = distinct !{null, null}
!11 = distinct !{!11, !135}
!12 = distinct !{null, null}
!13 = distinct !{null, null, null, null}
!14 = distinct !{null, null, null, null, null}
!15 = distinct !{!15, !135}
!16 = distinct !{!16, !135}
!17 = distinct !{!17, !135}
!18 = distinct !{null, null}
!19 = distinct !{!19, !135}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!24 = !{!"Simple C++ TBAA"}
!25 = !{!"omnipotent char", !24, i64 0}
!26 = !{!"int", !25, i64 0}
!27 = !{!"__libc_errno", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"any pointer", !25, i64 0}
!30 = !{!"p1 omnipotent char", !29, i64 0}
!31 = !{!"_ZTSN5vcpkg8LineInfoE", !26, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !26, i64 0}
!33 = !{!31, !30, i64 8}
!34 = !{!31, !30, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!36 = !{!"long", !25, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !36, i64 8, !25, i64 16}
!38 = !{!37, !30, i64 0}
!39 = !{!25, !25, i64 0}
!40 = !{!37, !36, i64 8}
!41 = !{!35, !30, i64 0}
!42 = !{!"bool", !25, i64 0}
!43 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !42, i64 0, !25, i64 8}
!44 = !{!43, !42, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!36, !36, i64 0}
!48 = !{!"_ZTSN5vcpkg10StringViewE", !30, i64 0, !36, i64 8}
!49 = !{!48, !30, i64 0}
!50 = !{!"p1 _ZTSN5vcpkg14VcpkgPathsImplE", !29, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"p1 _ZTSN5vcpkg4PathE", !29, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTSN5vcpkg4PathE", !37, i64 0}
!55 = !{!"_ZTSSt10_Head_baseILm0EPN5vcpkg14VcpkgPathsImplELb0EE", !50, i64 0}
!56 = !{!"_ZTSSt11_Tuple_implILm0EJPN5vcpkg14VcpkgPathsImplESt14default_deleteIS1_EEE", !55, i64 0}
!57 = !{!"_ZTSSt5tupleIJPN5vcpkg14VcpkgPathsImplESt14default_deleteIS1_EEE", !56, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_implIN5vcpkg14VcpkgPathsImplESt14default_deleteIS1_EE", !57, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_dataIN5vcpkg14VcpkgPathsImplESt14default_deleteIS1_ELb1ELb1EE", !58, i64 0}
!60 = !{!"_ZTSSt10unique_ptrIN5vcpkg14VcpkgPathsImplESt14default_deleteIS1_EE", !59, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg4PathESaIS1_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg4PathESaIS1_EE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN5vcpkg4PathESaIS1_EE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIN5vcpkg4PathESaIS1_EE", !63, i64 0}
!65 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_4PathELb0EEE", !42, i64 0, !25, i64 8}
!66 = !{!"_ZTSN5vcpkg7details15OptionalStorageINS_4PathELb1EEE", !65, i64 0}
!67 = !{!"_ZTSN5vcpkg8OptionalINS_4PathEEE", !66, i64 0}
!68 = !{!"_ZTSN5vcpkg16OverlayPortPathsE", !67, i64 0, !64, i64 40}
!69 = !{!"_ZTSN5vcpkg10VcpkgPathsE", !54, i64 0, !54, i64 32, !60, i64 64, !52, i64 72, !52, i64 80, !54, i64 88, !54, i64 120, !54, i64 152, !54, i64 184, !54, i64 216, !54, i64 248, !54, i64 280, !64, i64 312, !68, i64 336}
!70 = !{!69, !52, i64 72}
!71 = !{i64 8}
!72 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_15ManifestAndPathELb0EEE", !42, i64 0, !25, i64 8}
!73 = !{!72, !42, i64 0}
!74 = !{!"p1 _ZTSN5vcpkg11MessageSinkE", !29, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!"_ZTSN5vcpkg9ExpectedTINS_21ManifestConfigurationENS_15LocalizedStringEEE", !25, i64 0, !42, i64 528}
!77 = !{!76, !42, i64 528}
!78 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_21ManifestConfigurationELb0EEE", !42, i64 0, !25, i64 8}
!79 = !{!78, !42, i64 0}
!80 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_13ConfigurationELb0EEE", !42, i64 0, !25, i64 8}
!81 = !{!80, !42, i64 0}
!82 = !{!"p1 _ZTSNSt3_V214error_categoryE", !29, i64 0}
!83 = !{!"_ZTSSt10error_code", !26, i64 0, !82, i64 8}
!84 = !{!83, !82, i64 8}
!85 = !{!"vtable pointer", !24, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_14RegistryConfigELb0EEE", !42, i64 0, !25, i64 8}
!88 = !{!87, !42, i64 0}
!89 = !{!"_ZTSN5vcpkg7details15OptionalStorageINS_14RegistryConfigELb1EEE", !87, i64 0}
!90 = !{!"_ZTSN5vcpkg8OptionalINS_14RegistryConfigEEE", !89, i64 0}
!91 = !{!"p1 _ZTSN5vcpkg14RegistryConfigE", !29, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg14RegistryConfigESaIS1_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg14RegistryConfigESaIS1_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIN5vcpkg14RegistryConfigESaIS1_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIN5vcpkg14RegistryConfigESaIS1_EE", !94, i64 0}
!96 = !{!"p1 _ZTSSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEE", !29, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESaISA_EE", !99, i64 0}
!101 = !{!"_ZTSN5vcpkg4Json6ObjectE", !100, i64 0}
!102 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !105, i64 0}
!107 = !{!"_ZTSN5vcpkg13ConfigurationE", !90, i64 0, !95, i64 352, !101, i64 376, !101, i64 400, !106, i64 424, !106, i64 448}
!108 = !{!"_ZTSN5vcpkg19ConfigurationSourceE", !25, i64 0}
!109 = !{!"_ZTSN5vcpkg22ConfigurationAndSourceE", !107, i64 0, !54, i64 472, !108, i64 504}
!110 = !{!109, !108, i64 504}
!111 = !{!"_ZTSN5vcpkg7details15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEE", !43, i64 0}
!112 = !{!"_ZTSN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !111, i64 0}
!113 = !{!"_ZTSN5vcpkg7details15OptionalStorageINS_13ConfigurationELb1EEE", !80, i64 0}
!114 = !{!"_ZTSN5vcpkg8OptionalINS_13ConfigurationEEE", !113, i64 0}
!115 = !{!"_ZTSN5vcpkg21ManifestConfigurationE", !112, i64 0, !114, i64 40, !108, i64 520}
!116 = !{!115, !108, i64 520}
!117 = !{!65, !42, i64 0}
!118 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EELb0EEE", !42, i64 0, !25, i64 8}
!119 = !{!118, !42, i64 0}
!120 = !{!102, !102, i64 0}
!121 = !{!103, !102, i64 16}
!122 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorISt6vectorINS_25PackagePatternDeclarationESaIS3_EELb0EEE", !42, i64 0, !25, i64 8}
!123 = !{!122, !42, i64 0}
!124 = !{!"p1 _ZTSN5vcpkg25PackagePatternDeclarationE", !29, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN5vcpkg25PackagePatternDeclarationESaIS1_EE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!127 = !{!126, !124, i64 16}
!128 = !{!91, !91, i64 0}
!129 = !{!92, !91, i64 16}
!130 = !{!97, !96, i64 0}
!131 = !{!96, !96, i64 0}
!132 = !{!29, !29, i64 0}
!133 = !{!97, !96, i64 8}
!134 = !{!97, !96, i64 16}
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!137 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_15TripletDatabaseELb0EEE", !42, i64 0, !25, i64 8}
!138 = !{!"_ZTSN5vcpkg7details15OptionalStorageINS_15TripletDatabaseELb1EEE", !137, i64 0}
!139 = !{!"_ZTSN5vcpkg8OptionalINS_15TripletDatabaseEEE", !138, i64 0}
!140 = !{!"_ZTSN5vcpkg4LazyINS_15TripletDatabaseEEE", !139, i64 0}
!141 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_19ToolsetsInformationELb0EEE", !42, i64 0, !25, i64 8}
!142 = !{!"_ZTSN5vcpkg7details15OptionalStorageINS_19ToolsetsInformationELb1EEE", !141, i64 0}
!143 = !{!"_ZTSN5vcpkg8OptionalINS_19ToolsetsInformationEEE", !142, i64 0}
!144 = !{!"_ZTSN5vcpkg4LazyINS_19ToolsetsInformationEEE", !143, i64 0}
!145 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEELb0EEE", !42, i64 0, !25, i64 8}
!146 = !{!"_ZTSN5vcpkg7details15OptionalStorageISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_St4lessIS8_ESaISt4pairIKS8_S8_EEELb1EEE", !145, i64 0}
!147 = !{!"_ZTSN5vcpkg8OptionalISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEEEE", !146, i64 0}
!148 = !{!"_ZTSN5vcpkg4LazyISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4lessIS7_ESaISt4pairIKS7_S7_EEEEE", !147, i64 0}
!149 = !{!"_ZTSN5vcpkg4LazyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !112, i64 0}
!150 = !{!"_ZTSN5vcpkg7details19OptionalStorageDtorINS_8LockFileELb0EEE", !42, i64 0, !25, i64 8}
!151 = !{!"_ZTSN5vcpkg7details15OptionalStorageINS_8LockFileELb1EEE", !150, i64 0}
!152 = !{!"_ZTSN5vcpkg8OptionalINS_8LockFileEEE", !151, i64 0}
!153 = !{!"_ZTSN12_GLOBAL__N_120VcpkgPathsImplStage0E", !140, i64 0, !144, i64 96, !148, i64 128, !149, i64 184, !152, i64 224}
!154 = !{!"p1 _ZTSN5vcpkg10FilesystemE", !29, i64 0}
!155 = !{!"_ZTSN5vcpkg19FeatureFlagSettingsE", !42, i64 0, !42, i64 1, !42, i64 2, !42, i64 3, !42, i64 4}
!156 = !{!"_ZTSN5vcpkg14DeploymentKindE", !25, i64 0}
!157 = !{!"_ZTSN5vcpkg14BundleSettingsE", !42, i64 0, !42, i64 1, !112, i64 8, !156, i64 48, !112, i64 56}
!158 = !{!"_ZTSN5vcpkg20AssetCachingSettingsE", !112, i64 0, !106, i64 40, !112, i64 64, !106, i64 104, !106, i64 128, !42, i64 152, !112, i64 160}
!159 = !{!"_ZTSN12_GLOBAL__N_120VcpkgPathsImplStage1E", !153, i64 0, !154, i64 288, !155, i64 296, !54, i64 304, !157, i64 336, !158, i64 432, !54, i64 632, !54, i64 664, !54, i64 696, !54, i64 728}
!160 = !{!159, !154, i64 288}
end_hunk_1
