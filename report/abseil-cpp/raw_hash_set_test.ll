Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_27UnorderedElementsAreMatcherISt5tupleIJNS0_11PairMatcherIPKcS6_EES7_EEEEEclIN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEEENS_15AssertionResultES6_RKT_:bb.a
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = load ptr, ptr %13, align 8, !tbaa !160  ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.bo
  br i1 %i.fn, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.al, %bb.aa
  %.sink = phi ptr [ %i.cc, %bb.aa ], [ %i.fm, %bb.al ]
  %.pn.ph = phi { ptr, i32 } [ %i.cb, %bb.aa ], [ %i.fl, %bb.al ]
  %i.fo = load i64, ptr %i.bo, align 8, !tbaa !161
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.fp) #44
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.al, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.aa ], [ %i.fl, %bb.al ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  br label %bb.ap

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.ai
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.an
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.fr, %bb.an ], [ %i.dm, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.fs = load ptr, ptr %15, align 8, !tbaa !160  ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.cm
  br i1 %i.ft, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.ae
  %.sink93 = phi ptr [ %i.da, %bb.ae ], [ %i.fs, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %eh.lpad-body51, %.body50 ]
  %i.fu = load i64, ptr %i.cm, align 8, !tbaa !161
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %.sink93, i64 noundef %i.fv) #44
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.ae
  %.pn14 = phi { ptr, i32 } [ %i.cz, %bb.ae ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #43
  br label %bb.ao

bb.ao:                                            ; preds = %.body46, %bb.am
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.fq, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.body43, %bb.y
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ao ], [ %.pn, %.body43 ], [ %i.bm, %bb.y ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %12) #43
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.x
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ap ], [ %i.bl, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  br label %.body35

.body35:                                          ; preds = %bb.w, %bb.r, %bb.aq
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.aq ], [ %i.bk, %bb.w ], [ %i.ba, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11) #43
  br label %bb.ar

bb.ar:                                            ; preds = %.body35, %bb.v
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.bj, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  br label %.body

bb.as:                                            ; preds = %bb.k, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEEE, i64 16), ptr %10, align 8, !tbaa !141
  %.val.i.i = load ptr, ptr %i.i, align 8, !tbaa !354 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE8IsSharedEv.exit.i.i: ; preds = %bb.as
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !361
  %.not.i.i67 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE8IsSharedEv.exit.i.i
  %i.fy = load ptr, ptr %i.j, align 8, !tbaa !161
  %i.fz = atomicrmw sub ptr %i.fy, i32 1 acq_rel, align 4
  %i.ga = icmp eq i32 %i.fz, 1
  br i1 %i.ga, label %bb.au, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEED2Ev.exit

bb.au:                                            ; preds = %bb.at
  %i.gb = load ptr, ptr %i.i, align 8, !tbaa !354
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !361
  %i.ge = load ptr, ptr %i.j, align 8, !tbaa !161
  invoke void %i.gd(ptr noundef %i.ge)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEED2Ev.exit unwind label %bb.av, !inline_history !29

bb.av:                                            ; preds = %bb.au
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #48, !inline_history !362
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEED2Ev.exit: ; preds = %bb.as, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE8IsSharedEv.exit.i.i, %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  ret void

.body:                                            ; preds = %bb.l, %.body.i, %bb.ar
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.ar ], [ %i.ai, %bb.l ], [ %i.ae, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE5mergeIJS5_S6_S7_EvEEvRNS2_IS4_JDpT_EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"struct.std::pair.281", align 8    ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"struct.std::pair.281", align 8    ; 6 uses
  %.val = load i64, ptr %1, align 8               ; 2 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  %.not.i = icmp ult i64 %.val, 131072            ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val13 = load ptr, ptr %i.c, align 8, !tbaa !161 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %.val4.i = load ptr, ptr %.val13, align 8, !tbaa !160, !noalias !8136
  %i.d = getelementptr i8, ptr %.val13, i64 8
  %.val5.i = load i64, ptr %i.d, align 8, !tbaa !165, !noalias !8136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8139)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43, !noalias !8140
  store i64 %.val5.i, ptr %4, align 8, !noalias !8140
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.val4.i, ptr %i.e, align 8, !noalias !8140
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8141)
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE22find_or_prepare_insertISt17basic_string_viewIcSt11char_traitsIcEEEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !272, !range !180, !alias.scope !8142, !noundef !181
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE5mergeIJS5_S6_S7_EvEEvRNS2_IS4_JDpT_EEEENKUlPNS4_9slot_typeEE_clESF_.exit

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE5mergeIJS5_S6_S7_EvEEvRNS2_IS4_JDpT_EEEENKUlPNS4_9slot_typeEE_clESF_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !8140
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !161, !alias.scope !8142
  call fastcc void @_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_12_GLOBAL__N_112StringPolicyEvE8transferISaIiEEEvPT_PNS4_9slot_typeESB_(ptr noundef %.val.i.i.i.i.i, ptr noundef nonnull %.val13), !noalias !8142
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43, !noalias !8140
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false, i64 noundef 64)
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  br i1 %.not.i, label %.loopexit, label %bb.f, !prof !233

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !161, !nonnull !181, !noundef !181 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !161 ; 2 uses
  %i.l = load i8, ptr %.sroa.0.0.copyload.i.i.i.i, align 1, !tbaa !236
  %i.m = icmp slt i8 %i.l, -1
  br i1 %i.m, label %.lr.ph.i.i, label %.lr.ph

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.n = phi ptr [ %i.q, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.f ]
  %i.o = phi ptr [ %i.p, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.p, align 1, !tbaa !236
  %i.s = icmp slt i8 %i.r, -1
  br i1 %i.s, label %.lr.ph.i.i, label %.lr.ph, !llvm.loop !33

.lr.ph:                                           ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.6.0.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i, %bb.f ], [ %i.q, %.lr.ph.i.i ]
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.f ], [ %i.p, %.lr.ph.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.028.037 = phi ptr [ %.sroa.0.0.i.ph, %.lr.ph ], [ %.sroa.030.1, %bb.j ] ; 2 uses
  %.sroa.7.036 = phi ptr [ %.sroa.6.0.i.ph, %.lr.ph ], [ %.sroa.8.0, %bb.j ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.028.037, i64 1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.036, i64 64 ; 2 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !236   ; 2 uses
  %i.z = icmp slt i8 %i.y, -1
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %i.aa = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.x, %bb.g ]
  %i.ab = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.w, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 64 ; 2 uses
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !236 ; 2 uses
  %i.af = icmp slt i8 %i.ae, -1
  br i1 %i.af, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i, !llvm.loop !33

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.sroa.030.0 = phi ptr [ %i.w, %bb.g ], [ %i.ac, %.lr.ph.i.i.i ]
  %.sroa.8.0 = phi ptr [ %i.x, %bb.g ], [ %i.ad, %.lr.ph.i.i.i ]
  %i.ag = phi i8 [ %i.y, %bb.g ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %bb.h, label %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_112StringPolicyEJNS4_10StringHashENS4_8StringEqESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit, !prof !233

bb.h:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i
  br label %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_112StringPolicyEJNS4_10StringHashENS4_8StringEqESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit

_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_112StringPolicyEJNS4_10StringHashENS4_8StringEqESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i, %bb.h
  %.sroa.030.1 = phi ptr [ null, %bb.h ], [ %.sroa.030.0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %.val4.i23 = load ptr, ptr %.sroa.7.036, align 8, !tbaa !160, !noalias !8143
  %i.ai = getelementptr i8, ptr %.sroa.7.036, i64 8
  %.val5.i24 = load i64, ptr %i.ai, align 8, !tbaa !165, !noalias !8143
  call void @llvm.experimental.noalias.scope.decl(metadata !8144)
  call void @llvm.experimental.noalias.scope.decl(metadata !8145)
  call void @llvm.experimental.noalias.scope.decl(metadata !8146)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43, !noalias !8147
  store i64 %.val5.i24, ptr %2, align 8, !noalias !8147
  store ptr %.val4.i23, ptr %i.t, align 8, !noalias !8147
  call void @llvm.experimental.noalias.scope.decl(metadata !8148)
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE22find_or_prepare_insertISt17basic_string_viewIcSt11char_traitsIcEEEESt4pairINS8_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.aj = load i8, ptr %i.u, align 8, !tbaa !272, !range !180, !alias.scope !8149, !noundef !181
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE5mergeIJS5_S6_S7_EvEEvRNS2_IS4_JDpT_EEEENKUlPNS4_9slot_typeEE_clESF_.exit26

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE5mergeIJS5_S6_S7_EvEEvRNS2_IS4_JDpT_EEEENKUlPNS4_9slot_typeEE_clESF_.exit26: ; preds = %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_112StringPolicyEJNS4_10StringHashENS4_8StringEqESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43, !noalias !8147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.j

bb.i:                                             ; preds = %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_112StringPolicyEJNS4_10StringHashENS4_8StringEqESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit
  %.val.i.i.i.i.i25 = load ptr, ptr %i.v, align 8, !tbaa !161, !alias.scope !8149
  call fastcc void @_ZN4absl12lts_2026052618container_internal20common_policy_traitsINS1_12_GLOBAL__N_112StringPolicyEvE8transferISaIiEEEvPT_PNS4_9slot_typeESB_(ptr noundef %.val.i.i.i.i.i25, ptr noundef nonnull %.sroa.7.036), !noalias !8149
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43, !noalias !8147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %.sroa.028.037, i64 noundef 64)
  br label %bb.j

bb.j:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE5mergeIJS5_S6_S7_EvEEvRNS2_IS4_JDpT_EEEENKUlPNS4_9slot_typeEE_clESF_.exit26, %bb.i
  %.not = icmp eq ptr %.sroa.030.1, null
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !8135

.loopexit:                                        ; preds = %bb.j, %bb.e, %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_112StringPolicyEJNS3_10StringHashENS3_8StringEqESaIiEEE5mergeIJS5_S6_S7_EvEEvRNS2_IS4_JDpT_EEEENKUlPNS4_9slot_typeEE_clESF_.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_27UnorderedElementsAreMatcherISt5tupleIJNS0_11PairMatcherIPKcS6_EEEEEEEclIN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEEENS_15AssertionResultES6_RKT_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"struct.testing::internal::TransformTupleValuesHelper<std::tuple<testing::internal::PairMatcher<const char *, const char *>>, testing::internal::CastAndAppendTransform<const std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>> &>, std::back_insert_iterator<std::vector<testing::Matcher<const std::pair<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>> &>>>>::IterateOverTuple", align 1 ; 3 uses
  %9 = alloca %"class.std::vector.493", align 8   ; 12 uses
  %10 = alloca %"class.testing::Matcher.489", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %12 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8175)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43, !noalias !8176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !8176
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #47
          to label %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESaISC_EE13_M_deallocateEPSC_m.exit.i.i.i.i.i.i unwind label %bb.g, !noalias !8176 ; 3 uses

_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESaISC_EE13_M_deallocateEPSC_m.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %9, align 8, !tbaa !348, !noalias !8176
  store ptr %i.c, ptr %i.b, align 8, !tbaa !349, !noalias !8176
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.d, ptr %i.a, align 8, !tbaa !350, !noalias !8176
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43, !noalias !8176
  %i.e = invoke ptr @_ZNK7testing8internal26TransformTupleValuesHelperISt5tupleIJNS0_11PairMatcherIPKcS5_EEEENS0_22CastAndAppendTransformIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_EEESt20back_insert_iteratorISt6vectorINS_7MatcherISI_EESaISN_EEEE16IterateOverTupleIS7_Lm1EEclESJ_RKS7_SQ_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9)
          to label %bb.b unwind label %bb.g, !noalias !8176 ; 0 uses

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESaISC_EE13_M_deallocateEPSC_m.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43, !noalias !8176
  %i.f = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47
          to label %bb.c unwind label %bb.g, !noalias !8176 ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %9, align 8, !tbaa !351, !noalias !8176
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !351, !noalias !8176
  invoke fastcc void @_ZN7testing8internal31UnorderedElementsAreMatcherImplIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEEC2IN9__gnu_cxx17__normal_iteratorIPNS_7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_EEESt6vectorISO_SaISO_EEEEEENS0_23UnorderedMatcherRequire5FlagsET_SW_(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr %i.g, ptr %i.h)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr @_ZZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE9GetVTableINS9_11ValuePolicyIPKNS_16MatcherInterfaceIS8_EELb1EEEEEPKNS9_6VTableEvE7kVTable, ptr %i.i, align 8, !tbaa !354, !alias.scope !8176
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47
          to label %bb.e unwind label %bb.g, !noalias !8176 ; 3 uses

bb.e:                                             ; preds = %bb.d
  store i32 1, ptr %i.k, align 4, !tbaa !228, !noalias !8176
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = ptrtoint ptr %i.f to i64
  store i64 %i.m, ptr %i.l, align 8, !tbaa !356, !noalias !8176
  store ptr %i.k, ptr %i.j, align 8, !tbaa !161, !alias.scope !8176
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing7MatcherIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEEE, i64 16), ptr %10, align 8, !tbaa !141, !alias.scope !8176
  %i.n = load ptr, ptr %9, align 8, !tbaa !348, !noalias !8176 ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !349, !noalias !8176 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !141, !noalias !8176
  %i.q = load ptr, ptr %i.p, align 8, !noalias !8176
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i.i.i) #43, !noalias !8176, !inline_history !8160
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.o
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !27

_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pr.i9.i.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !348, !noalias !8176
  br label %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.e
  %i.s = phi ptr [ %.pr.i9.i.i.i.i.i, %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableENS_8internal27UnorderedElementsAreMatcherISt5tupleIJNS8_11PairMatcherIPKcSD_EEEEEEEENS_7MatcherIT_EERKT0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exit.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !350, !noalias !8176
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #44, !noalias !8176
  br label %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableENS_8internal27UnorderedElementsAreMatcherISt5tupleIJNS8_11PairMatcherIPKcSD_EEEEEEEENS_7MatcherIT_EERKT0_.exit

bb.g:                                             ; preds = %bb.d, %bb.b, %_ZNSt12_Vector_baseIN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESaISC_EE13_M_deallocateEPSC_m.exit.i.i.i.i.i.i, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #44, !noalias !8176
  br label %bb.i

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i.i.i, %bb.i ], [ %.pn21, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.y, %bb.h ]
  call void @_ZNSt6vectorIN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESaISC_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #43, !noalias !8176
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43, !noalias !8176
  br label %common.resume

_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableENS_8internal27UnorderedElementsAreMatcherISt5tupleIJNS8_11PairMatcherIPKcSD_EEEEEEEENS_7MatcherIT_EERKT0_.exit: ; preds = %_ZSt8_DestroyIPN7testing7MatcherIRKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_EEESC_EvT_SE_RSaIT0_E.exit.i.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43, !noalias !8176
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !198
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %7, align 8, !tbaa !141
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !354
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.ab)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZN7testing15SafeMatcherCastIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableENS_8internal27UnorderedElementsAreMatcherISt5tupleIJNS8_11PairMatcherIPKcSD_EEEEEEEENS_7MatcherIT_EERKT0_.exit
  br i1 %i.ac, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i, label %.noexc3.i

.noexc3.i:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %6, i32 noundef 3, ptr noundef nonnull @.str.390, i32 noundef 234)
          to label %.noexc23 unwind label %bb.l

.noexc23:                                         ; preds = %.noexc3.i
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i

.body.i:                                          ; preds = %.noexc23
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %.body

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i, %.noexc
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !354
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !358
  %i.ah = invoke noundef zeroext i1 %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %7)
          to label %bb.j unwind label %bb.l, !inline_history !28

bb.j:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052618container_internal12_GLOBAL__N_111StringTableEE15MatchAndExplainES8_PNS_19MatchResultListenerE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br i1 %i.ah, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %0)
          to label %bb.as unwind label %bb.l
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_122Table_CountedHash_Test8TestBodyEv:.thread
  br label %_ZN7testing7MessageD2Ev.exit319

bb.fd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit313
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fa
  %i.oh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %43) #43
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.pn102 = phi { ptr, i32 } [ %i.oh, %bb.fe ], [ %i.og, %bb.fd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #43
  %i.oi = load ptr, ptr %42, align 8, !tbaa !170  ; 3 uses
  %.not.i.i317 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i317, label %_ZN7testing7MessageD2Ev.exit319, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i318

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i318: ; preds = %bb.ff
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !141
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(128) %i.oi) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit319

_ZN7testing7MessageD2Ev.exit319:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i318, %bb.ff, %bb.fc
  %.pn102.pn = phi { ptr, i32 } [ %i.of, %bb.fc ], [ %.pn102, %bb.ff ], [ %.pn102, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i318 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #43
  br label %bb.fv

bb.fg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit311, %_ZN7testing7MessageD2Ev.exit316
  %i.om = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !182 ; 4 uses
  %.not.i.i320 = icmp eq ptr %i.on, null
  br i1 %.not.i.i320, label %_ZN7testing15AssertionResultD2Ev.exit324, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !160 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i321: ; preds = %bb.fh
  %i.or = load i64, ptr %i.op, align 8, !tbaa !161
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i321
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit324

_ZN7testing15AssertionResultD2Ev.exit324:         ; preds = %bb.fg, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #43
  %.val3.i.i325 = load i64, ptr %39, align 8      ; 3 uses
  %i.ot = and i64 %.val3.i.i325, 255              ; 2 uses
  %notmask.i.i.i.i.i326 = shl nsw i64 -1, %i.ot   ; 4 uses
  %i.ou = add nsw i64 %notmask.i.i.i.i.i326, 281474976710655 ; 2 uses
  %i.ov = or i64 %i.ou, %notmask.i.i.i.i.i326
  %i.ow = icmp eq i64 %i.ov, -1
  call void @llvm.assume(i1 %i.ow)
  %i.ox = icmp samesign ugt i64 %notmask.i.i.i.i.i326, -281474976710657
  call void @llvm.assume(i1 %i.ox)
  %i.oy = icmp eq i64 %i.ot, 0
  br i1 %i.oy, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEED2Ev.exit342, label %bb.fi

bb.fi:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit324
  %i.oz = and i64 %.val3.i.i325, 254
  %i.pa = icmp eq i64 %i.oz, 0
  br i1 %i.pa, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE7deallocEv.exit.i.i338, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %39, ptr %5, align 8, !tbaa !571
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef 8, ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS5_11CountedHashESt8equal_toIiESaIiEEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSF_SG_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i327 unwind label %bb.fk

.noexc.i327:                                      ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %.val2.i.pre.i.i328 = load i64, ptr %39, align 8 ; 2 uses
  %.pre.i.i329 = and i64 %.val2.i.pre.i.i328, 255
  %.pre5.i.i330 = shl nsw i64 -1, %.pre.i.i329    ; 2 uses
  %.pre6.i.i331 = add nsw i64 %.pre5.i.i330, 281474976710655
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE7deallocEv.exit.i.i338

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE7deallocEv.exit.i.i338: ; preds = %.noexc.i327, %bb.fi
  %.pre-phi7.i.i332 = phi i64 [ %i.ou, %bb.fi ], [ %.pre6.i.i331, %.noexc.i327 ]
  %notmask.i.i.i.i.pre-phi.i.i333 = phi i64 [ %notmask.i.i.i.i.i326, %bb.fi ], [ %.pre5.i.i330, %.noexc.i327 ] ; 3 uses
  %.val2.i.i.i334 = phi i64 [ %.val3.i.i325, %bb.fi ], [ %.val2.i.pre.i.i328, %.noexc.i327 ]
  %i.pb = or i64 %notmask.i.i.i.i.pre-phi.i.i333, %.pre-phi7.i.i332
  %i.pc = icmp eq i64 %i.pb, -1
  call void @llvm.assume(i1 %i.pc)
  %i.pd = icmp samesign ugt i64 %notmask.i.i.i.i.pre-phi.i.i333, -281474976710657
  call void @llvm.assume(i1 %i.pd)
  %i.pe = and i64 %.val2.i.i.i334, 65536
  %.phi.trans.insert.i.i.i336 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %.sroa.0.0.copyload.i.i.i.pre.i.i.i337 = load ptr, ptr %.phi.trans.insert.i.i.i336, align 8, !tbaa !161
  %i.pf = xor i64 %notmask.i.i.i.i.pre-phi.i.i333, -1
  %i.pg = icmp ne i64 %i.pe, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %39, i64 noundef %i.pf, ptr noundef %.sroa.0.0.copyload.i.i.i.pre.i.i.i337, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %i.pg)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEED2Ev.exit342 unwind label %bb.fk

bb.fk:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE7deallocEv.exit.i.i338, %bb.fj
  %i.ph = landingpad { ptr, i32 }
          catch ptr null
  %i.pi = extractvalue { ptr, i32 } %i.ph, 0
  call void @__clang_call_terminate(ptr %i.pi) #48
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEED2Ev.exit342: ; preds = %_ZN7testing15AssertionResultD2Ev.exit324, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE7deallocEv.exit.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #43
  store i64 0, ptr %44, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %44, i64 24
  store i32 0, ptr %i.pj, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #43
  store i32 7, ptr %i.t, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #43
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE7emplaceIJiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSA_8iteratorEbEDpOSD_(ptr dead_on_unwind noalias nonnull writable align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 4 dereferenceable(4) %i.t)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE6insertIiLi0EEESt4pairINSA_8iteratorEbEOT_.exit344 unwind label %bb.fx

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE6insertIiLi0EEESt4pairINSA_8iteratorEbEOT_.exit344: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEED2Ev.exit342
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #43
  store i64 0, ptr %46, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %46, i64 24 ; 2 uses
  store i32 0, ptr %i.pk, align 8, !tbaa !188
  %.val.i345 = load i64, ptr %44, align 8         ; 2 uses
  %i.pl = and i64 %.val.i345, 254
  %i.pm = icmp eq i64 %i.pl, 0
  %.not.i.i346 = icmp ult i64 %.val.i345, 131072  ; 2 uses
  br i1 %i.pm, label %bb.fl, label %bb.fo

bb.fl:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE6insertIiLi0EEESt4pairINSA_8iteratorEbEOT_.exit344
  br i1 %.not.i.i346, label %.loopexit483, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.pn = getelementptr inbounds nuw i8, ptr %44, i64 16
  %.val13.i = load ptr, ptr %i.pn, align 8, !tbaa !161 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !9464)
  call void @llvm.experimental.noalias.scope.decl(metadata !9465)
  call void @llvm.experimental.noalias.scope.decl(metadata !9466)
  call void @llvm.experimental.noalias.scope.decl(metadata !9467)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE22find_or_prepare_insertIlEESt4pairINSA_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %.val13.i)
          to label %.noexc349 unwind label %.loopexit.split-lp

.noexc349:                                        ; preds = %bb.fm
  %i.po = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pp = load i8, ptr %i.po, align 8, !tbaa !576, !range !180, !alias.scope !9468, !noundef !181
  %i.pq = trunc nuw i8 %i.pp to i1
  br i1 %i.pq, label %bb.fn, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE5mergeIJS6_S8_S9_EvEEvRNS2_IS5_JDpT_EEEENKUlPlE_clESG_.exit.i

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE5mergeIJS6_S8_S9_EvEEvRNS2_IS5_JDpT_EEEENKUlPlE_clESG_.exit.i: ; preds = %.noexc349
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %.loopexit483

bb.fn:                                            ; preds = %.noexc349
  %i.pr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.pr, align 8, !tbaa !161, !alias.scope !9468
  %.val1.val.val.i.i.i.i.i.i.i = load i64, ptr %.val13.i, align 8, !tbaa !166, !noalias !9468
  store i64 %.val1.val.val.i.i.i.i.i.i.i, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !9468
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlySmallERNS1_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(32) %44, i1 noundef zeroext false, i64 noundef 8)
          to label %.loopexit483 unwind label %.loopexit.split-lp

bb.fo:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE6insertIiLi0EEESt4pairINSA_8iteratorEbEOT_.exit344
  br i1 %.not.i.i346, label %.loopexit483, label %bb.fp, !prof !233

bb.fp:                                            ; preds = %bb.fo
  %i.ps = getelementptr inbounds nuw i8, ptr %44, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i347 = load ptr, ptr %i.ps, align 8, !tbaa !161, !nonnull !181, !noundef !181 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %44, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.pt, align 8, !tbaa !161 ; 2 uses
  %i.pu = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i347, align 1, !tbaa !236
  %i.pv = icmp slt i8 %i.pu, -1
  br i1 %i.pv, label %.lr.ph.i.i.i, label %.lr.ph.i

.lr.ph.i.i.i:                                     ; preds = %bb.fp, %.lr.ph.i.i.i
  %i.pw = phi ptr [ %i.pz, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.fp ]
  %i.px = phi ptr [ %i.py, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i347, %bb.fp ]
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 1 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  %i.qa = load i8, ptr %i.py, align 1, !tbaa !236
  %i.qb = icmp slt i8 %i.qa, -1
  br i1 %i.qb, label %.lr.ph.i.i.i, label %.lr.ph.i, !llvm.loop !9443

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i, %bb.fp
  %.sroa.6.0.i.ph.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.fp ], [ %i.pz, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.ph.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i347, %bb.fp ], [ %i.py, %.lr.ph.i.i.i ]
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.fq

bb.fq:                                            ; preds = %.noexc352, %.lr.ph.i
  %.sroa.027.036.i = phi ptr [ %.sroa.0.0.i.ph.i, %.lr.ph.i ], [ %.sroa.029.1.i, %.noexc352 ] ; 2 uses
  %.sroa.7.035.i = phi ptr [ %.sroa.6.0.i.ph.i, %.lr.ph.i ], [ %.sroa.8.0.i, %.noexc352 ] ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.027.036.i, i64 1 ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.7.035.i, i64 8 ; 2 uses
  %i.qg = load i8, ptr %i.qe, align 1, !tbaa !236 ; 2 uses
  %i.qh = icmp slt i8 %i.qg, -1
  br i1 %i.qh, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fq, %.lr.ph.i.i.i.i
  %i.qi = phi ptr [ %i.ql, %.lr.ph.i.i.i.i ], [ %i.qf, %bb.fq ]
  %i.qj = phi ptr [ %i.qk, %.lr.ph.i.i.i.i ], [ %i.qe, %bb.fq ]
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 1 ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 2 uses
  %i.qm = load i8, ptr %i.qk, align 1, !tbaa !236 ; 2 uses
  %i.qn = icmp slt i8 %i.qm, -1
  br i1 %i.qn, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i, !llvm.loop !9443

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.fq
  %.sroa.029.0.i = phi ptr [ %i.qe, %bb.fq ], [ %i.qk, %.lr.ph.i.i.i.i ]
  %.sroa.8.0.i = phi ptr [ %i.qf, %bb.fq ], [ %i.ql, %.lr.ph.i.i.i.i ]
  %i.qo = phi i8 [ %i.qg, %bb.fq ], [ %i.qm, %.lr.ph.i.i.i.i ]
  %i.qp = icmp eq i8 %i.qo, -1
  br i1 %i.qp, label %bb.fr, label %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS4_11CountedHashESt8equal_toIiESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit.i, !prof !233

bb.fr:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  br label %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS4_11CountedHashESt8equal_toIiESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit.i

_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS4_11CountedHashESt8equal_toIiESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit.i: ; preds = %bb.fr, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i
  %.sroa.029.1.i = phi ptr [ null, %bb.fr ], [ %.sroa.029.0.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE8iterator21skip_empty_or_deletedEv.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !9469)
  call void @llvm.experimental.noalias.scope.decl(metadata !9470)
  call void @llvm.experimental.noalias.scope.decl(metadata !9471)
  call void @llvm.experimental.noalias.scope.decl(metadata !9472)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE22find_or_prepare_insertIlEESt4pairINSA_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.7.035.i)
          to label %.noexc351 unwind label %.loopexit

.noexc351:                                        ; preds = %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS4_11CountedHashESt8equal_toIiESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit.i
  %i.qq = load i8, ptr %i.qc, align 8, !tbaa !576, !range !180, !alias.scope !9473, !noundef !181
  %i.qr = trunc nuw i8 %i.qq to i1
  br i1 %i.qr, label %bb.fs, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE5mergeIJS6_S8_S9_EvEEvRNS2_IS5_JDpT_EEEENKUlPlE_clESG_.exit25.i

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE5mergeIJS6_S8_S9_EvEEvRNS2_IS5_JDpT_EEEENKUlPlE_clESG_.exit25.i: ; preds = %.noexc351
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %.noexc352

bb.fs:                                            ; preds = %.noexc351
  %.val.i.i.i.i.i23.i = load ptr, ptr %i.qd, align 8, !tbaa !161, !alias.scope !9473
  %.val1.val.val.i.i.i.i.i.i24.i = load i64, ptr %.sroa.7.035.i, align 8, !tbaa !166, !noalias !9473
  store i64 %.val1.val.val.i.i.i.i.i.i24.i, ptr %.val.i.i.i.i.i23.i, align 8, !tbaa !166, !noalias !9473
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  invoke void @_ZN4absl12lts_2026052618container_internal18EraseMetaOnlyLargeERNS1_12CommonFieldsEPKNS1_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull %.sroa.027.036.i, i64 noundef 8)
          to label %.noexc352 unwind label %.loopexit

.noexc352:                                        ; preds = %bb.fs, %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE5mergeIJS6_S8_S9_EvEEvRNS2_IS5_JDpT_EEEENKUlPlE_clESG_.exit25.i
  %.not.i = icmp eq ptr %.sroa.029.1.i, null
  br i1 %.not.i, label %.loopexit483, label %bb.fq, !llvm.loop !9452

.loopexit483:                                     ; preds = %.noexc352, %bb.fn, %bb.fl, %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEE5mergeIJS6_S8_S9_EvEEvRNS2_IS5_JDpT_EEEENKUlPlE_clESG_.exit.i, %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #43
  %.val = load i32, ptr %i.pk, align 8, !tbaa !188 ; 2 uses
  store i32 %.val, ptr %i.u, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #43
  store i32 0, ptr %i.v, align 4, !tbaa !188
  %i.qs = icmp eq i32 %.val, 0
  br i1 %i.qs, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.loopexit483
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit355 unwind label %bb.fy

bb.fu:                                            ; preds = %.loopexit483
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %47, ptr noundef nonnull @.str.645, ptr noundef nonnull @.str.329, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit355 unwind label %bb.fy

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit355: ; preds = %bb.ft, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #43
  %i.qt = load i8, ptr %47, align 8, !tbaa !179, !range !180, !noundef !181
  %i.qu = trunc nuw i8 %i.qt to i1
  br i1 %i.qu, label %bb.gi, label %bb.fz

bb.fv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit319, %bb.ew
  %.pn102.pn.pn = phi { ptr, i32 } [ %.pn102.pn, %_ZN7testing7MessageD2Ev.exit319 ], [ %i.nw, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #43
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.ev
  %.pn102.pn.pn.pn = phi { ptr, i32 } [ %.pn102.pn.pn, %bb.fv ], [ %i.nv, %bb.ev ]
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %39) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #43
  br label %bb.gt

bb.fx:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS3_11CountedHashESt8equal_toIiESaIiEEED2Ev.exit342
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #43
  br label %bb.gs

.loopexit:                                        ; preds = %_ZSt9__advanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_12_GLOBAL__N_111ValuePolicyIlLb0ELb0EEEJNS4_11CountedHashESt8equal_toIiESaIiEEE8iteratorElEvRT_T0_St18input_iterator_tag.exit.i, %bb.fs
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

.loopexit.split-lp:                               ; preds = %bb.fm, %bb.fn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.fy:                                            ; preds = %bb.fu, %bb.ft
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #43
  br label %bb.gq

bb.fz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit355
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.ga unwind label %bb.ge

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #43
  %i.qx = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !182 ; 2 uses
  %.not.i.i356 = icmp eq ptr %i.qy, null
  br i1 %.not.i.i356, label %_ZNK7testing15AssertionResult15failure_messageEv.exit357, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !160
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit357

_ZNK7testing15AssertionResult15failure_messageEv.exit357: ; preds = %bb.gb, %bb.ga
  %i.ra = phi ptr [ %i.qz, %bb.gb ], [ @.str.31, %bb.ga ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 4035, ptr noundef %i.ra)
          to label %bb.gc unwind label %bb.gf

bb.gc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit357
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %48)
          to label %bb.gd unwind label %bb.gg

bb.gd:                                            ; preds = %bb.gc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #43
  %i.rb = load ptr, ptr %48, align 8, !tbaa !170  ; 3 uses
  %.not.i.i358 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i358, label %_ZN7testing7MessageD2Ev.exit360, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359: ; preds = %bb.gd
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !141
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8
  call void %i.re(ptr noundef nonnull align 8 dereferenceable(128) %i.rb) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit360

_ZN7testing7MessageD2Ev.exit360:                  ; preds = %bb.gd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #43
  br label %bb.gi

bb.ge:                                            ; preds = %bb.fz
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit363

bb.gf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit357
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %bb.gh

bb.gg:                                            ; preds = %bb.gc
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #43
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.pn109 = phi { ptr, i32 } [ %i.rh, %bb.gg ], [ %i.rg, %bb.gf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #43
  %i.ri = load ptr, ptr %48, align 8, !tbaa !170  ; 3 uses
  %.not.i.i361 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i361, label %_ZN7testing7MessageD2Ev.exit363, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i362

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i362: ; preds = %bb.gh
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !141
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8
  call void %i.rl(ptr noundef nonnull align 8 dereferenceable(128) %i.ri) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit363

_ZN7testing7MessageD2Ev.exit363:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i362, %bb.gh, %bb.ge
  %.pn109.pn = phi { ptr, i32 } [ %i.rf, %bb.ge ], [ %.pn109, %bb.gh ], [ %.pn109, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i362 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %47) #43
  br label %bb.gq

bb.gi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit355, %_ZN7testing7MessageD2Ev.exit360
  %i.rm = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !182 ; 4 uses
  %.not.i.i364 = icmp eq ptr %i.rn, null
  br i1 %.not.i.i364, label %_ZN7testing15AssertionResultD2Ev.exit368, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !160 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 16 ; 2 uses
  %i.rq = icmp eq ptr %i.ro, %i.rp
  br i1 %i.rq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i365: ; preds = %bb.gj
  %i.rr = load i64, ptr %i.rp, align 8, !tbaa !161
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rs) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366: ; preds = %bb.gj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i365
  call void @_ZdlPvm(ptr noundef nonnull %i.rn, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit368

_ZN7testing15AssertionResultD2Ev.exit368:         ; preds = %bb.gi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #43
  %.val3.i.i369 = load i64, ptr %46, align 8      ; 3 uses
  %i.rt = and i64 %.val3.i.i369, 255              ; 2 uses
  %notmask.i.i.i.i.i370 = shl nsw i64 -1, %i.rt   ; 4 uses
  %i.ru = add nsw i64 %notmask.i.i.i.i.i370, 281474976710655 ; 2 uses
  %i.rv = or i64 %i.ru, %notmask.i.i.i.i.i370
  %i.rw = icmp eq i64 %i.rv, -1
  call void @llvm.assume(i1 %i.rw)
  %i.rx = icmp samesign ugt i64 %notmask.i.i.i.i.i370, -281474976710657
end_hunk_1
