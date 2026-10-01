Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_:bb.a
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit133

_ZNSt6vectorIhSaIhEED2Ev.exit133:                 ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.bg

.critedge105:                                     ; preds = %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.be

bb.be:                                            ; preds = %.critedge105, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.5 = phi i32 [ 1, %.critedge105 ], [ %.4, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  %i.ia = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i134 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i134, label %_ZNSt6vectorIhSaIhEED2Ev.exit135, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !34
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit135

_ZNSt6vectorIhSaIhEED2Ev.exit135:                 ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bi

bb.bg:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit133, %bb.aa
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.aa ], [ %.pn91.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit133 ]
  %i.ig = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i136 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i136, label %_ZNSt6vectorIhSaIhEED2Ev.exit137, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !34
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.il) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit137

_ZNSt6vectorIhSaIhEED2Ev.exit137:                 ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bj

bb.bi:                                            ; preds = %bb.b, %_ZNSt6vectorIhSaIhEED2Ev.exit135
  %.6 = phi i32 [ %.5, %_ZNSt6vectorIhSaIhEED2Ev.exit135 ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.6

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit137, %bb.c
  %.pn100.pn.pn = phi { ptr, i32 } [ %.pn100.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit137 ], [ %i.n, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn100.pn.pn
}

declare noundef ptr @_Z24lodepng_chunk_data_constPKh(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN7lodepng10decompressERSt6vectorIhSaIhEEPKhmRK25LodePNGDecompressSettings(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.e, %.lr.ph.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !38
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

declare noundef i64 @_Z20lodepng_get_raw_sizejjPK16LodePNGColorMode(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.13", align 8    ; 13 uses
  %3 = alloca %"class.lodepng::State", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.c = invoke noundef i32 @_ZN7lodepng24getFilterTypesInterlacedERSt6vectorIS0_IhSaIhEESaIS2_EERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 0
  %.pre34.a = load ptr, ptr %2, align 8, !tbaa !40 ; 6 uses
  br i1 %.not, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %.pre34.a to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp eq i64 %i.i, 24
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = load <2 x ptr>, ptr %.pre34.a, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %.pre34.a, i64 16 ; 2 uses
  %i.o = load <2 x ptr>, ptr %0, align 8, !tbaa !14
  store <2 x ptr> %i.m, ptr %0, align 8, !tbaa !14
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !34
  store ptr %i.p, ptr %i.k, align 8, !tbaa !34
  store <2 x ptr> %i.o, ptr %.pre34.a, align 8, !tbaa !14
  store ptr %i.l, ptr %i.n, align 8, !tbaa !34
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN7lodepng5StateC1Ev(ptr noundef nonnull align 8 dereferenceable(640) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.q = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = icmp eq ptr %i.q, %i.s
  %spec.select = select i1 %i.t, ptr null, ptr %i.q
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef i32 @_Z15lodepng_inspectPjS_P12LodePNGStatePKhm(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef %spec.select, i64 noundef %i.w)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.a, align 4, !tbaa !15
  %i.z = icmp ugt i32 %i.y, 1                     ; 2 uses
  %..sroa.sel = select i1 %i.z, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.column1, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.column0
  %.sroa.sel = select i1 %i.z, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.shift1, ptr @__const._ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_.shift0
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !15
  %.not32 = icmp eq i32 %i.aa, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.pre.a = load ptr, ptr %i.ac, align 8, !tbaa !34
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.pre33.a = load ptr, ptr %2, align 8, !tbaa !40
  br label %bb.s

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %4 = phi ptr [ %.pre.a, %.lr.ph ], [ %5, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 2 uses
  %i.af = phi ptr [ %.pre, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 2 uses
  %.031 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit ] ; 3 uses
  %i.ag = and i64 %.031, 7                        ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %..sroa.sel, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load ptr, ptr %2, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel, i64 %i.ag
  %i.an = load i32, ptr %i.am, align 4, !tbaa !15
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = lshr i64 %.031, %i.ao
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap ; 2 uses
  %.not.i = icmp eq ptr %i.af, %4
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !21
  store i8 %i.as, ptr %i.af, align 1, !tbaa !21
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.au, ptr %i.ab, align 8, !tbaa !35
  %.pre33 = load ptr, ptr %i.ac, align 8, !tbaa !34
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

bb.m:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %0, align 8, !tbaa !33    ; 4 uses
  %i.aw = ptrtoint ptr %4 to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax                    ; 7 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775807
  br i1 %i.az, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.ba = add i64 %.sroa.speculated.i.i.i, %i.ay  ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #31
          to label %.noexc29 unwind label %.loopexit ; 4 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ay ; 2 uses
  %i.bg = load i8, ptr %i.ar, align 1, !tbaa !21
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !21
  %i.bh = icmp sgt i64 %i.ay, 0
  br i1 %i.bh, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.o:                                             ; preds = %.noexc29
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.o, %.noexc29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bl) #29
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %0, align 8, !tbaa !33
  store ptr %i.bi, ptr %i.ab, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd ; 2 uses
  store ptr %i.bm, ptr %i.ac, align 8, !tbaa !34
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.l
  %5 = phi ptr [ %i.bm, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.pre33, %bb.l ]
  %i.bn = phi ptr [ %i.bi, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.au, %bb.l ]
  %i.bo = add nuw nsw i64 %.031, 1                ; 2 uses
  %i.bp = load i32, ptr %i.b, align 4, !tbaa !15
  %i.bq = zext i32 %i.bp to i64
  %i.br = icmp samesign ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.k, label %._crit_edge, !llvm.loop !107

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN7lodepng5StateD1Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %3) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.q ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.v

bb.s:                                             ; preds = %bb.e, %._crit_edge, %bb.b
  %i.bs = phi ptr [ %.pre34.a, %bb.b ], [ %.pre33.a, %._crit_edge ], [ %.pre34.a, %bb.e ] ; 3 uses
  %.024 = phi i32 [ 1, %bb.b ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.bs, %bb.s ] ; 3 uses
  %i.bv = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !34
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.t, %.lr.ph.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.cb, %i.bu
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.s
  %i.cc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bs, %bb.s ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !39
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #29
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.024

bb.v:                                             ; preds = %bb.r, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.d, %bb.c ]
  call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !40     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !40
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 256) i32 @_ZN7lodepng15getPaletteValueEPKhmi(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.c, label %bb.f [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = zext i8 %i.e to i32
  br label %bb.f

bb.c:                                             ; preds = %.split
  %i.g = lshr i64 %1, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %i.j = zext i8 %i.i to i32
  %.tr16 = trunc i64 %1 to i32
  %i.k = shl i32 %.tr16, 2
  %i.l = and i32 %i.k, 4
  %i.m = lshr i32 %i.j, %i.l
  %i.n = and i32 %i.m, 15
  br label %bb.f

bb.d:                                             ; preds = %.split
  %i.o = lshr i64 %1, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !21
  %i.r = zext i8 %i.q to i32
  %.tr = trunc i64 %1 to i32
  %i.s = shl i32 %.tr, 1
  %i.t = and i32 %i.s, 6
  %i.u = lshr i32 %i.r, %i.t
  %i.v = and i32 %i.u, 3
  br label %bb.f

bb.e:                                             ; preds = %.split
  %i.w = lshr i64 %1, 3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  %i.z = zext i8 %i.y to i32
  %i.aa = trunc i64 %1 to i32
  %i.ab = and i32 %i.aa, 7
  %i.ac = lshr i32 %i.z, %i.ab
  %i.ad = and i32 %i.ac, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.split, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.n, %bb.c ], [ %i.v, %bb.d ], [ %i.ad, %bb.e ], [ 0, %.split ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
end_hunk_0
