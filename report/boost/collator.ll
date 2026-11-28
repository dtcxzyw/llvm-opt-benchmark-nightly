Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/collator?download=true
inline.NumInlined: 569
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK5boost6locale8impl_icu12collate_implIwE12do_transformB5cxx11ENS0_13collate_levelEPKwS6_:bb.a
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !24
  %i.bc = zext i8 %i.bb to i32
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !105
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 6
  %i.be = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 24
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !24
  %i.bg = zext i8 %i.bf to i32
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 7
  %i.bi = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 28
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bk = zext i8 %i.bj to i32
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !105
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !200

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %._crit_edge.i.i
  store i64 %i.m, ptr %i.f, align 8, !tbaa !205
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.m
  store i32 0, ptr %i.bn, align 4, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.bo = load ptr, ptr %5, align 8, !tbaa !101   ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !102
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.c:                                             ; preds = %.noexc.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %5, align 8, !tbaa !101   ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit8

_ZNSt6vectorIhSaIhEED2Ev.exit8:                   ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.bu
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK5boost6locale8impl_icu12collate_implIwE7do_hashENS0_13collate_levelEPKwS6_(ptr noundef nonnull align 8 dereferenceable(281) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNK5boost6locale8impl_icu12collate_implIwE18do_basic_transformENS0_13collate_levelEPKwS6_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(281) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1, !tbaa !24
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %i.a, align 8, !tbaa !103
  %.pre = load ptr, ptr %4, align 8, !tbaa !101
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !101    ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 7 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775807
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #24
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.l = add i64 %.sroa.speculated.i.i.i.i, %i.j  ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.j
  %i.n = call i64 @llvm.umin.i64(i64 %i.l, i64 9223372036854775807)
  %i.o = select i1 %i.m, i64 9223372036854775807, i64 %i.n ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.o, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
          to label %.noexc7 unwind label %bb.g    ; 5 uses

.noexc7:                                          ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j ; 2 uses
  store i8 0, ptr %i.q, align 1, !tbaa !24
  %i.r = icmp sgt i64 %i.j, 0
  br i1 %i.r, label %bb.e, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc7
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc7
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.v) #26
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %i.p, ptr %4, align 8, !tbaa !101
  store ptr %i.s, ptr %i.a, align 8, !tbaa !103
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.w, ptr %i.c, align 8, !tbaa !102
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.b
  %i.x = phi ptr [ %i.p, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.pre, %bb.b ] ; 4 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24    ; 2 uses
  %.not5.i.i = icmp eq i8 %i.y, 0
  br i1 %.not5.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %.lr.ph.i.i
  %i.z = phi i8 [ %i.ai, %.lr.ph.i.i ], [ %i.y, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.07.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %i.x, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.036.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ 0, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 1 ; 2 uses
  %i.ab = shl i32 %.036.i.i, 4
  %i.ac = zext i8 %i.z to i32
  %i.ad = add i32 %i.ab, %i.ac                    ; 2 uses
  %i.ae = lshr i32 %i.ad, 24
  %i.af = and i32 %i.ae, 240
  %i.ag = and i32 %i.ad, 268435455
  %i.ah = xor i32 %i.af, %i.ag                    ; 2 uses
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !24  ; 2 uses
  %.not.i.i8 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i8, label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit:           ; preds = %.lr.ph.i.i
  %i.aj = zext nneg i32 %i.ah to i64
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %.03.lcssa.i.i = phi i64 [ 0, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %i.aj, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit ]
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.x to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.an) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i64 %.03.lcssa.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = load ptr, ptr %4, align 8, !tbaa !101   ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIhSaIhEED2Ev.exit10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit10

_ZNSt6vectorIhSaIhEED2Ev.exit10:                  ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.ao
}

; Function Attrs: nounwind
declare void @_ZNSt6locale5facetD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale8impl_icu12collate_implIwE18do_ustring_compareENS0_13collate_levelEPKwS6_S6_S6_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(281) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_74::UnicodeString", align 8 ; 9 uses
  %8 = alloca %"class.icu_74::UnicodeString", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 2
  %i.e = trunc i64 %i.d to i32
  call void @_ZN6icu_7413UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.e, i32 noundef 0, i32 noundef 0)
  %.not8.i = icmp eq ptr %2, %3
  br i1 %.not8.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.09.i = phi ptr [ %i.h, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %.09.i, align 4, !tbaa !105, !noalias !213
  %i.g = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7413UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %i.f)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.09.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %3
  br i1 %.not.i, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit, label %.lr.ph.i, !llvm.loop !7

common.resume:                                    ; preds = %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  br label %common.resume

_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.j = ptrtoint ptr %5 to i64
  %i.k = ptrtoint ptr %4 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32
  invoke void @_ZN6icu_7413UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %i.n, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %.not8.i10 = icmp eq ptr %4, %5
  br i1 %.not8.i10, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit14, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.noexc, %bb.d
  %.09.i12 = phi ptr [ %i.q, %bb.d ], [ %4, %.noexc ] ; 2 uses
  %i.o = load i32, ptr %.09.i12, align 4, !tbaa !105, !noalias !214
  %i.p = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7413UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %i.o)
          to label %bb.d unwind label %9          ; 0 uses

bb.d:                                             ; preds = %.lr.ph.i11
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i12, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.q, %5
  br i1 %.not.i13, label %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit14, label %.lr.ph.i11, !llvm.loop !7

9:                                                ; preds = %.lr.ph.i11
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  br label %.body

_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit14: ; preds = %bb.d, %.noexc
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5boost6locale8impl_icu12collate_implIwE12get_collatorENS0_13collate_levelE(ptr noundef nonnull align 8 dereferenceable(281) %0, i32 noundef %1)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit14
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = invoke noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret i32 %i.v

bb.g:                                             ; preds = %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.e, %_ZNK5boost6locale8impl_icu17icu_std_converterIwLi4EE3icuEPKwS5_.exit14
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #22
  br label %.body

.body:                                            ; preds = %bb.g, %9, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.w, %bb.g ], [ %10, %9 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN6icu_7413UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5boost6locale8impl_icu12collate_implIwE12get_collatorENS0_13collate_levelE(ptr noundef nonnull align 8 dereferenceable(281) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.b = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %.0.i = tail call noundef i32 @llvm.umin.i32(i32 %i.b, i32 4)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = zext nneg i32 %.0.i to i64               ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = tail call noundef ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = call noundef ptr @_ZN6icu_748Collator14createInstanceERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(217) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 9 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !45
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.a, align 4, !tbaa !45
  %i.m = invoke ptr @u_errorName_74(i32 noundef %i.l)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.m)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
          to label %bb.p unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread: ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.s = load i64, ptr %i.q, align 8, !tbaa !24
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load i64, ptr %i.v, align 8, !tbaa !24
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.ae) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.i, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.i, label %bb.n

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread
  %.pn.pn35.ph = phi { ptr, i32 } [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.thread ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn.pn35 = phi { ptr, i32 } [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %.pn.pn35.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.k) #22
  br label %bb.n

bb.j:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @__const._ZNK5boost6locale8impl_icu12collate_implIwE12get_collatorENS0_13collate_levelE.levels, i64 %i.d
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !83
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.ag)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ak = invoke noundef ptr @_ZN5boost6detail12get_tss_dataEPKv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  %.not.i = icmp eq ptr %i.ak, %i.h
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6icu_748CollatorESt14default_deleteIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !85
  invoke void @_ZN5boost6detail12set_tss_dataEPKvPFvPFvPvES3_ES5_S3_b(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @_ZN5boost19thread_specific_ptrIN6icu_748CollatorEE14cleanup_callerEPFvPvES4_, ptr noundef %i.al, ptr noundef nonnull %i.h, i1 noundef zeroext true)
          to label %_ZNSt10unique_ptrIN6icu_748CollatorESt14default_deleteIS1_EED2Ev.exit unwind label %bb.m

_ZNSt10unique_ptrIN6icu_748CollatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.0.0 = phi ptr [ null, %bb.l ], [ null, %bb.k ], [ %i.h, %bb.j ]
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.i, %bb.m
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.m ], [ %i.h, %bb.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ] ; 3 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.m ], [ %.pn.pn35, %bb.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  %.not.i27 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i27, label %_ZNSt10unique_ptrIN6icu_748CollatorESt14default_deleteIS1_EED2Ev.exit29, label %_ZNKSt14default_deleteIN6icu_748CollatorEEclEPS1_.exit.i28

_ZNKSt14default_deleteIN6icu_748CollatorEEclEPS1_.exit.i28: ; preds = %bb.n
  %i.an = load ptr, ptr %.sroa.0.1, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.1) #22, !inline_history !5
  br label %_ZNSt10unique_ptrIN6icu_748CollatorESt14default_deleteIS1_EED2Ev.exit29

_ZNSt10unique_ptrIN6icu_748CollatorESt14default_deleteIS1_EED2Ev.exit29: ; preds = %bb.n, %_ZNKSt14default_deleteIN6icu_748CollatorEEclEPS1_.exit.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn.pn.pn

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN6icu_748CollatorESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %.016 = phi ptr [ %i.f, %bb.a ], [ %i.h, %_ZNSt10unique_ptrIN6icu_748CollatorESt14default_deleteIS1_EED2Ev.exit ]
  ret ptr %.016

bb.p:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN6icu_7413UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7413UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK5boost6locale8impl_icu12collate_implIwE18do_basic_transformENS0_13collate_levelEPKwS6_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(281) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_74::UnicodeString", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = ptrtoint ptr %4 to i64
  %i.b = ptrtoint ptr %3 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 2
  %i.e = trunc i64 %i.d to i32
  call void @_ZN6icu_7413UnicodeStringC1Eiii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %i.e, i32 noundef 0, i32 noundef 0)
  %.not8.i = icmp eq ptr %3, %4
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.09.i = phi ptr [ %i.h, %bb.b ], [ %3, %bb.a ] ; 2 uses
end_hunk_0
