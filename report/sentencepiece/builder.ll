Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/builder?download=true
inline.NumInlined: 3497
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN13sentencepiece10normalizer7Builder17DecompileCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPSt3mapISt6vectorIDiSaIDiEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE:bb.a
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 1 dereferenceable(4) @.str.2, i64 noundef 3)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit: ; preds = %.noexc48
  %i.aj = load i8, ptr %i.r, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %.noexc52, label %bb.l

bb.l:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.j)
          to label %.noexc52 unwind label %bb.p

.noexc52:                                         ; preds = %bb.l, %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit
  %i.al = load ptr, ptr %i.u, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 1 dereferenceable(10) @.str.18, i64 noundef 9)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA10_cEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA10_cEEOS1_RKT_.exit: ; preds = %.noexc52
  %i.an = load i8, ptr %i.r, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.noexc56, label %bb.m

bb.m:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA10_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.j)
          to label %.noexc56 unwind label %bb.p

.noexc56:                                         ; preds = %bb.m, %_ZNO4absl12lts_2026052613StatusBuilderlsIA10_cEEOS1_RKT_.exit
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 noundef 2)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit: ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit.thread, %.noexc56
  %i.ar = phi ptr [ %i.i, %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit.thread ], [ %i.q, %.noexc56 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !261
  %i.at = ptrtoint ptr %i.as to i64
  store i64 %i.at, ptr %6, align 8, !tbaa !29, !noalias !261
  store ptr null, ptr %i.ar, align 8, !tbaa !29, !noalias !261
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 253, ptr nonnull @.str, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit
  %i.au = load ptr, ptr %6, align 8, !tbaa !29, !noalias !261 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.au, null
  br i1 %.not.i3.i, label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i: ; preds = %bb.n
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.au) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 448) #30
  br label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit

bb.o:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #28
  br label %.body

_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit:   ; preds = %bb.n, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.au

bb.p:                                             ; preds = %bb.h, %.noexc, %bb.i, %.noexc40, %.noexc56, %bb.m, %.noexc52, %bb.l, %.noexc48, %bb.k, %.noexc44, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.aw, %bb.p ]
  call void @_ZN4absl12lts_2026052613StatusBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %common.resume

bb.q:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !51
  invoke void @_ZNSt8_Rb_treeISt6vectorIDiSaIDiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ay)
          to label %_ZNSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE5clearEv.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #29
  unreachable

_ZNSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE5clearEv.exit: ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.ax, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.be, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bf, ptr %12, align 8, !tbaa !54
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !56
  store i8 0, ptr %i.bf, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN13sentencepiece10normalizer10Normalizer25DecodePrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPS5_S6_PNSt7__cxx1112basic_stringIcS4_SaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Status") align 8 %13, i64 %1, ptr %2, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE5clearEv.exit
  %i.bh = load i64, ptr %13, align 8, !tbaa !32, !noalias !262 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %.critedge, label %bb.u

bb.t:                                             ; preds = %_ZNSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE5clearEv.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.at

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  store i64 260, ptr %14, align 8, !tbaa !24, !alias.scope !263
  %.sroa.2.0..sroa_idx.i.i64 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str, ptr %.sroa.2.0..sroa_idx.i.i64, align 8, !tbaa !27, !alias.scope !263
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !263
  store i64 %i.bh, ptr %5, align 8, !tbaa !32, !noalias !263
  %i.bk = invoke noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.v unwind label %bb.y, !noalias !263 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.bl = load i64, ptr %5, align 8, !tbaa !32, !noalias !263 ; 2 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = inttoptr i64 %i.bl to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.bn)
          to label %bb.z unwind label %bb.x, !noalias !263

bb.x:                                             ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  call void @__clang_call_terminate(ptr %i.bp) #29, !noalias !263
  unreachable

bb.y:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28, !noalias !263
  br label %.body65

bb.z:                                             ; preds = %bb.v, %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bs = ptrtoint ptr %i.bk to i64
  store i64 %i.bs, ptr %4, align 8, !tbaa !29, !noalias !264
  store ptr null, ptr %i.br, align 8, !tbaa !29, !noalias !264
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 260, ptr nonnull @.str, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aa unwind label %.body75

bb.aa:                                            ; preds = %bb.z
  %i.bt = load ptr, ptr %4, align 8, !tbaa !29, !noalias !264 ; 3 uses
  %.not.i3.i71 = icmp eq ptr %i.bt, null
  br i1 %.not.i3.i71, label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit83, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i72

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i72: ; preds = %bb.aa
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.bt) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 448) #30
  br label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit83

.body75:                                          ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #28
  call void @_ZN4absl12lts_2026052613StatusBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #28
  br label %.body65

_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit83: ; preds = %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i72, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.as

.body65:                                          ; preds = %bb.y, %.body75
  %.pn28 = phi { ptr, i32 } [ %i.bu, %.body75 ], [ %i.bq, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.at

.critedge:                                        ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Darts15DoubleArrayImplIvvivEE, i64 16), ptr %15, align 8, !tbaa !88
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 0, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !123 ; 2 uses
  %i.bz = load i64, ptr %10, align 8, !tbaa !124  ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.cb, align 8
  %i.cc = and i64 %i.bz, 3
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i64
  %i.cf = lshr i64 %i.bz, 2
  %i.cg = add nuw nsw i64 %i.cf, %i.ce            ; 6 uses
  store i64 %i.cg, ptr %i.bv, align 8, !tbaa !95
  %i.ch = icmp samesign ugt i64 %i.cg, 4611686018427387903
  %i.ci = shl i64 %i.cg, 2                        ; 2 uses
  %i.cj = select i1 %i.ch, i64 -1, i64 %i.ci
  %i.ck = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #35
          to label %.noexc85 unwind label %bb.af  ; 9 uses

.noexc85:                                         ; preds = %.critedge
  %i.cl = icmp eq i64 %i.bz, 0
  br i1 %i.cl, label %.thread, label %bb.ab

.thread:                                          ; preds = %.noexc85
  store ptr %i.ck, ptr %i.ca, align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 1 %i.by, i64 %i.bz, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !92
  br label %.loopexit

bb.ab:                                            ; preds = %.noexc85
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ck, i8 0, i64 %i.ci, i1 false), !tbaa !94
  store ptr %i.ck, ptr %i.ca, align 8, !tbaa !96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ck, ptr align 1 %i.by, i64 %i.bz, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.ck, ptr %i.cn, align 8, !tbaa !92
  %i.co = load i32, ptr %i.ck, align 4, !tbaa !94 ; 3 uses
  %i.cp = and i32 %i.co, -2147483137
  %or.cond.not.i = icmp eq i32 %i.cp, 0
  br i1 %or.cond.not.i, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab
  %i.cq = lshr i32 %i.co, 10                      ; 2 uses
  %i.cr = lshr exact i32 %i.co, 6
  %i.cs = and i32 %i.cr, 8
  %i.ct = shl nuw nsw i32 %i.cq, %i.cs
  %i.cu = icmp ne i32 %i.cq, 0
  %i.cv = or i32 %i.ct, 255
  %i.cw = zext nneg i32 %i.cv to i64
  %.not14.i = icmp samesign ugt i64 %i.cg, %i.cw
  %or.cond19.i = select i1 %i.cu, i1 %.not14.i, i1 false
  br i1 %or.cond19.i, label %.lr.ph.split.us.i, label %.loopexit

.lr.ph.split.us.i:                                ; preds = %bb.ac, %bb.ae
  %.01021.us.i = phi i64 [ %i.dh, %bb.ae ], [ 1, %bb.ac ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.01021.us.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !94 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i
  %i.da = lshr i32 %i.cy, 10
  %i.db = lshr i32 %i.cy, 6
  %i.dc = and i32 %i.db, 8
  %i.dd = shl nuw nsw i32 %i.da, %i.dc
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = xor i64 %.01021.us.i, %i.de
  %i.dg = or i64 %i.df, 255
  %.not16.us.i = icmp samesign ult i64 %i.dg, %i.cg
  br i1 %.not16.us.i, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.split.us.i
  %i.dh = add nuw nsw i64 %.01021.us.i, 1         ; 2 uses
  %exitcond30.not.i = icmp eq i64 %i.dh, %i.cg
  br i1 %exitcond30.not.i, label %_ZNK5Darts15DoubleArrayImplIvvivE8validateEi.exit, label %.lr.ph.split.us.i, !llvm.loop !257

.loopexit:                                        ; preds = %bb.ad, %.thread, %bb.ab, %bb.ac
  invoke void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi13EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 49, ptr nonnull @.str.19, i64 268, ptr nonnull @.str)
          to label %_ZN4absl12lts_2026052613InternalErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE.exit unwind label %bb.af

bb.af:                                            ; preds = %.loopexit, %.critedge
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNK5Darts15DoubleArrayImplIvvivE8validateEi.exit: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.dj, ptr %16, align 8, !tbaa !54
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.dk, align 8, !tbaa !56
  store i8 0, ptr %i.dj, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i8 0, ptr %i.e, align 1, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i8 0, ptr %i.f, align 1, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %i.dl = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #35
          to label %bb.ag unwind label %bb.ai     ; 8 uses

bb.ag:                                            ; preds = %_ZNK5Darts15DoubleArrayImplIvvivE8validateEi.exit
  store ptr %17, ptr %i.dl, align 16, !tbaa !127
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %16, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !129
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %15, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !131
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store ptr %11, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !133
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !135
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !137
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store ptr %i.f, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !137
  store ptr %i.dl, ptr %17, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvmmiEZN13sentencepiece10normalizer7Builder17DecompileCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPSt3mapISt6vectorIDiSaIDiEESB_St4lessISB_ESaISt4pairIKSB_SB_EEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation", ptr %i.dm, align 8, !tbaa !138
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvmmiEZN13sentencepiece10normalizer7Builder17DecompileCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPSt3mapISt6vectorIDiSaIDiEESB_St4lessISB_ESaISt4pairIKSB_SB_EEEE3$_0E9_M_invokeERKSt9_Any_dataOmSP_Oi", ptr %i.dn, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.a, align 8, !tbaa !48
  store i64 0, ptr %i.b, align 8, !tbaa !48
  store i32 0, ptr %i.c, align 4, !tbaa !24
  invoke void @"_ZNSt17_Function_handlerIFvmmiEZN13sentencepiece10normalizer7Builder17DecompileCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPSt3mapISt6vectorIDiSaIDiEESB_St4lessISB_ESaISt4pairIKSB_SB_EEEE3$_0E9_M_invokeERKSt9_Any_dataOmSP_Oi"(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ah unwind label %bb.ai, !inline_history !258

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.do = load i8, ptr %i.e, align 1, !tbaa !125, !range !36, !noundef !37
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %.invoke, label %bb.aj

bb.ai:                                            ; preds = %.invoke, %_ZNK5Darts15DoubleArrayImplIvvivE8validateEi.exit, %bb.ag
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !140 ; 2 uses
  %.not.i96 = icmp eq ptr %i.ds, null
  br i1 %.not.i96, label %_ZNSt14_Function_baseD2Ev.exit97, label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.dt = load i8, ptr %i.f, align 1, !tbaa !125, !range !36, !noundef !37
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %.invoke, label %bb.ak

.invoke:                                          ; preds = %bb.ah, %bb.aj
  %i.dv = phi i64 [ 42, %bb.aj ], [ 48, %bb.ah ]
  %i.dw = phi ptr [ @.str.21, %bb.aj ], [ @.str.20, %bb.ah ]
  %i.dx = phi i64 [ 332, %bb.aj ], [ 327, %bb.ah ]
  invoke void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi13EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 %i.dv, ptr nonnull %i.dw, i64 %i.dx, ptr nonnull @.str)
          to label %_ZN4absl12lts_2026052613InternalErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE.exit93 unwind label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  store i64 1, ptr %0, align 8, !tbaa !32, !alias.scope !265
  br label %_ZN4absl12lts_2026052613InternalErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE.exit93

_ZN4absl12lts_2026052613InternalErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE.exit93: ; preds = %.invoke, %bb.ak
  %i.dy = load ptr, ptr %i.dm, align 8, !tbaa !140 ; 2 uses
  %.not.i = icmp eq ptr %i.dy, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2026052613InternalErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE.exit93
  %i.dz = invoke noundef zeroext i1 %i.dy(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4absl12lts_2026052613InternalErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE.exit93, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.ec = load ptr, ptr %16, align 8, !tbaa !68   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dj
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ee = load i64, ptr %i.dj, align 8, !tbaa !57
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %_ZN4absl12lts_2026052613InternalErrorESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE.exit

bb.an:                                            ; preds = %bb.ai
  %i.eg = invoke noundef zeroext i1 %i.ds(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit97 unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit97:                 ; preds = %bb.ai, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.ej = load ptr, ptr %16, align 8, !tbaa !68   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dj
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt14_Function_baseD2Ev.exit97
  %i.el = load i64, ptr %i.dj, align 8, !tbaa !57
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt14_Function_baseD2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.aq

end_hunk_0
begin_hunk_1_@_ZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  store i64 341, ptr %16, align 8, !tbaa !24
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.a = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 53, i64 0, ptr nonnull @.str.28, i64 765, ptr nonnull @.str.42) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit.thread, label %bb.c

_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.c = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit

bb.c:                                             ; preds = %bb.b
  store i64 %i.a, ptr %14, align 8, !tbaa !32
  store i64 55, ptr %15, align 8, !tbaa !32
  %i.d = invoke noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.d unwind label %.body.i    ; 10 uses

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %14, align 8, !tbaa !32    ; 2 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = inttoptr i64 %i.e to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

common.resume:                                    ; preds = %.body, %.body88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %.body.i68, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %.body.i ], [ %i.cn, %.body.i68 ], [ %.pn35.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %eh.lpad-body89, %.body88 ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #28
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %common.resume

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 424 ; 6 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !35, !range !36, !noundef !37
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.noexc, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.d)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 416 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(15) @.str, i64 noundef 14)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit: ; preds = %.noexc
  %i.r = load i8, ptr %i.l, align 8, !tbaa !35, !range !36, !noundef !37
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.noexc46, label %bb.i

bb.i:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.d)
          to label %.noexc46 unwind label %bb.p

.noexc46:                                         ; preds = %bb.i, %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 1 dereferenceable(2) @.str.1, i64 noundef 1)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA2_cEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA2_cEEOS1_RKT_.exit: ; preds = %.noexc46
  %i.v = load i8, ptr %i.l, align 8, !tbaa !35, !range !36, !noundef !37
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.noexc50, label %bb.j

bb.j:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA2_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.d)
          to label %.noexc50 unwind label %bb.p

.noexc50:                                         ; preds = %bb.j, %_ZNO4absl12lts_2026052613StatusBuilderlsIA2_cEEOS1_RKT_.exit
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef 341)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIiEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIiEEOS1_RKT_.exit: ; preds = %.noexc50
  %i.z = load i8, ptr %i.l, align 8, !tbaa !35, !range !36, !noundef !37
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.noexc54, label %bb.k

bb.k:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIiEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.d)
          to label %.noexc54 unwind label %bb.p

.noexc54:                                         ; preds = %bb.k, %_ZNO4absl12lts_2026052613StatusBuilderlsIiEEOS1_RKT_.exit
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 1 dereferenceable(4) @.str.2, i64 noundef 3)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit: ; preds = %.noexc54
  %i.ad = load i8, ptr %i.l, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.noexc58, label %bb.l

bb.l:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.d)
          to label %.noexc58 unwind label %bb.p

.noexc58:                                         ; preds = %bb.l, %_ZNO4absl12lts_2026052613StatusBuilderlsIA4_cEEOS1_RKT_.exit
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 noundef 6)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA7_cEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA7_cEEOS1_RKT_.exit: ; preds = %.noexc58
  %i.ah = load i8, ptr %i.l, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.noexc62, label %bb.m

bb.m:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA7_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.d)
          to label %.noexc62 unwind label %bb.p

.noexc62:                                         ; preds = %bb.m, %_ZNO4absl12lts_2026052613StatusBuilderlsIA7_cEEOS1_RKT_.exit
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 noundef 2)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit unwind label %bb.p ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit: ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit.thread, %.noexc62
  %i.al = phi ptr [ %i.c, %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit.thread ], [ %i.k, %.noexc62 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.am = load ptr, ptr %i.al, align 8, !noalias !279
  %i.an = ptrtoint ptr %i.am to i64
  store i64 %i.an, ptr %13, align 8, !tbaa !29, !noalias !279
  store ptr null, ptr %i.al, align 8, !tbaa !29, !noalias !279
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 341, ptr nonnull @.str, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit
  %i.ao = load ptr, ptr %13, align 8, !tbaa !29, !noalias !279 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.ao, null
  br i1 %.not.i3.i, label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i: ; preds = %bb.n
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.ao) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 448) #30
  br label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit

bb.o:                                             ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #28
  br label %.body

_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit:   ; preds = %bb.n, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.bq

bb.p:                                             ; preds = %bb.h, %.noexc, %bb.i, %.noexc46, %.noexc62, %bb.m, %.noexc58, %bb.l, %.noexc54, %bb.k, %.noexc50, %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.o ], [ %i.aq, %bb.p ]
  call void @_ZN4absl12lts_2026052613StatusBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %common.resume

bb.q:                                             ; preds = %bb.a
  %i.ar = icmp eq i64 %1, 8
  br i1 %i.ar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.r

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.q
  %i.as = load i64, ptr %2, align 1
  %i.at = icmp ne i64 %i.as, 8751735924676977769
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.thread

.thread:                                          ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  br label %.lr.ph.preheader.i.i.i.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !56
  %i.az = load ptr, ptr %3, align 8, !tbaa !68
  store i8 0, ptr %i.az, align 1, !tbaa !57
  store i64 1, ptr %0, align 8, !tbaa !32, !alias.scope !280
  br label %bb.bq

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 3 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = ashr i64 %1, 2                          ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.thread, %bb.r
  %i.be = phi i64 [ 2, %.thread ], [ %i.bc, %bb.r ]
  %i.bf = phi i64 [ %i.ax, %.thread ], [ %i.bb, %bb.r ]
  %i.bg = phi ptr [ %i.aw, %.thread ], [ %i.ba, %bb.r ] ; 5 uses
  %i.bh = and i64 %1, -4
  %scevgep.i.i.i.i = getelementptr i8, ptr %2, i64 %i.bh
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %.lr.ph.preheader.i.i.i.i
  %.068.i.i.i.i = phi i64 [ %i.bq, %bb.v ], [ %i.be, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02967.i.i.i.i = phi ptr [ %i.bp, %bb.v ], [ %2, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val32.i.i.i.i = load i8, ptr %.02967.i.i.i.i, align 1, !tbaa !57
  %.029.val32.fr.i.i.i.i = freeze i8 %.029.val32.i.i.i.i ; 2 uses
  %i.bi = add i8 %.029.val32.fr.i.i.i.i, -123
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.bi, -26
  br i1 %or.cond.i.i.i.i.i.i, label %switch.early.test.i.i.i.i, label %bb.s

switch.early.test.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  switch i8 %.029.val32.fr.i.i.i.i, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit" [
    i8 95, label %bb.s
    i8 45, label %bb.s
  ]

bb.s:                                             ; preds = %switch.early.test.i.i.i.i, %switch.early.test.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 1
  %.val31.i.i.i.i = load i8, ptr %i.bj, align 1, !tbaa !57
  %.val31.fr.i.i.i.i = freeze i8 %.val31.i.i.i.i  ; 2 uses
  %i.bk = add i8 %.val31.fr.i.i.i.i, -123
  %or.cond.i.i33.i.i.i.i = icmp ult i8 %i.bk, -26
  br i1 %or.cond.i.i33.i.i.i.i, label %switch.early.test51.i.i.i.i, label %bb.t

switch.early.test51.i.i.i.i:                      ; preds = %bb.s
  switch i8 %.val31.fr.i.i.i.i, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit" [
    i8 95, label %bb.t
    i8 45, label %bb.t
  ]

bb.t:                                             ; preds = %switch.early.test51.i.i.i.i, %switch.early.test51.i.i.i.i, %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 2
  %.val30.i.i.i.i = load i8, ptr %i.bl, align 1, !tbaa !57
  %.val30.fr.i.i.i.i = freeze i8 %.val30.i.i.i.i  ; 2 uses
  %i.bm = add i8 %.val30.fr.i.i.i.i, -123
  %or.cond.i.i36.i.i.i.i = icmp ult i8 %i.bm, -26
  br i1 %or.cond.i.i36.i.i.i.i, label %switch.early.test52.i.i.i.i, label %bb.u

switch.early.test52.i.i.i.i:                      ; preds = %bb.t
  switch i8 %.val30.fr.i.i.i.i, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit244" [
    i8 95, label %bb.u
    i8 45, label %bb.u
  ]

bb.u:                                             ; preds = %switch.early.test52.i.i.i.i, %switch.early.test52.i.i.i.i, %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 3
  %.val.i.i.i.i = load i8, ptr %i.bn, align 1, !tbaa !57
  %.val.fr.i.i.i.i = freeze i8 %.val.i.i.i.i      ; 2 uses
  %i.bo = add i8 %.val.fr.i.i.i.i, -123
  %or.cond.i.i39.i.i.i.i = icmp ult i8 %i.bo, -26
  br i1 %or.cond.i.i39.i.i.i.i, label %switch.early.test53.i.i.i.i, label %bb.v

switch.early.test53.i.i.i.i:                      ; preds = %bb.u
  switch i8 %.val.fr.i.i.i.i, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit246" [
    i8 95, label %bb.v
    i8 45, label %bb.v
  ]

bb.v:                                             ; preds = %switch.early.test53.i.i.i.i, %switch.early.test53.i.i.i.i, %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 4
  %i.bq = add nsw i64 %.068.i.i.i.i, -1
  %21 = icmp sgt i64 %.068.i.i.i.i, 1
  br i1 %21, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !270

._crit_edge.i.i.i.i:                              ; preds = %bb.v, %bb.r
  %i.br = phi i64 [ %i.bb, %bb.r ], [ %i.bf, %bb.v ]
  %i.bs = phi ptr [ %i.ba, %bb.r ], [ %i.bg, %bb.v ] ; 3 uses
  %.029.lcssa.i.i.i.i = phi ptr [ %2, %bb.r ], [ %scevgep.i.i.i.i, %bb.v ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.bt = sub i64 %i.br, %.pre-phi.i.i.i.i
  switch i64 %i.bt, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread" [
    i64 3, label %bb.w
    i64 2, label %bb.y
    i64 1, label %bb.aa
  ]

bb.w:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !57
  %.029.val.fr.i.i.i.i = freeze i8 %.029.val.i.i.i.i ; 2 uses
  %i.bu = add i8 %.029.val.fr.i.i.i.i, -123
  %or.cond.i.i42.i.i.i.i = icmp ult i8 %i.bu, -26
  br i1 %or.cond.i.i42.i.i.i.i, label %switch.early.test54.i.i.i.i, label %bb.x

switch.early.test54.i.i.i.i:                      ; preds = %bb.w
  switch i8 %.029.val.fr.i.i.i.i, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit" [
    i8 95, label %bb.x
    i8 45, label %bb.x
  ]

bb.x:                                             ; preds = %switch.early.test54.i.i.i.i, %switch.early.test54.i.i.i.i, %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.bv, %bb.x ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !57
  %.1.val.fr.i.i.i.i = freeze i8 %.1.val.i.i.i.i  ; 2 uses
  %i.bw = add i8 %.1.val.fr.i.i.i.i, -123
  %or.cond.i.i45.i.i.i.i = icmp ult i8 %i.bw, -26
  br i1 %or.cond.i.i45.i.i.i.i, label %switch.early.test55.i.i.i.i, label %bb.z

switch.early.test55.i.i.i.i:                      ; preds = %bb.y
  switch i8 %.1.val.fr.i.i.i.i, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit" [
    i8 95, label %bb.z
    i8 45, label %bb.z
  ]

bb.z:                                             ; preds = %switch.early.test55.i.i.i.i, %switch.early.test55.i.i.i.i, %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.bx, %bb.z ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !57
  %.2.val.fr.i.i.i.i = freeze i8 %.2.val.i.i.i.i  ; 2 uses
  %i.by = add i8 %.2.val.fr.i.i.i.i, -123
  %or.cond.i.i48.i.i.i.i = icmp ult i8 %i.by, -26
  br i1 %or.cond.i.i48.i.i.i.i, label %switch.early.test56.i.i.i.i, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread"

switch.early.test56.i.i.i.i:                      ; preds = %bb.aa
  switch i8 %.2.val.fr.i.i.i.i, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit" [
    i8 95, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread"
    i8 45, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread"
  ]

"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit": ; preds = %switch.early.test51.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 1
  br label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit"

"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit244": ; preds = %switch.early.test52.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 2
  br label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit"

"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit246": ; preds = %switch.early.test53.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.02967.i.i.i.i, i64 3
  br label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit"

"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit": ; preds = %switch.early.test.i.i.i.i, %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit244", %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit246", %switch.early.test54.i.i.i.i, %switch.early.test55.i.i.i.i, %switch.early.test56.i.i.i.i
  %i.cc = phi ptr [ %i.bs, %switch.early.test55.i.i.i.i ], [ %i.bs, %switch.early.test54.i.i.i.i ], [ %i.bs, %switch.early.test56.i.i.i.i ], [ %i.bg, %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit" ], [ %i.bg, %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit246" ], [ %i.bg, %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit244" ], [ %i.bg, %switch.early.test.i.i.i.i ]
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %switch.early.test55.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %switch.early.test54.i.i.i.i ], [ %.2.i.i.i.i, %switch.early.test56.i.i.i.i ], [ %i.bz, %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit" ], [ %i.cb, %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit246" ], [ %i.ca, %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.loopexit.split.loop.exit244" ], [ %.02967.i.i.i.i, %switch.early.test.i.i.i.i ]
  %i.cd = icmp eq ptr %i.cc, %.028.i.i.i.i
  br i1 %i.cd, label %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread", label %bb.ab

bb.ab:                                            ; preds = %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  store i64 351, ptr %17, align 8, !tbaa !24
  %.sroa.24.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str, ptr %.sroa.24.0..sroa_idx.i67, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.ce = tail call noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 13, i64 0, ptr nonnull @.str.28, i64 765, ptr nonnull @.str.42) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %_ZNO4absl12lts_2026052613StatusBuilderlsIA23_cEEOS1_RKT_.exit.thread, label %bb.ac

_ZNO4absl12lts_2026052613StatusBuilderlsIA23_cEEOS1_RKT_.exit.thread: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.ce, ptr %11, align 8, !tbaa !32
  store i64 55, ptr %12, align 8, !tbaa !32
  %i.ch = invoke noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ad unwind label %.body.i68 ; 6 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ci = load i64, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.cj = trunc i64 %i.ci to i1
  br i1 %i.cj, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = inttoptr i64 %i.ci to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ck)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #29
  unreachable

.body.i68:                                        ; preds = %bb.ac
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #28
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %common.resume

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.ch, ptr %i.co, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 424 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !35, !range !36, !noundef !37
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %.noexc74, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ch)
          to label %.noexc74 unwind label %bb.al

.noexc74:                                         ; preds = %bb.ah, %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 416 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 1 dereferenceable(23) @.str.23, i64 noundef 22)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA23_cEEOS1_RKT_.exit unwind label %bb.al ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA23_cEEOS1_RKT_.exit: ; preds = %.noexc74
  %i.cv = load i8, ptr %i.cp, align 8, !tbaa !35, !range !36, !noundef !37
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %.noexc78, label %bb.ai

bb.ai:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA23_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ch)
          to label %.noexc78 unwind label %bb.al

.noexc78:                                         ; preds = %bb.ai, %_ZNO4absl12lts_2026052613StatusBuilderlsIA23_cEEOS1_RKT_.exit
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef %2, i64 noundef %1)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit unwind label %bb.al ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit: ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA23_cEEOS1_RKT_.exit.thread, %.noexc78
  %i.cz = phi ptr [ %i.co, %.noexc78 ], [ %i.cg, %_ZNO4absl12lts_2026052613StatusBuilderlsIA23_cEEOS1_RKT_.exit.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !281
  %i.db = ptrtoint ptr %i.da to i64
  store i64 %i.db, ptr %10, align 8, !tbaa !29, !noalias !281
  store ptr null, ptr %i.cz, align 8, !tbaa !29, !noalias !281
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 351, ptr nonnull @.str, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit
  %i.dc = load ptr, ptr %10, align 8, !tbaa !29, !noalias !281 ; 3 uses
  %.not.i3.i84 = icmp eq ptr %i.dc, null
  br i1 %.not.i3.i84, label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit96, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i85

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i85: ; preds = %bb.aj
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.dc) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 448) #30
  br label %_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit96

bb.ak:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #28
  br label %.body88

_ZN4absl12lts_2026052613StatusBuilderD2Ev.exit96: ; preds = %bb.aj, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.bq

bb.al:                                            ; preds = %.noexc78, %bb.ai, %.noexc74, %bb.ah
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body88

.body88:                                          ; preds = %bb.ak, %bb.al
  %eh.lpad-body89 = phi { ptr, i32 } [ %i.de, %bb.al ], [ %i.dd, %bb.ak ]
  call void @_ZN4absl12lts_2026052613StatusBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %common.resume

"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread": ; preds = %switch.early.test56.i.i.i.i, %switch.early.test56.i.i.i.i, %bb.aa, %._crit_edge.i.i.i.i, %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.df = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.df, ptr %18, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.dg, align 8, !tbaa !56
  store i8 0, ptr %i.df, align 8, !tbaa !57
  switch i64 %1, label %.critedge.3 [
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.1
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.2
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.3
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97: ; preds = %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread"
  %bcmp.i98 = call i32 @bcmp(ptr nonnull @.str.44, ptr %2, i64 %1)
  %i.dh = icmp eq i32 %bcmp.i98, 0
  br i1 %i.dh, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.critedge.3

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97
  %.lcssa = phi ptr [ @_ZN13sentencepiece12_GLOBAL__N_124kNormalizationRules_blobE, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97 ], [ getelementptr inbounds nuw (i8, ptr @_ZN13sentencepiece12_GLOBAL__N_124kNormalizationRules_blobE, i64 72), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN13sentencepiece12_GLOBAL__N_124kNormalizationRules_blobE, i64 48), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN13sentencepiece12_GLOBAL__N_124kNormalizationRules_blobE, i64 24), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.1 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !283
  %i.dk = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !284
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !56
  %i.do = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.dn, ptr noundef %i.dj, i64 noundef %i.dl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.as ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.dp = load ptr, ptr %3, align 8, !tbaa !68
  %i.dq = load i64, ptr %i.dm, align 8, !tbaa !56
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !285
  invoke void @_ZN13sentencepiece14NormalizerSpecC2EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef null)
          to label %.noexc101 unwind label %bb.as

.noexc101:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  invoke void @_ZN13sentencepiece14NormalizerSpec24set_precompiled_charsmapEPKvm(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef %i.dp, i64 noundef %i.dq)
          to label %bb.am unwind label %bb.ap, !noalias !285

bb.am:                                            ; preds = %.noexc101
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !285
  invoke void @_ZN13sentencepiece10normalizer10NormalizerC1ERKNS_14NormalizerSpecE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %bb.an unwind label %bb.aq, !noalias !285

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !32, !noalias !287 ; 3 uses
  store i64 %i.ds, ptr %0, align 8, !tbaa !32, !alias.scope !287
  %i.dt = trunc i64 %i.ds to i1
  br i1 %i.dt, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = inttoptr i64 %i.ds to ptr
  %i.dv = atomicrmw add ptr %i.du, i32 1 monotonic, align 4, !noalias !287 ; 0 uses
  br label %bb.at

bb.ap:                                            ; preds = %.noexc101
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !285
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn.pn.i = phi { ptr, i32 } [ %i.dx, %bb.aq ], [ %i.dw, %bb.ap ]
  call void @_ZN13sentencepiece14NormalizerSpecD1Ev(ptr noundef nonnull align 8 dead_on_return(75) dereferenceable(80) %8) #28, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !285
  br label %.body102

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body102

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.1: ; preds = %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread"
  %bcmp.i98.1 = call i32 @bcmp(ptr nonnull @.str.46, ptr %2, i64 %1)
  %i.dz = icmp eq i32 %bcmp.i98.1, 0
  br i1 %i.dz, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.critedge.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.2: ; preds = %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread"
  %bcmp.i98.2 = call i32 @bcmp(ptr nonnull @.str.48, ptr %2, i64 %1)
  %i.ea = icmp eq i32 %bcmp.i98.2, 0
  br i1 %i.ea, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.critedge.3

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.3: ; preds = %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread"
  %bcmp.i98.3 = call i32 @bcmp(ptr nonnull @.str.50, ptr %2, i64 %1)
  %i.eb = icmp eq i32 %bcmp.i98.3, 0
  br i1 %i.eb, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.critedge.3

.critedge.3:                                      ; preds = %"_ZSt6all_ofIPKcZN13sentencepiece10normalizer7Builder22GetPrecompiledCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS7_SaIcEEEE3$_0EbT_SF_T0_.exit.thread", %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i97.3
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  store i64 377, ptr %19, align 8, !tbaa !24
  %.sroa.24.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str, ptr %.sroa.24.0..sroa_idx.i104, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ec = invoke noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 21, i64 0, ptr nonnull @.str.28, i64 765, ptr nonnull @.str.42)
          to label %.noexc108 unwind label %bb.bk ; 2 uses

bb.at:                                            ; preds = %bb.an, %bb.ao
  call void @_ZN13sentencepiece10normalizer10NormalizerD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %9) #28, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !285
  call void @_ZN13sentencepiece14NormalizerSpecD1Ev(ptr noundef nonnull align 8 dead_on_return(75) dereferenceable(80) %8) #28, !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !285
  br label %bb.bp

.noexc108:                                        ; preds = %.critedge.3
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ed = icmp eq i64 %i.ec, 1
  br i1 %i.ed, label %_ZNO4absl12lts_2026052613StatusBuilderlsIA35_cEEOS1_RKT_.exit.thread, label %bb.au

_ZNO4absl12lts_2026052613StatusBuilderlsIA35_cEEOS1_RKT_.exit.thread: ; preds = %.noexc108
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ee = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr null, ptr %i.ee, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNO4absl12lts_2026052613StatusBuilderlsIA5_cEEOS1_RKT_.exit

bb.au:                                            ; preds = %.noexc108
  store i64 %i.ec, ptr %6, align 8, !tbaa !32
  store i64 55, ptr %7, align 8, !tbaa !32
  %i.ef = invoke noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.av unwind label %.body.i105 ; 7 uses

bb.av:                                            ; preds = %bb.au
  %i.eg = load i64, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.eh = trunc i64 %i.eg to i1
  br i1 %i.eh, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ei = inttoptr i64 %i.eg to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ei)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #29
  unreachable

.body.i105:                                       ; preds = %bb.au
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #28
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body109

bb.ay:                                            ; preds = %bb.aw, %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  store ptr %i.ef, ptr %i.em, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 424 ; 3 uses
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %.noexc114, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ef)
          to label %.noexc114 unwind label %bb.bl

.noexc114:                                        ; preds = %bb.az, %bb.ay
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 416 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.es = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull align 1 dereferenceable(35) @.str.24, i64 noundef 34)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA35_cEEOS1_RKT_.exit unwind label %bb.bl ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA35_cEEOS1_RKT_.exit: ; preds = %.noexc114
  %i.et = load i8, ptr %i.en, align 8, !tbaa !35, !range !36, !noundef !37
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.noexc121, label %bb.ba

bb.ba:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA35_cEEOS1_RKT_.exit
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ef)
          to label %.noexc121 unwind label %bb.bl

.noexc121:                                        ; preds = %bb.ba, %_ZNO4absl12lts_2026052613StatusBuilderlsIA35_cEEOS1_RKT_.exit
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef %2, i64 noundef %1)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit123 unwind label %bb.bl ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit123: ; preds = %.noexc121
  %i.ex = load i8, ptr %i.en, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %.noexc126, label %bb.bb

bb.bb:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit123
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.ef)
          to label %.noexc126 unwind label %bb.bl

.noexc126:                                        ; preds = %bb.bb, %_ZNO4absl12lts_2026052613StatusBuilderlsISt17basic_string_viewIcSt11char_traitsIcEEEEOS1_RKT_.exit123
  %i.ez = load ptr, ptr %i.eq, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull align 1 dereferenceable(5) @.str.25, i64 noundef 4)
          to label %_ZNO4absl12lts_2026052613StatusBuilderlsIA5_cEEOS1_RKT_.exit unwind label %bb.bl ; 0 uses

_ZNO4absl12lts_2026052613StatusBuilderlsIA5_cEEOS1_RKT_.exit: ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA35_cEEOS1_RKT_.exit.thread, %.noexc126
  %i.fb = phi ptr [ %i.ee, %_ZNO4absl12lts_2026052613StatusBuilderlsIA35_cEEOS1_RKT_.exit.thread ], [ %i.em, %.noexc126 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  invoke void @_ZN13sentencepiece10GetDataDirB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20)
          to label %bb.bc unwind label %bb.bm

bb.bc:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsIA5_cEEOS1_RKT_.exit
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !29 ; 4 uses
  %.not.i.i.i128 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i128, label %_ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 424
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !35, !range !36, !noundef !37
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.fc)
          to label %.noexc130 unwind label %bb.bn

.noexc130:                                        ; preds = %bb.be
  %.pre.i.i129 = load ptr, ptr %i.fb, align 8, !tbaa !29
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc130, %bb.bd
  %i.fg = phi ptr [ %.pre.i.i129, %.noexc130 ], [ %i.fc, %bb.bd ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 416
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !41, !nonnull !37, !align !42
  %i.fj = load ptr, ptr %20, align 8, !tbaa !68
  %i.fk = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !56
  %i.fm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef %i.fj, i64 noundef %i.fl)
          to label %._ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit_crit_edge unwind label %bb.bn ; 0 uses

._ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit_crit_edge: ; preds = %bb.bf
  %.pre = load ptr, ptr %i.fb, align 8, !noalias !288
  %i.fn = ptrtoint ptr %.pre to i64
  br label %_ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit

_ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit: ; preds = %._ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit_crit_edge, %bb.bc
  %i.fo = phi i64 [ %i.fn, %._ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit_crit_edge ], [ 0, %bb.bc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %i.fo, ptr %5, align 8, !tbaa !29, !noalias !288
  store ptr null, ptr %i.fb, align 8, !tbaa !29, !noalias !288
  invoke void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 377, ptr nonnull @.str, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit
  %i.fp = load ptr, ptr %5, align 8, !tbaa !29, !noalias !288 ; 3 uses
  %.not.i3.i136 = icmp eq ptr %i.fp, null
  br i1 %.not.i3.i136, label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i138, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i137

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i137: ; preds = %bb.bg
  call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.fp) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef 448) #30
  br label %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i138

bb.bh:                                            ; preds = %_ZNO4absl12lts_2026052613StatusBuilderlsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEOS1_RKT_.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #28
  br label %.body140

_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i138: ; preds = %bb.bg, %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.fr = load ptr, ptr %20, align 8, !tbaa !68   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i138
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !57
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #30
  %.pre224 = load ptr, ptr %i.fb, align 8
  %i.fw = ptrtoint ptr %.pre224 to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fx = phi i64 [ %i.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 0, %_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev.exit.i138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %i.fx, ptr %4, align 8, !tbaa !29
  store ptr null, ptr %i.fb, align 8, !tbaa !29
  invoke void @_ZN4absl12lts_2026052613StatusBuilder7DestroyESt10unique_ptrINS1_3RepESt14default_deleteIS3_EE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fy = load ptr, ptr %4, align 8, !tbaa !29    ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN13sentencepiece10normalizer7Builder12LoadCharsMapESt17basic_string_viewIcSt11char_traitsIcEEPSt3mapISt6vectorIDiSaIDiEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE:bb.a
  %.sroa.2.0..sroa_idx.i1.i135 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i149 = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %.sroa.24.0..sroa_idx.i192 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE5clearEv.exit
  %i.cr = load ptr, ptr %17, align 8, !tbaa !489  ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !88
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull %20)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  br i1 %i.cv, label %bb.ah, label %bb.dc

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.cw = load ptr, ptr %20, align 8, !tbaa !68
  %i.cx = load i64, ptr %i.bq, align 8, !tbaa !56
  store i64 %i.cx, ptr %22, align 8, !tbaa !48, !alias.scope !493
  store ptr %i.cw, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !27, !alias.scope !493
  store i8 9, ptr %i.bz, align 8, !tbaa !57, !alias.scope !493
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !494
  invoke void @_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorINSt7__cxx1112basic_stringIcS7_SaIcEEESaISF_EESF_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.57") align 8 %21, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(18) %22)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !494
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  %i.cy = load ptr, ptr %i.ca, align 8, !tbaa !143 ; 8 uses
  %i.cz = load ptr, ptr %21, align 8, !tbaa !144  ; 4 uses
  %.not.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i, label %bb.aj, label %bb.ak, !prof !145

bb.aj:                                            ; preds = %bb.ai
  %i.da = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringImlEEPKcT_T0_S4_(i64 noundef 0, i64 noundef 1, ptr noundef nonnull @.str.27)
          to label %_ZN4absl12lts_2026052612log_internal12Check_GEImplImiEEPKcRKT_RKT0_S4_.exit unwind label %.loopexit.split-lp371.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = icmp eq i64 %i.dd, 32
  br i1 %i.de, label %bb.aq, label %.noexc130

bb.al:                                            ; preds = %bb.af
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.am:                                            ; preds = %bb.ah
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.db

_ZN4absl12lts_2026052612log_internal12Check_GEImplImiEEPKcRKT_RKT0_S4_.exit: ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull @.str, i32 noundef 689, ptr noundef nonnull %i.da) #31
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %_ZN4absl12lts_2026052612log_internal12Check_GEImplImiEEPKcRKT_RKT0_S4_.exit
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit127 unwind label %bb.ap

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit127: ; preds = %bb.an
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #29
  unreachable

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052612log_internal12Check_GEImplImiEEPKcRKT_RKT0_S4_.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %.loopexit.split-lp371

bb.ap:                                            ; preds = %bb.an
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #29
  unreachable

bb.aq:                                            ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.cb, align 8, !tbaa !146
  %.not.i128 = icmp eq ptr %i.cy, %i.dj
  br i1 %.not.i128, label %bb.ar, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  store ptr %i.dk, ptr %i.cy, align 8, !tbaa !54
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !56
  store i8 0, ptr %i.dk, align 8, !tbaa !57
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store ptr %i.dm, ptr %i.ca, align 8, !tbaa !143
  br label %.noexc130

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA1_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr %i.cy, ptr noundef nonnull align 1 dereferenceable(1) @.str.28)
          to label %..noexc130_crit_edge unwind label %.loopexit.split-lp371.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

..noexc130_crit_edge:                             ; preds = %bb.ar
  %.pre = load ptr, ptr %21, align 8, !tbaa !144
  br label %.noexc130

.loopexit.split-lp371.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.aj
  %lpad.loopexit.split-lp642 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp371

.noexc130:                                        ; preds = %..noexc130_crit_edge, %bb.ak, %._crit_edge.i.i.i
  %i.dn = phi ptr [ %.pre, %..noexc130_crit_edge ], [ %i.cz, %bb.ak ], [ %i.cz, %._crit_edge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !68 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !56 ; 8 uses
  store i64 %i.dq, ptr %26, align 8, !tbaa !48, !alias.scope !495
  store ptr %i.do, ptr %.sroa.2.0..sroa_idx.i1.i131, align 8, !tbaa !27, !alias.scope !495
  store i8 32, ptr %i.cc, align 8, !tbaa !57, !alias.scope !495
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  store i64 0, ptr %27, align 8, !tbaa !152, !alias.scope !496
  store i32 0, ptr %i.cd, align 8, !tbaa !153, !alias.scope !496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false), !alias.scope !496
  store ptr %26, ptr %i.cf, align 8, !tbaa !154, !alias.scope !496
  store i8 32, ptr %i.cg, align 8, !tbaa !57, !alias.scope !496
  %i.dr = icmp eq ptr %i.do, null
  br i1 %i.dr, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc130
  store i32 2, ptr %i.cd, align 8, !tbaa !153, !alias.scope !496
  br label %bb.aw

bb.at:                                            ; preds = %.noexc130
  %i.ds = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.cg, i64 %i.dq, ptr nonnull %i.do, i64 noundef 0)
          to label %.noexc132 unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc132:                                        ; preds = %bb.at
  %i.dt = extractvalue { i64, ptr } %i.ds, 0
  %i.du = extractvalue { i64, ptr } %i.ds, 1      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dq
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.noexc132
  store i32 1, ptr %i.cd, align 8, !tbaa !153, !alias.scope !496
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.noexc132
  %i.dx = load i64, ptr %27, align 8, !tbaa !152, !alias.scope !496 ; 5 uses
  %i.dy = icmp ugt i64 %i.dx, %i.dq
  br i1 %i.dy, label %.invoke, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

.invoke:                                          ; preds = %bb.av, %bb.bg
  %i.dz = phi i64 [ %i.gc, %bb.bg ], [ %i.dx, %bb.av ]
  %i.ea = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.bg ], [ %i.dq, %bb.av ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i64 noundef %i.dz, i64 noundef %i.ea) #34
          to label %.cont unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.av
  %i.eb = ptrtoint ptr %i.du to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dx ; 2 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.eb, %i.ed
  %i.ef = sub nuw i64 %i.dq, %i.dx
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ef, i64 %i.ee) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.ce, align 8, !tbaa !48, !alias.scope !496
  store ptr %i.ec, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !27, !alias.scope !496
  %i.eg = add i64 %i.dx, %i.dt
  %i.eh = add i64 %i.eg, %.sroa.speculated.i.i.i.i
  %.sroa.0.0.copyload.i.i.i134.pre = load i64, ptr %26, align 8, !tbaa !48, !noalias !497
  %.pre472 = load i32, ptr %i.cd, align 8, !tbaa !153
  %i.ei = icmp ne i32 %.pre472, 2
  br label %bb.aw, !llvm.loop !2

bb.aw:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i, %bb.as
  %i.ej = phi i1 [ %i.ei, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ false, %bb.as ]
  %.sroa.0.0.copyload.i.i.i134 = phi i64 [ %.sroa.0.0.copyload.i.i.i134.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %i.dq, %bb.as ] ; 2 uses
  %storemerge.i = phi i64 [ %i.eh, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %i.dq, %bb.as ] ; 2 uses
  store i64 %storemerge.i, ptr %27, align 8, !tbaa !152, !alias.scope !496
  %i.ek = icmp ne i64 %storemerge.i, %.sroa.0.0.copyload.i.i.i134
  %.not3.i418 = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %.not3.i418, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aw, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %.sroa.0275.0.copyload = load i64, ptr %i.ce, align 8, !tbaa !48 ; 4 uses
  %.sroa.8276.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !27 ; 4 uses
  switch i64 %.sroa.0275.0.copyload, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i [
    i64 0, label %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit
    i64 1, label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  ]

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %.lr.ph
  %i.el = load i16, ptr %.sroa.8276.0.copyload, align 1
  %i.em = icmp ne i16 %i.el, 11093
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i

_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.8276.0.copyload, i64 2 ; 2 uses
  %i.eq = add i64 %.sroa.0275.0.copyload, -2      ; 3 uses
  %i.er = icmp ult i64 %i.eq, 2
  br i1 %i.er, label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %.sroa.0275.0545 = phi i64 [ %i.eq, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ %.sroa.0275.0.copyload, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 2 uses
  %.sroa.8276.0544 = phi ptr [ %i.ep, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ %.sroa.8276.0.copyload, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 3 uses
  %i.es = load i16, ptr %.sroa.8276.0544, align 1
  %i.et = icmp ne i16 %i.es, 30768
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i, label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.8276.0544, i64 2
  %i.ex = add i64 %.sroa.0275.0545, -2
  br label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %.lr.ph, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  %.sroa.01.0.i = phi i64 [ %i.ex, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i ], [ %i.eq, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ %.sroa.0275.0545, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i ], [ %.sroa.0275.0.copyload, %.lr.ph ]
  %.sroa.4.0.i = phi ptr [ %i.ew, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i ], [ %i.ep, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit ], [ %.sroa.8276.0544, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i ], [ %.sroa.8276.0.copyload, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ey = invoke noundef zeroext i1 @_ZN4absl12lts_2026052616numbers_internal18safe_strtou32_baseESt17basic_string_viewIcSt11char_traitsIcEEPji(i64 %.sroa.01.0.i, ptr %.sroa.4.0.i, ptr noundef nonnull %i.b, i32 noundef 16)
          to label %bb.ax unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.ez = load i32, ptr %i.b, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.0.i = select i1 %i.ey, i32 %i.ez, i32 0       ; 2 uses
  %i.fa = load ptr, ptr %i.ch, align 8, !tbaa !61 ; 4 uses
  %i.fb = load ptr, ptr %i.ci, align 8, !tbaa !141
  %.not.i.i137 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not.i.i137, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store i32 %.0.i, ptr %i.fa, align 4, !tbaa !70
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store ptr %i.fc, ptr %i.ch, align 8, !tbaa !61
  br label %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit

bb.az:                                            ; preds = %bb.ax
  %i.fd = load ptr, ptr %24, align 8, !tbaa !62   ; 4 uses
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff                    ; 6 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775804
  br i1 %i.fh, label %bb.ba, label %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #34
          to label %.noexc139 unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc139:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.az
  %i.fi = ashr exact i64 %i.fg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i138 = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i138, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 2305843009213693951)
  %i.fm = select i1 %i.fk, i64 2305843009213693951, i64 %i.fl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fn = shl nuw nsw i64 %i.fm, 2
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #35
          to label %.noexc140 unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc140:                                        ; preds = %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 %i.fg ; 2 uses
  store i32 %.0.i, ptr %i.fp, align 4, !tbaa !70
  %i.fq = icmp sgt i64 %i.fg, 0
  br i1 %i.fq, label %bb.bb, label %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i

bb.bb:                                            ; preds = %.noexc140
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fo, ptr align 4 %i.fd, i64 %i.fg, i1 false)
  br label %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bb, %.noexc140
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fg) #30
  br label %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.fo, ptr %24, align 8, !tbaa !62
  store ptr %i.fr, ptr %i.ch, align 8, !tbaa !61
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.fs, ptr %i.ci, align 8, !tbaa !141
  br label %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit

_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit:        ; preds = %.lr.ph, %bb.ay, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i
  %i.ft = load i32, ptr %i.cd, align 8, !tbaa !153
  %i.fu = icmp eq i32 %i.ft, 1
  br i1 %i.fu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit
  store i32 2, ptr %i.cd, align 8, !tbaa !153
  %.pre474 = load i64, ptr %27, align 8
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.be:                                            ; preds = %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit
  %i.fv = load ptr, ptr %i.cf, align 8, !tbaa !154 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.fv, align 8, !tbaa !48 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i141 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i141, align 8, !tbaa !27 ; 3 uses
  %i.fw = load i64, ptr %27, align 8, !tbaa !152
  %i.fx = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.cg, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.fw)
          to label %.noexc142 unwind label %.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc142:                                        ; preds = %bb.be
  %i.fy = extractvalue { i64, ptr } %i.fx, 0
  %i.fz = extractvalue { i64, ptr } %i.fx, 1      ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.noexc142
  store i32 1, ptr %i.cd, align 8, !tbaa !153
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.noexc142
  %i.gc = load i64, ptr %27, align 8, !tbaa !152  ; 5 uses
  %i.gd = icmp ugt i64 %i.gc, %.sroa.0.0.copyload.i.i
  br i1 %i.gd, label %.invoke, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.bg
  %i.ge = ptrtoint ptr %i.fz to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.gc ; 2 uses
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = sub i64 %i.ge, %i.gg
  %i.gi = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.gc
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.gh) ; 2 uses
  store i64 %.sroa.speculated.i.i, ptr %i.ce, align 8, !tbaa !48
  store ptr %i.gf, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !27
  %i.gj = add i64 %i.gc, %i.fy
  %i.gk = add i64 %i.gj, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.gk, ptr %27, align 8, !tbaa !152
  %.pre473 = load i32, ptr %i.cd, align 8, !tbaa !153
  %i.gl = icmp ne i32 %.pre473, 2
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, !llvm.loop !2

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %bb.bd, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.gm = phi i64 [ %.pre474, %bb.bd ], [ %i.gk, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %i.gn = phi i1 [ false, %bb.bd ], [ %i.gl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ]
  %i.go = icmp ne i64 %i.gm, %.sroa.0.0.copyload.i.i.i134
  %.not3.i = select i1 %i.gn, i1 true, i1 %i.go
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge

.loopexit.split-lp366.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.be, %bb.at, %.invoke, %bb.ba
  %lpad.loopexit.split-lp645 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.cy

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.gp = load ptr, ptr %21, align 8, !tbaa !144  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !68 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !56 ; 8 uses
  store i64 %i.gt, ptr %28, align 8, !tbaa !48, !alias.scope !498
  store ptr %i.gr, ptr %.sroa.2.0..sroa_idx.i1.i135, align 8, !tbaa !27, !alias.scope !498
  store i8 32, ptr %i.cj, align 8, !tbaa !57, !alias.scope !498
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  store i64 0, ptr %29, align 8, !tbaa !152, !alias.scope !499
  store i32 0, ptr %i.ck, align 8, !tbaa !153, !alias.scope !499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false), !alias.scope !499
  store ptr %28, ptr %i.cm, align 8, !tbaa !154, !alias.scope !499
  store i8 32, ptr %i.cn, align 8, !tbaa !57, !alias.scope !499
  %i.gu = icmp eq ptr %i.gr, null
  br i1 %i.gu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %._crit_edge
  store i32 2, ptr %i.ck, align 8, !tbaa !153, !alias.scope !499
  br label %bb.bl

bb.bi:                                            ; preds = %._crit_edge
  %i.gv = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, i64 %i.gt, ptr nonnull %i.gr, i64 noundef 0)
          to label %.noexc151 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc151:                                        ; preds = %bb.bi
  %i.gw = extractvalue { i64, ptr } %i.gv, 0
  %i.gx = extractvalue { i64, ptr } %i.gv, 1      ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gt
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.noexc151
  store i32 1, ptr %i.ck, align 8, !tbaa !153, !alias.scope !499
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.noexc151
  %i.ha = load i64, ptr %29, align 8, !tbaa !152, !alias.scope !499 ; 5 uses
  %i.hb = icmp ugt i64 %i.ha, %i.gt
  br i1 %i.hb, label %.invoke588, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i147

.invoke588:                                       ; preds = %bb.bk, %bb.bw
  %i.hc = phi i64 [ %i.jj, %bb.bw ], [ %i.ha, %bb.bk ]
  %i.hd = phi i64 [ %.sroa.0.0.copyload.i.i183, %bb.bw ], [ %i.gt, %bb.bk ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i64 noundef %i.hc, i64 noundef %i.hd) #34
          to label %.cont589 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont589:                                         ; preds = %.invoke588
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i147: ; preds = %bb.bk
  %i.he = ptrtoint ptr %i.gx to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ha ; 2 uses
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.he, %i.hg
  %i.hi = sub nuw i64 %i.gt, %i.ha
  %.sroa.speculated.i.i.i.i148 = call i64 @llvm.umin.i64(i64 %i.hi, i64 %i.hh) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i148, ptr %i.cl, align 8, !tbaa !48, !alias.scope !499
  store ptr %i.hf, ptr %.sroa.4.0..sroa_idx.i.i.i149, align 8, !tbaa !27, !alias.scope !499
  %i.hj = add i64 %i.ha, %i.gw
  %i.hk = add i64 %i.hj, %.sroa.speculated.i.i.i.i148
  %.sroa.0.0.copyload.i.i.i154.pre = load i64, ptr %28, align 8, !tbaa !48, !noalias !500
  %.pre476 = load i32, ptr %i.ck, align 8, !tbaa !153
  %i.hl = icmp ne i32 %.pre476, 2
  br label %bb.bl, !llvm.loop !2

bb.bl:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i147, %bb.bh
  %i.hm = phi i1 [ %i.hl, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i147 ], [ false, %bb.bh ]
  %.sroa.0.0.copyload.i.i.i154 = phi i64 [ %.sroa.0.0.copyload.i.i.i154.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i147 ], [ %i.gt, %bb.bh ] ; 2 uses
  %storemerge.i150 = phi i64 [ %i.hk, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i147 ], [ %i.gt, %bb.bh ] ; 2 uses
  store i64 %storemerge.i150, ptr %29, align 8, !tbaa !152, !alias.scope !499
  %i.hn = icmp ne i64 %storemerge.i150, %.sroa.0.0.copyload.i.i.i154
  %.not3.i155419 = select i1 %i.hm, i1 true, i1 %i.hn
  br i1 %.not3.i155419, label %.lr.ph421, label %._crit_edge422

._crit_edge422:                                   ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit191, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  %i.ho = load ptr, ptr %24, align 8, !tbaa !59   ; 6 uses
  %i.hp = load ptr, ptr %i.ch, align 8, !tbaa !59 ; 4 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp                ; 2 uses
  br i1 %i.hq, label %bb.bx, label %bb.cn

bb.bm:                                            ; preds = %.critedge.i, %.loopexit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.lr.ph421:                                        ; preds = %bb.bl, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit191
  %.sroa.0266.0.copyload = load i64, ptr %i.cl, align 8, !tbaa !48 ; 4 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i149, align 8, !tbaa !27 ; 4 uses
  switch i64 %.sroa.0266.0.copyload, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i159 [
    i64 0, label %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit182
    i64 1, label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i166
  ]

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i159: ; preds = %.lr.ph421
  %i.hs = load i16, ptr %.sroa.8.0.copyload, align 1
  %i.ht = icmp ne i16 %i.hs, 11093
  %i.hu = zext i1 %i.ht to i32
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit163, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i164

_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit163: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i159
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 2 ; 2 uses
  %i.hx = add i64 %.sroa.0266.0.copyload, -2      ; 3 uses
  %i.hy = icmp ult i64 %i.hx, 2
  br i1 %i.hy, label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i166, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i164

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i164: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i159, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit163
  %.sroa.0266.0552 = phi i64 [ %i.hx, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit163 ], [ %.sroa.0266.0.copyload, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i159 ] ; 2 uses
  %.sroa.8.0551 = phi ptr [ %i.hw, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit163 ], [ %.sroa.8.0.copyload, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i159 ] ; 3 uses
  %i.hz = load i16, ptr %.sroa.8.0551, align 1
  %i.ia = icmp ne i16 %i.hz, 30768
  %i.ib = zext i1 %i.ia to i32
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i170, label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i166

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i170: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i164
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.8.0551, i64 2
  %i.ie = add i64 %.sroa.0266.0552, -2
  br label %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i166

_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i166: ; preds = %.lr.ph421, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i170, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i164, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit163
  %.sroa.01.0.i167 = phi i64 [ %i.ie, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i170 ], [ %i.hx, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit163 ], [ %.sroa.0266.0552, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i164 ], [ %.sroa.0266.0.copyload, %.lr.ph421 ]
  %.sroa.4.0.i168 = phi ptr [ %i.id, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i.i170 ], [ %i.hw, %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit163 ], [ %.sroa.8.0551, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i164 ], [ %.sroa.8.0.copyload, %.lr.ph421 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.if = invoke noundef zeroext i1 @_ZN4absl12lts_2026052616numbers_internal18safe_strtou32_baseESt17basic_string_viewIcSt11char_traitsIcEEPji(i64 %.sroa.01.0.i167, ptr %.sroa.4.0.i168, ptr noundef nonnull %i.a, i32 noundef 16)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i166
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.0.i169 = select i1 %i.if, i32 %i.ig, i32 0    ; 2 uses
  %i.ih = load ptr, ptr %i.co, align 8, !tbaa !61 ; 4 uses
  %i.ii = load ptr, ptr %i.cp, align 8, !tbaa !141
  %.not.i.i173 = icmp eq ptr %i.ih, %i.ii
  br i1 %.not.i.i173, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i32 %.0.i169, ptr %i.ih, align 4, !tbaa !70
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store ptr %i.ij, ptr %i.co, align 8, !tbaa !61
  br label %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit182

bb.bp:                                            ; preds = %bb.bn
  %i.ik = load ptr, ptr %25, align 8, !tbaa !62   ; 4 uses
  %i.il = ptrtoint ptr %i.ih to i64
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = sub i64 %i.il, %i.im                    ; 6 uses
  %i.io = icmp eq i64 %i.in, 9223372036854775804
  br i1 %i.io, label %bb.bq, label %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i174

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #34
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc180:                                        ; preds = %bb.bq
  unreachable

_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i174: ; preds = %bb.bp
  %i.ip = ashr exact i64 %i.in, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i175 = call i64 @llvm.umax.i64(i64 %i.ip, i64 1)
  %i.iq = add nsw i64 %.sroa.speculated.i.i.i.i175, %i.ip ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.ip
  %i.is = call i64 @llvm.umin.i64(i64 %i.iq, i64 2305843009213693951)
  %i.it = select i1 %i.ir, i64 2305843009213693951, i64 %i.is ; 3 uses
  %.not.i.i.i.i176 = icmp ne i64 %i.it, 0
  call void @llvm.assume(i1 %.not.i.i.i.i176)
  %i.iu = shl nuw nsw i64 %i.it, 2
  %i.iv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #35
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc181:                                        ; preds = %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i174
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 %i.in ; 2 uses
  store i32 %.0.i169, ptr %i.iw, align 4, !tbaa !70
  %i.ix = icmp sgt i64 %i.in, 0
  br i1 %i.ix, label %bb.br, label %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i177

bb.br:                                            ; preds = %.noexc181
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iv, ptr align 4 %i.ik, i64 %i.in, i1 false)
  br label %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i177

_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i177: ; preds = %bb.br, %.noexc181
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %.not.i17.i.i.i178 = icmp eq ptr %i.ik, null
  br i1 %.not.i17.i.i.i178, label %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i179, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i177
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.in) #30
  br label %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i179

_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i179: ; preds = %bb.bs, %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i177
  store ptr %i.iv, ptr %25, align 8, !tbaa !62
  store ptr %i.iy, ptr %i.co, align 8, !tbaa !61
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.it
  store ptr %i.iz, ptr %i.cp, align 8, !tbaa !141
  br label %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit182

_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit182:     ; preds = %.lr.ph421, %bb.bo, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i179
  %i.ja = load i32, ptr %i.ck, align 8, !tbaa !153
  %i.jb = icmp eq i32 %i.ja, 1
  br i1 %i.jb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit182
  store i32 2, ptr %i.ck, align 8, !tbaa !153
  %.pre478 = load i64, ptr %29, align 8
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit191

bb.bu:                                            ; preds = %_ZNSt6vectorIDiSaIDiEE9push_backEODi.exit182
  %i.jc = load ptr, ptr %i.cm, align 8, !tbaa !154 ; 2 uses
  %.sroa.0.0.copyload.i.i183 = load i64, ptr %i.jc, align 8, !tbaa !48 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i184 = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %.sroa.2.0.copyload.i.i185 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i184, align 8, !tbaa !27 ; 3 uses
  %i.jd = load i64, ptr %29, align 8, !tbaa !152
  %i.je = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, i64 %.sroa.0.0.copyload.i.i183, ptr %.sroa.2.0.copyload.i.i185, i64 noundef %i.jd)
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc189:                                        ; preds = %bb.bu
  %i.jf = extractvalue { i64, ptr } %i.je, 0
  %i.jg = extractvalue { i64, ptr } %i.je, 1      ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i185, i64 %.sroa.0.0.copyload.i.i183
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.noexc189
  store i32 1, ptr %i.ck, align 8, !tbaa !153
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.noexc189
  %i.jj = load i64, ptr %29, align 8, !tbaa !152  ; 5 uses
  %i.jk = icmp ugt i64 %i.jj, %.sroa.0.0.copyload.i.i183
  br i1 %i.jk, label %.invoke588, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i186

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i186: ; preds = %bb.bw
  %i.jl = ptrtoint ptr %i.jg to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i185, i64 %i.jj ; 2 uses
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = sub i64 %i.jl, %i.jn
  %i.jp = sub nuw i64 %.sroa.0.0.copyload.i.i183, %i.jj
  %.sroa.speculated.i.i187 = call i64 @llvm.umin.i64(i64 %i.jp, i64 %i.jo) ; 2 uses
  store i64 %.sroa.speculated.i.i187, ptr %i.cl, align 8, !tbaa !48
  store ptr %i.jm, ptr %.sroa.4.0..sroa_idx.i.i.i149, align 8, !tbaa !27
  %i.jq = add i64 %i.jj, %i.jf
  %i.jr = add i64 %i.jq, %.sroa.speculated.i.i187 ; 2 uses
  store i64 %i.jr, ptr %29, align 8, !tbaa !152
  %.pre477 = load i32, ptr %i.ck, align 8, !tbaa !153
  %i.js = icmp ne i32 %.pre477, 2
  br label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit191, !llvm.loop !2

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit191: ; preds = %bb.bt, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i186
  %i.jt = phi i64 [ %.pre478, %bb.bt ], [ %i.jr, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i186 ]
  %i.ju = phi i1 [ false, %bb.bt ], [ %i.js, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i186 ]
  %i.jv = icmp ne i64 %i.jt, %.sroa.0.0.copyload.i.i.i154
  %.not3.i155 = select i1 %i.ju, i1 true, i1 %i.jv
  br i1 %.not3.i155, label %.lr.ph421, label %._crit_edge422

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4absl12lts_2026052613ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i166, %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i174, %bb.bu, %bb.bi, %.invoke588, %bb.bq
  %lpad.loopexit.split-lp649 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %bb.cy

bb.bx:                                            ; preds = %._crit_edge422
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  store i64 709, ptr %30, align 8, !tbaa !24
  store ptr @.str, ptr %.sroa.24.0..sroa_idx.i192, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.jw = invoke noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef 53, i64 0, ptr nonnull @.str.28, i64 765, ptr nonnull @.str.42)
          to label %.noexc196 unwind label %bb.cl ; 2 uses

.noexc196:                                        ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.jx = icmp eq i64 %i.jw, 1
  br i1 %i.jx, label %_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit204.thread, label %bb.by

_ZNO4absl12lts_2026052613StatusBuilderlsIA15_cEEOS1_RKT_.exit204.thread: ; preds = %.noexc196
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNO4absl12lts_2026052613StatusBuilderlsIA3_cEEOS1_RKT_.exit228

bb.by:                                            ; preds = %.noexc196
  store i64 %i.jw, ptr %7, align 8, !tbaa !32
  store i64 55, ptr %8, align 8, !tbaa !32
  %i.jy = invoke noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bz unwind label %.body.i193 ; 11 uses

bb.bz:                                            ; preds = %bb.by
  %i.jz = load i64, ptr %7, align 8, !tbaa !32    ; 2 uses
  %i.ka = trunc i64 %i.jz to i1
  br i1 %i.ka, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kb = inttoptr i64 %i.jz to ptr
  invoke void @_ZNK4absl12lts_2026052615status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(72) %i.kb)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #29
  unreachable

.body.i193:                                       ; preds = %bb.by
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #28
  call void @_ZN4absl12lts_202605266StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body197

bb.cc:                                            ; preds = %bb.ca, %bb.bz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jy) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.jy, ptr %i.cq, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jy, i64 424 ; 6 uses
  %i.kg = load i8, ptr %i.kf, align 8, !tbaa !35, !range !36, !noundef !37
  %i.kh = trunc nuw i8 %i.kg to i1
  br i1 %i.kh, label %.noexc202, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.jy)
end_hunk_2
begin_hunk_3_@_ZN13sentencepiece10normalizer12_GLOBAL__N_19NormalizeERKSt3mapISt6vectorIDiSaIDiEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEERS9_i:bb.a
  %i.bq = getelementptr inbounds i8, ptr %.sroa.10.096, i64 -4 ; 2 uses
  %i.br = icmp eq ptr %.sroa.054.0, %i.bq
  br i1 %i.br, label %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread154, label %.lr.ph.i.i.i, !llvm.loop !588

_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread154: ; preds = %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread, %_ZNSt6vectorIDiSaIDiEEC2IN9__gnu_cxx17__normal_iteratorIPKDiS1_EEvEET_S8_RKS0_.exit, %.lr.ph
  %.not.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread154
  %i.bs = load i32, ptr %i.v, align 4, !tbaa !70
  store i32 %i.bs, ptr %i.r, align 4, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.bt, ptr %i.k, align 8, !tbaa !61
  br label %_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit

bb.q:                                             ; preds = %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit.thread154
  %i.bu = ptrtoint ptr %i.p to i64
  %i.bv = ptrtoint ptr %i.q to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 6 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775804
  br i1 %i.bx, label %bb.r, label %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #34
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.by = ashr exact i64 %i.bw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 2305843009213693951)
  %i.cc = select i1 %i.ca, i64 2305843009213693951, i64 %i.cb ; 3 uses
  %.not.i.i.i37 = icmp ne i64 %i.cc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i37)
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #35
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc38:                                         ; preds = %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  %i.cg = load i32, ptr %i.v, align 4, !tbaa !70
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !70
  %i.ch = icmp sgt i64 %i.bw, 0
  br i1 %i.ch, label %bb.s, label %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc38
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ce, ptr align 4 %i.q, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc38
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bw) #30
  br label %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i

_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i
  store ptr %i.ce, ptr %0, align 8, !tbaa !62
  store ptr %i.ci, ptr %i.k, align 8, !tbaa !61
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cc ; 2 uses
  store ptr %i.cj, ptr %i.l, align 8, !tbaa !141
  br label %_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit

_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit:       ; preds = %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i, %bb.p
  %i.ck = phi ptr [ %i.cj, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i ], [ %i.p, %bb.p ] ; 2 uses
  %i.cl = phi ptr [ %i.ce, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i ], [ %i.q, %bb.p ]
  %.pre.i.i.i.i.i121 = phi ptr [ %i.ci, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i ], [ %i.bt, %bb.p ]
  %i.cm = add i64 %.03098, 1
  br label %bb.aa

.loopexit:                                        ; preds = %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit80 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.x, %bb.r
  %i.cn = phi ptr [ %i.de, %bb.x ], [ %i.p, %bb.r ]
  %i.co = phi ptr [ %i.df, %bb.x ], [ %i.q, %bb.r ]
  %lpad.loopexit.split-lp81 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %i.cp = phi ptr [ %i.de, %.loopexit ], [ %i.p, %.loopexit.split-lp.loopexit ], [ %i.cn, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cq = phi ptr [ %i.df, %.loopexit ], [ %i.q, %.loopexit.split-lp.loopexit ], [ %i.co, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit80, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp81, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %.sroa.054.0, null
  br i1 %.not.i.i.i39, label %.body, label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp
  %i.cr = ptrtoint ptr %.sroa.15.0 to i64
  %i.cs = ptrtoint ptr %.sroa.054.0 to i64
  %i.ct = sub i64 %i.cr, %i.cs
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.0, i64 noundef %i.ct) #30
  br label %.body

_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit: ; preds = %_ZNKSt4lessISt6vectorIDiSaIDiEEEclERKS2_S5_.exit.i.i, %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !59 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !59
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 2                 ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i
  %i.de = phi ptr [ %i.ea, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ], [ %i.p, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ] ; 3 uses
  %i.df = phi ptr [ %i.eb, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ], [ %i.q, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ] ; 7 uses
  %.pre8.i.i.i.i.i125 = phi ptr [ %.pre8.i.i.i.i.i126, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ], [ %.pre8.i.i.i.i.i, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ]
  %i.dg = phi ptr [ %i.ec, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ], [ %.pre8.i.i.i.i.i, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ] ; 3 uses
  %i.dh = phi ptr [ %i.ed, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ], [ %i.r, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ] ; 3 uses
  %.07.i.i.i.i.i = phi i64 [ %i.ef, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ], [ %i.dc, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %i.ee, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ], [ %i.cw, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dh, %i.dg
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.di = load i32, ptr %.056.i.i.i.i.i, align 4, !tbaa !70
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !70
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  store ptr %i.dj, ptr %i.k, align 8, !tbaa !61
  br label %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = ptrtoint ptr %i.df to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 6 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775804
  br i1 %i.dn, label %bb.x, label %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #34
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.do = ashr exact i64 %i.dm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 2305843009213693951)
  %i.ds = select i1 %i.dq, i64 2305843009213693951, i64 %i.dr ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i41 = icmp ne i64 %i.ds, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i41)
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #35
          to label %.noexc43 unwind label %.loopexit ; 5 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIDiSaIDiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.dm ; 2 uses
  %i.dw = load i32, ptr %.056.i.i.i.i.i, align 4, !tbaa !70
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !70
  %i.dx = icmp sgt i64 %i.dm, 0
  br i1 %i.dx, label %bb.y, label %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %.noexc43
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.du, ptr align 4 %i.df, i64 %i.dm, i1 false)
  br label %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.y, %.noexc43
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dm) #30
  br label %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.z, %_ZNSt6vectorIDiSaIDiEE11_S_relocateEPDiS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  store ptr %i.du, ptr %0, align 8, !tbaa !62
  store ptr %i.dy, ptr %i.k, align 8, !tbaa !61
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ds ; 4 uses
  store ptr %i.dz, ptr %i.l, align 8, !tbaa !141
  br label %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.v
  %i.ea = phi ptr [ %i.de, %bb.v ], [ %i.dz, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.eb = phi ptr [ %i.df, %bb.v ], [ %i.du, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.pre8.i.i.i.i.i126 = phi ptr [ %.pre8.i.i.i.i.i125, %bb.v ], [ %i.dz, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ec = phi ptr [ %i.dg, %bb.v ], [ %i.dz, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.ed = phi ptr [ %i.dj, %bb.v ], [ %i.dy, %_ZNSt6vectorIDiSaIDiEE17_M_realloc_insertIJRKDiEEEvN9__gnu_cxx17__normal_iteratorIPDiS1_EEDpOT_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 4
  %i.ef = add nsw i64 %.07.i.i.i.i.i, -1
  %5 = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %5, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit, !llvm.loop !589

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit
  %i.eg = phi ptr [ %i.p, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ], [ %i.ea, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ]
  %i.eh = phi ptr [ %i.q, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ], [ %i.eb, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ]
  %.pre8.i.i.i.i.i124 = phi ptr [ %.pre8.i.i.i.i.i, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ], [ %.pre8.i.i.i.i.i126, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ]
  %.pre.i.i.i.i.i120 = phi ptr [ %i.r, %_ZNKSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE4findERS6_.exit ], [ %i.ed, %_ZNSt20back_insert_iteratorISt6vectorIDiSaIDiEEEaSERKDi.exit.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !61
  %i.ek = load ptr, ptr %i.cu, align 8, !tbaa !62
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 2
  %i.ep = add i64 %i.eo, %.03098
  br label %bb.aa

bb.aa:                                            ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit, %_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit
  %i.eq = phi ptr [ %i.ck, %_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit ], [ %i.eg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit ]
  %i.er = phi ptr [ %i.cl, %_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit ], [ %i.eh, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit ]
  %.pre8.i.i.i.i.i123 = phi ptr [ %i.ck, %_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit ], [ %.pre8.i.i.i.i.i124, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit ]
  %.pre.i.i.i.i.i119 = phi ptr [ %.pre.i.i.i.i.i121, %_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit ], [ %.pre.i.i.i.i.i120, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit ]
  %.131 = phi i64 [ %i.cm, %_ZNSt6vectorIDiSaIDiEE9push_backERKDi.exit ], [ %i.ep, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKDiSt6vectorIDiSaIDiEEEESt20back_insert_iteratorIS6_EET0_T_SB_SA_.exit ] ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %.sroa.054.0, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit46, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = ptrtoint ptr %.sroa.15.0 to i64
  %i.et = ptrtoint ptr %.sroa.054.0 to i64
  %i.eu = sub i64 %i.es, %i.et
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.0, i64 noundef %i.eu) #30
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit46

_ZNSt6vectorIDiSaIDiEED2Ev.exit46:                ; preds = %bb.aa, %bb.ab
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !61
  %i.ew = load ptr, ptr %2, align 8, !tbaa !62    ; 2 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 2                 ; 2 uses
  %i.fb = icmp ult i64 %.131, %i.fa
  br i1 %i.fb, label %bb.e, label %._crit_edge, !llvm.loop !590

.body:                                            ; preds = %_ZNSt12_Vector_baseIDiSaIDiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u, %.loopexit.split-lp
  %i.fc = phi ptr [ %i.cp, %.loopexit.split-lp ], [ %i.cp, %bb.u ], [ %i.p, %_ZNSt12_Vector_baseIDiSaIDiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fd = phi ptr [ %i.cq, %.loopexit.split-lp ], [ %i.cq, %bb.u ], [ %i.q, %_ZNSt12_Vector_baseIDiSaIDiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.phi, %bb.u ], [ %lpad.loopexit.split-lp238, %_ZNSt12_Vector_baseIDiSaIDiEED2Ev.exit.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i47 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIDiSaIDiEED2Ev.exit49, label %bb.ac

bb.ac:                                            ; preds = %.body
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fg) #30
  br label %_ZNSt6vectorIDiSaIDiEED2Ev.exit49

_ZNSt6vectorIDiSaIDiEED2Ev.exit49:                ; preds = %.body, %bb.ac
  resume { ptr, i32 } %.pn.pn

._crit_edge:                                      ; preds = %_ZNSt6vectorIDiSaIDiEED2Ev.exit46, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapISt6vectorIDiSaIDiEES2_St4lessIS2_ESaISt4pairIKS2_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  invoke void @_ZNSt8_Rb_treeISt6vectorIDiSaIDiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeISt6vectorIDiSaIDiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #29
  unreachable

_ZNSt8_Rb_treeISt6vectorIDiSaIDiEESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052613StatusBuilder11InitRepImplENS0_6StatusE(ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

declare noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef, i64, ptr, i64, ptr) local_unnamed_addr #6

declare void @_ZN4absl12lts_2026052613StatusBuilder31CreateStatusAndConditionallyLogENS0_14SourceLocationESt10unique_ptrINS1_3RepESt14default_deleteIS4_EE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8, i64, ptr, ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN4absl12lts_2026052613StatusBuilder3RepESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit

_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit: ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 448) #30
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN4absl12lts_2026052613StatusBuilder3RepEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2026052613StatusBuilder3RepD1Ev(ptr noundef nonnull align 8 dead_on_return(446) dereferenceable(446)) unnamed_addr #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

declare void @_ZN4absl12lts_2026052613StatusBuilder7DestroyESt10unique_ptrINS1_3RepESt14default_deleteIS3_EE(ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052612log_internal10LogMessagelsImEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi3EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8, i64, ptr, i64, ptr) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN13sentencepiece14NormalizerSpec24set_precompiled_charsmapEPKvm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !24
  %i.d = or i32 %i.c, 2
  store i32 %i.d, ptr %i.b, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !54
  %i.g = icmp eq ptr %1, null
  %i.h = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #34
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %2, ptr %i.a, align 8, !tbaa !48
  %i.i = icmp ugt i64 %2, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !68
  %i.k = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.k, ptr %i.f, align 8, !tbaa !57
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %2, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %1, align 1, !tbaa !57
  store i8 %i.m, ptr %i.l, align 1, !tbaa !57
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !56
  %i.p = load ptr, ptr %3, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !593  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.u = and i64 %i.t, 1
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit, label %bb.f, !prof !155

bb.f:                                             ; preds = %bb.e
end_hunk_3
begin_hunk_4_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_SH_SH_T0_:bb.a
  %i.ca = load ptr, ptr %2, align 8, !tbaa !68    ; 2 uses
  %i.cb = tail call i32 @memcmp(ptr noundef %i.ca, ptr noundef %i.bz, i64 noundef %.sroa.speculated.i.i.i.i71) #28 ; 2 uses
  %.not.i.i.i.i73 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i73, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i83, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i74

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i84: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit70.thread89
  %i.cc = sub i64 %i.d, %i.bg
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit40.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i79

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i83: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i72
  %i.ce = sub i64 %i.d, %i.bg
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit40.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i75

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i74: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i72
  %i.cg = icmp slt i32 %i.cb, 0
  br i1 %i.cg, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit40.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i75

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i75: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i74, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i83
  %i.ch = tail call i32 @memcmp(ptr noundef %i.bz, ptr noundef %i.ca, i64 noundef %.sroa.speculated.i.i.i.i71) #28 ; 2 uses
  %.not.i.i8.i.i76 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i8.i.i76, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i79, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i77

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i79: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i75, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i84
  %i.ci = sub i64 %i.bg, %i.d
  %spec.select7.i.i.i11.i.i80 = tail call i64 @llvm.smax.i64(i64 %i.ci, i64 -2147483648)
  %.08.i.i.i12.i.i81 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11.i.i80, i64 2147483647)
  %.0.i6.i.i13.i.i82 = trunc nsw i64 %.08.i.i.i12.i.i81 to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i77

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i77: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i79, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i75
  %.0.i.i9.i.i78 = phi i32 [ %i.ch, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i75 ], [ %.0.i6.i.i13.i.i82, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i79 ]
  %i.cj = icmp slt i32 %.0.i.i9.i.i78, 0
  br i1 %i.cj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85.thread90, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i77
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !78
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !78
  %i.co = icmp slt i32 %i.cl, %i.cn
  br i1 %i.co, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit40.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85.thread90

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85.thread90: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i77, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit40.thread

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit40.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i84, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i74, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i83, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit70, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i69, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i59, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i68, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit55, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i54, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i44, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i53, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit40, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i39, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i29, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i38, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85.thread90, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit55.thread88
  %.sink105 = phi ptr [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit55 ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85.thread90 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit70 ], [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit40 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit55.thread88 ], [ %2, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i38 ], [ %2, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i29 ], [ %2, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i39 ], [ %3, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i53 ], [ %3, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i44 ], [ %3, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i54 ], [ %1, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i68 ], [ %1, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i59 ], [ %1, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i69 ], [ %3, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i83 ], [ %3, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i74 ], [ %3, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i84 ], [ %3, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit85 ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %.sink105) #28
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink105, i64 32 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !24
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !24
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !24
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEET_SH_SH_SH_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.025.0 = phi ptr [ %0, %bb.a ], [ %i.at, %bb.e ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.e ]
  %i.c = load i64, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, %bb.b
  %.sroa.025.1 = phi ptr [ %.sroa.025.0, %bb.b ], [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread ] ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56   ; 4 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.e) ; 3 uses
  %i.f = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.f, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.g = load ptr, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.h = load ptr, ptr %.sroa.025.1, align 8, !tbaa !68 ; 2 uses
  %i.i = tail call i32 @memcmp(ptr noundef %i.h, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.c
  %i.j = sub i64 %i.e, %i.c
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.l = sub i64 %i.e, %i.c
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.n = icmp slt i32 %i.i, 0
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i
  %i.o = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i8.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i8.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.p = sub i64 %i.c, %i.e
  %spec.select7.i.i.i11.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i12.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11.i.i, i64 2147483647)
  %.0.i6.i.i13.i.i = trunc nsw i64 %.08.i.i.i12.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i
  %.0.i.i9.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i ], [ %.0.i6.i.i13.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i ]
  %i.q = icmp slt i32 %.0.i.i9.i.i, 0
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !78
  %i.t = load i32, ptr %i.b, align 8, !tbaa !78
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.preheader: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 40
  br label %bb.c, !llvm.loop !619

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.backedge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.preheader ], [ %.sroa.0.1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.backedge ] ; 4 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -40 ; 5 uses
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !56   ; 4 uses
  %.sroa.speculated.i.i.i.i8 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.c) ; 3 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i.i8, 0
  br i1 %i.y, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i21, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28
  %i.z = load ptr, ptr %.sroa.0.1, align 8, !tbaa !68 ; 2 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !68    ; 2 uses
  %i.ab = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.z, i64 noundef %.sroa.speculated.i.i.i.i8) #28 ; 2 uses
  %.not.i.i.i.i10 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i10, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i20, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i11

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i21: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28
  %i.ac = sub i64 %i.c, %i.x
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.backedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i16

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i20: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9
  %i.ae = sub i64 %i.c, %i.x
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.backedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i12

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.backedge: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i20, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i11, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i21, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28, !llvm.loop !620

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i11: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9
  %i.ag = icmp slt i32 %i.ab, 0
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.backedge, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i12

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i12: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i11, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i20
  %i.ah = tail call i32 @memcmp(ptr noundef %i.z, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i.i8) #28 ; 2 uses
  %.not.i.i8.i.i13 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i8.i.i13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i16, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i14

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i16: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i12, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i21
  %i.ai = sub i64 %i.x, %i.c
  %spec.select7.i.i.i11.i.i17 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i12.i.i18 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11.i.i17, i64 2147483647)
  %.0.i6.i.i13.i.i19 = trunc nsw i64 %.08.i.i.i12.i.i18 to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i14

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i14: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i16, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i12
  %.0.i.i9.i.i15 = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i12 ], [ %.0.i6.i.i13.i.i19, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i16 ]
  %i.aj = icmp slt i32 %.0.i.i9.i.i15, 0
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22.thread29, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i14
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !78
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !78
  %i.an = icmp slt i32 %i.ak, %i.am
  br i1 %i.an, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread28.backedge, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22.thread29

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22.thread29: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i14, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22
  %i.ao = icmp ult ptr %.sroa.025.1, %.sroa.0.1
  br i1 %i.ao, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22.thread29
  ret ptr %.sroa.025.1

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit22.thread29
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.025.1, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.1) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !24
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !24
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !24
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.025.1, i64 40
  br label %bb.b, !llvm.loop !621
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_less_iterEEvT_SH_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.28", align 8     ; 13 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.021 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.0.021, %1
  br i1 %.not22, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.0.024 = phi ptr [ %.sroa.0.021, %.lr.ph ], [ %.sroa.0.0, %bb.o ] ; 8 uses
  %.pn23 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.024, %bb.o ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pn23, i64 48 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !56   ; 7 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !56   ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.k, i64 %i.j) ; 3 uses
  %i.l = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.l, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.n = load ptr, ptr %.sroa.0.024, align 8, !tbaa !68 ; 2 uses
  %i.o = call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.b
  %i.p = sub i64 %i.j, %i.k
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.r = sub i64 %i.j, %i.k
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.t = icmp slt i32 %i.o, 0
  br i1 %i.t, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i
  %i.u = call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i8.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i8.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.v = sub i64 %i.k, %i.j
  %spec.select7.i.i.i11.i.i = call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i12.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11.i.i, i64 2147483647)
  %.0.i6.i.i13.i.i = trunc nsw i64 %.08.i.i.i12.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i
  %.0.i.i9.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i ], [ %.0.i6.i.i13.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i ]
  %i.w = icmp slt i32 %.0.i.i9.i.i, 0
  br i1 %i.w, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pn23, i64 72
  %i.y = load i32, ptr %i.x, align 8, !tbaa !78
  %i.z = load i32, ptr %i.c, align 8, !tbaa !78
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %i.d, ptr %2, align 8, !tbaa !54
  %i.ab = load ptr, ptr %.sroa.0.024, align 8, !tbaa !68 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn23, i64 56 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread
  %i.ae = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread
  store ptr %i.ab, ptr %2, align 8, !tbaa !68
  %i.ag = load i64, ptr %i.ac, align 8, !tbaa !57
  store i64 %i.ag, ptr %i.d, align 8, !tbaa !57
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store i64 %i.j, ptr %i.e, align 8, !tbaa !56
  store ptr %i.ac, ptr %.sroa.0.024, align 8, !tbaa !68
  store i64 0, ptr %i.i, align 8, !tbaa !56
  store i8 0, ptr %i.ac, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn23, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !78
  store i32 %i.ai, ptr %i.f, align 8, !tbaa !78
  %i.aj = ptrtoint ptr %.sroa.0.024 to i64
  %i.ak = sub i64 %i.aj, %i.g                     ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.pn23, i64 80
  %i.an = udiv exact i64 %i.ak, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bs, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ap, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ao, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.0.024, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 5 uses
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 5 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68 ; 6 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 4 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !68 ; 5 uses
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 6 uses
  %i.av = icmp eq ptr %i.at, %i.au                ; 2 uses
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.av, label %bb.d, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.av, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !56 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  switch i64 %i.ax, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.az = load i8, ptr %i.at, align 1, !tbaa !57
  store i8 %i.az, ptr %i.aq, align 1, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.at, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !56
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba
  store i8 0, ptr %i.bd, align 1, !tbaa !57
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !68
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !68
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !56
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !56
  %i.bh = load i64, ptr %i.au, align 8, !tbaa !57
  store i64 %i.bh, ptr %i.ar, align 8, !tbaa !57
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.bi = load i64, ptr %i.ar, align 8, !tbaa !57
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !68
  %i.bj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !56
  %i.bl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !56
  %i.bm = load i64, ptr %i.au, align 8, !tbaa !57
  store i64 %i.bm, ptr %i.ar, align 8, !tbaa !57
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !68
  store i64 %i.bi, ptr %i.au, align 8, !tbaa !57
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !68
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.bn = phi ptr [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ], [ %i.aq, %bb.g ], [ %i.au, %bb.h ]
  %i.bo = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.bo, align 8, !tbaa !56
  store i8 0, ptr %i.bn, align 1, !tbaa !57
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !24
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !78
  %i.bs = add nsw i64 %.010.i.i.i.i.i, -1
  %3 = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %3, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !622

.loopexit:                                        ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit.i.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit
  %i.bt = load ptr, ptr %0, align 8, !tbaa !68    ; 6 uses
  %i.bu = icmp eq ptr %i.bt, %i.h
  %i.bv = load ptr, ptr %2, align 8, !tbaa !68    ; 6 uses
  %i.bw = icmp eq ptr %i.bv, %i.d                 ; 2 uses
  %.pre25 = load i64, ptr %i.e, align 8, !tbaa !56 ; 5 uses
  br i1 %i.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.loopexit
  br i1 %i.bw, label %bb.i, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.loopexit
  br i1 %i.bw, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.bx = icmp ult i64 %.pre25, 16
  call void @llvm.assume(i1 %i.bx)
  br i1 %.not21.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit, label %bb.j, !prof !145

bb.j:                                             ; preds = %bb.i
  switch i64 %.pre25, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !57
  store i8 %i.by, ptr %i.bt, align 1, !tbaa !57
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bv, i64 %.pre25, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bz = load i64, ptr %i.e, align 8, !tbaa !56  ; 2 uses
  store i64 %i.bz, ptr %i.b, align 8, !tbaa !56
  %i.ca = load ptr, ptr %0, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !57
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !68
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  store ptr %i.bv, ptr %0, align 8, !tbaa !68
  store i64 %.pre25, ptr %i.b, align 8, !tbaa !56
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !57
  store i64 %i.cc, ptr %i.h, align 8, !tbaa !57
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cd = load i64, ptr %i.h, align 8, !tbaa !57
  store ptr %i.bv, ptr %0, align 8, !tbaa !68
  store i64 %.pre25, ptr %i.b, align 8, !tbaa !56
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !57
  store i64 %i.ce, ptr %i.h, align 8, !tbaa !57
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bt, ptr %2, align 8, !tbaa !68
  store i64 %i.cd, ptr %i.d, align 8, !tbaa !57
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.d, ptr %2, align 8, !tbaa !68
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.m, %bb.n
  %i.cf = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bt, %bb.m ], [ %i.d, %bb.n ], [ %i.bv, %bb.i ]
  store i64 0, ptr %i.e, align 8, !tbaa !56
  store i8 0, ptr %i.cf, align 1, !tbaa !57
  %i.cg = load i32, ptr %i.f, align 8, !tbaa !24
  store i32 %i.cg, ptr %i.c, align 8, !tbaa !78
  %i.ch = load ptr, ptr %2, align 8, !tbaa !68    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.d
  br i1 %i.ci, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !57
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #30
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.o

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.024)
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiED2Ev.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorISB_SaISB_EEEESG_EEbT_T0_.exit.thread19
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.024, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit20, label %bb.b, !llvm.loop !623

.loopexit20:                                      ; preds = %bb.o, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::pair.28", align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !54
  %i.b = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !56   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %1, align 8, !tbaa !68
  %i.i = load i64, ptr %i.c, align 8, !tbaa !57
  store i64 %i.i, ptr %i.a, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !56
  store ptr %i.c, ptr %0, align 8, !tbaa !68
  store i64 0, ptr %i.k, align 8, !tbaa !56
  store i8 0, ptr %i.c, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !78
  store i32 %i.o, ptr %i.m, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit
  %i.p = phi i64 [ %i.j, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit ], [ %.pre17, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit ] ; 9 uses
  %.sroa.013.0 = phi ptr [ %0, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEC2EOS6_.exit ], [ %.sroa.0.0, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEaSEOS6_.exit ] ; 24 uses
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -40 ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -32 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56   ; 9 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.r, i64 %i.p) ; 3 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.s, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.t = load ptr, ptr %.sroa.0.0, align 8, !tbaa !68 ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.v = call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.c
  %i.w = sub i64 %i.p, %i.r
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.y = sub i64 %i.p, %i.r
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.aa = icmp slt i32 %i.v, 0
  br i1 %i.aa, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread16.i.i
  %i.ab = call i32 @memcmp(ptr noundef %i.t, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i) #28 ; 2 uses
  %.not.i.i8.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i8.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i
  %i.ac = sub i64 %i.r, %i.p
  %spec.select7.i.i.i11.i.i = call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i12.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i11.i.i, i64 2147483647)
  %.0.i6.i.i13.i.i = trunc nsw i64 %.08.i.i.i12.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i
  %.0.i.i9.i.i = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i7.i.i ], [ %.0.i6.i.i13.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i10.i.i ]
  %i.ad = icmp slt i32 %.0.i.i9.i.i, 0
  br i1 %i.ad, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread16, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit14.i.i
  %i.ae = load i32, ptr %i.m, align 8, !tbaa !78
  %i.af = getelementptr inbounds i8, ptr %.sroa.013.0, i64 -8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !78
  %i.ah = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ah, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread16
end_hunk_4
begin_hunk_5_@_ZN5Darts7Details11DawgBuilder6insertEPKcmi:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store i32 %i.bj, ptr %i.bp, align 4, !tbaa !203
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i8 %i.al, ptr %i.bq, align 4, !tbaa !199
  store i32 %.0.i, ptr %i.bi, align 4, !tbaa !200
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !190 ; 3 uses
  %i.bs = load i64, ptr %i.ah, align 8, !tbaa !191
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.t, label %_ZN5Darts7Details9AutoStackIjE4pushERKj.exit

bb.t:                                             ; preds = %_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit._crit_edge
  %i.bu = add i64 %i.br, 1
  tail call void @_ZN5Darts7Details8AutoPoolIjE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.bu)
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !190
  br label %_ZN5Darts7Details9AutoStackIjE4pushERKj.exit

_ZN5Darts7Details9AutoStackIjE4pushERKj.exit:     ; preds = %_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit._crit_edge, %bb.t
  %i.bv = phi i64 [ %.pre.i.i.i, %bb.t ], [ %i.br, %_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit._crit_edge ] ; 2 uses
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.ag, align 8, !tbaa !190
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bv
  store i32 %.0.i, ptr %i.by, align 4, !tbaa !24
  %i.bz = add i64 %.13975, 1                      ; 2 uses
  %.not47 = icmp ugt i64 %i.bz, %2
  br i1 %.not47, label %._crit_edge, label %bb.m, !llvm.loop !643

._crit_edge:                                      ; preds = %_ZN5Darts7Details9AutoStackIjE4pushERKj.exit, %.loopexit
  %.pre-phi = phi i64 [ %i.h, %.loopexit ], [ %i.bl, %_ZN5Darts7Details9AutoStackIjE4pushERKj.exit ]
  %i.ca = load ptr, ptr %0, align 8, !tbaa !117
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %.pre-phi
  store i32 %3, ptr %i.cb, align 4, !tbaa !200
  br label %.thread55

.thread55:                                        ; preds = %bb.l, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details11DawgBuilder6finishEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN5Darts7Details11DawgBuilder5flushEj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef 0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !117    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 4, !tbaa !199   ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  %i.e = load i32, ptr %i.a, align 4, !tbaa !200  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = shl i32 %i.e, 1
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl i32 %i.e, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.i = load i8, ptr %i.h, align 1, !tbaa !202, !range !36, !noundef !37
  %i.j = shl nuw nsw i8 %i.i, 1
  %i.k = zext nneg i8 %i.j to i32
  %i.l = or disjoint i32 %i.g, %i.k
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit

_ZNK5Darts7Details8DawgNode4unitEv.exit:          ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ %i.l, %bb.c ], [ %i.f, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.n = load i8, ptr %i.m, align 2, !tbaa !201, !range !36, !noundef !37
  %i.o = zext nneg i8 %i.n to i32
  %i.p = or disjoint i32 %.sink.i, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  store i32 %i.p, ptr %i.r, align 4, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !117
  store i8 %i.c, ptr %i.t, align 1, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.u, align 8, !tbaa !189
  %.not.i = icmp eq i64 %.promoted.i.i, 0
  br i1 %.not.i, label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNK5Darts7Details8DawgNode4unitEv.exit
  store i64 0, ptr %i.u, align 8, !tbaa !189
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZNK5Darts7Details8DawgNode4unitEv.exit
  %i.v = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #30
  store ptr null, ptr %0, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit

_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit: ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.promoted.i.i1 = load i64, ptr %i.x, align 8, !tbaa !190
  %.not.i2 = icmp eq i64 %.promoted.i.i1, 0
  br i1 %.not.i2, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i, label %.lr.ph.preheader.i.i3

.lr.ph.preheader.i.i3:                            ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit
  store i64 0, ptr %i.x, align 8, !tbaa !190
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i3, %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !117  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.y, null
  br i1 %.not.i.i4, label %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #30
  store ptr null, ptr %i.w, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit

_ZN5Darts7Details8AutoPoolIjE5clearEv.exit:       ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !190
  %.not.i.i5 = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %.not.i.i5, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit
  store i64 0, ptr %i.aa, align 8, !tbaa !190
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i:  ; preds = %.lr.ph.preheader.i.i.i, %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details9AutoStackIjE5clearEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #30
  store ptr null, ptr %i.z, align 8, !tbaa !117
  br label %_ZN5Darts7Details9AutoStackIjE5clearEv.exit

_ZN5Darts7Details9AutoStackIjE5clearEv.exit:      ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %.promoted.i.i.i6 = load i64, ptr %i.ad, align 8, !tbaa !190
  %.not.i.i7 = icmp eq i64 %.promoted.i.i.i6, 0
  br i1 %.not.i.i7, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i9, label %.lr.ph.preheader.i.i.i8

.lr.ph.preheader.i.i.i8:                          ; preds = %_ZN5Darts7Details9AutoStackIjE5clearEv.exit
  store i64 0, ptr %i.ad, align 8, !tbaa !190
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i9

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i9: ; preds = %.lr.ph.preheader.i.i.i8, %_ZN5Darts7Details9AutoStackIjE5clearEv.exit
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i10, label %_ZN5Darts7Details9AutoStackIjE5clearEv.exit11, label %bb.g

bb.g:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i9
  tail call void @_ZdaPv(ptr noundef nonnull %i.ae) #30
  store ptr null, ptr %i.ac, align 8, !tbaa !117
  br label %_ZN5Darts7Details9AutoStackIjE5clearEv.exit11

_ZN5Darts7Details9AutoStackIjE5clearEv.exit11:    ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i9, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN5Darts7Details9BitVector5buildEv(ptr noundef nonnull align 8 dereferenceable(48) %i.af)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details11DawgBuilder5flushEj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !190  ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24   ; 2 uses
  %.not121 = icmp eq i32 %i.h, %1
  br i1 %.not121, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph123, %._crit_edge120
  %i.y = phi i32 [ %i.h, %.lr.ph123 ], [ %i.iz, %._crit_edge120 ] ; 6 uses
  %i.z = phi i64 [ %i.d, %.lr.ph123 ], [ %i.ir, %._crit_edge120 ]
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.c, align 8, !tbaa !190
  %i.ab = load i64, ptr %i.i, align 8, !tbaa !197
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !190 ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %.not34 = icmp ult i64 %i.ab, %i.ae
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5Darts7Details11DawgBuilder12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not35102 = icmp eq i32 %i.y, 0                ; 2 uses
  br i1 %.not35102, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.af = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ag = call noundef i32 @_ZNK5Darts7Details11DawgBuilder9find_nodeEjPj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.y, ptr noundef nonnull %i.a) ; 2 uses
  %.not36 = icmp eq i32 %i.ag, 0
  br i1 %.not36, label %.preheader89, label %bb.f

._crit_edge.thread:                               ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ah = call noundef i32 @_ZNK5Darts7Details11DawgBuilder9find_nodeEjPj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.y, ptr noundef nonnull %i.a) ; 2 uses
  %.not36161 = icmp eq i32 %i.ah, 0
  br i1 %.not36161, label %._crit_edge114, label %bb.f

.preheader89:                                     ; preds = %._crit_edge
  %.not127 = icmp eq i32 %i.ai, 0
  br i1 %.not127, label %.lr.ph113.preheader, label %.lr.ph106

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.031104 = phi i32 [ %i.y, %.lr.ph ], [ %i.am, %bb.e ]
  %.032103 = phi i32 [ 0, %.lr.ph ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ai = add i32 %.032103, 1                     ; 2 uses
  %i.aj = zext i32 %.031104 to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !203 ; 2 uses
  %.not35 = icmp eq i32 %i.am, 0
  br i1 %.not35, label %._crit_edge, label %bb.e, !llvm.loop !644

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.an = phi i32 [ %i.ah, %._crit_edge.thread ], [ %i.ag, %._crit_edge ] ; 3 uses
  %i.ao = and i32 %i.an, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = lshr i32 %i.an, 5
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !24
  %i.av = or i32 %i.au, %i.ap
  store i32 %i.av, ptr %i.at, align 4, !tbaa !24
  br label %bb.ae

.preheader88:                                     ; preds = %_ZN5Darts7Details11DawgBuilder11append_unitEv.exit
  %i.aw = load i64, ptr %i.m, align 8, !tbaa !194
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.ax, -1
  br label %.lr.ph113.preheader

.lr.ph113.preheader:                              ; preds = %.preheader88, %.preheader89
  %.029.lcssa168 = phi i32 [ %i.ay, %.preheader88 ], [ 0, %.preheader89 ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !117
  br label %.lr.ph113

.lr.ph106:                                        ; preds = %.preheader89, %_ZN5Darts7Details11DawgBuilder11append_unitEv.exit
  %.028105 = phi i32 [ %i.hi, %_ZN5Darts7Details11DawgBuilder11append_unitEv.exit ], [ 0, %.preheader89 ] ; 2 uses
  %i.az = load i64, ptr %i.m, align 8, !tbaa !194 ; 4 uses
  %i.ba = and i64 %i.az, 31
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZN5Darts7Details9BitVector6appendEv.exit.i

bb.g:                                             ; preds = %.lr.ph106
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !190 ; 11 uses
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !191
  %i.be = icmp eq i64 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZN5Darts7Details8AutoPoolIjE6appendERKj.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bf = add i64 %i.bc, 1                        ; 3 uses
  %i.bg = shl i64 %i.bc, 1
  %.not.i54 = icmp ult i64 %i.bf, %i.bg
  br i1 %.not.i54, label %.preheader.i67, label %.loopexit30.i55

.preheader.i67:                                   ; preds = %bb.h, %.preheader.i67
  %.019.i68 = phi i64 [ %i.bi, %.preheader.i67 ], [ 1, %bb.h ] ; 3 uses
  %i.bh = icmp ult i64 %.019.i68, %i.bf
  %i.bi = shl i64 %.019.i68, 1
  br i1 %i.bh, label %.preheader.i67, label %.loopexit30.i55, !llvm.loop !12

.loopexit30.i55:                                  ; preds = %.preheader.i67, %bb.h
  %.1.i56 = phi i64 [ %i.bf, %bb.h ], [ %.019.i68, %.preheader.i67 ] ; 3 uses
  %i.bj = shl i64 %.1.i56, 2
  %i.bk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #35
          to label %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i59 unwind label %bb.i ; 9 uses

bb.i:                                             ; preds = %.loopexit30.i55
  %i.bl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.bm = extractvalue { ptr, i32 } %i.bl, 1
  %i.bn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.bo = icmp eq i32 %i.bm, %i.bn
  br i1 %i.bo, label %bb.j, label %common.resume

bb.j:                                             ; preds = %bb.i
  %i.bp = extractvalue { ptr, i32 } %i.bl, 0
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bp) #28 ; 0 uses
  %i.br = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.br, align 8, !tbaa !88
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @.str.59, ptr %i.bs, align 8, !tbaa !171
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.m

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i59: ; preds = %.loopexit30.i55
  %.not23.i60 = icmp eq i64 %i.bc, 0
  %.pre.i61 = load ptr, ptr %i.l, align 8, !tbaa !117 ; 9 uses
  br i1 %.not23.i60, label %.loopexit.i65, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i59
  %.pre.i61213 = ptrtoaddr ptr %.pre.i61 to i64
  %i.bu = ptrtoaddr ptr %i.bk to i64
  %min.iters.check216 = icmp ult i64 %i.bc, 8
  %i.bv = sub i64 %.pre.i61213, %i.bu
  %diff.check214 = icmp ugt i64 %i.bv, -32
  %or.cond = select i1 %min.iters.check216, i1 true, i1 %diff.check214
  br i1 %or.cond, label %.preheader87.preheader232, label %vector.ph217

vector.ph217:                                     ; preds = %.preheader87.preheader
  %n.vec218 = and i64 %i.bc, -8                   ; 3 uses
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph217
  %index220 = phi i64 [ 0, %vector.ph217 ], [ %index.next223, %vector.body219 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index220 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i61, i64 %index220 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load221 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !24
  %wide.load222 = load <4 x i32>, ptr %i.by, align 4, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> %wide.load221, ptr %i.bw, align 4, !tbaa !24
  store <4 x i32> %wide.load222, ptr %i.bz, align 4, !tbaa !24
  %index.next223 = add nuw i64 %index220, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next223, %n.vec218
  br i1 %i.ca, label %middle.block224, label %vector.body219, !llvm.loop !645

middle.block224:                                  ; preds = %vector.body219
  %cmp.n225 = icmp eq i64 %i.bc, %n.vec218
  br i1 %cmp.n225, label %.loopexit.thread.i64, label %.preheader87.preheader232

.preheader87.preheader232:                        ; preds = %.preheader87.preheader, %middle.block224
  %.031.i62.ph = phi i64 [ 0, %.preheader87.preheader ], [ %n.vec218, %middle.block224 ] ; 3 uses
  %xtraiter = and i64 %i.bc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader87.prol.loopexit, label %.preheader87.prol

.preheader87.prol:                                ; preds = %.preheader87.preheader232, %.preheader87.prol
  %.031.i62.prol = phi i64 [ %i.ce, %.preheader87.prol ], [ %.031.i62.ph, %.preheader87.preheader232 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader87.prol ], [ 0, %.preheader87.preheader232 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.031.i62.prol
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i61, i64 %.031.i62.prol
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !24
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !24
  %i.ce = add nuw i64 %.031.i62.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader87.prol.loopexit, label %.preheader87.prol, !llvm.loop !646

.preheader87.prol.loopexit:                       ; preds = %.preheader87.prol, %.preheader87.preheader232
  %.031.i62.unr = phi i64 [ %.031.i62.ph, %.preheader87.preheader232 ], [ %i.ce, %.preheader87.prol ]
  %i.cf = sub i64 %.031.i62.ph, %i.bc
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %.loopexit.thread.i64, label %.preheader87

.preheader87:                                     ; preds = %.preheader87.prol.loopexit, %.preheader87
  %.031.i62 = phi i64 [ %i.cw, %.preheader87 ], [ %.031.i62.unr, %.preheader87.prol.loopexit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.031.i62
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.pre.i61, i64 %.031.i62
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !24
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !24
  %i.ck = add nuw i64 %.031.i62, 1                ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i61, i64 %i.ck
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !24
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !24
  %i.co = add nuw i64 %.031.i62, 2                ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i61, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !24
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !24
  %i.cs = add nuw i64 %.031.i62, 3                ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i61, i64 %i.cs
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !24
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !24
  %i.cw = add nuw i64 %.031.i62, 4                ; 2 uses
  %exitcond.not.i63.3 = icmp eq i64 %i.cw, %i.bc
  br i1 %exitcond.not.i63.3, label %.loopexit.thread.i64, label %.preheader87, !llvm.loop !647

.loopexit.thread.i64:                             ; preds = %.preheader87.prol.loopexit, %.preheader87, %middle.block224
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !117
  store i64 %.1.i56, ptr %i.o, align 8, !tbaa !191
  br label %bb.l

.loopexit.i65:                                    ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i59
  store ptr %i.bk, ptr %i.l, align 8, !tbaa !117
  store i64 %.1.i56, ptr %i.o, align 8, !tbaa !191
  %.not.i.i.i66 = icmp eq ptr %.pre.i61, null
  br i1 %.not.i.i.i66, label %_ZN5Darts7Details8AutoPoolIjE6appendERKj.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit.i65, %.loopexit.thread.i64
  call void @_ZdaPv(ptr noundef nonnull %.pre.i61) #30
  %.pre.i.i.i.pre = load i64, ptr %i.n, align 8, !tbaa !190
  %.pre.pre.i.i.pre = load i64, ptr %i.m, align 8, !tbaa !194
  br label %_ZN5Darts7Details8AutoPoolIjE6appendERKj.exit.i.i

end_hunk_5
begin_hunk_6_@_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_:bb.a
  br label %.preheader

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %i.ab = phi i32 [ %.pre30, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %i.z, %.preheader.preheader ]
  %i.ac = phi i64 [ %.sroa.speculated.i.i, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.pre29, %.preheader.preheader ]
  %i.ad = phi ptr [ %i.as, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.pre, %.preheader.preheader ]
  %.0 = phi i64 [ %i.ay, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !212
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !213
  %i.ag = icmp eq i32 %i.ab, 1
  br i1 %i.ag, label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread, label %bb.h

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread: ; preds = %.preheader
  store i32 2, ptr %i.a, align 8, !tbaa !153
  %i.ah = add nuw nsw i64 %.0, 1
  br label %.critedge

bb.h:                                             ; preds = %.preheader
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !154 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ai, align 8, !tbaa !48 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27 ; 3 uses
  %i.aj = load i64, ptr %4, align 8, !tbaa !152
  %i.ak = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.aj)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc14:                                         ; preds = %bb.h
  %i.al = extractvalue { i64, ptr } %i.ak, 0
  %i.am = extractvalue { i64, ptr } %i.ak, 1      ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc14
  store i32 1, ptr %i.a, align 8, !tbaa !153
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc14
  %i.ap = load i64, ptr %4, align 8, !tbaa !152   ; 5 uses
  %i.aq = icmp ugt i64 %i.ap, %.sroa.0.0.copyload.i.i
  br i1 %i.aq, label %.invoke, label %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %bb.j
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.ap ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.ar, %i.at
  %i.av = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.ap
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.av, i64 %i.au) ; 3 uses
  store i64 %.sroa.speculated.i.i, ptr %i.b, align 8, !tbaa !48
  store ptr %i.as, ptr %i.x, align 8, !tbaa !27
  %i.aw = add i64 %i.ap, %i.al
  %i.ax = add i64 %i.aw, %.sroa.speculated.i.i
  store i64 %i.ax, ptr %4, align 8, !tbaa !152
  %.pre30 = load i32, ptr %i.a, align 8           ; 2 uses
  %i.ay = add nuw nsw i64 %.0, 1                  ; 3 uses
  %.not = icmp eq i64 %i.ay, 16
  %i.az = icmp eq i32 %.pre30, 2
  %or.cond = select i1 %.not, i1 true, i1 %i.az
  br i1 %or.cond, label %.critedge, label %.preheader, !llvm.loop !705

.critedge:                                        ; preds = %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread
  %i.ba = phi i64 [ %i.ah, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread ], [ %i.ay, %_ZN4absl12lts_2026052616strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ]
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !133
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ba
  %i.bd = load ptr, ptr %0, align 8, !tbaa !133   ; 2 uses
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2026052616strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bh, ptr noundef nonnull %3, ptr noundef nonnull %i.bc)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !706

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %.critedge, %.invoke, %bb.c
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bi = load ptr, ptr %0, align 8, !tbaa !209   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !210
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #30
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  resume { ptr, i32 } %lpad.loopexit.split-lp58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2026052616strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !713  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !714
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !708

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !713
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !713
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.l                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.f, !prof !155

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 16
  br i1 %i.aa, label %bb.g, label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !714
  br label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ac = icmp sgt i64 %i.d, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit
  %xtraiter131 = and i64 %i.d, 3                  ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol

.lr.ph.i.i.i.i.i55.prol:                          ; preds = %.lr.ph.i.i.i.i.i55.preheader, %.lr.ph.i.i.i.i.i55.prol
  %.012.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i55.prol ], [ %2, %.lr.ph.i.i.i.i.i55.preheader ] ; 3 uses
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i55.prol ], [ %1, %.lr.ph.i.i.i.i.i55.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i55.prol ], [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ]
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.i.i.i.i.i55.prol ], [ 0, %.lr.ph.i.i.i.i.i55.preheader ]
  %i.ad = load ptr, ptr %.012.i.i.i.i.i.prol, align 8, !tbaa !212
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !213
  store i64 %i.af, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ai = add nsw i64 %.0910.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !709

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.012.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i55.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i55.prol ]
  %.0910.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i55.prol ]
  %4 = icmp ult i64 %i.d, 4
  br i1 %4, label %_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %i.aj = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !212
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !213
  store i64 %i.al, ptr %.0811.i.i.i.i.i, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !212
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !213
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store ptr %i.ao, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.1, align 8, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !212
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !213
  store i64 %i.av, ptr %i.as, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.2, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !212
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !213
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.3, align 8, !tbaa !27
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.bd = add nsw i64 %.0910.i.i.i.i.i, -4
  %i.be = icmp sgt i64 %.0910.i.i.i.i.i, 4
  br i1 %i.be, label %.lr.ph.i.i.i.i.i55, label %_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !710

_ZSt9__advanceIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bf, %_ZSt9__advanceIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.bg = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !212
  %i.bh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !213
  store i64 %i.bi, ptr %.011.i.i.i.i, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.bg, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bk, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !711

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !713
  br label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bm = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bn = sub nuw nsw i64 %i.d, %i.n
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !713
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i57 ], [ %i.bo, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i57 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i59, i64 16, i1 false), !tbaa.struct !714
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 16
  %.not.i.i.i.i.i60 = icmp eq ptr %i.bp, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !708

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre107 = load ptr, ptr %i.g, align 8, !tbaa !713
  br label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62: ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit
  %i.br = phi ptr [ %.pre107, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit ], [ %i.bo, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.m
  store ptr %i.bs, ptr %i.g, align 8, !tbaa !713
  %i.bt = ashr exact i64 %i.m, 4                  ; 5 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i64.preheader, label %_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62
  %xtraiter = and i64 %i.bt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.012.i.i.i.i.i65.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i64.prol ], [ %2, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0811.i.i.i.i.i66.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ], [ %1, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0910.i.i.i.i.i67.prol = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ], [ %i.bt, %.lr.ph.i.i.i.i.i64.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.bv = load ptr, ptr %.012.i.i.i.i.i65.prol, align 8, !tbaa !212
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !213
  store i64 %i.bx, ptr %.0811.i.i.i.i.i66.prol, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 8
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol, align 8, !tbaa !27
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 16 ; 2 uses
  %i.ca = add nsw i64 %.0910.i.i.i.i.i67.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !712

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.012.i.i.i.i.i65.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.by, %.lr.ph.i.i.i.i.i64.prol ]
  %.0811.i.i.i.i.i66.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ]
  %.0910.i.i.i.i.i67.unr = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ]
  %5 = icmp ult i64 %i.bt, 4
  br i1 %5, label %_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i64 ], [ %.0811.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i67 = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i64 ], [ %.0910.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 2 uses
  %i.cb = load ptr, ptr %.012.i.i.i.i.i65, align 8, !tbaa !212
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !213
  store i64 %i.cd, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 16
  %i.cg = load ptr, ptr %i.ce, align 8, !tbaa !212
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !213
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 24
  store ptr %i.cg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.1, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 32
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !212
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !213
  store i64 %i.cn, ptr %i.ck, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 40
  store ptr %i.cl, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.2, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 48
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !212
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 56
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !213
  store i64 %i.cs, ptr %i.cp, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 56
  store ptr %i.cq, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.3, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 64
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 64
  %i.cv = add nsw i64 %.0910.i.i.i.i.i67, -4
  %i.cw = icmp sgt i64 %.0910.i.i.i.i.i67, 4
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !710

bb.h:                                             ; preds = %bb.b
  %i.cx = load ptr, ptr %0, align 8, !tbaa !209   ; 5 uses
  %i.cy = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.cz = sub i64 %i.j, %i.cy
  %i.da = ashr exact i64 %i.cz, 4                 ; 4 uses
  %i.db = sub nsw i64 576460752303423487, %i.da
  %i.dc = icmp ult i64 %i.db, %i.d
  br i1 %i.dc, label %bb.i, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #34
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.d)
  %i.dd = add nsw i64 %.sroa.speculated.i, %i.da  ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.da
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 576460752303423487)
  %i.dg = select i1 %i.de, i64 576460752303423487, i64 %i.df ; 3 uses
  %.not.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dh = shl nuw nsw i64 %i.dg, 4
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #35
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dj = phi ptr [ %i.di, %bb.j ], [ null, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i70 = icmp eq ptr %i.cx, %1
  br i1 %.not11.i.i.i.i.i70, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i71 ], [ %i.dj, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i71 ], [ %i.cx, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i72, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i73, i64 16, i1 false), !tbaa.struct !714
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.dk, %1
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71, !llvm.loop !708

.lr.ph.i.i.i.i77.preheader:                       ; preds = %.lr.ph.i.i.i.i.i71, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit
  %.011.i.i.i.i78.ph = phi ptr [ %i.dj, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ], [ %i.dl, %.lr.ph.i.i.i.i.i71 ]
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77.preheader, %.lr.ph.i.i.i.i77
  %.011.i.i.i.i78 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i77 ], [ %.011.i.i.i.i78.ph, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %.0810.i.i.i.i79 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i77 ], [ %2, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %i.dm = load ptr, ptr %.0810.i.i.i.i79, align 8, !tbaa !212
  %i.dn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !213
  store i64 %i.do, ptr %.011.i.i.i.i78, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 8
  store ptr %i.dm, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 16 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.dq, %3
  br i1 %.not.i.i.i.i80, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, label %.lr.ph.i.i.i.i77, !llvm.loop !711

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82: ; preds = %.lr.ph.i.i.i.i77
  %.not11.i.i.i.i.i83 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, %.lr.ph.i.i.i.i.i84
  %.013.i.i.i.i.i85 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i84 ], [ %i.dr, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i86 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i84 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i86, i64 16, i1 false), !tbaa.struct !714
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i86, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.ds, %i.h
  br i1 %.not.i.i.i.i.i87, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84, !llvm.loop !708

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89: ; preds = %.lr.ph.i.i.i.i.i84, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82
  %.0.lcssa.i.i.i.i.i88 = phi ptr [ %i.dr, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ], [ %i.dt, %.lr.ph.i.i.i.i.i84 ]
  %.not.i90 = icmp eq ptr %i.cx, null
  br i1 %.not.i90, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !210
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dw) #30
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, %bb.k
  store ptr %i.dj, ptr %0, align 8, !tbaa !209
  store ptr %.0.lcssa.i.i.i.i.i88, ptr %i.g, align 8, !tbaa !713
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dg
  store ptr %i.dx, ptr %i.e, align 8, !tbaa !210
  br label %_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

_ZSt4copyIPZNK4absl12lts_2026052616strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEPNSt7__cxx1112basic_stringIcS4_SaIcEEEET0_T_SI_SH_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.017 = phi ptr [ %i.o, %bb.e ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.09.016 = phi ptr [ %i.n, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.09.016, align 8, !tbaa !48 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.017, i64 16 ; 3 uses
  store ptr %i.b, ptr %.017, align 8, !tbaa !54
  %i.c = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  %i.d = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %.lr.ph
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #34
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.a, align 8, !tbaa !48
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i.i, 15
  br i1 %i.e, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.017, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc8:                                          ; preds = %.noexc.i.i.i.i
  store ptr %i.f, ptr %.017, align 8, !tbaa !68
  %i.g = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.g, ptr %i.b, align 8, !tbaa !57
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc8, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc8 ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.i = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !57
  store i8 %i.i, ptr %i.h, align 1, !tbaa !57
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.017, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !56
end_hunk_6
