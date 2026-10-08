Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parser?download=true
inline.NumInlined: 5493
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@"_ZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEE":bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 40
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

._crit_edge380:                                   ; preds = %bb.bo, %bb.a
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc unwind label %.loopexit.split-lp228

.noexc:                                           ; preds = %._crit_edge380
  unreachable

bb.b:                                             ; preds = %.lr.ph379, %bb.bo
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !111, !noalias !689
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.c unwind label %.loopexit227, !inline_history !1

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit, label %.loopexit232

.loopexit227:                                     ; preds = %bb.b
  %lpad.loopexit229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.loopexit.split-lp228:                            ; preds = %._crit_edge380
  %lpad.loopexit.split-lp230 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit:        ; preds = %bb.c
  %.sroa.020.0.copyload = load i64, ptr %7, align 8, !tbaa !48 ; 2 uses
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !61 ; 2 uses
  %i.z = icmp ugt i64 %.sroa.020.0.copyload, 1
  br i1 %i.z, label %bb.d, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit

bb.d:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit
  %i.aa = load i8, ptr %.sroa.221.0.copyload, align 1, !tbaa !44
  %i.ab = icmp eq i8 %i.aa, 34
  br i1 %i.ab, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit

_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.221.0.copyload, i64 %.sroa.020.0.copyload
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !44
  %i.af = icmp eq i8 %i.ae, 34
  br i1 %i.af, label %bb.g, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit

_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit:        ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit, %bb.d, %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !86, !range !112, !noundef !113
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %"_ZZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EEENK3$_5clENS_5TokenE.exit"

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit
  invoke void @_ZN4pbrt8LogFatalIJRA24_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 659, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(24) @.str.312) #34
          to label %.noexc73 unwind label %bb.f

.noexc73:                                         ; preds = %bb.e
  unreachable

"_ZZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EEENK3$_5clENS_5TokenE.exit": ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false)
  store i8 1, ptr %i.ag, align 8, !tbaa !86
  br label %.loopexit232

bb.f:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.g:                                             ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  %i.ak = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #38
          to label %bb.h unwind label %bb.r       ; 20 uses

bb.h:                                             ; preds = %bb.g
  %i.al = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.305, i32 noundef 235, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(4) @.str.306) #34
          to label %.noexc74 unwind label %bb.s

.noexc74:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store i64 0, ptr %i.ap, align 8, !tbaa !43
  store i8 0, ptr %i.ao, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 0, ptr %i.as, align 8, !tbaa !43
  store i8 0, ptr %i.ar, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.au = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.av = ptrtoint ptr %i.au to i64
  store i64 %i.av, ptr %i.at, align 8, !tbaa !160
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.ay = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.az = ptrtoint ptr %i.ay to i64
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !160
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 152
  %i.bc = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.bd = ptrtoint ptr %i.bc to i64
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !160
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 184
  %i.bg = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.bh = ptrtoint ptr %i.bg to i64
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !160
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 224
  store ptr null, ptr %i.bj, align 8, !tbaa !691
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 232
  store i8 0, ptr %i.bk, align 8, !tbaa !692
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bi, i8 0, i64 25, i1 false)
  store ptr %i.ak, ptr %i.d, align 8, !tbaa !164
  %i.bl = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.305, i32 noundef 235, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(4) @.str.306) #34
          to label %.noexc76 unwind label %bb.t

.noexc76:                                         ; preds = %bb.k
  unreachable

_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77:      ; preds = %bb.j
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 8, !tbaa !48 ; 4 uses
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !61 ; 4 uses
  %i.bn = icmp ugt i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.bn, label %bb.l, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

bb.l:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77
  %i.bo = load i8, ptr %.sroa.22.0.copyload.i, align 1, !tbaa !44
  %i.bp = icmp eq i8 %i.bo, 34
  br i1 %i.bp, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 %.sroa.01.0.copyload.i
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !44
  %i.bt = icmp eq i8 %i.bs, 34
  br i1 %i.bt, label %bb.o, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %bb.l, %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  invoke fastcc void @_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %6, i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i)
          to label %.noexc78 unwind label %bb.t

.noexc78:                                         ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  invoke void @_ZN4pbrt9ErrorExitIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.302, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.noexc78
  unreachable

bb.n:                                             ; preds = %.noexc78
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !44
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %.body

bb.o:                                             ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 1 ; 5 uses
  %i.cb = add i64 %.sroa.01.0.copyload.i, -2      ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb ; 9 uses
  %.not1.i = icmp samesign eq i64 %i.cb, 0
  br i1 %.not1.i, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.critedge2.i
  %.02.i = phi ptr [ %i.ce, %.critedge2.i ], [ %i.ca, %bb.o ] ; 8 uses
  %i.cd = load i8, ptr %.02.i, align 1, !tbaa !44
  switch i8 %i.cd, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit" [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.02.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, %i.cc
  br i1 %.not.i, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80, label %.lr.ph.i, !llvm.loop !672

"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit": ; preds = %.lr.ph.i
  %i.cf = icmp eq ptr %.02.i, %i.cc
  br i1 %i.cf, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80, label %.lr.ph.preheader.i82

_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80:      ; preds = %bb.o, %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit", %.critedge2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80
  invoke void @_ZN4pbrt9ErrorExitIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.326, ptr noundef nonnull align 8 dereferenceable(32) %8) #34
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.g
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 240) #36
  br label %.body

bb.t:                                             ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, %bb.k
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.v:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !44
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.u
  %.pn59 = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ck, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %.body

.lr.ph.preheader.i82:                             ; preds = %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit"
  %i.cq = ptrtoaddr ptr %i.ca to i64
  %i.cr = ptrtoaddr ptr %.02.i to i64
  %i.cs = add i64 %i.cb, %i.cq                    ; 3 uses
  %i.ct = sub i64 %i.cs, %i.cr
  %scevgep.i83 = getelementptr i8, ptr %.02.i, i64 %i.ct
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.w, %.lr.ph.preheader.i82
  %.02.i85 = phi ptr [ %i.cv, %bb.w ], [ %.02.i, %.lr.ph.preheader.i82 ] ; 4 uses
  %i.cu = load i8, ptr %.02.i85, align 1, !tbaa !44
  switch i8 %i.cu, label %bb.w [
    i8 32, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit"
    i8 9, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit"
  ]

bb.w:                                             ; preds = %.lr.ph.i84
  %i.cv = getelementptr inbounds nuw i8, ptr %.02.i85, i64 1 ; 2 uses
  %.not.i87 = icmp eq ptr %i.cv, %i.cc
  br i1 %.not.i87, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit", label %.lr.ph.i84, !llvm.loop !673

"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit": ; preds = %.lr.ph.i84, %.lr.ph.i84, %bb.w
  %.0.lcssa.i86 = phi ptr [ %scevgep.i83, %bb.w ], [ %.02.i85, %.lr.ph.i84 ], [ %.02.i85, %.lr.ph.i84 ] ; 4 uses
  %i.cw = load i64, ptr %i.ap, align 8, !tbaa !43
  %i.cx = ptrtoint ptr %.0.lcssa.i86 to i64       ; 2 uses
  %i.cy = ptrtoint ptr %.02.i to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 noundef 0, i64 noundef %i.cw, ptr noundef nonnull %.02.i, i64 noundef %i.cz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit unwind label %bb.y ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit: ; preds = %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit"
  br i1 %3, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit97

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !164 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !43 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 5
  br i1 %i.de, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.x
  %i.df = load ptr, ptr %i.db, align 8, !tbaa !45 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 1
  %i.dh = xor i32 %i.dg, 1852403568
  %i.di = getelementptr i8, ptr %i.df, i64 4
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = zext i8 %i.dj to i32
  %i.dl = xor i32 %i.dk, 116
  %i.dm = or i32 %i.dh, %i.dl
  %i.dn = icmp ne i32 %i.dm, 0
  %i.do = zext i1 %i.dn to i32
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.dq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 noundef 0, i64 noundef 5, ptr noundef nonnull @.str.328, i64 noundef 6)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge unwind label %bb.y ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre477 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit"
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge, %bb.x
  %i.ds = phi i64 [ %.pre477, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.dd, %bb.x ] ; 2 uses
  %i.dt = phi ptr [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit_crit_edge ], [ %i.db, %bb.x ] ; 3 uses
  %i.du = icmp eq i64 %i.ds, 6
  br i1 %i.du, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !45 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 1
  %i.dx = xor i32 %i.dw, 1952671094
  %i.dy = getelementptr i8, ptr %i.dv, i64 4
  %i.dz = load i16, ptr %i.dy, align 1
  %i.ea = zext i16 %i.dz to i32
  %i.eb = xor i32 %i.ea, 29295
  %i.ec = or i32 %i.dx, %i.eb
  %i.ed = icmp ne i32 %i.ec, 0
  %i.ee = zext i1 %i.ed to i32
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91
  %i.eg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i64 noundef 0, i64 noundef 6, ptr noundef nonnull @.str.330, i64 noundef 7)
          to label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93_crit_edge unwind label %bb.y ; 0 uses

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93_crit_edge: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread
  %.pre478 = load ptr, ptr %i.d, align 8, !tbaa !164 ; 2 uses
  %.phi.trans.insert479 = getelementptr inbounds nuw i8, ptr %.pre478, i64 8
  %.pre480 = load i64, ptr %.phi.trans.insert479, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93_crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.eh = phi i64 [ %.pre480, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93_crit_edge ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.ei = phi ptr [ %.pre478, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91.thread._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93_crit_edge ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.ej = icmp eq i64 %i.eh, 5
  br i1 %i.ej, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93
  %i.ek = phi ptr [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93 ], [ %i.db, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !45 ; 2 uses
  %i.em = load i32, ptr %i.el, align 1
  %i.en = xor i32 %i.em, 1869377379
  %i.eo = getelementptr i8, ptr %i.el, i64 4
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i32
  %i.er = xor i32 %i.eq, 114
  %i.es = or i32 %i.en, %i.er
  %i.et = icmp ne i32 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit97

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %i.ew = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i64 noundef 0, i64 noundef 5, ptr noundef nonnull @.str.161, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit97 unwind label %bb.y ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit97: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignIPKcvEERS4_T_S9_.exit
  %.not1.i98 = icmp eq ptr %.0.lcssa.i86, %i.cc
  br i1 %.not1.i98, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106.thread", label %.lr.ph.preheader.i99

.lr.ph.preheader.i99:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit97
  %i.ex = sub i64 %i.cs, %i.cx
  %scevgep.i100 = getelementptr i8, ptr %.0.lcssa.i86, i64 %i.ex
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.critedge2.i103, %.lr.ph.preheader.i99
  %.02.i102 = phi ptr [ %i.ez, %.critedge2.i103 ], [ %.0.lcssa.i86, %.lr.ph.preheader.i99 ] ; 3 uses
  %i.ey = load i8, ptr %.02.i102, align 1, !tbaa !44
  switch i8 %i.ey, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106" [
    i8 32, label %.critedge2.i103
    i8 9, label %.critedge2.i103
  ]

.critedge2.i103:                                  ; preds = %.lr.ph.i101, %.lr.ph.i101
  %i.ez = getelementptr inbounds nuw i8, ptr %.02.i102, i64 1 ; 2 uses
  %.not.i104 = icmp eq ptr %i.ez, %i.cc
  br i1 %.not.i104, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106", label %.lr.ph.i101, !llvm.loop !672

"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106": ; preds = %.lr.ph.i101, %.critedge2.i103
  %.0.lcssa.i105 = phi ptr [ %scevgep.i100, %.critedge2.i103 ], [ %.02.i102, %.lr.ph.i101 ] ; 6 uses
  %i.fa = icmp eq ptr %.0.lcssa.i105, %i.cc
  br i1 %i.fa, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106.thread", label %.lr.ph.preheader.i113

"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106.thread": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit97, %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106"
  %i.fb = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit108, label %bb.z

bb.z:                                             ; preds = %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106.thread"
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.305, i32 noundef 235, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(4) @.str.306) #34
          to label %.noexc107 unwind label %bb.ac

.noexc107:                                        ; preds = %bb.z
  unreachable

_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit108:     ; preds = %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit108
  invoke void @_ZN4pbrt9ErrorExitIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.331, ptr noundef nonnull align 8 dereferenceable(32) %10) #34
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit108
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

bb.ae:                                            ; preds = %bb.aa
  %i.ff = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fg = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.ae
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !44
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109, %bb.ad
  %.pn55 = phi { ptr, i32 } [ %i.fe, %bb.ad ], [ %i.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109 ], [ %i.ff, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %.body

.lr.ph.preheader.i113:                            ; preds = %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106"
  %i.fl = ptrtoaddr ptr %.0.lcssa.i105 to i64
  %i.fm = sub i64 %i.cs, %i.fl
  %scevgep.i114 = getelementptr i8, ptr %.0.lcssa.i105, i64 %i.fm
  br label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %bb.af, %.lr.ph.preheader.i113
  %.02.i116 = phi ptr [ %i.fo, %bb.af ], [ %.0.lcssa.i105, %.lr.ph.preheader.i113 ] ; 4 uses
  %i.fn = load i8, ptr %.02.i116, align 1, !tbaa !44
  switch i8 %i.fn, label %bb.af [
    i8 32, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit119"
    i8 9, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit119"
  ]

bb.af:                                            ; preds = %.lr.ph.i115
  %i.fo = getelementptr inbounds nuw i8, ptr %.02.i116, i64 1 ; 2 uses
  %.not.i118 = icmp eq ptr %i.fo, %i.cc
  br i1 %.not.i118, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit119", label %.lr.ph.i115, !llvm.loop !673

"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E0_clESS_.exit119": ; preds = %.lr.ph.i115, %.lr.ph.i115, %bb.af
  %.0.lcssa.i117 = phi ptr [ %scevgep.i114, %bb.af ], [ %.02.i116, %.lr.ph.i115 ], [ %.02.i116, %.lr.ph.i115 ]
  %i.fp = load ptr, ptr %i.d, align 8, !tbaa !164 ; 2 uses
end_hunk_0
