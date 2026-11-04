Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.extract?download=true
inline.NumInlined: 742
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZL20C_A_T_C_H_T_E_S_T_10v:._crit_edge.i.i
  %46 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %47 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %48 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %49 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %51 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 8 uses
  %52 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %53 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %54 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %55 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %56 = alloca %"class.Catch::BinaryExpr.14", align 8 ; 13 uses
  %57 = alloca %"struct.vcpkg::StripSetting", align 8 ; 7 uses
  %58 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 12 uses
  %59 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %60 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %61 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %62 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %64 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 8 uses
  %65 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %66 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %67 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %69 = alloca %"class.Catch::BinaryExpr.14", align 8 ; 13 uses
  %70 = alloca %"struct.vcpkg::StripSetting", align 8 ; 7 uses
  %71 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 12 uses
  %72 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %73 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 6 uses
  %74 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %75 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %76 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %77 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %78 = alloca %"class.Catch::BinaryExpr.14", align 8 ; 13 uses
  %79 = alloca %"struct.vcpkg::StripSetting", align 8 ; 7 uses
  %80 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 12 uses
  %81 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %82 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 6 uses
  %83 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %84 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %85 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %86 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %87 = alloca %"class.Catch::BinaryExpr.14", align 8 ; 13 uses
  %88 = alloca %"struct.vcpkg::StripSetting", align 8 ; 7 uses
  %89 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 12 uses
  %90 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %91 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %92 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %93 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %95 = alloca %"struct.vcpkg::StringLiteral", align 8 ; 8 uses
  %96 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 12 uses
  %97 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %98 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %99 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %100 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %101 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %102 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %103 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %104 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %105 = alloca %"class.Catch::BinaryExpr.18", align 8 ; 13 uses
  %106 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.e = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 29 uses
  store i32 0, ptr %i.e, align 8, !tbaa !141
  %i.f = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 18 uses
  store ptr null, ptr %i.f, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 7 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 7 uses
  store ptr %i.e, ptr %i.h, align 8, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 7 uses
  store i64 0, ptr %i.i, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  store ptr @.str.10, ptr %24, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 134, ptr %i.j, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.k = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.k, ptr %25, align 8, !tbaa !63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.k, ptr noundef nonnull align 1 dereferenceable(13) @.str.77, i64 13, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 13, ptr %i.l, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %25, i64 29
  store i8 0, ptr %i.m, align 1, !tbaa !21
  invoke void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.a unwind label %bb.m

bb.a:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160) %22, ptr noundef nonnull align 8 dereferenceable(80) %23)
          to label %bb.b unwind label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !21
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.t = load ptr, ptr %23, align 8, !tbaa !20    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN5Catch11SectionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZN5Catch11SectionInfoD2Ev.exit

_ZN5Catch11SectionInfoD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.y = load ptr, ptr %25, align 8, !tbaa !20    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !21
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.ac = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(160) %22)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %i.ac, label %bb.d, label %.noexc.i118

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store ptr @.str.25, ptr %27, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 7, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  store ptr @.str.10, ptr %28, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 136, ptr %i.ae, align 8, !tbaa !26
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.78) #19
  %i.af = load ptr, ptr %29, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr %i.af, i64 %i.ah, i32 noundef 1)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store i32 0, ptr %31, align 8, !tbaa !145
  %i.ai = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 0, ptr %i.ai, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  invoke void @_ZN5vcpkg17get_strip_settingERKSt3mapINS_13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %32, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  store i32 136, ptr %33, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr @.str.10, ptr %i.aj, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.ak, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !70, !range !49, !noundef !50
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %32) #19
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #21
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.ar = load <2 x i32>, ptr %31, align 8, !noalias !147
  %i.as = load <2 x i32>, ptr %32, align 8, !noalias !147
  %i.at = icmp eq <2 x i32> %i.ar, %i.as
  %107 = freeze <2 x i1> %i.at
  %108 = bitcast <2 x i1> %107 to i2
  %109 = icmp eq i2 %108, -1
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull @.str.41) #19, !noalias !147
  %i.au = load ptr, ptr %20, align 8, !noalias !147
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !noalias !147
  %i.ax = zext i1 %109 to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i8 1, ptr %i.ay, align 8, !tbaa !34, !alias.scope !147
  %i.az = getelementptr inbounds nuw i8, ptr %30, i64 9
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !35, !alias.scope !147
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg12StripSettingES4_EE, i64 16), ptr %30, align 8, !tbaa !37, !alias.scope !147
  %i.ba = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %31, ptr %i.ba, align 8, !tbaa !149, !alias.scope !147
  %i.bb = getelementptr inbounds nuw i8, ptr %30, i64 24
  store ptr %i.au, ptr %i.bb, align 8, !tbaa !40, !alias.scope !147
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %30, i64 32
  store i64 %i.aw, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !41, !alias.scope !147
  %i.bc = getelementptr inbounds nuw i8, ptr %30, i64 40
  store ptr %32, ptr %i.bc, align 8, !tbaa !149, !alias.scope !147
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %26, ptr noundef nonnull align 8 dereferenceable(10) %30)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.bd = load i8, ptr %i.al, align 8, !tbaa !70, !range !49, !noundef !50
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.l, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %32, align 8, !tbaa !20   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !21
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.l, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  br label %bb.v

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch11SectionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %23) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.n ], [ %i.bk, %bb.m ]
  %i.bm = load ptr, ptr %25, align 8, !tbaa !20   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.k
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.o
  %i.bo = load i64, ptr %i.k, align 8, !tbaa !21
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %bb.ib

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.q:                                             ; preds = %bb.d
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %bb.ac

bb.r:                                             ; preds = %bb.e
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit116

bb.s:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          catch ptr null                          ; 3 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.bu = load i8, ptr %i.al, align 8, !tbaa !70, !range !49, !noundef !50
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.t, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit116

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %32, align 8, !tbaa !20   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i114: ; preds = %bb.t
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !21
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit116

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit116: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i114, %bb.s, %bb.r
  %.pn55.pn = phi { ptr, i32 } [ %i.bs, %bb.r ], [ %i.bt, %bb.s ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i114 ], [ %i.bt, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  %.418 = extractvalue { ptr, i32 } %.pn55.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  %i.cb = call ptr @__cxa_begin_catch(ptr %.418) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %26)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit116
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u, %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %26)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %26, i64 58
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !48, !range !49, !noundef !50
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !51, !nonnull !50, !align !52 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %26)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %.noexc.i118

bb.z:                                             ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit116
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.ic

bb.aa:                                            ; preds = %bb.v, %bb.u
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.pn56 = phi { ptr, i32 } [ %i.cn, %bb.aa ], [ %i.cm, %bb.z ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %26) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.q
  %.pn56.pn = phi { ptr, i32 } [ %.pn56, %bb.ab ], [ %i.br, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %bb.ar

.noexc.i118:                                      ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit, %bb.c
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  store ptr @.str.10, ptr %36, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 139, ptr %i.co, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  %i.cp = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 6 uses
  store ptr %i.cp, ptr %37, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 33, ptr %i.d, align 8, !tbaa !41
  %i.cq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc119 unwind label %bb.as ; 3 uses

.noexc119:                                        ; preds = %.noexc.i118
  store ptr %i.cq, ptr %37, align 8, !tbaa !20
  %i.cr = load i64, ptr %i.d, align 8, !tbaa !41  ; 3 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.cq, ptr noundef nonnull align 1 dereferenceable(33) @.str.79, i64 33, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  store i8 0, ptr %i.ct, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  invoke void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %bb.ad unwind label %bb.at

bb.ad:                                            ; preds = %.noexc119
  invoke void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160) %34, ptr noundef nonnull align 8 dereferenceable(80) %35)
          to label %bb.ae unwind label %bb.au

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %35, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !20 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %35, i64 48 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121: ; preds = %bb.ae
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !21
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121
  %i.da = load ptr, ptr %35, align 8, !tbaa !20   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZN5Catch11SectionInfoD2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !21
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #18
  br label %_ZN5Catch11SectionInfoD2Ev.exit126

_ZN5Catch11SectionInfoD2Ev.exit126:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i123
  %i.df = load ptr, ptr %37, align 8, !tbaa !20   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cp
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit126
  %i.dh = load i64, ptr %i.cp, align 8, !tbaa !21
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  %i.dj = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(160) %34)
          to label %bb.af unwind label %bb.aw

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  br i1 %i.dj, label %bb.ag, label %.noexc.i145

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  store ptr @.str.81, ptr %38, align 8, !tbaa !151
  %i.dk = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  store i64 5, ptr %i.dk, align 8, !tbaa !152
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dl, %bb.ag ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.ag ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !40
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !41
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %38, align 8, !tbaa !40
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %i.dk, align 8, !tbaa !41
  %i.dn = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i.i) #19 ; 4 uses
  %.19.i.i.i.i = select i1 %i.dn, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dn, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !114

_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.do = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.do, label %.critedge.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %38, align 8, !tbaa !40
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %i.dk, align 8, !tbaa !41
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !40
  %.19.i.i.i.i.sroa.sel413.v.sroa.sel.v.sroa.sel.v = select i1 %i.dn, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel413.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel413.v.sroa.sel.v.sroa.sel.v, i64 40
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.19.i.i.i.i.sroa.sel413.v.sroa.sel.v.sroa.sel, align 8, !tbaa !41
  %i.dp = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i, i64 %.sroa.22.0.copyload.i.i.i, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i) #19
  br i1 %i.dp, label %.critedge.i, label %bb.ai

.critedge.i:                                      ; preds = %bb.ah, %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, %bb.ag
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.ah ], [ %.19.i.i.i.i, %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i ], [ %i.e, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store ptr %38, ptr %18, align 8, !tbaa !73, !alias.scope !153
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.dq = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %.noexc130 unwind label %bb.ax

.noexc130:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ai

bb.ai:                                            ; preds = %.noexc130, %bb.ah
  %.sroa.06.0.i = phi ptr [ %i.dq, %.noexc130 ], [ %.19.i.i.i.i, %bb.ah ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !64
  %i.du = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dr, i64 noundef 0, i64 noundef %i.dt, ptr noundef nonnull @.str.80, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ax ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  store ptr @.str.25, ptr %40, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 7, ptr %i.dv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19
  store ptr @.str.10, ptr %41, align 8, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %41, i64 8
  store i64 142, ptr %i.dw, align 8, !tbaa !26
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull @.str.82) #19
  %i.dx = load ptr, ptr %42, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.dz = load i64, ptr %i.dy, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %39, ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr %i.dx, i64 %i.dz, i32 noundef 1)
          to label %bb.aj unwind label %bb.ay

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19
  store i32 0, ptr %44, align 8, !tbaa !145
  %i.ea = getelementptr inbounds nuw i8, ptr %44, i64 4
  store i32 1, ptr %i.ea, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  invoke void @_ZN5vcpkg17get_strip_settingERKSt3mapINS_13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %45, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.ak unwind label %bb.az

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  store i32 142, ptr %46, align 8, !tbaa !66
  %i.eb = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr @.str.10, ptr %i.eb, align 8, !tbaa !67
  %i.ec = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.ec, align 8, !tbaa !68
  %i.ed = getelementptr inbounds nuw i8, ptr %45, i64 32 ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !70, !range !49, !noundef !50
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.eg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %45) #19
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 8 dereferenceable(32) %i.eg) #21
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #22
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.ej = load <2 x i32>, ptr %44, align 8, !noalias !154
  %i.ek = load <2 x i32>, ptr %45, align 8, !noalias !154
  %i.el = icmp eq <2 x i32> %i.ej, %i.ek
  %110 = freeze <2 x i1> %i.el
  %111 = bitcast <2 x i1> %110 to i2
  %112 = icmp eq i2 %111, -1
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.41) #19, !noalias !154
  %i.em = load ptr, ptr %17, align 8, !noalias !154
  %i.en = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !noalias !154
  %i.ep = zext i1 %112 to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i8 1, ptr %i.eq, align 8, !tbaa !34, !alias.scope !154
  %i.er = getelementptr inbounds nuw i8, ptr %43, i64 9
  store i8 %i.ep, ptr %i.er, align 1, !tbaa !35, !alias.scope !154
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg12StripSettingES4_EE, i64 16), ptr %43, align 8, !tbaa !37, !alias.scope !154
  %i.es = getelementptr inbounds nuw i8, ptr %43, i64 16
  store ptr %44, ptr %i.es, align 8, !tbaa !149, !alias.scope !154
  %i.et = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %i.em, ptr %i.et, align 8, !tbaa !40, !alias.scope !154
  %.sroa.2.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %43, i64 32
  store i64 %i.eo, ptr %.sroa.2.0..sroa_idx.i.i133, align 8, !tbaa !41, !alias.scope !154
  %i.eu = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr %45, ptr %i.eu, align 8, !tbaa !149, !alias.scope !154
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %39, ptr noundef nonnull align 8 dereferenceable(10) %43)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  %i.ev = load i8, ptr %i.ed, align 8, !tbaa !70, !range !49, !noundef !50
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.aq, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit136

bb.aq:                                            ; preds = %bb.ap
  %i.ex = load ptr, ptr %45, align 8, !tbaa !20   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i134: ; preds = %bb.aq
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !21
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit136

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit136: ; preds = %bb.aq, %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  br label %bb.bd

bb.ar:                                            ; preds = %bb.ac, %bb.p
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %bb.ac ], [ %i.bq, %bb.p ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.ib

bb.as:                                            ; preds = %.noexc.i118
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.at:                                            ; preds = %.noexc119
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %bb.ad
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch11SectionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %35) #19
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn61 = phi { ptr, i32 } [ %i.fe, %bb.au ], [ %i.fd, %bb.at ] ; 2 uses
  %i.ff = load ptr, ptr %37, align 8, !tbaa !20   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.cp
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.av
  %i.fh = load i64, ptr %i.cp, align 8, !tbaa !21
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.as
  %.pn61.pn = phi { ptr, i32 } [ %i.fc, %bb.as ], [ %.pn61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %.pn61, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  br label %bb.ib

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ax:                                            ; preds = %bb.ai, %.critedge.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  br label %bb.ca

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.bl

bb.az:                                            ; preds = %bb.aj
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit142

bb.ba:                                            ; preds = %bb.ao
  %i.fn = landingpad { ptr, i32 }
          catch ptr null                          ; 3 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %43) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  %i.fo = load i8, ptr %i.ed, align 8, !tbaa !70, !range !49, !noundef !50
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.bb, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit142

bb.bb:                                            ; preds = %bb.ba
  %i.fq = load ptr, ptr %45, align 8, !tbaa !20   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.fs = icmp eq ptr %i.fq, %i.fr
  br i1 %i.fs, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i140: ; preds = %bb.bb
  %i.ft = load i64, ptr %i.fr, align 8, !tbaa !21
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.fu) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit142

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit142: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i140, %bb.ba, %bb.az
  %.pn64.pn = phi { ptr, i32 } [ %i.fm, %bb.az ], [ %i.fn, %bb.ba ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i140 ], [ %i.fn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  %.1327 = extractvalue { ptr, i32 } %.pn64.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19
  %i.fv = call ptr @__cxa_begin_catch(ptr %.1327) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %39)
          to label %bb.bc unwind label %bb.bi

bb.bc:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit142
  invoke void @__cxa_end_catch()
          to label %bb.bd unwind label %bb.bj

bb.bd:                                            ; preds = %bb.bc, %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit136
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %39)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.fw = getelementptr inbounds nuw i8, ptr %39, i64 58
  %i.fx = load i8, ptr %i.fw, align 2, !tbaa !48, !range !49, !noundef !50
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %_ZN5Catch16AssertionHandlerD2Ev.exit143, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fz = getelementptr inbounds nuw i8, ptr %39, i64 64
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !51, !nonnull !50, !align !52 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !37
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 112
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull align 8 dereferenceable(72) %39)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit143 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit143:          ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  %i.gg = load ptr, ptr %i.f, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.gg)
          to label %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE5clearEv.exit unwind label %bb.bh

bb.bh:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit143
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #22
  unreachable

_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE5clearEv.exit: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit143
  store ptr null, ptr %i.f, align 8, !tbaa !60
  store ptr %i.e, ptr %i.g, align 8, !tbaa !61
  store ptr %i.e, ptr %i.h, align 8, !tbaa !142
  store i64 0, ptr %i.i, align 8, !tbaa !62
  br label %.noexc.i145

bb.bi:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit142
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bk unwind label %bb.ic

bb.bj:                                            ; preds = %bb.bd, %bb.bc
  %i.gk = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZL20C_A_T_C_H_T_E_S_T_10v:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  store ptr @.str.10, ptr %49, align 8, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 146, ptr %i.gl, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.gm = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 6 uses
  store ptr %i.gm, ptr %50, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 43, ptr %i.c, align 8, !tbaa !41
  %i.gn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc146 unwind label %bb.cb ; 3 uses

.noexc146:                                        ; preds = %.noexc.i145
  store ptr %i.gn, ptr %50, align 8, !tbaa !20
  %i.go = load i64, ptr %i.c, align 8, !tbaa !41  ; 3 uses
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.gn, ptr noundef nonnull align 1 dereferenceable(43) @.str.83, i64 43, i1 false)
  %i.gp = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go
  store i8 0, ptr %i.gq, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  invoke void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %48, ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef nonnull align 8 dereferenceable(32) %50)
          to label %bb.bm unwind label %bb.cc

bb.bm:                                            ; preds = %.noexc146
  invoke void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160) %47, ptr noundef nonnull align 8 dereferenceable(80) %48)
          to label %bb.bn unwind label %bb.cd

bb.bn:                                            ; preds = %bb.bm
  %i.gr = getelementptr inbounds nuw i8, ptr %48, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !20 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %48, i64 48 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %bb.bn
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !21
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
  %i.gx = load ptr, ptr %48, align 8, !tbaa !20   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZN5Catch11SectionInfoD2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !21
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #18
  br label %_ZN5Catch11SectionInfoD2Ev.exit153

_ZN5Catch11SectionInfoD2Ev.exit153:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i150
  %i.hc = load ptr, ptr %50, align 8, !tbaa !20   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gm
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit153
  %i.he = load i64, ptr %i.gm, align 8, !tbaa !21
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit153, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  %i.hg = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(160) %47)
          to label %bb.bo unwind label %bb.cf

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  br i1 %i.hg, label %bb.bp, label %.noexc.i199

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  store ptr @.str.81, ptr %51, align 8, !tbaa !151
  %i.hh = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 3 uses
  store i64 5, ptr %i.hh, align 8, !tbaa !152
  %i.hi = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %.not10.i.i.i.i157 = icmp eq ptr %i.hi, null
  br i1 %.not10.i.i.i.i157, label %.critedge.i179, label %.lr.ph.i.i.i.i158

.lr.ph.i.i.i.i158:                                ; preds = %bb.bp, %.lr.ph.i.i.i.i158
  %.012.i.i.i.i160 = phi ptr [ %.1.i.i.i.i170, %.lr.ph.i.i.i.i158 ], [ %i.hi, %bb.bp ] ; 6 uses
  %.0811.i.i.i.i161 = phi ptr [ %.19.i.i.i.i167, %.lr.ph.i.i.i.i158 ], [ %i.e, %bb.bp ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i162 = load ptr, ptr %i.hj, align 8, !tbaa !40
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i163 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i164 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i163, align 8, !tbaa !41
  %.sroa.0.0.copyload.i.i.i.i.i.i165 = load ptr, ptr %51, align 8, !tbaa !40
  %.sroa.2.0.copyload.i.i.i.i.i.i166 = load i64, ptr %i.hh, align 8, !tbaa !41
  %i.hk = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i162, i64 %.sroa.22.0.copyload.i.i.i.i.i.i164, ptr %.sroa.0.0.copyload.i.i.i.i.i.i165, i64 %.sroa.2.0.copyload.i.i.i.i.i.i166) #19 ; 4 uses
  %.19.i.i.i.i167 = select i1 %i.hk, ptr %.0811.i.i.i.i161, ptr %.012.i.i.i.i160 ; 5 uses
  %.1.in.v.i.i.i.i168 = select i1 %i.hk, i64 24, i64 16
  %.1.in.i.i.i.i169 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 %.1.in.v.i.i.i.i168
  %.1.i.i.i.i170 = load ptr, ptr %.1.in.i.i.i.i169, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i171 = icmp eq ptr %.1.i.i.i.i170, null
  br i1 %.not.i.i.i.i171, label %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i172, label %.lr.ph.i.i.i.i158, !llvm.loop !114

_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i172: ; preds = %.lr.ph.i.i.i.i158
  %i.hl = icmp eq ptr %.19.i.i.i.i167, %i.e
  br i1 %i.hl, label %.critedge.i179, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i172
  %.19.i.i.i.i167.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.hk, ptr %.0811.i.i.i.i161, ptr %.012.i.i.i.i160
  %.19.i.i.i.i167.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i167.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %.sroa.01.0.copyload.i.i.i173 = load ptr, ptr %51, align 8, !tbaa !40
  %.sroa.22.0.copyload.i.i.i174 = load i64, ptr %i.hh, align 8, !tbaa !41
  %.sroa.0.0.copyload.i.i.i175 = load ptr, ptr %.19.i.i.i.i167.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !40
  %.19.i.i.i.i167.sroa.sel416.v.sroa.sel.v.sroa.sel.v = select i1 %i.hk, ptr %.0811.i.i.i.i161, ptr %.012.i.i.i.i160
  %.19.i.i.i.i167.sroa.sel416.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i167.sroa.sel416.v.sroa.sel.v.sroa.sel.v, i64 40
  %.sroa.2.0.copyload.i.i.i177 = load i64, ptr %.19.i.i.i.i167.sroa.sel416.v.sroa.sel.v.sroa.sel, align 8, !tbaa !41
  %i.hm = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i173, i64 %.sroa.22.0.copyload.i.i.i174, ptr %.sroa.0.0.copyload.i.i.i175, i64 %.sroa.2.0.copyload.i.i.i177) #19
  br i1 %i.hm, label %.critedge.i179, label %bb.br

.critedge.i179:                                   ; preds = %bb.bq, %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i172, %bb.bp
  %.08.lcssa.i.i.i11.i180 = phi ptr [ %.19.i.i.i.i167, %bb.bq ], [ %.19.i.i.i.i167, %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i172 ], [ %i.e, %bb.bp ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr %51, ptr %15, align 8, !tbaa !73, !alias.scope !155
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.hn = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %.08.lcssa.i.i.i11.i180, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %.noexc181 unwind label %bb.cg

.noexc181:                                        ; preds = %.critedge.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.br

bb.br:                                            ; preds = %.noexc181, %bb.bq
  %.sroa.06.0.i178 = phi ptr [ %i.hn, %.noexc181 ], [ %.19.i.i.i.i167, %bb.bq ] ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i178, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i178, i64 56
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !64
  %i.hr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ho, i64 noundef 0, i64 noundef %i.hq, ptr noundef nonnull @.str.84, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit184 unwind label %bb.cg ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit184: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  store ptr @.str.25, ptr %53, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 7, ptr %i.hs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  store ptr @.str.10, ptr %54, align 8, !tbaa !25
  %i.ht = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 149, ptr %i.ht, align 8, !tbaa !26
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull @.str.85) #19
  %i.hu = load ptr, ptr %55, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.hw = load i64, ptr %i.hv, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %52, ptr noundef nonnull align 8 dereferenceable(16) %53, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr %i.hu, i64 %i.hw, i32 noundef 1)
          to label %bb.bs unwind label %bb.ch

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit184
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  store i32 0, ptr %57, align 8, !tbaa !145
  %i.hx = getelementptr inbounds nuw i8, ptr %57, i64 4
  store i32 5000, ptr %i.hx, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  invoke void @_ZN5vcpkg17get_strip_settingERKSt3mapINS_13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %58, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.bt unwind label %bb.ci

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  store i32 149, ptr %59, align 8, !tbaa !66
  %i.hy = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr @.str.10, ptr %i.hy, align 8, !tbaa !67
  %i.hz = getelementptr inbounds nuw i8, ptr %59, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.hz, align 8, !tbaa !68
  %i.ia = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 3 uses
  %i.ib = load i8, ptr %i.ia, align 8, !tbaa !70, !range !49, !noundef !50
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.id = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %58) #19
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(32) %i.id) #21
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #22
  unreachable

bb.bx:                                            ; preds = %bb.bt
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ig = load <2 x i32>, ptr %57, align 8, !noalias !156
  %i.ih = load <2 x i32>, ptr %58, align 8, !noalias !156
  %i.ii = icmp eq <2 x i32> %i.ig, %i.ih
  %113 = freeze <2 x i1> %i.ii
  %114 = bitcast <2 x i1> %113 to i2
  %115 = icmp eq i2 %114, -1
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.41) #19, !noalias !156
  %i.ij = load ptr, ptr %14, align 8, !noalias !156
  %i.ik = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !noalias !156
  %i.im = zext i1 %115 to i8
  %i.in = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i8 1, ptr %i.in, align 8, !tbaa !34, !alias.scope !156
  %i.io = getelementptr inbounds nuw i8, ptr %56, i64 9
  store i8 %i.im, ptr %i.io, align 1, !tbaa !35, !alias.scope !156
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg12StripSettingES4_EE, i64 16), ptr %56, align 8, !tbaa !37, !alias.scope !156
  %i.ip = getelementptr inbounds nuw i8, ptr %56, i64 16
  store ptr %57, ptr %i.ip, align 8, !tbaa !149, !alias.scope !156
  %i.iq = getelementptr inbounds nuw i8, ptr %56, i64 24
  store ptr %i.ij, ptr %i.iq, align 8, !tbaa !40, !alias.scope !156
  %.sroa.2.0..sroa_idx.i.i186 = getelementptr inbounds nuw i8, ptr %56, i64 32
  store i64 %i.il, ptr %.sroa.2.0..sroa_idx.i.i186, align 8, !tbaa !41, !alias.scope !156
  %i.ir = getelementptr inbounds nuw i8, ptr %56, i64 40
  store ptr %58, ptr %i.ir, align 8, !tbaa !149, !alias.scope !156
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %52, ptr noundef nonnull align 8 dereferenceable(10) %56)
          to label %bb.by unwind label %bb.cj

bb.by:                                            ; preds = %bb.bx
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  %i.is = load i8, ptr %i.ia, align 8, !tbaa !70, !range !49, !noundef !50
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.bz, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit189

bb.bz:                                            ; preds = %bb.by
  %i.iu = load ptr, ptr %58, align 8, !tbaa !20   ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i187: ; preds = %bb.bz
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !21
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit189

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit189: ; preds = %bb.bz, %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  br label %bb.cm

bb.ca:                                            ; preds = %bb.bl, %bb.ax, %bb.aw
  %.pn65.pn.pn = phi { ptr, i32 } [ %.pn65.pn, %bb.bl ], [ %i.fk, %bb.ax ], [ %i.fj, %bb.aw ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  br label %bb.ib

bb.cb:                                            ; preds = %.noexc.i145
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.cc:                                            ; preds = %.noexc146
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bm
  %i.jb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch11SectionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %48) #19
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn70 = phi { ptr, i32 } [ %i.jb, %bb.cd ], [ %i.ja, %bb.cc ] ; 2 uses
  %i.jc = load ptr, ptr %50, align 8, !tbaa !20   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.gm
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.ce
  %i.je = load i64, ptr %i.gm, align 8, !tbaa !21
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.cb
  %.pn70.pn = phi { ptr, i32 } [ %i.iz, %bb.cb ], [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %.pn70, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  br label %bb.ib

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.cg:                                            ; preds = %bb.br, %.critedge.i179
  %i.jh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #19
  br label %bb.dj

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit184
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #19
  br label %bb.cu

bb.ci:                                            ; preds = %bb.bs
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit195

bb.cj:                                            ; preds = %bb.bx
  %i.jk = landingpad { ptr, i32 }
          catch ptr null                          ; 3 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %56) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  %i.jl = load i8, ptr %i.ia, align 8, !tbaa !70, !range !49, !noundef !50
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.ck, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit195

bb.ck:                                            ; preds = %bb.cj
  %i.jn = load ptr, ptr %58, align 8, !tbaa !20   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i193: ; preds = %bb.ck
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !21
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit195

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit195: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i193, %bb.cj, %bb.ci
  %.pn73.pn = phi { ptr, i32 } [ %i.jj, %bb.ci ], [ %i.jk, %bb.cj ], [ %i.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i193 ], [ %i.jk, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  %.2236 = extractvalue { ptr, i32 } %.pn73.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  %i.js = call ptr @__cxa_begin_catch(ptr %.2236) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %52)
          to label %bb.cl unwind label %bb.cr

bb.cl:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit195
  invoke void @__cxa_end_catch()
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %bb.cl, %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit189
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %52)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cm
  %i.jt = getelementptr inbounds nuw i8, ptr %52, i64 58
  %i.ju = load i8, ptr %i.jt, align 2, !tbaa !48, !range !49, !noundef !50
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %_ZN5Catch16AssertionHandlerD2Ev.exit196, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jw = getelementptr inbounds nuw i8, ptr %52, i64 64
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !51, !nonnull !50, !align !52 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !37
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 112
  %i.ka = load ptr, ptr %i.jz, align 8
  invoke void %i.ka(ptr noundef nonnull align 8 dereferenceable(8) %i.jx, ptr noundef nonnull align 8 dereferenceable(72) %52)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit196 unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  call void @__clang_call_terminate(ptr %i.kc) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit196:          ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #19
  %i.kd = load ptr, ptr %i.f, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.kd)
          to label %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE5clearEv.exit197 unwind label %bb.cq

bb.cq:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit196
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #22
  unreachable

_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE5clearEv.exit197: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit196
  store ptr null, ptr %i.f, align 8, !tbaa !60
  store ptr %i.e, ptr %i.g, align 8, !tbaa !61
  store ptr %i.e, ptr %i.h, align 8, !tbaa !142
  store i64 0, ptr %i.i, align 8, !tbaa !62
  br label %.noexc.i199

bb.cr:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit195
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ct unwind label %bb.ic

bb.cs:                                            ; preds = %bb.cm, %bb.cl
  %i.kh = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZL20C_A_T_C_H_T_E_S_T_10v:._crit_edge.i.i
  store ptr @.str.10, ptr %62, align 8, !tbaa !25
  %i.ki = getelementptr inbounds nuw i8, ptr %62, i64 8
  store i64 153, ptr %i.ki, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #19
  %i.kj = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  store ptr %i.kj, ptr %63, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 20, ptr %i.b, align 8, !tbaa !41
  %i.kk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc200 unwind label %bb.dk ; 2 uses

.noexc200:                                        ; preds = %.noexc.i199
  store ptr %i.kk, ptr %63, align 8, !tbaa !20
  %i.kl = load i64, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  store i64 %i.kl, ptr %i.kj, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.kk, ptr noundef nonnull align 1 dereferenceable(20) @.str.86, i64 20, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 %i.kl, ptr %i.km, align 8, !tbaa !64
  %i.kn = load ptr, ptr %63, align 8, !tbaa !20
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kl
  store i8 0, ptr %i.ko, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  invoke void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %61, ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.cv unwind label %bb.dl

bb.cv:                                            ; preds = %.noexc200
  invoke void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160) %60, ptr noundef nonnull align 8 dereferenceable(80) %61)
          to label %bb.cw unwind label %bb.dm

bb.cw:                                            ; preds = %bb.cv
  %i.kp = getelementptr inbounds nuw i8, ptr %61, i64 32
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !20 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %61, i64 48 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202: ; preds = %bb.cw
  %i.kt = load i64, ptr %i.kr, align 8, !tbaa !21
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.ku) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i202
  %i.kv = load ptr, ptr %61, align 8, !tbaa !20   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZN5Catch11SectionInfoD2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !21
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #18
  br label %_ZN5Catch11SectionInfoD2Ev.exit207

_ZN5Catch11SectionInfoD2Ev.exit207:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i203, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i204
  %i.la = load ptr, ptr %63, align 8, !tbaa !20   ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.kj
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit207
  %i.lc = load i64, ptr %i.kj, align 8, !tbaa !21
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.ld) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  %i.le = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(160) %60)
          to label %bb.cx unwind label %bb.do

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  br i1 %i.le, label %bb.cy, label %.noexc.i329

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #19
  store ptr @.str.81, ptr %64, align 8, !tbaa !151
  %i.lf = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 3 uses
  store i64 5, ptr %i.lf, align 8, !tbaa !152
  %i.lg = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %.not10.i.i.i.i211 = icmp eq ptr %i.lg, null
  br i1 %.not10.i.i.i.i211, label %.critedge.i233, label %.lr.ph.i.i.i.i212

.lr.ph.i.i.i.i212:                                ; preds = %bb.cy, %.lr.ph.i.i.i.i212
  %.012.i.i.i.i214 = phi ptr [ %.1.i.i.i.i224, %.lr.ph.i.i.i.i212 ], [ %i.lg, %bb.cy ] ; 6 uses
  %.0811.i.i.i.i215 = phi ptr [ %.19.i.i.i.i221, %.lr.ph.i.i.i.i212 ], [ %i.e, %bb.cy ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i214, i64 32
  %.sroa.01.0.copyload.i.i.i.i.i.i216 = load ptr, ptr %i.lh, align 8, !tbaa !40
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i217 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i214, i64 40
  %.sroa.22.0.copyload.i.i.i.i.i.i218 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i217, align 8, !tbaa !41
  %.sroa.0.0.copyload.i.i.i.i.i.i219 = load ptr, ptr %64, align 8, !tbaa !40
  %.sroa.2.0.copyload.i.i.i.i.i.i220 = load i64, ptr %i.lf, align 8, !tbaa !41
  %i.li = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i216, i64 %.sroa.22.0.copyload.i.i.i.i.i.i218, ptr %.sroa.0.0.copyload.i.i.i.i.i.i219, i64 %.sroa.2.0.copyload.i.i.i.i.i.i220) #19 ; 4 uses
  %.19.i.i.i.i221 = select i1 %i.li, ptr %.0811.i.i.i.i215, ptr %.012.i.i.i.i214 ; 5 uses
  %.1.in.v.i.i.i.i222 = select i1 %i.li, i64 24, i64 16
  %.1.in.i.i.i.i223 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i214, i64 %.1.in.v.i.i.i.i222
  %.1.i.i.i.i224 = load ptr, ptr %.1.in.i.i.i.i223, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i225 = icmp eq ptr %.1.i.i.i.i224, null
  br i1 %.not.i.i.i.i225, label %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i226, label %.lr.ph.i.i.i.i212, !llvm.loop !114

_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i226: ; preds = %.lr.ph.i.i.i.i212
  %i.lj = icmp eq ptr %.19.i.i.i.i221, %i.e
  br i1 %i.lj, label %.critedge.i233, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i226
  %.19.i.i.i.i221.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.li, ptr %.0811.i.i.i.i215, ptr %.012.i.i.i.i214
  %.19.i.i.i.i221.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i221.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %.sroa.01.0.copyload.i.i.i227 = load ptr, ptr %64, align 8, !tbaa !40
  %.sroa.22.0.copyload.i.i.i228 = load i64, ptr %i.lf, align 8, !tbaa !41
  %.sroa.0.0.copyload.i.i.i229 = load ptr, ptr %.19.i.i.i.i221.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !40
  %.19.i.i.i.i221.sroa.sel419.v.sroa.sel.v.sroa.sel.v = select i1 %i.li, ptr %.0811.i.i.i.i215, ptr %.012.i.i.i.i214
  %.19.i.i.i.i221.sroa.sel419.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i221.sroa.sel419.v.sroa.sel.v.sroa.sel.v, i64 40
  %.sroa.2.0.copyload.i.i.i231 = load i64, ptr %.19.i.i.i.i221.sroa.sel419.v.sroa.sel.v.sroa.sel, align 8, !tbaa !41
  %i.lk = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.sroa.01.0.copyload.i.i.i227, i64 %.sroa.22.0.copyload.i.i.i228, ptr %.sroa.0.0.copyload.i.i.i229, i64 %.sroa.2.0.copyload.i.i.i231) #19
  br i1 %i.lk, label %.critedge.i233, label %bb.da

.critedge.i233:                                   ; preds = %bb.cz, %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i226, %bb.cy
  %.08.lcssa.i.i.i11.i234 = phi ptr [ %.19.i.i.i.i221, %bb.cz ], [ %.19.i.i.i.i221, %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i226 ], [ %i.e, %bb.cy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store ptr %64, ptr %12, align 8, !tbaa !73, !alias.scope !157
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ll = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %.08.lcssa.i.i.i11.i234, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc235 unwind label %bb.dp

.noexc235:                                        ; preds = %.critedge.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.da

bb.da:                                            ; preds = %.noexc235, %bb.cz
  %.sroa.06.0.i232 = phi ptr [ %i.ll, %.noexc235 ], [ %.19.i.i.i.i221, %bb.cz ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i232, i64 48
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i232, i64 56
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !64
  %i.lp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.lm, i64 noundef 0, i64 noundef %i.lo, ptr noundef nonnull @.str.87, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit238 unwind label %bb.dp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit238: ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #19
  store ptr @.str.25, ptr %66, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 7, ptr %i.lq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #19
  store ptr @.str.10, ptr %67, align 8, !tbaa !25
  %i.lr = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 156, ptr %i.lr, align 8, !tbaa !26
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull @.str.88) #19
  %i.ls = load ptr, ptr %68, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.lu = load i64, ptr %i.lt, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %65, ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(16) %67, ptr %i.ls, i64 %i.lu, i32 noundef 1)
          to label %bb.db unwind label %bb.dq

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit238
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #19
  store i32 1, ptr %70, align 8, !tbaa !145
  %i.lv = getelementptr inbounds nuw i8, ptr %70, i64 4
  store i32 -1, ptr %i.lv, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #19
  invoke void @_ZN5vcpkg17get_strip_settingERKSt3mapINS_13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %71, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.dc unwind label %bb.dr

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #19
  store i32 156, ptr %72, align 8, !tbaa !66
  %i.lw = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr @.str.10, ptr %i.lw, align 8, !tbaa !67
  %i.lx = getelementptr inbounds nuw i8, ptr %72, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.lx, align 8, !tbaa !68
  %i.ly = getelementptr inbounds nuw i8, ptr %71, i64 32 ; 3 uses
  %i.lz = load i8, ptr %i.ly, align 8, !tbaa !70, !range !49, !noundef !50
  %i.ma = trunc nuw i8 %i.lz to i1
  br i1 %i.ma, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.mb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %71) #19
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(32) %i.mb) #21
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  call void @__clang_call_terminate(ptr %i.md) #22
  unreachable

bb.dg:                                            ; preds = %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.me = load <2 x i32>, ptr %70, align 8, !noalias !158
  %i.mf = load <2 x i32>, ptr %71, align 8, !noalias !158
  %i.mg = icmp eq <2 x i32> %i.me, %i.mf
  %116 = freeze <2 x i1> %i.mg
  %117 = bitcast <2 x i1> %116 to i2
  %118 = icmp eq i2 %117, -1
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull @.str.41) #19, !noalias !158
  %i.mh = load ptr, ptr %11, align 8, !noalias !158
  %i.mi = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.mj = load i64, ptr %i.mi, align 8, !noalias !158
  %i.mk = zext i1 %118 to i8
  %i.ml = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i8 1, ptr %i.ml, align 8, !tbaa !34, !alias.scope !158
  %i.mm = getelementptr inbounds nuw i8, ptr %69, i64 9
  store i8 %i.mk, ptr %i.mm, align 1, !tbaa !35, !alias.scope !158
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg12StripSettingES4_EE, i64 16), ptr %69, align 8, !tbaa !37, !alias.scope !158
  %i.mn = getelementptr inbounds nuw i8, ptr %69, i64 16
  store ptr %70, ptr %i.mn, align 8, !tbaa !149, !alias.scope !158
  %i.mo = getelementptr inbounds nuw i8, ptr %69, i64 24
  store ptr %i.mh, ptr %i.mo, align 8, !tbaa !40, !alias.scope !158
  %.sroa.2.0..sroa_idx.i.i240 = getelementptr inbounds nuw i8, ptr %69, i64 32
  store i64 %i.mj, ptr %.sroa.2.0..sroa_idx.i.i240, align 8, !tbaa !41, !alias.scope !158
  %i.mp = getelementptr inbounds nuw i8, ptr %69, i64 40
  store ptr %71, ptr %i.mp, align 8, !tbaa !149, !alias.scope !158
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %65, ptr noundef nonnull align 8 dereferenceable(10) %69)
          to label %bb.dh unwind label %bb.ds

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %69) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  %i.mq = load i8, ptr %i.ly, align 8, !tbaa !70, !range !49, !noundef !50
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %bb.di, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit243

bb.di:                                            ; preds = %bb.dh
  %i.ms = load ptr, ptr %71, align 8, !tbaa !20   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i241: ; preds = %bb.di
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !21
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit243

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit243: ; preds = %bb.di, %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19
  br label %bb.dv

bb.dj:                                            ; preds = %bb.cu, %bb.cg, %bb.cf
  %.pn74.pn.pn = phi { ptr, i32 } [ %.pn74.pn, %bb.cu ], [ %i.jh, %bb.cg ], [ %i.jg, %bb.cf ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  br label %bb.ib

bb.dk:                                            ; preds = %.noexc.i199
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.dl:                                            ; preds = %.noexc200
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dm:                                            ; preds = %bb.cv
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Catch11SectionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %61) #19
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pn79 = phi { ptr, i32 } [ %i.mz, %bb.dm ], [ %i.my, %bb.dl ] ; 2 uses
  %i.na = load ptr, ptr %63, align 8, !tbaa !20   ; 2 uses
  %i.nb = icmp eq ptr %i.na, %i.kj
  br i1 %i.nb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.dn
  %i.nc = load i64, ptr %i.kj, align 8, !tbaa !21
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.nd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %bb.dk
  %.pn79.pn = phi { ptr, i32 } [ %i.mx, %bb.dk ], [ %.pn79, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ], [ %.pn79, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #19
  br label %bb.ib

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.dp:                                            ; preds = %bb.da, %.critedge.i233
  %i.nf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #19
  br label %bb.gj

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit238
  %i.ng = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #19
  br label %bb.em

bb.dr:                                            ; preds = %bb.db
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit249

bb.ds:                                            ; preds = %bb.dg
  %i.ni = landingpad { ptr, i32 }
          catch ptr null                          ; 3 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %69) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  %i.nj = load i8, ptr %i.ly, align 8, !tbaa !70, !range !49, !noundef !50
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.dt, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit249

bb.dt:                                            ; preds = %bb.ds
  %i.nl = load ptr, ptr %71, align 8, !tbaa !20   ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.nn = icmp eq ptr %i.nl, %i.nm
  br i1 %i.nn, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i247: ; preds = %bb.dt
  %i.no = load i64, ptr %i.nm, align 8, !tbaa !21
  %i.np = add i64 %i.no, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.np) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit249

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit249: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i247, %bb.ds, %bb.dr
  %.pn82.pn = phi { ptr, i32 } [ %i.nh, %bb.dr ], [ %i.ni, %bb.ds ], [ %i.ni, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i247 ], [ %i.ni, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  %.3145 = extractvalue { ptr, i32 } %.pn82.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19
  %i.nq = call ptr @__cxa_begin_catch(ptr %.3145) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %65)
          to label %bb.du unwind label %bb.ej

bb.du:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit249
  invoke void @__cxa_end_catch()
          to label %bb.dv unwind label %bb.ek

bb.dv:                                            ; preds = %bb.du, %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit243
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %65)
          to label %bb.dw unwind label %bb.ek

bb.dw:                                            ; preds = %bb.dv
  %i.nr = getelementptr inbounds nuw i8, ptr %65, i64 58
  %i.ns = load i8, ptr %i.nr, align 2, !tbaa !48, !range !49, !noundef !50
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %_ZN5Catch16AssertionHandlerD2Ev.exit250, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nu = getelementptr inbounds nuw i8, ptr %65, i64 64
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !51, !nonnull !50, !align !52 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !37
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 112
  %i.ny = load ptr, ptr %i.nx, align 8
  invoke void %i.ny(ptr noundef nonnull align 8 dereferenceable(8) %i.nv, ptr noundef nonnull align 8 dereferenceable(72) %65)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit250 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.nz = landingpad { ptr, i32 }
          catch ptr null
  %i.oa = extractvalue { ptr, i32 } %i.nz, 0
  call void @__clang_call_terminate(ptr %i.oa) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit250:          ; preds = %bb.dw, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  %i.ob = load ptr, ptr %i.f, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.ob)
          to label %.critedge.i274 unwind label %bb.dz

bb.dz:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit250
  %i.oc = landingpad { ptr, i32 }
          catch ptr null
  %i.od = extractvalue { ptr, i32 } %i.oc, 0
  call void @__clang_call_terminate(ptr %i.od) #22
  unreachable

.critedge.i274:                                   ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit250
  store ptr null, ptr %i.f, align 8, !tbaa !60
  store ptr %i.e, ptr %i.g, align 8, !tbaa !61
  store ptr %i.e, ptr %i.h, align 8, !tbaa !142
  store i64 0, ptr %i.i, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #19
  store ptr @.str.81, ptr %73, align 8, !tbaa !151
  %i.oe = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 5, ptr %i.oe, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %73, ptr %9, align 8, !tbaa !73, !alias.scope !159
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.of = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr nonnull %i.e, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ea unwind label %bb.en     ; 2 uses

bb.ea:                                            ; preds = %.critedge.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 56
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !64
  %i.oj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.og, i64 noundef 0, i64 noundef %i.oi, ptr noundef nonnull @.str.89, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit279 unwind label %bb.en ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit279: ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #19
  store ptr @.str.25, ptr %75, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %75, i64 8
  store i64 7, ptr %i.ok, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #19
  store ptr @.str.10, ptr %76, align 8, !tbaa !25
  %i.ol = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 159, ptr %i.ol, align 8, !tbaa !26
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull @.str.90) #19
  %i.om = load ptr, ptr %77, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.oo = load i64, ptr %i.on, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %74, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %76, ptr %i.om, i64 %i.oo, i32 noundef 1)
          to label %bb.eb unwind label %bb.eo

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit279
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #19
  store i32 1, ptr %79, align 8, !tbaa !145
  %i.op = getelementptr inbounds nuw i8, ptr %79, i64 4
  store i32 -1, ptr %i.op, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #19
  invoke void @_ZN5vcpkg17get_strip_settingERKSt3mapINS_13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %80, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.ec unwind label %bb.ep

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #19
  store i32 159, ptr %81, align 8, !tbaa !66
  %i.oq = getelementptr inbounds nuw i8, ptr %81, i64 8
  store ptr @.str.10, ptr %i.oq, align 8, !tbaa !67
  %i.or = getelementptr inbounds nuw i8, ptr %81, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.or, align 8, !tbaa !68
  %i.os = getelementptr inbounds nuw i8, ptr %80, i64 32 ; 3 uses
  %i.ot = load i8, ptr %i.os, align 8, !tbaa !70, !range !49, !noundef !50
  %i.ou = trunc nuw i8 %i.ot to i1
  br i1 %i.ou, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  %i.ov = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %80) #19
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %81, ptr noundef nonnull align 8 dereferenceable(32) %i.ov) #21
          to label %bb.ee unwind label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #22
  unreachable

bb.eg:                                            ; preds = %bb.ec
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.oy = load <2 x i32>, ptr %79, align 8, !noalias !160
  %i.oz = load <2 x i32>, ptr %80, align 8, !noalias !160
  %i.pa = icmp eq <2 x i32> %i.oy, %i.oz
  %119 = freeze <2 x i1> %i.pa
  %120 = bitcast <2 x i1> %119 to i2
  %121 = icmp eq i2 %120, -1
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.41) #19, !noalias !160
  %i.pb = load ptr, ptr %8, align 8, !noalias !160
  %i.pc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pd = load i64, ptr %i.pc, align 8, !noalias !160
  %i.pe = zext i1 %121 to i8
  %i.pf = getelementptr inbounds nuw i8, ptr %78, i64 8
  store i8 1, ptr %i.pf, align 8, !tbaa !34, !alias.scope !160
  %i.pg = getelementptr inbounds nuw i8, ptr %78, i64 9
  store i8 %i.pe, ptr %i.pg, align 1, !tbaa !35, !alias.scope !160
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg12StripSettingES4_EE, i64 16), ptr %78, align 8, !tbaa !37, !alias.scope !160
  %i.ph = getelementptr inbounds nuw i8, ptr %78, i64 16
  store ptr %79, ptr %i.ph, align 8, !tbaa !149, !alias.scope !160
  %i.pi = getelementptr inbounds nuw i8, ptr %78, i64 24
  store ptr %i.pb, ptr %i.pi, align 8, !tbaa !40, !alias.scope !160
  %.sroa.2.0..sroa_idx.i.i281 = getelementptr inbounds nuw i8, ptr %78, i64 32
  store i64 %i.pd, ptr %.sroa.2.0..sroa_idx.i.i281, align 8, !tbaa !41, !alias.scope !160
  %i.pj = getelementptr inbounds nuw i8, ptr %78, i64 40
  store ptr %80, ptr %i.pj, align 8, !tbaa !149, !alias.scope !160
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %74, ptr noundef nonnull align 8 dereferenceable(10) %78)
          to label %bb.eh unwind label %bb.eq

bb.eh:                                            ; preds = %bb.eg
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %78) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  %i.pk = load i8, ptr %i.os, align 8, !tbaa !70, !range !49, !noundef !50
  %i.pl = trunc nuw i8 %i.pk to i1
  br i1 %i.pl, label %bb.ei, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit284

bb.ei:                                            ; preds = %bb.eh
  %i.pm = load ptr, ptr %80, align 8, !tbaa !20   ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282: ; preds = %bb.ei
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !21
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit284

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit284: ; preds = %bb.ei, %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #19
  br label %bb.et

bb.ej:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit249
  %i.pr = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.el unwind label %bb.ic

bb.ek:                                            ; preds = %bb.dv, %bb.du
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.el:                                            ; preds = %bb.ej, %bb.ek
  %.pn83 = phi { ptr, i32 } [ %i.ps, %bb.ek ], [ %i.pr, %bb.ej ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %65) #19
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.dq
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %bb.el ], [ %i.ng, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #19
  br label %bb.gj

bb.en:                                            ; preds = %bb.ea, %.critedge.i274
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  br label %bb.gj

bb.eo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit279
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  br label %bb.fk

bb.ep:                                            ; preds = %bb.eb
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit287

bb.eq:                                            ; preds = %bb.eg
  %i.pw = landingpad { ptr, i32 }
          catch ptr null                          ; 3 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %78) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  %i.px = load i8, ptr %i.os, align 8, !tbaa !70, !range !49, !noundef !50
  %i.py = trunc nuw i8 %i.px to i1
  br i1 %i.py, label %bb.er, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit287

bb.er:                                            ; preds = %bb.eq
  %i.pz = load ptr, ptr %80, align 8, !tbaa !20   ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  br i1 %i.qb, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i285: ; preds = %bb.er
  %i.qc = load i64, ptr %i.qa, align 8, !tbaa !21
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.pz, i64 noundef %i.qd) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit287

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit287: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i285, %bb.eq, %bb.ep
  %.pn86.pn = phi { ptr, i32 } [ %i.pv, %bb.ep ], [ %i.pw, %bb.eq ], [ %i.pw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i285 ], [ %i.pw, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19
  %.3650 = extractvalue { ptr, i32 } %.pn86.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #19
  %i.qe = call ptr @__cxa_begin_catch(ptr %.3650) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %bb.es unwind label %bb.fh

bb.es:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit287
  invoke void @__cxa_end_catch()
          to label %bb.et unwind label %bb.fi

bb.et:                                            ; preds = %bb.es, %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit284
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %bb.eu unwind label %bb.fi

bb.eu:                                            ; preds = %bb.et
  %i.qf = getelementptr inbounds nuw i8, ptr %74, i64 58
  %i.qg = load i8, ptr %i.qf, align 2, !tbaa !48, !range !49, !noundef !50
  %i.qh = trunc nuw i8 %i.qg to i1
  br i1 %i.qh, label %_ZN5Catch16AssertionHandlerD2Ev.exit288, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qi = getelementptr inbounds nuw i8, ptr %74, i64 64
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !51, !nonnull !50, !align !52 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !37
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 112
  %i.qm = load ptr, ptr %i.ql, align 8
  invoke void %i.qm(ptr noundef nonnull align 8 dereferenceable(8) %i.qj, ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit288 unwind label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.qn = landingpad { ptr, i32 }
          catch ptr null
  %i.qo = extractvalue { ptr, i32 } %i.qn, 0
  call void @__clang_call_terminate(ptr %i.qo) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit288:          ; preds = %bb.eu, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  %i.qp = load ptr, ptr %i.f, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.qp)
          to label %.critedge.i312 unwind label %bb.ex

bb.ex:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit288
  %i.qq = landingpad { ptr, i32 }
          catch ptr null
  %i.qr = extractvalue { ptr, i32 } %i.qq, 0
  call void @__clang_call_terminate(ptr %i.qr) #22
  unreachable

.critedge.i312:                                   ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit288
  store ptr null, ptr %i.f, align 8, !tbaa !60
  store ptr %i.e, ptr %i.g, align 8, !tbaa !61
  store ptr %i.e, ptr %i.h, align 8, !tbaa !142
  store i64 0, ptr %i.i, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #19
  store ptr @.str.81, ptr %82, align 8, !tbaa !151
  %i.qs = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 5, ptr %i.qs, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %82, ptr %6, align 8, !tbaa !73, !alias.scope !161
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.qt = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr nonnull %i.e, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ey unwind label %bb.fl     ; 2 uses

bb.ey:                                            ; preds = %.critedge.i312
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 48
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 56
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !64
  %i.qx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.qu, i64 noundef 0, i64 noundef %i.qw, ptr noundef nonnull @.str.91, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit317 unwind label %bb.fl ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit317: ; preds = %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #19
  store ptr @.str.25, ptr %84, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 7, ptr %i.qy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #19
  store ptr @.str.10, ptr %85, align 8, !tbaa !25
  %i.qz = getelementptr inbounds nuw i8, ptr %85, i64 8
  store i64 162, ptr %i.qz, align 8, !tbaa !26
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %86, ptr noundef nonnull @.str.92) #19
  %i.ra = load ptr, ptr %86, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %86, i64 8
  %i.rc = load i64, ptr %i.rb, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %83, ptr noundef nonnull align 8 dereferenceable(16) %84, ptr noundef nonnull align 8 dereferenceable(16) %85, ptr %i.ra, i64 %i.rc, i32 noundef 1)
          to label %bb.ez unwind label %bb.fm

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit317
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #19
  store i32 1, ptr %88, align 8, !tbaa !145
  %i.rd = getelementptr inbounds nuw i8, ptr %88, i64 4
  store i32 -1, ptr %i.rd, align 4, !tbaa !146
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #19
  invoke void @_ZN5vcpkg17get_strip_settingERKSt3mapINS_13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %89, ptr noundef nonnull align 8 dereferenceable(48) %21)
          to label %bb.fa unwind label %bb.fn

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #19
  store i32 162, ptr %90, align 8, !tbaa !66
  %i.re = getelementptr inbounds nuw i8, ptr %90, i64 8
  store ptr @.str.10, ptr %i.re, align 8, !tbaa !67
  %i.rf = getelementptr inbounds nuw i8, ptr %90, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.rf, align 8, !tbaa !68
  %i.rg = getelementptr inbounds nuw i8, ptr %89, i64 32 ; 3 uses
  %i.rh = load i8, ptr %i.rg, align 8, !tbaa !70, !range !49, !noundef !50
  %i.ri = trunc nuw i8 %i.rh to i1
  br i1 %i.ri, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.rj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %89) #19
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %90, ptr noundef nonnull align 8 dereferenceable(32) %i.rj) #21
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  unreachable

bb.fd:                                            ; preds = %bb.fb
  %i.rk = landingpad { ptr, i32 }
          catch ptr null
  %i.rl = extractvalue { ptr, i32 } %i.rk, 0
  call void @__clang_call_terminate(ptr %i.rl) #22
  unreachable

bb.fe:                                            ; preds = %bb.fa
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.rm = load <2 x i32>, ptr %88, align 8, !noalias !162
  %i.rn = load <2 x i32>, ptr %89, align 8, !noalias !162
  %i.ro = icmp eq <2 x i32> %i.rm, %i.rn
  %122 = freeze <2 x i1> %i.ro
  %123 = bitcast <2 x i1> %122 to i2
  %124 = icmp eq i2 %123, -1
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.41) #19, !noalias !162
  %i.rp = load ptr, ptr %5, align 8, !noalias !162
  %i.rq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.rr = load i64, ptr %i.rq, align 8, !noalias !162
  %i.rs = zext i1 %124 to i8
  %i.rt = getelementptr inbounds nuw i8, ptr %87, i64 8
  store i8 1, ptr %i.rt, align 8, !tbaa !34, !alias.scope !162
  %i.ru = getelementptr inbounds nuw i8, ptr %87, i64 9
  store i8 %i.rs, ptr %i.ru, align 1, !tbaa !35, !alias.scope !162
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg12StripSettingES4_EE, i64 16), ptr %87, align 8, !tbaa !37, !alias.scope !162
  %i.rv = getelementptr inbounds nuw i8, ptr %87, i64 16
  store ptr %88, ptr %i.rv, align 8, !tbaa !149, !alias.scope !162
  %i.rw = getelementptr inbounds nuw i8, ptr %87, i64 24
  store ptr %i.rp, ptr %i.rw, align 8, !tbaa !40, !alias.scope !162
  %.sroa.2.0..sroa_idx.i.i319 = getelementptr inbounds nuw i8, ptr %87, i64 32
  store i64 %i.rr, ptr %.sroa.2.0..sroa_idx.i.i319, align 8, !tbaa !41, !alias.scope !162
  %i.rx = getelementptr inbounds nuw i8, ptr %87, i64 40
  store ptr %89, ptr %i.rx, align 8, !tbaa !149, !alias.scope !162
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %83, ptr noundef nonnull align 8 dereferenceable(10) %87)
          to label %bb.ff unwind label %bb.fo

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %87) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #19
  %i.ry = load i8, ptr %i.rg, align 8, !tbaa !70, !range !49, !noundef !50
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %bb.fg, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit322

bb.fg:                                            ; preds = %bb.ff
  %i.sa = load ptr, ptr %89, align 8, !tbaa !20   ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 2 uses
  %i.sc = icmp eq ptr %i.sa, %i.sb
  br i1 %i.sc, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i320: ; preds = %bb.fg
  %i.sd = load i64, ptr %i.sb, align 8, !tbaa !21
  %i.se = add i64 %i.sd, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.se) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit322

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit322: ; preds = %bb.fg, %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #19
  br label %bb.fr

bb.fh:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit287
  %i.sf = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fj unwind label %bb.ic

bb.fi:                                            ; preds = %bb.et, %bb.es
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi
  %.pn87 = phi { ptr, i32 } [ %i.sg, %bb.fi ], [ %i.sf, %bb.fh ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %74) #19
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.eo
  %.pn87.pn = phi { ptr, i32 } [ %.pn87, %bb.fj ], [ %i.pu, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  br label %bb.gj

bb.fl:                                            ; preds = %bb.ey, %.critedge.i312
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  br label %bb.gj

bb.fm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit317
  %i.si = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  br label %bb.fz

bb.fn:                                            ; preds = %bb.ez
  %i.sj = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit325

bb.fo:                                            ; preds = %bb.fe
  %i.sk = landingpad { ptr, i32 }
          catch ptr null                          ; 3 uses
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %87) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #19
  %i.sl = load i8, ptr %i.rg, align 8, !tbaa !70, !range !49, !noundef !50
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %bb.fp, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit325

bb.fp:                                            ; preds = %bb.fo
  %i.sn = load ptr, ptr %89, align 8, !tbaa !20   ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 2 uses
  %i.sp = icmp eq ptr %i.sn, %i.so
  br i1 %i.sp, label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i323: ; preds = %bb.fp
  %i.sq = load i64, ptr %i.so, align 8, !tbaa !21
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sr) #18
  br label %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit325

_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit325: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i323, %bb.fo, %bb.fn
  %.pn90.pn = phi { ptr, i32 } [ %i.sj, %bb.fn ], [ %i.sk, %bb.fo ], [ %i.sk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i323 ], [ %i.sk, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #19
  %.41 = extractvalue { ptr, i32 } %.pn90.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #19
  %i.ss = call ptr @__cxa_begin_catch(ptr %.41) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %83)
          to label %bb.fq unwind label %bb.fw

bb.fq:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit325
  invoke void @__cxa_end_catch()
          to label %bb.fr unwind label %bb.fx

bb.fr:                                            ; preds = %bb.fq, %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit322
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %83)
          to label %bb.fs unwind label %bb.fx

bb.fs:                                            ; preds = %bb.fr
  %i.st = getelementptr inbounds nuw i8, ptr %83, i64 58
  %i.su = load i8, ptr %i.st, align 2, !tbaa !48, !range !49, !noundef !50
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %_ZN5Catch16AssertionHandlerD2Ev.exit326, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.sw = getelementptr inbounds nuw i8, ptr %83, i64 64
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !51, !nonnull !50, !align !52 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !37
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 112
  %i.ta = load ptr, ptr %i.sz, align 8
  invoke void %i.ta(ptr noundef nonnull align 8 dereferenceable(8) %i.sx, ptr noundef nonnull align 8 dereferenceable(72) %83)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit326 unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.tb = landingpad { ptr, i32 }
          catch ptr null
  %i.tc = extractvalue { ptr, i32 } %i.tb, 0
  call void @__clang_call_terminate(ptr %i.tc) #22
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit326:          ; preds = %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19
  %i.td = load ptr, ptr %i.f, align 8, !tbaa !60
  invoke void @_ZNSt8_Rb_treeIN5vcpkg13StringLiteralESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %i.td)
          to label %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE5clearEv.exit327 unwind label %bb.fv

bb.fv:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit326
  %i.te = landingpad { ptr, i32 }
          catch ptr null
  %i.tf = extractvalue { ptr, i32 } %i.te, 0
  call void @__clang_call_terminate(ptr %i.tf) #22
  unreachable

_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE5clearEv.exit327: ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit326
  store ptr null, ptr %i.f, align 8, !tbaa !60
  store ptr %i.e, ptr %i.g, align 8, !tbaa !61
  store ptr %i.e, ptr %i.h, align 8, !tbaa !142
  store i64 0, ptr %i.i, align 8, !tbaa !62
  br label %.noexc.i329

bb.fw:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_12StripSettingENS_15LocalizedStringEED2Ev.exit325
  %i.tg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fy unwind label %bb.ic

bb.fx:                                            ; preds = %bb.fr, %bb.fq
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %.pn91 = phi { ptr, i32 } [ %i.th, %bb.fx ], [ %i.tg, %bb.fw ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %83) #19
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fm
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %bb.fy ], [ %i.si, %bb.fm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19
  br label %bb.gj

.noexc.i329:                                      ; preds = %_ZNSt3mapIN5vcpkg13StringLiteralENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaISt4pairIKS1_S7_EEE5clearEv.exit327, %bb.cx
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %60) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #19
  store ptr @.str.10, ptr %93, align 8, !tbaa !25
  %i.ti = getelementptr inbounds nuw i8, ptr %93, i64 8
  store i64 166, ptr %i.ti, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #19
  %i.tj = getelementptr inbounds nuw i8, ptr %94, i64 16 ; 6 uses
  store ptr %i.tj, ptr %94, align 8, !tbaa !63
end_hunk_2
