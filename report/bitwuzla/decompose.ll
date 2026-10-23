Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/decompose?download=true
inline.NumInlined: 669
inline.NumDeleted: 269
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7CaDiCaL8Internal21build_lrat_for_clauseERKSt6vectorIS1_IPNS_6ClauseESaIS3_EESaIS5_EEb:bb.a
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i69: ; preds = %bb.ar
  %i.ic = ashr exact i64 %i.ia, 3                 ; 3 uses
  %.sroa.speculated.i.i.i70 = tail call i64 @llvm.umax.i64(i64 %i.ic, i64 1)
  %i.id = add nsw i64 %.sroa.speculated.i.i.i70, %i.ic ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = tail call i64 @llvm.umin.i64(i64 %i.id, i64 1152921504606846975)
  %i.ig = select i1 %i.ie, i64 1152921504606846975, i64 %i.if ; 3 uses
  %.not.i.i.i71 = icmp ne i64 %i.ig, 0
  tail call void @llvm.assume(i1 %.not.i.i.i71)
  %i.ih = shl nuw nsw i64 %i.ig, 3
  %i.ii = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #12 ; 4 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 %i.ia ; 2 uses
  %i.ik = load i64, ptr %i.hu, align 8, !tbaa !162
  store i64 %i.ik, ptr %i.ij, align 8, !tbaa !162
  %i.il = icmp sgt i64 %i.ia, 0
  br i1 %i.il, label %bb.at, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i72

bb.at:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ii, ptr align 8 %i.hx, i64 %i.ia, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i72

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i72: ; preds = %bb.at, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i69
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  %.not.i17.i.i73 = icmp eq ptr %i.hx, null
  br i1 %.not.i17.i.i73, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i72
  tail call void @_ZdlPv(ptr noundef nonnull %i.hx) #13
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74: ; preds = %bb.au, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i72
  store ptr %i.ii, ptr %i.n, align 8, !tbaa !163
  store ptr %i.im, ptr %i.o, align 8, !tbaa !160
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ig ; 2 uses
  store ptr %i.in, ptr %i.p, align 8, !tbaa !161
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit75

_ZNSt6vectorImSaImEE9push_backERKm.exit75:        ; preds = %bb.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74
  %i.io = phi ptr [ %i.hs, %bb.aq ], [ %i.in, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74 ]
  %i.ip = phi ptr [ %i.hw, %bb.aq ], [ %i.im, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74 ]
  %i.iq = load ptr, ptr %i.j, align 8, !tbaa !173, !noalias !193 ; 2 uses
  %.not109 = icmp eq ptr %i.hu, %i.iq
  br i1 %.not109, label %.loopexit.loopexit, label %.lr.ph140, !llvm.loop !190

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit67.thread
  %i.ir = load ptr, ptr %i.j, align 8, !tbaa !173 ; 2 uses
  %i.is = load ptr, ptr %i.k, align 8, !tbaa !173
  %.not108135 = icmp eq ptr %i.ir, %i.is
  br i1 %.not108135, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %bb.av
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !160
  %.pre147 = load ptr, ptr %i.p, align 8, !tbaa !161
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit83
  %i.it = phi ptr [ %i.jo, %_ZNSt6vectorImSaImEE9push_backERKm.exit83 ], [ %.pre147, %.lr.ph137.preheader ] ; 3 uses
  %i.iu = phi ptr [ %i.jp, %_ZNSt6vectorImSaImEE9push_backERKm.exit83 ], [ %.pre, %.lr.ph137.preheader ] ; 3 uses
  %.sroa.085.0136 = phi ptr [ %i.jq, %_ZNSt6vectorImSaImEE9push_backERKm.exit83 ], [ %i.ir, %.lr.ph137.preheader ] ; 3 uses
  %.not.i76 = icmp eq ptr %i.iu, %i.it
  br i1 %.not.i76, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph137
  %i.iv = load i64, ptr %.sroa.085.0136, align 8, !tbaa !162
  store i64 %i.iv, ptr %i.iu, align 8, !tbaa !162
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  store ptr %i.iw, ptr %i.o, align 8, !tbaa !160
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit83

bb.ax:                                            ; preds = %.lr.ph137
  %i.ix = load ptr, ptr %i.n, align 8, !tbaa !163 ; 4 uses
  %i.iy = ptrtoint ptr %i.it to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 5 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775800
  br i1 %i.jb, label %bb.ay, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i77

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #11
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i77: ; preds = %bb.ax
  %i.jc = ashr exact i64 %i.ja, 3                 ; 3 uses
  %.sroa.speculated.i.i.i78 = tail call i64 @llvm.umax.i64(i64 %i.jc, i64 1)
  %i.jd = add nsw i64 %.sroa.speculated.i.i.i78, %i.jc ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.jc
  %i.jf = tail call i64 @llvm.umin.i64(i64 %i.jd, i64 1152921504606846975)
  %i.jg = select i1 %i.je, i64 1152921504606846975, i64 %i.jf ; 3 uses
  %.not.i.i.i79 = icmp ne i64 %i.jg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i79)
  %i.jh = shl nuw nsw i64 %i.jg, 3
  %i.ji = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jh) #12 ; 4 uses
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 %i.ja ; 2 uses
  %i.jk = load i64, ptr %.sroa.085.0136, align 8, !tbaa !162
  store i64 %i.jk, ptr %i.jj, align 8, !tbaa !162
  %i.jl = icmp sgt i64 %i.ja, 0
  br i1 %i.jl, label %bb.az, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i80

bb.az:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i77
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ji, ptr align 8 %i.ix, i64 %i.ja, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i80

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i80: ; preds = %bb.az, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i77
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %.not.i17.i.i81 = icmp eq ptr %i.ix, null
  br i1 %.not.i17.i.i81, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i80
  tail call void @_ZdlPv(ptr noundef nonnull %i.ix) #13
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82: ; preds = %bb.ba, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i80
  store ptr %i.ji, ptr %i.n, align 8, !tbaa !163
  store ptr %i.jm, ptr %i.o, align 8, !tbaa !160
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jg ; 2 uses
  store ptr %i.jn, ptr %i.p, align 8, !tbaa !161
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit83

_ZNSt6vectorImSaImEE9push_backERKm.exit83:        ; preds = %bb.aw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82
  %i.jo = phi ptr [ %i.it, %bb.aw ], [ %i.jn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82 ]
  %i.jp = phi ptr [ %i.iw, %bb.aw ], [ %i.jm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.085.0136, i64 8 ; 3 uses
  %i.jr = load ptr, ptr %i.k, align 8, !tbaa !173
  %.not108 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not108, label %.loopexit.loopexit144, label %.lr.ph137, !llvm.loop !191

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit75
  %.pre151 = load ptr, ptr %i.k, align 8, !tbaa !160
  br label %.loopexit

.loopexit.loopexit144:                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit83
  %.pre150 = load ptr, ptr %i.j, align 8, !tbaa !163
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit144, %.loopexit.loopexit, %bb.ap
  %i.js = phi ptr [ %i.jq, %.loopexit.loopexit144 ], [ %.pre151, %.loopexit.loopexit ], [ %i.hq, %bb.ap ]
  %i.jt = phi ptr [ %.pre150, %.loopexit.loopexit144 ], [ %i.iq, %.loopexit.loopexit ], [ %i.hr, %bb.ap ] ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.js, %i.jt
  br i1 %.not.i.i84, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.loopexit
  store ptr %i.jt, ptr %i.k, align 8, !tbaa !160
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.av, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %.loopexit, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.k, %bb.d
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0100.0142, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ju, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal25clear_decomposed_literalsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(7288) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 760
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !168 ; 2 uses
  %.pre9 = load ptr, ptr %i.c, align 8, !tbaa !166
  %i.f = icmp eq ptr %.pre9, %.pre
  br i1 %i.f, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %.pre, ptr %i.c, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.08 = phi ptr [ %i.b, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %.sroa.04.08, align 4, !tbaa !164 ; 2 uses
  %i.h = tail call noundef i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %i.i = zext nneg i32 %i.h to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !165
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 1
  %i.m = ashr i32 %i.g, 20
  %i.n = and i32 %i.m, 6144
  %i.o = xor i32 %i.n, -2049
  %i.p = and i32 %i.o, %i.l
  store i32 %i.p, ptr %i.k, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal15decompose_roundEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.50", align 8    ; 11 uses
  %2 = alloca %"class.std::vector.0", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.b = load i32, ptr %i.a, align 8, !tbaa !207
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 14 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !208, !range !156, !noundef !157
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.g = load volatile i8, ptr %i.f, align 8, !tbaa !209, !range !156, !noundef !157
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !210  ; 3 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !210
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !211
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !230  ; 3 uses
  %.not3.i = icmp eq ptr %i.q, null
  br i1 %.not3.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.i, align 8, !tbaa !231  ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.i, align 8, !tbaa !231
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3804
  %i.u = load i32, ptr %i.t, align 4, !tbaa !232
  store i32 %i.u, ptr %i.i, align 8, !tbaa !231
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !234
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !194
  br i1 %i.y, label %.sink.split.i, label %bb.i

.sink.split.i:                                    ; preds = %bb.h, %bb.e
  store volatile i8 1, ptr %i.f, align 8, !tbaa !209
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !235
  %.not.i507 = icmp eq i32 %i.aa, 0
  br i1 %.not.i507, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.j, %bb.k
  %i.ad = phi double [ %i.ab, %bb.j ], [ %i.ac, %bb.k ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 12 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3608
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !237 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !238, !range !156, !noundef !157
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.s, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !239, !range !156, !noundef !157
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !240, !range !156, !noundef !157
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %.thread2108

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 6800
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !241
  %.not401 = icmp sgt i32 %i.as, %i.ah
  br i1 %.not401, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 6768
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.af, ptr noundef nonnull align 8 dereferenceable(36) %i.at, double noundef %i.ad)
  %.pre = load i8, ptr %i.ao, align 4, !tbaa !240, !range !156
  %.pre1909.pre = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 2 uses
  %i.au = trunc nuw i8 %.pre to i1
  br i1 %i.au, label %.thread, label %.thread2108

.thread2108:                                      ; preds = %bb.m, %bb.o
  %.pre19092110 = phi ptr [ %.pre1909.pre, %bb.o ], [ %i.af, %bb.m ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre19092110, i64 7040
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !242
  %.not402 = icmp sgt i32 %i.aw, %i.ah
  br i1 %.not402, label %.thread, label %bb.p

bb.p:                                             ; preds = %.thread2108
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre19092110, i64 7008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre19092110, ptr noundef nonnull align 8 dereferenceable(36) %i.ax, double noundef %i.ad)
  %.pre1908 = load ptr, ptr %i.ae, align 8, !tbaa !236
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.p, %.thread2108, %bb.o
  %i.ay = phi ptr [ %.pre1908, %bb.p ], [ %.pre19092110, %.thread2108 ], [ %.pre1909.pre, %bb.o ], [ %i.af, %bb.n ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 6720
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !243
  %.not403 = icmp sgt i32 %i.ba, %i.ah
  br i1 %.not403, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 6688
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ay, ptr noundef nonnull align 8 dereferenceable(36) %i.bb, double noundef %i.ad)
  %.pre1910.pre = load ptr, ptr %i.ae, align 8, !tbaa !236
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %.pre1910 = phi ptr [ %.pre1910.pre, %bb.q ], [ %i.ay, %.thread ]
  %i.bc = load i32, ptr %0, align 8, !tbaa !244
  %i.bd = and i32 %i.bc, -257
  store i32 %i.bd, ptr %0, align 8, !tbaa !244
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.be = phi ptr [ %.pre1910, %bb.r ], [ %i.af, %bb.l ], [ %i.af, %_ZN7CaDiCaL8Internal4timeEv.exit ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6880
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !245
  %.not404 = icmp sgt i32 %i.bg, %i.ah
  br i1 %.not404, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 6848
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.be, ptr noundef nonnull align 8 dereferenceable(36) %i.bh, double noundef %i.ad)
  %.pre1911 = load ptr, ptr %i.ae, align 8, !tbaa !236
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bi = phi ptr [ %.pre1911, %bb.t ], [ %i.be, %bb.s ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6120
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !246
  %.not405 = icmp sgt i32 %i.bk, %i.ah
  br i1 %.not405, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 6088
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.bi, ptr noundef nonnull align 8 dereferenceable(36) %i.bl, double noundef %i.ad)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bm = load i32, ptr %0, align 8, !tbaa !244
  %i.bn = or i32 %i.bm, 520
  store i32 %i.bn, ptr %0, align 8, !tbaa !244
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 5016 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !247
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !247
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !248
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = shl nsw i64 %i.bt, 1
  %i.bv = add nsw i64 %i.bu, 2                    ; 8 uses
  %i.bw = icmp ugt i64 %i.bv, 1152921504606846975
  %i.bx = shl nsw i64 %i.bv, 4
  %i.by = select i1 %i.bw, i64 -1, i64 %i.bx
  %i.bz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.by) #12 ; 29 uses
  %i.ca = icmp eq i64 %i.bv, 0                    ; 2 uses
  br i1 %i.ca, label %.loopexit1225, label %.loopexit1225.loopexit

.loopexit1225.loopexit:                           ; preds = %bb.w
  %i.cb = shl nsw i64 %i.bt, 5
  %i.cc = add nsw i64 %i.cb, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bz, i8 0, i64 %i.cc, i1 false)
  br label %.loopexit1225

.loopexit1225:                                    ; preds = %.loopexit1225.loopexit, %bb.w
  %i.cd = icmp ugt i64 %i.bv, 4611686018427387903
  %i.ce = shl nsw i64 %i.bv, 2                    ; 2 uses
  %i.cf = select i1 %i.cd, i64 -1, i64 %i.ce
  %i.cg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cf) #12
          to label %bb.x unwind label %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844.thread ; 27 uses

bb.x:                                             ; preds = %.loopexit1225
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cg, i8 0, i64 %i.ce, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.ca, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = icmp ugt i64 %i.bv, 384307168202282325
  br i1 %i.cj, label %bb.z, label %_ZNKSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #11
          to label %.noexc848 unwind label %bb.aa

.noexc848:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.y
  %i.ck = mul nuw nsw i64 %i.bv, 24               ; 2 uses
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #12
          to label %.noexc849 unwind label %bb.aa ; 4 uses

.noexc849:                                        ; preds = %_ZNKSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cl, i8 0, i64 %i.ck, i1 false)
  store ptr %i.cl, ptr %1, align 8, !tbaa !177
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.bv ; 3 uses
  store ptr %i.cm, ptr %i.ch, align 8, !tbaa !249
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !250
  br label %bb.ab

_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844.thread: ; preds = %.loopexit1225
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ku

bb.aa:                                            ; preds = %bb.z, %_ZNKSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.kt

bb.ab:                                            ; preds = %.noexc849, %bb.x
  %3 = phi ptr [ %i.cm, %.noexc849 ], [ null, %bb.x ] ; 20 uses
  %4 = phi ptr [ %i.cl, %.noexc849 ], [ null, %bb.x ] ; 23 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 10 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 5544
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !251
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 7272 ; 4 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !252, !nonnull !157, !align !253
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !164 ; 2 uses
  %.not11491712 = icmp eq i32 %i.cv, 0
  br i1 %.not11491712, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit605, label %.lr.ph1724.a

.lr.ph1724.a:                                     ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre1912 = load i8, ptr %i.c, align 4, !tbaa !208, !range !156 ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph1724.a, %.loopexit1219
  %i.dj = phi i8 [ %.pre1912, %.lr.ph1724.a ], [ %i.qy, %.loopexit1219 ] ; 3 uses
  %i.dk = phi i8 [ %.pre1912, %.lr.ph1724.a ], [ %i.qz, %.loopexit1219 ] ; 2 uses
  %i.dl = phi i8 [ %.pre1912, %.lr.ph1724.a ], [ %i.ra, %.loopexit1219 ]
  %.02791722 = phi i32 [ 0, %.lr.ph1724.a ], [ %.9288.ph, %.loopexit1219 ] ; 3 uses
  %.02891721 = phi i32 [ 0, %.lr.ph1724.a ], [ %.13302.ph, %.loopexit1219 ] ; 4 uses
  %.03041720 = phi i32 [ 0, %.lr.ph1724.a ], [ %.14318.ph, %.loopexit1219 ] ; 4 uses
  %.sroa.01043.01719 = phi i32 [ 1, %.lr.ph1724.a ], [ %i.rb, %.loopexit1219 ] ; 4 uses
  %.sroa.24.01718 = phi ptr [ null, %.lr.ph1724.a ], [ %.sroa.24.6.ph, %.loopexit1219 ] ; 4 uses
  %.sroa.16.01717 = phi ptr [ null, %.lr.ph1724.a ], [ %.sroa.16.9.ph, %.loopexit1219 ] ; 3 uses
  %.sroa.01046.01716 = phi ptr [ null, %.lr.ph1724.a ], [ %.sroa.01046.8.ph, %.loopexit1219 ] ; 4 uses
  %.sroa.25.01715 = phi ptr [ null, %.lr.ph1724.a ], [ %.sroa.25.9.ph, %.loopexit1219 ] ; 4 uses
  %.sroa.131067.01714 = phi ptr [ null, %.lr.ph1724.a ], [ %.sroa.131067.9.ph, %.loopexit1219 ] ; 3 uses
  %.sroa.01061.01713 = phi ptr [ null, %.lr.ph1724.a ], [ %.sroa.01061.11.ph, %.loopexit1219 ] ; 4 uses
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %._crit_edge1725, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.01043.01719, i1 true)
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.cw, align 8, !tbaa !165
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.do
  %i.dr = load i32, ptr %i.dq, align 1
  %i.ds = and i32 %i.dr, 117440512
  %i.dt = icmp eq i32 %i.ds, 16777216
  br i1 %i.dt, label %.preheader1218, label %.loopexit1219

.preheader1218:                                   ; preds = %bb.ad
  %i.du = trunc nuw i8 %i.dk to i1
  br i1 %i.du, label %.loopexit1219, label %.lr.ph1702

.lr.ph1702:                                       ; preds = %.preheader1218, %.critedge
  %i.dv = phi i8 [ 0, %.critedge ], [ %i.dj, %.preheader1218 ]
  %.02711701 = phi i32 [ %i.qv, %.critedge ], [ -1, %.preheader1218 ] ; 3 uses
  %.12801700 = phi i32 [ %.8287, %.critedge ], [ %.02791722, %.preheader1218 ] ; 3 uses
  %.12901699 = phi i32 [ %.12301, %.critedge ], [ %.02891721, %.preheader1218 ] ; 3 uses
  %.13051698 = phi i32 [ %.13317, %.critedge ], [ %.03041720, %.preheader1218 ] ; 3 uses
  %.sroa.24.11697 = phi ptr [ %.sroa.24.5, %.critedge ], [ %.sroa.24.01718, %.preheader1218 ] ; 3 uses
  %.sroa.16.11696 = phi ptr [ %.sroa.16.8, %.critedge ], [ %.sroa.16.01717, %.preheader1218 ] ; 3 uses
  %.sroa.01046.11695 = phi ptr [ %.sroa.01046.6, %.critedge ], [ %.sroa.01046.01716, %.preheader1218 ] ; 4 uses
  %.sroa.25.11694 = phi ptr [ %.sroa.25.8, %.critedge ], [ %.sroa.25.01715, %.preheader1218 ] ; 4 uses
  %.sroa.131067.11693 = phi ptr [ %.sroa.131067.8, %.critedge ], [ %.sroa.131067.01714, %.preheader1218 ] ; 4 uses
  %.sroa.01061.11692 = phi ptr [ %.sroa.01061.9, %.critedge ], [ %.sroa.01061.01713, %.preheader1218 ] ; 7 uses
  %i.dw = mul nsw i32 %.02711701, %.sroa.01043.01719 ; 4 uses
  %i.dx = tail call noundef i32 @llvm.abs.i32(i32 %i.dw, i1 true)
  %i.dy = tail call noundef i32 @llvm.fshl.i32(i32 %i.dx, i32 %i.dw, i32 1)
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !254
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %.critedge, label %bb.ae

.loopexit.split-lp1221.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.ah
  %lpad.loopexit.split-lp2975 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit828

bb.ae:                                            ; preds = %.lr.ph1702
  %.not.i508 = icmp eq ptr %.sroa.131067.11693, %.sroa.25.11694
  br i1 %.not.i508, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 %i.dw, ptr %.sroa.131067.11693, align 4, !tbaa !164
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ee = ptrtoint ptr %.sroa.25.11694 to i64
  %i.ef = ptrtoint ptr %.sroa.01061.11692 to i64
  %i.eg = sub i64 %i.ee, %i.ef                    ; 5 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775804
  br i1 %i.eh, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #11
          to label %.noexc509 unwind label %.loopexit.split-lp1221.loopexit.split-lp

.noexc509:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.ei = ashr exact i64 %i.eg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 1)
  %i.ej = add nsw i64 %.sroa.speculated.i.i.i, %i.ei ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %i.ei
  %i.el = tail call i64 @llvm.umin.i64(i64 %i.ej, i64 2305843009213693951)
  %i.em = select i1 %i.ek, i64 2305843009213693951, i64 %i.el ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.em, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.en = shl nuw nsw i64 %i.em, 2
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #12
          to label %.noexc510 unwind label %.loopexit.split-lp1221.loopexit.split-lp ; 4 uses

.noexc510:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.eg ; 2 uses
  store i32 %i.dw, ptr %i.ep, align 4, !tbaa !164
  %i.eq = icmp sgt i64 %i.eg, 0
  br i1 %i.eq, label %bb.ai, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ai:                                            ; preds = %.noexc510
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.eo, ptr align 4 %.sroa.01061.11692, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ai, %.noexc510
  %.not.i17.i.i = icmp eq ptr %.sroa.01061.11692, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.01061.11692) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.em
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.01061.14 = phi ptr [ %i.eo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.01061.11692, %bb.af ] ; 3 uses
  %.pn = phi ptr [ %i.ep, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.131067.11693, %bb.af ]
  %.sroa.25.11 = phi ptr [ %i.er, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.25.11694, %bb.af ] ; 2 uses
  %.sroa.131067.10 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %i.es = load i8, ptr %i.c, align 4, !tbaa !208, !range !156, !noundef !157 ; 3 uses
  %i.et = trunc nuw i8 %i.es to i1                ; 2 uses
  %i.eu = icmp eq ptr %.sroa.01061.14, %.sroa.131067.10
  %or.cond1144283628582884 = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond1144283628582884, label %.critedge, label %.lr.ph2838.lr.ph

.lr.ph2838.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.loopexit1199
  %i.ev = phi i1 [ %i.qs, %.loopexit1199 ], [ %i.et, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.ew = phi i8 [ %i.qr, %.loopexit1199 ], [ %i.es, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.2281.ph2893 = phi i32 [ %.6285, %.loopexit1199 ], [ %.12801700, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.2291.ph2892 = phi i32 [ %.2291.ph21822862, %.loopexit1199 ], [ %.12901699, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.2306.ph2891 = phi i32 [ %.2306.ph21812861, %.loopexit1199 ], [ %.13051698, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.24.2.ph2890 = phi ptr [ %.sroa.24.4, %.loopexit1199 ], [ %.sroa.24.11697, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.sroa.16.2.ph2889 = phi ptr [ %.sroa.16.7, %.loopexit1199 ], [ %.sroa.16.11696, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.01046.2.ph2888 = phi ptr [ %.sroa.01046.4, %.loopexit1199 ], [ %.sroa.01046.11695, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 18 uses
  %.sroa.25.2.ph2887 = phi ptr [ %.sroa.25.7, %.loopexit1199 ], [ %.sroa.25.11, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.sroa.131067.2.ph2886 = phi ptr [ %.sroa.131067.7, %.loopexit1199 ], [ %.sroa.131067.10, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.01061.2.ph2885 = phi ptr [ %.sroa.01061.7, %.loopexit1199 ], [ %.sroa.01061.14, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 13 uses
  %.pre19312894 = ptrtoint ptr %.sroa.01046.2.ph2888 to i64
  %i.ex = ptrtoint ptr %.sroa.01046.2.ph2888 to i64
  br label %.lr.ph2838

.lr.ph2838:                                       ; preds = %.lr.ph2838.lr.ph, %.split2121
  %i.ey = phi i1 [ %i.ev, %.lr.ph2838.lr.ph ], [ %i.op, %.split2121 ]
  %i.ez = phi i8 [ %i.ew, %.lr.ph2838.lr.ph ], [ %i.oo, %.split2121 ]
  %.2291.ph21822862 = phi i32 [ %.2291.ph2892, %.lr.ph2838.lr.ph ], [ %spec.select500, %.split2121 ] ; 5 uses
  %.2306.ph21812861 = phi i32 [ %.2306.ph2891, %.lr.ph2838.lr.ph ], [ %.4308, %.split2121 ] ; 5 uses
  %.sroa.16.2.ph21792860 = phi ptr [ %.sroa.16.2.ph2889, %.lr.ph2838.lr.ph ], [ %i.mm, %.split2121 ] ; 9 uses
  %.sroa.131067.2.ph21782859 = phi ptr [ %.sroa.131067.2.ph2886, %.lr.ph2838.lr.ph ], [ %i.fa, %.split2121 ]
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph2838, %.split
  %.sroa.131067.22837 = phi ptr [ %.sroa.131067.2.ph21782859, %.lr.ph2838 ], [ %i.fa, %.split ] ; 3 uses
  %i.fa = getelementptr inbounds i8, ptr %.sroa.131067.22837, i64 -4 ; 9 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !164 ; 11 uses
  %i.fc = tail call i32 @llvm.abs.i32(i32 %i.fb, i1 true) ; 3 uses
  %i.fd = tail call noundef i32 @llvm.fshl.i32(i32 %i.fc, i32 %i.fb, i32 1)
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.fe ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4 ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !254 ; 3 uses
  %i.fi = icmp eq i32 %i.fh, -1
  br i1 %i.fi, label %.loopexit1199, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fj = sub nsw i32 0, %i.fb                    ; 6 uses
  %i.fk = tail call noundef i32 @llvm.fshl.i32(i32 %i.fc, i32 %i.fj, i32 1)
  %i.fl = zext i32 %i.fk to i64
  %i.fm = load ptr, ptr %i.cx, align 8, !tbaa !255
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.fm, i64 %i.fl ; 4 uses
  %i.fo = load i32, ptr %i.ff, align 8, !tbaa !256 ; 2 uses
  %.not408 = icmp eq i32 %i.fo, 0
  br i1 %.not408, label %bb.ct, label %bb.am
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal15decompose_roundEv:bb.a
  %i.kg = load ptr, ptr %i.da, align 8, !tbaa !167
  %.not.i.i548 = icmp eq ptr %i.kf, %i.kg
  br i1 %.not.i.i548, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 %i.fj, ptr %i.kf, align 4, !tbaa !164
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store ptr %i.kh, ptr %i.cz, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit557

bb.bt:                                            ; preds = %bb.br
  %i.ki = load ptr, ptr %i.cy, align 8, !tbaa !168 ; 4 uses
  %i.kj = ptrtoint ptr %i.kf to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk                    ; 5 uses
  %i.km = icmp eq i64 %i.kl, 9223372036854775804
  br i1 %i.km, label %.invoke2924, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i549

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i549: ; preds = %bb.bt
  %i.kn = ashr exact i64 %i.kl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i550 = tail call i64 @llvm.umax.i64(i64 %i.kn, i64 1)
  %i.ko = add nsw i64 %.sroa.speculated.i.i.i.i550, %i.kn ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.kn
  %i.kq = tail call i64 @llvm.umin.i64(i64 %i.ko, i64 2305843009213693951)
  %i.kr = select i1 %i.kp, i64 2305843009213693951, i64 %i.kq ; 3 uses
  %.not.i.i.i.i551 = icmp ne i64 %i.kr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i551)
  %i.ks = shl nuw nsw i64 %i.kr, 2
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #12
          to label %.noexc556 unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc556:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i549
  %i.ku = getelementptr inbounds i8, ptr %i.kt, i64 %i.kl ; 2 uses
  store i32 %i.fj, ptr %i.ku, align 4, !tbaa !164
  %i.kv = icmp sgt i64 %i.kl, 0
  br i1 %i.kv, label %bb.bu, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i552

bb.bu:                                            ; preds = %.noexc556
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kt, ptr align 4 %i.ki, i64 %i.kl, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i552

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i552: ; preds = %bb.bu, %.noexc556
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %.not.i17.i.i.i553 = icmp eq ptr %i.ki, null
  br i1 %.not.i17.i.i.i553, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i554, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i552
  tail call void @_ZdlPv(ptr noundef nonnull %i.ki) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i554

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i554: ; preds = %bb.bv, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i552
  store ptr %i.kt, ptr %i.cy, align 8, !tbaa !168
  store ptr %i.kw, ptr %i.cz, align 8, !tbaa !166
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.kr
  store ptr %i.kx, ptr %i.da, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit557

_ZNSt6vectorIiSaIiEE9push_backEOi.exit557:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i554, %bb.bs
  invoke void @_ZN7CaDiCaL8Internal30decompose_analyze_binary_chainEPNS_3DFSEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.bz, i32 noundef %i.fb)
          to label %bb.bw unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit557
  %i.ky = load ptr, ptr %i.db, align 8, !tbaa !173 ; 2 uses
  %i.kz = load ptr, ptr %i.dc, align 8, !tbaa !173 ; 2 uses
  %.not11531678 = icmp eq ptr %i.ky, %i.kz
  br i1 %.not11531678, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %.lr.ph1681.preheader

.lr.ph1681.preheader:                             ; preds = %bb.bw
  %.pre1913 = load ptr, ptr %i.de, align 8, !tbaa !160
  %.pre1914 = load ptr, ptr %i.df, align 8, !tbaa !161
  br label %.lr.ph1681

._crit_edge1682:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre1915 = load ptr, ptr %i.db, align 8, !tbaa !163 ; 2 uses
  %.pre1916 = load ptr, ptr %i.dc, align 8, !tbaa !160
  %i.la = icmp eq ptr %.pre1916, %.pre1915
  br i1 %i.la, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge1682
  store ptr %.pre1915, ptr %i.dc, align 8, !tbaa !160
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

.lr.ph1681:                                       ; preds = %.lr.ph1681.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.lb = phi ptr [ %i.lv, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.pre1914, %.lr.ph1681.preheader ] ; 3 uses
  %i.lc = phi ptr [ %i.lw, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.pre1913, %.lr.ph1681.preheader ] ; 3 uses
  %.sroa.0980.01679 = phi ptr [ %i.lx, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.ky, %.lr.ph1681.preheader ] ; 2 uses
  %i.ld = load i64, ptr %.sroa.0980.01679, align 8, !tbaa !162 ; 2 uses
  %.not.i559 = icmp eq ptr %i.lc, %i.lb
  br i1 %.not.i559, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph1681
  store i64 %i.ld, ptr %i.lc, align 8, !tbaa !162
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  store ptr %i.le, ptr %i.de, align 8, !tbaa !160
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.by:                                            ; preds = %.lr.ph1681
  %i.lf = load ptr, ptr %i.dd, align 8, !tbaa !163 ; 4 uses
  %i.lg = ptrtoint ptr %i.lb to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 5 uses
  %i.lj = icmp eq i64 %i.li, 9223372036854775800
  br i1 %i.lj, label %.invoke2924, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.by
  %i.lk = ashr exact i64 %i.li, 3                 ; 3 uses
  %.sroa.speculated.i.i.i560 = tail call i64 @llvm.umax.i64(i64 %i.lk, i64 1)
  %i.ll = add nsw i64 %.sroa.speculated.i.i.i560, %i.lk ; 2 uses
  %i.lm = icmp ult i64 %i.ll, %i.lk
  %i.ln = tail call i64 @llvm.umin.i64(i64 %i.ll, i64 1152921504606846975)
  %i.lo = select i1 %i.lm, i64 1152921504606846975, i64 %i.ln ; 3 uses
  %.not.i.i.i561 = icmp ne i64 %i.lo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i561)
  %i.lp = shl nuw nsw i64 %i.lo, 3
  %i.lq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lp) #12
          to label %.noexc564 unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc564:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 %i.li ; 2 uses
  store i64 %i.ld, ptr %i.lr, align 8, !tbaa !162
  %i.ls = icmp sgt i64 %i.li, 0
  br i1 %i.ls, label %bb.bz, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.bz:                                            ; preds = %.noexc564
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lq, ptr align 8 %i.lf, i64 %i.li, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.bz, %.noexc564
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 2 uses
  %.not.i17.i.i562 = icmp eq ptr %i.lf, null
  br i1 %.not.i17.i.i562, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.lf) #13
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.ca, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.lq, ptr %i.dd, align 8, !tbaa !163
  store ptr %i.lt, ptr %i.de, align 8, !tbaa !160
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lo ; 2 uses
  store ptr %i.lu, ptr %i.df, align 8, !tbaa !161
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.bx
  %i.lv = phi ptr [ %i.lu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.lb, %bb.bx ]
  %i.lw = phi ptr [ %i.lt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.le, %bb.bx ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0980.01679, i64 8 ; 2 uses
  %.not1153 = icmp eq ptr %i.lx, %i.kz
  br i1 %.not1153, label %._crit_edge1682, label %.lr.ph1681

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.bw, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %._crit_edge1682, %bb.bq
  invoke void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.fb)
          to label %bb.cb unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.ly = load i8, ptr %i.cp, align 8, !tbaa !155, !range !156, !noundef !157
  %i.lz = trunc nuw i8 %i.ly to i1
  br i1 %i.lz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ma = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.cd unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  invoke void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.ce unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cd
  %i.mb = load ptr, ptr %i.dd, align 8, !tbaa !163 ; 2 uses
  %i.mc = load ptr, ptr %i.de, align 8, !tbaa !160
  %.not.i.i565 = icmp eq ptr %i.mc, %i.mb
  br i1 %.not.i.i565, label %_ZNSt6vectorImSaImEE5clearEv.exit567, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i566

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i566:     ; preds = %bb.ce
  store ptr %i.mb, ptr %i.de, align 8, !tbaa !160
  br label %_ZNSt6vectorImSaImEE5clearEv.exit567

bb.cf:                                            ; preds = %bb.bp
  %i.md = tail call i32 @llvm.abs.i32(i32 %i.jx, i1 true)
  %i.me = tail call i32 @llvm.abs.i32(i32 %.01081, i1 true)
  %i.mf = icmp samesign ult i32 %i.md, %i.me
  %spec.select1146 = select i1 %i.mf, i32 %i.jx, i32 %.01081
  %i.mg = add nsw i32 %.0262, 1
  br label %_ZNSt6vectorImSaImEE5clearEv.exit567

_ZNSt6vectorImSaImEE5clearEv.exit567:             ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i566, %bb.ce, %bb.cf
  %.2 = phi i32 [ %spec.select1146, %bb.cf ], [ %.01081, %bb.ce ], [ %.01081, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i566 ] ; 6 uses
  %.1263 = phi i32 [ %i.mg, %bb.cf ], [ %.0262, %bb.ce ], [ %.0262, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i566 ] ; 2 uses
  %i.mh = load i8, ptr %i.c, align 4, !tbaa !208, !range !156, !noundef !157
  %i.mi = trunc nuw i8 %i.mh to i1                ; 2 uses
  %i.mj = icmp eq i32 %i.jx, %i.fb
  %.not414 = or i1 %i.mj, %i.mi
  br i1 %.not414, label %bb.cg, label %bb.bp, !llvm.loop !197

bb.cg:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit567
  br i1 %i.mi, label %.loopexit1199..critedge.loopexit_crit_edge, label %.preheader1205

.preheader1205:                                   ; preds = %bb.cg
  %i.mk = tail call i32 @llvm.abs.i32(i32 %.2, i1 true)
  %i.ml = zext nneg i32 %i.mk to i64
  br label %bb.ch

bb.ch:                                            ; preds = %.preheader1205, %bb.cr
  %.sroa.16.3 = phi ptr [ %i.mm, %bb.cr ], [ %.sroa.16.2.ph21792860, %.preheader1205 ]
  %.3307 = phi i32 [ %.4308, %bb.cr ], [ %.2306.ph21812861, %.preheader1205 ] ; 3 uses
  %i.mm = getelementptr inbounds i8, ptr %.sroa.16.3, i64 -4 ; 4 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !164 ; 6 uses
  %i.mo = tail call noundef i32 @llvm.abs.i32(i32 %i.mn, i1 true) ; 2 uses
  %i.mp = tail call noundef i32 @llvm.fshl.i32(i32 %i.mo, i32 %i.mn, i32 1)
  %i.mq = zext i32 %i.mp to i64                   ; 4 uses
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.mq
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store i32 -1, ptr %i.ms, align 4, !tbaa !254
  %i.mt = zext nneg i32 %i.mo to i64              ; 2 uses
  %i.mu = load ptr, ptr %i.dh, align 8, !tbaa !263
  %i.mv = load ptr, ptr %i.dg, align 8, !tbaa !264 ; 2 uses
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = ashr exact i64 %i.my, 2
  %i.na = icmp ugt i64 %i.mz, %i.mt
  br i1 %i.na, label %_ZN7CaDiCaL8Internal6frozenEi.exit, label %_ZN7CaDiCaL8Internal6frozenEi.exit.thread

_ZN7CaDiCaL8Internal6frozenEi.exit:               ; preds = %bb.ch
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.mt
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !164
  %.not1154 = icmp eq i32 %i.nc, 0
  br i1 %.not1154, label %_ZN7CaDiCaL8Internal6frozenEi.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mq
  store i32 %i.mn, ptr %i.nd, align 4, !tbaa !164
  br label %bb.cr

_ZN7CaDiCaL8Internal6frozenEi.exit.thread:        ; preds = %bb.ch, %_ZN7CaDiCaL8Internal6frozenEi.exit
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.mq
  store i32 %.2, ptr %i.ne, align 4, !tbaa !164
  %i.nf = icmp eq i32 %i.mn, %.2
  br i1 %i.nf, label %bb.cr, label %bb.cj

bb.cj:                                            ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit.thread
  %i.ng = add nsw i32 %.3307, 1                   ; 2 uses
  %i.nh = load i8, ptr %i.cp, align 8, !tbaa !155, !range !156, !noundef !157
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  %i.nj = load ptr, ptr %i.cw, align 8, !tbaa !165
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ml ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 1
  %i.nm = or i32 %i.nl, 1
  store i32 %i.nm, ptr %i.nk, align 1
  %i.nn = load ptr, ptr %i.cz, align 8, !tbaa !166 ; 4 uses
  %i.no = load ptr, ptr %i.da, align 8, !tbaa !167
  %.not.i568 = icmp eq ptr %i.nn, %i.no
  br i1 %.not.i568, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i32 %.2, ptr %i.nn, align 4, !tbaa !164
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 4
  store ptr %i.np, ptr %i.cz, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit577

bb.cm:                                            ; preds = %bb.ck
  %i.nq = load ptr, ptr %i.cy, align 8, !tbaa !168 ; 4 uses
  %i.nr = ptrtoint ptr %i.nn to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns                    ; 5 uses
  %i.nu = icmp eq i64 %i.nt, 9223372036854775804
  br i1 %i.nu, label %.invoke2924, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i569

.invoke2924:                                      ; preds = %bb.cv, %bb.aw, %bb.bt, %bb.cm, %bb.by
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #11
          to label %.cont2925 unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont2925:                                        ; preds = %.invoke2924
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i569: ; preds = %bb.cm
  %i.nv = ashr exact i64 %i.nt, 2                 ; 3 uses
  %.sroa.speculated.i.i.i570 = tail call i64 @llvm.umax.i64(i64 %i.nv, i64 1)
  %i.nw = add nsw i64 %.sroa.speculated.i.i.i570, %i.nv ; 2 uses
  %i.nx = icmp ult i64 %i.nw, %i.nv
  %i.ny = tail call i64 @llvm.umin.i64(i64 %i.nw, i64 2305843009213693951)
  %i.nz = select i1 %i.nx, i64 2305843009213693951, i64 %i.ny ; 3 uses
  %.not.i.i.i571 = icmp ne i64 %i.nz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i571)
  %i.oa = shl nuw nsw i64 %i.nz, 2
  %i.ob = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oa) #12
          to label %.noexc576 unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc576:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i569
  %i.oc = getelementptr inbounds i8, ptr %i.ob, i64 %i.nt ; 2 uses
  store i32 %.2, ptr %i.oc, align 4, !tbaa !164
  %i.od = icmp sgt i64 %i.nt, 0
  br i1 %i.od, label %bb.cn, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i572

bb.cn:                                            ; preds = %.noexc576
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ob, ptr align 4 %i.nq, i64 %i.nt, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i572

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i572: ; preds = %bb.cn, %.noexc576
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %.not.i17.i.i573 = icmp eq ptr %i.nq, null
  br i1 %.not.i17.i.i573, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i574, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i572
  tail call void @_ZdlPv(ptr noundef nonnull %i.nq) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i574

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i574: ; preds = %bb.co, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i572
  store ptr %i.ob, ptr %i.cy, align 8, !tbaa !168
  store ptr %i.oe, ptr %i.cz, align 8, !tbaa !166
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nz
  store ptr %i.of, ptr %i.da, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit577

_ZNSt6vectorIiSaIiEE9push_backERKi.exit577:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i574, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN7CaDiCaL8Internal32decompose_analyze_binary_clausesEPNS_3DFSEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.bz, i32 noundef %i.mn)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit577
  %i.og = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.mq ; 3 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !265 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oj = load <2 x ptr>, ptr %2, align 16, !tbaa !178
  store <2 x ptr> %i.oj, ptr %i.og, align 8, !tbaa !178
  %i.ok = load ptr, ptr %i.di, align 16, !tbaa !171
  store ptr %i.ok, ptr %i.oi, align 8, !tbaa !171
  %.not.i.i.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @_ZdlPv(ptr noundef nonnull %i.oh) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  invoke void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.cr unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cr:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, %bb.cj, %_ZN7CaDiCaL8Internal6frozenEi.exit.thread, %bb.ci
  %.4308 = phi i32 [ %.3307, %bb.ci ], [ %.3307, %_ZN7CaDiCaL8Internal6frozenEi.exit.thread ], [ %i.ng, %bb.cj ], [ %i.ng, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit ] ; 3 uses
  %.not419 = icmp eq i32 %i.mn, %i.fb
  br i1 %.not419, label %.split2121, label %bb.ch, !llvm.loop !198

_ZNSt6vectorImSaImEED2Ev.exit828.thread:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i512
  %lpad.loopexit1212 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kp

.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i549, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit557, %bb.cd, %bb.cc, %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i569, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i582, %.invoke2924
  %lpad.loopexit.split-lp2971 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit828

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit577
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit828

.split2121:                                       ; preds = %bb.cr
  %i.om = icmp sgt i32 %.1263, 1
  %i.on = zext i1 %i.om to i32
  %spec.select500 = add nsw i32 %.2291.ph21822862, %i.on ; 2 uses
  %i.oo = load i8, ptr %i.c, align 4, !tbaa !208, !range !156, !noundef !157 ; 3 uses
  %i.op = trunc nuw i8 %i.oo to i1                ; 2 uses
  %i.oq = icmp eq ptr %.sroa.01061.2.ph2885, %i.fa
  %or.cond11442836 = select i1 %i.op, i1 true, i1 %i.oq
  br i1 %or.cond11442836, label %.critedge, label %.lr.ph2838

.split:                                           ; preds = %._crit_edge
  store i32 %.0267.lcssa, ptr %i.fg, align 4, !tbaa !254
  %i.or = icmp eq ptr %.sroa.01061.2.ph2885, %i.fa
  %or.cond1144 = select i1 %i.ey, i1 true, i1 %i.or
  br i1 %or.cond1144, label %.critedge, label %bb.ak

bb.ct:                                            ; preds = %bb.al
  %i.os = add i32 %.2281.ph2893, 1                ; 4 uses
  store i32 %i.os, ptr %i.fg, align 4, !tbaa !254
  store i32 %i.os, ptr %i.ff, align 8, !tbaa !256
  %.not.i581 = icmp eq ptr %.sroa.16.2.ph21792860, %.sroa.24.2.ph2890
  br i1 %.not.i581, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 %i.fb, ptr %.sroa.16.2.ph21792860, align 4, !tbaa !164
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit590

bb.cv:                                            ; preds = %bb.ct
  %i.ot = ptrtoint ptr %.sroa.16.2.ph21792860 to i64
  %i.ou = ptrtoint ptr %.sroa.01046.2.ph2888 to i64
  %i.ov = sub i64 %i.ot, %i.ou                    ; 5 uses
  %i.ow = icmp eq i64 %i.ov, 9223372036854775804
  br i1 %i.ow, label %.invoke2924, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i582

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i582: ; preds = %bb.cv
  %i.ox = ashr exact i64 %i.ov, 2                 ; 3 uses
  %.sroa.speculated.i.i.i583 = tail call i64 @llvm.umax.i64(i64 %i.ox, i64 1)
  %i.oy = add nsw i64 %.sroa.speculated.i.i.i583, %i.ox ; 2 uses
  %i.oz = icmp ult i64 %i.oy, %i.ox
  %i.pa = tail call i64 @llvm.umin.i64(i64 %i.oy, i64 2305843009213693951)
  %i.pb = select i1 %i.oz, i64 2305843009213693951, i64 %i.pa ; 3 uses
  %.not.i.i.i584 = icmp ne i64 %i.pb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i584)
  %i.pc = shl nuw nsw i64 %i.pb, 2
  %i.pd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pc) #12
          to label %.noexc589 unwind label %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc589:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i582
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 %i.ov ; 2 uses
  store i32 %i.fb, ptr %i.pe, align 4, !tbaa !164
  %i.pf = icmp sgt i64 %i.ov, 0
  br i1 %i.pf, label %bb.cw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i585

bb.cw:                                            ; preds = %.noexc589
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pd, ptr align 4 %.sroa.01046.2.ph2888, i64 %i.ov, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i585

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i585: ; preds = %bb.cw, %.noexc589
  %.not.i17.i.i586 = icmp eq ptr %.sroa.01046.2.ph2888, null
  br i1 %.not.i17.i.i586, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i587, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i585
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.01046.2.ph2888) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i587

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i587: ; preds = %bb.cx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i585
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pb
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit590

_ZNSt6vectorIiSaIiEE9push_backERKi.exit590:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i587, %bb.cu
  %.sroa.01046.14 = phi ptr [ %i.pd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i587 ], [ %.sroa.01046.2.ph2888, %bb.cu ] ; 3 uses
  %.pn1155 = phi ptr [ %i.pe, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i587 ], [ %.sroa.16.2.ph21792860, %bb.cu ]
  %.sroa.24.8 = phi ptr [ %i.pg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i587 ], [ %.sroa.24.2.ph2890, %bb.cu ] ; 2 uses
  %.sroa.16.10 = getelementptr inbounds nuw i8, ptr %.pn1155, i64 4 ; 2 uses
  %i.ph = load ptr, ptr %i.fn, align 8, !tbaa !258 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !258 ; 2 uses
  %.not11561683 = icmp eq ptr %i.ph, %i.pj
  br i1 %.not11561683, label %.loopexit1199, label %.lr.ph1688

.lr.ph1688:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit590, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600
  %.sroa.0974.01687 = phi ptr [ %i.qq, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600 ], [ %i.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit590 ] ; 3 uses
  %.sroa.25.31686 = phi ptr [ %.sroa.25.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600 ], [ %.sroa.25.2.ph2887, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit590 ] ; 6 uses
  %.sroa.131067.31685 = phi ptr [ %.sroa.131067.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600 ], [ %.sroa.131067.22837, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit590 ] ; 6 uses
  %.sroa.01061.31684 = phi ptr [ %.sroa.01061.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600 ], [ %.sroa.01061.2.ph2885, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit590 ] ; 9 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0974.01687, i64 12
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !260
  %i.pm = icmp eq i32 %i.pl, 2
  br i1 %i.pm, label %bb.cy, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600

bb.cy:                                            ; preds = %.lr.ph1688
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0974.01687, i64 8
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !261 ; 4 uses
  %i.pp = tail call noundef i32 @llvm.abs.i32(i32 %i.po, i1 true) ; 2 uses
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = load ptr, ptr %i.cw, align 8, !tbaa !165
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.pq
  %i.pt = load i32, ptr %i.ps, align 1
  %i.pu = and i32 %i.pt, 117440512
  %i.pv = icmp eq i32 %i.pu, 16777216
  br i1 %i.pv, label %bb.cz, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600

bb.cz:                                            ; preds = %bb.cy
  %i.pw = tail call noundef i32 @llvm.fshl.i32(i32 %i.pp, i32 %i.po, i32 1)
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 8, !tbaa !256
  %.not409 = icmp eq i32 %i.pz, 0
  br i1 %.not409, label %bb.da, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600

.loopexit.split-lp1201.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i592, %bb.dd
  %lpad.loopexit.split-lp2962 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit828

bb.da:                                            ; preds = %bb.cz
  %.not.i591 = icmp eq ptr %.sroa.131067.31685, %.sroa.25.31686
  br i1 %.not.i591, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 %i.po, ptr %.sroa.131067.31685, align 4, !tbaa !164
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.131067.31685, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit600

bb.dc:                                            ; preds = %bb.da
  %i.qb = ptrtoint ptr %.sroa.25.31686 to i64
  %i.qc = ptrtoint ptr %.sroa.01061.31684 to i64
  %i.qd = sub i64 %i.qb, %i.qc                    ; 5 uses
  %i.qe = icmp eq i64 %i.qd, 9223372036854775804
  br i1 %i.qe, label %bb.dd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i592

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #11
          to label %.noexc598 unwind label %.loopexit.split-lp1201.loopexit.split-lp

.noexc598:                                        ; preds = %bb.dd
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i592: ; preds = %bb.dc
  %i.qf = ashr exact i64 %i.qd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i593 = tail call i64 @llvm.umax.i64(i64 %i.qf, i64 1)
  %i.qg = add nsw i64 %.sroa.speculated.i.i.i593, %i.qf ; 2 uses
  %i.qh = icmp ult i64 %i.qg, %i.qf
  %i.qi = tail call i64 @llvm.umin.i64(i64 %i.qg, i64 2305843009213693951)
  %i.qj = select i1 %i.qh, i64 2305843009213693951, i64 %i.qi ; 3 uses
  %.not.i.i.i594 = icmp ne i64 %i.qj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i594)
  %i.qk = shl nuw nsw i64 %i.qj, 2
  %i.ql = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qk) #12
          to label %.noexc599 unwind label %.loopexit.split-lp1201.loopexit.split-lp ; 4 uses

.noexc599:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i592
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 %i.qd ; 2 uses
  store i32 %i.po, ptr %i.qm, align 4, !tbaa !164
  %i.qn = icmp sgt i64 %i.qd, 0
  br i1 %i.qn, label %bb.de, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i595

bb.de:                                            ; preds = %.noexc599
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ql, ptr align 4 %.sroa.01061.31684, i64 %i.qd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i595

end_hunk_1
begin_hunk_2_@_ZN7CaDiCaL8Internal15decompose_roundEv:bb.a
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i792

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i792: ; preds = %bb.iu, %.noexc796
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arf, i64 4
  %.not.i17.i.i.i793 = icmp eq ptr %i.aqp, null
  br i1 %.not.i17.i.i.i793, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i794, label %bb.iv

bb.iv:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i792
  tail call void @_ZdlPv(ptr noundef nonnull %i.aqp) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i794

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i794: ; preds = %bb.iv, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i792
  store ptr %i.are, ptr %i.anp, align 8, !tbaa !168
  store ptr %i.arh, ptr %i.anq, align 8, !tbaa !166
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr %i.are, i64 %i.arc
  store ptr %i.ari, ptr %i.anr, align 8, !tbaa !167
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit797

_ZNSt6vectorIiSaIiEE9push_backEOi.exit797:        ; preds = %bb.is, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i794
  %i.arj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0959.1, i64 %i.aof
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !162
  %i.arl = load ptr, ptr %i.xy, align 8, !tbaa !267
  invoke void @_ZN7CaDiCaL5Proof13delete_clauseEmbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %i.arl, i64 noundef %i.ark, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.anp)
          to label %bb.iw unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.iw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit797
  %i.arm = load ptr, ptr %i.anp, align 8, !tbaa !168 ; 2 uses
  %i.arn = load ptr, ptr %i.anq, align 8, !tbaa !166
  %.not.i.i798 = icmp eq ptr %i.arn, %i.arm
  br i1 %.not.i.i798, label %_ZNSt6vectorIiSaIiEE5clearEv.exit800, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i799

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i799:     ; preds = %bb.iw
  store ptr %i.arm, ptr %i.anq, align 8, !tbaa !166
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit800

_ZNSt6vectorIiSaIiEE5clearEv.exit800:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i799, %bb.iw, %bb.id, %bb.ic
  %i.aro = add i32 %.sroa.0876.01789, 1
  %.not1163 = icmp eq i32 %.sroa.0876.01789, %i.ann
  br i1 %.not1163, label %.loopexit1171, label %bb.ic

.loopexit1171:                                    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit800, %bb.ib, %.critedge14
  %i.arp = load i8, ptr %i.c, align 4, !tbaa !208, !range !156, !noundef !157
  %i.arq = trunc nuw i8 %i.arp to i1
  %i.arr = icmp eq ptr %.sroa.0928.0.lcssa, %.sroa.12.0.lcssa
  %or.cond1147 = select i1 %i.arq, i1 true, i1 %i.arr
  br i1 %or.cond1147, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit1171, %bb.ix
  %.sroa.0860.01793 = phi ptr [ %i.art, %bb.ix ], [ %.sroa.0928.0.lcssa, %.loopexit1171 ] ; 2 uses
  %i.ars = load ptr, ptr %.sroa.0860.01793, align 8, !tbaa !169
  invoke void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef %i.ars)
          to label %bb.ix unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ix:                                            ; preds = %.preheader
  %i.art = getelementptr inbounds nuw i8, ptr %.sroa.0860.01793, i64 8 ; 2 uses
  %.not1164 = icmp eq ptr %i.art, %.sroa.12.0.lcssa
  br i1 %.not1164, label %.loopexit, label %.preheader

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i789, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i766, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i779, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i756, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit774, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit797
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i660, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i670, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i710, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i680, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i690, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i700, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i720, %bb.ht, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread, %bb.hq, %bb.hp, %bb.hn, %bb.hf, %bb.he, %bb.hd, %_ZNSt6vectorImSaImEE9push_backERKm.exit738, %bb.hk, %bb.hj, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i730, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.split-lp2930 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke2926, %.invoke2501
  %.sroa.0928.01315 = phi ptr [ %.sroa.0928.0.lcssa, %.invoke2501 ], [ %.sroa.0928.017632914, %.invoke2926 ]
  %lpad.loopexit.split-lp1179 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.ix, %.loopexit1171
  br i1 %.sroa.17.0.lcssa, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.iy

bb.iy:                                            ; preds = %.loopexit
  %.not.i.i.i.i802 = icmp eq ptr %.sroa.0928.0.lcssa, null
  br i1 %.not.i.i.i.i802, label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0928.0.lcssa) #13
  br label %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit

_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit: ; preds = %.loopexit, %bb.iy, %bb.iz
  %.sroa.0928.5 = phi ptr [ %.sroa.0928.0.lcssa, %.loopexit ], [ null, %bb.iy ], [ null, %bb.iz ] ; 4 uses
  %i.aru = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 2 uses
  %.not472 = icmp eq ptr %i.aru, null
  br i1 %.not472, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit805, label %bb.ja

bb.ja:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit
  %i.arv = load i64, ptr %i.bo, align 8, !tbaa !247
  %i.arw = insertelement <2 x i64> poison, i64 %.0247.lcssa, i64 0
  %i.arx = insertelement <2 x i64> %i.arw, i64 %.0244.lcssa, i64 1
  %i.ary = uitofp <2 x i64> %i.arx to <2 x double> ; 2 uses
  %i.arz = uitofp i64 %i.xa to double
  %.not1165 = icmp eq ptr %i.wv, %i.ww
  %.not1166 = icmp eq i64 %.0244.lcssa, 0
  %i.asa = fmul nnan <2 x double> %i.ary, splat (double 1.000000e+02)
  %i.asb = shufflevector <2 x double> %i.ary, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.asc = insertelement <2 x double> %i.asb, double %i.arz, i64 1
  %i.asd = fdiv <2 x double> %i.asa, %i.asc       ; 2 uses
  %i.ase = extractelement <2 x double> %i.asd, i64 1
  %i.asf = select i1 %.not1165, double 0.000000e+00, double %i.ase
  %i.asg = extractelement <2 x double> %i.asd, i64 0
  %i.ash = select i1 %.not1166, double 0.000000e+00, double %i.asg
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.aru, ptr noundef nonnull @.str, i64 noundef %i.arv, ptr noundef nonnull @.str.2, i64 noundef %.0244.lcssa, double noundef %i.asf, i64 noundef %.0247.lcssa, double noundef %i.ash)
          to label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit805 unwind label %bb.jv

_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit805: ; preds = %_ZN7CaDiCaL12erase_vectorIPNS_6ClauseEEEvRSt6vectorIT_SaIS4_EE.exit, %bb.ja
  %i.asi = load i8, ptr %i.c, align 4, !tbaa !208, !range !156, !noundef !157
  %i.asj = trunc nuw i8 %i.asi to i1
  br i1 %i.asj, label %bb.jf, label %bb.jb

bb.jb:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit805
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.asl = load i64, ptr %i.ask, align 8, !tbaa !274
  %i.asm = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !166
  %i.asp = load ptr, ptr %i.asm, align 8, !tbaa !168
  %i.asq = ptrtoint ptr %i.aso to i64
  %i.asr = ptrtoint ptr %i.asp to i64
  %i.ass = sub i64 %i.asq, %i.asr
  %i.ast = ashr exact i64 %i.ass, 2
  %i.asu = icmp ult i64 %i.asl, %i.ast
  br i1 %i.asu, label %bb.jc, label %bb.jf

bb.jc:                                            ; preds = %bb.jb
  %i.asv = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.jd unwind label %bb.jv

bb.jd:                                            ; preds = %bb.jc
  br i1 %i.asv, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  invoke void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.jf unwind label %bb.jv

bb.jf:                                            ; preds = %bb.je, %bb.jd, %bb.jb, %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit805
  %i.asw = load ptr, ptr %i.ct, align 8, !tbaa !252, !nonnull !157, !align !253
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !164 ; 2 uses
  %.not11671794 = icmp eq i32 %i.asx, 0
  br i1 %.not11671794, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit, label %.lr.ph1797

.lr.ph1797:                                       ; preds = %bb.jf
  %i.asy = getelementptr inbounds nuw i8, ptr %0, i64 760
  br label %bb.jg

bb.jg:                                            ; preds = %.lr.ph1797, %bb.jm
  %.sroa.0856.01795 = phi i32 [ 1, %.lr.ph1797 ], [ %i.atu, %bb.jm ] ; 6 uses
  %i.asz = load i8, ptr %i.c, align 4, !tbaa !208, !range !156, !noundef !157
  %i.ata = trunc nuw i8 %i.asz to i1
  br i1 %i.ata, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.atb = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.0856.01795, i1 true) ; 2 uses
  %i.atc = zext nneg i32 %i.atb to i64
  %i.atd = load ptr, ptr %i.asy, align 8, !tbaa !165 ; 2 uses
  %i.ate = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %i.atc
  %i.atf = load i32, ptr %i.ate, align 1
  %i.atg = and i32 %i.atf, 117440512
  %i.ath = icmp eq i32 %i.atg, 16777216
  br i1 %i.ath, label %bb.ji, label %bb.jm

bb.ji:                                            ; preds = %bb.jh
  %i.ati = tail call noundef i32 @llvm.fshl.i32(i32 %i.atb, i32 %.sroa.0856.01795, i32 1)
  %i.atj = zext i32 %i.ati to i64
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.atj
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !164 ; 2 uses
  %i.atm = icmp eq i32 %i.atl, %.sroa.0856.01795
  br i1 %i.atm, label %bb.jm, label %bb.jk

bb.jj:                                            ; preds = %bb.jl
  %i.atn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.jk:                                            ; preds = %bb.ji
  %i.ato = tail call noundef i32 @llvm.abs.i32(i32 %i.atl, i1 true)
  %i.atp = zext nneg i32 %i.ato to i64
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.atd, i64 %i.atp
  %i.atr = load i32, ptr %i.atq, align 1
  %i.ats = and i32 %i.atr, 117440512
  %i.att = icmp eq i32 %i.ats, 33554432
  br i1 %i.att, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  invoke void @_ZN7CaDiCaL8Internal16mark_substitutedEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.sroa.0856.01795)
          to label %bb.jm unwind label %bb.jj

bb.jm:                                            ; preds = %bb.jh, %bb.ji, %bb.jl, %bb.jk
  %i.atu = add i32 %.sroa.0856.01795, 1
  %.not1167 = icmp eq i32 %.sroa.0856.01795, %i.asx
  br i1 %.not1167, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit, label %bb.jg

_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit: ; preds = %bb.jm, %bb.jg, %bb.jf
  tail call void @_ZdaPv(ptr noundef nonnull %i.cg) #13
  tail call void @_ZdaPv(ptr noundef nonnull %i.bz) #13
  %.not.i806 = icmp eq ptr %3, %4
  br i1 %.not.i806, label %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit, label %bb.jn

bb.jn:                                            ; preds = %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i.i807

.lr.ph.i.i.i.i807:                                ; preds = %bb.jn, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i810
  %.05.i.i.i.i808 = phi ptr [ %i.atw, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i810 ], [ %4, %bb.jn ] ; 2 uses
  %i.atv = load ptr, ptr %.05.i.i.i.i808, align 8, !tbaa !265 ; 2 uses
  %.not.i.i.i.i.i.i.i.i809 = icmp eq ptr %i.atv, null
  br i1 %.not.i.i.i.i.i.i.i.i809, label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i810, label %bb.jo

bb.jo:                                            ; preds = %.lr.ph.i.i.i.i807
  tail call void @_ZdlPv(ptr noundef nonnull %i.atv) #13
  br label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i810

_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i810: ; preds = %bb.jo, %.lr.ph.i.i.i.i807
  %i.atw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i808, i64 24 ; 2 uses
  %.not.i.i.i.i811 = icmp eq ptr %i.atw, %3
  br i1 %.not.i.i.i.i811, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i812, label %.lr.ph.i.i.i.i807, !llvm.loop !206

_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i812: ; preds = %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i810
  %.not.i.i1.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i1.i.i, label %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit, label %bb.jp

bb.jp:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i812
  tail call void @_ZdlPv(ptr noundef nonnull %4) #13
  br label %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit

_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit: ; preds = %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit, %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i812, %bb.jp
  %5 = phi ptr [ %3, %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit ], [ null, %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i812 ], [ null, %bb.jp ] ; 11 uses
  %i.atx = phi ptr [ %4, %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit ], [ null, %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i812 ], [ null, %bb.jp ] ; 13 uses
  invoke void @_ZN7CaDiCaL8Internal26flush_all_occs_and_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.jq unwind label %bb.jv

bb.jq:                                            ; preds = %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit
  %i.aty = load i8, ptr %i.c, align 4, !tbaa !208, !range !156, !noundef !157
  %i.atz = trunc nuw i8 %i.aty to i1
  %i.aua = icmp sgt i32 %.0304.lcssa21302138, 0
  %spec.select1169 = select i1 %i.aua, i1 %.0257.lcssa, i1 false
  %i.aub = select i1 %i.atz, i1 true, i1 %spec.select1169 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 3664
  %i.aud = load i32, ptr %i.auc, align 8, !tbaa !275
  %.not477 = icmp eq i32 %i.aud, 0
  %i.aue = xor i1 %i.aub, true
  %i.auf = select i1 %.not477, i1 %i.aue, i1 false
  %i.aug = zext i1 %i.auf to i32
  invoke void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 100, i32 noundef %i.aug)
          to label %bb.jr unwind label %bb.jv

bb.jr:                                            ; preds = %bb.jq
  %i.auh = load i32, ptr %i.z, align 4, !tbaa !235
  %.not.i813 = icmp eq i32 %i.auh, 0
  br i1 %.not.i813, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aui = invoke noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %_ZN7CaDiCaL8Internal4timeEv.exit816 unwind label %bb.jv

bb.jt:                                            ; preds = %bb.jr
  %i.auj = invoke noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %_ZN7CaDiCaL8Internal4timeEv.exit816 unwind label %bb.jv

_ZN7CaDiCaL8Internal4timeEv.exit816:              ; preds = %bb.js, %bb.jt
  %i.auk = phi double [ %i.aui, %bb.js ], [ %i.auj, %bb.jt ] ; 5 uses
  %i.aul = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 5 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 3608
  %i.aun = load i32, ptr %i.aum, align 8, !tbaa !237 ; 5 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aul, i64 6120
  %i.aup = load i32, ptr %i.auo, align 8, !tbaa !246
  %.not478 = icmp sgt i32 %i.aup, %i.aun
  br i1 %.not478, label %bb.jw, label %bb.ju

bb.ju:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit816
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aul, i64 6088
  invoke void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.aul, ptr noundef nonnull align 8 dereferenceable(36) %i.auq, double noundef %i.auk)
          to label %._crit_edge1921 unwind label %bb.jv

._crit_edge1921:                                  ; preds = %bb.ju
  %.pre1922 = load ptr, ptr %i.ae, align 8, !tbaa !236
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt, %bb.js, %bb.jq, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit, %bb.je, %bb.jc, %bb.ja, %bb.kg, %bb.ke, %bb.kb, %bb.jx, %bb.ju
  %.sroa.01078.0 = phi ptr [ null, %bb.kg ], [ null, %bb.ke ], [ null, %bb.kb ], [ null, %bb.jx ], [ null, %bb.ju ], [ null, %bb.jt ], [ null, %bb.js ], [ null, %bb.jq ], [ null, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit ], [ %i.bz, %bb.je ], [ %i.bz, %bb.jc ], [ %i.bz, %bb.ja ]
  %.sroa.01075.0 = phi ptr [ null, %bb.kg ], [ null, %bb.ke ], [ null, %bb.kb ], [ null, %bb.jx ], [ null, %bb.ju ], [ null, %bb.jt ], [ null, %bb.js ], [ null, %bb.jq ], [ null, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit ], [ %i.cg, %bb.je ], [ %i.cg, %bb.jc ], [ %i.cg, %bb.ja ]
  %6 = phi ptr [ %5, %bb.kg ], [ %5, %bb.ke ], [ %5, %bb.kb ], [ %5, %bb.jx ], [ %5, %bb.ju ], [ %5, %bb.jt ], [ %5, %bb.js ], [ %5, %bb.jq ], [ %5, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit ], [ %3, %bb.je ], [ %3, %bb.jc ], [ %3, %bb.ja ]
  %7 = phi ptr [ %i.atx, %bb.kg ], [ %i.atx, %bb.ke ], [ %i.atx, %bb.kb ], [ %i.atx, %bb.jx ], [ %i.atx, %bb.ju ], [ %i.atx, %bb.jt ], [ %i.atx, %bb.js ], [ %i.atx, %bb.jq ], [ %i.atx, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit ], [ %4, %bb.je ], [ %4, %bb.jc ], [ %4, %bb.ja ]
  %i.aur = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.jw:                                            ; preds = %._crit_edge1921, %_ZN7CaDiCaL8Internal4timeEv.exit816
  %i.aus = phi ptr [ %.pre1922, %._crit_edge1921 ], [ %i.aul, %_ZN7CaDiCaL8Internal4timeEv.exit816 ] ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 6880
  %i.auu = load i32, ptr %i.aut, align 8, !tbaa !245
  %.not479 = icmp sgt i32 %i.auu, %i.aun
  br i1 %.not479, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aus, i64 6848
  invoke void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.aus, ptr noundef nonnull align 8 dereferenceable(36) %i.auv, double noundef %i.auk)
          to label %bb.jy unwind label %bb.jv

bb.jy:                                            ; preds = %bb.jx, %bb.jw
  %i.auw = load i32, ptr %0, align 8, !tbaa !244
  %i.aux = and i32 %i.auw, -521
  store i32 %i.aux, ptr %0, align 8, !tbaa !244
  %i.auy = load i8, ptr %i.ai, align 8, !tbaa !238, !range !156, !noundef !157
  %i.auz = trunc nuw i8 %i.auy to i1
  br i1 %i.auz, label %bb.kh, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.ava = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.avb = load i8, ptr %i.ava, align 1, !tbaa !239, !range !156, !noundef !157
  %i.avc = trunc nuw i8 %i.avb to i1
  br i1 %i.avc, label %bb.kh, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.avd = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 3 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 6720
  %i.avf = load i32, ptr %i.ave, align 8, !tbaa !243
  %.not480 = icmp sgt i32 %i.avf, %i.aun
  br i1 %.not480, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avd, i64 6688
  invoke void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.avd, ptr noundef nonnull align 8 dereferenceable(36) %i.avg, double noundef %i.auk)
          to label %bb.kc unwind label %bb.jv

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.avi = load i8, ptr %i.avh, align 4, !tbaa !240, !range !156, !noundef !157
  %i.avj = trunc nuw i8 %i.avi to i1
  br i1 %i.avj, label %bb.kd, label %.thread2155

bb.kd:                                            ; preds = %bb.kc
  %i.avk = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 3 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 6800
  %i.avm = load i32, ptr %i.avl, align 8, !tbaa !241
  %.not481 = icmp sgt i32 %i.avm, %i.aun
  br i1 %.not481, label %.thread2154, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avk, i64 6768
  invoke void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.avk, ptr noundef nonnull align 8 dereferenceable(36) %i.avn, double noundef %i.auk)
          to label %bb.kf unwind label %bb.jv

bb.kf:                                            ; preds = %bb.ke
  %.pre1924 = load i8, ptr %i.avh, align 4, !tbaa !240, !range !156
  %i.avo = trunc nuw i8 %.pre1924 to i1
  br i1 %i.avo, label %.thread2154, label %.thread2155

.thread2155:                                      ; preds = %bb.kc, %bb.kf
  %i.avp = load ptr, ptr %i.ae, align 8, !tbaa !236 ; 3 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 7040
  %i.avr = load i32, ptr %i.avq, align 8, !tbaa !242
  %.not482 = icmp sgt i32 %i.avr, %i.aun
  br i1 %.not482, label %.thread2154, label %bb.kg

bb.kg:                                            ; preds = %.thread2155
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avp, i64 7008
  invoke void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.avp, ptr noundef nonnull align 8 dereferenceable(36) %i.avs, double noundef %i.auk)
          to label %.thread2154 unwind label %bb.jv

.thread2154:                                      ; preds = %bb.kd, %bb.kg, %.thread2155, %bb.kf
  %i.avt = load i32, ptr %0, align 8, !tbaa !244
  %i.avu = or i32 %i.avt, 256
  store i32 %i.avu, ptr %0, align 8, !tbaa !244
  br label %bb.kh

bb.kh:                                            ; preds = %.thread2154, %bb.jz, %bb.jy
  %.not.i.i.i817 = icmp eq ptr %.sroa.0928.5, null
  br i1 %.not.i.i.i817, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit818, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0928.5) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit818

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit818: ; preds = %bb.kh, %bb.ki
  %.not.i.i.i819 = icmp eq ptr %.sroa.0959.1, null
  br i1 %.not.i.i.i819, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.kj

bb.kj:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit818
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0959.1) #13
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit818, %bb.kj
  %.not.i.i.i820 = icmp eq ptr %.sroa.01046.15, null
  br i1 %.not.i.i.i820, label %_ZNSt6vectorIiSaIiEED2Ev.exit821, label %bb.kk

bb.kk:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.01046.15) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit821

_ZNSt6vectorIiSaIiEED2Ev.exit821:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.kk
  %.not.i.i.i822 = icmp eq ptr %.sroa.01061.162139, null
  br i1 %.not.i.i.i822, label %_ZNSt6vectorIiSaIiEED2Ev.exit823, label %bb.kl

bb.kl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit821
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.01061.162139) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit823

_ZNSt6vectorIiSaIiEED2Ev.exit823:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit821, %bb.kl
  %.not4.i.i.i = icmp eq ptr %i.atx, %5
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit823, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.avw, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i ], [ %i.atx, %_ZNSt6vectorIiSaIiEED2Ev.exit823 ] ; 2 uses
  %i.avv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !265 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.avv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i, label %bb.km

bb.km:                                            ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.avv) #13
  br label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.km, %.lr.ph.i.i.i
  %i.avw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i824 = icmp eq ptr %i.avw, %5
  br i1 %.not.i.i.i824, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !206

_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit823
  %.not.i.i1.i = icmp eq ptr %i.atx, null
  br i1 %.not.i.i1.i, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit, label %bb.kn

bb.kn:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.atx) #13
  br label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit

_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.kn
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.jj, %bb.jv
  %.sroa.01078.1 = phi ptr [ %.sroa.01078.0, %bb.jv ], [ %i.bz, %bb.jj ], [ %i.bz, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.bz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.01075.1 = phi ptr [ %.sroa.01075.0, %bb.jv ], [ %i.cg, %bb.jj ], [ %i.cg, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cg, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.cg, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0928.3 = phi ptr [ %.sroa.0928.5, %bb.jv ], [ %.sroa.0928.5, %bb.jj ], [ %.sroa.0928.0.lcssa, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0928.017632914, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %.sroa.0928.01315, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %8 = phi ptr [ %6, %bb.jv ], [ %3, %bb.jj ], [ %3, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %3, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %3, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %9 = phi ptr [ %7, %bb.jv ], [ %4, %bb.jj ], [ %4, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn487.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aur, %bb.jv ], [ %i.atn, %bb.jj ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2930, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp1179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i825 = icmp eq ptr %.sroa.0928.3, null
  br i1 %.not.i.i.i825, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826, label %bb.ko

bb.ko:                                            ; preds = %.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0928.3) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826: ; preds = %.loopexit.split-lp1182.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ko, %.loopexit.split-lp
  %.sroa.01078.2 = phi ptr [ %.sroa.01078.1, %.loopexit.split-lp ], [ %.sroa.01078.1, %bb.ko ], [ %i.bz, %.loopexit.split-lp1182.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.01075.2 = phi ptr [ %.sroa.01075.1, %.loopexit.split-lp ], [ %.sroa.01075.1, %bb.ko ], [ %i.cg, %.loopexit.split-lp1182.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %10 = phi ptr [ %8, %.loopexit.split-lp ], [ %8, %bb.ko ], [ %3, %.loopexit.split-lp1182.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %11 = phi ptr [ %9, %.loopexit.split-lp ], [ %9, %bb.ko ], [ %4, %.loopexit.split-lp1182.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn487.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn487.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %.pn487.pn.pn.pn.pn.pn, %bb.ko ], [ %lpad.loopexit.split-lp2941, %.loopexit.split-lp1182.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i827 = icmp eq ptr %.sroa.0959.1, null
  br i1 %.not.i.i.i827, label %_ZNSt6vectorImSaImEED2Ev.exit828, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826
  %.pn487.pn.pn.pn.pn.pn.pn1138 = phi { ptr, i32 } [ %.pn487.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %lpad.loopexit.split-lp2944, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %12 = phi ptr [ %11, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %4, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %13 = phi ptr [ %10, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.01075.21135 = phi ptr [ %.sroa.01075.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %i.cg, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.01078.21134 = phi ptr [ %.sroa.01078.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %i.bz, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0959.1) #13
  br label %_ZNSt6vectorImSaImEED2Ev.exit828

_ZNSt6vectorImSaImEED2Ev.exit828:                 ; preds = %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1201.loopexit.split-lp, %.loopexit.split-lp1221.loopexit.split-lp, %bb.cs, %bb.bn, %bb.bo, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread
  %.sroa.01078.3 = phi ptr [ %.sroa.01078.21134, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp ], [ %i.bz, %bb.cs ], [ %i.bz, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread ], [ %.sroa.01078.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %i.bz, %.loopexit.split-lp1201.loopexit.split-lp ], [ %i.bz, %bb.bo ], [ %i.bz, %bb.bn ], [ %i.bz, %.loopexit.split-lp1221.loopexit.split-lp ], [ %i.bz, %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.01075.3 = phi ptr [ %.sroa.01075.21135, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp ], [ %i.cg, %bb.cs ], [ %i.cg, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread ], [ %.sroa.01075.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %i.cg, %.loopexit.split-lp1201.loopexit.split-lp ], [ %i.cg, %bb.bo ], [ %i.cg, %bb.bn ], [ %i.cg, %.loopexit.split-lp1221.loopexit.split-lp ], [ %i.cg, %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.01061.13 = phi ptr [ %.sroa.01061.162139, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp ], [ %.sroa.01061.2.ph2885, %bb.cs ], [ %.sroa.01061.162139, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread ], [ %.sroa.01061.162139, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %.sroa.01061.31684, %.loopexit.split-lp1201.loopexit.split-lp ], [ %.sroa.01061.2.ph2885, %bb.bo ], [ %.sroa.01061.2.ph2885, %bb.bn ], [ %.sroa.01061.11692, %.loopexit.split-lp1221.loopexit.split-lp ], [ %.sroa.01061.2.ph2885, %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.01046.13 = phi ptr [ %.sroa.01046.15, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp ], [ %.sroa.01046.2.ph2888, %bb.cs ], [ %.sroa.01046.15, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread ], [ %.sroa.01046.15, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %.sroa.01046.14, %.loopexit.split-lp1201.loopexit.split-lp ], [ %.sroa.01046.2.ph2888, %bb.bo ], [ %.sroa.01046.2.ph2888, %bb.bn ], [ %.sroa.01046.11695, %.loopexit.split-lp1221.loopexit.split-lp ], [ %.sroa.01046.2.ph2888, %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %14 = phi ptr [ %13, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp ], [ %3, %bb.cs ], [ %3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread ], [ %10, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %3, %.loopexit.split-lp1201.loopexit.split-lp ], [ %3, %bb.bo ], [ %3, %bb.bn ], [ %3, %.loopexit.split-lp1221.loopexit.split-lp ], [ %3, %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %15 = phi ptr [ %12, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp ], [ %4, %bb.cs ], [ %4, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread ], [ %11, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %4, %.loopexit.split-lp1201.loopexit.split-lp ], [ %4, %bb.bo ], [ %4, %bb.bn ], [ %4, %.loopexit.split-lp1221.loopexit.split-lp ], [ %4, %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn487.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn487.pn.pn.pn.pn.pn.pn1138, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread1127.loopexit.split-lp ], [ %i.ol, %bb.cs ], [ %i.se, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826.thread ], [ %.pn487.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit826 ], [ %lpad.loopexit.split-lp2962, %.loopexit.split-lp1201.loopexit.split-lp ], [ %.pn424.pn.pn, %bb.bo ], [ %.pn424.pn.pn, %bb.bn ], [ %lpad.loopexit.split-lp2975, %.loopexit.split-lp1221.loopexit.split-lp ], [ %lpad.loopexit.split-lp2971, %.loopexit.split-lp1189.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i829 = icmp eq ptr %.sroa.01046.13, null
  br i1 %.not.i.i.i829, label %_ZNSt6vectorIiSaIiEED2Ev.exit830, label %bb.kp

bb.kp:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit828.thread, %_ZNSt6vectorImSaImEED2Ev.exit828
  %.pn487.pn.pn.pn.pn.pn.pn.pn2169 = phi { ptr, i32 } [ %lpad.loopexit1212, %_ZNSt6vectorImSaImEED2Ev.exit828.thread ], [ %.pn487.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit828 ]
  %16 = phi ptr [ %4, %_ZNSt6vectorImSaImEED2Ev.exit828.thread ], [ %15, %_ZNSt6vectorImSaImEED2Ev.exit828 ]
  %17 = phi ptr [ %3, %_ZNSt6vectorImSaImEED2Ev.exit828.thread ], [ %14, %_ZNSt6vectorImSaImEED2Ev.exit828 ]
  %.sroa.01046.132168 = phi ptr [ %.sroa.01046.2.ph2888, %_ZNSt6vectorImSaImEED2Ev.exit828.thread ], [ %.sroa.01046.13, %_ZNSt6vectorImSaImEED2Ev.exit828 ]
  %.sroa.01061.132166 = phi ptr [ %.sroa.01061.2.ph2885, %_ZNSt6vectorImSaImEED2Ev.exit828.thread ], [ %.sroa.01061.13, %_ZNSt6vectorImSaImEED2Ev.exit828 ]
  %.sroa.01075.32164 = phi ptr [ %i.cg, %_ZNSt6vectorImSaImEED2Ev.exit828.thread ], [ %.sroa.01075.3, %_ZNSt6vectorImSaImEED2Ev.exit828 ]
  %.sroa.01078.32162 = phi ptr [ %i.bz, %_ZNSt6vectorImSaImEED2Ev.exit828.thread ], [ %.sroa.01078.3, %_ZNSt6vectorImSaImEED2Ev.exit828 ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.01046.132168) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit830

_ZNSt6vectorIiSaIiEED2Ev.exit830:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit828, %bb.kp
  %.pn487.pn.pn.pn.pn.pn.pn.pn2170 = phi { ptr, i32 } [ %.pn487.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit828 ], [ %.pn487.pn.pn.pn.pn.pn.pn.pn2169, %bb.kp ] ; 2 uses
  %18 = phi ptr [ %15, %_ZNSt6vectorImSaImEED2Ev.exit828 ], [ %16, %bb.kp ] ; 4 uses
  %19 = phi ptr [ %14, %_ZNSt6vectorImSaImEED2Ev.exit828 ], [ %17, %bb.kp ] ; 2 uses
  %.sroa.01061.132167 = phi ptr [ %.sroa.01061.13, %_ZNSt6vectorImSaImEED2Ev.exit828 ], [ %.sroa.01061.132166, %bb.kp ] ; 2 uses
  %.sroa.01075.32165 = phi ptr [ %.sroa.01075.3, %_ZNSt6vectorImSaImEED2Ev.exit828 ], [ %.sroa.01075.32164, %bb.kp ] ; 2 uses
  %.sroa.01078.32163 = phi ptr [ %.sroa.01078.3, %_ZNSt6vectorImSaImEED2Ev.exit828 ], [ %.sroa.01078.32162, %bb.kp ] ; 2 uses
  %.not.i.i.i831 = icmp eq ptr %.sroa.01061.132167, null
  br i1 %.not.i.i.i831, label %_ZNSt6vectorIiSaIiEED2Ev.exit832, label %bb.kq

bb.kq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit830
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.01061.132167) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit832

_ZNSt6vectorIiSaIiEED2Ev.exit832:                 ; preds = %bb.kq, %_ZNSt6vectorIiSaIiEED2Ev.exit830
  %.not4.i.i.i833 = icmp eq ptr %18, %19
  br i1 %.not4.i.i.i833, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i841, label %.lr.ph.i.i.i834

.lr.ph.i.i.i834:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit832, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i837
  %.05.i.i.i835 = phi ptr [ %i.avy, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i837 ], [ %18, %_ZNSt6vectorIiSaIiEED2Ev.exit832 ] ; 2 uses
  %i.avx = load ptr, ptr %.05.i.i.i835, align 8, !tbaa !265 ; 2 uses
  %.not.i.i.i.i.i.i.i836 = icmp eq ptr %i.avx, null
  br i1 %.not.i.i.i.i.i.i.i836, label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i837, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph.i.i.i834
  tail call void @_ZdlPv(ptr noundef nonnull %i.avx) #13
  br label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i837

_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i837: ; preds = %bb.kr, %.lr.ph.i.i.i834
  %i.avy = getelementptr inbounds nuw i8, ptr %.05.i.i.i835, i64 24 ; 2 uses
  %.not.i.i.i838 = icmp eq ptr %i.avy, %19
  br i1 %.not.i.i.i838, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i841, label %.lr.ph.i.i.i834, !llvm.loop !206

_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i841: ; preds = %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i837, %_ZNSt6vectorIiSaIiEED2Ev.exit832
  %.not.i.i1.i842 = icmp eq ptr %18, null
  br i1 %.not.i.i1.i842, label %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843, label %bb.ks

bb.ks:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i841
  tail call void @_ZdlPv(ptr noundef nonnull %18) #13
  br label %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843

_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843: ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i841, %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.avz = icmp eq ptr %.sroa.01075.32165, null
  br i1 %i.avz, label %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844, label %bb.kt

bb.kt:                                            ; preds = %bb.aa, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843
  %.pn496114511501159 = phi { ptr, i32 } [ %i.co, %bb.aa ], [ %.pn487.pn.pn.pn.pn.pn.pn.pn2170, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843 ]
  %.sroa.01075.4114411511158 = phi ptr [ %i.cg, %bb.aa ], [ %.sroa.01075.32165, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843 ]
  %.sroa.01078.4114311521156 = phi ptr [ %i.bz, %bb.aa ], [ %.sroa.01078.32163, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.01075.4114411511158) #13
  br label %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844

_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844:     ; preds = %bb.kt, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843
  %.sroa.01078.5 = phi ptr [ %.sroa.01078.4114311521156, %bb.kt ], [ %.sroa.01078.32163, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843 ] ; 2 uses
  %.pn496.pn = phi { ptr, i32 } [ %.pn496114511501159, %bb.kt ], [ %.pn487.pn.pn.pn.pn.pn.pn.pn2170, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit843 ] ; 2 uses
  %i.awa = icmp eq ptr %.sroa.01078.5, null
  br i1 %i.awa, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit845, label %bb.ku

bb.ku:                                            ; preds = %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844.thread, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844
  %.pn496.pn1142 = phi { ptr, i32 } [ %i.cn, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844.thread ], [ %.pn496.pn, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844 ]
  %.sroa.01078.51141 = phi ptr [ %i.bz, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844.thread ], [ %.sroa.01078.5, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.01078.51141) #13
  br label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit845

_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit845: ; preds = %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844, %bb.ku
  %.pn496.pn1143 = phi { ptr, i32 } [ %.pn496.pn, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit844 ], [ %.pn496.pn1142, %bb.ku ]
  resume { ptr, i32 } %.pn496.pn1143

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %.sink.split.i, %bb.c, %bb.b, %bb.a, %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.aub, %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit ], [ false, %bb.c ], [ false, %.sink.split.i ]
  ret i1 %.0
}

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

declare void @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof18add_derived_clauseEmbRKSt6vectorIiSaIiEERKS1_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof12weaken_minusEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External37push_binary_clause_on_extension_stackEmii(ptr noundef nonnull align 8 dereferenceable(568), i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN7CaDiCaL8Internal13new_clause_asEPKNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal12mark_removedEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof13delete_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZN7CaDiCaL8Internal13shrink_clauseEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal10mark_addedEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof13delete_clauseEmbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal16mark_substitutedEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal26flush_all_occs_and_watchesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288), i8 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal9decomposeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3364 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %.not2 = icmp slt i32 %i.b, 1
  br i1 %.not2, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.03, 1
  %i.d = load i32, ptr %i.a, align 4, !tbaa !277
  %.not.not = icmp slt i32 %.03, %i.d
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !276

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.03 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.a ]    ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal15decompose_roundEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"bool", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_ZTSN7CaDiCaL9ReluctantE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !8, i64 40, !8, i64 41}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 long", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseImSaImEE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorImSaImEE", !15, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !17, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !21, i64 0}
!23 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !11, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !26, i64 0}
!28 = !{!"p1 omnipotent char", !11, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !29, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !30, i64 0}
!32 = !{!"_ZTSSt6vectorIaSaIaEE", !31, i64 0}
!33 = !{!"_ZTSN7CaDiCaL6PhasesE", !32, i64 0, !32, i64 24, !32, i64 48, !32, i64 72, !32, i64 96, !32, i64 120}
!34 = !{!"p1 int", !11, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIjSaIjEE", !37, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIiSaIiEE", !41, i64 0}
!43 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 16}
!44 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !11, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !47, i64 0}
!49 = !{!"double", !4, i64 0}
!50 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !11, i64 0}
!51 = !{!"_ZTSN7CaDiCaL13score_smallerE", !50, i64 0}
!52 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !38, i64 0, !38, i64 24, !51, i64 48}
!53 = !{!"p1 double", !11, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIdSaIdEE", !56, i64 0}
!58 = !{!"p1 _ZTSN7CaDiCaL3VarE", !11, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !61, i64 0}
!63 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !11, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !64, i64 0}
end_hunk_2
