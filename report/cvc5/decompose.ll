Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/decompose?download=true
inline.NumInlined: 662
inline.NumDeleted: 265
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
  %i.ik = load i64, ptr %i.hu, align 8, !tbaa !160
  store i64 %i.ik, ptr %i.ij, align 8, !tbaa !160
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
  store ptr %i.ii, ptr %i.n, align 8, !tbaa !161
  store ptr %i.im, ptr %i.o, align 8, !tbaa !158
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ig ; 2 uses
  store ptr %i.in, ptr %i.p, align 8, !tbaa !159
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit75

_ZNSt6vectorImSaImEE9push_backERKm.exit75:        ; preds = %bb.aq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74
  %i.io = phi ptr [ %i.hs, %bb.aq ], [ %i.in, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74 ]
  %i.ip = phi ptr [ %i.hw, %bb.aq ], [ %i.im, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i74 ]
  %i.iq = load ptr, ptr %i.j, align 8, !tbaa !171, !noalias !191 ; 2 uses
  %.not109 = icmp eq ptr %i.hu, %i.iq
  br i1 %.not109, label %.loopexit.loopexit, label %.lr.ph140, !llvm.loop !188

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit67.thread
  %i.ir = load ptr, ptr %i.j, align 8, !tbaa !171 ; 2 uses
  %i.is = load ptr, ptr %i.k, align 8, !tbaa !171
  %.not108135 = icmp eq ptr %i.ir, %i.is
  br i1 %.not108135, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %bb.av
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !158
  %.pre147 = load ptr, ptr %i.p, align 8, !tbaa !159
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit83
  %i.it = phi ptr [ %i.jo, %_ZNSt6vectorImSaImEE9push_backERKm.exit83 ], [ %.pre147, %.lr.ph137.preheader ] ; 3 uses
  %i.iu = phi ptr [ %i.jp, %_ZNSt6vectorImSaImEE9push_backERKm.exit83 ], [ %.pre, %.lr.ph137.preheader ] ; 3 uses
  %.sroa.085.0136 = phi ptr [ %i.jq, %_ZNSt6vectorImSaImEE9push_backERKm.exit83 ], [ %i.ir, %.lr.ph137.preheader ] ; 3 uses
  %.not.i76 = icmp eq ptr %i.iu, %i.it
  br i1 %.not.i76, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph137
  %i.iv = load i64, ptr %.sroa.085.0136, align 8, !tbaa !160
  store i64 %i.iv, ptr %i.iu, align 8, !tbaa !160
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 2 uses
  store ptr %i.iw, ptr %i.o, align 8, !tbaa !158
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit83

bb.ax:                                            ; preds = %.lr.ph137
  %i.ix = load ptr, ptr %i.n, align 8, !tbaa !161 ; 4 uses
  %i.iy = ptrtoint ptr %i.it to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz                    ; 5 uses
  %i.jb = icmp eq i64 %i.ja, 9223372036854775800
  br i1 %i.jb, label %bb.ay, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i77

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
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
  %i.jk = load i64, ptr %.sroa.085.0136, align 8, !tbaa !160
  store i64 %i.jk, ptr %i.jj, align 8, !tbaa !160
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
  store ptr %i.ji, ptr %i.n, align 8, !tbaa !161
  store ptr %i.jm, ptr %i.o, align 8, !tbaa !158
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jg ; 2 uses
  store ptr %i.jn, ptr %i.p, align 8, !tbaa !159
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit83

_ZNSt6vectorImSaImEE9push_backERKm.exit83:        ; preds = %bb.aw, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82
  %i.jo = phi ptr [ %i.it, %bb.aw ], [ %i.jn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82 ]
  %i.jp = phi ptr [ %i.iw, %bb.aw ], [ %i.jm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i82 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.085.0136, i64 8 ; 3 uses
  %i.jr = load ptr, ptr %i.k, align 8, !tbaa !171
  %.not108 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not108, label %.loopexit.loopexit144, label %.lr.ph137, !llvm.loop !189

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit75
  %.pre151 = load ptr, ptr %i.k, align 8, !tbaa !158
  br label %.loopexit

.loopexit.loopexit144:                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit83
  %.pre150 = load ptr, ptr %i.j, align 8, !tbaa !161
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit144, %.loopexit.loopexit, %bb.ap
  %i.js = phi ptr [ %i.jq, %.loopexit.loopexit144 ], [ %.pre151, %.loopexit.loopexit ], [ %i.hq, %bb.ap ]
  %i.jt = phi ptr [ %.pre150, %.loopexit.loopexit144 ], [ %i.iq, %.loopexit.loopexit ], [ %i.hr, %bb.ap ] ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.js, %i.jt
  br i1 %.not.i.i84, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.loopexit
  store ptr %i.jt, ptr %i.k, align 8, !tbaa !158
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.av, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %.loopexit, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.k, %bb.d
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0100.0142, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ju, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7CaDiCaL8Internal25clear_decomposed_literalsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(5704) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1272 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 2 uses
  %.not7 = icmp eq ptr %i.b, %i.d
  br i1 %.not7, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 760
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !166 ; 2 uses
  %.pre9 = load ptr, ptr %i.c, align 8, !tbaa !164
  %i.f = icmp eq ptr %.pre9, %.pre
  br i1 %i.f, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %.pre, ptr %i.c, align 8, !tbaa !164
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.08 = phi ptr [ %i.b, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %.sroa.04.08, align 4, !tbaa !162 ; 2 uses
  %i.h = tail call noundef i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %i.i = zext nneg i32 %i.h to i64
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !163
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
define noundef zeroext i1 @_ZN7CaDiCaL8Internal15decompose_roundEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.50", align 8    ; 11 uses
  %2 = alloca %"class.std::vector.0", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3360
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 14 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !206, !range !154, !noundef !155
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.g = load volatile i8, ptr %i.f, align 8, !tbaa !207, !range !154, !noundef !155
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !208  ; 3 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !208
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !209
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !228  ; 3 uses
  %.not3.i = icmp eq ptr %i.q, null
  br i1 %.not3.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.i, align 8, !tbaa !229  ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.i, align 8, !tbaa !229
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.u = load i32, ptr %i.t, align 8, !tbaa !230
  store i32 %i.u, ptr %i.i, align 8, !tbaa !229
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !232
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !192
  br i1 %i.y, label %.sink.split.i, label %bb.i

.sink.split.i:                                    ; preds = %bb.h, %bb.e
  store volatile i8 1, ptr %i.f, align 8, !tbaa !207
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !233, !range !154, !noundef !155
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %._crit_edge1748, label %bb.j

._crit_edge1748:                                  ; preds = %bb.i
  %.pre = load i32, ptr %0, align 8, !tbaa !234
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !235, !range !154, !noundef !155
  %i.ae = trunc nuw i8 %i.ad to i1
  %.pre1749 = load i32, ptr %0, align 8, !tbaa !234 ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = and i32 %.pre1749, -257                 ; 2 uses
  store i32 %i.af, ptr %0, align 8, !tbaa !234
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge1748, %bb.k, %bb.j
  %i.ag = phi i32 [ %.pre, %._crit_edge1748 ], [ %i.af, %bb.k ], [ %.pre1749, %bb.j ]
  %i.ah = or i32 %i.ag, 520
  store i32 %i.ah, ptr %0, align 8, !tbaa !234
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5008 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !236
  %i.ak = add nsw i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !236
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !237
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nsw i64 %i.an, 1
  %i.ap = add nsw i64 %i.ao, 2                    ; 8 uses
  %i.aq = icmp ugt i64 %i.ap, 1152921504606846975
  %i.ar = shl nsw i64 %i.ap, 4
  %i.as = select i1 %i.aq, i64 -1, i64 %i.ar
  %i.at = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #12 ; 28 uses
  %i.au = icmp eq i64 %i.ap, 0                    ; 2 uses
  br i1 %i.au, label %.loopexit1135, label %.loopexit1135.loopexit

.loopexit1135.loopexit:                           ; preds = %bb.l
  %i.av = shl nsw i64 %i.an, 5
  %i.aw = add nsw i64 %i.av, 32
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.aw, i1 false)
  br label %.loopexit1135

.loopexit1135:                                    ; preds = %.loopexit1135.loopexit, %bb.l
  %i.ax = icmp ugt i64 %i.ap, 4611686018427387903
  %i.ay = shl nsw i64 %i.ap, 2                    ; 2 uses
  %i.az = select i1 %i.ax, i64 -1, i64 %i.ay
  %i.ba = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.az) #12
          to label %bb.m unwind label %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758.thread ; 26 uses

bb.m:                                             ; preds = %.loopexit1135
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ba, i8 0, i64 %i.ay, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.au, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = icmp ugt i64 %i.ap, 384307168202282325
  br i1 %i.bd, label %bb.o, label %_ZNKSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #11
          to label %.noexc762 unwind label %bb.p

.noexc762:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.n
  %i.be = mul nuw nsw i64 %i.ap, 24               ; 2 uses
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #12
          to label %.noexc763 unwind label %bb.p  ; 4 uses

.noexc763:                                        ; preds = %_ZNKSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bf, i8 0, i64 %i.be, i1 false)
  store ptr %i.bf, ptr %1, align 8, !tbaa !175
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.ap ; 3 uses
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !238
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !239
  br label %bb.q

_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758.thread: ; preds = %.loopexit1135
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.p:                                             ; preds = %bb.o, %_ZNKSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %bb.jq

bb.q:                                             ; preds = %.noexc763, %bb.m
  %3 = phi ptr [ %i.bg, %.noexc763 ], [ null, %bb.m ] ; 19 uses
  %4 = phi ptr [ %i.bf, %.noexc763 ], [ null, %bb.m ] ; 22 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5688 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !240, !nonnull !155, !align !241
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !162 ; 2 uses
  %.not10611562 = icmp eq i32 %i.bm, 0
  br i1 %.not10611562, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit523, label %.lr.ph1573

.lr.ph1573:                                       ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 9 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre1750 = load i8, ptr %i.c, align 4, !tbaa !206, !range !154 ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph1573, %.loopexit1129
  %i.ca = phi i8 [ %.pre1750, %.lr.ph1573 ], [ %i.pm, %.loopexit1129 ] ; 3 uses
  %i.cb = phi i8 [ %.pre1750, %.lr.ph1573 ], [ %i.pn, %.loopexit1129 ] ; 2 uses
  %i.cc = phi i8 [ %.pre1750, %.lr.ph1573 ], [ %i.po, %.loopexit1129 ]
  %.02331571 = phi i32 [ 0, %.lr.ph1573 ], [ %.9242.ph, %.loopexit1129 ] ; 3 uses
  %.02431570 = phi i32 [ 0, %.lr.ph1573 ], [ %.14257.ph, %.loopexit1129 ] ; 4 uses
  %.sroa.0957.01569 = phi i32 [ 1, %.lr.ph1573 ], [ %i.pp, %.loopexit1129 ] ; 4 uses
  %.sroa.24.01568 = phi ptr [ null, %.lr.ph1573 ], [ %.sroa.24.6.ph, %.loopexit1129 ] ; 4 uses
  %.sroa.16.01567 = phi ptr [ null, %.lr.ph1573 ], [ %.sroa.16.9.ph, %.loopexit1129 ] ; 3 uses
  %.sroa.0960.01566 = phi ptr [ null, %.lr.ph1573 ], [ %.sroa.0960.8.ph, %.loopexit1129 ] ; 4 uses
  %.sroa.25.01565 = phi ptr [ null, %.lr.ph1573 ], [ %.sroa.25.9.ph, %.loopexit1129 ] ; 4 uses
  %.sroa.13981.01564 = phi ptr [ null, %.lr.ph1573 ], [ %.sroa.13981.9.ph, %.loopexit1129 ] ; 3 uses
  %.sroa.0975.01563 = phi ptr [ null, %.lr.ph1573 ], [ %.sroa.0975.11.ph, %.loopexit1129 ] ; 4 uses
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %._crit_edge1574, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.0957.01569, i1 true)
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = load ptr, ptr %i.bn, align 8, !tbaa !163
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 1
  %i.cj = and i32 %i.ci, 117440512
  %i.ck = icmp eq i32 %i.cj, 16777216
  br i1 %i.ck, label %.preheader1128, label %.loopexit1129

.preheader1128:                                   ; preds = %bb.s
  %i.cl = trunc nuw i8 %i.cb to i1
  br i1 %i.cl, label %.loopexit1129, label %.lr.ph1553

.lr.ph1553:                                       ; preds = %.preheader1128, %.critedge
  %i.cm = phi i8 [ 0, %.critedge ], [ %i.ca, %.preheader1128 ]
  %.02251552 = phi i32 [ %i.pj, %.critedge ], [ -1, %.preheader1128 ] ; 3 uses
  %.12341551 = phi i32 [ %.8241, %.critedge ], [ %.02331571, %.preheader1128 ] ; 3 uses
  %.12441550 = phi i32 [ %.13256, %.critedge ], [ %.02431570, %.preheader1128 ] ; 3 uses
  %.sroa.24.11549 = phi ptr [ %.sroa.24.5, %.critedge ], [ %.sroa.24.01568, %.preheader1128 ] ; 3 uses
  %.sroa.16.11548 = phi ptr [ %.sroa.16.8, %.critedge ], [ %.sroa.16.01567, %.preheader1128 ] ; 3 uses
  %.sroa.0960.11547 = phi ptr [ %.sroa.0960.6, %.critedge ], [ %.sroa.0960.01566, %.preheader1128 ] ; 4 uses
  %.sroa.25.11546 = phi ptr [ %.sroa.25.8, %.critedge ], [ %.sroa.25.01565, %.preheader1128 ] ; 4 uses
  %.sroa.13981.11545 = phi ptr [ %.sroa.13981.8, %.critedge ], [ %.sroa.13981.01564, %.preheader1128 ] ; 4 uses
  %.sroa.0975.11544 = phi ptr [ %.sroa.0975.9, %.critedge ], [ %.sroa.0975.01563, %.preheader1128 ] ; 7 uses
  %i.cn = mul nsw i32 %.02251552, %.sroa.0957.01569 ; 4 uses
  %i.co = tail call noundef i32 @llvm.abs.i32(i32 %i.cn, i1 true)
  %i.cp = tail call noundef i32 @llvm.fshl.i32(i32 %i.co, i32 %i.cn, i32 1)
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !242
  %i.cu = icmp eq i32 %i.ct, -1
  br i1 %i.cu, label %.critedge, label %bb.t

.loopexit.split-lp1131.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %bb.w
  %lpad.loopexit.split-lp2701 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit742

bb.t:                                             ; preds = %.lr.ph1553
  %.not.i426 = icmp eq ptr %.sroa.13981.11545, %.sroa.25.11546
  br i1 %.not.i426, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.cn, ptr %.sroa.13981.11545, align 4, !tbaa !162
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.t
  %i.cv = ptrtoint ptr %.sroa.25.11546 to i64
  %i.cw = ptrtoint ptr %.sroa.0975.11544 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 5 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775804
  br i1 %i.cy, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc427 unwind label %.loopexit.split-lp1131.loopexit.split-lp

.noexc427:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.cz = ashr exact i64 %i.cx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 2305843009213693951)
  %i.dd = select i1 %i.db, i64 2305843009213693951, i64 %i.dc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.de = shl nuw nsw i64 %i.dd, 2
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #12
          to label %.noexc428 unwind label %.loopexit.split-lp1131.loopexit.split-lp ; 4 uses

.noexc428:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cx ; 2 uses
  store i32 %i.cn, ptr %i.dg, align 4, !tbaa !162
  %i.dh = icmp sgt i64 %i.cx, 0
  br i1 %i.dh, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc428
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.df, ptr align 4 %.sroa.0975.11544, i64 %i.cx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc428
  %.not.i17.i.i = icmp eq ptr %.sroa.0975.11544, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0975.11544) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dd
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.sroa.0975.14 = phi ptr [ %i.df, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0975.11544, %bb.u ] ; 3 uses
  %.pn = phi ptr [ %i.dg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13981.11545, %bb.u ]
  %.sroa.25.11 = phi ptr [ %i.di, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.25.11546, %bb.u ] ; 2 uses
  %.sroa.13981.10 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 3 uses
  %i.dj = load i8, ptr %i.c, align 4, !tbaa !206, !range !154, !noundef !155 ; 3 uses
  %i.dk = trunc nuw i8 %i.dj to i1                ; 2 uses
  %i.dl = icmp eq ptr %.sroa.0975.14, %.sroa.13981.10
  %or.cond1056257325932616 = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond1056257325932616, label %.critedge, label %.lr.ph2575.lr.ph

.lr.ph2575.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %.loopexit1108
  %i.dm = phi i1 [ %i.pg, %.loopexit1108 ], [ %i.dk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.dn = phi i8 [ %i.pf, %.loopexit1108 ], [ %i.dj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.2235.ph2624 = phi i32 [ %.6239, %.loopexit1108 ], [ %.12341551, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.2245.ph2623 = phi i32 [ %.2245.ph19972596, %.loopexit1108 ], [ %.12441550, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.24.2.ph2622 = phi ptr [ %.sroa.24.4, %.loopexit1108 ], [ %.sroa.24.11549, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.sroa.16.2.ph2621 = phi ptr [ %.sroa.16.7, %.loopexit1108 ], [ %.sroa.16.11548, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.0960.2.ph2620 = phi ptr [ %.sroa.0960.4, %.loopexit1108 ], [ %.sroa.0960.11547, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 18 uses
  %.sroa.25.2.ph2619 = phi ptr [ %.sroa.25.7, %.loopexit1108 ], [ %.sroa.25.11, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.sroa.13981.2.ph2618 = phi ptr [ %.sroa.13981.7, %.loopexit1108 ], [ %.sroa.13981.10, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.0975.2.ph2617 = phi ptr [ %.sroa.0975.7, %.loopexit1108 ], [ %.sroa.0975.14, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 13 uses
  %.pre17632625 = ptrtoint ptr %.sroa.0960.2.ph2620 to i64
  %i.do = ptrtoint ptr %.sroa.0960.2.ph2620 to i64
  br label %.lr.ph2575

.lr.ph2575:                                       ; preds = %.lr.ph2575.lr.ph, %.loopexit1118
  %i.dp = phi i1 [ %i.dm, %.lr.ph2575.lr.ph ], [ %i.nc, %.loopexit1118 ]
  %i.dq = phi i8 [ %i.dn, %.lr.ph2575.lr.ph ], [ %i.nb, %.loopexit1118 ]
  %.2245.ph19972596 = phi i32 [ %.2245.ph2623, %.lr.ph2575.lr.ph ], [ %.4247, %.loopexit1118 ] ; 5 uses
  %.sroa.16.2.ph19952595 = phi ptr [ %.sroa.16.2.ph2621, %.lr.ph2575.lr.ph ], [ %i.lc, %.loopexit1118 ] ; 9 uses
  %.sroa.13981.2.ph19942594 = phi ptr [ %.sroa.13981.2.ph2618, %.lr.ph2575.lr.ph ], [ %i.dr, %.loopexit1118 ]
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph2575, %.split
  %.sroa.13981.22574 = phi ptr [ %.sroa.13981.2.ph19942594, %.lr.ph2575 ], [ %i.dr, %.split ] ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %.sroa.13981.22574, i64 -4 ; 9 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !162 ; 11 uses
  %i.dt = tail call i32 @llvm.abs.i32(i32 %i.ds, i1 true) ; 3 uses
  %i.du = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.ds, i32 1)
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.dv ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4 ; 3 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !242 ; 3 uses
  %i.dz = icmp eq i32 %i.dy, -1
  br i1 %i.dz, label %.loopexit1108, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = sub nsw i32 0, %i.ds                    ; 6 uses
  %i.eb = tail call noundef i32 @llvm.fshl.i32(i32 %i.dt, i32 %i.ea, i32 1)
  %i.ec = zext i32 %i.eb to i64
  %i.ed = load ptr, ptr %i.bo, align 8, !tbaa !243
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.ec ; 4 uses
  %i.ef = load i32, ptr %i.dw, align 8, !tbaa !244 ; 2 uses
  %.not338 = icmp eq i32 %i.ef, 0
  br i1 %.not338, label %bb.ci, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !246 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !246 ; 2 uses
  %.not10621514 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not10621514, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal15decompose_roundEv:bb.a
  store i32 %i.iv, ptr %i.it, align 1
  %i.iw = load ptr, ptr %i.bq, align 8, !tbaa !164 ; 4 uses
  %i.ix = load ptr, ptr %i.br, align 8, !tbaa !165
  %.not.i.i466 = icmp eq ptr %i.iw, %i.ix
  br i1 %.not.i.i466, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 %i.ea, ptr %i.iw, align 4, !tbaa !162
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store ptr %i.iy, ptr %i.bq, align 8, !tbaa !164
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit475

bb.bi:                                            ; preds = %bb.bg
  %i.iz = load ptr, ptr %i.bp, align 8, !tbaa !166 ; 4 uses
  %i.ja = ptrtoint ptr %i.iw to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb                    ; 5 uses
  %i.jd = icmp eq i64 %i.jc, 9223372036854775804
  br i1 %i.jd, label %.invoke2650, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i467

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i467: ; preds = %bb.bi
  %i.je = ashr exact i64 %i.jc, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i468 = tail call i64 @llvm.umax.i64(i64 %i.je, i64 1)
  %i.jf = add nsw i64 %.sroa.speculated.i.i.i.i468, %i.je ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.je
  %i.jh = tail call i64 @llvm.umin.i64(i64 %i.jf, i64 2305843009213693951)
  %i.ji = select i1 %i.jg, i64 2305843009213693951, i64 %i.jh ; 3 uses
  %.not.i.i.i.i469 = icmp ne i64 %i.ji, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i469)
  %i.jj = shl nuw nsw i64 %i.ji, 2
  %i.jk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jj) #12
          to label %.noexc474 unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc474:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i467
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 %i.jc ; 2 uses
  store i32 %i.ea, ptr %i.jl, align 4, !tbaa !162
  %i.jm = icmp sgt i64 %i.jc, 0
  br i1 %i.jm, label %bb.bj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i470

bb.bj:                                            ; preds = %.noexc474
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jk, ptr align 4 %i.iz, i64 %i.jc, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i470

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i470: ; preds = %bb.bj, %.noexc474
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %.not.i17.i.i.i471 = icmp eq ptr %i.iz, null
  br i1 %.not.i17.i.i.i471, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i472, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i470
  tail call void @_ZdlPv(ptr noundef nonnull %i.iz) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i472

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i472: ; preds = %bb.bk, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i470
  store ptr %i.jk, ptr %i.bp, align 8, !tbaa !166
  store ptr %i.jn, ptr %i.bq, align 8, !tbaa !164
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.ji
  store ptr %i.jo, ptr %i.br, align 8, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit475

_ZNSt6vectorIiSaIiEE9push_backEOi.exit475:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i472, %bb.bh
  invoke void @_ZN7CaDiCaL8Internal30decompose_analyze_binary_chainEPNS_3DFSEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull %i.at, i32 noundef %i.ds)
          to label %bb.bl unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit475
  %i.jp = load ptr, ptr %i.bs, align 8, !tbaa !171 ; 2 uses
  %i.jq = load ptr, ptr %i.bt, align 8, !tbaa !171 ; 2 uses
  %.not10651530 = icmp eq ptr %i.jp, %i.jq
  br i1 %.not10651530, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %.lr.ph1533.preheader

.lr.ph1533.preheader:                             ; preds = %bb.bl
  %.pre1751 = load ptr, ptr %i.bv, align 8, !tbaa !158
  %.pre1752 = load ptr, ptr %i.bw, align 8, !tbaa !159
  br label %.lr.ph1533

._crit_edge1534:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre1753 = load ptr, ptr %i.bs, align 8, !tbaa !161 ; 2 uses
  %.pre1754 = load ptr, ptr %i.bt, align 8, !tbaa !158
  %i.jr = icmp eq ptr %.pre1754, %.pre1753
  br i1 %i.jr, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge1534
  store ptr %.pre1753, ptr %i.bt, align 8, !tbaa !158
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

.lr.ph1533:                                       ; preds = %.lr.ph1533.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.js = phi ptr [ %i.km, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.pre1752, %.lr.ph1533.preheader ] ; 3 uses
  %i.jt = phi ptr [ %i.kn, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.pre1751, %.lr.ph1533.preheader ] ; 3 uses
  %.sroa.0894.01531 = phi ptr [ %i.ko, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.jp, %.lr.ph1533.preheader ] ; 2 uses
  %i.ju = load i64, ptr %.sroa.0894.01531, align 8, !tbaa !160 ; 2 uses
  %.not.i477 = icmp eq ptr %i.jt, %i.js
  br i1 %.not.i477, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph1533
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !160
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  store ptr %i.jv, ptr %i.bv, align 8, !tbaa !158
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.bn:                                            ; preds = %.lr.ph1533
  %i.jw = load ptr, ptr %i.bu, align 8, !tbaa !161 ; 4 uses
  %i.jx = ptrtoint ptr %i.js to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy                    ; 5 uses
  %i.ka = icmp eq i64 %i.jz, 9223372036854775800
  br i1 %i.ka, label %.invoke2650, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bn
  %i.kb = ashr exact i64 %i.jz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i478 = tail call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %i.kc = add nsw i64 %.sroa.speculated.i.i.i478, %i.kb ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.kb
  %i.ke = tail call i64 @llvm.umin.i64(i64 %i.kc, i64 1152921504606846975)
  %i.kf = select i1 %i.kd, i64 1152921504606846975, i64 %i.ke ; 3 uses
  %.not.i.i.i479 = icmp ne i64 %i.kf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i479)
  %i.kg = shl nuw nsw i64 %i.kf, 3
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #12
          to label %.noexc482 unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc482:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 %i.jz ; 2 uses
  store i64 %i.ju, ptr %i.ki, align 8, !tbaa !160
  %i.kj = icmp sgt i64 %i.jz, 0
  br i1 %i.kj, label %bb.bo, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.bo:                                            ; preds = %.noexc482
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.kh, ptr align 8 %i.jw, i64 %i.jz, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.bo, %.noexc482
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %.not.i17.i.i480 = icmp eq ptr %i.jw, null
  br i1 %.not.i17.i.i480, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.jw) #13
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.bp, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.kh, ptr %i.bu, align 8, !tbaa !161
  store ptr %i.kk, ptr %i.bv, align 8, !tbaa !158
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kf ; 2 uses
  store ptr %i.kl, ptr %i.bw, align 8, !tbaa !159
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.bm
  %i.km = phi ptr [ %i.kl, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.js, %bb.bm ]
  %i.kn = phi ptr [ %i.kk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.jv, %bb.bm ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0894.01531, i64 8 ; 2 uses
  %.not1065 = icmp eq ptr %i.ko, %i.jq
  br i1 %.not1065, label %._crit_edge1534, label %.lr.ph1533

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.bl, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %._crit_edge1534, %bb.bf
  invoke void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.ds)
          to label %bb.bq unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bq:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.kp = load i8, ptr %i.bj, align 8, !tbaa !153, !range !154, !noundef !155
  %i.kq = trunc nuw i8 %i.kp to i1
  br i1 %i.kq, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.kr = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
          to label %bb.bs unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bs:                                            ; preds = %bb.br, %bb.bq
  invoke void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
          to label %bb.bt unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bt:                                            ; preds = %bb.bs
  %i.ks = load ptr, ptr %i.bu, align 8, !tbaa !161 ; 2 uses
  %i.kt = load ptr, ptr %i.bv, align 8, !tbaa !158
  %.not.i.i483 = icmp eq ptr %i.kt, %i.ks
  br i1 %.not.i.i483, label %_ZNSt6vectorImSaImEE5clearEv.exit485, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i484

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i484:     ; preds = %bb.bt
  store ptr %i.ks, ptr %i.bv, align 8, !tbaa !158
  br label %_ZNSt6vectorImSaImEE5clearEv.exit485

bb.bu:                                            ; preds = %bb.be
  %i.ku = tail call i32 @llvm.abs.i32(i32 %i.io, i1 true)
  %i.kv = tail call i32 @llvm.abs.i32(i32 %.0995, i1 true)
  %i.kw = icmp samesign ult i32 %i.ku, %i.kv
  %spec.select1058 = select i1 %i.kw, i32 %i.io, i32 %.0995
  br label %_ZNSt6vectorImSaImEE5clearEv.exit485

_ZNSt6vectorImSaImEE5clearEv.exit485:             ; preds = %bb.bu, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i484, %bb.bt
  %.1996 = phi i32 [ %spec.select1058, %bb.bu ], [ %.0995, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i484 ], [ %.0995, %bb.bt ] ; 6 uses
  %i.kx = load i8, ptr %i.c, align 4, !tbaa !206, !range !154, !noundef !155
  %i.ky = trunc nuw i8 %i.kx to i1                ; 2 uses
  %i.kz = icmp eq i32 %i.io, %i.ds
  %.not344 = or i1 %i.kz, %i.ky
  br i1 %.not344, label %bb.bv, label %bb.be, !llvm.loop !195

bb.bv:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit485
  br i1 %i.ky, label %.loopexit1108..critedge.loopexit_crit_edge, label %.preheader1114

.preheader1114:                                   ; preds = %bb.bv
  %i.la = tail call i32 @llvm.abs.i32(i32 %.1996, i1 true)
  %i.lb = zext nneg i32 %i.la to i64
  br label %bb.bw

bb.bw:                                            ; preds = %.preheader1114, %bb.cg
  %.sroa.16.3 = phi ptr [ %i.lc, %bb.cg ], [ %.sroa.16.2.ph19952595, %.preheader1114 ]
  %.3246 = phi i32 [ %.4247, %bb.cg ], [ %.2245.ph19972596, %.preheader1114 ] ; 3 uses
  %i.lc = getelementptr inbounds i8, ptr %.sroa.16.3, i64 -4 ; 4 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !162 ; 6 uses
  %i.le = tail call noundef i32 @llvm.abs.i32(i32 %i.ld, i1 true) ; 2 uses
  %i.lf = tail call noundef i32 @llvm.fshl.i32(i32 %i.le, i32 %i.ld, i32 1)
  %i.lg = zext i32 %i.lf to i64                   ; 4 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store i32 -1, ptr %i.li, align 4, !tbaa !242
  %i.lj = zext nneg i32 %i.le to i64              ; 2 uses
  %i.lk = load ptr, ptr %i.by, align 8, !tbaa !251
  %i.ll = load ptr, ptr %i.bx, align 8, !tbaa !252 ; 2 uses
  %i.lm = ptrtoint ptr %i.lk to i64
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = ashr exact i64 %i.lo, 2
  %i.lq = icmp ugt i64 %i.lp, %i.lj
  br i1 %i.lq, label %_ZN7CaDiCaL8Internal6frozenEi.exit, label %_ZN7CaDiCaL8Internal6frozenEi.exit.thread

_ZN7CaDiCaL8Internal6frozenEi.exit:               ; preds = %bb.bw
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lj
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !162
  %.not1066 = icmp eq i32 %i.ls, 0
  br i1 %.not1066, label %_ZN7CaDiCaL8Internal6frozenEi.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.lg
  store i32 %i.ld, ptr %i.lt, align 4, !tbaa !162
  br label %bb.cg

_ZN7CaDiCaL8Internal6frozenEi.exit.thread:        ; preds = %bb.bw, %_ZN7CaDiCaL8Internal6frozenEi.exit
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.lg
  store i32 %.1996, ptr %i.lu, align 4, !tbaa !162
  %i.lv = icmp eq i32 %i.ld, %.1996
  br i1 %i.lv, label %bb.cg, label %bb.by

bb.by:                                            ; preds = %_ZN7CaDiCaL8Internal6frozenEi.exit.thread
  %i.lw = add nsw i32 %.3246, 1                   ; 2 uses
  %i.lx = load i8, ptr %i.bj, align 8, !tbaa !153, !range !154, !noundef !155
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.lz = load ptr, ptr %i.bn, align 8, !tbaa !163
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.lb ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 1
  %i.mc = or i32 %i.mb, 1
  store i32 %i.mc, ptr %i.ma, align 1
  %i.md = load ptr, ptr %i.bq, align 8, !tbaa !164 ; 4 uses
  %i.me = load ptr, ptr %i.br, align 8, !tbaa !165
  %.not.i486 = icmp eq ptr %i.md, %i.me
  br i1 %.not.i486, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i32 %.1996, ptr %i.md, align 4, !tbaa !162
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store ptr %i.mf, ptr %i.bq, align 8, !tbaa !164
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit495

bb.cb:                                            ; preds = %bb.bz
  %i.mg = load ptr, ptr %i.bp, align 8, !tbaa !166 ; 4 uses
  %i.mh = ptrtoint ptr %i.md to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi                    ; 5 uses
  %i.mk = icmp eq i64 %i.mj, 9223372036854775804
  br i1 %i.mk, label %.invoke2650, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i487

.invoke2650:                                      ; preds = %bb.ck, %bb.al, %bb.bi, %bb.cb, %bb.bn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.cont2651 unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont2651:                                        ; preds = %.invoke2650
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i487: ; preds = %bb.cb
  %i.ml = ashr exact i64 %i.mj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i488 = tail call i64 @llvm.umax.i64(i64 %i.ml, i64 1)
  %i.mm = add nsw i64 %.sroa.speculated.i.i.i488, %i.ml ; 2 uses
  %i.mn = icmp ult i64 %i.mm, %i.ml
  %i.mo = tail call i64 @llvm.umin.i64(i64 %i.mm, i64 2305843009213693951)
  %i.mp = select i1 %i.mn, i64 2305843009213693951, i64 %i.mo ; 3 uses
  %.not.i.i.i489 = icmp ne i64 %i.mp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i489)
  %i.mq = shl nuw nsw i64 %i.mp, 2
  %i.mr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mq) #12
          to label %.noexc494 unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc494:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i487
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 %i.mj ; 2 uses
  store i32 %.1996, ptr %i.ms, align 4, !tbaa !162
  %i.mt = icmp sgt i64 %i.mj, 0
  br i1 %i.mt, label %bb.cc, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i490

bb.cc:                                            ; preds = %.noexc494
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mr, ptr align 4 %i.mg, i64 %i.mj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i490

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i490: ; preds = %bb.cc, %.noexc494
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  %.not.i17.i.i491 = icmp eq ptr %i.mg, null
  br i1 %.not.i17.i.i491, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i492, label %bb.cd

bb.cd:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i490
  tail call void @_ZdlPv(ptr noundef nonnull %i.mg) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i492

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i492: ; preds = %bb.cd, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i490
  store ptr %i.mr, ptr %i.bp, align 8, !tbaa !166
  store ptr %i.mu, ptr %i.bq, align 8, !tbaa !164
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.mp
  store ptr %i.mv, ptr %i.br, align 8, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit495

_ZNSt6vectorIiSaIiEE9push_backERKi.exit495:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i492, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN7CaDiCaL8Internal32decompose_analyze_binary_clausesEPNS_3DFSEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull %i.at, i32 noundef %i.ld)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit495
  %i.mw = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.lg ; 3 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !253 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.mz = load <2 x ptr>, ptr %2, align 16, !tbaa !176
  store <2 x ptr> %i.mz, ptr %i.mw, align 8, !tbaa !176
  %i.na = load ptr, ptr %i.bz, align 16, !tbaa !169
  store ptr %i.na, ptr %i.my, align 8, !tbaa !169
  %.not.i.i.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @_ZdlPv(ptr noundef nonnull %i.mx) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  invoke void @_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
          to label %bb.cg unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, %bb.by, %_ZN7CaDiCaL8Internal6frozenEi.exit.thread, %bb.bx
  %.4247 = phi i32 [ %.3246, %bb.bx ], [ %.3246, %_ZN7CaDiCaL8Internal6frozenEi.exit.thread ], [ %i.lw, %bb.by ], [ %i.lw, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit ] ; 3 uses
  %.not349 = icmp eq i32 %i.ld, %i.ds
  br i1 %.not349, label %.loopexit1118, label %bb.bw, !llvm.loop !196

.loopexit1118:                                    ; preds = %bb.cg
  %i.nb = load i8, ptr %i.c, align 4, !tbaa !206, !range !154, !noundef !155 ; 3 uses
  %i.nc = trunc nuw i8 %i.nb to i1                ; 2 uses
  %i.nd = icmp eq ptr %.sroa.0975.2.ph2617, %i.dr
  %or.cond10562573 = select i1 %i.nc, i1 true, i1 %i.nd
  br i1 %or.cond10562573, label %.critedge, label %.lr.ph2575

_ZNSt6vectorImSaImEED2Ev.exit742.thread:          ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i430
  %lpad.loopexit1122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jm

.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i467, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit475, %bb.bs, %bb.br, %_ZNSt6vectorImSaImEE5clearEv.exit, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i487, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i500, %.invoke2650
  %lpad.loopexit.split-lp2697 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit742

bb.ch:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit495
  %i.ne = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %_ZNSt6vectorImSaImEED2Ev.exit742

.split:                                           ; preds = %._crit_edge
  store i32 %.0221.lcssa, ptr %i.dx, align 4, !tbaa !242
  %i.nf = icmp eq ptr %.sroa.0975.2.ph2617, %i.dr
  %or.cond1056 = select i1 %i.dp, i1 true, i1 %i.nf
  br i1 %or.cond1056, label %.critedge, label %bb.z

bb.ci:                                            ; preds = %bb.aa
  %i.ng = add i32 %.2235.ph2624, 1                ; 4 uses
  store i32 %i.ng, ptr %i.dx, align 4, !tbaa !242
  store i32 %i.ng, ptr %i.dw, align 8, !tbaa !244
  %.not.i499 = icmp eq ptr %.sroa.16.2.ph19952595, %.sroa.24.2.ph2622
  br i1 %.not.i499, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 %i.ds, ptr %.sroa.16.2.ph19952595, align 4, !tbaa !162
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit508

bb.ck:                                            ; preds = %bb.ci
  %i.nh = ptrtoint ptr %.sroa.16.2.ph19952595 to i64
  %i.ni = ptrtoint ptr %.sroa.0960.2.ph2620 to i64
  %i.nj = sub i64 %i.nh, %i.ni                    ; 5 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775804
  br i1 %i.nk, label %.invoke2650, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i500

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i500: ; preds = %bb.ck
  %i.nl = ashr exact i64 %i.nj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i501 = tail call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i.i501, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = tail call i64 @llvm.umin.i64(i64 %i.nm, i64 2305843009213693951)
  %i.np = select i1 %i.nn, i64 2305843009213693951, i64 %i.no ; 3 uses
  %.not.i.i.i502 = icmp ne i64 %i.np, 0
  tail call void @llvm.assume(i1 %.not.i.i.i502)
  %i.nq = shl nuw nsw i64 %i.np, 2
  %i.nr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #12
          to label %.noexc507 unwind label %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc507:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i500
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 %i.nj ; 2 uses
  store i32 %i.ds, ptr %i.ns, align 4, !tbaa !162
  %i.nt = icmp sgt i64 %i.nj, 0
  br i1 %i.nt, label %bb.cl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i503

bb.cl:                                            ; preds = %.noexc507
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nr, ptr align 4 %.sroa.0960.2.ph2620, i64 %i.nj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i503

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i503: ; preds = %bb.cl, %.noexc507
  %.not.i17.i.i504 = icmp eq ptr %.sroa.0960.2.ph2620, null
  br i1 %.not.i17.i.i504, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i505, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i503
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0960.2.ph2620) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i505

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i505: ; preds = %bb.cm, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i503
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.np
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit508

_ZNSt6vectorIiSaIiEE9push_backERKi.exit508:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i505, %bb.cj
  %.sroa.0960.13 = phi ptr [ %i.nr, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i505 ], [ %.sroa.0960.2.ph2620, %bb.cj ] ; 3 uses
  %.pn1067 = phi ptr [ %i.ns, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i505 ], [ %.sroa.16.2.ph19952595, %bb.cj ]
  %.sroa.24.8 = phi ptr [ %i.nu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i505 ], [ %.sroa.24.2.ph2622, %bb.cj ] ; 2 uses
  %.sroa.16.10 = getelementptr inbounds nuw i8, ptr %.pn1067, i64 4 ; 2 uses
  %i.nv = load ptr, ptr %i.ee, align 8, !tbaa !246 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !246 ; 2 uses
  %.not10681535 = icmp eq ptr %i.nv, %i.nx
  br i1 %.not10681535, label %.loopexit1108, label %.lr.ph1540

.lr.ph1540:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit508, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518
  %.sroa.0888.01539 = phi ptr [ %i.pe, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518 ], [ %i.nv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit508 ] ; 3 uses
  %.sroa.25.31538 = phi ptr [ %.sroa.25.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518 ], [ %.sroa.25.2.ph2619, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit508 ] ; 6 uses
  %.sroa.13981.31537 = phi ptr [ %.sroa.13981.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518 ], [ %.sroa.13981.22574, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit508 ] ; 6 uses
  %.sroa.0975.31536 = phi ptr [ %.sroa.0975.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518 ], [ %.sroa.0975.2.ph2617, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit508 ] ; 9 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0888.01539, i64 12
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !248
  %i.oa = icmp eq i32 %i.nz, 2
  br i1 %i.oa, label %bb.cn, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518

bb.cn:                                            ; preds = %.lr.ph1540
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0888.01539, i64 8
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !249 ; 4 uses
  %i.od = tail call noundef i32 @llvm.abs.i32(i32 %i.oc, i1 true) ; 2 uses
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = load ptr, ptr %i.bn, align 8, !tbaa !163
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.oe
  %i.oh = load i32, ptr %i.og, align 1
  %i.oi = and i32 %i.oh, 117440512
  %i.oj = icmp eq i32 %i.oi, 16777216
  br i1 %i.oj, label %bb.co, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518

bb.co:                                            ; preds = %bb.cn
  %i.ok = tail call noundef i32 @llvm.fshl.i32(i32 %i.od, i32 %i.oc, i32 1)
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 8, !tbaa !244
  %.not339 = icmp eq i32 %i.on, 0
  br i1 %.not339, label %bb.cp, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518

.loopexit.split-lp1110.loopexit.split-lp:         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i510, %bb.cs
  %lpad.loopexit.split-lp2688 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit742

bb.cp:                                            ; preds = %bb.co
  %.not.i509 = icmp eq ptr %.sroa.13981.31537, %.sroa.25.31538
  br i1 %.not.i509, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i32 %i.oc, ptr %.sroa.13981.31537, align 4, !tbaa !162
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.13981.31537, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit518

bb.cr:                                            ; preds = %bb.cp
  %i.op = ptrtoint ptr %.sroa.25.31538 to i64
  %i.oq = ptrtoint ptr %.sroa.0975.31536 to i64
  %i.or = sub i64 %i.op, %i.oq                    ; 5 uses
  %i.os = icmp eq i64 %i.or, 9223372036854775804
  br i1 %i.os, label %bb.cs, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i510

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
          to label %.noexc516 unwind label %.loopexit.split-lp1110.loopexit.split-lp

.noexc516:                                        ; preds = %bb.cs
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i510: ; preds = %bb.cr
  %i.ot = ashr exact i64 %i.or, 2                 ; 3 uses
  %.sroa.speculated.i.i.i511 = tail call i64 @llvm.umax.i64(i64 %i.ot, i64 1)
  %i.ou = add nsw i64 %.sroa.speculated.i.i.i511, %i.ot ; 2 uses
  %i.ov = icmp ult i64 %i.ou, %i.ot
  %i.ow = tail call i64 @llvm.umin.i64(i64 %i.ou, i64 2305843009213693951)
  %i.ox = select i1 %i.ov, i64 2305843009213693951, i64 %i.ow ; 3 uses
  %.not.i.i.i512 = icmp ne i64 %i.ox, 0
  tail call void @llvm.assume(i1 %.not.i.i.i512)
  %i.oy = shl nuw nsw i64 %i.ox, 2
  %i.oz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oy) #12
          to label %.noexc517 unwind label %.loopexit.split-lp1110.loopexit.split-lp ; 4 uses

.noexc517:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i510
  %i.pa = getelementptr inbounds i8, ptr %i.oz, i64 %i.or ; 2 uses
  store i32 %i.oc, ptr %i.pa, align 4, !tbaa !162
  %i.pb = icmp sgt i64 %i.or, 0
  br i1 %i.pb, label %bb.ct, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i513

bb.ct:                                            ; preds = %.noexc517
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oz, ptr align 4 %.sroa.0975.31536, i64 %i.or, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i513

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i513: ; preds = %bb.ct, %.noexc517
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %.not.i17.i.i514 = icmp eq ptr %.sroa.0975.31536, null
end_hunk_1
begin_hunk_2_@_ZN7CaDiCaL8Internal15decompose_roundEv:bb.a
  %i.apc = icmp eq i64 %i.apb, 9223372036854775804
  br i1 %i.apc, label %.invoke2277, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i707

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i707: ; preds = %bb.id
  %i.apd = ashr exact i64 %i.apb, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i708 = tail call i64 @llvm.umax.i64(i64 %i.apd, i64 1)
  %i.ape = add nsw i64 %.sroa.speculated.i.i.i.i708, %i.apd ; 2 uses
  %i.apf = icmp ult i64 %i.ape, %i.apd
  %i.apg = tail call i64 @llvm.umin.i64(i64 %i.ape, i64 2305843009213693951)
  %i.aph = select i1 %i.apf, i64 2305843009213693951, i64 %i.apg ; 3 uses
  %.not.i.i.i.i709 = icmp ne i64 %i.aph, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i709)
  %i.api = shl nuw nsw i64 %i.aph, 2
  %i.apj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.api) #12
          to label %.noexc714 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc714:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i707
  %i.apk = getelementptr inbounds i8, ptr %i.apj, i64 %i.apb ; 2 uses
  store i32 %i.aox, ptr %i.apk, align 4, !tbaa !162
  %i.apl = icmp sgt i64 %i.apb, 0
  br i1 %i.apl, label %bb.ie, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i710

bb.ie:                                            ; preds = %.noexc714
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.apj, ptr align 4 %i.aou, i64 %i.apb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i710

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i710: ; preds = %bb.ie, %.noexc714
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apk, i64 4
  %.not.i17.i.i.i711 = icmp eq ptr %i.aou, null
  br i1 %.not.i17.i.i.i711, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i712, label %bb.if

bb.if:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i710
  tail call void @_ZdlPv(ptr noundef nonnull %i.aou) #13
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i712

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i712: ; preds = %bb.if, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i710
  store ptr %i.apj, ptr %i.alu, align 8, !tbaa !166
  store ptr %i.apm, ptr %i.alv, align 8, !tbaa !164
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.apj, i64 %i.aph
  store ptr %i.apn, ptr %i.alw, align 8, !tbaa !165
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit715

_ZNSt6vectorIiSaIiEE9push_backEOi.exit715:        ; preds = %bb.ic, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i712
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0873.1, i64 %i.amk
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !160
  %i.apq = load ptr, ptr %i.wf, align 8, !tbaa !255
  invoke void @_ZN7CaDiCaL5Proof13delete_clauseEmbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %i.apq, i64 noundef %i.app, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(24) %i.alu)
          to label %bb.ig unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ig:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit715
  %i.apr = load ptr, ptr %i.alu, align 8, !tbaa !166 ; 2 uses
  %i.aps = load ptr, ptr %i.alv, align 8, !tbaa !164
  %.not.i.i716 = icmp eq ptr %i.aps, %i.apr
  br i1 %.not.i.i716, label %_ZNSt6vectorIiSaIiEE5clearEv.exit718, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i717

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i717:     ; preds = %bb.ig
  store ptr %i.apr, ptr %i.alv, align 8, !tbaa !164
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit718

_ZNSt6vectorIiSaIiEE5clearEv.exit718:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i717, %bb.ig, %bb.hn, %bb.hm
  %i.apt = add i32 %.sroa.0790.01629, 1
  %.not1073 = icmp eq i32 %.sroa.0790.01629, %i.als
  br i1 %.not1073, label %.loopexit1079, label %bb.hm

.loopexit1079:                                    ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit718, %bb.hl, %.critedge14
  %i.apu = load i8, ptr %i.c, align 4, !tbaa !206, !range !154, !noundef !155
  %i.apv = trunc nuw i8 %i.apu to i1
  %i.apw = icmp eq ptr %.sroa.0842.0.lcssa, %.sroa.12.0.lcssa
  %or.cond1059 = select i1 %i.apv, i1 true, i1 %i.apw
  br i1 %or.cond1059, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit1079, %bb.ih
  %.sroa.0774.01633 = phi ptr [ %i.apy, %bb.ih ], [ %.sroa.0842.0.lcssa, %.loopexit1079 ] ; 2 uses
  %i.apx = load ptr, ptr %.sroa.0774.01633, align 8, !tbaa !167
  invoke void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef %i.apx)
          to label %bb.ih unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ih:                                            ; preds = %.preheader
  %i.apy = getelementptr inbounds nuw i8, ptr %.sroa.0774.01633, i64 8 ; 2 uses
  %.not1074 = icmp eq ptr %i.apy, %.sroa.12.0.lcssa
  br i1 %.not1074, label %.loopexit, label %.preheader

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i707, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i684, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i697, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i674, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit692, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit715
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i578, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i588, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i628, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i598, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i608, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i618, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i638, %bb.hd, %_ZN7CaDiCaL8Internal24likely_to_be_kept_clauseEPNS_6ClauseE.exit.thread, %bb.ha, %bb.gz, %bb.gx, %bb.gr, %bb.gq, %bb.gp, %_ZNSt6vectorImSaImEE9push_backERKm.exit656, %bb.gv, %bb.gu, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i648, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit.split-lp2656 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke2652, %.invoke2277
  %.sroa.0842.01203 = phi ptr [ %.sroa.0842.0.lcssa, %.invoke2277 ], [ %.sroa.0842.016092642, %.invoke2652 ]
  %lpad.loopexit.split-lp1088 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.ih, %.loopexit1079
  br i1 %.sroa.17.0.lcssa, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit723, label %bb.ii

bb.ii:                                            ; preds = %.loopexit
  %.not.i.i.i.i720 = icmp eq ptr %.sroa.0842.0.lcssa, null
  br i1 %.not.i.i.i.i720, label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit723, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0842.0.lcssa) #13
  br label %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit723

_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit723: ; preds = %bb.ij, %bb.ii, %.loopexit
  %.sroa.0842.5 = phi ptr [ %.sroa.0842.0.lcssa, %.loopexit ], [ null, %bb.ii ], [ null, %bb.ij ] ; 4 uses
  %i.apz = load i8, ptr %i.c, align 4, !tbaa !206, !range !154, !noundef !155
  %i.aqa = trunc nuw i8 %i.apz to i1
  br i1 %i.aqa, label %bb.io, label %bb.ik

bb.ik:                                            ; preds = %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit723
  %i.aqb = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.aqc = load i64, ptr %i.aqb, align 8, !tbaa !262
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.aqe = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !164
  %i.aqg = load ptr, ptr %i.aqd, align 8, !tbaa !166
  %i.aqh = ptrtoint ptr %i.aqf to i64
  %i.aqi = ptrtoint ptr %i.aqg to i64
  %i.aqj = sub i64 %i.aqh, %i.aqi
  %i.aqk = ashr exact i64 %i.aqj, 2
  %i.aql = icmp ult i64 %i.aqc, %i.aqk
  br i1 %i.aql, label %bb.il, label %bb.io

bb.il:                                            ; preds = %bb.ik
  %i.aqm = invoke noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
          to label %bb.im unwind label %bb.jd

bb.im:                                            ; preds = %bb.il
  br i1 %i.aqm, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  invoke void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
          to label %bb.io unwind label %bb.jd

bb.io:                                            ; preds = %bb.in, %bb.im, %bb.ik, %_ZN7CaDiCaL12erase_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit723
  %i.aqn = load ptr, ptr %i.bk, align 8, !tbaa !240, !nonnull !155, !align !241
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !162 ; 2 uses
  %.not10751634 = icmp eq i32 %i.aqo, 0
  br i1 %.not10751634, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit, label %.lr.ph1637

.lr.ph1637:                                       ; preds = %bb.io
  %i.aqp = getelementptr inbounds nuw i8, ptr %0, i64 760
  br label %bb.ip

bb.ip:                                            ; preds = %.lr.ph1637, %bb.iv
  %.sroa.0770.01635 = phi i32 [ 1, %.lr.ph1637 ], [ %i.arl, %bb.iv ] ; 6 uses
  %i.aqq = load i8, ptr %i.c, align 4, !tbaa !206, !range !154, !noundef !155
  %i.aqr = trunc nuw i8 %i.aqq to i1
  br i1 %i.aqr, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.aqs = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.0770.01635, i1 true) ; 2 uses
  %i.aqt = zext nneg i32 %i.aqs to i64
  %i.aqu = load ptr, ptr %i.aqp, align 8, !tbaa !163 ; 2 uses
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.aqt
  %i.aqw = load i32, ptr %i.aqv, align 1
  %i.aqx = and i32 %i.aqw, 117440512
  %i.aqy = icmp eq i32 %i.aqx, 16777216
  br i1 %i.aqy, label %bb.ir, label %bb.iv

bb.ir:                                            ; preds = %bb.iq
  %i.aqz = tail call noundef i32 @llvm.fshl.i32(i32 %i.aqs, i32 %.sroa.0770.01635, i32 1)
  %i.ara = zext i32 %i.aqz to i64
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ara
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !162 ; 2 uses
  %i.ard = icmp eq i32 %i.arc, %.sroa.0770.01635
  br i1 %i.ard, label %bb.iv, label %bb.it

bb.is:                                            ; preds = %bb.iu
  %i.are = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.it:                                            ; preds = %bb.ir
  %i.arf = tail call noundef i32 @llvm.abs.i32(i32 %i.arc, i1 true)
  %i.arg = zext nneg i32 %i.arf to i64
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %i.arg
  %i.ari = load i32, ptr %i.arh, align 1
  %i.arj = and i32 %i.ari, 117440512
  %i.ark = icmp eq i32 %i.arj, 33554432
  br i1 %i.ark, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  invoke void @_ZN7CaDiCaL8Internal16mark_substitutedEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %.sroa.0770.01635)
          to label %bb.iv unwind label %bb.is

bb.iv:                                            ; preds = %bb.iq, %bb.ir, %bb.iu, %bb.it
  %i.arl = add i32 %.sroa.0770.01635, 1
  %.not1075 = icmp eq i32 %.sroa.0770.01635, %i.aqo
  br i1 %.not1075, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit, label %bb.ip

_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit: ; preds = %bb.iv, %bb.ip, %bb.io
  tail call void @_ZdaPv(ptr noundef nonnull %i.ba) #13
  tail call void @_ZdaPv(ptr noundef nonnull %i.at) #13
  %.not.i724 = icmp eq ptr %3, %4
  br i1 %.not.i724, label %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i.i725

.lr.ph.i.i.i.i725:                                ; preds = %bb.iw, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i728
  %.05.i.i.i.i726 = phi ptr [ %i.arn, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i728 ], [ %4, %bb.iw ] ; 2 uses
  %i.arm = load ptr, ptr %.05.i.i.i.i726, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i.i.i.i.i727 = icmp eq ptr %i.arm, null
  br i1 %.not.i.i.i.i.i.i.i.i727, label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i728, label %bb.ix

bb.ix:                                            ; preds = %.lr.ph.i.i.i.i725
  tail call void @_ZdlPv(ptr noundef nonnull %i.arm) #13
  br label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i728

_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i728: ; preds = %bb.ix, %.lr.ph.i.i.i.i725
  %i.arn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i726, i64 24 ; 2 uses
  %.not.i.i.i.i729 = icmp eq ptr %i.arn, %3
  br i1 %.not.i.i.i.i729, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i730, label %.lr.ph.i.i.i.i725, !llvm.loop !204

_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i730: ; preds = %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i.i728
  %.not.i.i1.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i1.i.i, label %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit, label %bb.iy

bb.iy:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i730
  tail call void @_ZdlPv(ptr noundef nonnull %4) #13
  br label %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit

_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit: ; preds = %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit, %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i730, %bb.iy
  %5 = phi ptr [ %3, %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit ], [ null, %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i730 ], [ null, %bb.iy ] ; 4 uses
  %i.aro = phi ptr [ %4, %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEE4freeEv.exit ], [ null, %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i.i730 ], [ null, %bb.iy ] ; 6 uses
  invoke void @_ZN7CaDiCaL8Internal26flush_all_occs_and_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
          to label %bb.iz unwind label %bb.jd

bb.iz:                                            ; preds = %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit
  %i.arp = load i8, ptr %i.c, align 4, !tbaa !206, !range !154, !noundef !155
  %i.arq = trunc nuw i8 %i.arp to i1
  %i.arr = icmp sgt i32 %.0243.lcssa19531958, 0
  %spec.select1077 = select i1 %i.arr, i1 %.0213.lcssa, i1 false
  %i.ars = select i1 %i.arq, i1 true, i1 %spec.select1077 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 3660
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !263
  %.not405 = icmp eq i32 %i.aru, 0
  %i.arv = xor i1 %i.ars, true
  %i.arw = select i1 %.not405, i1 %i.arv, i1 false
  %i.arx = zext i1 %i.arw to i32
  invoke void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 100, i32 noundef %i.arx)
          to label %bb.ja unwind label %bb.jd

bb.ja:                                            ; preds = %bb.iz
  %i.ary = load i32, ptr %0, align 8, !tbaa !234
  %i.arz = and i32 %i.ary, -521                   ; 2 uses
  store i32 %i.arz, ptr %0, align 8, !tbaa !234
  %i.asa = load i8, ptr %i.z, align 8, !tbaa !233, !range !154, !noundef !155
  %i.asb = trunc nuw i8 %i.asa to i1
  br i1 %i.asb, label %bb.je, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.asc = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !235, !range !154, !noundef !155
  %i.ase = trunc nuw i8 %i.asd to i1
  br i1 %i.ase, label %bb.je, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.asf = or i32 %i.arz, 256
  store i32 %i.asf, ptr %0, align 8, !tbaa !234
  br label %bb.je

bb.jd:                                            ; preds = %bb.il, %bb.in, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit, %bb.iz
  %.sroa.0992.0 = phi ptr [ null, %bb.iz ], [ null, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit ], [ %i.at, %bb.in ], [ %i.at, %bb.il ]
  %.sroa.0989.0 = phi ptr [ null, %bb.iz ], [ null, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit ], [ %i.ba, %bb.in ], [ %i.ba, %bb.il ]
  %6 = phi ptr [ %5, %bb.iz ], [ %5, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit ], [ %3, %bb.in ], [ %3, %bb.il ]
  %7 = phi ptr [ %i.aro, %bb.iz ], [ %i.aro, %_ZN7CaDiCaL12erase_vectorISt6vectorIPNS_6ClauseESaIS3_EEEEvRS1_IT_SaIS6_EE.exit ], [ %4, %bb.in ], [ %4, %bb.il ]
  %i.asg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.je:                                            ; preds = %bb.jc, %bb.jb, %bb.ja
  %.not.i.i.i731 = icmp eq ptr %.sroa.0842.5, null
  br i1 %.not.i.i.i731, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit732, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0842.5) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit732

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit732: ; preds = %bb.je, %bb.jf
  %.not.i.i.i733 = icmp eq ptr %.sroa.0873.1, null
  br i1 %.not.i.i.i733, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.jg

bb.jg:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit732
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0873.1) #13
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit732, %bb.jg
  %.not.i.i.i734 = icmp eq ptr %.sroa.0960.14, null
  br i1 %.not.i.i.i734, label %_ZNSt6vectorIiSaIiEED2Ev.exit735, label %bb.jh

bb.jh:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0960.14) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit735

_ZNSt6vectorIiSaIiEED2Ev.exit735:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.jh
  %.not.i.i.i736 = icmp eq ptr %.sroa.0975.161959, null
  br i1 %.not.i.i.i736, label %_ZNSt6vectorIiSaIiEED2Ev.exit737, label %bb.ji

bb.ji:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit735
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0975.161959) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit737

_ZNSt6vectorIiSaIiEED2Ev.exit737:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit735, %bb.ji
  %.not4.i.i.i = icmp eq ptr %i.aro, %5
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit737, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.asi, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i ], [ %i.aro, %_ZNSt6vectorIiSaIiEED2Ev.exit737 ] ; 2 uses
  %i.ash = load ptr, ptr %.05.i.i.i, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ash, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i, label %bb.jj

bb.jj:                                            ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ash) #13
  br label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.jj, %.lr.ph.i.i.i
  %i.asi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i738 = icmp eq ptr %i.asi, %5
  br i1 %.not.i.i.i738, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !204

_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit737
  %.not.i.i1.i = icmp eq ptr %i.aro, null
  br i1 %.not.i.i1.i, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit, label %bb.jk

bb.jk:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aro) #13
  br label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit

_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.jk
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.is, %bb.jd
  %.sroa.0992.1 = phi ptr [ %.sroa.0992.0, %bb.jd ], [ %i.at, %bb.is ], [ %i.at, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.at, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.at, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0989.1 = phi ptr [ %.sroa.0989.0, %bb.jd ], [ %i.ba, %bb.is ], [ %i.ba, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ba, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %i.ba, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0842.3 = phi ptr [ %.sroa.0842.5, %bb.jd ], [ %.sroa.0842.5, %bb.is ], [ %.sroa.0842.0.lcssa, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0842.016092642, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %.sroa.0842.01203, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %8 = phi ptr [ %6, %bb.jd ], [ %3, %bb.is ], [ %3, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %3, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %3, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %9 = phi ptr [ %7, %bb.jd ], [ %4, %bb.is ], [ %4, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %4, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn407.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.asg, %bb.jd ], [ %i.are, %bb.is ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2656, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit.split-lp1088, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i739 = icmp eq ptr %.sroa.0842.3, null
  br i1 %.not.i.i.i739, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740, label %bb.jl

bb.jl:                                            ; preds = %.loopexit.split-lp
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0842.3) #13
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740: ; preds = %.loopexit.split-lp1091.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jl, %.loopexit.split-lp
  %.sroa.0992.2 = phi ptr [ %.sroa.0992.1, %.loopexit.split-lp ], [ %.sroa.0992.1, %bb.jl ], [ %i.at, %.loopexit.split-lp1091.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0989.2 = phi ptr [ %.sroa.0989.1, %.loopexit.split-lp ], [ %.sroa.0989.1, %bb.jl ], [ %i.ba, %.loopexit.split-lp1091.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %10 = phi ptr [ %8, %.loopexit.split-lp ], [ %8, %bb.jl ], [ %3, %.loopexit.split-lp1091.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %11 = phi ptr [ %9, %.loopexit.split-lp ], [ %9, %bb.jl ], [ %4, %.loopexit.split-lp1091.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn407.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn407.pn.pn.pn.pn.pn, %.loopexit.split-lp ], [ %.pn407.pn.pn.pn.pn.pn, %bb.jl ], [ %lpad.loopexit.split-lp2667, %.loopexit.split-lp1091.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i741 = icmp eq ptr %.sroa.0873.1, null
  br i1 %.not.i.i.i741, label %_ZNSt6vectorImSaImEED2Ev.exit742, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740
  %.pn407.pn.pn.pn.pn.pn.pn1050 = phi { ptr, i32 } [ %.pn407.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %lpad.loopexit.split-lp2670, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %12 = phi ptr [ %11, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %4, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %13 = phi ptr [ %10, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0989.21047 = phi ptr [ %.sroa.0989.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %i.ba, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0992.21046 = phi ptr [ %.sroa.0992.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %i.at, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0873.1) #13
  br label %_ZNSt6vectorImSaImEED2Ev.exit742

_ZNSt6vectorImSaImEED2Ev.exit742:                 ; preds = %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp1110.loopexit.split-lp, %.loopexit.split-lp1131.loopexit.split-lp, %bb.ch, %bb.bc, %bb.bd, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread
  %.sroa.0992.3 = phi ptr [ %.sroa.0992.21046, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp ], [ %i.at, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread ], [ %.sroa.0992.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %i.at, %.loopexit.split-lp1110.loopexit.split-lp ], [ %i.at, %bb.bd ], [ %i.at, %bb.bc ], [ %i.at, %.loopexit.split-lp1131.loopexit.split-lp ], [ %i.at, %bb.ch ], [ %i.at, %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0989.3 = phi ptr [ %.sroa.0989.21047, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp ], [ %i.ba, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread ], [ %.sroa.0989.2, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %i.ba, %.loopexit.split-lp1110.loopexit.split-lp ], [ %i.ba, %bb.bd ], [ %i.ba, %bb.bc ], [ %i.ba, %.loopexit.split-lp1131.loopexit.split-lp ], [ %i.ba, %bb.ch ], [ %i.ba, %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0975.13 = phi ptr [ %.sroa.0975.161959, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp ], [ %.sroa.0975.161959, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread ], [ %.sroa.0975.161959, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %.sroa.0975.31536, %.loopexit.split-lp1110.loopexit.split-lp ], [ %.sroa.0975.2.ph2617, %bb.bd ], [ %.sroa.0975.2.ph2617, %bb.bc ], [ %.sroa.0975.11544, %.loopexit.split-lp1131.loopexit.split-lp ], [ %.sroa.0975.2.ph2617, %bb.ch ], [ %.sroa.0975.2.ph2617, %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0960.12 = phi ptr [ %.sroa.0960.14, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp ], [ %.sroa.0960.14, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread ], [ %.sroa.0960.14, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %.sroa.0960.13, %.loopexit.split-lp1110.loopexit.split-lp ], [ %.sroa.0960.2.ph2620, %bb.bd ], [ %.sroa.0960.2.ph2620, %bb.bc ], [ %.sroa.0960.11547, %.loopexit.split-lp1131.loopexit.split-lp ], [ %.sroa.0960.2.ph2620, %bb.ch ], [ %.sroa.0960.2.ph2620, %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %14 = phi ptr [ %13, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp ], [ %3, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread ], [ %10, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %3, %.loopexit.split-lp1110.loopexit.split-lp ], [ %3, %bb.bd ], [ %3, %bb.bc ], [ %3, %.loopexit.split-lp1131.loopexit.split-lp ], [ %3, %bb.ch ], [ %3, %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %15 = phi ptr [ %12, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp ], [ %4, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread ], [ %11, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %4, %.loopexit.split-lp1110.loopexit.split-lp ], [ %4, %bb.bd ], [ %4, %bb.bc ], [ %4, %.loopexit.split-lp1131.loopexit.split-lp ], [ %4, %bb.ch ], [ %4, %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn407.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn407.pn.pn.pn.pn.pn.pn1050, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread1039.loopexit.split-lp ], [ %i.ql, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740.thread ], [ %.pn407.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit740 ], [ %lpad.loopexit.split-lp2688, %.loopexit.split-lp1110.loopexit.split-lp ], [ %.pn354.pn.pn, %bb.bd ], [ %.pn354.pn.pn, %bb.bc ], [ %lpad.loopexit.split-lp2701, %.loopexit.split-lp1131.loopexit.split-lp ], [ %i.ne, %bb.ch ], [ %lpad.loopexit.split-lp2697, %.loopexit.split-lp1098.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i743 = icmp eq ptr %.sroa.0960.12, null
  br i1 %.not.i.i.i743, label %_ZNSt6vectorIiSaIiEED2Ev.exit744, label %bb.jm

bb.jm:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit742.thread, %_ZNSt6vectorImSaImEED2Ev.exit742
  %.pn407.pn.pn.pn.pn.pn.pn.pn1986 = phi { ptr, i32 } [ %lpad.loopexit1122, %_ZNSt6vectorImSaImEED2Ev.exit742.thread ], [ %.pn407.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit742 ]
  %16 = phi ptr [ %4, %_ZNSt6vectorImSaImEED2Ev.exit742.thread ], [ %15, %_ZNSt6vectorImSaImEED2Ev.exit742 ]
  %17 = phi ptr [ %3, %_ZNSt6vectorImSaImEED2Ev.exit742.thread ], [ %14, %_ZNSt6vectorImSaImEED2Ev.exit742 ]
  %.sroa.0960.121985 = phi ptr [ %.sroa.0960.2.ph2620, %_ZNSt6vectorImSaImEED2Ev.exit742.thread ], [ %.sroa.0960.12, %_ZNSt6vectorImSaImEED2Ev.exit742 ]
  %.sroa.0975.131983 = phi ptr [ %.sroa.0975.2.ph2617, %_ZNSt6vectorImSaImEED2Ev.exit742.thread ], [ %.sroa.0975.13, %_ZNSt6vectorImSaImEED2Ev.exit742 ]
  %.sroa.0989.31981 = phi ptr [ %i.ba, %_ZNSt6vectorImSaImEED2Ev.exit742.thread ], [ %.sroa.0989.3, %_ZNSt6vectorImSaImEED2Ev.exit742 ]
  %.sroa.0992.31979 = phi ptr [ %i.at, %_ZNSt6vectorImSaImEED2Ev.exit742.thread ], [ %.sroa.0992.3, %_ZNSt6vectorImSaImEED2Ev.exit742 ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0960.121985) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit744

_ZNSt6vectorIiSaIiEED2Ev.exit744:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit742, %bb.jm
  %.pn407.pn.pn.pn.pn.pn.pn.pn1987 = phi { ptr, i32 } [ %.pn407.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit742 ], [ %.pn407.pn.pn.pn.pn.pn.pn.pn1986, %bb.jm ] ; 2 uses
  %18 = phi ptr [ %15, %_ZNSt6vectorImSaImEED2Ev.exit742 ], [ %16, %bb.jm ] ; 4 uses
  %19 = phi ptr [ %14, %_ZNSt6vectorImSaImEED2Ev.exit742 ], [ %17, %bb.jm ] ; 2 uses
  %.sroa.0975.131984 = phi ptr [ %.sroa.0975.13, %_ZNSt6vectorImSaImEED2Ev.exit742 ], [ %.sroa.0975.131983, %bb.jm ] ; 2 uses
  %.sroa.0989.31982 = phi ptr [ %.sroa.0989.3, %_ZNSt6vectorImSaImEED2Ev.exit742 ], [ %.sroa.0989.31981, %bb.jm ] ; 2 uses
  %.sroa.0992.31980 = phi ptr [ %.sroa.0992.3, %_ZNSt6vectorImSaImEED2Ev.exit742 ], [ %.sroa.0992.31979, %bb.jm ] ; 2 uses
  %.not.i.i.i745 = icmp eq ptr %.sroa.0975.131984, null
  br i1 %.not.i.i.i745, label %_ZNSt6vectorIiSaIiEED2Ev.exit746, label %bb.jn

bb.jn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit744
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0975.131984) #13
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit746

_ZNSt6vectorIiSaIiEED2Ev.exit746:                 ; preds = %bb.jn, %_ZNSt6vectorIiSaIiEED2Ev.exit744
  %.not4.i.i.i747 = icmp eq ptr %18, %19
  br i1 %.not4.i.i.i747, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i755, label %.lr.ph.i.i.i748

.lr.ph.i.i.i748:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit746, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i751
  %.05.i.i.i749 = phi ptr [ %i.ask, %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i751 ], [ %18, %_ZNSt6vectorIiSaIiEED2Ev.exit746 ] ; 2 uses
  %i.asj = load ptr, ptr %.05.i.i.i749, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i.i.i.i750 = icmp eq ptr %i.asj, null
  br i1 %.not.i.i.i.i.i.i.i750, label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i751, label %bb.jo

bb.jo:                                            ; preds = %.lr.ph.i.i.i748
  tail call void @_ZdlPv(ptr noundef nonnull %i.asj) #13
  br label %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i751

_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i751: ; preds = %bb.jo, %.lr.ph.i.i.i748
  %i.ask = getelementptr inbounds nuw i8, ptr %.05.i.i.i749, i64 24 ; 2 uses
  %.not.i.i.i752 = icmp eq ptr %i.ask, %19
  br i1 %.not.i.i.i752, label %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i755, label %.lr.ph.i.i.i748, !llvm.loop !204

_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i755: ; preds = %_ZSt8_DestroyISt6vectorIPN7CaDiCaL6ClauseESaIS3_EEEvPT_.exit.i.i.i751, %_ZNSt6vectorIiSaIiEED2Ev.exit746
  %.not.i.i1.i756 = icmp eq ptr %18, null
  br i1 %.not.i.i1.i756, label %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757, label %bb.jp

bb.jp:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i755
  tail call void @_ZdlPv(ptr noundef nonnull %18) #13
  br label %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757

_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757: ; preds = %_ZSt8_DestroyIPSt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_EvT_S7_RSaIT0_E.exit.i755, %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.asl = icmp eq ptr %.sroa.0989.31982, null
  br i1 %i.asl, label %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758, label %bb.jq

bb.jq:                                            ; preds = %bb.p, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757
  %.pn416105710621071 = phi { ptr, i32 } [ %i.bi, %bb.p ], [ %.pn407.pn.pn.pn.pn.pn.pn.pn1987, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757 ]
  %.sroa.0989.4105610631070 = phi ptr [ %i.ba, %bb.p ], [ %.sroa.0989.31982, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757 ]
  %.sroa.0992.4105510641068 = phi ptr [ %i.at, %bb.p ], [ %.sroa.0992.31980, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0989.4105610631070) #13
  br label %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758

_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758:     ; preds = %bb.jq, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757
  %.sroa.0992.5 = phi ptr [ %.sroa.0992.4105510641068, %bb.jq ], [ %.sroa.0992.31980, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757 ] ; 2 uses
  %.pn416.pn = phi { ptr, i32 } [ %.pn416105710621071, %bb.jq ], [ %.pn407.pn.pn.pn.pn.pn.pn.pn1987, %_ZNSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EED2Ev.exit757 ] ; 2 uses
  %i.asm = icmp eq ptr %.sroa.0992.5, null
  br i1 %i.asm, label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit759, label %bb.jr

bb.jr:                                            ; preds = %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758.thread, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758
  %.pn416.pn1054 = phi { ptr, i32 } [ %i.bh, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758.thread ], [ %.pn416.pn, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758 ]
  %.sroa.0992.51053 = phi ptr [ %i.at, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758.thread ], [ %.sroa.0992.5, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758 ]
  tail call void @_ZdaPv(ptr noundef nonnull %.sroa.0992.51053) #13
  br label %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit759

_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit759: ; preds = %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758, %bb.jr
  %.pn416.pn1055 = phi { ptr, i32 } [ %.pn416.pn, %_ZN7CaDiCaL16DeferDeleteArrayIiED2Ev.exit758 ], [ %.pn416.pn1054, %bb.jr ]
  resume { ptr, i32 } %.pn416.pn1055

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %.sink.split.i, %bb.c, %bb.b, %bb.a, %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.ars, %_ZN7CaDiCaL16DeferDeleteArrayINS_3DFSEED2Ev.exit ], [ false, %bb.c ], [ false, %.sink.split.i ]
  ret i1 %.0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN7CaDiCaL8Internal11assign_unitEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

declare void @_ZN7CaDiCaL5Proof18add_derived_clauseEmbRKSt6vectorIiSaIiEERKS1_ImSaImEE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof12weaken_minusEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8External37push_binary_clause_on_extension_stackEmii(ptr noundef nonnull align 8 dereferenceable(568), i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN7CaDiCaL8Internal13new_clause_asEPKNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal12mark_removedEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof13delete_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZN7CaDiCaL8Internal13shrink_clauseEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal10mark_addedEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(5704), ptr noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL5Proof13delete_clauseEmbRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal16mark_substitutedEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal26flush_all_occs_and_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704), i8 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal9decomposeEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3364 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !265
  %.not2 = icmp slt i32 %i.b, 1
  br i1 %.not2, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.03, 1
  %i.d = load i32, ptr %i.a, align 4, !tbaa !265
  %.not.not = icmp slt i32 %.03, %i.d
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !264

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.03 = phi i32 [ %i.c, %bb.b ], [ 1, %bb.a ]    ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal15decompose_roundEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  ret void
}

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
!66 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !65, i64 0}
!67 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !66, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !68, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorIlSaIlEE", !70, i64 0}
!72 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !11, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !74, i64 0}
end_hunk_2
