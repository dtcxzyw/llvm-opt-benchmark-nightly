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
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !1069
  %i.t = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 817) 136, i64 noundef range(i64 1, 9) 8) #31, !noalias !1069 ; 3 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
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
  %i.j = load i32, ptr %i.g, align 4, !alias.scope !1084, !noalias !1085, !noundef !8 ; 4 uses
  %i.k = xor i32 %i.j, 55296
  %i.l = add i32 %i.k, -1114112
  %i.m = icmp ult i32 %i.l, -1112064
  br i1 %i.m, label %.split.i.i.i, label %bb.g

.split.i.i.i:                                     ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1086
  store i32 %i.j, ptr %i.b, align 4, !noalias !1086
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @993) #28, !noalias !1086
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ult i32 %i.j, 1114112
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.f, -1
  br i1 %i.o, label %bb.h, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28, !noalias !1087
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
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
  %i.ab = load i32, ptr %i.y, align 4, !alias.scope !1088, !noalias !1089, !noundef !8 ; 4 uses
  %i.ac = xor i32 %i.ab, 55296
  %i.ad = add i32 %i.ac, -1114112
  %i.ae = icmp ult i32 %i.ad, -1112064
  br i1 %i.ae, label %.split.i.i.i23, label %bb.n

.split.i.i.i23:                                   ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1090
  store i32 %i.ab, ptr %i.a, align 4, !noalias !1090
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @993) #28, !noalias !1090
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.af = icmp ult i32 %i.ab, 1114112
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.x, -1
  br i1 %i.ag, label %bb.o, label %_RNCINvNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumeratecuINtNtNtBf_3ops12control_flow11ControlFlowTjcEENCINvNvB1e_4find5checkB2M_QNCNvNtCs8frGy5WneL6_4fish10parse_util20get_offset_from_line0E0E0B3o_.exit.i.i19

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28, !noalias !1091
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
  %i.g = load i32, ptr %0, align 4, !noalias !1102, !noundef !8 ; 4 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

.split.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1102
  store i32 %i.g, ptr %i.d, align 4, !noalias !1102
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @993) #28, !noalias !1102
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
  %i.o = load i32, ptr %.sroa.0.052117, align 4, !noalias !1103, !noundef !8 ; 6 uses
  %i.p = xor i32 %i.o, 55296
  %i.q = add i32 %i.p, -1114112
  %i.r = icmp ult i32 %i.q, -1112064
  br i1 %i.r, label %.split.i38, label %bb.c

.split.i38:                                       ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1103
  store i32 %i.o, ptr %i.c, align 4, !noalias !1103
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @993) #28, !noalias !1103
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.s = icmp ult i32 %i.o, 1114112
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %.sroa.014.0118, 1               ; 8 uses
  %i.u = icmp eq i64 %.sroa.014.0118, -1
  br i1 %i.u, label %bb.e, label %bb.d

._crit_edge:                                      ; preds = %bb.f
  %i.v = icmp sgt i32 %.sroa.05.1, 0
  br i1 %i.v, label %_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtNtB15_3num7nonzero7NonZerojENCNvXs_NvBX_10advance_byB3_NtB2F_13SpecAdvanceBy15spec_advance_by0INtNtB15_6option6OptionB21_EECs8frGy5WneL6_4fish.exit, label %bb.v, !prof !1104

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
  %i.ap = load i32, ptr %.sroa.0.5, align 4, !noalias !1105, !noundef !8 ; 3 uses
  %i.aq = xor i32 %i.ap, 55296
  %i.ar = add i32 %i.aq, -1114112
  %i.as = icmp ult i32 %i.ar, -1112064
  br i1 %i.as, label %.split.i.i, label %bb.t

.split.i.i:                                       ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_RNvNtNtCs8frGy5WneL6_4fish8builtins11commandline11commandline:bb.a
  %.sroa.6244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 380
  store i8 1, ptr %.sroa.6244.0..sroa_idx, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cx, i64 384
  store ptr @512, ptr %i.dq, align 8
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 392
  store i64 6, ptr %.sroa.4247.0..sroa_idx, align 8
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 400
  store i32 67, ptr %.sroa.5248.0..sroa_idx, align 8
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 404
  store i8 0, ptr %.sroa.6249.0..sroa_idx, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 408
  store ptr @513, ptr %i.dr, align 8
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 416
  store i64 15, ptr %.sroa.4252.0..sroa_idx, align 8
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 424
  store i32 66, ptr %.sroa.5253.0..sroa_idx, align 8
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 428
  store i8 0, ptr %.sroa.6254.0..sroa_idx, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 432
  store ptr @514, ptr %i.ds, align 8
  %.sroa.4257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 440
  store i64 13, ptr %.sroa.4257.0..sroa_idx, align 8
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 448
  store i32 69, ptr %.sroa.5258.0..sroa_idx, align 8
  %.sroa.6259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 452
  store i8 0, ptr %.sroa.6259.0..sroa_idx, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 456
  store ptr @515, ptr %i.dt, align 8
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 464
  store i64 4, ptr %.sroa.4262.0..sroa_idx, align 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 472
  store i32 76, ptr %.sroa.5263.0..sroa_idx, align 8
  %.sroa.6264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 476
  store i8 0, ptr %.sroa.6264.0..sroa_idx, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 480
  store ptr @516, ptr %i.du, align 8
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 488
  store i64 6, ptr %.sroa.4267.0..sroa_idx, align 8
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 496
  store i32 5, ptr %.sroa.5268.0..sroa_idx, align 8
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 500
  store i8 0, ptr %.sroa.6269.0..sroa_idx, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 504
  store ptr @517, ptr %i.dv, align 8
  %.sroa.4272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 512
  store i64 11, ptr %.sroa.4272.0..sroa_idx, align 8
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 520
  store i32 83, ptr %.sroa.5273.0..sroa_idx, align 8
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 524
  store i8 0, ptr %.sroa.6274.0..sroa_idx, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 528
  store ptr @518, ptr %i.dw, align 8
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 536
  store i64 11, ptr %.sroa.4277.0..sroa_idx, align 8
  %.sroa.5278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 544
  store i32 80, ptr %.sroa.5278.0..sroa_idx, align 8
  %.sroa.6279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 548
  store i8 0, ptr %.sroa.6279.0..sroa_idx, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 552
  store ptr @519, ptr %i.dx, align 8
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 560
  store i64 16, ptr %.sroa.4282.0..sroa_idx, align 8
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 568
  store i32 70, ptr %.sroa.5283.0..sroa_idx, align 8
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 572
  store i8 0, ptr %.sroa.6284.0..sroa_idx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cx, i64 576
  store ptr @520, ptr %i.dy, align 8
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 584
  store i64 12, ptr %.sroa.4287.0..sroa_idx, align 8
  %.sroa.5288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 592
  store i32 3, ptr %.sroa.5288.0..sroa_idx, align 8
  %.sroa.6289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 596
  store i8 0, ptr %.sroa.6289.0..sroa_idx, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 600
  store ptr @521, ptr %i.dz, align 8
  %.sroa.4292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 608
  store i64 8, ptr %.sroa.4292.0..sroa_idx, align 8
  %.sroa.5293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 616
  store i32 1, ptr %.sroa.5293.0..sroa_idx, align 8
  %.sroa.6294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 620
  store i8 0, ptr %.sroa.6294.0..sroa_idx, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 624
  store ptr @522, ptr %i.ea, align 8
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 632
  store i64 18, ptr %.sroa.4297.0..sroa_idx, align 8
  %.sroa.5298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 640
  store i32 4, ptr %.sroa.5298.0..sroa_idx, align 8
  %.sroa.6299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 644
  store i8 0, ptr %.sroa.6299.0..sroa_idx, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cx, i64 648
  store ptr @523, ptr %i.eb, align 8
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 656
  store i64 12, ptr %.sroa.4302.0..sroa_idx, align 8
  %.sroa.5303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 664
  store i32 7, ptr %.sroa.5303.0..sroa_idx, align 8
  %.sroa.6304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 668
  store i8 1, ptr %.sroa.6304.0..sroa_idx, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cx, i64 672
  store ptr @524, ptr %i.ec, align 8
  %.sroa.4307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 680
  store i64 13, ptr %.sroa.4307.0..sroa_idx, align 8
  %.sroa.5308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 688
  store i32 8, ptr %.sroa.5308.0..sroa_idx, align 8
  %.sroa.6309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 692
  store i8 1, ptr %.sroa.6309.0..sroa_idx, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cx, i64 696
  store ptr @525, ptr %i.ed, align 8
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 704
  store i64 17, ptr %.sroa.4312.0..sroa_idx, align 8
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 712
  store i32 9, ptr %.sroa.5313.0..sroa_idx, align 8
  %.sroa.6314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 716
  store i8 1, ptr %.sroa.6314.0..sroa_idx, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cx, i64 720
  store ptr @526, ptr %i.ee, align 8
  %.sroa.4317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 728
  store i64 18, ptr %.sroa.4317.0..sroa_idx, align 8
  %.sroa.5318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 736
  store i32 10, ptr %.sroa.5318.0..sroa_idx, align 8
  %.sroa.6319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 740
  store i8 1, ptr %.sroa.6319.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 8 uses
  store ptr %2, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 7 uses
  store i64 %3, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cw, i64 88 ; 6 uses
  store ptr null, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cw, i64 96 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store ptr @496, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store i64 21, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  store ptr %i.cx, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store i64 31, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  store i64 0, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cw, i64 104 ; 8 uses
  store i64 0, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  store i32 63, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.cw, i64 134
  store i8 1, ptr %i.er, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  %i.et = getelementptr inbounds nuw i8, ptr %i.cw, i64 132
  store i8 0, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cw, i64 133
  store i8 0, ptr %i.eu, align 1
  store i64 0, ptr %i.cw, align 8
  %.sroa.4503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4503.0..sroa_idx, align 8
  %.sroa.5504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i64 0, ptr %.sroa.5504.0..sroa_idx, align 8
  %.not664 = icmp eq i64 %3, 0
  br i1 %.not664, label %.invoke3307, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ev = load ptr, ptr %2, align 8, !nonnull !8, !align !23, !noundef !8 ; 21 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !noundef !8 ; 21 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.5572.0..sroa_idx573 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 9 uses
  %.sroa.6575.0..sroa_idx576 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 8 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.sroa.5516.0..sroa_idx517 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %.sroa.6519.0..sroa_idx520 = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 3 uses
  br label %bb.d

.body886:                                         ; preds = %.loopexit1277, %.loopexit.split-lp1278.loopexit.split-lp, %.loopexit.split-lp1278.loopexit, %bb.fg, %bb.fs, %bb.fq, %bb.ok, %bb.og, %bb.nq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit865, %bb.mg, %bb.lx, %bb.lt, %bb.lg, %bb.km, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit853, %bb.jy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit849, %bb.jg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit845, %bb.iy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit841, %bb.ir, %bb.ex, %.body817, %.body811, %.body805, %.body799, %.body, %bb.ap
  %.sroa.0495.0 = phi i8 [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit865 ], [ 1, %bb.ap ], [ 1, %.body ], [ 1, %.body799 ], [ 1, %.body805 ], [ 1, %.body811 ], [ 1, %.body817 ], [ 1, %bb.og ], [ 1, %bb.nq ], [ 1, %bb.mg ], [ 1, %bb.jy ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit849 ], [ 1, %bb.lt ], [ 1, %bb.lg ], [ 1, %bb.km ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit853 ], [ 1, %bb.jg ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit845 ], [ 1, %bb.iy ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit841 ], [ %.sroa.0495.4, %bb.ir ], [ %.sroa.0495.4, %bb.ex ], [ 1, %bb.lx ], [ 1, %bb.fg ], [ 1, %bb.ok ], [ 1, %bb.fq ], [ 1, %bb.fs ], [ 1, %.loopexit1277 ], [ 1, %.loopexit.split-lp1278.loopexit ], [ %.sroa.0495.1.ph.ph, %.loopexit.split-lp1278.loopexit.split-lp ] ; 2 uses
  %.sroa.0500.0 = phi i1 [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit865 ], [ true, %bb.ap ], [ true, %.body ], [ true, %.body799 ], [ true, %.body805 ], [ true, %.body811 ], [ true, %.body817 ], [ false, %bb.og ], [ true, %bb.nq ], [ true, %bb.mg ], [ true, %bb.jy ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit849 ], [ true, %bb.lt ], [ true, %bb.lg ], [ true, %bb.km ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit853 ], [ true, %bb.jg ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit845 ], [ true, %bb.iy ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit841 ], [ true, %bb.ir ], [ true, %bb.ex ], [ true, %bb.lx ], [ true, %bb.fg ], [ false, %bb.ok ], [ true, %bb.fq ], [ true, %bb.fs ], [ true, %.loopexit1277 ], [ true, %.loopexit.split-lp1278.loopexit ], [ %.sroa.0500.1.ph.ph, %.loopexit.split-lp1278.loopexit.split-lp ]
  %.pn727 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit865 ], [ %.pn723, %bb.ap ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body800, %.body799 ], [ %eh.lpad-body806, %.body805 ], [ %eh.lpad-body812, %.body811 ], [ %eh.lpad-body818, %.body817 ], [ %i.adn, %bb.og ], [ %.pn706, %bb.nq ], [ %.pn700, %bb.mg ], [ %i.wf, %bb.jy ], [ %.pn698, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit849 ], [ %.pn696, %bb.lt ], [ %.pn692, %bb.lg ], [ %i.xf, %bb.km ], [ %.pn688, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit853 ], [ %i.uw, %bb.jg ], [ %.pn686, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit845 ], [ %i.uk, %bb.iy ], [ %.pn684, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit841 ], [ %.pn681, %bb.ir ], [ %.pn681, %bb.ex ], [ %.pn668, %bb.lx ], [ %i.nv, %bb.fg ], [ %i.adq, %bb.ok ], [ %i.oj, %bb.fq ], [ %i.or, %bb.fs ], [ %lpad.loopexit1279, %.loopexit1277 ], [ %lpad.loopexit1341, %.loopexit.split-lp1278.loopexit ], [ %lpad.loopexit.split-lp1342, %.loopexit.split-lp1278.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.cw) #29
          to label %bb.ha unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit1277:                                    ; preds = %bb.ng, %bb.nk
  %lpad.loopexit1279 = landingpad { ptr, i32 }
          cleanup
  br label %.body886

.loopexit.split-lp1278.loopexit:                  ; preds = %bb.cm, %bb.cc, %bb.bs, %bb.bi, %bb.ay, %bb.d
  %lpad.loopexit1341 = landingpad { ptr, i32 }
          cleanup
  br label %.body886

.loopexit.split-lp1278.loopexit.split-lp:         ; preds = %.invoke3313, %.invoke3311, %.invoke3309, %.invoke3307, %.invoke3305, %.invoke3304, %.invoke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.nb, %bb.of, %bb.nu, %bb.ns, %bb.nd, %bb.nc, %bb.my, %bb.mw, %.noexc866, %bb.mp, %bb.mn, %bb.me, %bb.lv, %bb.lk, %bb.li, %bb.lb, %bb.kz, %bb.kw, %bb.kv, %bb.kq, %bb.ko, %.noexc854, %bb.kb, %bb.jz, %bb.jh, %bb.iz, %bb.is, %bb.gz, %bb.dz, %bb.du, %bb.dt, %bb.dp, %bb.dl, %bb.db, %bb.cz, %bb.aw, %bb.ah
  %.sroa.0495.1.ph.ph = phi i8 [ 1, %bb.mp ], [ 1, %bb.mw ], [ 1, %bb.ko ], [ 1, %bb.kb ], [ 1, %bb.aw ], [ 1, %.noexc854 ], [ 1, %bb.kv ], [ 1, %.invoke ], [ 1, %bb.du ], [ 1, %bb.jh ], [ 1, %bb.kq ], [ 1, %bb.dp ], [ 1, %.invoke3309 ], [ 1, %bb.dl ], [ 1, %.invoke3311 ], [ 1, %bb.ah ], [ %.sroa.0495.3, %bb.is ], [ 1, %bb.lv ], [ 1, %bb.mn ], [ %.sroa.0495.3, %bb.gz ], [ 1, %bb.cz ], [ 1, %bb.iz ], [ 1, %bb.jz ], [ 1, %bb.db ], [ 1, %.invoke3307 ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i ], [ 1, %bb.of ], [ 1, %bb.lb ], [ 1, %bb.nu ], [ 1, %bb.me ], [ 1, %bb.kz ], [ 1, %bb.li ], [ 1, %bb.nd ], [ 1, %.invoke3304 ], [ 1, %.invoke3313 ], [ 1, %.noexc866 ], [ 1, %bb.dz ], [ 1, %bb.kw ], [ 1, %bb.ns ], [ 1, %bb.dt ], [ 1, %bb.my ], [ 1, %.invoke3305 ], [ 1, %bb.lk ], [ 1, %bb.nc ], [ 1, %bb.nb ]
  %.sroa.0500.1.ph.ph = phi i1 [ true, %bb.mp ], [ true, %bb.mw ], [ true, %bb.ko ], [ true, %bb.kb ], [ true, %bb.aw ], [ true, %.noexc854 ], [ true, %bb.kv ], [ true, %.invoke ], [ true, %bb.du ], [ true, %bb.jh ], [ true, %bb.kq ], [ true, %bb.dp ], [ true, %.invoke3309 ], [ true, %bb.dl ], [ true, %.invoke3311 ], [ true, %bb.ah ], [ true, %bb.is ], [ true, %bb.lv ], [ true, %bb.mn ], [ true, %bb.gz ], [ true, %bb.cz ], [ true, %bb.iz ], [ true, %bb.jz ], [ true, %bb.db ], [ true, %.invoke3307 ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i ], [ false, %bb.of ], [ true, %bb.lb ], [ true, %bb.nu ], [ true, %bb.me ], [ true, %bb.kz ], [ true, %bb.li ], [ true, %bb.nd ], [ true, %.invoke3304 ], [ true, %.invoke3313 ], [ true, %.noexc866 ], [ true, %bb.dz ], [ true, %bb.kw ], [ true, %bb.ns ], [ true, %bb.dt ], [ true, %bb.my ], [ true, %.invoke3305 ], [ true, %bb.lk ], [ true, %bb.nc ], [ true, %bb.nb ]
  %lpad.loopexit.split-lp1342 = landingpad { ptr, i32 }
          cleanup
  br label %.body886

bb.c:                                             ; preds = %bb.of, %bb.kz, %bb.jt, %bb.jn, %bb.hu, %bb.gt, %bb.fp
  unreachable

bb.d:                                             ; preds = %.backedge3867, %bb.b
  %.sroa.0327.0 = phi i8 [ -1, %bb.b ], [ %.sroa.0327.0.be, %.backedge3867 ] ; 33 uses
  %.sroa.0169.0 = phi i1 [ false, %bb.b ], [ %.sroa.0169.0.be, %.backedge3867 ] ; 30 uses
  %.sroa.0167.0 = phi i1 [ false, %bb.b ], [ %.sroa.0167.0.be, %.backedge3867 ] ; 30 uses
  %.sroa.0165.0 = phi i1 [ false, %bb.b ], [ %.sroa.0165.0.be, %.backedge3867 ] ; 31 uses
  %.sroa.0162.0 = phi i1 [ false, %bb.b ], [ %.sroa.0162.0.be, %.backedge3867 ] ; 31 uses
  %.sroa.0161.0 = phi i1 [ false, %bb.b ], [ %.sroa.0161.0.be, %.backedge3867 ] ; 30 uses
  %.sroa.0160.0 = phi i1 [ false, %bb.b ], [ %.sroa.0160.0.be, %.backedge3867 ] ; 30 uses
  %.sroa.0153.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0153.0.be, %.backedge3867 ] ; 32 uses
  %.sroa.0151.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0151.0.be, %.backedge3867 ] ; 32 uses
  %.sroa.0147.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0147.0.be, %.backedge3867 ] ; 34 uses
  %.sroa.0143.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0143.0.be, %.backedge3867 ] ; 34 uses
  %.sroa.0139.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0139.0.be, %.backedge3867 ] ; 34 uses
  %.sroa.0133.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0133.0.be, %.backedge3867 ] ; 35 uses
  %.sroa.0130.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0130.0.be, %.backedge3867 ] ; 32 uses
  %.sroa.0127.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0127.0.be, %.backedge3867 ] ; 32 uses
  %.sroa.0120.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0120.0.be, %.backedge3867 ] ; 35 uses
  %.sroa.0119.0 = phi i1 [ false, %bb.b ], [ %.sroa.0119.0.be, %.backedge3867 ] ; 30 uses
  %.sroa.0118.0 = phi i1 [ false, %bb.b ], [ %.sroa.0118.0.be, %.backedge3867 ] ; 30 uses
  %.sroa.0114.0 = phi i8 [ -1, %bb.b ], [ %.sroa.0114.0.be, %.backedge3867 ] ; 29 uses
  %.sroa.0110.0 = phi i8 [ 0, %bb.b ], [ %.sroa.0110.0.be, %.backedge3867 ] ; 33 uses
  %.sroa.0104.0 = phi i8 [ -1, %bb.b ], [ %.sroa.0104.0.be, %.backedge3867 ] ; 30 uses
  %i.fi = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.cw)
          to label %bb.e unwind label %.loopexit.split-lp1278.loopexit ; 2 uses

bb.e:                                             ; preds = %bb.d
  switch i32 %i.fi, label %.invoke3313 [
    i32 -1, label %bb.f
    i32 97, label %.backedge3867
    i32 98, label %bb.g
    i32 105, label %bb.h
    i32 6, label %bb.i
    i32 114, label %bb.j
    i32 99, label %bb.k
    i32 116, label %bb.l
    i32 106, label %bb.m
    i32 112, label %bb.n
    i32 102, label %bb.o
    i32 120, label %bb.p
    i32 2, label %bb.p
    i32 111, label %bb.p
    i32 73, label %bb.q
    i32 67, label %bb.r
    i32 66, label %bb.s
    i32 69, label %bb.t
    i32 76, label %bb.u
    i32 5, label %bb.v
    i32 83, label %bb.w
    i32 115, label %bb.x
    i32 80, label %bb.y
    i32 70, label %bb.z
    i32 3, label %bb.aa
    i32 1, label %bb.ab
    i32 4, label %bb.ac
    i32 7, label %bb.ad
    i32 8, label %bb.ae
    i32 9, label %bb.af
    i32 10, label %bb.ag
    i32 104, label %bb.ah
    i32 58, label %bb.ai
    i32 59, label %bb.aj
    i32 63, label %bb.ak
  ], !prof !1799

bb.f:                                             ; preds = %bb.e
  %or.cond = or i1 %.sroa.0162.0, %.sroa.0167.0   ; 2 uses
  %or.cond3 = or i1 %or.cond, %.sroa.0165.0
  %or.cond5 = or i1 %or.cond3, %.sroa.0169.0
  br i1 %or.cond5, label %bb.oc, label %bb.de

bb.g:                                             ; preds = %bb.e
  br label %.backedge3867

bb.h:                                             ; preds = %bb.e
  br label %.backedge3867

bb.i:                                             ; preds = %bb.e
  br label %.backedge3867

bb.j:                                             ; preds = %bb.e
  br label %.backedge3867

bb.k:                                             ; preds = %bb.e
  br label %.backedge3867

bb.l:                                             ; preds = %bb.e
  br label %.backedge3867

bb.m:                                             ; preds = %bb.e
  br label %.backedge3867

bb.n:                                             ; preds = %bb.e
  br label %.backedge3867

bb.o:                                             ; preds = %bb.e
  br label %.backedge3867

bb.p:                                             ; preds = %bb.e, %bb.e, %bb.e
  %.not720 = icmp eq i8 %.sroa.0327.0, -1
  br i1 %.not720, label %bb.al, label %bb.am

bb.q:                                             ; preds = %bb.e
  %i.fj = load ptr, ptr %i.eh, align 8, !align !23, !noundef !8 ; 2 uses
  %i.fk = load i64, ptr %i.ei, align 8            ; 6 uses
  %.not718 = icmp eq ptr %i.fj, null
  br i1 %.not718, label %.invoke3311, label %bb.ay, !prof !9

bb.r:                                             ; preds = %bb.e
  br label %.backedge3867

bb.s:                                             ; preds = %bb.e
  br label %.backedge3867

bb.t:                                             ; preds = %bb.e
  br label %.backedge3867

bb.u:                                             ; preds = %bb.e
  br label %.backedge3867

bb.v:                                             ; preds = %bb.e
  br label %.backedge3867

bb.w:                                             ; preds = %bb.e
  br label %.backedge3867

bb.x:                                             ; preds = %bb.e
  br label %.backedge3867

bb.y:                                             ; preds = %bb.e
  br label %.backedge3867

bb.z:                                             ; preds = %bb.e
  br label %.backedge3867

bb.aa:                                            ; preds = %bb.e
  br label %.backedge3867

bb.ab:                                            ; preds = %bb.e
  br label %.backedge3867

bb.ac:                                            ; preds = %bb.e
  br label %.backedge3867

bb.ad:                                            ; preds = %bb.e
  %i.fl = load ptr, ptr %i.eh, align 8, !align !23, !noundef !8 ; 2 uses
  %i.fm = load i64, ptr %i.ei, align 8            ; 6 uses
  %.not716 = icmp eq ptr %i.fl, null
  br i1 %.not716, label %.invoke3311, label %bb.bi, !prof !9

bb.ae:                                            ; preds = %bb.e
  %i.fn = load ptr, ptr %i.eh, align 8, !align !23, !noundef !8 ; 2 uses
  %i.fo = load i64, ptr %i.ei, align 8            ; 6 uses
  %.not714 = icmp eq ptr %i.fn, null
  br i1 %.not714, label %.invoke3311, label %bb.bs, !prof !9

bb.af:                                            ; preds = %bb.e
  %i.fp = load ptr, ptr %i.eh, align 8, !align !23, !noundef !8 ; 2 uses
  %i.fq = load i64, ptr %i.ei, align 8            ; 6 uses
  %.not712 = icmp eq ptr %i.fp, null
  br i1 %.not712, label %.invoke3311, label %bb.cc, !prof !9

bb.ag:                                            ; preds = %bb.e
  %i.fr = load ptr, ptr %i.eh, align 8, !align !23, !noundef !8 ; 2 uses
  %i.fs = load i64, ptr %i.ei, align 8            ; 6 uses
  %.not710 = icmp eq ptr %i.fr, null
  br i1 %.not710, label %.invoke3311, label %bb.cm, !prof !9

bb.ah:                                            ; preds = %bb.e
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ev, i64 noundef %i.ex)
          to label %.loopexit1276 unwind label %.loopexit.split-lp1278.loopexit.split-lp

bb.ai:                                            ; preds = %bb.e
  %i.ft = load i64, ptr %i.ep, align 8, !noundef !8 ; 2 uses
  %i.fu = add i64 %i.ft, -1                       ; 3 uses
  %i.fv = icmp eq i64 %i.ft, 0
  br i1 %i.fv, label %.invoke3305, label %bb.cw

bb.aj:                                            ; preds = %bb.e
  %i.fw = load i64, ptr %i.ep, align 8, !noundef !8 ; 2 uses
  %i.fx = add i64 %i.fw, -1                       ; 3 uses
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.invoke3305, label %bb.cy

bb.ak:                                            ; preds = %bb.e
  %i.fz = load i64, ptr %i.ep, align 8, !noundef !8 ; 2 uses
  %i.ga = add i64 %i.fz, -1                       ; 3 uses
  %i.gb = icmp eq i64 %i.fz, 0
  br i1 %i.gb, label %.invoke3305, label %bb.da

bb.al:                                            ; preds = %bb.p
  switch i32 %i.fi, label %.invoke3313 [
    i32 120, label %.backedge3867
    i32 2, label %bb.an
end_hunk_1
