Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/parser?download=true
inline.NumInlined: 5493
inline.NumDeleted: 1043
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.amu, ptr noundef nonnull align 8 dereferenceable(48) %24, i64 16, i1 false), !tbaa.struct !137
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 16 ; 2 uses
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amu, i64 32 ; 3 uses
  store ptr %i.amw, ptr %i.amv, align 8, !tbaa !41
  %i.amx = load ptr, ptr %i.gs, align 8, !tbaa !45 ; 2 uses
  %i.amy = icmp eq ptr %i.amx, %i.gt
  br i1 %i.amy, label %bb.iq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.iq:                                            ; preds = %.noexc.i.i1055
  %i.amz = load i64, ptr %i.gu, align 8, !tbaa !43 ; 3 uses
  %i.ana = icmp ult i64 %i.amz, 16
  call void @llvm.assume(i1 %i.ana)
  %i.anb = add nuw nsw i64 %i.amz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.amw, ptr noundef nonnull align 8 dereferenceable(1) %i.gt, i64 %i.anb, i1 false)
  br label %_ZN4pbrt8AsyncJobIiEC2ESt8functionIFivEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i1055
  store ptr %i.amx, ptr %i.amv, align 8, !tbaa !45
  %i.anc = load i64, ptr %i.gt, align 8, !tbaa !44
  store i64 %i.anc, ptr %i.amw, align 8, !tbaa !44
  %.pre.i.i.i.i = load i64, ptr %i.gu, align 8, !tbaa !43
  br label %_ZN4pbrt8AsyncJobIiEC2ESt8functionIFivEE.exit.i

_ZN4pbrt8AsyncJobIiEC2ESt8functionIFivEE.exit.i:  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.iq
  %i.and = phi i64 [ %i.amz, %bb.iq ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ]
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amu, i64 24
  store i64 %i.and, ptr %i.ane, align 8, !tbaa !43
  store ptr %i.gt, ptr %i.gs, align 8, !tbaa !45
  store i64 0, ptr %i.gu, align 8, !tbaa !43
  store i8 0, ptr %i.gt, align 8, !tbaa !44
  store ptr %i.amu, ptr %25, align 8, !tbaa !139
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amt, i64 8
  store i32 0, ptr %i.anf, align 8, !tbaa !592
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amt, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ang, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pbrt8AsyncJobIiEE, i64 16), ptr %i.amt, align 8, !tbaa !30
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amt, i64 40
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amt, i64 64
  store ptr @"_ZNSt17_Function_handlerIFivESt5_BindIFZN4pbrt5parseEPNS2_12ParserTargetESt10unique_ptrINS2_9TokenizerESt14default_deleteIS6_EEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9_M_invokeERKSt9_Any_data", ptr %i.ani, align 8, !tbaa !143
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amt, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anh, ptr noundef nonnull align 8 dereferenceable(32) %25, i64 16, i1 false), !tbaa.struct !73
  store ptr @"_ZNSt17_Function_handlerIFivESt5_BindIFZN4pbrt5parseEPNS2_12ParserTargetESt10unique_ptrINS2_9TokenizerESt14default_deleteIS6_EEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation", ptr %i.anj, align 8, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false)
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amt, i64 72
  store i8 0, ptr %i.ank, align 8, !tbaa !150
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amt, i64 80
  store i8 0, ptr %i.anl, align 8, !tbaa !151
  %i.anm = getelementptr inbounds nuw i8, ptr %i.amt, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.anm, i8 0, i64 40, i1 false)
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amt, i64 128
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ann) #35, !inline_history !392
  %i.ano = load ptr, ptr %i.gv, align 8, !tbaa !67 ; 2 uses
  %.not.i.i1056 = icmp eq ptr %i.ano, null
  br i1 %.not.i.i1056, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.ir

bb.ir:                                            ; preds = %_ZN4pbrt8AsyncJobIiEC2ESt8functionIFivEE.exit.i
  %i.anp = invoke noundef zeroext i1 %i.ano(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.is, !inline_history !392 ; 0 uses

bb.is:                                            ; preds = %bb.ir
  %i.anq = landingpad { ptr, i32 }
          catch ptr null
  %i.anr = extractvalue { ptr, i32 } %i.anq, 0
  call void @__clang_call_terminate(ptr %i.anr) #37, !inline_history !392
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.ir, %_ZN4pbrt8AsyncJobIiEC2ESt8functionIFivEE.exit.i
  %i.ans = invoke noundef i32 @_ZN4pbrt14RunningThreadsEv()
          to label %bb.it unwind label %bb.iv, !inline_history !392

bb.it:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ant = icmp eq i32 %i.ans, 1
  br i1 %i.ant, label %bb.iu, label %bb.iw

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZN4pbrt8AsyncJobIiE6DoWorkEv(ptr noundef nonnull align 8 dereferenceable(176) %i.amt)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit16.i unwind label %bb.iv, !inline_history !392

.body.i:                                          ; preds = %bb.ip
  %i.anu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.amt, i64 noundef 176) #36, !inline_history !392
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i

bb.iv:                                            ; preds = %bb.iu, %_ZNSt14_Function_baseD2Ev.exit.i, %"_ZSt4bindIRZN4pbrt5parseEPNS0_12ParserTargetESt10unique_ptrINS0_9TokenizerESt14default_deleteIS4_EEE3$_3JRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESI_JDpT0_EE4typeEOSI_DpOSJ_.exit.i"
  %i.anv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i

bb.iw:                                            ; preds = %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #35
  %i.anw = load ptr, ptr @_ZN4pbrt11ParallelJob10threadPoolE, align 8, !tbaa !153
  invoke void @_ZN4pbrt10ThreadPool12AddToJobListEPNS_11ParallelJobE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_lock") align 8 %26, ptr noundef nonnull align 8 dereferenceable(128) %i.anw, ptr noundef nonnull %i.amt)
          to label %bb.iy unwind label %bb.ix, !inline_history !392

bb.ix:                                            ; preds = %bb.iw
  %i.anx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i

bb.iy:                                            ; preds = %bb.iw
  %i.any = load ptr, ptr %26, align 8, !tbaa !156 ; 2 uses
  %i.anz = load i8, ptr %i.gw, align 8, !tbaa !157, !range !112, !noundef !113
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #35
  %i.aoa = trunc nuw i8 %i.anz to i1
  %.not.i.i15.i = icmp ne ptr %i.any, null
  %or.cond.not.i = select i1 %i.aoa, i1 %.not.i.i15.i, i1 false
  br i1 %or.cond.not.i, label %bb.iz, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16.i

bb.iz:                                            ; preds = %bb.iy
  %i.aob = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.any) #35, !inline_history !392 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit16.i

_ZNSt11unique_lockISt5mutexED2Ev.exit16.i:        ; preds = %bb.iz, %bb.iy, %bb.iu
  %i.aoc = load ptr, ptr %i.gs, align 8, !tbaa !45 ; 2 uses
  %i.aod = icmp eq ptr %i.aoc, %i.gt
  br i1 %i.aod, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit16.i
  %i.aoe = load i64, ptr %i.gt, align 8, !tbaa !44
  %i.aof = add i64 %i.aoe, 1
  call void @_ZdlPvm(ptr noundef %i.aoc, i64 noundef %i.aof) #36, !inline_history !392
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit19.i:        ; preds = %bb.ix, %bb.iv, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.anx, %bb.ix ], [ %i.anu, %.body.i ], [ %i.anv, %bb.iv ]
  %i.aog = load ptr, ptr %i.gs, align 8, !tbaa !45 ; 2 uses
  %i.aoh = icmp eq ptr %i.aog, %i.gt
  br i1 %i.aoh, label %"_ZNSt5_BindIFZN4pbrt5parseEPNS0_12ParserTargetESt10unique_ptrINS0_9TokenizerESt14default_deleteIS4_EEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit22.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i
  %i.aoi = load i64, ptr %i.gt, align 8, !tbaa !44
  %i.aoj = add i64 %i.aoi, 1
  call void @_ZdlPvm(ptr noundef %i.aog, i64 noundef %i.aoj) #36, !inline_history !392
  br label %"_ZNSt5_BindIFZN4pbrt5parseEPNS0_12ParserTargetESt10unique_ptrINS0_9TokenizerESt14default_deleteIS4_EEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit22.i"

"_ZNSt5_BindIFZN4pbrt5parseEPNS0_12ParserTargetESt10unique_ptrINS0_9TokenizerESt14default_deleteIS4_EEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit22.i": ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  br label %.body1058

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  %.not.i.i1062 = icmp eq ptr %.sroa.9.04386, %.sroa.14.04379
  br i1 %.not.i.i1062, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  store ptr %i.amt, ptr %.sroa.9.04386, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9.04386, i64 8
  store ptr %i.aln, ptr %.sroa.6.0..sroa_idx, align 8
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.9.04386, i64 16
  br label %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE9push_backEOS7_.exit

bb.jb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.aol = ptrtoint ptr %.sroa.9.04386 to i64
  %i.aom = ptrtoint ptr %.sroa.02199.04387 to i64
  %i.aon = sub i64 %i.aol, %i.aom                 ; 4 uses
  %i.aoo = icmp eq i64 %i.aon, 9223372036854775792
  br i1 %i.aoo, label %bb.jc, label %_ZNKSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.321) #34
          to label %.noexc1063 unwind label %.loopexit.split-lp2402

.noexc1063:                                       ; preds = %bb.jc
  unreachable

_ZNKSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.jb
  %i.aop = ashr exact i64 %i.aon, 4               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aop, i64 1)
  %i.aoq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aop ; 2 uses
  %i.aor = icmp ult i64 %i.aoq, %i.aop
  %i.aos = call i64 @llvm.umin.i64(i64 %i.aoq, i64 576460752303423487)
  %i.aot = select i1 %i.aor, i64 576460752303423487, i64 %i.aos ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aot, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aou = shl nuw nsw i64 %i.aot, 4
  %i.aov = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aou) #38
          to label %.noexc1064 unwind label %.loopexit2401 ; 5 uses

.noexc1064:                                       ; preds = %_ZNKSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 %i.aon ; 2 uses
  store ptr %i.amt, ptr %i.aow, align 8
  %.sroa.6.0..sroa_idx2148 = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  store ptr %i.aln, ptr %.sroa.6.0..sroa_idx2148, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.02199.04387, %.sroa.9.04386
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc1064, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aoy, %.lr.ph.i.i.i.i.i.i ], [ %i.aov, %.noexc1064 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aox, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.02199.04387, %.noexc1064 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !593
  %i.aox = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aox, %.sroa.9.04386
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !397

_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc1064
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aov, %.noexc1064 ], [ %i.aoy, %.lr.ph.i.i.i.i.i.i ]
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %.sroa.02199.04387, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.jd

bb.jd:                                            ; preds = %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02199.04387, i64 noundef %i.aon) #36
  br label %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.jd, %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i
  %i.apa = getelementptr inbounds nuw [16 x i8], ptr %i.aov, i64 %i.aot
  br label %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE9push_backEOS7_.exit

.loopexit2401:                                    ; preds = %_ZNKSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1041, %bb.hv, %.noexc.i.i.i.i.i.i.i
  %.sroa.14.04379.lcssa4874 = phi ptr [ %.sroa.9.04386, %_ZNKSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.14.04379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1041 ], [ %.sroa.14.04379, %bb.hv ], [ %.sroa.14.04379, %.noexc.i.i.i.i.i.i.i ]
  %lpad.loopexit2403 = landingpad { ptr, i32 }
          cleanup
  br label %.body1058

.loopexit.split-lp2402:                           ; preds = %bb.jc, %bb.hj, %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1023, %.thread
  %.sroa.14.043794986 = phi ptr [ %.sroa.9.04386, %bb.jc ], [ %.sroa.14.04379, %bb.hj ], [ %.sroa.14.04379, %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1023 ], [ %.sroa.14.04379, %.thread ]
  %lpad.loopexit.split-lp2404 = landingpad { ptr, i32 }
          cleanup
  br label %.body1058

_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS1_EED2Ev.exit1054, %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, %bb.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017
  %.sroa.14.2 = phi ptr [ %.sroa.14.04379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017 ], [ %.sroa.14.04379, %_ZNSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS1_EED2Ev.exit1054 ], [ %i.apa, %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.14.04379, %bb.ja ]
  %.sroa.9.2 = phi ptr [ %.sroa.9.04386, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017 ], [ %.sroa.9.04386, %_ZNSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS1_EED2Ev.exit1054 ], [ %i.aoz, %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %i.aok, %bb.ja ]
  %.sroa.02199.2 = phi ptr [ %.sroa.02199.04387, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1017 ], [ %.sroa.02199.04387, %_ZNSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS1_EED2Ev.exit1054 ], [ %i.aov, %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i ], [ %.sroa.02199.04387, %bb.ja ]
  %i.apb = load ptr, ptr %83, align 8, !tbaa !45  ; 2 uses
  %i.apc = icmp eq ptr %i.apb, %i.gm
  br i1 %i.apc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065: ; preds = %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE9push_backEOS7_.exit
  %i.apd = load i64, ptr %i.gm, align 8, !tbaa !44
  %i.ape = add i64 %i.apd, 1
  call void @_ZdlPvm(ptr noundef %i.apb, i64 noundef %i.ape) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067: ; preds = %_ZNSt6vectorISt4pairIPN4pbrt8AsyncJobIiEEPNS1_17BasicSceneBuilderEESaIS7_EE9push_backEOS7_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1065
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #35
  br label %bb.xa

.body1058:                                        ; preds = %.loopexit2401, %.loopexit.split-lp2402, %_ZNSt14_Function_baseD2Ev.exit1051, %"_ZNSt5_BindIFZN4pbrt5parseEPNS0_12ParserTargetESt10unique_ptrINS0_9TokenizerESt14default_deleteIS4_EEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit22.i", %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020
  %.sroa.14.043794985 = phi ptr [ %.sroa.14.04379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020 ], [ %.sroa.14.04379, %"_ZNSt5_BindIFZN4pbrt5parseEPNS0_12ParserTargetESt10unique_ptrINS0_9TokenizerESt14default_deleteIS4_EEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit22.i" ], [ %.sroa.14.04379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049 ], [ %.sroa.14.04379, %_ZNSt14_Function_baseD2Ev.exit1051 ], [ %.sroa.14.04379.lcssa4874, %.loopexit2401 ], [ %.sroa.14.043794986, %.loopexit.split-lp2402 ] ; 2 uses
  %.pn424.pn = phi { ptr, i32 } [ %.pn424, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1020 ], [ %.pn.pn.i, %"_ZNSt5_BindIFZN4pbrt5parseEPNS0_12ParserTargetESt10unique_ptrINS0_9TokenizerESt14default_deleteIS4_EEE3$_3NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEED2Ev.exit22.i" ], [ %.pn414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049 ], [ %.pn418.pn, %_ZNSt14_Function_baseD2Ev.exit1051 ], [ %lpad.loopexit2403, %.loopexit2401 ], [ %lpad.loopexit.split-lp2404, %.loopexit.split-lp2402 ] ; 2 uses
  %i.apf = load ptr, ptr %83, align 8, !tbaa !45  ; 2 uses
  %i.apg = icmp eq ptr %i.apf, %i.gm
  br i1 %i.apg, label %.body992, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068: ; preds = %.body1058
  %i.aph = load i64, ptr %i.gm, align 8, !tbaa !44
  %i.api = add i64 %i.aph, 1
  call void @_ZdlPvm(ptr noundef %i.apf, i64 noundef %i.api) #36
  br label %.body992

.body992:                                         ; preds = %.body1058, %.loopexit.split-lp2397.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i986
  %.sroa.14.043794984 = phi ptr [ %.sroa.14.04379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i986 ], [ %.sroa.14.043794985, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068 ], [ %.sroa.14.04379, %.loopexit.split-lp2397.loopexit.split-lp ], [ %.sroa.14.043794985, %.body1058 ]
  %.pn424.pn.pn = phi { ptr, i32 } [ %i.aii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i986 ], [ %.pn424.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1068 ], [ %lpad.loopexit.split-lp9245, %.loopexit.split-lp2397.loopexit.split-lp ], [ %.pn424.pn, %.body1058 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #35
  br label %bb.je

bb.je:                                            ; preds = %.body992, %.loopexit.split-lp2392.loopexit.split-lp
  %.sroa.14.043794981 = phi ptr [ %.sroa.14.043794984, %.body992 ], [ %.sroa.14.04379, %.loopexit.split-lp2392.loopexit.split-lp ]
  %.pn424.pn.pn.pn = phi { ptr, i32 } [ %.pn424.pn.pn, %.body992 ], [ %lpad.loopexit.split-lp9242, %.loopexit.split-lp2392.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #35
  br label %.body590

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1074: ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit858
  %bcmp.i1075 = call i32 @bcmp(ptr nonnull %i.ka, ptr nonnull @.str.58, i64 %.sroa.0152.0.copyload)
  %i.apj = icmp eq i32 %bcmp.i1075, 0
  br i1 %i.apj, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit544.invoke, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868.thread

_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i869, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i859, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1074, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i969
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.apk = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.apk, ptr %23, align 8, !tbaa !41, !alias.scope !594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #35, !noalias !594
  store i64 %.sroa.0152.0.copyload, ptr %i.ao, align 8, !tbaa !48, !noalias !594
  br label %._crit_edge.i.i.i.i1088

_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868:     ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit858
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.apl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  store ptr %i.apl, ptr %23, align 8, !tbaa !41, !alias.scope !595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #35, !noalias !595
  store i64 %.sroa.0152.0.copyload, ptr %i.ao, align 8, !tbaa !48, !noalias !595
  %i.apm = icmp ugt i64 %.sroa.0152.0.copyload, 15
  br i1 %i.apm, label %.noexc.i.i.i1093, label %._crit_edge.i.i.i.i1088

.noexc.i.i.i1093:                                 ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868
  %i.apn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef 0)
          to label %.noexc1096 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1096:                                       ; preds = %.noexc.i.i.i1093
  store ptr %i.apn, ptr %23, align 8, !tbaa !45, !alias.scope !595
  %i.apo = load i64, ptr %i.ao, align 8, !tbaa !48, !noalias !595
  store i64 %i.apo, ptr %i.apl, align 8, !tbaa !44, !alias.scope !595
  br label %._crit_edge.i.i.i.i1088

._crit_edge.i.i.i.i1088:                          ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868.thread, %.noexc1096, %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868
  %i.app = phi ptr [ %i.apl, %.noexc1096 ], [ %i.apl, %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868 ], [ %i.apk, %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868.thread ] ; 2 uses
  %i.apq = phi ptr [ %i.apn, %.noexc1096 ], [ %i.apl, %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868 ], [ %i.apk, %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit868.thread ] ; 2 uses
  switch i64 %.sroa.0152.0.copyload, label %bb.jg [
    i64 1, label %bb.jf
    i64 0, label %_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i1089
  ]

bb.jf:                                            ; preds = %._crit_edge.i.i.i.i1088
  %i.apr = load i8, ptr %i.ka, align 1, !tbaa !44, !noalias !595
  store i8 %i.apr, ptr %i.apq, align 1, !tbaa !44
  br label %_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i1089

bb.jg:                                            ; preds = %._crit_edge.i.i.i.i1088
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.apq, ptr nonnull readonly align 1 %i.ka, i64 %.sroa.0152.0.copyload, i1 false)
  br label %_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i1089

_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i1089: ; preds = %bb.jg, %bb.jf, %._crit_edge.i.i.i.i1088
  %i.aps = load i64, ptr %i.ao, align 8, !tbaa !48, !noalias !595 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.aps, ptr %i.apt, align 8, !tbaa !43, !alias.scope !595
  %i.apu = load ptr, ptr %23, align 8, !tbaa !45, !alias.scope !595
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 %i.aps
  store i8 0, ptr %i.apv, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #35, !noalias !595
  invoke void @_ZN4pbrt9ErrorExitIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.eg, ptr noundef nonnull @.str.296, ptr noundef nonnull align 8 dereferenceable(32) %23) #34
          to label %bb.jh unwind label %bb.ji

bb.jh:                                            ; preds = %_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i1089
  unreachable

bb.ji:                                            ; preds = %_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit.i1089
  %i.apw = landingpad { ptr, i32 }
          cleanup
  %i.apx = load ptr, ptr %23, align 8, !tbaa !45  ; 2 uses
  %i.apy = icmp eq ptr %i.apx, %i.app
  br i1 %i.apy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1091, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1090

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1090: ; preds = %bb.ji
  %i.apz = load i64, ptr %i.app, align 8, !tbaa !44
  %i.aqa = add i64 %i.apz, 1
  call void @_ZdlPvm(ptr noundef %i.apx, i64 noundef %i.aqa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1091

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1091: ; preds = %bb.ji, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1090
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  br label %.body590

_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1102:    ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit
  %.sroa.0124.0.copyload = load i64, ptr %49, align 8, !tbaa !48 ; 6 uses
  switch i64 %.sroa.0124.0.copyload, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1112 [
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1103
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1113
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1103: ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1102
  %i.aqb = load i64, ptr %i.ka, align 1
  %i.aqc = xor i64 %i.aqb, 8462073984285370700
  %i.aqd = getelementptr i8, ptr %i.ka, i64 3
  %i.aqe = load i64, ptr %i.aqd, align 1
  %i.aqf = xor i64 %i.aqe, 7305808869229556840
  %i.aqg = or i64 %i.aqc, %i.aqf
  %i.aqh = icmp ne i64 %i.aqg, 0
  %i.aqi = zext i1 %i.aqh to i32
  %i.aqj = icmp eq i32 %i.aqi, 0
  br i1 %i.aqj, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1655.invoke, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1112.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1113: ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1102
  %i.aqk = load i32, ptr %i.ka, align 1
  %i.aql = xor i32 %i.aqk, 1802465100
  %i.aqm = getelementptr i8, ptr %i.ka, i64 4
  %i.aqn = load i16, ptr %i.aqm, align 1
  %i.aqo = zext i16 %i.aqn to i32
  %i.aqp = xor i32 %i.aqo, 29761
  %i.aqq = or i32 %i.aql, %i.aqp
  %i.aqr = icmp ne i32 %i.aqq, 0
  %i.aqs = zext i1 %i.aqr to i32
  %i.aqt = icmp eq i32 %i.aqs, 0
  br i1 %i.aqt, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1116, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit1112.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1116: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i1113
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store i32 1, ptr %i.an, align 4, !tbaa !47, !noalias !596
  %i.aqu = load ptr, ptr %i.dr, align 16, !tbaa !67, !noalias !596
  %.not.i.i1120 = icmp eq ptr %i.aqu, null
  br i1 %.not.i.i1120, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ki, %bb.kf, %bb.kc, %bb.jz, %bb.jw, %bb.jt, %bb.jq, %bb.jn, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1116
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc1121 unwind label %.loopexit.split-lp2235.loopexit.split-lp

.noexc1121:                                       ; preds = %bb.jj
  unreachable

bb.jk:                                            ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit1116
  %i.aqv = load ptr, ptr %i.ds, align 8, !tbaa !111, !noalias !596
  invoke void %i.aqv(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %92, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 4 dereferenceable(4) %i.an)
          to label %bb.jl unwind label %.loopexit.split-lp2235.loopexit.split-lp, !inline_history !1
end_hunk_0
begin_hunk_1_@_ZN4pbrt17BasicSceneBuilder13CopyForImportEv
declare noundef ptr @_ZN4pbrt17BasicSceneBuilder13CopyForImportEv(ptr noundef nonnull align 64 dereferenceable(3544)) local_unnamed_addr #1

declare noundef i32 @_ZN4pbrt14RunningThreadsEv() local_unnamed_addr #1

declare void @_ZN4pbrt17BasicSceneBuilder13MergeImportedEPS0_(ptr noundef nonnull align 64 dereferenceable(3544), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt22FormattingParserTarget14TransformBeginENS_7FileLocE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) %0, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.152)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129, !noalias !679
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !41, !alias.scope !679
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.c, i8 noundef signext 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !41, !alias.scope !680
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !43, !alias.scope !680
  store i8 0, ptr %i.e, align 8, !tbaa !44, !alias.scope !680
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.153, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %2, align 8, !tbaa !45, !alias.scope !680 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !44, !alias.scope !680
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #36
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %2, align 8, !tbaa !45
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !63
  %i.n = call i32 @fputs(ptr noundef %i.l, ptr noundef %i.m) ; 0 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.e
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.q = load i64, ptr %i.e, align 8, !tbaa !44
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.s = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.u = load i64, ptr %i.d, align 8, !tbaa !44
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.w = load i32, ptr %i.a, align 4, !tbaa !129
  %i.x = add nsw i32 %i.w, 4
  store i32 %i.x, ptr %i.a, align 4, !tbaa !129
  ret void

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !44
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.g
}

declare void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt22FormattingParserTarget12TransformEndENS_7FileLocE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) %0, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !129
  %i.c = add nsw i32 %i.b, -4
  store i32 %i.c, ptr %i.a, align 4, !tbaa !129
  call void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.154)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !129, !noalias !685
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !41, !alias.scope !685
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.e, i8 noundef signext 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !41, !alias.scope !686
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !43, !alias.scope !686
  store i8 0, ptr %i.g, align 8, !tbaa !44, !alias.scope !686
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.150, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %2, align 8, !tbaa !45, !alias.scope !686 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !44, !alias.scope !686
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #36
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !45
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !63
  %i.p = call i32 @fputs(ptr noundef %i.n, ptr noundef %i.o) ; 0 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.g
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.s = load i64, ptr %i.g, align 8, !tbaa !44
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #36
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.f
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.w = load i64, ptr %i.f, align 8, !tbaa !44
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret void

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.y = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !44
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEE"(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 16), (80, 96)) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %1, ptr nofree captures(none) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.pstd::optional", align 8    ; 12 uses
  %i.d = alloca ptr, align 8                      ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %12 = alloca %class.anon.165, align 8           ; 8 uses
  %13 = alloca %"struct.pbrt::Token", align 8     ; 10 uses
  %14 = alloca %"class.pstd::optional", align 8   ; 6 uses
  %15 = alloca %"class.pstd::optional", align 8   ; 6 uses
  %i.f = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.g = ptrtoint ptr %i.f to i64
  store i64 %i.g, ptr %0, align 8, !tbaa !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4, !tbaa !47, !noalias !706
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !706
  %.not.i.i363 = icmp eq ptr %i.k, null
  br i1 %.not.i.i363, label %._crit_edge366, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 4 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
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

._crit_edge366:                                   ; preds = %bb.ba, %bb.a
  invoke void @_ZSt25__throw_bad_function_callv() #34
          to label %.noexc unwind label %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge366
  unreachable

bb.b:                                             ; preds = %.lr.ph365, %bb.ba
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !111, !noalias !706
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.c unwind label %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit, label %.loopexit234

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
  br i1 %i.af, label %bb.f, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit

_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit:        ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit, %bb.d, %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !86, !range !112, !noundef !113
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.e, label %"_ZZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EEENK3$_5clENS_5TokenE.exit"

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit
  invoke void @_ZN4pbrt8LogFatalIJRA24_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 659, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(24) @.str.312) #34
          to label %.noexc73 unwind label %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.e
  unreachable

"_ZZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EEENK3$_5clENS_5TokenE.exit": ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false)
  store i8 1, ptr %i.ag, align 8, !tbaa !86
  br label %.loopexit234

.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %._crit_edge366, %bb.e
  %lpad.loopexit.split-lp705 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp231

bb.f:                                             ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  %i.aj = invoke noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #38
          to label %bb.g unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 20 uses

bb.g:                                             ; preds = %bb.f
  %i.ak = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.305, i32 noundef 235, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(4) @.str.306) #34
          to label %.noexc74 unwind label %bb.p

.noexc74:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !43
  store i8 0, ptr %i.an, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !43
  store i8 0, ptr %i.aq, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.at = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.au = ptrtoint ptr %i.at to i64
  store i64 %i.au, ptr %i.as, align 8, !tbaa !160
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.ax = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.ay = ptrtoint ptr %i.ax to i64
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !160
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  %i.bb = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.bc = ptrtoint ptr %i.bb to i64
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !160
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  %i.bf = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #35
  %i.bg = ptrtoint ptr %i.bf to i64
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !160
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 224
  store ptr null, ptr %i.bi, align 8, !tbaa !708
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 232
  store i8 0, ptr %i.bj, align 8, !tbaa !709
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bh, i8 0, i64 25, i1 false)
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !164
  %i.bk = load i8, ptr %i.m, align 8, !tbaa !86, !range !112, !noundef !113
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77, label %.invoke

.invoke:                                          ; preds = %bb.i, %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit106.thread"
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.305, i32 noundef 235, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(4) @.str.306) #34
          to label %.cont unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77:      ; preds = %bb.i
  %.sroa.01.0.copyload.i = load i64, ptr %7, align 8, !tbaa !48 ; 4 uses
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !61 ; 4 uses
  %i.bm = icmp ugt i64 %.sroa.01.0.copyload.i, 1
  br i1 %i.bm, label %bb.j, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

bb.j:                                             ; preds = %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77
  %i.bn = load i8, ptr %.sroa.22.0.copyload.i, align 1, !tbaa !44
  %i.bo = icmp eq i8 %i.bn, 34
  br i1 %i.bo, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 %.sroa.01.0.copyload.i
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !44
  %i.bs = icmp eq i8 %i.br, 34
  br i1 %i.bs, label %bb.m, label %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %bb.j, %_ZN4pstd8optionalIN4pbrt5TokenEEdeEv.exit77
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  invoke fastcc void @_ZN4pbrtL8toStringB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %6, i64 %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i)
          to label %.noexc78 unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc78:                                         ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  invoke void @_ZN4pbrt9ErrorExitIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.302, ptr noundef nonnull align 8 dereferenceable(32) %6) #34
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc78
  unreachable

bb.l:                                             ; preds = %.noexc78
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.l
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !44
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %.body

bb.m:                                             ; preds = %_ZN4pbrt14isQuotedStringESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.22.0.copyload.i, i64 1 ; 6 uses
  %i.ca = add i64 %.sroa.01.0.copyload.i, -2      ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 9 uses
  %.not1.i = icmp samesign eq i64 %i.ca, 0
  br i1 %.not1.i, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.critedge2.i
  %.02.i = phi ptr [ %i.cd, %.critedge2.i ], [ %i.bz, %bb.m ] ; 3 uses
  %i.cc = load i8, ptr %.02.i, align 1, !tbaa !44
  switch i8 %i.cc, label %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit" [
    i8 32, label %.critedge2.i
    i8 9, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.02.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.cd, %i.cb
  br i1 %.not.i, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80, label %.lr.ph.i, !llvm.loop !689

"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit": ; preds = %.lr.ph.i, %bb.m
  %.0.lcssa.i = phi ptr [ %i.bz, %bb.m ], [ %.02.i, %.lr.ph.i ] ; 6 uses
  %i.ce = icmp eq ptr %.0.lcssa.i, %i.cb
  br i1 %i.ce, label %_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80, label %.lr.ph.preheader.i82

_ZN4pstd8optionalIN4pbrt5TokenEEptEv.exit80:      ; preds = %"_ZZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEEENKUlSS_E_clESS_.exit", %.critedge2.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.n unwind label %bb.q
end_hunk_1
begin_hunk_2_@"_ZN4pbrtL15parseParametersISt8functionIFN4pstd8optionalINS_5TokenEEEiEEZNS_5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteISB_EEE3$_5EENS_13InlinedVectorIPNS_15ParsedParameterELi8ENS2_3pmr21polymorphic_allocatorISI_EEEET_T0_bRKS1_IFvRKS4_PKcEE":bb.a
  %.pre.pre.i = load i64, ptr %i.ie, align 8, !tbaa !58
  br label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i: ; preds = %.noexc150, %._crit_edge.i.i
  %.pre.i148 = phi i64 [ %.pre.pre.i, %.noexc150 ], [ %.pre3.i, %._crit_edge.i.i ]
  store i64 %spec.select.i, ptr %i.ic, align 8, !tbaa !57
  store ptr %i.in, ptr %i.iq, align 8, !tbaa !60
  br label %bb.ao

bb.an:                                            ; preds = %bb.an, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.an ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 %indvars.iv.i.i
  %i.iy = load ptr, ptr %i.ip, align 8, !tbaa !60
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %indvars.iv.i.i
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !44
  store i8 %i.ja, ptr %i.ix, align 1, !tbaa !44
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.jb = load i64, ptr %i.ie, align 8, !tbaa !58 ; 2 uses
  %i.jc = icmp ugt i64 %i.jb, %indvars.iv.next.i.i
  br i1 %i.jc, label %bb.an, label %._crit_edge.i.i, !llvm.loop !0

bb.ao:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i, %bb.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread
  %i.jd = phi i64 [ %.pre.i148, %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i ], [ %i.id, %bb.al ], [ %i.if, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146.thread ]
  %i.je = getelementptr inbounds nuw i8, ptr %.pre468, i64 192
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !60
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jd
  store i8 1, ptr %i.jg, align 1, !tbaa !44
  %i.jh = load i64, ptr %i.ie, align 8, !tbaa !58
  %i.ji = add i64 %i.jh, 1
  store i64 %i.ji, ptr %i.ie, align 8, !tbaa !58
  br label %bb.aw

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152: ; preds = %.lr.ph
  %i.jj = load ptr, ptr %.0362, align 8, !tbaa !45 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 1
  %i.jl = xor i32 %i.jk, 1936482662
  %i.jm = getelementptr i8, ptr %i.jj, i64 4
  %i.jn = load i8, ptr %i.jm, align 1
  %i.jo = zext i8 %i.jn to i32
  %i.jp = xor i32 %i.jo, 101
  %i.jq = or i32 %i.jl, %i.jp
  %i.jr = icmp ne i32 %i.jq, 0
  %i.js = zext i1 %i.jr to i32
  %i.jt = icmp eq i32 %i.js, 0
  %.pre469 = load ptr, ptr %i.d, align 8, !tbaa !164 ; 7 uses
  br i1 %i.jt, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152
  %i.ju = getelementptr inbounds nuw i8, ptr %.pre469, i64 184 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.pre469, i64 200 ; 3 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !57 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.pre469, i64 208 ; 6 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !58 ; 2 uses
  %i.jz = icmp eq i64 %i.jw, %i.jy
  br i1 %i.jz, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread
  %i.ka = icmp eq i64 %i.jw, 0
  %i.kb = shl i64 %i.jw, 1
  %spec.select.i153 = select i1 %i.ka, i64 4, i64 %i.kb ; 3 uses
  %.not.i.i154 = icmp ult i64 %i.jw, %spec.select.i153
  br i1 %.not.i.i154, label %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i155, label %bb.as

_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i155: ; preds = %bb.ap
  %i.kc = load ptr, ptr %i.ju, align 8, !tbaa !59 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !30
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = invoke noundef ptr %i.kf(ptr noundef nonnull align 8 dereferenceable(8) %i.kc, i64 noundef %spec.select.i153, i64 noundef 1)
          to label %.noexc166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !697 ; 2 uses

.noexc166:                                        ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i155
  %i.kh = load i64, ptr %i.jx, align 8, !tbaa !58
  %.not13.i.i156 = icmp eq i64 %i.kh, 0
  br i1 %.not13.i.i156, label %._crit_edge.i.i160, label %.lr.ph.i.i157

.lr.ph.i.i157:                                    ; preds = %.noexc166
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre469, i64 192
  br label %bb.ar

._crit_edge.i.i160:                               ; preds = %bb.ar, %.noexc166
  %.pre3.i161 = phi i64 [ 0, %.noexc166 ], [ %i.ku, %bb.ar ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.pre469, i64 192 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i.i.i162 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i.i.i162, label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i.i160
  %i.kl = load i64, ptr %i.jv, align 8, !tbaa !57
  %i.km = load ptr, ptr %i.ju, align 8, !tbaa !59 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !30
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load ptr, ptr %i.ko, align 8
  invoke void %i.kp(ptr noundef nonnull align 8 dereferenceable(8) %i.km, ptr noundef nonnull %i.kk, i64 noundef %i.kl, i64 noundef 1)
          to label %.noexc167 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !697

.noexc167:                                        ; preds = %bb.aq
  %.pre.pre.i163 = load i64, ptr %i.jx, align 8, !tbaa !58
  br label %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164

_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164: ; preds = %.noexc167, %._crit_edge.i.i160
  %.pre.i165 = phi i64 [ %.pre.pre.i163, %.noexc167 ], [ %.pre3.i161, %._crit_edge.i.i160 ]
  store i64 %spec.select.i153, ptr %i.jv, align 8, !tbaa !57
  store ptr %i.kg, ptr %i.kj, align 8, !tbaa !60
  br label %bb.as

bb.ar:                                            ; preds = %bb.ar, %.lr.ph.i.i157
  %indvars.iv.i.i158 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %indvars.iv.next.i.i159, %bb.ar ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kg, i64 %indvars.iv.i.i158
  %i.kr = load ptr, ptr %i.ki, align 8, !tbaa !60
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %indvars.iv.i.i158
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !44
  store i8 %i.kt, ptr %i.kq, align 1, !tbaa !44
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i158, 1 ; 2 uses
  %i.ku = load i64, ptr %i.jx, align 8, !tbaa !58 ; 2 uses
  %i.kv = icmp ugt i64 %i.ku, %indvars.iv.next.i.i159
  br i1 %i.kv, label %bb.ar, label %._crit_edge.i.i160, !llvm.loop !0

bb.as:                                            ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164, %bb.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread
  %i.kw = phi i64 [ %.pre.i165, %_ZN4pstd3pmr21polymorphic_allocatorIhE17deallocate_objectIhEEvPT_m.exit.i.i164 ], [ %i.jw, %bb.ap ], [ %i.jy, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.pre469, i64 192
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !60
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kw
  store i8 0, ptr %i.kz, align 1, !tbaa !44
  %i.la = load i64, ptr %i.jx, align 8, !tbaa !58
  %i.lb = add i64 %i.la, 1
  store i64 %i.lb, ptr %i.jx, align 8, !tbaa !58
  br label %bb.aw

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216: ; preds = %.lr.ph._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152
  %i.lc = phi ptr [ %.pre467, %.lr.ph._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216_crit_edge ], [ %.pre468, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit146 ], [ %.pre469, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %i.s, ptr %5, align 8, !tbaa !41, !alias.scope !713
  store i64 0, ptr %i.t, align 8, !tbaa !43, !alias.scope !713
  store i8 0, ptr %i.s, align 8, !tbaa !44, !alias.scope !713
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.334, ptr noundef nonnull align 8 dereferenceable(32) %.0362)
          to label %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i unwind label %bb.at

bb.at:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216
  %i.ld = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.le = load ptr, ptr %5, align 8, !tbaa !45, !alias.scope !713 ; 2 uses
  %i.lf = icmp eq ptr %i.le, %i.s
  br i1 %i.lf, label %.body174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169: ; preds = %bb.at
  %i.lg = load i64, ptr %i.s, align 8, !tbaa !44, !alias.scope !713
  %i.lh = add i64 %i.lg, 1
  call void @_ZdlPvm(ptr noundef %i.le, i64 noundef %i.lh) #36
  br label %.body174

_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit152.thread216
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  %i.lj = load ptr, ptr %5, align 8, !tbaa !45
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef nonnull %i.li, ptr noundef %i.lj)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.lk = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.s
  br i1 %i.ll, label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171: ; preds = %bb.au
  %i.lm = load i64, ptr %i.s, align 8, !tbaa !44
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #36
  br label %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit

bb.av:                                            ; preds = %_ZN4pbrt12StringPrintfIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_PKcDpOT_.exit.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  %i.lp = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.s
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.av
  %i.lr = load i64, ptr %i.s, align 8, !tbaa !44
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %.body174

_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.aw

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i155, %bb.aq, %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i, %bb.am, %bb.ah, %bb.az, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i, %bb.ai
  %lpad.loopexit.split-lp702 = landingpad { ptr, i32 }
          cleanup
  br label %.body174

bb.aw:                                            ; preds = %_ZN4pbrt5ErrorIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKNS_7FileLocEPKcDpOT_.exit, %bb.as, %bb.ao
  %i.lt = getelementptr inbounds nuw i8, ptr %.0362, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.lt, %i.hf
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214: ; preds = %bb.aj, %_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEE5clearEv.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit140
  %16 = load i64, ptr %i.u, align 8, !tbaa !161   ; 16 uses
  %17 = load ptr, ptr %i.h, align 8, !tbaa !162   ; 5 uses
  %.not.i.i176 = icmp eq ptr %17, null            ; 3 uses
  %i.lu = load i64, ptr %i.i, align 8             ; 2 uses
  %i.lv = select i1 %.not.i.i176, i64 8, i64 %i.lu
  %i.lw = icmp eq i64 %16, %i.lv
  br i1 %i.lw, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214
  %i.lx = shl nuw i64 %16, 1
  %.not.i3.i = icmp sgt i64 %16, 0
  br i1 %.not.i3.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ly = shl i64 %16, 4                          ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %iter.check, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i: ; preds = %bb.ay
  %i.ma = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !30
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = invoke noundef ptr %i.md(ptr noundef nonnull align 8 dereferenceable(8) %i.ma, i64 noundef %i.ly, i64 noundef 8)
          to label %iter.check unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !700

iter.check:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i, %bb.ay
  %.0.i.i.i.i14.i = phi ptr [ null, %bb.ay ], [ %i.me, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE15allocate_objectIS4_EEPT_m.exit.i.i ] ; 14 uses
  %i.mf = select i1 %.not.i.i176, ptr %i.v, ptr %17 ; 12 uses
  %min.iters.check = icmp ult i64 %16, 4
  %i.mg = ptrtoaddr ptr %i.mf to i64
  %.0.i.i.i.i14.i686 = ptrtoaddr ptr %.0.i.i.i.i14.i to i64
  %i.mh = sub i64 %i.mg, %.0.i.i.i.i14.i686
  %diff.check = icmp ugt i64 %i.mh, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check687 = icmp ult i64 %16, 16
  br i1 %min.iters.check687, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.mi = and i64 %16, 12
  %n.vec = and i64 %16, 9223372036854775792       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %index ; 4 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %index ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 96
  %wide.load = load <4 x ptr>, ptr %i.mk, align 8, !tbaa !164
  %wide.load688.a = load <4 x ptr>, ptr %i.ml, align 8, !tbaa !164
  %wide.load689 = load <4 x ptr>, ptr %i.mm, align 8, !tbaa !164
  %wide.load690 = load <4 x ptr>, ptr %i.mn, align 8, !tbaa !164
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 96
  store <4 x ptr> %wide.load, ptr %i.mj, align 8, !tbaa !164
  store <4 x ptr> %wide.load688.a, ptr %i.mo, align 8, !tbaa !164
  store <4 x ptr> %wide.load689, ptr %i.mp, align 8, !tbaa !164
  store <4 x ptr> %wide.load690, ptr %i.mq, align 8, !tbaa !164
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.mr = icmp eq i64 %index.next, %n.vec
  br i1 %i.mr, label %middle.block, label %vector.body, !llvm.loop !701

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %16, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i181, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.mi, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec691 = and i64 %16, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index692 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next694, %vec.epilog.vector.body ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %index692
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %index692
  %wide.load693 = load <4 x ptr>, ptr %i.mt, align 8, !tbaa !164
  store <4 x ptr> %wide.load693, ptr %i.ms, align 8, !tbaa !164
  %index.next694 = add nuw i64 %index692, 4       ; 2 uses
  %i.mu = icmp eq i64 %index.next694, %n.vec691
  br i1 %i.mu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !702

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n695 = icmp eq i64 %16, %n.vec691
  br i1 %cmp.n695, label %._crit_edge.i.i181, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i179.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec691, %vec.epilog.middle.block ] ; 4 uses
  %i.mv = sub nsw i64 %16, %indvars.iv.i.i179.ph
  %xtraiter = and i64 %i.mv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i179.prol = phi i64 [ %indvars.iv.next.i.i180.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i179.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.i.i179.prol
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.i.i179.prol
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !164
  store ptr %i.my, ptr %i.mw, align 8, !tbaa !164
  %indvars.iv.next.i.i180.prol = add nuw nsw i64 %indvars.iv.i.i179.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !703

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i179.unr = phi i64 [ %indvars.iv.i.i179.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i180.prol, %vec.epilog.scalar.ph.prol ]
  %i.mz = sub nsw i64 %indvars.iv.i.i179.ph, %16
  %i.na = icmp ugt i64 %i.mz, -8
  br i1 %i.na, label %._crit_edge.i.i181, label %vec.epilog.scalar.ph

._crit_edge.i.i181:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  br i1 %.not.i.i176, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i.i181
  %i.nb = shl i64 %i.lu, 3
  %i.nc = load ptr, ptr %0, align 8, !tbaa !166   ; 2 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !30
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8
  invoke void %i.nf(ptr noundef nonnull align 8 dereferenceable(8) %i.nc, ptr noundef nonnull %17, i64 noundef %i.nb, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !700

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i: ; preds = %bb.az, %._crit_edge.i.i181
  store i64 %i.lx, ptr %i.i, align 8, !tbaa !165
  store ptr %.0.i.i.i.i14.i, ptr %i.h, align 8, !tbaa !162
  br label %bb.ba

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i179 = phi i64 [ %indvars.iv.next.i.i180.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i179.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.i.i179
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.i.i179
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !164
  store ptr %i.ni, ptr %i.ng, align 8, !tbaa !164
  %indvars.iv.next.i.i180 = add nuw nsw i64 %indvars.iv.i.i179, 1 ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i180
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !164
  store ptr %i.nl, ptr %i.nj, align 8, !tbaa !164
  %indvars.iv.next.i.i180.1 = add nuw nsw i64 %indvars.iv.i.i179, 2 ; 2 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.1
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i180.1
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !164
  store ptr %i.no, ptr %i.nm, align 8, !tbaa !164
  %indvars.iv.next.i.i180.2 = add nuw nsw i64 %indvars.iv.i.i179, 3 ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.2
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i180.2
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !164
  store ptr %i.nr, ptr %i.np, align 8, !tbaa !164
  %indvars.iv.next.i.i180.3 = add nuw nsw i64 %indvars.iv.i.i179, 4 ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.3
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i180.3
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !164
  store ptr %i.nu, ptr %i.ns, align 8, !tbaa !164
  %indvars.iv.next.i.i180.4 = add nuw nsw i64 %indvars.iv.i.i179, 5 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.4
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i180.4
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !164
  store ptr %i.nx, ptr %i.nv, align 8, !tbaa !164
  %indvars.iv.next.i.i180.5 = add nuw nsw i64 %indvars.iv.i.i179, 6 ; 2 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.5
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i180.5
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !164
  store ptr %i.oa, ptr %i.ny, align 8, !tbaa !164
  %indvars.iv.next.i.i180.6 = add nuw nsw i64 %indvars.iv.i.i179, 7 ; 2 uses
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i14.i, i64 %indvars.iv.next.i.i180.6
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv.next.i.i180.6
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !164
  store ptr %i.od, ptr %i.ob, align 8, !tbaa !164
  %indvars.iv.next.i.i180.7 = add nuw nsw i64 %indvars.iv.i.i179, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i180.7, %16
  br i1 %exitcond.not.i.i.7, label %._crit_edge.i.i181, label %vec.epilog.scalar.ph, !llvm.loop !704

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214, %bb.ax, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i
  %i.oe = phi ptr [ %.0.i.i.i.i14.i, %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit.i.i ], [ %17, %bb.ax ], [ %17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit142.thread214 ] ; 2 uses
  %.not.i4.i = icmp eq ptr %i.oe, null
  %i.of = select i1 %.not.i4.i, ptr %i.v, ptr %i.oe
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %16
  %i.oh = load ptr, ptr %i.d, align 8, !tbaa !164
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !164
  %i.oi = add i64 %16, 1
  store i64 %i.oi, ptr %i.u, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4, !tbaa !47, !noalias !706
  %i.oj = load ptr, ptr %i.j, align 8, !tbaa !67, !noalias !706
  %.not.i.i = icmp eq ptr %i.oj, null
  br i1 %.not.i.i, label %._crit_edge366, label %bb.b, !llvm.loop !705

.body174:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169, %.loopexit.split-lp223.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp242.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn51.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp712, %.loopexit.split-lp242.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ld, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i169 ], [ %lpad.loopexit.split-lp699, %.loopexit.split-lp223.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ld, %bb.at ], [ %i.lo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ], [ %lpad.loopexit.split-lp702, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.body174, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.cf, %bb.p ], [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn51.pn, %.body174 ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp708, %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  br label %.loopexit.split-lp231

.loopexit.split-lp231:                            ; preds = %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn59.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn, %.body ], [ %lpad.loopexit.split-lp705, %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #35
  resume { ptr, i32 } %.pn59.pn.pn.pn.pn.pn

.loopexit234:                                     ; preds = %bb.c, %"_ZZN4pbrt5parseEPNS_12ParserTargetESt10unique_ptrINS_9TokenizerESt14default_deleteIS3_EEENK3$_5clENS_5TokenE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !165
  %i.f = shl i64 %i.e, 3
  %i.g = load ptr, ptr %0, align 8, !tbaa !166    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.c, i64 noundef %i.f, i64 noundef 8)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit unwind label %bb.c, !inline_history !2

_ZN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEE17deallocate_objectIS4_EEvPT_m.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt8AsyncJobIiE4WaitEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_lock", align 8  ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNK4pbrt8AsyncJobIiE7IsReadyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #34
  unreachable

_ZNK4pbrt8AsyncJobIiE7IsReadyEv.exit:             ; preds = %bb.b
  %i.d = load i8, ptr %i.b, align 8, !tbaa !151, !range !112, !noundef !113
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 0 uses
  br i1 %i.e, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt8AsyncJobIiE7IsReadyEv.exit
  %i.g = tail call noundef zeroext i1 @_ZN4pbrt14DoParallelWorkEv()
  br i1 %i.g, label %bb.b, label %.critedge, !llvm.loop !714

.critedge:                                        ; preds = %_ZNK4pbrt8AsyncJobIiE7IsReadyEv.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store ptr %i.a, ptr %1, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #35 ; 2 uses
  %.not.i.i.i2 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i2, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.i) #34
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %.critedge
  store i8 1, ptr %i.h, align 8, !tbaa !157
  %i.j = load i8, ptr %i.b, align 8, !tbaa !151, !range !112, !noundef !113
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.lr.ph.i
  %i.m = load i8, ptr %i.b, align 8, !tbaa !151, !range !112, !noundef !113
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, label %.lr.ph.i, !llvm.loop !715

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i8, ptr %i.h, align 8, !tbaa !157, !range !112, !noundef !113
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #35 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %i.o

_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit: ; preds = %.noexc
  %.pre = load i8, ptr %i.h, align 8, !tbaa !157, !range !112
  %i.t = trunc nuw i8 %.pre to i1
  br i1 %i.t, label %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread, label %_ZNSt11unique_lockISt5mutexED2Ev.exit4

_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit
  %i.u = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %.not.i.i3 = icmp eq ptr %i.u, null
  br i1 %.not.i.i3, label %_ZNSt11unique_lockISt5mutexED2Ev.exit4, label %bb.i

bb.i:                                             ; preds = %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #35 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit4

_ZNSt11unique_lockISt5mutexED2Ev.exit4:           ; preds = %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit, %_ZNSt18condition_variable4waitIZN4pbrt8AsyncJobIiE4WaitEvEUlvE_EEvRSt11unique_lockISt5mutexET_.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !74 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4pbrt9TokenizerEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4pbrt9TokenizerEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZN4pbrt9TokenizerD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.d) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 152) #36
  br label %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4pbrt9TokenizerEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4pbrt9TokenizerESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
end_hunk_2
begin_hunk_3_@"_ZZN4pbrtL17upgradeTriMeshUVsB5cxx11ERKNS_22FormattingParserTargetEPNS_19ParameterDictionaryEENK3$_0clEPKc":bb.a
  %.pre17 = ptrtoint ptr %.pre10.pre to i64
  %.pre19 = sub i64 %.pre16, %.pre17
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i
  %.pre-phi20 = phi i64 [ %i.af, %bb.k ], [ %.pre19, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %.pre12 = phi ptr [ null, %bb.k ], [ %i.ao, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.ap = phi ptr [ null, %bb.k ], [ %i.am, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %i.aq = phi ptr [ %i.t, %bb.k ], [ %.pre10.pre, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit.i ]
  %.not = icmp ult i64 %.pre-phi20, 5
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE7reserveEm.exit
  %i.as = load ptr, ptr %.0.val, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !41
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.au, ptr %i.a, align 8, !tbaa !48
  %i.av = icmp ugt i64 %i.au, 15
  br i1 %i.av, label %.noexc.i26, label %._crit_edge.i.i25

.noexc.i26:                                       ; preds = %._crit_edge
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc28 unwind label %bb.x   ; 2 uses

.noexc28:                                         ; preds = %.noexc.i26
  store ptr %i.aw, ptr %4, align 8, !tbaa !45
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.ax, ptr %i.at, align 8, !tbaa !44
  br label %._crit_edge.i.i25

._crit_edge.i.i25:                                ; preds = %.noexc28, %._crit_edge
  %i.ay = phi ptr [ %i.aw, %.noexc28 ], [ %i.at, %._crit_edge ] ; 2 uses
  switch i64 %i.au, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.r
  ]

bb.l:                                             ; preds = %._crit_edge.i.i25
  %i.az = load i8, ptr %0, align 1, !tbaa !44
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !44
  br label %bb.r

bb.m:                                             ; preds = %._crit_edge.i.i25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr nonnull align 1 %0, i64 %i.au, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit
  %i.ba = phi ptr [ %.pre12, %.lr.ph ], [ %i.cw, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %i.bb = phi ptr [ %i.ap, %.lr.ph ], [ %i.cx, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %i.bc = phi ptr [ %i.aq, %.lr.ph ], [ %i.da, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit ]
  %.08 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  %.idx = shl nuw i64 %.08, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx
  %i.be = load <2 x float>, ptr %i.bd, align 4, !tbaa !33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store <2 x float> %i.be, ptr %i.bb, align 4
  %i.bf = load ptr, ptr %i.ar, align 8, !tbaa !212
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bg, ptr %i.ar, align 8, !tbaa !212
  %.pre11 = load ptr, ptr %i.ak, align 8, !tbaa !214
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit

bb.p:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %3, align 8, !tbaa !213   ; 9 uses
  %i.bi = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %.invoke, label %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i.i.i30 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i30)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #38
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc32:                                         ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  store <2 x float> %i.be, ptr %i.bt, align 4
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bh, %i.ba
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc32
  %i.bu = ptrtoaddr ptr %i.bs to i64
  %i.bv = add i64 %i.bi, -8
  %i.bw = sub i64 %i.bv, %i.bj                    ; 3 uses
  %i.bx = lshr i64 %i.bw, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.bw, 24
  %i.bz = sub i64 %i.bj, %i.bu
  %diff.check = icmp ugt i64 %i.bz, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check43 = icmp ult i64 %i.bw, 120
  br i1 %min.iters.check43, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ca = and i64 %i.by, 12
  %n.vec = and i64 %i.by, 4611686018427387888     ; 4 uses
  %i.cb = shl i64 %n.vec, 3                       ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bs, i64 %i.cb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bh, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.ce ; 4 uses
  %next.gep44 = getelementptr i8, ptr %i.bh, i64 %i.ce ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.cf = getelementptr i8, ptr %next.gep44, i64 32
  %i.cg = getelementptr i8, ptr %next.gep44, i64 64
  %i.ch = getelementptr i8, ptr %next.gep44, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep44, align 4, !alias.scope !1556
  %wide.load45 = load <4 x i64>, ptr %i.cf, align 4, !alias.scope !1556
  %wide.load46 = load <4 x i64>, ptr %i.cg, align 4, !alias.scope !1556
  %wide.load47 = load <4 x i64>, ptr %i.ch, align 4, !alias.scope !1556
  %i.ci = getelementptr i8, ptr %next.gep, i64 32
  %i.cj = getelementptr i8, ptr %next.gep, i64 64
  %i.ck = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1555
  store <4 x i64> %wide.load45, ptr %i.ci, align 4, !alias.scope !1555
  store <4 x i64> %wide.load46, ptr %i.cj, align 4, !alias.scope !1555
  store <4 x i64> %wide.load47, ptr %i.ck, align 4, !alias.scope !1555
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !1551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ca, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %i.by, 4611686018427387900   ; 3 uses
  %i.cm = shl i64 %n.vec48, 3                     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.bs, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.bh, i64 %i.cm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.cp = shl i64 %index49, 3                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.bs, i64 %i.cp
  %next.gep51 = getelementptr i8, ptr %i.bh, i64 %i.cp
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %wide.load52 = load <4 x i64>, ptr %next.gep51, align 4, !alias.scope !1556
  store <4 x i64> %wide.load52, ptr %next.gep50, align 4, !alias.scope !1555
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next53, %n.vec48
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1552

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.by, %n.vec48
  br i1 %cmp.n54, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %iter.check ], [ %i.cc, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bh, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.cr = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !alias.scope !1556
  store i64 %i.cr, ptr %.012.i.i.i.i.i.i, align 4, !alias.scope !1555
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.ba
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1553

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc32
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %.noexc32 ], [ %i.cn, %vec.epilog.middle.block ], [ %i.cc, %middle.block ], [ %i.ct, %.lr.ph.i.i.i.i.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bs, ptr %3, align 8, !tbaa !213
  store ptr %i.cu, ptr %i.ar, align 8, !tbaa !212
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq ; 2 uses
  store ptr %i.cv, ptr %i.ak, align 8, !tbaa !214
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.o
  %i.cw = phi ptr [ %i.cv, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.pre11, %bb.o ]
  %i.cx = phi ptr [ %i.cu, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bg, %bb.o ]
  %i.cy = add nuw nsw i64 %.08, 1                 ; 2 uses
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !176
  %i.da = load ptr, ptr %1, align 8, !tbaa !177   ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 2
  %i.df = lshr i64 %i.de, 1
  %i.dg = icmp samesign ult i64 %i.cy, %i.df
  br i1 %i.dg, label %bb.n, label %._crit_edge, !llvm.loop !1554

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN4pbrt6Point2IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE11_M_allocateEm.exit.i
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i25
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !43
  %i.dj = load ptr, ptr %4, align 8, !tbaa !45
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  invoke void @_ZN4pbrt19ParameterDictionary11RemoveFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(108) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.dl = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.at
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.s
  %i.dn = load i64, ptr %i.at, align 8, !tbaa !44
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.dp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %.8.val, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.dq = load ptr, ptr %3, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = load ptr, ptr %i.ak, align 8, !tbaa !214
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.du) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit:  ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.pr = load ptr, ptr %1, align 8, !tbaa !177
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit
  %i.dv = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pr, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !178
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void

bb.x:                                             ; preds = %.noexc.i26
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

bb.y:                                             ; preds = %bb.r
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.at
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.y
  %i.ef = load i64, ptr %i.at, align 8, !tbaa !44
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %bb.x
  %.pn14 = phi { ptr, i32 } [ %i.eb, %bb.x ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.ec, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn16 = phi { ptr, i32 } [ %.pn14, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %lpad.loopexit.split-lp56, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.eh = load ptr, ptr %3, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i40.a = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i40.a, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41, label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !214
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = sub i64 %i.ek, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.em) #36
  br label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41: ; preds = %.loopexit.split-lp, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.en = load ptr, ptr %1, align 8, !tbaa !177   ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIfSaIfEED2Ev.exit43, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !178
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #36
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit43

_ZNSt6vectorIfSaIfEED2Ev.exit43:                  ; preds = %bb.aa, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %.pn16, %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EED2Ev.exit41 ], [ %.pn16, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = load ptr, ptr %1, align 8, !tbaa !213    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.i = load ptr, ptr %0, align 8, !tbaa !213    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, !prof !194

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #38 ; 3 uses
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.s, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !213    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4pbrt6Point2IfEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4pbrt6Point2IfEESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
end_hunk_3
