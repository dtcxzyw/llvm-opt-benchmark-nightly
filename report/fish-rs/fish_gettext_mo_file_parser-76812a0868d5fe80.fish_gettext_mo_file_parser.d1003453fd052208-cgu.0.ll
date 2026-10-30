Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_gettext_mo_file_parser-76812a0868d5fe80.fish_gettext_mo_file_parser.d1003453fd052208-cgu.0?download=true
inline.NumInlined: 229
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultFG_RL0_ShEmNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshWvooqPLMQS_27fish_gettext_mo_file_parser:bb.a
; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecRShENtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define ptr @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtNtB7_2io5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree readnone returned captures(ret: address, provenance) %0) unnamed_addr #13 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapRShB1F_ENtNtNtB7_2io5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1N_EE13from_residualCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write10write_charCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i32 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 12 uses
  store i32 0, ptr %i.b, align 4
  %i.c = icmp ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc i32 %i.p to i8
  %i.r = or i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = call ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %i.ac, ptr nonnull %i.b, i64 %.sroa.0.05.i) ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 3
  switch i64 %i.ai, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i
    i64 1, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp uge ptr %i.af, inttoptr (i64 188978561024 to ptr)
  %i.ak = and i64 %i.ah, 1095216660480
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.ak, 1095216660480
  %.not.i.i.i.i.i.i = or i1 %i.aj, %.not3.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i

bb.k:                                             ; preds = %bb.j
  call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.af, i64 -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8
  store i8 3, ptr %i.a, align 8
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i unwind label %bb.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i: ; preds = %bb.l, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8
  resume { ptr, i32 } %i.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_rawCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit.i
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtBb_3fmt5Write9write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr %1, ptr %2) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtB4_12SpecWriteFmt14spec_write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit:
  %i.a = tail call zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr align 8 %0, ptr nonnull align 8 @4, ptr %1, ptr %2), !inline_history !47
  ret i1 %i.a
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher11write_usizeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr nonnull readonly %i.a, i64 8) #35
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvYNtNtNtCsaL1QbXo9JQH_3std4hash6random13DefaultHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher19write_length_prefixCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nofree align 8 captures(none) %0, i64 %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8
  call void @_RNvXs3_NtNtCs3oUPovFnLWP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr align 8 %0, ptr nonnull readonly %i.a, i64 8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0.036 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.115, %bb.n ] ; 3 uses
  %.sroa.6.035 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.113, %bb.n ] ; 6 uses
  %i.f = call { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr %0, ptr %.sroa.0.036, i64 %.sroa.6.035) ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 12 uses
  store i64 %i.g, ptr %i.b, align 8
  store ptr %i.h, ptr %i.d, align 8
  %i.i = trunc nuw i64 %i.g to i1
  %i.j = ptrtoint ptr %i.h to i64                 ; 8 uses
  br i1 %i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %bb.f
    i64 3, label %bb.d
    i64 0, label %.split22
    i64 1, label %.split
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.j, 32
  %i.m = icmp uge ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.l to i8   ; 2 uses
  %.not3.i.i = icmp eq i8 %switch.idx.cast.i.i.i, -1
  %.not.i.i = or i1 %i.m, %.not3.i.i
  br i1 %.not.i.i, label %bb.e, label %.split21

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = invoke align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.f
  %i.o = lshr i64 %i.j, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke zeroext i1 %i.r(i32 %i.p)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit unwind label %bb.o, !inline_history !48

.split21:                                         ; preds = %bb.d
  %i.t = icmp eq i8 %switch.idx.cast.i.i.i, 35
  br i1 %i.t, label %bb.k, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge

.split22:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load i8, ptr %i.u, align 8
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread.thread, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.h, i64 31
  %i.y = load i8, ptr %i.x, align 8
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.m, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge

bb.g:                                             ; preds = %bb.b
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp ult i64 %.sroa.6.035, %i.j
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 %i.j, i64 %.sroa.6.035, i64 %.sroa.6.035, ptr nonnull align 8 @30) #40
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = sub nuw i64 %.sroa.6.035, %i.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.036, i64 %i.j
  br label %bb.n

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %.noexc
  br i1 %i.s, label %.thread.thread, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge: ; preds = %bb.n, %bb.g, %.split22, %.split21, %.split, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %bb.a
  %.sroa.07.0 = phi ptr [ null, %bb.a ], [ @29, %bb.g ], [ %i.h, %.split22 ], [ %i.h, %.split21 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ null, %bb.n ]
  ret ptr %.sroa.07.0

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit, %.split22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.k:                                             ; preds = %.split21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = icmp uge ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.af = and i64 %i.j, 1095216660480
  %.not3.i.i.i.i = icmp eq i64 %i.af, 1095216660480
  %.not.i.i.i.i = or i1 %i.ae, %.not3.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RNvNvNtCs3oUPovFnLWP_4core4hint21unreachable_unchecked18precondition_checkCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 @9) #38
  unreachable

bb.m:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr i8, ptr %i.h, i64 -1
  store ptr %i.ag, ptr %i.e, align 8
  store i8 3, ptr %i.a, align 8
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr nonnull align 8 %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit: ; preds = %.thread.thread, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit
  %.sroa.0.115 = phi ptr [ %.sroa.0.036, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %i.ad, %bb.j ]
  %.sroa.6.113 = phi i64 [ %.sroa.6.035, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser.exit ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.6.113, 0
  br i1 %i.ah, label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interruptedCshWvooqPLMQS_27fish_gettext_mo_file_parser.exit._crit_edge, label %bb.b

bb.o:                                             ; preds = %.noexc, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr nonnull align 8 %i.d) #39
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %lpad.thr_comm

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %0, ptr %1, ptr %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrECshWvooqPLMQS_27fish_gettext_mo_file_parser(ptr %0, ptr %1, ptr %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3maxCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, i64 %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define i64 @_RNvYjNtNtCs3oUPovFnLWP_4core3cmp3Ord3minCshWvooqPLMQS_27fish_gettext_mo_file_parser(i64 %0, i64 %1) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 %0)
  ret i64 %.sroa.0.0.sroa.speculated
}

; Function Attrs: nounwind nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr align 8) unnamed_addr #21

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 zeroext, i64, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMNtCskt5MLIAl8nl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #25

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr, ptr align 8, ptr, ptr) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr, ptr, ptr align 8) unnamed_addr #21

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr, i64, ptr align 8) unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr align 8) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8, ptr, i64) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #25

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_mul_overflow(ptr align 8) unnamed_addr #21

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64, i64 allocalign) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCslmXY8IYACQt_5gimli(ptr align 8, i64, i64, i64, i64) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64, i64) unnamed_addr #27

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslmXY8IYACQt_5gimli(ptr sret([24 x i8]) align 8, i64, i1 zeroext, i64, i64) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #20

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_nounwind_fmt(ptr, ptr, i1 zeroext, ptr align 8) unnamed_addr #28

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys6random5linux19hashmap_random_keys() unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64, i64, ptr align 8) unnamed_addr #29

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr captures(address), i64, i64) unnamed_addr #30

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner10deallocateCslmXY8IYACQt_5gimli(ptr align 8, i64, i64) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter3pad(ptr align 8, ptr, i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unixNtB5_6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write5write(ptr, ptr, i64) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #33

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold inlinehint noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { noinline noreturn }
attributes #35 = { inlinehint }
attributes #36 = { nounwind }
end_hunk_0
