Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/versionplan?download=true
inline.NumInlined: 1527
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_0v:bb.a

bb.cw:                                            ; preds = %bb.ck
  %i.ky = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.loopexit

bb.cx:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit97
  %i.kz = landingpad { ptr, i32 }
          catch ptr null
  br label %.body98

.body98:                                          ; preds = %bb.cm, %bb.cx
  %eh.lpad-body99 = phi { ptr, i32 } [ %i.kz, %bb.cx ], [ %i.jj, %bb.cm ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %44) #19
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.body98, %bb.cw
  %.pn57 = phi { ptr, i32 } [ %eh.lpad-body99, %.body98 ], [ %i.ky, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cv
  %.pn57.pn = phi { ptr, i32 } [ %i.kx, %bb.cv ], [ %.pn57, %.loopexit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19
  br label %bb.cy

bb.cy:                                            ; preds = %.loopexit, %bb.cu
  %.pn57.pn.pn = phi { ptr, i32 } [ %.pn57.pn, %.loopexit ], [ %i.kw, %bb.cu ]
  %.22 = extractvalue { ptr, i32 } %.pn57.pn.pn, 0
  %i.la = call ptr @__cxa_begin_catch(ptr %.22) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %40)
          to label %bb.cz unwind label %bb.dh

bb.cz:                                            ; preds = %bb.cy
  invoke void @__cxa_end_catch()
          to label %bb.da unwind label %bb.di

bb.da:                                            ; preds = %bb.cz, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit106
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %40)
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %bb.da
  %i.lb = getelementptr inbounds nuw i8, ptr %40, i64 58
  %i.lc = load i8, ptr %i.lb, align 2, !tbaa !50, !range !35, !noundef !36
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %_ZN5Catch16AssertionHandlerD2Ev.exit107, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.le = getelementptr inbounds nuw i8, ptr %40, i64 64
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !51, !nonnull !36, !align !52 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !41
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 112
  %i.li = load ptr, ptr %i.lh, align 8
  invoke void %i.li(ptr noundef nonnull align 8 dereferenceable(8) %i.lf, ptr noundef nonnull align 8 dereferenceable(72) %40)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit107 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #21
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit107:          ; preds = %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  %i.ll = load i8, ptr %i.o, align 8, !tbaa !34, !range !35, !noundef !36
  %i.lm = trunc nuw i8 %i.ll to i1
  %i.ln = load ptr, ptr %6, align 8, !tbaa !80    ; 5 uses
  br i1 %i.lm, label %bb.de, label %bb.df

bb.de:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit107
  %i.lo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.de
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !27
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #20
  br label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit

bb.df:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit107
  %i.ls = load ptr, ptr %.sroa.gep, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ln, %i.ls
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.df, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i ], [ %i.ln, %bb.df ] ; 2 uses
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %.05.i.i.i.i.i) #19
  %i.lt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lt, %i.ls
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %6, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.df
  %i.lu = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ln, %bb.df ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !81
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.lz) #20
  br label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret void

bb.dh:                                            ; preds = %bb.cy
  %i.ma = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dj unwind label %bb.dn

bb.di:                                            ; preds = %bb.da, %bb.cz
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dh, %bb.di
  %.pn58 = phi { ptr, i32 } [ %i.mb, %bb.di ], [ %i.ma, %bb.dh ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %40) #19
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.ct
  %.pn58.pn = phi { ptr, i32 } [ %.pn58, %bb.dj ], [ %i.kv, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  br label %bb.dl

bb.dl:                                            ; preds = %bb.ag, %bb.ba, %bb.bw, %bb.cs, %bb.dk, %bb.q
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %bb.q ], [ %.pn58.pn, %bb.dk ], [ %.pn54.pn, %bb.cs ], [ %.pn50.pn, %bb.bw ], [ %.pn46.pn, %bb.ba ], [ %.pn42.pn, %bb.ag ]
  call void @_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %6) #19
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %.pn58.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn.pn, %bb.dl ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  resume { ptr, i32 } %.pn58.pn.pn.pn.pn

bb.dn:                                            ; preds = %bb.dh, %bb.cp, %bb.bt, %bb.ax, %bb.ad, %bb.n
  %i.mc = landingpad { ptr, i32 }
          catch ptr null
  %i.md = extractvalue { ptr, i32 } %i.mc, 0
  call void @__clang_call_terminate(ptr %i.md) #21
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_2v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %5 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %7 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %10 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::vector.47", align 8   ; 20 uses
  %12 = alloca [2 x %"class.std::__cxx11::basic_string"], align 8 ; 21 uses
  %13 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %14 = alloca [2 x %"struct.std::pair"], align 8 ; 17 uses
  %15 = alloca %"struct.std::hash", align 1       ; 4 uses
  %16 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %17 = alloca %"class.std::allocator.25", align 1 ; 4 uses
  %18 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %19 = alloca [2 x %"struct.std::pair"], align 8 ; 17 uses
  %20 = alloca %"struct.std::hash", align 1       ; 4 uses
  %21 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %22 = alloca %"class.std::allocator.25", align 1 ; 4 uses
  %23 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 14 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %26 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %27 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %28 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %29 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %30 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %31 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::vector.53", align 8   ; 12 uses
  %34 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %35 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %36 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %37 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %38 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %39 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %40 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %41 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %42 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %43 = alloca %"class.Catch::BinaryExpr.5", align 8 ; 13 uses
  %44 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %45 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %46 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %47 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %48 = alloca %"class.Catch::BinaryExpr.58", align 8 ; 13 uses
  %49 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %50 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %51 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %52 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %53 = alloca %"class.Catch::BinaryExpr.5", align 8 ; 13 uses
  %54 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %55 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %56 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %57 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %58 = alloca %"class.Catch::BinaryExpr.58", align 8 ; 13 uses
  %59 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %60 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %61 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.std::vector.53", align 8   ; 12 uses
  %64 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %65 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %66 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %67 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %68 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %69 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %70 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %71 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %72 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %73 = alloca %"class.Catch::BinaryExpr.5", align 8 ; 13 uses
  %74 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %75 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %76 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %77 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %78 = alloca %"class.Catch::BinaryExpr.58", align 8 ; 13 uses
  %79 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %80 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %81 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %82 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %83 = alloca %"class.Catch::BinaryExpr.5", align 8 ; 13 uses
  %84 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %85 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %86 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %87 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %88 = alloca %"class.Catch::BinaryExpr.58", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.f, ptr %12, align 8, !tbaa !23
  store i32 1701998435, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 20
  store i8 0, ptr %i.h, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.j, ptr noundef nonnull align 1 dereferenceable(7) @.str.27, i64 7, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 7, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 55
  store i8 0, ptr %i.l, align 1, !tbaa !27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.m = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.m, ptr %11, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !84
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %12, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %11, align 8, !tbaa !83    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i5.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #20
  br label %.body

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  store ptr %i.q, ptr %i.y, align 8, !tbaa !85
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !27
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.af = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !27
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA26_KcRA4_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 1 dereferenceable(26) @.str.28, ptr noundef nonnull align 1 dereferenceable(4) @.str.29)
          to label %bb.e unwind label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit340.loopexit347.a

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 64
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA24_KcRA1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 1 dereferenceable(24) @.str.18, ptr noundef nonnull align 1 dereferenceable(1) @.str.9)
          to label %bb.f unwind label %.loopexit342.loopexit348

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 128
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull %14, ptr noundef nonnull %i.am, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit unwind label %.loopexit342.loopexit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !28 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !27
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !27
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #20
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !27
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.bf = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !27
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA26_KcRA4_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull align 1 dereferenceable(26) @.str.28, ptr noundef nonnull align 1 dereferenceable(4) @.str.30)
          to label %bb.g unwind label %.thread332

.thread332:                                       ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.1
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit340

bb.g:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.1
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 64
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA24_KcRA13_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %i.bl, ptr noundef nonnull align 1 dereferenceable(24) @.str.18, ptr noundef nonnull align 1 dereferenceable(13) @.str.20)
          to label %bb.h unwind label %.loopexit340.loopexit347

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %19, i64 128
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEEC2IPKS8_EET_SP_mRKSF_RKSD_RKS9_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull %19, ptr noundef nonnull %i.bm, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit158 unwind label %.loopexit340.loopexit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit158: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.bn = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %19, i64 96
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %19, i64 112 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit158
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !27
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEC2ESt16initializer_listISC_EmRKS7_RKS9_RKSD_.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !28 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %19, i64 80 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !27
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #20
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i161
  %i.bz = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !28 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !27
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.1: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i159.1
  %i.cf = load ptr, ptr %19, align 8, !tbaa !28   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i161.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i161.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.1
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !27
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #20
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164.1

_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i160.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i161.1
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  %i.ck = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.ck, ptr %24, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 29, ptr %i.a, align 8, !tbaa !57
  %i.cl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.i unwind label %bb.m       ; 2 uses

bb.i:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164.1
  store ptr %i.cl, ptr %24, align 8, !tbaa !28
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.cl, ptr noundef nonnull align 1 dereferenceable(29) @.str.31, i64 29, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !26
  %i.co = load ptr, ptr %24, align 8, !tbaa !28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i8 0, ptr %i.cp, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZN5vcpkg23parse_dependencies_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10StringViewENS_10TextRowColE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr nonnull @.str.11, i64 6, i64 0)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cq = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ck
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.j
  %i.cs = load i64, ptr %i.ck, align 8, !tbaa !27
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store ptr @.str.12, ptr %26, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 7, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store ptr @.str, ptr %27, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 34, ptr %i.cv, align 8, !tbaa !31
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull @.str.32) #19
  %i.cw = load ptr, ptr %28, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %25, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr %i.cw, i64 %i.cy, i32 noundef 1)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.cz = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !34, !range !35, !noalias !211, !noundef !36
  %i.db = xor i8 %i.da, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.dc, align 8, !tbaa !38, !alias.scope !211
  %i.dd = getelementptr inbounds nuw i8, ptr %10, i64 9
  store i8 %i.db, ptr %i.dd, align 1, !tbaa !39, !alias.scope !211
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIRKN5vcpkg9ExpectedTISt6vectorINS1_10DependencyESaIS4_EENS1_15LocalizedStringEEEEE, i64 16), ptr %10, align 8, !tbaa !41, !alias.scope !211
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %23, ptr %i.de, align 8, !tbaa !43, !alias.scope !211
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %25, ptr noundef nonnull align 8 dereferenceable(10) %10)
          to label %bb.l unwind label %.body172

.body172:                                         ; preds = %bb.k
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  %i.dh = call ptr @__cxa_begin_catch(ptr %i.dg) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %bb.p unwind label %bb.ac

bb.l:                                             ; preds = %bb.k
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.q

.body:                                            ; preds = %bb.b, %bb.c
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !28 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %.body
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !27
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  %i.do = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !27
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174.1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ij

.loopexit342.loopexit348:                         ; preds = %bb.e
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit342.a

.loopexit342.loopexit:                            ; preds = %bb.f
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.dv = getelementptr inbounds nuw i8, ptr %14, i64 64
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dv) #19
  br label %.loopexit342.a

.loopexit342.a:                                   ; preds = %.loopexit342.loopexit, %.loopexit342.loopexit348
  %.pn83.ph = phi { ptr, i32 } [ %i.dt, %.loopexit342.loopexit348 ], [ %i.du, %.loopexit342.loopexit ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #19
  br label %.loopexit340.loopexit347.a

.loopexit340.loopexit347.a:                       ; preds = %.loopexit342.a, %.thread
  %.pn83 = phi { ptr, i32 } [ %i.ak, %.thread ], [ %.pn83.ph, %.loopexit342.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ii

.loopexit340.loopexit347:                         ; preds = %bb.g
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit340.sink.split

.loopexit340.loopexit:                            ; preds = %bb.h
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 64
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.dx) #19
  br label %.loopexit340.sink.split

.loopexit340.sink.split:                          ; preds = %.loopexit340.loopexit, %.loopexit340.loopexit347
  %.pn85.ph = phi { ptr, i32 } [ %89, %.loopexit340.loopexit347 ], [ %i.dw, %.loopexit340.loopexit ]
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #19
  br label %.loopexit340

.loopexit340:                                     ; preds = %.loopexit340.sink.split, %.thread332
  %.pn85 = phi { ptr, i32 } [ %i.bk, %.thread332 ], [ %.pn85.ph, %.loopexit340.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ih

bb.m:                                             ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit164.1
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.n:                                             ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ck
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.n
  %i.ec = load i64, ptr %i.ck, align 8, !tbaa !27
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.m
  %.pn87 = phi { ptr, i32 } [ %i.dy, %bb.m ], [ %i.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.dz, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %bb.ig

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %bb.af

bb.p:                                             ; preds = %.body172
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p, %bb.l
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %bb.r unwind label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.ef = getelementptr inbounds nuw i8, ptr %25, i64 58
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !50, !range !35, !noundef !36
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %25, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !51, !nonnull !36, !align !52 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 112
  %i.em = load ptr, ptr %i.el, align 8
  invoke void %i.em(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #21
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store ptr @.str, ptr %31, align 8, !tbaa !30
  %i.ep = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 36, ptr %i.ep, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.eq = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.eq, ptr %32, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.eq, ptr noundef nonnull align 1 dereferenceable(11) @.str.33, i64 11, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 11, ptr %i.er, align 8, !tbaa !26
  %i.es = getelementptr inbounds nuw i8, ptr %32, i64 27
  store i8 0, ptr %i.es, align 1, !tbaa !27
  invoke void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %30, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.v unwind label %bb.ag

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160) %29, ptr noundef nonnull align 8 dereferenceable(80) %30)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.et = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !28 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %30, i64 48 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i187: ; preds = %bb.w
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !27
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i188: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i187
  %i.ez = load ptr, ptr %30, align 8, !tbaa !28   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZN5Catch11SectionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i188
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !27
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #20
  br label %_ZN5Catch11SectionInfoD2Ev.exit

_ZN5Catch11SectionInfoD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i189
  %i.fe = load ptr, ptr %32, align 8, !tbaa !28   ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.eq
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit
  %i.fg = load i64, ptr %i.eq, align 8, !tbaa !27
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  %i.fi = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(160) %29)
          to label %bb.x unwind label %bb.aj

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  br i1 %i.fi, label %bb.y, label %bb.dx

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %.sroa.04.0.copyload = load ptr, ptr @_ZN5vcpkg4Test11X64_WINDOWSE, align 8, !tbaa !87
  %.sroa.03.0.copyload = load ptr, ptr @_ZN5vcpkg4Test11X86_WINDOWSE, align 8, !tbaa !87
  invoke void @_ZN5vcpkg19filter_dependenciesERKSt6vectorINS_10DependencyESaIS1_EENS_7TripletES6_RKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_St4hashISD_ESt8equal_toISD_ESaISt4pairIKSD_SD_EEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.53") align 8 %33, ptr noundef nonnull align 8 dereferenceable(24) %23, ptr %.sroa.04.0.copyload, ptr %.sroa.03.0.copyload, ptr noundef nonnull align 8 dereferenceable(56) %13)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  store ptr @.str.12, ptr %35, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 7, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  store ptr @.str, ptr %36, align 8, !tbaa !30
  %i.fk = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 39, ptr %i.fk, align 8, !tbaa !31
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull @.str.34) #19
  %i.fl = load ptr, ptr %37, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.fn = load i64, ptr %i.fm, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %34, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr %i.fl, i64 %i.fn, i32 noundef 1)
          to label %bb.aa unwind label %bb.al

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.fo = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !90
  %i.fq = load ptr, ptr %33, align 8, !tbaa !91
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 2 uses
  %i.fu = ashr exact i64 %i.ft, 6
  store i64 %i.fu, ptr %i.b, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 2, ptr %i.c, align 4, !tbaa !58
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.fv = icmp eq i64 %i.ft, 128
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.24) #19, !noalias !212
  %i.fw = load ptr, ptr %9, align 8, !noalias !212
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !noalias !212
  %i.fz = zext i1 %i.fv to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i8 1, ptr %i.ga, align 8, !tbaa !38, !alias.scope !212
  %i.gb = getelementptr inbounds nuw i8, ptr %38, i64 9
  store i8 %i.fz, ptr %i.gb, align 1, !tbaa !39, !alias.scope !212
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKmRKiEE, i64 16), ptr %38, align 8, !tbaa !41, !alias.scope !212
  %i.gc = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.b, ptr %i.gc, align 8, !tbaa !60, !alias.scope !212
  %i.gd = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %i.fw, ptr %i.gd, align 8, !tbaa !61, !alias.scope !212
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i64 %i.fy, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !57, !alias.scope !212
  %i.ge = getelementptr inbounds nuw i8, ptr %38, i64 40
  store ptr %i.c, ptr %i.ge, align 8, !tbaa !63, !alias.scope !212
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %34, ptr noundef nonnull align 8 dereferenceable(10) %38)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
end_hunk_0
begin_hunk_1_@_ZL19C_A_T_C_H_T_E_S_T_2v:bb.a

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.hz
  %i.zv = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.zn, %bb.hz ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.zv, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit, label %bb.ia

bb.ia:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.zw = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !81
  %i.zy = ptrtoint ptr %i.zx to i64
  %i.zz = ptrtoint ptr %i.zv to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  call void @_ZdlPvm(ptr noundef nonnull %i.zv, i64 noundef %i.aaa) #20
  br label %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  %i.aab = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !75 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.aac, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i289

.lr.ph.i.i.i289:                                  ; preds = %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.aad, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.aac, %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit ] ; 6 uses
  %i.aad = load ptr, ptr %.06.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.aaf = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !28 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.aai = icmp eq ptr %i.aag, %i.aah
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i289
  %i.aaj = load i64, ptr %i.aah, align 8, !tbaa !27
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aag, i64 noundef %i.aak) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aal = load ptr, ptr %i.aae, align 8, !tbaa !28 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.aan = icmp eq ptr %i.aal, %i.aam
  br i1 %i.aan, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aao = load i64, ptr %i.aam, align 8, !tbaa !27
  %i.aap = add i64 %i.aao, 1
  call void @_ZdlPvm(ptr noundef %i.aal, i64 noundef %i.aap) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #20
  %.not.i.i.i290 = icmp eq ptr %i.aad, null
  br i1 %.not.i.i.i290, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i289, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev.exit
  %i.aaq = load ptr, ptr %18, align 8, !tbaa !78
  %i.aar = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !79
  %i.aat = shl i64 %i.aas, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aaq, i8 0, i64 %i.aat, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aab, i8 0, i64 16, i1 false)
  %i.aau = load ptr, ptr %18, align 8, !tbaa !78  ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.aaw = icmp eq ptr %i.aau, %i.aav
  br i1 %i.aaw, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.ib

bb.ib:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.aax = load i64, ptr %i.aar, align 8, !tbaa !79
  %i.aay = shl i64 %i.aax, 3
  call void @_ZdlPvm(ptr noundef %i.aau, i64 noundef %i.aay) #20
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.aaz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !75 ; 2 uses
  %.not5.i.i.i291 = icmp eq ptr %i.aba, null
  br i1 %.not5.i.i.i291, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i299, label %.lr.ph.i.i.i292

.lr.ph.i.i.i292:                                  ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i297
  %.06.i.i.i293 = phi ptr [ %i.abb, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i297 ], [ %i.aba, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit ] ; 6 uses
  %i.abb = load ptr, ptr %.06.i.i.i293, align 8, !tbaa !76 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.06.i.i.i293, i64 8
  %i.abd = getelementptr inbounds nuw i8, ptr %.06.i.i.i293, i64 40
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !28 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.06.i.i.i293, i64 56 ; 2 uses
  %i.abg = icmp eq ptr %i.abe, %i.abf
  br i1 %i.abg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i294: ; preds = %.lr.ph.i.i.i292
  %i.abh = load i64, ptr %i.abf, align 8, !tbaa !27
  %i.abi = add i64 %i.abh, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i295: ; preds = %.lr.ph.i.i.i292, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i294
  %i.abj = load ptr, ptr %i.abc, align 8, !tbaa !28 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.06.i.i.i293, i64 24 ; 2 uses
  %i.abl = icmp eq ptr %i.abj, %i.abk
  br i1 %i.abl, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i295
  %i.abm = load i64, ptr %i.abk, align 8, !tbaa !27
  %i.abn = add i64 %i.abm, 1
  call void @_ZdlPvm(ptr noundef %i.abj, i64 noundef %i.abn) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i297

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i296
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i293, i64 noundef 80) #20
  %.not.i.i.i298 = icmp eq ptr %i.abb, null
  br i1 %.not.i.i.i298, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i299, label %.lr.ph.i.i.i292, !llvm.loop !0

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i299: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i297, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  %i.abo = load ptr, ptr %13, align 8, !tbaa !78
  %i.abp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !79
  %i.abr = shl i64 %i.abq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abo, i8 0, i64 %i.abr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aaz, i8 0, i64 16, i1 false)
  %i.abs = load ptr, ptr %13, align 8, !tbaa !78  ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit302, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i299
  %i.abv = load i64, ptr %i.abp, align 8, !tbaa !79
  %i.abw = shl i64 %i.abv, 3
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #20
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit302

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit302: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i299, %bb.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.abx = load ptr, ptr %11, align 8, !tbaa !83  ; 3 uses
  %i.aby = load ptr, ptr %i.y, align 8, !tbaa !85 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.abx, %i.aby
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit302, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ace, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.abx, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit302 ] ; 3 uses
  %i.abz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !28 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.acb = icmp eq ptr %i.abz, %i.aca
  br i1 %i.acb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.acc = load i64, ptr %i.aca, align 8, !tbaa !27
  %i.acd = add i64 %i.acc, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acd) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ace, %i.aby
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !83
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit302
  %i.acf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.abx, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit302 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.acf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.id

bb.id:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.acg = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.ach = ptrtoint ptr %i.acg to i64
  %i.aci = ptrtoint ptr %i.acf to i64
  %i.acj = sub i64 %i.ach, %i.aci
  call void @_ZdlPvm(ptr noundef nonnull %i.acf, i64 noundef %i.acj) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  ret void

bb.ie:                                            ; preds = %bb.hw, %bb.ej
  %.pn139.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn, %bb.hw ], [ %i.qx, %bb.ej ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %59) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  br label %bb.if

bb.if:                                            ; preds = %bb.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.ie, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %bb.af
  %.pn139.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn89.pn, %bb.af ], [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.pn112.pn.pn.pn.pn, %bb.ef ], [ %.pn139.pn.pn.pn.pn, %bb.ie ], [ %.pn119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ]
  call void @_ZN5vcpkg9ExpectedTISt6vectorINS_10DependencyESaIS2_EENS_15LocalizedStringEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %23) #19
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182
  %.pn139.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn.pn.pn.pn.pn, %bb.if ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %18) #19
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %.loopexit340
  %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ig ], [ %.pn85, %.loopexit340 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #19
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %.loopexit340.loopexit347.a
  %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ih ], [ %.pn83, %.loopexit340.loopexit347.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #19
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1
  %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ii ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  resume { ptr, i32 } %.pn139.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.ik:                                            ; preds = %bb.hr, %bb.he, %bb.gl, %bb.fr, %bb.ey, %bb.dr, %bb.de, %bb.cl, %bb.br, %bb.ay, %bb.ac
  %i.ack = landingpad { ptr, i32 }
          catch ptr null
  %i.acl = extractvalue { ptr, i32 } %i.ack, 0
  call void @__clang_call_terminate(ptr %i.acl) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_6v() #1 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %0 = alloca %"class.Catch::UnaryExpr.29", align 8 ; 10 uses
  %1 = alloca %"class.Catch::UnaryExpr.29", align 8 ; 10 uses
  %2 = alloca %"class.Catch::UnaryExpr.29", align 8 ; 10 uses
  %3 = alloca %"class.Catch::UnaryExpr.29", align 8 ; 10 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %5 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %6 = alloca %"class.Catch::UnaryExpr.29", align 8 ; 10 uses
  %7 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %10 = alloca %"class.Catch::UnaryExpr", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 15 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %15 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %16 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %17 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %19 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %20 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %21 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %23 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %24 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %25 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %26 = alloca %"class.Catch::BinaryExpr.60", align 8 ; 13 uses
  %27 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %28 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %29 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %30 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %31 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %33 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %34 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %35 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %36 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %37 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %38 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %39 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %40 = alloca %"class.Catch::BinaryExpr.60", align 8 ; 13 uses
  %41 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %42 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %43 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %44 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %45 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %46 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %47 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %48 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %49 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %50 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %51 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %52 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %53 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %54 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %55 = alloca [1 x %"struct.std::pair"], align 8 ; 11 uses
  %56 = alloca %"struct.std::hash", align 1       ; 4 uses
  %57 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %58 = alloca %"class.std::allocator.25", align 1 ; 4 uses
  %59 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %60 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %61 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %62 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %63 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %64 = alloca [1 x %"struct.std::pair"], align 8 ; 11 uses
  %65 = alloca %"struct.std::hash", align 1       ; 4 uses
  %66 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %67 = alloca %"class.std::allocator.25", align 1 ; 4 uses
  %68 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %69 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %70 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %71 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %72 = alloca %"class.std::unordered_map", align 8 ; 11 uses
  %73 = alloca [1 x %"struct.std::pair"], align 8 ; 11 uses
  %74 = alloca %"struct.std::hash", align 1       ; 4 uses
  %75 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %76 = alloca %"class.std::allocator.25", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.h, ptr %12, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 113, ptr %i.a, align 8, !tbaa !57
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.a unwind label %bb.e       ; 3 uses

bb.a:                                             ; preds = %.noexc.i
  store ptr %i.i, ptr %12, align 8, !tbaa !28
  %i.j = load i64, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(113) %i.i, ptr noundef nonnull align 1 dereferenceable(113) @.str.51, i64 113, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZN5vcpkg23parse_dependencies_listERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10StringViewENS_10TextRowColE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr nonnull @.str.11, i64 6, i64 0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %12, align 8, !tbaa !28    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.h, align 8, !tbaa !27
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr @.str.12, ptr %14, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 7, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr @.str, ptr %15, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 62, ptr %i.r, align 8, !tbaa !31
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str.52) #19
  %i.s = load ptr, ptr %16, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.u = load i64, ptr %i.t, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr %i.s, i64 %i.u, i32 noundef 1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !34, !range !35, !noalias !244, !noundef !36
  %i.x = xor i8 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 0, ptr %i.y, align 8, !tbaa !38, !alias.scope !244
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 9
  store i8 %i.x, ptr %i.z, align 1, !tbaa !39, !alias.scope !244
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIRKN5vcpkg9ExpectedTISt6vectorINS1_10DependencyESaIS4_EENS1_15LocalizedStringEEEEE, i64 16), ptr %10, align 8, !tbaa !41, !alias.scope !244
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %11, ptr %i.aa, align 8, !tbaa !43, !alias.scope !244
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(10) %10)
          to label %bb.d unwind label %.body

.body:                                            ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = call ptr @__cxa_begin_catch(ptr %i.ac) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %13)
          to label %bb.h unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.i

bb.e:                                             ; preds = %.noexc.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.f:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.h
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

end_hunk_1
