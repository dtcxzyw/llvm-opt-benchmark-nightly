Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.14?download=true
inline.NumInlined: 1814
inline.NumDeleted: 645
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtCs8frGy5WneL6_4fish10parse_tree12parse_source:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !8
  invoke void @_RNvNtCs8frGy5WneL6_4fish3ast5parse(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.e, i64 noundef %i.g, i48 %1, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.val = load i8, ptr %i.i, align 8, !range !11, !noundef !8
  %i.j = trunc nuw i8 %.val to i1
  %.not = xor i1 %i.j, true
  %i.k = trunc i48 %1 to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast7JobListEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) #29
          to label %bb.q unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast6ExtrasEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_.exit unwind label %bb.b

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.m, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.h ], [ %eh.lpad-body15, %bb.q ], [ %i.v, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish3ast3AstEBF_.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %.sroa.05.0 = phi ptr [ %i.t, %bb.o ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ]
  ret ptr %.sroa.05.0

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.s, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1042
  %i.t = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 817) 136, i64 noundef range(i64 1, 9) 8) #31, !noalias !1042 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.l, label %bb.o, !prof !35

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #34
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #29
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.t, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.p:                                             ; preds = %bb.q
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.q:                                             ; preds = %bb.e, %bb.b
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.m, %bb.e ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #29
          to label %common.resume unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util10get_offset(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.sroa.8.0.i = phi i64 [ 0, %bb.c ], [ %i.p, %bb.i ]
  %.sroa.0.013.i = phi ptr [ %0, %bb.c ], [ %i.i, %bb.i ]
  %.sroa.01.0.i = phi i32 [ 0, %bb.c ], [ %i.q, %bb.i ]
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i, %bb.d
  %i.f = phi i64 [ %i.p, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i ], [ %.sroa.8.0.i, %bb.d ] ; 2 uses
  %i.g = phi ptr [ %i.i, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i ], [ %.sroa.0.013.i, %bb.d ] ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.g, align 4, !alias.scope !1057, !noalias !1058, !noundef !8 ; 4 uses
  %i.k = xor i32 %i.j, 55296
  %i.l = add i32 %i.k, -1114112
  %i.m = icmp ult i32 %i.l, -1112064
  br i1 %i.m, label %.split.i.i.i, label %bb.g

.split.i.i.i:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1059
  store i32 %i.j, ptr %i.b, align 4, !noalias !1059
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @990) #28, !noalias !1059
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ult i32 %i.j, 1114112
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.f, -1
  br i1 %i.o, label %bb.h, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28, !noalias !1060
  unreachable

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i: ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.j, 10
  %i.p = add nuw i64 %i.f, 1                      ; 3 uses
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.i:                                             ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i
  %i.q = add nuw nsw i32 %.sroa.01.0.i, 1         ; 2 uses
  %i.r = icmp eq i32 %i.q, %2
  br i1 %i.r, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.i, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.p, %bb.i ] ; 5 uses
  %i.s = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %2, i32 1) ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1
  br i1 %i.t, label %bb.q, label %bb.j

_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit: ; preds = %bb.e, %bb.a, %bb.v
  %.sroa.3.0 = phi i64 [ %i.aq, %bb.v ], [ undef, %bb.a ], [ undef, %bb.e ]
  %.sroa.0.0 = phi i64 [ 1, %bb.v ], [ 0, %bb.a ], [ 0, %bb.e ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.v

bb.j:                                             ; preds = %.loopexit
  %i.w = extractvalue { i32, i1 } %i.s, 0         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %4 = icmp slt i32 %i.w, 0
  br i1 %4, label %_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit24, label %5

5:                                                ; preds = %bb.j
  %6 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %5
  %.sroa.8.0.i16 = phi i64 [ 0, %5 ], [ %i.ah, %bb.p ]
  %.sroa.0.013.i17 = phi ptr [ %0, %5 ], [ %i.aa, %bb.p ]
  %.sroa.01.0.i18 = phi i32 [ 0, %5 ], [ %i.ai, %bb.p ]
  br label %bb.l

bb.l:                                             ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i19, %bb.k
  %i.x = phi i64 [ %i.ah, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i19 ], [ %.sroa.8.0.i16, %bb.k ] ; 2 uses
  %i.y = phi ptr [ %i.aa, %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i19 ], [ %.sroa.0.013.i17, %bb.k ] ; 3 uses
  %i.z = icmp eq ptr %i.y, %6
  br i1 %i.z, label %_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit24, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.y, align 4, !alias.scope !1061, !noalias !1062, !noundef !8 ; 4 uses
  %i.ac = xor i32 %i.ab, 55296
  %i.ad = add i32 %i.ac, -1114112
  %i.ae = icmp ult i32 %i.ad, -1112064
  br i1 %i.ae, label %.split.i.i.i23, label %bb.n

.split.i.i.i23:                                   ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1063
  store i32 %i.ab, ptr %i.a, align 4, !noalias !1063
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @990) #28, !noalias !1063
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.af = icmp ult i32 %i.ab, 1114112
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.x, -1
  br i1 %i.ag, label %bb.o, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i19

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28, !noalias !1064
  unreachable

_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i19: ; preds = %bb.n
  %.not.i.i20 = icmp eq i32 %i.ab, 10
  %i.ah = add nuw i64 %i.x, 1                     ; 3 uses
  br i1 %.not.i.i20, label %bb.p, label %bb.l

bb.p:                                             ; preds = %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i19
  %i.ai = add nuw nsw i32 %.sroa.01.0.i18, 1      ; 2 uses
  %i.aj = icmp eq i32 %i.ai, %i.w
  br i1 %i.aj, label %_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit24, label %bb.k

_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit24: ; preds = %bb.p, %bb.l, %bb.j
  %.sroa.5.0.i21 = phi i64 [ undef, %bb.l ], [ undef, %bb.j ], [ %i.ah, %bb.p ]
  %.sroa.0.0.i22 = phi i1 [ false, %bb.l ], [ false, %bb.j ], [ true, %bb.p ]
  %i.ak = icmp eq i64 %1, -1
  br i1 %i.ak, label %bb.s, label %bb.r

bb.q:                                             ; preds = %.loopexit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #28
  unreachable

bb.r:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit24
  %i.al = add nuw i64 %1, 1
  %spec.select = select i1 %.sroa.0.0.i22, i64 %.sroa.5.0.i21, i64 %i.al ; 3 uses
  %i.am = icmp ult i64 %spec.select, %.sroa.5.0.i.ph
  br i1 %i.am, label %bb.u, label %bb.t

bb.s:                                             ; preds = %_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit24
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #28
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.an = icmp eq i64 %spec.select, %.sroa.5.0.i.ph
  br i1 %i.an, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #28
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ao = xor i64 %.sroa.5.0.i.ph, -1
  %i.ap = add i64 %spec.select, %i.ao
  %spec.select15 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.ap)
  %i.aq = add i64 %spec.select15, %.sroa.5.0.i.ph ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %.sroa.5.0.i.ph
  br i1 %i.ar, label %bb.x, label %_RNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line.exit

bb.w:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #28
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish10parse_util12slice_length(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  %.idx = shl nuw nsw i64 %1, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %0, align 4, !noalias !1075, !noundef !8 ; 4 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

.split.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1075
  store i32 %i.g, ptr %i.d, align 4, !noalias !1075
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @990) #28, !noalias !1075
  unreachable

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.b
  %i.k = icmp ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.k)
  %cond = icmp eq i32 %i.g, 91
  br i1 %cond, label %.preheader73, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit

.preheader73:                                     ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader73
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.sroa.01.0120 = phi i1 [ %.sroa.01.1, %bb.f ], [ false, %.lr.ph.preheader ] ; 2 uses
  %.sroa.05.0119 = phi i32 [ %.sroa.05.1, %bb.f ], [ 1, %.lr.ph.preheader ] ; 5 uses
  %.sroa.014.0118 = phi i64 [ %.sroa.014.1, %bb.f ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.0.052117 = phi ptr [ %.sroa.0.153, %bb.f ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.052117, i64 4 ; 6 uses
  %i.o = load i32, ptr %.sroa.0.052117, align 4, !noalias !1076, !noundef !8 ; 6 uses
  %i.p = xor i32 %i.o, 55296
  %i.q = add i32 %i.p, -1114112
  %i.r = icmp ult i32 %i.q, -1112064
  br i1 %i.r, label %.split.i38, label %bb.c

.split.i38:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1076
  store i32 %i.o, ptr %i.c, align 4, !noalias !1076
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @990) #28, !noalias !1076
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.s = icmp ult i32 %i.o, 1114112
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %.sroa.014.0118, 1               ; 8 uses
  %i.u = icmp eq i64 %.sroa.014.0118, -1
  br i1 %i.u, label %bb.e, label %bb.d

._crit_edge:                                      ; preds = %bb.f
  %i.v = icmp sgt i32 %.sroa.05.1, 0
  br i1 %i.v, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %bb.v, !prof !1077

bb.d:                                             ; preds = %bb.c
  br i1 %.sroa.01.0120, label %bb.f, label %.preheader70.preheader

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #28
  unreachable

.preheader70.preheader:                           ; preds = %bb.d
  switch i32 %i.o, label %bb.f [
    i32 39, label %.loopexit
    i32 34, label %.loopexit
    i32 91, label %bb.g
    i32 93, label %bb.j
  ]

bb.f:                                             ; preds = %.preheader70.preheader, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit45, %bb.h, %bb.k, %bb.d
  %.sroa.0.153 = phi ptr [ %i.n, %bb.d ], [ %i.bc, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit45 ], [ %i.n, %.preheader70.preheader ], [ %i.n, %bb.h ], [ %i.n, %bb.k ] ; 2 uses
  %.sroa.014.1 = phi i64 [ %i.t, %bb.d ], [ %i.ab, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit45 ], [ %i.t, %.preheader70.preheader ], [ %i.t, %bb.h ], [ %i.t, %bb.k ]
  %.sroa.05.1 = phi i32 [ %.sroa.05.0119, %bb.d ], [ %.sroa.05.0119, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit45 ], [ %.sroa.05.0119, %.preheader70.preheader ], [ %i.af, %bb.h ], [ %i.ai, %bb.k ] ; 2 uses
  %i.w = icmp eq i32 %i.o, 92
  %i.x = xor i1 %.sroa.01.0120, true
  %.sroa.01.1 = select i1 %i.w, i1 %i.x, i1 false
  %i.y = icmp eq ptr %.sroa.0.153, %i.e
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %.preheader70.preheader, %.preheader70.preheader
  %i.z = tail call { i64, i64 } @_RNvNtCs8frGy5WneL6_4fish9tokenizer9quote_end(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %i.t, i32 noundef %i.o) ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1       ; 4 uses
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %bb.o, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %.preheader70.preheader
  %i.ad = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.05.0119, i32 1) ; 2 uses
  %i.ae = extractvalue { i32, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = extractvalue { i32, i1 } %i.ad, 0
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #28
  unreachable

bb.j:                                             ; preds = %.preheader70.preheader
  %i.ag = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.05.0119, i32 -1) ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = extractvalue { i32, i1 } %i.ag, 0       ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.m, label %bb.f

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #28
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = add i64 %.sroa.014.0118, 2              ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.t
  br i1 %i.al, label %bb.n, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @241) #28
  unreachable

bb.o:                                             ; preds = %.loopexit
  %i.am = icmp ult i64 %i.ab, %i.t
  br i1 %i.am, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not32 = icmp eq i64 %i.ab, %i.t
  br i1 %.not32, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @242) #28
  unreachable

bb.r:                                             ; preds = %bb.p
  %reass.sub = sub i64 %i.ab, %.sroa.014.0118
  %i.an = add i64 %reass.sub, -2                  ; 2 uses
  %.not33 = icmp eq i64 %i.an, 0
  br i1 %.not33, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.r, %bb.t
  %.sroa.0.5 = phi ptr [ %i.at, %bb.t ], [ %i.n, %bb.r ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %bb.t ], [ %i.an, %bb.r ]
  %i.ao = icmp eq ptr %.sroa.0.5, %i.e
  br i1 %i.ao, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.ap = load i32, ptr %.sroa.0.5, align 4, !noalias !1078, !noundef !8 ; 3 uses
  %i.aq = xor i32 %i.ap, 55296
  %i.ar = add i32 %i.aq, -1114112
  %i.as = icmp ult i32 %i.ar, -1112064
  br i1 %i.as, label %.split.i.i, label %bb.t

.split.i.i:                                       ; preds = %bb.s
end_hunk_0
