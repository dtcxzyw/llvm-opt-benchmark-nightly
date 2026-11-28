Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/json?download=true
inline.NumInlined: 1400
inline.NumDeleted: 238
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_8v:bb.a

bb.gh:                                            ; preds = %bb.gf, %bb.gg
  %.pn89 = phi { ptr, i32 } [ %i.qs, %bb.gg ], [ %i.qr, %bb.gf ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %80) #17
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.fx
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %bb.gh ], [ %i.po, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #17
  br label %bb.gw

bb.gj:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit155
  %i.qt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #17
  br label %bb.gv

bb.gk:                                            ; preds = %bb.gd
  %i.qu = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %88) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #17
  %.37 = extractvalue { ptr, i32 } %i.qu, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #17
  %i.qv = call ptr @__cxa_begin_catch(ptr %.37) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %84)
          to label %bb.gl unwind label %bb.gs

bb.gl:                                            ; preds = %bb.gk
  invoke void @__cxa_end_catch()
          to label %bb.gm unwind label %bb.gt

bb.gm:                                            ; preds = %bb.gl, %bb.ge
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %84)
          to label %bb.gn unwind label %bb.gt

bb.gn:                                            ; preds = %bb.gm
  %i.qw = getelementptr inbounds nuw i8, ptr %84, i64 58
  %i.qx = load i8, ptr %i.qw, align 2, !tbaa !38, !range !39, !noundef !40
  %i.qy = trunc nuw i8 %i.qx to i1
  br i1 %i.qy, label %_ZN5Catch16AssertionHandlerD2Ev.exit158, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.qz = getelementptr inbounds nuw i8, ptr %84, i64 64
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !28
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 112
  %i.rd = load ptr, ptr %i.rc, align 8
  invoke void %i.rd(ptr noundef nonnull align 8 dereferenceable(8) %i.ra, ptr noundef nonnull align 8 dereferenceable(72) %84)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit158 unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.re = landingpad { ptr, i32 }
          catch ptr null
  %i.rf = extractvalue { ptr, i32 } %i.re, 0
  call void @__clang_call_terminate(ptr %i.rf) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit158:          ; preds = %bb.gn, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #17
  %i.rg = load i8, ptr %i.p, align 8, !tbaa !47, !range !39, !noundef !40
  %i.rh = trunc nuw i8 %i.rg to i1
  br i1 %i.rh, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit158
  %i.ri = load ptr, ptr %15, align 8, !tbaa !17   ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159: ; preds = %bb.gq
  %i.rl = load i64, ptr %i.rj, align 8, !tbaa !18
  %i.rm = add i64 %i.rl, 1
  call void @_ZdlPvm(ptr noundef %i.ri, i64 noundef %i.rm) #18
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit161

bb.gr:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit158
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %15) #17
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit161

_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit161: ; preds = %bb.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  ret void

bb.gs:                                            ; preds = %bb.gk
  %i.rn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gu unwind label %bb.gx

bb.gt:                                            ; preds = %bb.gm, %bb.gl
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gs, %bb.gt
  %.pn93 = phi { ptr, i32 } [ %i.ro, %bb.gt ], [ %i.rn, %bb.gs ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %84) #17
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gj
  %.pn93.pn = phi { ptr, i32 } [ %.pn93, %bb.gu ], [ %i.qt, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #17
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gi, %bb.fw, %bb.fk, %bb.fj, %bb.et, %bb.eh, %bb.dv, %bb.du, %bb.de, %bb.cs, %bb.cg, %bb.cf, %bb.bp, %bb.bd, %bb.ar, %bb.aq, %bb.aa, %bb.o
  %.pn93.pn.pn = phi { ptr, i32 } [ %.pn93.pn, %bb.gv ], [ %.pn89.pn, %bb.gi ], [ %.pn86.pn, %bb.fw ], [ %i.on, %bb.fk ], [ %.pn83.pn, %bb.fj ], [ %.pn79.pn, %bb.et ], [ %.pn76.pn, %bb.eh ], [ %i.kw, %bb.dv ], [ %.pn73.pn, %bb.du ], [ %.pn69.pn, %bb.de ], [ %.pn66.pn, %bb.cs ], [ %i.hf, %bb.cg ], [ %.pn63.pn, %bb.cf ], [ %.pn59.pn, %bb.bp ], [ %.pn56.pn, %bb.bd ], [ %i.do, %bb.ar ], [ %.pn53.pn, %bb.aq ], [ %.pn49.pn, %bb.aa ], [ %.pn.pn, %bb.o ]
  call void @_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  resume { ptr, i32 } %.pn93.pn.pn

bb.gx:                                            ; preds = %bb.gs, %bb.gf, %bb.ft, %bb.fg, %bb.eq, %bb.ee, %bb.dr, %bb.db, %bb.cp, %bb.cc, %bb.bm, %bb.ba, %bb.an, %bb.x, %bb.l
  %i.rp = landingpad { ptr, i32 }
          catch ptr null
  %i.rq = extractvalue { ptr, i32 } %i.rp, 0
  call void @__clang_call_terminate(ptr %i.rq) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20C_A_T_C_H_T_E_S_T_10v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %0 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %1 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %3 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %4 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %5 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %6 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %7 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %8 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %10 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %11 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %12 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %13 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 27 uses
  %14 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %15 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %16 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %17 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %18 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %19 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %20 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %21 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %22 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %23 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %24 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %25 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %26 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %27 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %28 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %29 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %30 = alloca %"class.Catch::BinaryExpr.19", align 8 ; 13 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %31 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %32 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %33 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %34 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %35 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %36 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %37 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %38 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %39 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %40 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %41 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %42 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %43 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %44 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %45 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %46 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %47 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %48 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %49 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %50 = alloca %"class.Catch::BinaryExpr.19", align 8 ; 13 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %51 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %52 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %53 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %54 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %55 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %56 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %57 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %58 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %59 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %60 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %61 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %62 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %63 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %64 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %65 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %66 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %67 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %68 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %69 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %70 = alloca %"class.Catch::MatchExpr", align 8 ; 20 uses
  %i.g = alloca double, align 8                   ; 6 uses
  %71 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %72 = alloca %"struct.Catch::Matchers::Floating::WithinUlpsMatcher", align 8 ; 11 uses
  %73 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %74 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %75 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %76 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %77 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %78 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %79 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %80 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %81 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %82 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %83 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %84 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %85 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %86 = alloca %"class.Catch::MatchExpr", align 8 ; 20 uses
  %i.h = alloca double, align 8                   ; 6 uses
  %87 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %88 = alloca %"struct.Catch::Matchers::Floating::WithinUlpsMatcher", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @_ZN5vcpkg4Json5parseENS_10StringViewES1_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %13, ptr nonnull @.str.97, i64 3, ptr nonnull @.str.41, i64 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store ptr @.str.31, ptr %15, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store ptr @.str, ptr %16, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 149, ptr %i.j, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull @.str.42) #17
  %i.k = load ptr, ptr %17, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.m = load i64, ptr %i.l, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr %i.k, i64 %i.m, i32 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 5 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !47, !range !39, !noalias !321, !noundef !40
  %i.p = xor i8 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.q, align 8, !tbaa !25, !alias.scope !321
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 9
  store i8 %i.p, ptr %i.r, align 1, !tbaa !26, !alias.scope !321
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEEE, i64 16), ptr %12, align 8, !tbaa !28, !alias.scope !321
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %13, ptr %i.s, align 8, !tbaa !49, !alias.scope !321
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(10) %12)
          to label %bb.c unwind label %.body

.body:                                            ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = call ptr @__cxa_begin_catch(ptr %i.u) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %14)
          to label %bb.e unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.o

bb.e:                                             ; preds = %.body
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.c
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %14)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 58
  %i.y = load i8, ptr %i.x, align 2, !tbaa !38, !range !39, !noundef !40
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %14)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  store ptr @.str.31, ptr %19, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 7, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store ptr @.str, ptr %20, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 150, ptr %i.ai, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull @.str.98) #17
  %i.aj = load ptr, ptr %21, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr %i.aj, i64 %i.al, i32 noundef 1)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  %i.am = call noundef zeroext i1 @_ZNK5vcpkg4Json5Value9is_numberEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  %i.an = zext i1 %i.am to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.ao, align 8, !tbaa !25, !alias.scope !322
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 9
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !26, !alias.scope !322
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %11, align 8, !tbaa !28, !alias.scope !322
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 10
  store i8 %i.an, ptr %i.aq, align 2, !tbaa !51, !alias.scope !322
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(10) %11)
          to label %bb.k unwind label %.body96

.body96:                                          ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  %i.at = call ptr @__cxa_begin_catch(ptr %i.as) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %bb.q unwind label %bb.x

bb.k:                                             ; preds = %bb.j
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.r

bb.l:                                             ; preds = %.body
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.hi

bb.m:                                             ; preds = %bb.f, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.pn = phi { ptr, i32 } [ %i.av, %bb.m ], [ %i.au, %bb.l ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %14) #17
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.w, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.hh

bb.p:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %bb.aa

bb.q:                                             ; preds = %.body96
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.q, %bb.k
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !38, !range !39, !noundef !40
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN5Catch16AssertionHandlerD2Ev.exit98, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit98 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit98:           ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
end_hunk_0
begin_hunk_1_@_ZL20C_A_T_C_H_T_E_S_T_10v:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #17
  store ptr @.str.31, ptr %63, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %63, i64 8
  store i64 7, ptr %i.kx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #17
  store ptr @.str, ptr %64, align 8, !tbaa !21
  %i.ky = getelementptr inbounds nuw i8, ptr %64, i64 8
  store i64 161, ptr %i.ky, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull @.str.98) #17
  %i.kz = load ptr, ptr %65, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %65, i64 8
  %i.lb = load i64, ptr %i.la, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %62, ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %64, ptr %i.kz, i64 %i.lb, i32 noundef 1)
          to label %bb.dx unwind label %bb.ed

bb.dx:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit134
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  %i.lc = call noundef zeroext i1 @_ZNK5vcpkg4Json5Value9is_numberEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  %i.ld = zext i1 %i.lc to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.le, align 8, !tbaa !25, !alias.scope !332
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ld, ptr %i.lf, align 1, !tbaa !26, !alias.scope !332
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %2, align 8, !tbaa !28, !alias.scope !332
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %i.ld, ptr %i.lg, align 2, !tbaa !51, !alias.scope !332
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %62, ptr noundef nonnull align 8 dereferenceable(10) %2)
          to label %bb.dy unwind label %.body136

.body136:                                         ; preds = %bb.dx
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  %i.lj = call ptr @__cxa_begin_catch(ptr %i.li) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %62)
          to label %bb.ee unwind label %bb.eq

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ef

bb.dz:                                            ; preds = %.body131
  %i.lk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.eb unwind label %bb.hi

bb.ea:                                            ; preds = %bb.dt, %bb.ds
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %.pn75 = phi { ptr, i32 } [ %i.ll, %bb.ea ], [ %i.lk, %bb.dz ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %58) #17
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dr
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %bb.eb ], [ %i.km, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  br label %bb.hh

bb.ed:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit134
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  br label %bb.et

bb.ee:                                            ; preds = %.body136
  invoke void @__cxa_end_catch()
          to label %bb.ef unwind label %bb.er

bb.ef:                                            ; preds = %bb.ee, %bb.dy
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %62)
          to label %bb.eg unwind label %bb.er

bb.eg:                                            ; preds = %bb.ef
  %i.ln = getelementptr inbounds nuw i8, ptr %62, i64 58
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !38, !range !39, !noundef !40
  %i.lp = trunc nuw i8 %i.lo to i1
  br i1 %i.lp, label %_ZN5Catch16AssertionHandlerD2Ev.exit139, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.lq = getelementptr inbounds nuw i8, ptr %62, i64 64
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !28
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  %i.lu = load ptr, ptr %i.lt, align 8
  invoke void %i.lu(ptr noundef nonnull align 8 dereferenceable(8) %i.lr, ptr noundef nonnull align 8 dereferenceable(72) %62)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit139 unwind label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.lv = landingpad { ptr, i32 }
          catch ptr null
  %i.lw = extractvalue { ptr, i32 } %i.lv, 0
  call void @__clang_call_terminate(ptr %i.lw) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit139:          ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #17
  store ptr @.str.106, ptr %67, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 12, ptr %i.lx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #17
  store ptr @.str, ptr %68, align 8, !tbaa !21
  %i.ly = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 162, ptr %i.ly, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %69, ptr noundef nonnull @.str.107) #17
  %i.lz = load ptr, ptr %69, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.mb = load i64, ptr %i.ma, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %66, ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef nonnull align 8 dereferenceable(16) %68, ptr %i.lz, i64 %i.mb, i32 noundef 1)
          to label %bb.ej unwind label %bb.eu

bb.ej:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  store i32 162, ptr %71, align 8, !tbaa !53
  %i.mc = getelementptr inbounds nuw i8, ptr %71, i64 8
  store ptr @.str, ptr %i.mc, align 8, !tbaa !54
  %i.md = getelementptr inbounds nuw i8, ptr %71, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.md, align 8, !tbaa !55
  %i.me = call noundef double @_ZNK5vcpkg4Json5Value6numberENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %71) #17
  store double %i.me, ptr %i.g, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #17
  invoke void @_ZN5Catch8Matchers9WithinULPEdm(ptr dead_on_unwind nonnull writable sret(%"struct.Catch::Matchers::Floating::WithinUlpsMatcher") align 8 %72, double noundef f0x40C81CD6E631F8A1, i64 noundef 3)
          to label %bb.ek unwind label %bb.ev

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.mf = load ptr, ptr %72, align 8, !tbaa !28, !noalias !333
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8, !noalias !333
  %i.mi = invoke noundef zeroext i1 %i.mh(ptr noundef nonnull align 8 dereferenceable(65) %72, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc unwind label %bb.ew, !noalias !333, !inline_history !314

.noexc:                                           ; preds = %bb.ek
  %i.mj = zext i1 %i.mi to i8
  %i.mk = getelementptr inbounds nuw i8, ptr %70, i64 8
  store i8 1, ptr %i.mk, align 8, !tbaa !25, !alias.scope !333
  %i.ml = getelementptr inbounds nuw i8, ptr %70, i64 9
  store i8 %i.mj, ptr %i.ml, align 1, !tbaa !26, !alias.scope !333
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %70, align 8, !tbaa !28, !alias.scope !333
  %i.mm = getelementptr inbounds nuw i8, ptr %70, i64 16
  store ptr %i.g, ptr %i.mm, align 8, !tbaa !325, !alias.scope !333
  %i.mn = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch8Matchers4Impl18MatcherUntypedBaseE, i64 16), ptr %i.mn, align 8, !tbaa !28, !alias.scope !333
  %i.mo = getelementptr inbounds nuw i8, ptr %70, i64 32 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %70, i64 48 ; 3 uses
  store ptr %i.mq, ptr %i.mo, align 8, !tbaa !13, !alias.scope !333
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !17, !noalias !333 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !19, !noalias !333 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !333
  store i64 %i.mt, ptr %i.b, align 8, !tbaa !15, !noalias !333
  %i.mu = icmp ugt i64 %i.mt, 15
  br i1 %i.mu, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc
  %i.mv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.mo, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.en ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.mv, ptr %i.mo, align 8, !tbaa !17, !alias.scope !333
  %i.mw = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !333
  store i64 %i.mw, ptr %i.mq, align 8, !tbaa !18, !alias.scope !333
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc.i.i, %.noexc
  %i.mx = phi ptr [ %i.mv, %.noexc.i.i ], [ %i.mq, %.noexc ] ; 2 uses
  switch i64 %i.mt, label %bb.em [
    i64 1, label %bb.el
    i64 0, label %bb.eo
  ]

bb.el:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.my = load i8, ptr %i.mr, align 1, !tbaa !18
  store i8 %i.my, ptr %i.mx, align 1, !tbaa !18
  br label %bb.eo

bb.em:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mx, ptr align 1 %i.mr, i64 %i.mt, i1 false)
  br label %bb.eo

bb.en:                                            ; preds = %.noexc.i.i.i.i.i.i
  %i.mz = landingpad { ptr, i32 }
          catch ptr null
  br label %.body141.sink.split

bb.eo:                                            ; preds = %bb.em, %bb.el, %._crit_edge.i.i.i.i.i.i.i
  %i.na = load i64, ptr %i.b, align 8, !tbaa !15, !noalias !333 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i64 %i.na, ptr %i.nb, align 8, !tbaa !19, !alias.scope !333
  %i.nc = load ptr, ptr %i.mo, align 8, !tbaa !17, !alias.scope !333
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.na
  store i8 0, ptr %i.nd, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !333
  %i.ne = getelementptr inbounds nuw i8, ptr %70, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch8Matchers8Floating17WithinUlpsMatcherE, i64 16), ptr %i.mn, align 8, !tbaa !28, !alias.scope !333
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers8Floating17WithinUlpsMatcherE, i64 64), ptr %i.ne, align 8, !tbaa !28, !alias.scope !333
  %i.nf = getelementptr inbounds nuw i8, ptr %70, i64 72
  %i.ng = getelementptr inbounds nuw i8, ptr %72, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.nf, ptr noundef nonnull align 8 dereferenceable(17) %i.ng, i64 17, i1 false)
  %i.nh = getelementptr inbounds nuw i8, ptr %70, i64 96
  store ptr @.str.108, ptr %i.nh, align 8, !tbaa !31
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 104
  store i64 31, ptr %.sroa.5176.0..sroa_idx, align 8, !tbaa !15
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %66, ptr noundef nonnull align 8 dereferenceable(10) %70)
          to label %bb.ep unwind label %bb.ex

bb.ep:                                            ; preds = %bb.eo
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %70, align 8, !tbaa !28
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.mn) #17, !inline_history !66
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %70) #17, !inline_history !66
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %72) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #17
  br label %bb.fa

bb.eq:                                            ; preds = %.body136
  %i.ni = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.es unwind label %bb.hi

bb.er:                                            ; preds = %bb.ef, %bb.ee
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.es:                                            ; preds = %bb.eq, %bb.er
  %.pn78 = phi { ptr, i32 } [ %i.nj, %bb.er ], [ %i.ni, %bb.eq ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %62) #17
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ed
  %.pn78.pn = phi { ptr, i32 } [ %.pn78, %bb.es ], [ %i.lm, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  br label %bb.hh

bb.eu:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit139
  %i.nk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  br label %bb.fm

bb.ev:                                            ; preds = %bb.ej
  %i.nl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ey

bb.ew:                                            ; preds = %bb.ek
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  br label %.body141

bb.ex:                                            ; preds = %bb.eo
  %i.nn = landingpad { ptr, i32 }
          catch ptr null
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %70, align 8, !tbaa !28
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.mn) #17, !inline_history !66
  br label %.body141.sink.split

.body141.sink.split:                              ; preds = %bb.ex, %bb.en
  %.pn81.ph = phi { ptr, i32 } [ %i.mz, %bb.en ], [ %i.nn, %bb.ex ]
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %70) #17
  br label %.body141

.body141:                                         ; preds = %.body141.sink.split, %bb.ew
  %.pn81 = phi { ptr, i32 } [ %i.nm, %bb.ew ], [ %.pn81.ph, %.body141.sink.split ]
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %72) #17
  br label %bb.ey

bb.ey:                                            ; preds = %.body141, %bb.ev
  %.pn81.pn = phi { ptr, i32 } [ %.pn81, %.body141 ], [ %i.nl, %bb.ev ]
  %.2743 = extractvalue { ptr, i32 } %.pn81.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #17
  %i.no = call ptr @__cxa_begin_catch(ptr %.2743) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %66)
          to label %bb.ez unwind label %bb.fj

bb.ez:                                            ; preds = %bb.ey
  invoke void @__cxa_end_catch()
          to label %bb.fa unwind label %bb.fk

bb.fa:                                            ; preds = %bb.ez, %bb.ep
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %66)
          to label %bb.fb unwind label %bb.fk

bb.fb:                                            ; preds = %bb.fa
  %i.np = getelementptr inbounds nuw i8, ptr %66, i64 58
  %i.nq = load i8, ptr %i.np, align 2, !tbaa !38, !range !39, !noundef !40
  %i.nr = trunc nuw i8 %i.nq to i1
  br i1 %i.nr, label %_ZN5Catch16AssertionHandlerD2Ev.exit143, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ns = getelementptr inbounds nuw i8, ptr %66, i64 64
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !28
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 112
  %i.nw = load ptr, ptr %i.nv, align 8
  invoke void %i.nw(ptr noundef nonnull align 8 dereferenceable(8) %i.nt, ptr noundef nonnull align 8 dereferenceable(72) %66)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit143 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.nx = landingpad { ptr, i32 }
          catch ptr null
  %i.ny = extractvalue { ptr, i32 } %i.nx, 0
  call void @__clang_call_terminate(ptr %i.ny) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit143:          ; preds = %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #17
  invoke void @_ZN5vcpkg4Json5parseENS_10StringViewES1_(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %73, ptr nonnull @.str.109, i64 11, ptr nonnull @.str.41, i64 4)
          to label %bb.fe unwind label %bb.fn

bb.fe:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit143
  %i.nz = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(33) %13, ptr noundef nonnull align 8 dereferenceable(33) %73) #17 ; 0 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %73, i64 32
  %i.ob = load i8, ptr %i.oa, align 8, !tbaa !47, !range !39, !noundef !40
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.od = load ptr, ptr %73, align 8, !tbaa !17   ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.of = icmp eq ptr %i.od, %i.oe
  br i1 %i.of, label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i144: ; preds = %bb.ff
  %i.og = load i64, ptr %i.oe, align 8, !tbaa !18
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.od, i64 noundef %i.oh) #18
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit146

bb.fg:                                            ; preds = %bb.fe
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %73) #17
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit146

_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit146: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i144, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #17
  store ptr @.str.31, ptr %75, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %75, i64 8
  store i64 7, ptr %i.oi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #17
  store ptr @.str, ptr %76, align 8, !tbaa !21
  %i.oj = getelementptr inbounds nuw i8, ptr %76, i64 8
  store i64 164, ptr %i.oj, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull @.str.42) #17
  %i.ok = load ptr, ptr %77, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.om = load i64, ptr %i.ol, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %74, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %76, ptr %i.ok, i64 %i.om, i32 noundef 1)
          to label %bb.fh unwind label %bb.fo

bb.fh:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.on = load i8, ptr %i.n, align 8, !tbaa !47, !range !39, !noalias !334, !noundef !40
  %i.oo = xor i8 %i.on, 1
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.op, align 8, !tbaa !25, !alias.scope !334
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.oo, ptr %i.oq, align 1, !tbaa !26, !alias.scope !334
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIRKN5vcpkg9ExpectedTINS1_4Json10ParsedJsonENS1_15LocalizedStringEEEEE, i64 16), ptr %1, align 8, !tbaa !28, !alias.scope !334
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %13, ptr %i.or, align 8, !tbaa !49, !alias.scope !334
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %74, ptr noundef nonnull align 8 dereferenceable(10) %1)
          to label %bb.fi unwind label %.body147

.body147:                                         ; preds = %bb.fh
  %i.os = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.ot = extractvalue { ptr, i32 } %i.os, 0
  %i.ou = call ptr @__cxa_begin_catch(ptr %i.ot) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %bb.fp unwind label %bb.fw

bb.fi:                                            ; preds = %bb.fh
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.fq

bb.fj:                                            ; preds = %bb.ey
  %i.ov = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fl unwind label %bb.hi

bb.fk:                                            ; preds = %bb.fa, %bb.ez
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %.pn82 = phi { ptr, i32 } [ %i.ow, %bb.fk ], [ %i.ov, %bb.fj ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %66) #17
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.eu
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.fl ], [ %i.nk, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  br label %bb.hh

bb.fn:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit143
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #17
  br label %bb.hh

bb.fo:                                            ; preds = %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit146
  %i.oy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #17
  br label %bb.fz

bb.fp:                                            ; preds = %.body147
  invoke void @__cxa_end_catch()
          to label %bb.fq unwind label %bb.fx

bb.fq:                                            ; preds = %bb.fp, %bb.fi
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %bb.fr unwind label %bb.fx

bb.fr:                                            ; preds = %bb.fq
  %i.oz = getelementptr inbounds nuw i8, ptr %74, i64 58
  %i.pa = load i8, ptr %i.oz, align 2, !tbaa !38, !range !39, !noundef !40
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %_ZN5Catch16AssertionHandlerD2Ev.exit150, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.pc = getelementptr inbounds nuw i8, ptr %74, i64 64
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !28
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 112
  %i.pg = load ptr, ptr %i.pf, align 8
  invoke void %i.pg(ptr noundef nonnull align 8 dereferenceable(8) %i.pd, ptr noundef nonnull align 8 dereferenceable(72) %74)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit150 unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ph = landingpad { ptr, i32 }
          catch ptr null
  %i.pi = extractvalue { ptr, i32 } %i.ph, 0
  call void @__clang_call_terminate(ptr %i.pi) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit150:          ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #17
  store ptr @.str.31, ptr %79, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %79, i64 8
  store i64 7, ptr %i.pj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #17
  store ptr @.str, ptr %80, align 8, !tbaa !21
  %i.pk = getelementptr inbounds nuw i8, ptr %80, i64 8
  store i64 165, ptr %i.pk, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull @.str.98) #17
  %i.pl = load ptr, ptr %81, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.pn = load i64, ptr %i.pm, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(16) %80, ptr %i.pl, i64 %i.pn, i32 noundef 1)
          to label %bb.fu unwind label %bb.ga

bb.fu:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit150
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #17
  %i.po = call noundef zeroext i1 @_ZNK5vcpkg4Json5Value9is_numberEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  %i.pp = zext i1 %i.po to i8                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.pq, align 8, !tbaa !25, !alias.scope !335
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.pp, ptr %i.pr, align 1, !tbaa !26, !alias.scope !335
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %0, align 8, !tbaa !28, !alias.scope !335
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.pp, ptr %i.ps, align 2, !tbaa !51, !alias.scope !335
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %78, ptr noundef nonnull align 8 dereferenceable(10) %0)
          to label %bb.fv unwind label %.body152

.body152:                                         ; preds = %bb.fu
  %i.pt = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  %i.pu = extractvalue { ptr, i32 } %i.pt, 0
  %i.pv = call ptr @__cxa_begin_catch(ptr %i.pu) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %78)
          to label %bb.gb unwind label %bb.gn

bb.fv:                                            ; preds = %bb.fu
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  br label %bb.gc

bb.fw:                                            ; preds = %.body147
  %i.pw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.fy unwind label %bb.hi

bb.fx:                                            ; preds = %bb.fq, %bb.fp
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %.pn85 = phi { ptr, i32 } [ %i.px, %bb.fx ], [ %i.pw, %bb.fw ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %74) #17
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fo
  %.pn85.pn = phi { ptr, i32 } [ %.pn85, %bb.fy ], [ %i.oy, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #17
  br label %bb.hh

bb.ga:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit150
  %i.py = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #17
  br label %bb.gq

bb.gb:                                            ; preds = %.body152
  invoke void @__cxa_end_catch()
          to label %bb.gc unwind label %bb.go

bb.gc:                                            ; preds = %bb.gb, %bb.fv
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %78)
          to label %bb.gd unwind label %bb.go

bb.gd:                                            ; preds = %bb.gc
  %i.pz = getelementptr inbounds nuw i8, ptr %78, i64 58
  %i.qa = load i8, ptr %i.pz, align 2, !tbaa !38, !range !39, !noundef !40
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %_ZN5Catch16AssertionHandlerD2Ev.exit155, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.qc = getelementptr inbounds nuw i8, ptr %78, i64 64
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !28
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 112
  %i.qg = load ptr, ptr %i.qf, align 8
  invoke void %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull align 8 dereferenceable(72) %78)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit155 unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.qh = landingpad { ptr, i32 }
          catch ptr null
  %i.qi = extractvalue { ptr, i32 } %i.qh, 0
  call void @__clang_call_terminate(ptr %i.qi) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit155:          ; preds = %bb.gd, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #17
  store ptr @.str.106, ptr %83, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %83, i64 8
  store i64 12, ptr %i.qj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #17
  store ptr @.str, ptr %84, align 8, !tbaa !21
  %i.qk = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 166, ptr %i.qk, align 8, !tbaa !22
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %85, ptr noundef nonnull @.str.110) #17
  %i.ql = load ptr, ptr %85, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %85, i64 8
  %i.qn = load i64, ptr %i.qm, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %82, ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(16) %84, ptr %i.ql, i64 %i.qn, i32 noundef 1)
          to label %bb.gg unwind label %bb.gr

bb.gg:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit155
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  store i32 166, ptr %87, align 8, !tbaa !53
  %i.qo = getelementptr inbounds nuw i8, ptr %87, i64 8
  store ptr @.str, ptr %i.qo, align 8, !tbaa !54
  %i.qp = getelementptr inbounds nuw i8, ptr %87, i64 16
  store ptr @__func__._ZL20C_A_T_C_H_T_E_S_T_10v, ptr %i.qp, align 8, !tbaa !55
  %i.qq = call noundef double @_ZNK5vcpkg4Json5Value6numberENS_8LineInfoE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %87) #17
  store double %i.qq, ptr %i.h, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #17
  invoke void @_ZN5Catch8Matchers9WithinULPEdm(ptr dead_on_unwind nonnull writable sret(%"struct.Catch::Matchers::Floating::WithinUlpsMatcher") align 8 %88, double noundef f0xC0C81CD6E631F8A1, i64 noundef 3)
          to label %bb.gh unwind label %bb.gs

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.qr = load ptr, ptr %88, align 8, !tbaa !28, !noalias !336
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  %i.qt = load ptr, ptr %i.qs, align 8, !noalias !336
  %i.qu = invoke noundef zeroext i1 %i.qt(ptr noundef nonnull align 8 dereferenceable(65) %88, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc160 unwind label %bb.gt, !noalias !336, !inline_history !314

.noexc160:                                        ; preds = %bb.gh
  %i.qv = zext i1 %i.qu to i8
  %i.qw = getelementptr inbounds nuw i8, ptr %86, i64 8
  store i8 1, ptr %i.qw, align 8, !tbaa !25, !alias.scope !336
  %i.qx = getelementptr inbounds nuw i8, ptr %86, i64 9
  store i8 %i.qv, ptr %i.qx, align 1, !tbaa !26, !alias.scope !336
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %86, align 8, !tbaa !28, !alias.scope !336
  %i.qy = getelementptr inbounds nuw i8, ptr %86, i64 16
  store ptr %i.h, ptr %i.qy, align 8, !tbaa !325, !alias.scope !336
  %i.qz = getelementptr inbounds nuw i8, ptr %86, i64 24 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch8Matchers4Impl18MatcherUntypedBaseE, i64 16), ptr %i.qz, align 8, !tbaa !28, !alias.scope !336
  %i.ra = getelementptr inbounds nuw i8, ptr %86, i64 32 ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %86, i64 48 ; 3 uses
  store ptr %i.rc, ptr %i.ra, align 8, !tbaa !13, !alias.scope !336
  %i.rd = load ptr, ptr %i.rb, align 8, !tbaa !17, !noalias !336 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !19, !noalias !336 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !336
  store i64 %i.rf, ptr %i.a, align 8, !tbaa !15, !noalias !336
  %i.rg = icmp ugt i64 %i.rf, 15
  br i1 %i.rg, label %.noexc.i.i.i.i.i.i158, label %._crit_edge.i.i.i.i.i.i.i157

.noexc.i.i.i.i.i.i158:                            ; preds = %.noexc160
  %i.rh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ra, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i159 unwind label %bb.gk ; 2 uses

.noexc.i.i159:                                    ; preds = %.noexc.i.i.i.i.i.i158
  store ptr %i.rh, ptr %i.ra, align 8, !tbaa !17, !alias.scope !336
  %i.ri = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !336
  store i64 %i.ri, ptr %i.rc, align 8, !tbaa !18, !alias.scope !336
  br label %._crit_edge.i.i.i.i.i.i.i157

._crit_edge.i.i.i.i.i.i.i157:                     ; preds = %.noexc.i.i159, %.noexc160
  %i.rj = phi ptr [ %i.rh, %.noexc.i.i159 ], [ %i.rc, %.noexc160 ] ; 2 uses
  switch i64 %i.rf, label %bb.gj [
    i64 1, label %bb.gi
    i64 0, label %bb.gl
  ]

bb.gi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i157
  %i.rk = load i8, ptr %i.rd, align 1, !tbaa !18
  store i8 %i.rk, ptr %i.rj, align 1, !tbaa !18
  br label %bb.gl

bb.gj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rj, ptr align 1 %i.rd, i64 %i.rf, i1 false)
  br label %bb.gl

bb.gk:                                            ; preds = %.noexc.i.i.i.i.i.i158
  %i.rl = landingpad { ptr, i32 }
          catch ptr null
  br label %.body161.sink.split

bb.gl:                                            ; preds = %bb.gj, %bb.gi, %._crit_edge.i.i.i.i.i.i.i157
  %i.rm = load i64, ptr %i.a, align 8, !tbaa !15, !noalias !336 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %86, i64 40
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !19, !alias.scope !336
  %i.ro = load ptr, ptr %i.ra, align 8, !tbaa !17, !alias.scope !336
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rm
  store i8 0, ptr %i.rp, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !336
  %i.rq = getelementptr inbounds nuw i8, ptr %86, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch8Matchers8Floating17WithinUlpsMatcherE, i64 16), ptr %i.qz, align 8, !tbaa !28, !alias.scope !336
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch8Matchers8Floating17WithinUlpsMatcherE, i64 64), ptr %i.rq, align 8, !tbaa !28, !alias.scope !336
  %i.rr = getelementptr inbounds nuw i8, ptr %86, i64 72
  %i.rs = getelementptr inbounds nuw i8, ptr %88, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.rr, ptr noundef nonnull align 8 dereferenceable(17) %i.rs, i64 17, i1 false)
  %i.rt = getelementptr inbounds nuw i8, ptr %86, i64 96
  store ptr @.str.111, ptr %i.rt, align 8, !tbaa !31
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %86, i64 104
  store i64 32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %82, ptr noundef nonnull align 8 dereferenceable(10) %86)
          to label %bb.gm unwind label %bb.gu

bb.gm:                                            ; preds = %bb.gl
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %86, align 8, !tbaa !28
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.qz) #17, !inline_history !66
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %86) #17, !inline_history !66
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %88) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #17
  br label %bb.gx

bb.gn:                                            ; preds = %.body152
  %i.ru = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.gp unwind label %bb.hi

bb.go:                                            ; preds = %bb.gc, %bb.gb
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go
  %.pn88 = phi { ptr, i32 } [ %i.rv, %bb.go ], [ %i.ru, %bb.gn ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %78) #17
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.ga
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %bb.gp ], [ %i.py, %bb.ga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #17
  br label %bb.hh

bb.gr:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit155
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #17
  br label %bb.hg

bb.gs:                                            ; preds = %bb.gg
  %i.rx = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.gv

bb.gt:                                            ; preds = %bb.gh
  %i.ry = landingpad { ptr, i32 }
          catch ptr null
  br label %.body161

bb.gu:                                            ; preds = %bb.gl
  %i.rz = landingpad { ptr, i32 }
          catch ptr null
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9MatchExprIdNS_8Matchers8Floating17WithinUlpsMatcherEEE, i64 16), ptr %86, align 8, !tbaa !28
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %i.qz) #17, !inline_history !66
  br label %.body161.sink.split

.body161.sink.split:                              ; preds = %bb.gu, %bb.gk
  %.pn91.ph = phi { ptr, i32 } [ %i.rl, %bb.gk ], [ %i.rz, %bb.gu ]
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(112) %86) #17
  br label %.body161

.body161:                                         ; preds = %.body161.sink.split, %bb.gt
  %.pn91 = phi { ptr, i32 } [ %i.ry, %bb.gt ], [ %.pn91.ph, %.body161.sink.split ]
  call void @_ZN5Catch8Matchers4Impl18MatcherUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %88) #17
  br label %bb.gv

bb.gv:                                            ; preds = %.body161, %bb.gs
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %.body161 ], [ %i.rx, %bb.gs ]
  %.35 = extractvalue { ptr, i32 } %.pn91.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %86) #17
  %i.sa = call ptr @__cxa_begin_catch(ptr %.35) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %82)
          to label %bb.gw unwind label %bb.hd

bb.gw:                                            ; preds = %bb.gv
  invoke void @__cxa_end_catch()
          to label %bb.gx unwind label %bb.he

bb.gx:                                            ; preds = %bb.gw, %bb.gm
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %82)
          to label %bb.gy unwind label %bb.he

bb.gy:                                            ; preds = %bb.gx
  %i.sb = getelementptr inbounds nuw i8, ptr %82, i64 58
  %i.sc = load i8, ptr %i.sb, align 2, !tbaa !38, !range !39, !noundef !40
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %_ZN5Catch16AssertionHandlerD2Ev.exit164, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.se = getelementptr inbounds nuw i8, ptr %82, i64 64
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !41, !nonnull !40, !align !42 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !28
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 112
  %i.si = load ptr, ptr %i.sh, align 8
  invoke void %i.si(ptr noundef nonnull align 8 dereferenceable(8) %i.sf, ptr noundef nonnull align 8 dereferenceable(72) %82)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit164 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.sj = landingpad { ptr, i32 }
          catch ptr null
  %i.sk = extractvalue { ptr, i32 } %i.sj, 0
  call void @__clang_call_terminate(ptr %i.sk) #19
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit164:          ; preds = %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #17
  %i.sl = load i8, ptr %i.n, align 8, !tbaa !47, !range !39, !noundef !40
  %i.sm = trunc nuw i8 %i.sl to i1
  br i1 %i.sm, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit164
  %i.sn = load ptr, ptr %13, align 8, !tbaa !17   ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.sp = icmp eq ptr %i.sn, %i.so
  br i1 %i.sp, label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i165: ; preds = %bb.hb
  %i.sq = load i64, ptr %i.so, align 8, !tbaa !18
  %i.sr = add i64 %i.sq, 1
  call void @_ZdlPvm(ptr noundef %i.sn, i64 noundef %i.sr) #18
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit167

bb.hc:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit164
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %13) #17
  br label %_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit167

_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev.exit167: ; preds = %bb.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i165, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  ret void

bb.hd:                                            ; preds = %bb.gv
  %i.ss = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.hf unwind label %bb.hi

bb.he:                                            ; preds = %bb.gx, %bb.gw
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hd, %bb.he
  %.pn92 = phi { ptr, i32 } [ %i.st, %bb.he ], [ %i.ss, %bb.hd ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %82) #17
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.gr
  %.pn92.pn = phi { ptr, i32 } [ %.pn92, %bb.hf ], [ %i.rw, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #17
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.gq, %bb.fz, %bb.fn, %bb.fm, %bb.et, %bb.ec, %bb.dq, %bb.dp, %bb.da, %bb.cn, %bb.cb, %bb.bp, %bb.bo, %bb.az, %bb.am, %bb.aa, %bb.o
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %bb.hg ], [ %.pn88.pn, %bb.gq ], [ %.pn85.pn, %bb.fz ], [ %i.ox, %bb.fn ], [ %.pn82.pn, %bb.fm ], [ %.pn78.pn, %bb.et ], [ %.pn75.pn, %bb.ec ], [ %i.kl, %bb.dq ], [ %.pn72.pn, %bb.dp ], [ %.pn69.pn, %bb.da ], [ %.pn65.pn, %bb.cn ], [ %.pn62.pn, %bb.cb ], [ %i.fr, %bb.bp ], [ %.pn59.pn, %bb.bo ], [ %.pn56.pn, %bb.az ], [ %.pn52.pn, %bb.am ], [ %.pn49.pn, %bb.aa ], [ %.pn.pn, %bb.o ]
  call void @_ZN5vcpkg9ExpectedTINS_4Json10ParsedJsonENS_15LocalizedStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  resume { ptr, i32 } %.pn92.pn.pn

bb.hi:                                            ; preds = %bb.hd, %bb.gn, %bb.fw, %bb.fj, %bb.eq, %bb.dz, %bb.dm, %bb.cx, %bb.ck, %bb.by, %bb.bl, %bb.aw, %bb.aj, %bb.x, %bb.l
  %i.su = landingpad { ptr, i32 }
          catch ptr null
  %i.sv = extractvalue { ptr, i32 } %i.su, 0
  call void @__clang_call_terminate(ptr %i.sv) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20C_A_T_C_H_T_E_S_T_12v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %1 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %2 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %4 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %5 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %6 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %7 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %8 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %9 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %10 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %11 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %12 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %13 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %15 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %16 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %17 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %19 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %20 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %21 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %22 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %23 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %24 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %25 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %26 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %27 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %28 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %29 = alloca %"class.Catch::UnaryExpr.7", align 8 ; 10 uses
  %30 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %31 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 20 uses
  %32 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %33 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %34 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %35 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %36 = alloca %"struct.vcpkg::Json::Value", align 8 ; 26 uses
  %37 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %38 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %39 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %40 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %41 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %42 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %43 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %44 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %45 = alloca %"class.Catch::BinaryExpr.8", align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %46 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %47 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %48 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %49 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %50 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %51 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %52 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %53 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %54 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %55 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %56 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %57 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %58 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %59 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %60 = alloca %"class.Catch::BinaryExpr.8", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %61 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %62 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %63 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %64 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %65 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %66 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %67 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %69 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %70 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %71 = alloca %"class.Catch::BinaryExpr.16", align 8 ; 13 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %72 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %73 = alloca %"struct.vcpkg::LineInfo", align 8 ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %74 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %75 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %76 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %77 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %78 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %79 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %80 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %81 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %82 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %83 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %84 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %85 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %86 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
end_hunk_1
