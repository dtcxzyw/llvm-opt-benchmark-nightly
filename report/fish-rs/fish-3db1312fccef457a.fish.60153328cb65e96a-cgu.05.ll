Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.05?download=true
inline.NumInlined: 1761
inline.NumDeleted: 675
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBR_ECs8frGy5WneL6_4fish:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %bcmp.i.i.i.us.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 4 dereferenceable(1) %i.e, ptr noundef nonnull readonly dereferenceable(1) %2, i64 %i.c), !noalias !65
  %i.i = icmp eq i32 %bcmp.i.i.i.us.i, 0
  br i1 %i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7WindowsmENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_8position5checkRSmNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmB22_B22_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECs8frGy5WneL6_4fish.exit, label %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.thread.i.us.i

_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.thread.i.us.i: ; preds = %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.i.us.i
  %i.j = icmp eq i64 %i.f, -1
  br i1 %i.j, label %.split23.us.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRSmNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmB1g_B1g_E0E0Cs8frGy5WneL6_4fish.exit.us.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRSmNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmB1g_B1g_E0E0Cs8frGy5WneL6_4fish.exit.us.i: ; preds = %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.thread.i.us.i
  %i.k = add nuw i64 %i.f, 1
  %i.l = icmp ugt i64 %3, %i.g
  br i1 %i.l, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7WindowsmENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_8position5checkRSmNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmB22_B22_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECs8frGy5WneL6_4fish.exit, label %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.i.us.i

.split23.us.i:                                    ; preds = %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.thread.i.us.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #31, !noalias !66
  unreachable

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter7WindowsmENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_8position5checkRSmNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmB22_B22_E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.i.us.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRSmNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmB1g_B1g_E0E0Cs8frGy5WneL6_4fish.exit.us.i, %bb.b, %bb.a
  %.sroa.4.0 = phi i64 [ 0, %bb.a ], [ undef, %bb.b ], [ undef, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRSmNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmB1g_B1g_E0E0Cs8frGy5WneL6_4fish.exit.us.i ], [ %i.f, %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.i.us.i ]
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8position5checkRSmNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmB1g_B1g_E0E0Cs8frGy5WneL6_4fish.exit.us.i ], [ 1, %_RNCINvCskr4qsHYS30i_15fish_widestring17subslice_positionmRSmBT_E0Cs8frGy5WneL6_4fish.exit.i.us.i ]
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.n
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter7sources4once4OncecEINtNtNtBY_8adapters6copied6CopiedINtNtNtB10_5slice4iter4ItercEEECs8frGy5WneL6_4fish(i32 noundef range(i32 -1, 1114112) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %.not.peel = icmp eq i32 %0, -1
  br i1 %.not.peel, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.c = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.d = icmp eq i32 %0, %i.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.peel.begin
  %.not.lcssa = phi i1 [ true, %.peel.begin ], [ %i.d, %bb.a ]
  ret i1 %.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevINtNtNtBY_7sources4once4OncecEEIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(i32 noundef range(i32 -1, 1114112) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %.not.peel = icmp eq i32 %0, -1
  br i1 %.not.peel, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.c = call noundef range(i32 -1, 1114112) i32 @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.d = icmp eq i32 %0, %i.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.peel.begin
  %.not.lcssa = phi i1 [ true, %.peel.begin ], [ %i.d, %bb.a ]
  ret i1 %.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtNtB10_3str4iter5CharsEIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.5.0 = phi ptr [ %1, %bb.a ], [ %.sroa.5.3.ph, %bb.g ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %.not.i.i = icmp eq ptr %0, %.sroa.5.0          ; 2 uses
  br i1 %.not.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -1 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !noalias !73, !noundef !5 ; 3 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i: ; preds = %bb.c
  %i.f = icmp ne ptr %0, %i.c
  call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -2 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !noalias !73, !noundef !5 ; 3 uses
  %i.i = and i8 %i.h, 31
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp slt i8 %i.h, -64
  br i1 %i.k, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = zext nneg i8 %i.d to i32
  br label %bb.g

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i
  %i.m = icmp ne ptr %0, %i.g
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -3 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !73, !noundef !5 ; 3 uses
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp slt i8 %i.o, -64
  br i1 %i.r, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i, label %bb.f

bb.e:                                             ; preds = %bb.f, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %bb.f ], [ %i.g, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.ai, %bb.f ], [ %i.j, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit17.i.i.i ]
  %i.s = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.t = and i8 %i.d, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u
  br label %bb.g

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i
  %i.w = icmp ne ptr %0, %i.n
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -4 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !noalias !73, !noundef !5
  %i.z = and i8 %i.y, 7
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = and i8 %i.o, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i
  %.sroa.5.2 = phi ptr [ %i.x, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i ], [ %i.n, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.ae, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit21.i.i.i ], [ %i.q, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish.exit19.i.i.i ]
  %i.af = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.ag = and i8 %i.h, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %bb.e

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.3.ph = phi ptr [ %.sroa.5.1, %bb.e ], [ %i.c, %bb.d ]
  %spec.select.i.i.ph = phi i32 [ %i.v, %bb.e ], [ %i.l, %bb.d ]
  %i.aj = call noundef range(i32 -1, 1114112) i32 @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %.not4 = icmp ne i32 %i.aj, -1
  %i.ak = icmp eq i32 %spec.select.i.i.ph, %i.aj
  %or.cond = select i1 %.not4, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.b, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit: ; preds = %bb.g, %bb.b
  ret i1 %.not.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3rev3RevNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEEECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.5.0 = phi ptr [ %1, %bb.a ], [ %i.e, %bb.d ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %i.d = icmp eq ptr %0, %.sroa.5.0               ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !noalias !80, !noundef !5 ; 4 uses
  %i.g = xor i32 %i.f, 55296
  %i.h = add i32 %i.g, -1114112
  %i.i = icmp ult i32 %i.h, -1112064
  br i1 %i.i, label %.split.i.i, label %bb.d

.split.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81
  store i32 %i.f, ptr %i.a, align 4, !noalias !81
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #31, !noalias !80
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %i.f, 1114112
  call void @llvm.assume(i1 %i.j)
  %i.k = call noundef range(i32 -1, 1114112) i32 @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits12double_ended19DoubleEndedIterator9next_backCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsINtNtNtNtBX_4iter8adapters6copied6CopiedINtNtNtBX_5slice4iter4ItercEEECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.b, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %.sroa.0.1.ph, %bb.e ] ; 6 uses
  %.not.i = icmp eq ptr %.sroa.0.0, %1            ; 2 uses
  br i1 %.not.i, label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 3 uses
  %i.d = load i8, ptr %.sroa.0.0, align 1, !noalias !86, !noundef !5 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.d, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i: ; preds = %bb.c
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %1
  call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !86, !noundef !5
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i
  %i.q = icmp ne ptr %i.i, %1
  call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !86, !noundef !5
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i, label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i
  %i.aa = icmp ne ptr %i.r, %1
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !86, !noundef !5
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i
  %.sroa.0.1.ph = phi ptr [ %i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i ], [ %i.r, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i ], [ %i.c, %bb.d ]
  %spec.select.i.ph = phi i32 [ %i.n, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i ], [ %i.y, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i ], [ %i.aj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i ], [ %i.p, %bb.d ]
  %i.ak = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %.not4 = icmp ne i32 %i.ak, -1
  %i.al = icmp eq i32 %spec.select.i.ph, %i.ak
  %or.cond = select i1 %.not4, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.b, label %_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit

_RNvXNtNtCs3oUPovFnLWP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.e, %bb.b
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18iter_prefixes_iterNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB1U_5slice4iter4ItercEEECs8frGy5WneL6_4fish(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %3, ptr %i.c, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.d ] ; 3 uses
  %i.d = icmp eq ptr %.sroa.0.0, %1               ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %.sroa.0.0, align 4, !noalias !91, !noundef !5 ; 4 uses
  %i.f = xor i32 %i.e, 55296
  %i.g = add i32 %i.f, -1114112
  %i.h = icmp ult i32 %i.g, -1112064
  br i1 %i.h, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !92
  store i32 %i.e, ptr %i.a, align 4, !noalias !92
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #31, !noalias !91
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.j = icmp ult i32 %i.e, 1114112
  call void @llvm.assume(i1 %i.j)
  %i.k = call noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  %i.l = icmp eq i32 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvCskr4qsHYS30i_15fish_widestring18str2bytes_callbackRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNCINvB2_19wcs2bytes_appendingBR_E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %.sroa.0 = alloca i32, align 4                  ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %.idx = shl nuw nsw i64 %1, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  %.sroa.0.1..sroa_idx32 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  %.sroa.0.2..sroa_idx34 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  %.sroa.0.1..sroa_idx33 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %.sroa.08.017 = phi ptr [ %0, %.lr.ph ], [ %i.f, %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.017, i64 4 ; 2 uses
  %i.g = load i32, ptr %.sroa.08.017, align 4, !noalias !103, !noundef !5 ; 12 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  store i32 %i.g, ptr %i.a, align 4, !noalias !104
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #31, !noalias !103
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call { i1, i8 } @_RNvCskr4qsHYS30i_15fish_widestring21decode_byte_from_char(i32 noundef %i.g) ; 2 uses
  %i.m = extractvalue { i1, i8 } %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs8frGy5WneL6_4fish.exit, label %bb.d

._crit_edge:                                      ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i1 true

_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.n = extractvalue { i1, i8 } %i.l, 1
  store i8 %i.n, ptr %.sroa.0, align 4
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i32 %i.g, 128
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp samesign ult i32 %i.g, 2048
  %i.q = trunc i32 %i.g to i8
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 3 uses
  %i.t = lshr i32 %i.g, 6
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128                ; 2 uses
  %i.x = lshr i32 %i.g, 12
  %i.y = trunc i32 %i.x to i8                     ; 2 uses
  %i.z = and i8 %i.y, 63
  %i.aa = or disjoint i8 %i.z, -128
  %i.ab = lshr i32 %i.g, 18
  %i.ac = trunc nuw nsw i32 %i.ab to i8
  %i.ad = or disjoint i8 %i.ac, -16
  br i1 %i.p, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ae = trunc nuw nsw i32 %i.g to i8
  store i8 %i.ae, ptr %.sroa.0, align 4, !alias.scope !105
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  %i.af = or disjoint i8 %i.u, -64
  store i8 %i.af, ptr %.sroa.0, align 4, !alias.scope !105
  store i8 %i.s, ptr %.sroa.0.1..sroa_idx33, align 1, !alias.scope !105
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.h:                                             ; preds = %bb.e
  %i.ag = icmp samesign ult i32 %i.g, 65536
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = or disjoint i8 %i.y, -32
  store i8 %i.ah, ptr %.sroa.0, align 4, !alias.scope !105
  store i8 %i.w, ptr %.sroa.0.1..sroa_idx32, align 1, !alias.scope !105
  store i8 %i.s, ptr %.sroa.0.2..sroa_idx34, align 2, !alias.scope !105
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.ad, ptr %.sroa.0, align 4, !alias.scope !105
  store i8 %i.aa, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !105
  store i8 %i.w, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !105
  store i8 %i.s, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !105
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs8frGy5WneL6_4fish.exit
  %.pn14 = phi i64 [ 1, %_RNvXs8_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCs8frGy5WneL6_4fish.exit ], [ 1, %bb.f ], [ 2, %bb.g ], [ 3, %bb.i ], [ 4, %bb.j ] ; 3 uses
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef range(i64 0, 5) %.pn14), !noalias !106
  %i.ai = load i64, ptr %i.d, align 8, !alias.scope !107, !noalias !106, !noundef !5 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load ptr, ptr %i.e, align 8, !alias.scope !107, !noalias !106, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0, i64 range(i64 0, 5) %.pn14, i1 false)
  %.pre.i.i = load i64, ptr %i.d, align 8, !alias.scope !107, !noalias !106
  %i.am = add i64 %.pre.i.i, %.pn14
  store i64 %i.am, ptr %i.d, align 8, !alias.scope !107, !noalias !106
  %i.an = icmp eq ptr %i.f, %i.b
  br i1 %i.an, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCskr4qsHYS30i_15fish_widestring9wcs2bytesINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainIBI_NtNtNtBQ_3str4iter5CharsNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EINtNtNtBO_7sources4once4OncecEEECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %.sroa.0.i = alloca i32, align 4                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  store i64 0, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 0, ptr %.sroa.0.i, align 4, !noalias !146
  %.sroa.08.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !147, !noalias !145
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !147, !noalias !145
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !147, !noalias !145 ; 5 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !147, !noalias !145
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.59.0.copyload.i = load ptr, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !147, !noalias !145 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !147, !noalias !145
  %.sroa.0.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  %.sroa.0.i.2.i.2.i.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.3.i.3.i.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 3
  %.sroa.0.i.1.i.1.i.1..sroa_idx12 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  %.sroa.0.i.2.i.2.i.2..sroa_idx14 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 2
  %.sroa.0.i.1.i.1.i.1..sroa_idx13 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.noexc2, %bb.a
  %.sroa.15.0.i = phi i32 [ %.sroa.6.0.copyload.i, %bb.a ], [ %.sroa.15.119.i, %.noexc2 ] ; 7 uses
  %.sroa.12.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.a ], [ %.sroa.12.120.i, %.noexc2 ] ; 9 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.2.0.copyload.i, %bb.a ], [ %.sroa.5.321.i, %.noexc2 ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %.sroa.08.0.copyload.i, %bb.a ], [ %.sroa.07.222.i, %.noexc2 ]
  %i.e = trunc nuw i64 %.sroa.07.0.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainNtNtNtBe_3str4iter5CharsNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8frGy5WneL6_4fish.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.5.0.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RNvYNvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtBb_4iter6traits8iterator8Iterator4nextINtNtNtBb_3ops8function6FnOnceTQB5_EE9call_onceCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i, label %bb.d

end_hunk_0
begin_hunk_1_@_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl3padNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish:bb.a
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = icmp samesign ugt i8 %i.n, -33
  br i1 %i.y, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i8 %i.n to i32
  br label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %i.aa = icmp ne ptr %i.s, %i.k
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 3 ; 3 uses
  %i.ac = load i8, ptr %i.s, align 1, !alias.scope !844, !noalias !847, !noundef !5
  %i.ad = shl nuw nsw i32 %i.w, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af            ; 2 uses
  %i.ah = shl nuw nsw i32 %i.q, 12
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = icmp samesign ugt i8 %i.n, -17
  br i1 %i.aj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, label %bb.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i
  %i.ak = icmp ne ptr %i.ab, %i.k
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i, i64 4
  %i.am = load i8, ptr %i.ab, align 1, !alias.scope !844, !noalias !847, !noundef !5
  %i.an = shl nuw nsw i32 %i.q, 18
  %i.ao = and i32 %i.an, 1835008
  %i.ap = shl nuw nsw i32 %i.ag, 6
  %i.aq = and i8 %i.am, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = or disjoint i32 %i.as, %i.ao
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i
  %.sroa.0.1.ph.i.i.i.i.i = phi ptr [ %i.s, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.m, %bb.h ] ; 2 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.x, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i.i.i.i.i ], [ %i.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i.i.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i.i.i.i.i ], [ %i.z, %bb.h ]
  %i.au = load i64, ptr %i.f, align 8, !alias.scope !848, !noalias !844, !noundef !5 ; 3 uses
  %i.av = load i64, ptr %0, align 8, !range !12, !alias.scope !848, !noalias !844, !noundef !5
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.j, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #32, !noalias !844
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.ax = load ptr, ptr %i.g, align 8, !alias.scope !848, !noalias !844, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.au
  store i32 %spec.select.i.ph.i.i.i.i.i, ptr %i.ay, align 4, !noalias !844
  %i.az = add i64 %i.au, 1
  store i64 %i.az, ptr %i.f, align 8, !alias.scope !848, !noalias !844
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.1.ph.i.i.i.i.i, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit, label %bb.g

bb.k:                                             ; preds = %bb.f
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef 16, i64 noundef 0, i64 noundef %..i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #31
  unreachable

_RNvXs2X_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str.exit: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXs1V_NtCslLGyqsphxMB_10widestring9utfstringNtB1q_11Utf32StringINtNtBa_7collect6ExtendcE6extendNtNtNtBe_3str4iter5CharsE0E0Cs8frGy5WneL6_4fish.exit.i.i.i.i.i
  %i.ba = sub nuw i64 %.sroa.04.019, %..i         ; 2 uses
  %.not14 = icmp eq i64 %i.ba, 0
  br i1 %.not14, label %.loopexit, label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  ret void

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i1 [ false, %bb.a ], [ true, %bb.b ]
  %i.c = landingpad { ptr, i32 }
          cleanup
  br i1 %i.b, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #29
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEEB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1j_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1j_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) #29
          to label %common.resume.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i: ; preds = %bb.c
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i:                                  ; preds = %bb.e, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.not = icmp eq i64 %.0.val, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 1, label %bb.e
  ], !prof !19

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !851
  store i8 3, ptr %i.a, align 8, !alias.scope !851
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 1, label %bb.g
  ], !prof !19

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !854
  store i8 3, ptr %i.a, align 8, !alias.scope !854
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit: ; preds = %bb.e, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdINtNtB14_2fs15PotentialUpdateINtNtB4_6option6OptionNtNtB14_20env_universal_common19UniversalReadUpdateEEENtNtNtB4_2io5error5ErrorEEB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !range !20, !noundef !5
  switch i64 %i.c, label %bb.b [
    i64 -2, label %bb.g
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdINtNtBI_2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBI_20env_universal_common19UniversalReadUpdateEEEEBI_.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.b) #29
          to label %common.resume.i.i.i.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.b)
          to label %common.resume.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.d, %bb.c
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdINtNtBI_2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBI_20env_universal_common19UniversalReadUpdateEEEEBI_.exit

bb.g:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = ptrtoint ptr %.val to i64                ; 2 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 3, label %bb.h
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 1, label %bb.i
  ], !prof !19

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.k = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.l = and i64 %i.i, 1095216660480
  %i.m = icmp ne i64 %i.l, 1095216660480
  tail call void @llvm.assume(i1 %i.k)
  tail call void @llvm.assume(i1 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !857
  store i8 3, ptr %i.a, align 8, !alias.scope !857
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit: ; preds = %bb.g, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdINtNtBI_2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBI_20env_universal_common19UniversalReadUpdateEEEEBI_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdINtNtBI_2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBI_20env_universal_common19UniversalReadUpdateEEEEBI_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtCs8frGy5WneL6_4fish5wutil6fileid6FileIdINtNtB14_2fs15PotentialUpdateuEENtNtNtB4_2io5error5ErrorEEB14_(ptr %.0.val, i8 %.56.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.not = icmp eq i8 %.56.val, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 1, label %bb.e
  ], !prof !19

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !860
  store i8 3, ptr %i.a, align 8, !alias.scope !860
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateINtNtB4_6option6OptionNtNtBG_20env_universal_common19UniversalReadUpdateEEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !863, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEEB11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) #29
          to label %common.resume.i.i unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %common.resume.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i.i:                                ; preds = %bb.d, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEEB11_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEEB11_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateNtNtBG_20env_universal_common19UniversalReadUpdateEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0) #29
          to label %common.resume.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i: ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i:                                  ; preds = %bb.c, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common19UniversalReadUpdateEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 2, label %bb.c
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish10fd_monitor13FdMonitorItemEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i32 %.val, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @close(i32 noundef %.val) #34 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit: ; preds = %bb.b, %bb.a
  %.val1 = load ptr, ptr %0, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !5, !align !15, !noundef !5 ; 5 uses
  %i.e = load ptr, ptr %.val2, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  invoke void %i.e(ptr noundef nonnull %.val1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEECs8frGy5WneL6_4fish.exit
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !12, !invariant.load !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !864, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #34
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !12, !invariant.load !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !864, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #34
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDG_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTQL0_INtNtBR_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtBR_6marker4SendNtB2P_4SyncEL_ENtNtBP_4drop4Drop4dropCs8frGy5WneL6_4fish.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_INtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std2os2fd5owned7OwnedFdEEEp6OutputuNtNtB4_6marker4SendNtB32_4SyncEL_EECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !881, !noundef !5 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.g = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !882
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #32
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !883, !noundef !5 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit1, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.l = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !884
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit1

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #32
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB13_.exit: ; preds = %bb.e, %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload9KnownFileEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !alias.scope !887, !noundef !5
  %.not.i = icmp eq i64 %i.a, -1
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.e, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_.exit

bb.e:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish8autoload20AutoloadableFileInfoEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8frGy5WneL6_4fish.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8frGy5WneL6_4fish.exit
    i64 1, label %bb.c
  ], !prof !19

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8frGy5WneL6_4fish.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !890
  store i8 3, ptr %i.a, align 8, !alias.scope !890
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str8NulErrorECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish8builtins8argparse10OptionSpecEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEBV_(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implPaECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.a, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impllECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBW_6filter6FilterIBS_INtNtBW_6copied6CopiedINtNtNtB10_5slice4iter4ItercEEENCINvB2_18wcstod_underscoresRScE0EEEB6_:bb.a
  switch i32 %i.bh, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.1 [
    i32 -2, label %bb.s
    i32 -1, label %.loopexit
    i32 95, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bi = call noundef i32 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0INtNtNtBb_3ops12control_flow11ControlFlowcEEB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull %i.c), !noalias !1521
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.1

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.1: ; preds = %bb.s, %bb.q
  %.sroa.0.0.i.i.i.i.1 = phi i32 [ %i.bg, %bb.q ], [ %i.bi, %bb.s ] ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %.sroa.0.0.i.i.i.i.1, -1
  br i1 %.not.i.i.i.1, label %.loopexit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.1

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.1: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.1, %bb.r
  %.sroa.0.0.i9.i.i.i.1 = phi i32 [ %.sroa.0.0.i.i.i.i.1, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.1 ], [ %i.bh, %bb.r ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.0.0.i9.i.i.i.1, 128
  br i1 %i.bj, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.1, label %.loopexit

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.1: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.1
  %i.bk = add nsw i32 %.sroa.0.0.i9.i.i.i.1, -65
  %or.cond.i.i.1 = icmp ult i32 %i.bk, 26
  %i.bl = or disjoint i32 %.sroa.0.0.i9.i.i.i.1, 32
  %spec.select.i.i.1 = select i1 %or.cond.i.i.1, i32 %i.bl, i32 %.sroa.0.0.i9.i.i.i.1
  %i.bm = icmp ne i32 %spec.select.i.i.1, 110
  %i.bn = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !range !16
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond89 = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %or.cond89, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.1
  %i.bp = load i32, ptr %i.c, align 8, !range !28, !alias.scope !1522, !noalias !1521, !noundef !5 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1522, !noalias !1521
  %.not.i.i.i.i.2 = icmp eq i32 %i.bp, -2
  br i1 %.not.i.i.i.i.2, label %bb.u, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.2

bb.u:                                             ; preds = %bb.t
  %i.bq = load i32, ptr %i.au, align 8, !range !28, !alias.scope !1523, !noalias !1524, !noundef !5 ; 2 uses
  store i32 -2, ptr %i.au, align 8, !alias.scope !1523, !noalias !1524
  switch i32 %i.bq, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.2 [
    i32 -2, label %bb.v
    i32 -1, label %.loopexit
    i32 95, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.br = call noundef i32 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0INtNtNtBb_3ops12control_flow11ControlFlowcEEB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull %i.c), !noalias !1521
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.2

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.2: ; preds = %bb.v, %bb.t
  %.sroa.0.0.i.i.i.i.2 = phi i32 [ %i.bp, %bb.t ], [ %i.br, %bb.v ] ; 2 uses
  %.not.i.i.i.2 = icmp eq i32 %.sroa.0.0.i.i.i.i.2, -1
  br i1 %.not.i.i.i.2, label %.loopexit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.2

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.2: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.2, %bb.u
  %.sroa.0.0.i9.i.i.i.2 = phi i32 [ %.sroa.0.0.i.i.i.i.2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.2 ], [ %i.bq, %bb.u ] ; 4 uses
  %i.bs = icmp samesign ult i32 %.sroa.0.0.i9.i.i.i.2, 128
  br i1 %i.bs, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.2, label %.loopexit

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.2: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.2
  %i.bt = add nsw i32 %.sroa.0.0.i9.i.i.i.2, -65
  %or.cond.i.i.2 = icmp ult i32 %i.bt, 26
  %i.bu = or disjoint i32 %.sroa.0.0.i9.i.i.i.2, 32
  %spec.select.i.i.2 = select i1 %or.cond.i.i.2, i32 %i.bu, i32 %.sroa.0.0.i9.i.i.i.2
  %i.bv = icmp ne i32 %spec.select.i.i.2, 105
  %i.bw = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !range !16
  %i.bx = trunc nuw i8 %i.bw to i1
  %or.cond91 = select i1 %i.bv, i1 true, i1 %i.bx
  br i1 %or.cond91, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.2
  %i.by = load i32, ptr %i.c, align 8, !range !28, !alias.scope !1522, !noalias !1521, !noundef !5 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1522, !noalias !1521
  %.not.i.i.i.i.3 = icmp eq i32 %i.by, -2
  br i1 %.not.i.i.i.i.3, label %bb.x, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.3

bb.x:                                             ; preds = %bb.w
  %i.bz = load i32, ptr %i.au, align 8, !range !28, !alias.scope !1523, !noalias !1524, !noundef !5 ; 2 uses
  store i32 -2, ptr %i.au, align 8, !alias.scope !1523, !noalias !1524
  switch i32 %i.bz, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.3 [
    i32 -2, label %bb.y
    i32 -1, label %.loopexit
    i32 95, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.ca = call noundef i32 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0INtNtNtBb_3ops12control_flow11ControlFlowcEEB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull %i.c), !noalias !1521
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.3

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.3: ; preds = %bb.y, %bb.w
  %.sroa.0.0.i.i.i.i.3 = phi i32 [ %i.by, %bb.w ], [ %i.ca, %bb.y ] ; 2 uses
  %.not.i.i.i.3 = icmp eq i32 %.sroa.0.0.i.i.i.i.3, -1
  br i1 %.not.i.i.i.3, label %.loopexit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.3

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.3: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.3, %bb.x
  %.sroa.0.0.i9.i.i.i.3 = phi i32 [ %.sroa.0.0.i.i.i.i.3, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.3 ], [ %i.bz, %bb.x ] ; 4 uses
  %i.cb = icmp samesign ult i32 %.sroa.0.0.i9.i.i.i.3, 128
  br i1 %i.cb, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.3, label %.loopexit

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.3: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.3
  %i.cc = add nsw i32 %.sroa.0.0.i9.i.i.i.3, -65
  %or.cond.i.i.3 = icmp ult i32 %i.cc, 26
  %i.cd = or disjoint i32 %.sroa.0.0.i9.i.i.i.3, 32
  %spec.select.i.i.3 = select i1 %or.cond.i.i.3, i32 %i.cd, i32 %.sroa.0.0.i9.i.i.i.3
  %i.ce = icmp ne i32 %spec.select.i.i.3, 116
  %i.cf = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !range !16
  %i.cg = trunc nuw i8 %i.cf to i1
  %or.cond93 = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %or.cond93, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.3
  %i.ch = load i32, ptr %i.c, align 8, !range !28, !alias.scope !1522, !noalias !1521, !noundef !5 ; 2 uses
  store i32 -2, ptr %i.c, align 8, !alias.scope !1522, !noalias !1521
  %.not.i.i.i.i.4 = icmp eq i32 %i.ch, -2
  br i1 %.not.i.i.i.i.4, label %bb.aa, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.4

bb.aa:                                            ; preds = %bb.z
  %i.ci = load i32, ptr %i.au, align 8, !range !28, !alias.scope !1523, !noalias !1524, !noundef !5 ; 2 uses
  store i32 -2, ptr %i.au, align 8, !alias.scope !1523, !noalias !1524
  switch i32 %i.ci, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.4 [
    i32 -2, label %bb.ab
    i32 -1, label %.loopexit
    i32 95, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.cj = call noundef i32 @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB1v_4find5checkcQNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0E0INtNtNtBb_3ops12control_flow11ControlFlowcEEB2K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull %i.c), !noalias !1521
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.4

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.4: ; preds = %bb.ab, %bb.z
  %.sroa.0.0.i.i.i.i.4 = phi i32 [ %i.ch, %bb.z ], [ %i.cj, %bb.ab ] ; 2 uses
  %.not.i.i.i.4 = icmp eq i32 %.sroa.0.0.i.i.i.i.4, -1
  br i1 %.not.i.i.i.4, label %.loopexit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.4

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.4: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.4, %bb.aa
  %.sroa.0.0.i9.i.i.i.4 = phi i32 [ %.sroa.0.0.i.i.i.i.4, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.4 ], [ %i.ci, %bb.aa ] ; 4 uses
  %i.ck = icmp samesign ult i32 %.sroa.0.0.i9.i.i.i.4, 128
  br i1 %i.ck, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.4, label %.loopexit

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.4: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.4
  %i.cl = add nsw i32 %.sroa.0.0.i9.i.i.i.4, -65
  %or.cond.i.i.4 = icmp ult i32 %i.cl, 26
  %i.cm = or disjoint i32 %.sroa.0.0.i9.i.i.i.4, 32
  %spec.select.i.i.4 = select i1 %or.cond.i.i.4, i32 %i.cm, i32 %.sroa.0.0.i9.i.i.i.4
  %i.cn = icmp eq i32 %spec.select.i.i.4, 121
  br i1 %i.cn, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtBY_8adapters8peekable8PeekableINtNtB2A_6filter6FilterIB2w_INtNtB2A_6copied6CopiedIBG_cEEENCINvB1G_18wcstod_underscoresRScE0EEEs0_0EB1K_.exit, label %.loopexit

bb.ac:                                            ; preds = %bb.l
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #31
  unreachable

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtBY_8adapters8peekable8PeekableINtNtB2A_6filter6FilterIB2w_INtNtB2A_6copied6CopiedIBG_cEEENCINvB1G_18wcstod_underscoresRScE0EEEs0_0EB1K_.exit: ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.4
  %i.co = icmp ugt i64 %i.aq, -6
  br i1 %i.co, label %bb.ae, label %bb.ad

.loopexit:                                        ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.1, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.2, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.3, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.thread6.i.i.i.4, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i, %bb.o, %bb.m, %bb.r, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.1, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.1, %bb.u, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.2, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.2, %bb.x, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.3, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.3, %bb.aa, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableINtNtB6_6filter6FilterIBR_INtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENtNtNtB8_6traits8iterator8Iterator4nextB2u_.exit.i.i.i.4, %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableINtNtBY_6filter6FilterIBU_INtNtBY_6copied6CopiedINtNtNtB12_5slice4iter4ItercEEENCINvB4_18wcstod_underscoresRScE0EEEs0_0B8_.exit.i.4, %bb.ad
  %. = select i1 %.sroa.039.0, double -inf, double +inf
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableINtNtB7_6filter6FilterIB1b_INtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENCINvB2W_13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.thread

bb.ad:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtBY_8adapters8peekable8PeekableINtNtB2A_6filter6FilterIB2w_INtNtB2A_6copied6CopiedIBG_cEEENCINvB1G_18wcstod_underscoresRScE0EEEs0_0EB1K_.exit
  %i.cp = add nuw i64 %i.aq, 5
  store i64 %i.cp, ptr %3, align 8
  br label %.loopexit

bb.ae:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtBY_8adapters8peekable8PeekableINtNtB2A_6filter6FilterIB2w_INtNtB2A_6copied6CopiedIBG_cEEENCINvB1G_18wcstod_underscoresRScE0EEEs0_0EB1K_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #31
  unreachable

bb.af:                                            ; preds = %bb.k
  store i64 %i.an, ptr %3, align 8
  %.50 = select i1 %.sroa.039.0, double -qnan, double +qnan
  br label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableINtNtB7_6filter6FilterIB1b_INtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4ItercEEENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod18wcstod_underscoresRScE0EENCINvB2W_13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB30_.exit.thread

bb.ag:                                            ; preds = %bb.k
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, double } @_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEB6_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i1 noundef zeroext %1, i8 %2, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [4 x i8], align 4                 ; 3 uses
  %.sroa.072.0.copyload = load ptr, ptr %0, align 8, !alias.scope !1566 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1566 ; 10 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !1566 ; 2 uses
  %i.e = icmp eq i8 %2, 45
  %.sroa.037.0 = select i1 %1, i64 4, i64 3       ; 2 uses
  %.sroa.039.0 = select i1 %1, i1 %i.e, i1 false  ; 2 uses
  switch i32 %.sroa.5.0.copyload, label %bb.d [
    i32 -2, label %bb.b
    i32 -1, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.072.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.f = icmp eq ptr %.sroa.072.0.copyload, %.sroa.4.0.copyload
  br i1 %i.f, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %.sroa.072.0.copyload, align 4, !noalias !1567, !noundef !5 ; 4 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload, i64 4
  %i.l = icmp samesign ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.l)
  br label %bb.d

.split.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1568
  store i32 %i.g, ptr %i.d, align 4, !noalias !1568
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #31, !noalias !1567
  unreachable

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i, %bb.a
  %.sroa.0.0 = phi ptr [ %.sroa.072.0.copyload, %bb.a ], [ %i.k, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i ] ; 9 uses
  %.sroa.0.0.i9.i = phi i32 [ %.sroa.5.0.copyload, %bb.a ], [ %i.g, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i ] ; 4 uses
  %i.m = icmp samesign ult i32 %.sroa.0.0.i9.i, 128
  br i1 %i.m, label %bb.e, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %.sroa.0.0.i9.i, -65
  %or.cond = icmp ult i32 %i.n, 26
  %i.o = or disjoint i32 %.sroa.0.0.i9.i, 32
  %spec.select = select i1 %or.cond, i32 %i.o, i32 %.sroa.0.0.i9.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.p = icmp eq ptr %.sroa.0.0, %.sroa.4.0.copyload
  br i1 %i.p, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4 ; 2 uses
  %i.r = load i32, ptr %.sroa.0.0, align 4, !noalias !1569, !noundef !5 ; 7 uses
  %i.s = xor i32 %i.r, 55296
  %i.t = add i32 %i.s, -1114112
  %i.u = icmp ult i32 %i.t, -1112064
  br i1 %i.u, label %.split.i.i.i54, label %bb.g

.split.i.i.i54:                                   ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1570
  store i32 %i.r, ptr %i.c, align 4, !noalias !1570
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #31, !noalias !1569
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = icmp samesign ult i32 %i.r, 1114112
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp samesign ult i32 %i.r, 128
  br i1 %i.w, label %bb.h, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.x = add nsw i32 %i.r, -65
  %or.cond3 = icmp ult i32 %i.x, 26
  %i.y = or disjoint i32 %i.r, 32
  %spec.select48 = select i1 %or.cond3, i32 %i.y, i32 %i.r ; 2 uses
  %i.z = icmp eq ptr %i.q, %.sroa.4.0.copyload
  br i1 %i.z, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.q, align 4, !noalias !1571, !noundef !5 ; 7 uses
  %i.ac = xor i32 %i.ab, 55296
  %i.ad = add i32 %i.ac, -1114112
  %i.ae = icmp ult i32 %i.ad, -1112064
  br i1 %i.ae, label %.split.i.i.i59, label %bb.j

.split.i.i.i59:                                   ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1572
  store i32 %i.ab, ptr %i.b, align 4, !noalias !1572
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #31, !noalias !1571
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.af = icmp samesign ult i32 %i.ab, 1114112
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ult i32 %i.ab, 128
  br i1 %i.ag, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit60, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit60: ; preds = %bb.j
  %i.ah = add nsw i32 %i.ab, -65
  %or.cond5 = icmp ult i32 %i.ah, 26
  %i.ai = or disjoint i32 %i.ab, 32
  %spec.select49 = select i1 %or.cond5, i32 %i.ai, i32 %i.ab ; 2 uses
  %i.aj = icmp eq i32 %spec.select, 110
  %i.ak = icmp eq i32 %spec.select48, 97
  %i.al = and i1 %i.aj, %i.ak
  %i.am = icmp eq i32 %spec.select49, 110
  %i.an = and i1 %i.al, %i.am
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit60
  %i.ao = icmp eq i32 %spec.select, 105
  %i.ap = icmp eq i32 %spec.select48, 110
  %i.aq = and i1 %i.ao, %i.ap
  %i.ar = icmp eq i32 %spec.select49, 102
  %i.as = and i1 %i.aq, %i.ar
  br i1 %i.as, label %bb.m, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit60
  %i.at = load i64, ptr %3, align 8, !noundef !5  ; 2 uses
  %i.au = add i64 %i.at, %.sroa.037.0             ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %bb.ac, label %bb.ab

bb.m:                                             ; preds = %bb.k
  %i.aw = load i64, ptr %3, align 8, !noundef !5  ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.037.0             ; 4 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.y, label %bb.n

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanB1a_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2E_.exit.thread: ; preds = %bb.k, %.loopexit, %bb.ab, %bb.b, %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.j
  %.sroa.9.3 = phi double [ undef, %bb.j ], [ undef, %bb.d ], [ %.50, %bb.ab ], [ undef, %bb.g ], [ %., %.loopexit ], [ undef, %bb.b ], [ undef, %bb.a ], [ undef, %bb.e ], [ undef, %bb.h ], [ undef, %bb.k ]
  %.sroa.07.3 = phi i64 [ 0, %bb.j ], [ 0, %bb.d ], [ 1, %bb.ab ], [ 0, %bb.g ], [ 1, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.k ]
  %i.az = insertvalue { i64, double } poison, i64 %.sroa.07.3, 0
  %i.ba = insertvalue { i64, double } %i.az, double %.sroa.9.3, 1
  ret { i64, double } %i.ba

bb.n:                                             ; preds = %bb.m
  store i64 %i.ax, ptr %3, align 8
  %i.bb = icmp eq ptr %i.aa, %.sroa.4.0.copyload
  br i1 %i.bb, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 12 ; 2 uses
  %i.bd = load i32, ptr %i.aa, align 4, !noalias !1573, !noundef !5 ; 7 uses
  %i.be = xor i32 %i.bd, 55296
  %i.bf = add i32 %i.be, -1114112
  %i.bg = icmp ult i32 %i.bf, -1112064
  br i1 %i.bg, label %.split.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp samesign ult i32 %i.bd, 1114112
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ult i32 %i.bd, 128
  br i1 %i.bi, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.peel.i, label %.loopexit

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.peel.i: ; preds = %bb.p
  %i.bj = add nsw i32 %i.bd, -65
  %or.cond.i.peel.i = icmp ult i32 %i.bj, 26
  %i.bk = or disjoint i32 %i.bd, 32
  %spec.select.i.peel.i = select i1 %or.cond.i.peel.i, i32 %i.bk, i32 %i.bd
  %i.bl = icmp ne i32 %spec.select.i.peel.i, 105
  %i.bm = icmp eq ptr %i.bc, %.sroa.4.0.copyload
  %or.cond105 = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %or.cond105, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.peel.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16 ; 2 uses
  %i.bo = load i32, ptr %i.bc, align 4, !noalias !1574, !noundef !5 ; 7 uses
  %i.bp = xor i32 %i.bo, 55296
  %i.bq = add i32 %i.bp, -1114112
  %i.br = icmp ult i32 %i.bq, -1112064
  br i1 %i.br, label %.split.i.i.i.i.i, label %bb.r

.split.i.i.i.i.i:                                 ; preds = %bb.q, %bb.s, %bb.u, %bb.w, %bb.o
  %.lcssa.i = phi i32 [ %i.bd, %bb.o ], [ %i.bo, %bb.q ], [ %i.bz, %bb.s ], [ %i.ck, %bb.u ], [ %i.cu, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1575
  store i32 %.lcssa.i, ptr %i.a, align 4, !noalias !1575
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #31, !noalias !1574
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp samesign ult i32 %i.bo, 1114112
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp samesign ult i32 %i.bo, 128
  br i1 %i.bt, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i, label %.loopexit

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i: ; preds = %bb.r
  %i.bu = add nsw i32 %i.bo, -65
  %or.cond.i.i = icmp ult i32 %i.bu, 26
  %i.bv = or disjoint i32 %i.bo, 32
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.bv, i32 %i.bo
  %i.bw = icmp ne i32 %spec.select.i.i, 110
  %i.bx = icmp eq ptr %i.bn, %.sroa.4.0.copyload
  %or.cond106 = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond106, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 20 ; 2 uses
  %i.bz = load i32, ptr %i.bn, align 4, !noalias !1574, !noundef !5 ; 7 uses
  %i.ca = xor i32 %i.bz, 55296
  %i.cb = add i32 %i.ca, -1114112
  %i.cc = icmp ult i32 %i.cb, -1112064
  br i1 %i.cc, label %.split.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp samesign ult i32 %i.bz, 1114112
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = icmp samesign ult i32 %i.bz, 128
  br i1 %i.ce, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i.1, label %.loopexit

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i.1: ; preds = %bb.t
  %i.cf = add nsw i32 %i.bz, -65
  %or.cond.i.i.1 = icmp ult i32 %i.cf, 26
  %i.cg = or disjoint i32 %i.bz, 32
  %spec.select.i.i.1 = select i1 %or.cond.i.i.1, i32 %i.cg, i32 %i.bz
  %i.ch = icmp ne i32 %spec.select.i.i.1, 105
  %i.ci = icmp eq ptr %i.by, %.sroa.4.0.copyload
  %or.cond107 = select i1 %i.ch, i1 true, i1 %i.ci
  br i1 %or.cond107, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i.1
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24 ; 2 uses
  %i.ck = load i32, ptr %i.by, align 4, !noalias !1574, !noundef !5 ; 7 uses
  %i.cl = xor i32 %i.ck, 55296
  %i.cm = add i32 %i.cl, -1114112
  %i.cn = icmp ult i32 %i.cm, -1112064
  br i1 %i.cn, label %.split.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = icmp samesign ult i32 %i.ck, 1114112
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp samesign ult i32 %i.ck, 128
  br i1 %i.cp, label %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i.2, label %.loopexit

_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i.2: ; preds = %bb.v
  %i.cq = add nsw i32 %i.ck, -65
  %or.cond.i.i.2 = icmp ult i32 %i.cq, 26
  %i.cr = or disjoint i32 %i.ck, 32
  %spec.select.i.i.2 = select i1 %or.cond.i.i.2, i32 %i.cr, i32 %i.ck
  %i.cs = icmp ne i32 %spec.select.i.i.2, 116
  %i.ct = icmp eq ptr %i.cj, %.sroa.4.0.copyload
  %or.cond108 = select i1 %i.cs, i1 true, i1 %i.ct
  br i1 %or.cond108, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %_RNCINvNtNtCs8frGy5WneL6_4fish5wutil6wcstod13parse_inf_nanINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekable8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEs0_0B8_.exit.i.2
  %i.cu = load i32, ptr %i.cj, align 4, !noalias !1574, !noundef !5 ; 7 uses
end_hunk_2
begin_hunk_3_@_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBT_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtNtB3u_8adapters10filter_map9FilterMapINtNtNtB3w_5slice4iter4IterINtNtB3w_6option6OptionBP_EENCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB6e_12RegexMatcher3news_0EEB6k_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 1, !noalias !1950 ; 3 uses
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i, %i.u
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f, %bb.g
  %.sroa.01.029.i.i.i.i.i.i.i.i.i = phi i16 [ %i.aj, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i.i.i.i.i.i.i.i
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !1948, !noalias !1951, !nonnull !5, !noundef !5
  %i.ae = sub nsw i64 0, %i.ac                    ; 2 uses
  %i.af = getelementptr inbounds [48 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -48
  %i.ah = invoke noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtCs1xwejQucwHj_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag)
          to label %.noexc6.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !1947

.noexc6.i.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  br i1 %i.ah, label %bb.l, label %bb.g, !prof !6

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.g, %bb.f
  %.not12.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i, label %bb.h, !prof !7

bb.g:                                             ; preds = %.noexc6.i.i.i.i.i.i.i
  %i.ai = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i, -1
  %i.aj = and i16 %i.ai, %.sroa.01.029.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ak = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %.thread24.i.i.i.i.i.i.i.i.i, !prof !7

.thread24.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.h
  %i.am = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.al, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i, %i.an
  %i.ap = and i64 %i.ao, %.val5.i.i.i.i.i.i.i.i
  br label %.thread.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i:                        ; preds = %.thread24.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %.sroa.4.121.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %.thread24.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = icmp eq i16 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i, %bb.h
  %.sroa.04.122.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %.sroa.4.120.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.121.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i ], [ undef, %bb.h ]
  %i.at = add i64 %i.v, 16                        ; 2 uses
  %i.au = add i64 %i.at, %.sroa.0.017.i.i.i.i.i.i.i.i.i
  br label %bb.f

bb.j:                                             ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.4.121.i.i.i.i.i.i.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !noalias !1947, !noundef !5
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %bb.k, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish.exit.thread.i.i.i.i.i.i, !prof !7

bb.k:                                             ; preds = %bb.j
  %.val62.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i.i.i.i, align 16, !noalias !1947
  %i.ay = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i.i.i.i, zeroinitializer
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i.i = icmp ne i16 %i.az, 0
  %i.ba = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.az, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i.i.i.i.i.i.i)
  br label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish.exit.thread.i.i.i.i.i.i

bb.l:                                             ; preds = %.noexc6.i.i.i.i.i.i.i
  %i.bc = load ptr, ptr %0, align 8, !alias.scope !1948, !noalias !1949, !nonnull !5
  %i.bd = getelementptr inbounds [48 x i8], ptr %i.bc, i64 %i.ae
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !1952
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i.i, i64 24, i1 false)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i unwind label %bb.m, !noalias !1947

bb.m:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i.i.i.i.i.i unwind label %bb.n, !noalias !1947

bb.n:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1947
  unreachable

common.resume.i.i.i.i.i.i:                        ; preds = %bb.s, %bb.q, %bb.m
  %common.resume.op.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i.i.i.i, %bb.q ], [ %i.bf, %bb.m ], [ %i.bz, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish.exit.thread.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %bb.k ], [ %.sroa.4.121.i.i.i.i.i.i.i.i.i, %bb.j ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1953
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.43.0..sroa_idx.i.i.i.i.i, i64 24, i1 false), !noalias !1944
  call void @llvm.experimental.noalias.scope.decl(metadata !1954)
  %i.bh = load ptr, ptr %0, align 8, !alias.scope !1955, !noalias !1956, !nonnull !5, !noundef !5 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !1957, !noundef !5
  %i.bk = and i8 %i.bj, 1
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = add i64 %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i, -16
  %i.bn = load i64, ptr %i.l, align 8, !alias.scope !1955, !noalias !1956, !noundef !5
  %i.bo = and i64 %i.bn, %i.bm
  store i8 %i.s, ptr %i.bi, align 1, !noalias !1957
  %i.bp = getelementptr i8, ptr %i.bh, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store i8 %i.s, ptr %i.bq, align 1, !noalias !1957
  %i.br = load <2 x i64>, ptr %i.n, align 8, !alias.scope !1955, !noalias !1956
  %i.bs = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bl, i64 0
  %i.bt = sub <2 x i64> %i.br, %i.bs
  store <2 x i64> %i.bt, ptr %i.n, align 8, !alias.scope !1955, !noalias !1956
  %i.bu = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds [48 x i8], ptr %i.bh, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !1958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1k_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB3c_7HashMapB1g_B1S_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionB1g_EENCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB75_12RegexMatcher3news_0EE0E0B7b_.exit.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %bb.e, %bb.d
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %bb.q unwind label %bb.p, !noalias !1959

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1959
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #29
          to label %common.resume.i.i.i.i.i.i unwind label %bb.p, !noalias !1959

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i: ; preds = %bb.l
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !1947
  %.pr.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !1960, !noalias !1945
  %i.by = icmp eq i64 %.pr.i.i.i.i.i.i, -1
  br i1 %i.by, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1k_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB3c_7HashMapB1g_B1S_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionB1g_EENCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB75_12RegexMatcher3news_0EE0E0B7b_.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i unwind label %bb.s, !noalias !1961

bb.s:                                             ; preds = %bb.r
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i.i.i.i.i.i unwind label %bb.t, !noalias !1961

bb.t:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !1961
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i: ; preds = %bb.r
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !1961
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1k_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB3c_7HashMapB1g_B1S_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionB1g_EENCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB75_12RegexMatcher3news_0EE0E0B7b_.exit.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1k_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB3c_7HashMapB1g_B1S_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionB1g_EENCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB75_12RegexMatcher3news_0EE0E0B7b_.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringINtNtBR_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1945
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringETB1x_INtNtB1B_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEuNCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB3y_12RegexMatcher3news_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2a_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5R_7HashMapB1x_B2f_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB4V_7collect6ExtendB2a_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB3q_EE0E0E0B3E_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringETB1x_INtNtB1B_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEuNCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB3y_12RegexMatcher3news_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2a_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5R_7HashMapB1x_B2f_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB4V_7collect6ExtendB2a_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB3q_EE0E0E0B3E_.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callTNtNtCs1xwejQucwHj_5alloc6string6StringINtNtB1k_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB3c_7HashMapB1g_B1S_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtBa_7collect6ExtendB1f_E6extendINtNtNtBc_8adapters10filter_map9FilterMapINtNtNtBe_5slice4iter4IterINtNtBe_6option6OptionB1g_EENCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB75_12RegexMatcher3news_0EE0E0B7b_.exit.i.i.i.i, %_RNCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB7_12RegexMatcher3news_0Bd_.exit.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1941
  %i.cb = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.k
  br i1 %i.cc, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEENCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB2D_12RegexMatcher3news_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4H_7HashMapB1R_INtNtB1V_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3U_7collect6ExtendTB1R_B5u_EE6extendB3_E0EB2J_.exit, label %bb.c

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEENCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB2D_12RegexMatcher3news_0ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4H_7HashMapB1R_INtNtB1V_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3U_7collect6ExtendTB1R_B5u_EE6extendB3_E0EB2J_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringETB1x_INtNtB1B_3vec3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEEuNCNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6string5matchNtB3y_12RegexMatcher3news_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2a_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5R_7HashMapB1x_B2f_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB4V_7collect6ExtendB2a_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB3q_EE0E0E0B3E_.exit.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2C_8adapters3map3MapIB3D_INtNtNtB2E_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB4E_8wildcard8expanderNtB5o_16WildCardExpander3new0ENCINvXs8_NtB9_3setINtB6r_7HashSetBP_B1H_EIB2w_BP_E6extendB44_E0EEB4E_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 56                  ; 2 uses
  %i.h = lshr i64 %i.g, 1
  %.sroa.0.0 = select i1 %i.c, i64 0, i64 %i.h
  %.sroa.0.1 = sub nsw i64 %i.g, %.sroa.0.0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  tail call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1v_8wildcard8expanderNtB2f_16WildCardExpander3new0ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3i_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB41_E6extendBX_E0ENtNtB5L_8iterator8Iterator4folduNCINvNvB6u_8for_each4callTB41_uENCINvXs1i_NtB3k_3mapINtB7G_7HashMapB41_uB4S_EIB5H_B7p_E6extendBN_E0E0EB1v_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2C_8adapters3map3MapINtNtNtB2E_5array4iter8IntoIterBP_Kj1_ENCINvXs8_NtB9_3setINtB4Q_7HashSetBP_B1H_EIB2w_BP_E6extendABP_B4D_E0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !1965
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  %.val = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3 = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.f = sub nuw i64 %.val3, %.val                ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0 = select i1 %i.d, i64 0, i64 %i.g
  %.sroa.0.1 = sub i64 %i.f, %.sroa.0.0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5array4iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2q_7HashSetB1l_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1l_E6extendAB1l_B2d_E0ENtNtB46_8iterator8Iterator8for_eachNCINvXs1i_NtB2s_3mapINtB5E_7HashMapB1l_uB3d_EIB42_TB1l_uEE6extendB3_E0ECs8frGy5WneL6_4fish.exit unwind label %bb.b

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_5array4iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2q_7HashSetB1l_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1l_E6extendAB1l_B2d_E0ENtNtB46_8iterator8Iterator8for_eachNCINvXs1i_NtB2s_3mapINtB5E_7HashMapB1l_uB3d_EIB42_TB1l_uEE6extendB3_E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2w_7HashSetB1r_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1r_E6extendAB1r_B2j_E0ENtNtB4c_8iterator8Iterator4folduNCINvNvB51_8for_each4callTB1r_uENCINvXs1i_NtB2y_3mapINtB6d_7HashMapB1r_uB3j_EIB48_B5W_E6extendBN_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2I_7HashSetB1D_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBI_6traits7collect6ExtendB1D_E6extendAB1D_B2v_E0EECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEj1_NtB4_11PartialDrop12partial_dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.val, i64 noundef %.val3)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB4_5array4iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringKj1_ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2I_7HashSetB1D_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBI_6traits7collect6ExtendB1D_E6extendAB1D_B2v_E0EECs8frGy5WneL6_4fish.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2C_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterBP_ENCINvXs8_NtB9_3setINtB55_7HashSetBP_B1H_EIB2w_BP_E6extendINtB49_3VecBP_EE0EECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !1969
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.g = ptrtoint ptr %.val3 to i64
  %i.h = ptrtoint ptr %.val to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = udiv exact i64 %i.i, 24                  ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %.sroa.0.0 = select i1 %i.d, i64 0, i64 %i.k
  %.sroa.0.1 = sub nsw i64 %i.j, %.sroa.0.0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
          to label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2G_7HashSetB1F_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1F_E6extendINtBW_3VecB1F_EE0ENtNtB4m_8iterator8Iterator8for_eachNCINvXs1i_NtB2I_3mapINtB60_7HashMapB1F_uB3t_EIB4i_TB1F_uEE6extendB3_E0ECs8frGy5WneL6_4fish.exit unwind label %bb.b

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2G_7HashSetB1F_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1F_E6extendINtBW_3VecB1F_EE0ENtNtB4m_8iterator8Iterator8for_eachNCINvXs1i_NtB2I_3mapINtB60_7HashMapB1F_uB3t_EIB4i_TB1F_uEE6extendB3_E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2M_7HashSetB1L_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1L_E6extendINtB12_3VecB1L_EE0ENtNtB4s_8iterator8Iterator4folduNCINvNvB5o_8for_each4callTB1L_uENCINvXs1i_NtB2O_3mapINtB6A_7HashMapB1L_uB3z_EIB4o_B6j_E6extendBN_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2Y_7HashSetB1X_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBI_6traits7collect6ExtendB1X_E6extendINtB1e_3VecB1X_EE0EECs8frGy5WneL6_4fish.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.m

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB2Y_7HashSetB1X_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBI_6traits7collect6ExtendB1X_E6extendINtB1e_3VecB1X_EE0EECs8frGy5WneL6_4fish.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB7_7HashMapRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTBP_B1A_EE6extendINtNtNtB3A_5array4iter8IntoIterB4k_Kj26_EEB1I_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(928) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [928 x i8], align 8               ; 3 uses
  %.sroa.0.0.copyload8 = load i64, ptr %1, align 8, !alias.scope !2004 ; 4 uses
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload10 = load i64, ptr %.sroa.6.0..sroa_idx9, align 8, !alias.scope !2004 ; 4 uses
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  %i.f = sub nuw i64 %.sroa.6.0.copyload10, %.sroa.0.0.copyload8 ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = and i64 %i.f, 1
  %.sroa.0.0 = add nuw i64 %i.g, %i.h
  %.sroa.0.1 = select i1 %i.e, i64 %i.f, i64 %.sroa.0.0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEE7reserveNCINvNtB8_3map11make_hasherBQ_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(912) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(912) %.sroa.8.0..sroa_idx11, i64 912, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.j = icmp ule i64 %.sroa.0.0.copyload8, %.sroa.6.0.copyload10
  tail call void @llvm.assume(i1 %i.j)
  %.not2.i.i.i = icmp eq i64 %.sroa.0.0.copyload8, %.sroa.6.0.copyload10
  br i1 %.not2.i.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEKj26_ENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB3H_7HashMapBO_B1z_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB2N_7collect6ExtendBN_E6extendB3_E0EB1H_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB45_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB6n_7HashMapB1Y_B2J_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB5k_7collect6ExtendB1X_E6extendINtBa_8IntoIterB1X_Kj26_EE0E0E0B4q_E0B2R_.exit.i.i.i, %.lr.ph.i.i.i
  %i.n = phi i64 [ %.sroa.0.0.copyload8, %.lr.ph.i.i.i ], [ %i.o, %_RNCINvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEEE8try_folduNCINvMNtNtBe_3ops9try_traitINtB45_17NeverShortCircuituE10wrap_mut_2uB1X_NCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB6n_7HashMapB1Y_B2J_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB5k_7collect6ExtendB1X_E6extendINtBa_8IntoIterB1X_Kj26_EE0E0E0B4q_E0B2R_.exit.i.i.i ] ; 3 uses
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %i.p = icmp ult i64 %i.n, 38
  call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0..sroa_idx, i64 %i.n ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2009, !noalias !2010, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.42.0.copyload.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2009, !noalias !2010 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.53.0.copyload.i.i.i.i = load i24, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2009, !noalias !2010
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2012
  store ptr %.sroa.01.0.copyload.i.i.i.i, ptr %i.a, align 8, !noalias !2013
  store i64 %.sroa.42.0.copyload.i.i.i.i, ptr %i.k, align 8, !noalias !2013
  %i.r = call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) ; 2 uses
  call void @_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtNtNtCs8frGy5WneL6_4fish8builtins4test16test_expressions5TokenEE7reserveNCINvNtB8_3map11make_hasherBQ_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2014, !noalias !2015, !nonnull !5, !noundef !5 ; 3 uses
  %.val5.i.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !2014, !noalias !2015, !noundef !5 ; 3 uses
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8             ; 3 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.noexc.i.i
  %.pn.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.r, %.noexc.i.i ], [ %i.av, %bb.e ]
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ undef, %.noexc.i.i ], [ %.sroa.4.120.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %.sroa.04.122.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %i.w = phi i64 [ 0, %.noexc.i.i ], [ %i.au, %bb.e ]
  %.sroa.0.017.i.i.i.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i.i.i.i, %.val5.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.x, align 1, !noalias !2016 ; 3 uses
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i, %i.v
  %i.z = bitcast <16 x i1> %i.y to i16            ; 2 uses
  %.not28.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.z, 0
  br i1 %.not28.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.b, %bb.c
  %.sroa.01.029.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ak, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  %i.aa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = add i64 %.sroa.0.017.i.i.i.i.i.i.i.i.i.i, %i.ab
  %i.ad = and i64 %i.ac, %.val5.i.i.i.i.i.i.i.i.i
  %i.ae = load ptr, ptr %0, align 8, !alias.scope !2014, !noalias !2017, !nonnull !5, !noundef !5
  %i.af = sub nsw i64 0, %i.ad                    ; 2 uses
  %i.ag = getelementptr inbounds [24 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24
  %i.ai = call noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtB2_10EquivalentBq_E10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
  br i1 %i.ai, label %bb.i, label %bb.c, !prof !6

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.c, %bb.b
  %.not12.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %bb.d, !prof !7

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aj = add i16 %.sroa.01.029.i.i.i.i.i.i.i.i.i.i, -1
  %i.ak = and i16 %i.aj, %.sroa.01.029.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ak, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.al = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i.i.i.i.i, zeroinitializer
end_hunk_3
begin_hunk_4_@_RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs8frGy5WneL6_4fish:bb.a
  %or.cond10.i.i = and i1 %i.dd, %i.dc
  br i1 %or.cond10.i.i, label %bb.bn, label %.thread114.thread.i.i

bb.bm:                                            ; preds = %bb.bi, %.thread118.i.i, %bb.bh
  %.sroa.059.6.i.i = phi i8 [ %.sroa.059.0.i.i, %bb.bh ], [ %.sroa.059.1.i.i, %.thread118.i.i ], [ %.sroa.059.2.i.i, %bb.bi ]
  %i.de = trunc nuw i8 %.sroa.059.6.i.i to i1
  %i.df = icmp samesign ult i32 %spec.select.i.ph, 127488
  %or.cond29.i.i = and i1 %i.df, %i.de
  br i1 %or.cond29.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread119.i.i

.thread114.thread.i.i:                            ; preds = %.thread114.i.i
  switch i16 %.sroa.0.1.i.i, label %bb.bo [
    i16 4102, label %.thread119.i.i
    i16 16, label %bb.bp
    i16 25, label %bb.bq
    i16 26, label %bb.br
    i16 27, label %bb.bs
    i16 28, label %bb.bt
    i16 29, label %bb.bu
  ]

bb.bn:                                            ; preds = %.thread114.i.i
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 9, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 11, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 10, label %bb.cl
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
    i16 33, label %bb.cm
  ]

bb.bo:                                            ; preds = %bb.bv, %.thread114.thread.i.i
  %i.dg = add nsw i32 %spec.select.i.ph, -917552
  %or.cond98.i.i = icmp ult i32 %i.dg, 10
  br i1 %or.cond98.i.i, label %bb.cf, label %bb.bx

.thread119.i.i:                                   ; preds = %.thread114.thread.i.i, %bb.bm
  %i.dh = add nsw i32 %spec.select.i.ph, -127995
  %or.cond12.i.i = icmp ult i32 %i.dh, 5
  br i1 %or.cond12.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bv

bb.bp:                                            ; preds = %.thread114.thread.i.i
  %i.di = add nsw i32 %spec.select.i.ph, -917601
  %or.cond14.i.i = icmp ult i32 %i.di, 26
  br i1 %or.cond14.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bw

bb.bq:                                            ; preds = %.thread114.thread.i.i
  %i.dj = add nsw i32 %spec.select.i.ph, -917601
  %or.cond16.i.i = icmp ult i32 %i.dj, 26
  br i1 %or.cond16.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.by

bb.br:                                            ; preds = %.thread114.thread.i.i
  %i.dk = add nsw i32 %spec.select.i.ph, -917601
  %or.cond18.i.i = icmp ult i32 %i.dk, 26
  br i1 %or.cond18.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bz

bb.bs:                                            ; preds = %.thread114.thread.i.i
  %i.dl = add nsw i32 %spec.select.i.ph, -917601
  %or.cond20.i.i = icmp ult i32 %i.dl, 26
  br i1 %or.cond20.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ca

bb.bt:                                            ; preds = %.thread114.thread.i.i
  %i.dm = add nsw i32 %spec.select.i.ph, -917601
  %or.cond22.i.i = icmp ult i32 %i.dm, 26
  br i1 %or.cond22.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cc

bb.bu:                                            ; preds = %.thread114.thread.i.i
  %i.dn = add nsw i32 %spec.select.i.ph, -917601
  %or.cond24.i.i = icmp ult i32 %i.dn, 26
  br i1 %or.cond24.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.ce

bb.bv:                                            ; preds = %.thread119.i.i
  %i.do = icmp eq i32 %spec.select.i.ph, 917631
  br i1 %i.do, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bo

bb.bw:                                            ; preds = %bb.bp
  %i.dp = add nsw i32 %spec.select.i.ph, -917552
  %or.cond92.i.i = icmp ult i32 %i.dp, 10
  br i1 %or.cond92.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %bb.by, %bb.bw, %bb.bo
  %i.dq = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dq, label %bb.cg, label %.thread137.i.i

bb.by:                                            ; preds = %bb.bq
  %i.dr = add nsw i32 %spec.select.i.ph, -917552
  %or.cond93.i.i = icmp ult i32 %i.dr, 10
  br i1 %or.cond93.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.bz:                                            ; preds = %bb.br
  %i.ds = add nsw i32 %spec.select.i.ph, -917552
  %or.cond94.i.i = icmp ult i32 %i.ds, 10
  br i1 %or.cond94.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.bx

bb.ca:                                            ; preds = %bb.bs
  %i.dt = add nsw i32 %spec.select.i.ph, -917552
  %or.cond95.i.i = icmp ult i32 %i.dt, 10
  br i1 %or.cond95.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.du = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.du, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

.thread137.i.i:                                   ; preds = %bb.bx
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
    i16 33, label %bb.cm
  ]

bb.cc:                                            ; preds = %bb.bt
  %i.dv = add nsw i32 %spec.select.i.ph, -917552
  %or.cond96.i.i = icmp ult i32 %i.dv, 10
  br i1 %or.cond96.i.i, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.dw = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dw, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.ce:                                            ; preds = %bb.bu
  %i.dx = icmp eq i32 %spec.select.i.ph, 127988
  br i1 %i.dx, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.cf:                                            ; preds = %bb.bo
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 16, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 25, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 26, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 27, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 28, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 17, label %bb.cj
    i16 18, label %bb.ck
    i16 4102, label %bb.ch
    i16 32, label %bb.ci
  ]

bb.cg:                                            ; preds = %bb.bx
  switch i16 %.sroa.0.1.i.i, label %.thread121.i.i [
    i16 27, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 28, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 29, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 30, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 19, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit
    i16 4102, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.thread137.i.i, %bb.bn
  %i.dy = tail call fastcc { i8, i16 } @_RNvNtCsfc8f8SDE2Co_13unicode_width6tables12lookup_width(i32 noundef range(i32 0, 1114112) %spec.select.i.ph) #35
  %i.dz = extractvalue { i8, i16 } %i.dy, 1
  %i.ea = icmp eq i16 %i.dz, 5
  br i1 %i.ea, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.ci:                                            ; preds = %bb.cf, %.thread137.i.i, %bb.bn
  %switch.tableidx2 = add i32 %spec.select.i.ph, -93539 ; 4 uses
  %i.eb = icmp ult i32 %switch.tableidx2, 7
  %switch.maskindex6 = trunc i32 %switch.tableidx2 to i8
  %switch.shifted7 = lshr i8 113, %switch.maskindex6
  %switch.lobit8 = trunc i8 %switch.shifted7 to i1
  %or.cond10 = select i1 %i.eb, i1 %switch.lobit8, i1 false
  br i1 %or.cond10, label %switch.lookup5, label %.thread121.i.i

bb.cj:                                            ; preds = %bb.cf
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.ck:                                            ; preds = %bb.cf
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cl:                                            ; preds = %bb.bn
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cm:                                            ; preds = %.thread137.i.i, %bb.bn
  %i.ec = icmp eq i32 %spec.select.i.ph, 93539
  br i1 %i.ec, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, label %.thread121.i.i

bb.cn:                                            ; preds = %bb.cp, %bb.r
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.co:                                            ; preds = %bb.r
  %i.ed = icmp ne i16 %.sroa.0.0.i.i, 1
  %spec.select.i.i = zext i1 %i.ed to i8
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

bb.cp:                                            ; preds = %bb.p
  %cond30.i.i = icmp eq i32 %spec.select.i.ph, 10
  br i1 %cond30.i.i, label %bb.cn, label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

switch.lookup5:                                   ; preds = %bb.ci
  %i.ee = zext nneg i32 %switch.tableidx2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvYNtNtNtCs3oUPovFnLWP_4core3str4iter5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator5rfoldTjNtNtCsfc8f8SDE2Co_13unicode_width6tables9WidthInfoENCNvB1N_9str_width0ECs8frGy5WneL6_4fish, i64 %i.ee
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.ef = shl nuw nsw i32 %switch.tableidx2, 3
  %switch.shiftamt = zext nneg i32 %i.ef to i56
  %switch.downshift = lshr i56 1099511627776, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit

_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.ai, %switch.lookup5, %bb.al, %bb.al, %bb.ao, %bb.n, %bb.r, %.thread121.i.i, %bb.t, %bb.u, %bb.v, %._crit_edge.i.i.i.i, %bb.an, %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ax, %bb.az, %bb.bb, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bh, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bj, %bb.bl, %bb.bm, %bb.bn, %bb.bn, %.thread119.i.i, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cf, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp
  %.sroa.51.1.i.i = phi i16 [ 5, %bb.n ], [ 0, %bb.cm ], [ 5, %bb.cd ], [ %i.cc, %bb.an ], [ 0, %bb.cp ], [ 30, %bb.bu ], [ 11, %bb.cl ], [ 10, %bb.bn ], [ 5, %bb.ch ], [ %i.ba, %.thread121.i.i ], [ 10, %bb.bn ], [ %switch.ext, %switch.lookup5 ], [ 1, %bb.cn ], [ 25, %bb.bp ], [ 18, %bb.cj ], [ 19, %bb.ck ], [ 28, %bb.bs ], [ 9, %bb.bm ], [ 2, %.thread119.i.i ], [ 16, %bb.bv ], [ 17, %bb.by ], [ 26, %bb.bq ], [ 27, %bb.br ], [ 5, %bb.cb ], [ 29, %bb.bt ], [ 4103, %bb.bl ], [ 4, %bb.bh ], [ %.sroa.052.0.i.i, %bb.v ], [ 0, %._crit_edge.i.i.i.i ], [ 5, %bb.bb ], [ 4102, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.be ], [ 0, %bb.bf ], [ 0, %bb.bg ], [ 15364, %bb.ax ], [ 0, %bb.az ], [ %.sroa.0.1.i.i, %bb.al ], [ 0, %bb.aq ], [ 12543, %bb.aw ], [ 0, %bb.ar ], [ 0, %bb.as ], [ 15362, %bb.at ], [ %.sroa.051.0.i.i, %bb.u ], [ %.sroa.050.0.i.i, %bb.t ], [ %.sroa.0.1.i.i, %bb.al ], [ %.sroa.0.1.i.i, %bb.ao ], [ 0, %bb.r ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 15364, %bb.ax ], [ 0, %bb.co ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4102, %bb.bi ], [ 4, %bb.bh ], [ 17, %bb.bw ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cf ], [ 17, %bb.cc ], [ 17, %bb.ca ], [ 17, %bb.bz ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.cg ], [ 5, %bb.ce ], [ 0, %bb.ai ]
  %.sroa.046.1.i.i = phi i8 [ %..i.i, %bb.n ], [ 0, %bb.cm ], [ 0, %bb.cd ], [ 0, %bb.an ], [ 1, %bb.cp ], [ 0, %bb.bu ], [ 3, %bb.cl ], [ -1, %bb.bn ], [ 0, %bb.ch ], [ %i.az, %.thread121.i.i ], [ -1, %bb.bn ], [ %switch.masked, %switch.lookup5 ], [ 1, %bb.cn ], [ 0, %bb.bp ], [ 0, %bb.cj ], [ 0, %bb.ck ], [ 0, %bb.bs ], [ 1, %bb.bm ], [ 0, %.thread119.i.i ], [ 0, %bb.bv ], [ 0, %bb.by ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.cb ], [ 0, %bb.bt ], [ 0, %bb.bl ], [ 1, %bb.bh ], [ 0, %bb.v ], [ 1, %._crit_edge.i.i.i.i ], [ 0, %bb.bb ], [ 0, %bb.bj ], [ 0, %bb.au ], [ 0, %bb.be ], [ 0, %bb.bf ], [ -1, %bb.bg ], [ 1, %bb.ax ], [ 0, %bb.az ], [ 0, %bb.al ], [ 0, %bb.aq ], [ 0, %bb.aw ], [ 0, %bb.ar ], [ -1, %bb.as ], [ 0, %bb.at ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.al ], [ 0, %bb.ao ], [ 1, %bb.r ], [ 0, %bb.av ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 0, %bb.aq ], [ 1, %bb.ax ], [ %spec.select.i.i, %bb.co ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 0, %bb.bi ], [ 1, %bb.bh ], [ 0, %bb.bw ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cf ], [ 0, %bb.cc ], [ 0, %bb.ca ], [ 0, %bb.bz ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.cg ], [ 0, %bb.ce ], [ 2, %bb.ai ]
  %2 = sext i8 %.sroa.046.1.i.i to i64
  %3 = add i64 %.sroa.0.022, %2                   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.3.ph) ]
  %.not.i = icmp eq ptr %0, %.sroa.2.3.ph
  br i1 %.not.i, label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit, label %.lr.ph

_RNvXs0_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_5CharsNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back.exit: ; preds = %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %3, %_RNCNvNtCsfc8f8SDE2Co_13unicode_width6tables9str_width0Cs8frGy5WneL6_4fish.exit ]
  ret i64 %.sroa.0.0.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB4_12EnvUniversal4sync0B6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(96) %0, ptr nofree readonly captures(address, read_provenance) %.0.val, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [96 x i8], align 8                ; 12 uses
  %i.d = alloca [56 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCs8frGy5WneL6_4fish5wutil6fileid16file_id_for_file(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1)
  call fastcc void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal14load_from_file(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %.0.val, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(56) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !16, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.p, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 200 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !16, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit18, %bb.c
  %i.m = phi i8 [ %.pre1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit18 ], [ 0, %bb.c ]
  store i64 -1, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.m, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  call fastcc void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal19serialize_with_vars(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = invoke noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %.not13 = icmp eq ptr %i.s, null
  br i1 %.not13, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.u, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ae, %bb.f, %.body, %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.v, %bb.i ], [ %i.x, %bb.l ], [ %.pn, %.body ], [ %i.ap, %bb.ae ], [ %i.ao, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ac

bb.k:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit18 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit18: ; preds = %bb.k
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre1 = load i8, ptr %i.j, align 8, !range !16
  br label %bb.d

bb.n:                                             ; preds = %bb.s, %.body, %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit24, %bb.b
  %i.aa = phi i8 [ %.pre, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit24 ], [ 0, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ac

bb.p:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  invoke fastcc void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal19serialize_with_vars(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab)
          to label %bb.r unwind label %bb.q

.body:                                            ; preds = %bb.z, %bb.v, %bb.q, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.s ], [ %i.ak, %bb.v ], [ %i.ac, %bb.q ], [ %i.am, %bb.z ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateNtNtBG_20env_universal_common19UniversalReadUpdateEEBG_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #29
          to label %common.resume unwind label %bb.n

bb.q:                                             ; preds = %bb.aa, %bb.w, %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = invoke noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag)
          to label %bb.t unwind label %bb.s       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #29
          to label %.body unwind label %bb.n

bb.t:                                             ; preds = %bb.r
  %.not14 = icmp eq ptr %i.ah, null
  br i1 %.not14, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.aj, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit20 unwind label %bb.q

bb.x:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.y:                                             ; preds = %bb.t
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.ab

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit24 unwind label %bb.q

bb.ab:                                            ; preds = %bb.z
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit24: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre = load i8, ptr %i.g, align 8, !range !16
  br label %bb.o

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs8frGy5WneL6_4fish2fs15PotentialUpdateNtNtBG_20env_universal_common19UniversalReadUpdateEEBG_.exit, %bb.d, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

end_hunk_4
begin_hunk_5_@_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal14load_from_file:bb.a
  %i.x = alloca [1 x i8], align 1                 ; 3 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [32 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 17 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [24 x i8], align 8               ; 8 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 6 uses
  %i.ap = alloca [24 x i8], align 8               ; 17 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [1 x i8], align 1                ; 3 uses
  %i.at = alloca [1 x i8], align 1                ; 3 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 17 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 6 uses
  %i.bl = alloca [24 x i8], align 8               ; 17 uses
  %i.bm = alloca [24 x i8], align 8               ; 10 uses
  %i.bn = alloca [32 x i8], align 8               ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [65 x i8], align 1               ; 7 uses
  %i.bq = alloca [24 x i8], align 8               ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [24 x i8], align 8               ; 6 uses
  %i.bu = alloca [24 x i8], align 8               ; 13 uses
  %i.bv = alloca [24 x i8], align 8               ; 16 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 8 uses
  %i.by = alloca [16 x i8], align 8               ; 4 uses
  %i.bz = alloca [32 x i8], align 8               ; 7 uses
  %i.ca = alloca [32 x i8], align 8               ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 7 uses
  %i.cc = alloca [32 x i8], align 8               ; 7 uses
  %i.cd = alloca [24 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 20 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = alloca [24 x i8], align 8               ; 6 uses
  %i.ch = alloca [24 x i8], align 8               ; 13 uses
  %i.ci = alloca [32 x i8], align 8               ; 7 uses
  %i.cj = alloca [24 x i8], align 8               ; 7 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.01 = alloca [72 x i8], align 8           ; 3 uses
  %i.cl = alloca [24 x i8], align 8               ; 5 uses
  %i.cm = alloca [48 x i8], align 8               ; 17 uses
  %i.cn = alloca [24 x i8], align 8               ; 6 uses
  %i.co = alloca [24 x i8], align 8               ; 17 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2340)
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !2339, !noalias !2340, !noundef !5
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !2340, !noalias !2339, !noundef !5
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.b, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !2339, !noalias !2340, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !2340, !noalias !2339, !noundef !5
  %i.cz = icmp eq i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.c, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !2339, !noalias !2340, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !2340, !noalias !2339, !noundef !5
  %i.de = icmp eq i64 %i.db, %i.dd
  br i1 %i.de, label %bb.d, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !2339, !noalias !2340, !noundef !5
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !2340, !noalias !2339, !noundef !5
  %i.dj = icmp eq i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.e, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dl = load i64, ptr %i.dk, align 8, !alias.scope !2339, !noalias !2340, !noundef !5
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !2340, !noalias !2339, !noundef !5
  %i.do = icmp eq i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.f, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.dp = load i64, ptr %3, align 8, !alias.scope !2339, !noalias !2340, !noundef !5
  %i.dq = load i64, ptr %i.cp, align 8, !alias.scope !2340, !noalias !2339, !noundef !5
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.f
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !2339, !noalias !2340, !noundef !5
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !2340, !noalias !2339, !noundef !5
  %i.dw = icmp eq i64 %i.dt, %i.dv
  br i1 %i.dw, label %bb.he, label %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.e, %bb.a, %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.dx = tail call { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54) ; 2 uses
  %i.dy = extractvalue { i64, i64 } %i.dx, 0
  %i.dz = extractvalue { i64, i64 } %i.dx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 4 uses
  store i64 %i.dy, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store i64 %i.dz, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !2341
  store i64 0, ptr %i.ch, align 8, !noalias !2341
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ea, align 8, !noalias !2341
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  store i64 0, ptr %i.eb, align 8, !noalias !2341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !2341
  store ptr %2, ptr %i.cg, align 8, !noalias !2341
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 16777216, ptr %i.ec, align 8, !noalias !2341
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i64 16777216, ptr %i.ed, align 8, !noalias !2341
  %i.ee = invoke { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io4read19default_read_to_endINtNtNtCs3oUPovFnLWP_4core2io4util4TakeRNtNtCsaL1QbXo9JQH_3std2fs4FileEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch, i64 noundef 0, i64 undef)
          to label %bb.j unwind label %.loopexit.split-lp94.i, !noalias !2342 ; 2 uses

.body28.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.bw, %bb.bf, %.body20.i, %.loopexit.split-lp94.i, %.loopexit93.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body20.i ], [ %lpad.loopexit.split-lp96.i, %.loopexit.split-lp94.i ], [ %i.lz, %bb.bw ], [ %i.im, %bb.bf ], [ %lpad.loopexit95.i, %.loopexit93.i ], [ %.pn.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.body28.i
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body76 unwind label %bb.i

bb.h:                                             ; preds = %.body28.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ch)
          to label %.body unwind label %bb.as

bb.i:                                             ; preds = %bb.g
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.loopexit93.i:                                    ; preds = %bb.bd, %bb.bb
  %lpad.loopexit95.i = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i

.loopexit.split-lp94.i:                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit16.i.i, %bb.az, %.loopexit98.i, %bb.o, %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  %lpad.loopexit.split-lp96.i = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i

bb.j:                                             ; preds = %_RNvXsf_NtNtCs8frGy5WneL6_4fish5wutil6fileidNtB5_6FileIdNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  %i.eh = extractvalue { i64, ptr } %i.ee, 0
  %i.ei = trunc nuw i64 %i.eh to i1
  br i1 %i.ei, label %bb.l, label %bb.aq

.body20.i:                                        ; preds = %bb.am, %.body.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.ej, %bb.k ], [ %i.hc, %bb.am ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr nonnull %i.ek) #29
          to label %.body28.i unwind label %bb.as

bb.k:                                             ; preds = %bb.an
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i

bb.l:                                             ; preds = %bb.j
  %i.ek = extractvalue { i64, ptr } %i.ee, 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !2341
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  store ptr %i.ek, ptr %i.cf, align 8, !noalias !2341
  %i.el = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7warning, i64 40) monotonic, align 8, !noalias !2341
  %.not.i = icmp eq i8 %i.el, 0
  br i1 %.not.i, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !2341
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = and i64 %i.em, 3
  switch i64 %i.en, label %default.unreachable [
    i64 2, label %bb.ap
    i64 3, label %bb.n
    i64 0, label %bb.ap
    i64 1, label %bb.o
  ], !prof !19

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.eo = icmp ult ptr %i.ek, inttoptr (i64 188978561024 to ptr)
  %i.ep = and i64 %i.em, 1095216660480
  %i.eq = icmp ne i64 %i.ep, 1095216660480
  call void @llvm.assume(i1 %i.eo)
  call void @llvm.assume(i1 %i.eq)
  br label %bb.ap

bb.o:                                             ; preds = %bb.m
  %i.er = getelementptr i8, ptr %i.ek, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  %i.es = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  store ptr %i.er, ptr %i.es, align 8, !alias.scope !2343, !noalias !2341
  store i8 3, ptr %i.by, align 8, !alias.scope !2343, !noalias !2341
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.es)
          to label %bb.ap unwind label %.loopexit.split-lp94.i

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !2341
  store i64 0, ptr %i.ce, align 8, !noalias !2341
  %i.et = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.et, align 8, !noalias !2341
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 8 uses
  store i64 0, ptr %i.eu, align 8, !noalias !2341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !2341
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories7warning, i64 24))
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.ab, %bb.z, %bb.y, %bb.w, %bb.v, %bb.t, %bb.r, %bb.p
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ad, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ev, %bb.q ], [ %i.go, %bb.ad ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ce) #29
          to label %.body20.i unwind label %bb.as

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !2341
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !2341, !nonnull !5, !noundef !5 ; 3 uses
  %i.ey = load i64, ptr %i.cd, align 8, !range !12, !noalias !2341, !noundef !5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !noalias !2341, !noundef !5 ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, -1
  call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa
  store ptr %i.ex, ptr %i.cc, align 8, !noalias !2341
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %i.ey, ptr %i.fd, align 8, !noalias !2341
  %i.fe = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.ex, ptr %i.fe, align 8, !noalias !2341
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.fc, ptr %i.ff, align 8, !noalias !2341
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cc)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !2341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !2341
  %i.fg = load i64, ptr %i.eu, align 8, !alias.scope !2344, !noalias !2341, !noundef !5 ; 4 uses
  %i.fh = load i64, ptr %i.ce, align 8, !range !12, !alias.scope !2344, !noalias !2341, !noundef !5
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce) #32
          to label %bb.u unwind label %bb.q

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fj = load ptr, ptr %i.et, align 8, !alias.scope !2344, !noalias !2341, !nonnull !5, !noundef !5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  store i8 58, ptr %i.fk, align 1
  %i.fl = add i64 %i.fg, 1                        ; 3 uses
  store i64 %i.fl, ptr %i.eu, align 8, !alias.scope !2344, !noalias !2341
  %i.fm = load i64, ptr %i.ce, align 8, !range !12, !alias.scope !2345, !noalias !2341, !noundef !5
  %i.fn = icmp eq i64 %i.fl, %i.fm
  br i1 %i.fn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce) #32
          to label %bb.w unwind label %bb.q

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fo = load ptr, ptr %i.et, align 8, !alias.scope !2345, !noalias !2341, !nonnull !5, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fl
  store i8 32, ptr %i.fp, align 1
  %i.fq = add i64 %i.fg, 2
  store i64 %i.fq, ptr %i.eu, align 8, !alias.scope !2345, !noalias !2341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !2341
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, i64 noundef 20, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.x unwind label %bb.q

bb.x:                                             ; preds = %bb.w
  %i.fr = load i64, ptr %i.cb, align 8, !range !9, !noalias !2341, !noundef !5
  %i.fs = trunc nuw i64 %i.fr to i1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  br i1 %i.fs, label %bb.y, label %bb.z, !prof !7

bb.y:                                             ; preds = %bb.x
  %i.fu = load i64, ptr %i.ft, align 8, !range !24, !noalias !2341, !noundef !5
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !2341
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.fu, i64 %i.fw) #33
          to label %bb.ar unwind label %bb.q

bb.z:                                             ; preds = %bb.x
  %i.fx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !2341, !nonnull !5, !noundef !5 ; 4 uses
  %i.fz = load i64, ptr %i.ft, align 8, !range !12, !noalias !2341, !noundef !5 ; 2 uses
  %i.ga = icmp samesign ugt i64 %i.fz, 19
  call void @llvm.assume(i1 %i.ga)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !2341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.fy, ptr noundef nonnull align 1 dereferenceable(20) @72, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !2341
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  store ptr %i.fy, ptr %i.ca, align 8, !noalias !2341
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %i.fz, ptr %i.gc, align 8, !noalias !2341
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.fy, ptr %i.gd, align 8, !noalias !2341
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store ptr %i.gb, ptr %i.ge, align 8, !noalias !2341
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ca)
          to label %bb.aa unwind label %bb.q

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !2341
  %i.gf = load i64, ptr %i.eu, align 8, !alias.scope !2346, !noalias !2341, !noundef !5 ; 3 uses
  %i.gg = load i64, ptr %i.ce, align 8, !range !12, !alias.scope !2346, !noalias !2341, !noundef !5
  %i.gh = icmp eq i64 %i.gf, %i.gg
  br i1 %i.gh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ce) #32
          to label %bb.ac unwind label %bb.q

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gi = load ptr, ptr %i.et, align 8, !alias.scope !2346, !noalias !2341, !nonnull !5, !noundef !5
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gf
  store i8 32, ptr %i.gj, align 1
  %i.gk = add i64 %i.gf, 1
  store i64 %i.gk, ptr %i.eu, align 8, !alias.scope !2346, !noalias !2341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !2347
  store i64 0, ptr %i.bx, align 8, !noalias !2347
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2347
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !2347
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 1610612768, ptr %i.gl, align 8, !noalias !2347
  store ptr %i.bx, ptr %i.bw, align 8, !noalias !2347
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr @4, ptr %i.gm, align 8, !noalias !2347
  %i.gn = invoke noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cf, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %bb.ae unwind label %bb.ad, !noalias !2348

bb.ad:                                            ; preds = %bb.af, %bb.ac
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bx) #29
          to label %.body.i unwind label %bb.ag, !noalias !2348

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.gn, label %bb.af, label %bb.ah, !prof !7

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #31
          to label %.noexc.i.i unwind label %bb.ad, !noalias !2348

.noexc.i.i:                                       ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2348
  unreachable

end_hunk_5
begin_hunk_6_@_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal21load_from_path_narrow:bb.a
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.lh, ptr %i.lk, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ao)
          to label %bb.cs unwind label %bb.cq

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.ll = load i64, ptr %i.kz, align 8, !alias.scope !2590, !noundef !5 ; 4 uses
  %i.lm = load i64, ptr %i.ay, align 8, !range !12, !alias.scope !2590, !noundef !5
  %i.ln = icmp eq i64 %i.ll, %i.lm
  br i1 %i.ln, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay) #32
          to label %bb.cu unwind label %bb.cq

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.lo = load ptr, ptr %i.ky, align 8, !alias.scope !2590, !nonnull !5, !noundef !5
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.ll
  store i8 58, ptr %i.lp, align 1
  %i.lq = add i64 %i.ll, 1                        ; 3 uses
  store i64 %i.lq, ptr %i.kz, align 8, !alias.scope !2590
  %i.lr = load i64, ptr %i.ay, align 8, !range !12, !alias.scope !2591, !noundef !5
  %i.ls = icmp eq i64 %i.lq, %i.lr
  br i1 %i.ls, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay) #32
          to label %bb.cw unwind label %bb.cq

bb.cw:                                            ; preds = %bb.cu, %bb.cv
  %i.lt = load ptr, ptr %i.ky, align 8, !alias.scope !2591, !nonnull !5, !noundef !5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.lq
  store i8 32, ptr %i.lu, align 1
  %i.lv = add i64 %i.ll, 2
  store i64 %i.lv, ptr %i.kz, align 8, !alias.scope !2591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, i64 noundef 31, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cx unwind label %bb.cq

bb.cx:                                            ; preds = %bb.cw
  %i.lw = load i64, ptr %i.an, align 8, !range !9, !noundef !5
  %i.lx = trunc nuw i64 %i.lw to i1
  %i.ly = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  br i1 %i.lx, label %bb.cy, label %bb.cz, !prof !7

bb.cy:                                            ; preds = %bb.cx
  %i.lz = load i64, ptr %i.ly, align 8, !range !24, !noundef !5
  %i.ma = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.mb = load i64, ptr %i.ma, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.lz, i64 %i.mb) #33
          to label %bb.dm unwind label %bb.cq

bb.cz:                                            ; preds = %bb.cx
  %i.mc = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.md = load ptr, ptr %i.mc, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.me = load i64, ptr %i.ly, align 8, !range !12, !noundef !5 ; 2 uses
  %i.mf = icmp samesign ugt i64 %i.me, 30
  call void @llvm.assume(i1 %i.mf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.md, ptr noundef nonnull align 1 dereferenceable(31) @68, i64 31, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 31
  store ptr %i.md, ptr %i.am, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %i.me, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.md, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.mg, ptr %i.mj, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.am)
          to label %bb.da unwind label %bb.cq

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.mk = load i64, ptr %i.kz, align 8, !alias.scope !2592, !noundef !5 ; 3 uses
  %i.ml = load i64, ptr %i.ay, align 8, !range !12, !alias.scope !2592, !noundef !5
  %i.mm = icmp eq i64 %i.mk, %i.ml
  br i1 %i.mm, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay) #32
          to label %bb.dc unwind label %bb.cq

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.mn = load ptr, ptr %i.ky, align 8, !alias.scope !2592, !nonnull !5, !noundef !5
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mk
  store i8 10, ptr %i.mo, align 1
  %i.mp = add i64 %i.mk, 1                        ; 2 uses
  store i64 %i.mp, ptr %i.kz, align 8, !alias.scope !2592
  %i.mq = load ptr, ptr %i.ky, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mq, i64 noundef %i.mp)
          to label %bb.dd unwind label %bb.cq

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.dd
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.i

bb.dg:                                            ; preds = %_RINvNtCs8frGy5WneL6_4fish2fs13lock_and_loadNCNvMNtB4_20env_universal_commonNtBK_12EnvUniversal21load_from_path_narrow0INtNtCs3oUPovFnLWP_4core6option6OptionNtBK_19UniversalReadUpdateEEB4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.sroa.5, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i64 %.sroa.955.2, ptr %i.av, align 8
  %.sroa.15.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.15.2, ptr %.sroa.15.56..sroa_idx, align 8
  %.sroa.16.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.16.sroa.0.2, ptr %.sroa.16.56..sroa_idx, align 8
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !noundef !5 ; 2 uses
  %i.mv = add i64 %i.mu, %.sroa.18.2              ; 2 uses
  %i.mw = icmp ult i64 %i.mv, %i.mu               ; 2 uses
  br i1 %i.mw, label %bb.dj, label %bb.di

bb.dh:                                            ; preds = %_RINvNtCs8frGy5WneL6_4fish2fs13lock_and_loadNCNvMNtB4_20env_universal_commonNtBK_12EnvUniversal21load_from_path_narrow0INtNtCs3oUPovFnLWP_4core6option6OptionNtBK_19UniversalReadUpdateEEB4_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.ew

bb.di:                                            ; preds = %bb.dg
  store i64 %i.mv, ptr %i.mt, align 8
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.mx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit unwind label %bb.dn

bb.dj:                                            ; preds = %bb.dg
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #33
          to label %bb.dm unwind label %bb.dl

bb.dk:                                            ; preds = %bb.dn, %bb.dl
  %.pn = phi { ptr, i32 } [ %i.my, %bb.dl ], [ %i.mz, %bb.dn ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.av) #29
          to label %bb.dp unwind label %bb.do

bb.dl:                                            ; preds = %bb.dj
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dm:                                            ; preds = %bb.fh, %bb.ef, %bb.dj, %bb.cy
  unreachable

bb.dn:                                            ; preds = %bb.di
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.sroa.5, i64 48, i1 false)
  br label %bb.dk

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit: ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.sroa.5, i64 48, i1 false)
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 %.sroa.19.2, ptr %i.na, align 8
  store ptr %.sroa.0.2, ptr %i.bc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ew

bb.do:                                            ; preds = %bb.dq, %.body40, %bb.ez, %.body, %bb.dk, %bb.cq
  %i.nb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.dp:                                            ; preds = %bb.dk
  br i1 %i.mw, label %bb.dq, label %common.resume

bb.dq:                                            ; preds = %bb.dp
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aw)
          to label %common.resume unwind label %bb.do

.body40:                                          ; preds = %bb.et, %bb.dr, %.body
  %.pn11 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.nc, %bb.dr ], [ %i.pu, %bb.et ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr nonnull %.sroa.0.272) #29
          to label %common.resume unwind label %bb.do

bb.dr:                                            ; preds = %bb.eu
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body40

bb.ds:                                            ; preds = %_RINvNtCs8frGy5WneL6_4fish2fs13lock_and_loadNCNvMNtB4_20env_universal_commonNtBK_12EnvUniversal21load_from_path_narrow0INtNtCs3oUPovFnLWP_4core6option6OptionNtBK_19UniversalReadUpdateEEB4_.exit, %_RINvNtCs8frGy5WneL6_4fish2fs13lock_and_loadNCNvMNtB4_20env_universal_commonNtBK_12EnvUniversal21load_from_path_narrow0INtNtCs3oUPovFnLWP_4core6option6OptionNtBK_19UniversalReadUpdateEEB4_.exit.thread
  %.sroa.0.272 = phi ptr [ %i.jk, %_RINvNtCs8frGy5WneL6_4fish2fs13lock_and_loadNCNvMNtB4_20env_universal_commonNtBK_12EnvUniversal21load_from_path_narrow0INtNtCs3oUPovFnLWP_4core6option6OptionNtBK_19UniversalReadUpdateEEB4_.exit.thread ], [ %.sroa.0.2, %_RINvNtCs8frGy5WneL6_4fish2fs13lock_and_loadNCNvMNtB4_20env_universal_commonNtBK_12EnvUniversal21load_from_path_narrow0INtNtCs3oUPovFnLWP_4core6option6OptionNtBK_19UniversalReadUpdateEEB4_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.272) ]
  store ptr %.sroa.0.272, ptr %i.au, align 8
  %i.nd = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories9uvar_file, i64 40) monotonic, align 8
  %.not10 = icmp eq i8 %i.nd, 0
  br i1 %.not10, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit42, %bb.ds
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ne = ptrtoint ptr %.sroa.0.272 to i64        ; 2 uses
  %i.nf = and i64 %i.ne, 3
  switch i64 %i.nf, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 3, label %bb.du
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit
    i64 1, label %bb.dv
  ], !prof !19

bb.du:                                            ; preds = %bb.dt
  %i.ng = icmp ult ptr %.sroa.0.272, inttoptr (i64 188978561024 to ptr)
  %i.nh = and i64 %i.ne, 1095216660480
  %i.ni = icmp ne i64 %i.nh, 1095216660480
  call void @llvm.assume(i1 %i.ng)
  call void @llvm.assume(i1 %i.ni)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

bb.dv:                                            ; preds = %bb.dt
  %i.nj = getelementptr i8, ptr %.sroa.0.272, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nj) ]
  %i.nk = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.nj, ptr %i.nk, align 8, !alias.scope !2593
  store i8 3, ptr %i.d, align 8, !alias.scope !2593
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nk)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit: ; preds = %bb.dt, %bb.dt, %bb.du, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.ew

bb.dw:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i64 0, ptr %i.at, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 8 uses
  store i64 0, ptr %i.nm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories9uvar_file, i64 24))
          to label %bb.dy unwind label %bb.dx

bb.dx:                                            ; preds = %bb.eq, %bb.ei, %bb.ec, %bb.ea, %bb.er, %bb.eo, %bb.eg, %bb.ef, %bb.ed, %bb.dy, %bb.dw
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ek, %bb.dx
  %eh.lpad-body = phi { ptr, i32 } [ %i.nn, %bb.dx ], [ %i.pg, %bb.ek ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.at) #29
          to label %.body40 unwind label %bb.do

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.no = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.nq = load i64, ptr %i.as, align 8, !range !12, !noundef !5
  %i.nr = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ns = load i64, ptr %i.nr, align 8, !noundef !5 ; 2 uses
  %i.nt = icmp sgt i64 %i.ns, -1
  call void @llvm.assume(i1 %i.nt)
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.ns
  store ptr %i.np, ptr %i.al, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %i.nq, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.np, ptr %i.nw, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store ptr %i.nu, ptr %i.nx, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.al)
          to label %bb.dz unwind label %bb.dx

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.ny = load i64, ptr %i.nm, align 8, !alias.scope !2594, !noundef !5 ; 4 uses
  %i.nz = load i64, ptr %i.at, align 8, !range !12, !alias.scope !2594, !noundef !5
  %i.oa = icmp eq i64 %i.ny, %i.nz
  br i1 %i.oa, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #32
          to label %bb.eb unwind label %bb.dx

bb.eb:                                            ; preds = %bb.dz, %bb.ea
  %i.ob = load ptr, ptr %i.nl, align 8, !alias.scope !2594, !nonnull !5, !noundef !5
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.ny
  store i8 58, ptr %i.oc, align 1
  %i.od = add i64 %i.ny, 1                        ; 3 uses
  store i64 %i.od, ptr %i.nm, align 8, !alias.scope !2594
  %i.oe = load i64, ptr %i.at, align 8, !range !12, !alias.scope !2595, !noundef !5
  %i.of = icmp eq i64 %i.od, %i.oe
  br i1 %i.of, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #32
          to label %bb.ed unwind label %bb.dx

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  %i.og = load ptr, ptr %i.nl, align 8, !alias.scope !2595, !nonnull !5, !noundef !5
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.od
  store i8 32, ptr %i.oh, align 1
  %i.oi = add i64 %i.ny, 2
  store i64 %i.oi, ptr %i.nm, align 8, !alias.scope !2595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, i64 noundef 44, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ee unwind label %bb.dx

bb.ee:                                            ; preds = %bb.ed
  %i.oj = load i64, ptr %i.ak, align 8, !range !9, !noundef !5
  %i.ok = trunc nuw i64 %i.oj to i1
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  br i1 %i.ok, label %bb.ef, label %bb.eg, !prof !7

bb.ef:                                            ; preds = %bb.ee
  %i.om = load i64, ptr %i.ol, align 8, !range !24, !noundef !5
  %i.on = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.oo = load i64, ptr %i.on, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.om, i64 %i.oo) #33
          to label %bb.dm unwind label %bb.dx

bb.eg:                                            ; preds = %bb.ee
  %i.op = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.oq = load ptr, ptr %i.op, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.or = load i64, ptr %i.ol, align 8, !range !12, !noundef !5 ; 2 uses
  %i.os = icmp samesign ugt i64 %i.or, 43
  call void @llvm.assume(i1 %i.os)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.oq, ptr noundef nonnull align 1 dereferenceable(44) @70, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 44
  store ptr %i.oq, ptr %i.aj, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.or, ptr %i.ou, align 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.oq, ptr %i.ov, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ot, ptr %i.ow, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.aj)
          to label %bb.eh unwind label %bb.dx

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ox = load i64, ptr %i.nm, align 8, !alias.scope !2596, !noundef !5 ; 3 uses
  %i.oy = load i64, ptr %i.at, align 8, !range !12, !alias.scope !2596, !noundef !5
  %i.oz = icmp eq i64 %i.ox, %i.oy
  br i1 %i.oz, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at) #32
          to label %bb.ej unwind label %bb.dx

bb.ej:                                            ; preds = %bb.eh, %bb.ei
  %i.pa = load ptr, ptr %i.nl, align 8, !alias.scope !2596, !nonnull !5, !noundef !5
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.ox
  store i8 32, ptr %i.pb, align 1
  %i.pc = add i64 %i.ox, 1
  store i64 %i.pc, ptr %i.nm, align 8, !alias.scope !2596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2597
  store i64 0, ptr %i.c, align 8, !noalias !2597
  %.sroa.4.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i33, align 8, !noalias !2597
  %.sroa.5.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i34, align 8, !noalias !2597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2597
  %i.pd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.pd, align 8, !noalias !2597
  store ptr %i.c, ptr %i.b, align 8, !noalias !2597
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @4, ptr %i.pe, align 8, !noalias !2597
  %i.pf = invoke noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.el unwind label %bb.ek, !noalias !2598

bb.ek:                                            ; preds = %bb.em, %bb.ej
  %i.pg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body unwind label %bb.en, !noalias !2598

bb.el:                                            ; preds = %bb.ej
  br i1 %i.pf, label %bb.em, label %bb.eo, !prof !7

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #31
          to label %.noexc.i35 unwind label %bb.ek, !noalias !2598

.noexc.i35:                                       ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.ek
  %i.ph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_6
begin_hunk_7_@_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal21load_from_path_narrow:bb.a
  %i.rj = load i64, ptr %i.ba, align 8, !range !12, !alias.scope !2603, !noundef !5
  %i.rk = icmp eq i64 %i.ri, %i.rj
  br i1 %i.rk, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba) #32
          to label %bb.fl unwind label %bb.ez

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.rl = load ptr, ptr %i.pw, align 8, !alias.scope !2603, !nonnull !5, !noundef !5
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.ri
  store i8 10, ptr %i.rm, align 1
  %i.rn = add i64 %i.ri, 1                        ; 2 uses
  store i64 %i.rn, ptr %i.px, align 8, !alias.scope !2603
  %i.ro = load ptr, ptr %i.pw, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ro, i64 noundef %i.rn)
          to label %bb.fm unwind label %bb.ez

bb.fm:                                            ; preds = %bb.fl
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit50 unwind label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %common.resume unwind label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit50: ; preds = %bb.fm
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.ex
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal3get(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !2617, !noalias !2618, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = tail call noundef i64 @_RINvYNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateNtNtCs3oUPovFnLWP_4core4hash11BuildHasher8hash_oneRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2620)
  %i.g = lshr i64 %i.f, 57
  %i.h = trunc nuw nsw i64 %i.g to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !2621, !noalias !2622, !noundef !5 ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !2621, !noalias !2622, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %bb.e ]
  %.pn.i.i = phi i64 [ %i.f, %bb.b ], [ %i.ae, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.j      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.n, align 1, !noalias !2623 ; 2 uses
  %i.o = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.m
  %i.p = bitcast <16 x i1> %i.o to i16            ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.p, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ac, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = add i64 %.sroa.01.0.i.i.i, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [48 x i8], ptr %i.k, i64 %i.u ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -48
  %i.x = tail call noundef zeroext i1 @_RNvXCskt5MLIAl8nl_9hashbrownNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrINtB2_10EquivalentNtNtBu_9utfstring11Utf32StringE10equivalentCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.w), !noalias !2624
  br i1 %i.x, label %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1L_.exit, label %bb.d, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.y = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.z = bitcast <16 x i1> %i.y to i16
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.e, label %select.unfold, !prof !7

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i16 %.sroa.06.0.i31.i.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ae = add i64 %.sroa.01.0.i.i.i, %i.ad
  br label %bb.c

_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1L_.exit: ; preds = %.lr.ph.i.i
  %i.af = getelementptr inbounds i8, ptr %i.v, i64 -24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.g

select.unfold:                                    ; preds = %._crit_edge.i.i, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %select.unfold
  ret void

bb.g:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1L_.exit
  %i.aj = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.ak = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.al = load i64, ptr %i.aj, align 8, !noundef !5
  %i.am = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.an = load i8, ptr %i.am, align 8, !noundef !5
  store ptr %i.ak, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.an, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.h:                                             ; preds = %_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE3getNtNtBS_6utfstr8Utf32StrEB1L_.exit
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = invoke { ptr, i64 } @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3ffi5c_strNtB5_7CStringNtNtCs3oUPovFnLWP_4core7default7Default7default()
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.d, %bb.b ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit ], [ %.pn, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #29
          to label %bb.j unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 0        ; 5 uses
  %i.f = extractvalue { ptr, i64 } %i.c, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %bb.f unwind label %bb.e       ; 2 uses

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit: ; preds = %bb.g, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.m, %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  store i8 0, ptr %i.e, align 1
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef range(i64 1, 0) %i.f, i64 noundef 1) #34
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit

bb.f:                                             ; preds = %bb.c
  %i.j = extractvalue { i64, i64 } %i.g, 0
  %i.k = extractvalue { i64, i64 } %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.j, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.k, ptr %.sroa.53.0..sroa_idx, align 8
  %i.l = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @54)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { i64, i64 } %i.l, 0
  %i.o = extractvalue { i64, i64 } %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.n, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.o, ptr %.sroa.512.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) @36, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal3set(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !noundef !5
  %i.j = and i8 %i.i, 1
  %.not = icmp eq i8 %i.j, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.b unwind label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.d, align 8, !range !9, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !24, !noundef !5 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #33
          to label %bb.w unwind label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = icmp ule i64 %2, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not27 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  store i64 %i.n, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %2, ptr %.sroa.68.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvMNtCskt5MLIAl8nl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE11rustc_entryB1W_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.g unwind label %bb.x

bb.f:                                             ; preds = %bb.d
  %i.t = shl nuw nsw i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %1, i64 %i.t, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.c, align 8, !range !8, !noundef !5 ; 2 uses
  %.not28 = icmp eq i64 %i.u, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 4 uses
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.514.0.copyload = load ptr, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.615.0.copyload = load ptr, ptr %.sroa.615.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.716.0.copyload = load i64, ptr %.sroa.716.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i64 %i.u, ptr %i.b, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.514.0.copyload, ptr %.sroa.522.0..sroa_idx, align 8
  %i.y = call noundef nonnull ptr @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE14insert_no_growB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.615.0.copyload, i64 noundef %.sroa.716.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !2646, !noalias !2647, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !2646, !noalias !2647, !noundef !5 ; 2 uses
  %i.ad = load ptr, ptr %3, align 8, !alias.scope !2647, !noalias !2646, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2647, !noalias !2646, !noundef !5
  %i.ag = icmp eq ptr %i.aa, %i.ad
  %i.ah = icmp eq i64 %i.ac, %i.af                ; 2 uses
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ah, label %bb.k, label %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = invoke noundef zeroext i1 @_RNvXs2_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs8frGy5WneL6_4fish(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, i64 noundef %i.ac)
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.k
  br i1 %i.al, label %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit, label %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.i, %.noexc
  %i.am = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.an = load i8, ptr %i.am, align 8, !alias.scope !2646, !noalias !2647, !noundef !5
  %i.ao = load i8, ptr %i.h, align 8, !alias.scope !2647, !noalias !2646, !noundef !5
  %i.ap = icmp eq i8 %i.an, %i.ao
  br i1 %i.ap, label %bb.m, label %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %.noexc, %bb.j, %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  call void @llvm.experimental.noalias.scope.decl(metadata !2650)
  %i.aq = load ptr, ptr %i.f, align 8, !alias.scope !2651, !nonnull !5, !noundef !5
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !2651
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit

bb.l:                                             ; preds = %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #32
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit

bb.m:                                             ; preds = %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2652)
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  %i.at = load ptr, ptr %3, align 8, !alias.scope !2655, !nonnull !5, !noundef !5
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !2655
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit30

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3) #32
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit30

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit: ; preds = %bb.l, %_RNvXsy_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.aw = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %i.ax = trunc nuw i64 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !24, !noundef !5 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ax, label %bb.p, label %bb.q, !prof !7

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit30: ; preds = %bb.n, %bb.m, %bb.r, %bb.u
  ret void
end_hunk_7
begin_hunk_8_@_RNvMNtCs8frGy5WneL6_4fish20env_universal_commonNtB2_12EnvUniversal4sync:bb.a

bb.gd:                                            ; preds = %bb.gb
  %i.sp = getelementptr i8, ptr %i.sf, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sp) ]
  %i.sq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.sp, ptr %i.sq, align 8, !alias.scope !2790, !noalias !2754
  store i8 3, ptr %i.f, align 8, !alias.scope !2790, !noalias !2754
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.fx, !noalias !2787

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.gd, %bb.gc, %bb.gb, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2754
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i

bb.ge:                                            ; preds = %bb.fx, %.body.i
  %i.sr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2787
  unreachable

.critedge:                                        ; preds = %bb.gz, %bb.gy, %bb.gf, %bb.fy, %.body.i, %.body69, %bb.gh, %bb.hb
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %.body69 ], [ %i.sy, %bb.gh ], [ %i.sy, %bb.hb ], [ %.pn.i, %.body.i ], [ %i.ss, %bb.gf ], [ %i.sh, %bb.fy ], [ %.pn, %bb.gy ], [ %.pn, %bb.gz ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.br) #29
          to label %common.resume unwind label %bb.gx

bb.gf:                                            ; preds = %bb.hg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.ar
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2754
  %i.st = icmp eq i64 %i.rz, -2
  br i1 %i.st, label %bb.hd, label %bb.gg

bb.gg:                                            ; preds = %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store i64 %i.rz, ptr %i.bp, align 8
  %.sroa.9.56..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, i64 88, i1 false)
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 144
  store ptr %.sroa.0.0.copyload, ptr %i.su, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.bp, i64 88 ; 2 uses
  %i.sw = load i8, ptr %i.sv, align 8, !range !16, !noundef !5 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i8 %i.sw, ptr %i.sx, align 8
  invoke void @_RNvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEE5clearCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %bb.gi unwind label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.sy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not23 = icmp eq i64 %i.rz, -1
  br i1 %.not23, label %.critedge, label %bb.ha

bb.gi:                                            ; preds = %bb.gg
  %.not20 = icmp eq i64 %i.rz, -1
  br i1 %.not20, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.sz = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.ta = load i64, ptr %i.sz, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, ptr noundef nonnull align 8 dereferenceable(48) %i.tb, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.td = load i8, ptr %i.tc, align 8, !range !16, !noundef !5 ; 2 uses
  store i8 %i.td, ptr %i.bm, align 1
  %i.te = icmp eq i8 %i.sw, %i.td
  br i1 %i.te, label %bb.gm, label %bb.gl, !prof !6

bb.gk:                                            ; preds = %bb.gi
  store i8 1, ptr %0, align 8
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.tf, align 8
  br label %bb.gt

bb.gl:                                            ; preds = %bb.gj
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedbbECs8frGy5WneL6_4fish(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.sv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bm, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #33
          to label %bb.gp unwind label %bb.go

bb.gm:                                            ; preds = %bb.gj
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.th = load i64, ptr %i.tg, align 8, !noundef !5 ; 2 uses
  %i.ti = add i64 %i.th, %i.ta                    ; 2 uses
  %i.tj = icmp ult i64 %i.ti, %i.th
  br i1 %i.tj, label %bb.gr, label %bb.gq

bb.gn:                                            ; preds = %bb.gs, %bb.go
  %.sroa.05.0 = phi i1 [ true, %bb.go ], [ false, %bb.gs ]
  %.pn = phi { ptr, i32 } [ %i.tk, %bb.go ], [ %i.tm, %bb.gs ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bn) #29
          to label %bb.gy unwind label %bb.gx

bb.go:                                            ; preds = %bb.gr, %bb.gl
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gn

bb.gp:                                            ; preds = %bb.iu, %bb.hq, %bb.gr, %bb.gl, %bb.ah, %bb.o
  unreachable

bb.gq:                                            ; preds = %bb.gm
  store i64 %i.ti, ptr %i.tg, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.tl)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit unwind label %bb.gs

bb.gr:                                            ; preds = %bb.gm
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #33
          to label %bb.gp unwind label %bb.go

bb.gs:                                            ; preds = %bb.gq
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.tl, ptr noundef nonnull align 8 dereferenceable(48) %i.tb, i64 48, i1 false)
  br label %bb.gn

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit: ; preds = %bb.gq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.tl, ptr noundef nonnull align 8 dereferenceable(48) %i.tb, i64 48, i1 false)
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tn, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEEB2t_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.ih, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.to = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %common.resume unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.tp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.gu
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  br label %bb.d

bb.gx:                                            ; preds = %bb.ha, %bb.gz, %.body69, %bb.im, %.body80, %.body63, %bb.hb, %bb.gn, %.critedge, %bb.z, %bb.g
  %i.tq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.gy:                                            ; preds = %bb.gn
  br i1 %.sroa.05.0, label %bb.gz, label %.critedge

bb.gz:                                            ; preds = %bb.gy
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bo)
          to label %.critedge unwind label %bb.gx

bb.ha:                                            ; preds = %bb.gh
  %i.tr = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.tr)
          to label %bb.hb unwind label %bb.gx

bb.hb:                                            ; preds = %bb.ha
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish20env_universal_common12CallbackDataEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bp) #29
          to label %.critedge unwind label %bb.gx

.body69:                                          ; preds = %bb.ie, %bb.hc, %.body63
  %.pn25 = phi { ptr, i32 } [ %eh.lpad-body64, %.body63 ], [ %i.ts, %bb.hc ], [ %i.wl, %bb.ie ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr %.sroa.0.093) #29
          to label %.critedge unwind label %bb.gx

bb.hc:                                            ; preds = %bb.if
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %.body69

bb.hd:                                            ; preds = %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit, %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit.thread
  %.sroa.0.093 = phi ptr [ %i.gk, %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit.thread ], [ %.sroa.0.0.copyload, %_RINvNtCs8frGy5WneL6_4fish2fs26rewrite_via_temporary_fileNCNvMNtB4_20env_universal_commonNtBX_12EnvUniversal4sync0INtNtCs3oUPovFnLWP_4core6option6OptionNtBX_19UniversalReadUpdateEEB4_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store ptr %.sroa.0.093, ptr %i.bl, align 8
  %i.tt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories9uvar_file, i64 40) monotonic, align 8
  %.not24 = icmp eq i8 %i.tt, 0
  br i1 %.not24, label %bb.he, label %bb.hh

bb.he:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit71, %bb.hd
  store i8 0, ptr %0, align 8
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.tu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.093) ]
  %i.tv = ptrtoint ptr %.sroa.0.093 to i64        ; 2 uses
  %i.tw = and i64 %i.tv, 3
  switch i64 %i.tw, label %default.unreachable [
    i64 2, label %bb.ih
    i64 3, label %bb.hf
    i64 0, label %bb.ih
    i64 1, label %bb.hg
  ], !prof !19

bb.hf:                                            ; preds = %bb.he
  %i.tx = icmp ult ptr %.sroa.0.093, inttoptr (i64 188978561024 to ptr)
  %i.ty = and i64 %i.tv, 1095216660480
  %i.tz = icmp ne i64 %i.ty, 1095216660480
  call void @llvm.assume(i1 %i.tx)
  call void @llvm.assume(i1 %i.tz)
  br label %bb.ih

bb.hg:                                            ; preds = %bb.he
  %i.ua = getelementptr i8, ptr %.sroa.0.093, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ua) ]
  %i.ub = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ua, ptr %i.ub, align 8, !alias.scope !2791
  store i8 3, ptr %i.d, align 8, !alias.scope !2791
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ub)
          to label %bb.ih unwind label %bb.gf

bb.hh:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  store i64 0, ptr %i.bk, align 8
  %i.uc = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.uc, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 8 uses
  store i64 0, ptr %i.ud, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories9uvar_file, i64 24))
          to label %bb.hj unwind label %bb.hi

bb.hi:                                            ; preds = %bb.ib, %bb.ht, %bb.hn, %bb.hl, %bb.ic, %bb.hz, %bb.hr, %bb.hq, %bb.ho, %bb.hj, %bb.hh
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %.body63

.body63:                                          ; preds = %bb.hv, %bb.hi
  %eh.lpad-body64 = phi { ptr, i32 } [ %i.ue, %bb.hi ], [ %i.vx, %bb.hv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #29
          to label %.body69 unwind label %bb.gx

bb.hj:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.uf = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ug = load ptr, ptr %i.uf, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.uh = load i64, ptr %i.bj, align 8, !range !12, !noundef !5
  %i.ui = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.uj = load i64, ptr %i.ui, align 8, !noundef !5 ; 2 uses
  %i.uk = icmp sgt i64 %i.uj, -1
  call void @llvm.assume(i1 %i.uk)
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 %i.uj
  store ptr %i.ug, ptr %i.az, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.uh, ptr %i.um, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ug, ptr %i.un, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr %i.ul, ptr %i.uo, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.az)
          to label %bb.hk unwind label %bb.hi

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.up = load i64, ptr %i.ud, align 8, !alias.scope !2792, !noundef !5 ; 4 uses
  %i.uq = load i64, ptr %i.bk, align 8, !range !12, !alias.scope !2792, !noundef !5
  %i.ur = icmp eq i64 %i.up, %i.uq
  br i1 %i.ur, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #32
          to label %bb.hm unwind label %bb.hi

bb.hm:                                            ; preds = %bb.hk, %bb.hl
  %i.us = load ptr, ptr %i.uc, align 8, !alias.scope !2792, !nonnull !5, !noundef !5
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.up
  store i8 58, ptr %i.ut, align 1
  %i.uu = add i64 %i.up, 1                        ; 3 uses
  store i64 %i.uu, ptr %i.ud, align 8, !alias.scope !2792
  %i.uv = load i64, ptr %i.bk, align 8, !range !12, !alias.scope !2793, !noundef !5
  %i.uw = icmp eq i64 %i.uu, %i.uv
  br i1 %i.uw, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #32
          to label %bb.ho unwind label %bb.hi

bb.ho:                                            ; preds = %bb.hm, %bb.hn
  %i.ux = load ptr, ptr %i.uc, align 8, !alias.scope !2793, !nonnull !5, !noundef !5
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 %i.uu
  store i8 32, ptr %i.uy, align 1
  %i.uz = add i64 %i.up, 2
  store i64 %i.uz, ptr %i.ud, align 8, !alias.scope !2793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, i64 noundef 26, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.hp unwind label %bb.hi

bb.hp:                                            ; preds = %bb.ho
  %i.va = load i64, ptr %i.ay, align 8, !range !9, !noundef !5
  %i.vb = trunc nuw i64 %i.va to i1
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  br i1 %i.vb, label %bb.hq, label %bb.hr, !prof !7

bb.hq:                                            ; preds = %bb.hp
  %i.vd = load i64, ptr %i.vc, align 8, !range !24, !noundef !5
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.vf = load i64, ptr %i.ve, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.vd, i64 %i.vf) #33
          to label %bb.gp unwind label %bb.hi

bb.hr:                                            ; preds = %bb.hp
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.vi = load i64, ptr %i.vc, align 8, !range !12, !noundef !5 ; 2 uses
  %i.vj = icmp samesign ugt i64 %i.vi, 25
  call void @llvm.assume(i1 %i.vj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.vh, ptr noundef nonnull align 1 dereferenceable(26) @91, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 26
  store ptr %i.vh, ptr %i.ax, align 8
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.vi, ptr %i.vl, align 8
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.vh, ptr %i.vm, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.vk, ptr %i.vn, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ax)
          to label %bb.hs unwind label %bb.hi

bb.hs:                                            ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.vo = load i64, ptr %i.ud, align 8, !alias.scope !2794, !noundef !5 ; 3 uses
  %i.vp = load i64, ptr %i.bk, align 8, !range !12, !alias.scope !2794, !noundef !5
  %i.vq = icmp eq i64 %i.vo, %i.vp
  br i1 %i.vq, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #32
          to label %bb.hu unwind label %bb.hi

bb.hu:                                            ; preds = %bb.hs, %bb.ht
  %i.vr = load ptr, ptr %i.uc, align 8, !alias.scope !2794, !nonnull !5, !noundef !5
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vo
  store i8 32, ptr %i.vs, align 1
  %i.vt = add i64 %i.vo, 1
  store i64 %i.vt, ptr %i.ud, align 8, !alias.scope !2794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2795
  store i64 0, ptr %i.c, align 8, !noalias !2795
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2795
  %.sroa.5.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i61, align 8, !noalias !2795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2795
  %i.vu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.vu, align 8, !noalias !2795
  store ptr %i.c, ptr %i.b, align 8, !noalias !2795
  %i.vv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @4, ptr %i.vv, align 8, !noalias !2795
  %i.vw = invoke noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.hw unwind label %bb.hv, !noalias !2796

bb.hv:                                            ; preds = %bb.hx, %bb.hu
  %i.vx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body63 unwind label %bb.hy, !noalias !2796

bb.hw:                                            ; preds = %bb.hu
  br i1 %i.vw, label %bb.hx, label %bb.hz, !prof !7

bb.hx:                                            ; preds = %bb.hw
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #31
          to label %.noexc.i62 unwind label %bb.hv, !noalias !2796

.noexc.i62:                                       ; preds = %bb.hx
  unreachable

bb.hy:                                            ; preds = %bb.hv
  %i.vy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !2796
  unreachable

bb.hz:                                            ; preds = %bb.hw
  %.sroa.089.0.copyload = load i64, ptr %i.c, align 8, !noalias !2797
  %.sroa.490.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2797, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx.i61, align 8, !noalias !2797 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2795
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.vz = icmp sgt i64 %.sroa.5.0.copyload, -1
  call void @llvm.assume(i1 %i.vz)
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.490.0.copyload, i64 %.sroa.5.0.copyload
end_hunk_8
begin_hunk_9_@_RNvNtCs8frGy5WneL6_4fish2fs21create_temporary_file:bb.a
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ak, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #33
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.q, %bb.j, %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.e, align 8, !range !9, !noundef !5
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !24, !noundef !5 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.ap, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ao, i64 %i.aq) #33
          to label %bb.h unwind label %bb.d

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.ap, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = icmp ule i64 %i.ak, %i.ao
  call void @llvm.assume(i1 %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not20 = icmp eq i64 %i.ak, 0
  br i1 %.not20, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  store i64 %i.ao, ptr %i.w, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ar, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.ak, ptr %.sroa.515.0..sroa_idx, align 8
  %i.at = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  %i.au = load i64, ptr %i.af, align 8, !noundef !5
  %i.av = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.at, i64 noundef %i.au)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.aj, i64 %i.ak, i1 false)
  br label %bb.l

.critedge38:                                      ; preds = %.thread, %bb.af, %bb.n, %.critedge
  %.pn33 = phi { ptr, i32 } [ %i.br, %bb.af ], [ %.pn30, %.critedge ], [ %eh.lpad-body, %.thread ], [ %i.aw, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #29
          to label %.body43 unwind label %bb.ab

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i, %bb.q, %bb.p, %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.critedge38

bb.o:                                             ; preds = %bb.l
  %i.ax = extractvalue { ptr, i64 } %i.av, 0      ; 2 uses
  %.not21 = icmp eq ptr %i.ax, null
  br i1 %.not21, label %bb.q, label %bb.p, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.ay = extractvalue { ptr, i64 } %i.av, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ax, ptr %i.t, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.w, ptr %i.ba, align 8
  invoke void @_RINvCs5l1RxndaFs7_13fish_tempfile22create_file_with_retryNCNvNtCs8frGy5WneL6_4fish2fs21create_temporary_file0EBZ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.r unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #33
          to label %bb.h unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.copyload = load i32, ptr %i.bb, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.bc = trunc nuw i32 %.sroa.0.0.copyload to i1
  br i1 %i.bc, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3549)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i = load ptr, ptr %i.bd, align 8, !alias.scope !3549, !noalias !3550, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val1.i = load i64, ptr %i.be, align 8, !alias.scope !3549, !noalias !3550, !noundef !5
  invoke void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i)
          to label %bb.u unwind label %bb.t, !noalias !3549

bb.t:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #29
          to label %.thread unwind label %bb.x, !noalias !3550

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit.i unwind label %bb.v, !noalias !3550

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread unwind label %bb.w, !noalias !3550

bb.w:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !3550
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.u
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit unwind label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !noalias !3550
  unreachable

bb.y:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.v, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %i.bg, %bb.v ], [ %i.bf, %bb.t ]
  %i.bk = call noundef i32 @close(i32 noundef %.sroa.6.0.copyload) #34 ; 0 uses
  br label %.critedge38

_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i32 %.sroa.6.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i, %_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit.i unwind label %bb.z

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body43 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit unwind label %bb.d

bb.ab:                                            ; preds = %.body69, %.critedge, %bb.bf, %.body57, %.body52, %bb.au, %bb.as, %.body54, %.body62, %.critedge38, %.body43
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.body69:                                          ; preds = %bb.bn, %bb.ac, %.body62
  %.pn30 = phi { ptr, i32 } [ %.pn28, %.body62 ], [ %i.bo, %bb.ac ], [ %i.es, %bb.bn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish(ptr nonnull %.sroa.8.0.copyload) #29
          to label %.critedge unwind label %bb.ab

bb.ac:                                            ; preds = %bb.bo
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body69

bb.ad:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  store ptr %.sroa.8.0.copyload, ptr %i.q, align 8
  %i.bp = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories5error, i64 40) monotonic, align 8
  %.not22 = icmp eq i8 %i.bp, 0
  br i1 %.not22, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit, %bb.ad
  store ptr %.sroa.8.0.copyload, ptr %0, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.critedge38 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit unwind label %bb.n

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 6 uses
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvXs_NtCs8frGy5WneL6_4fish4flogRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtB4_16FloggableDisplay11to_flog_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories5error, i64 24))
          to label %bb.aj unwind label %bb.ai

.body62:                                          ; preds = %bb.bi, %bb.ai, %bb.bf, %.body57
  %.pn28 = phi { ptr, i32 } [ %.pn26, %.body57 ], [ %i.dy, %bb.bf ], [ %i.bv, %bb.ai ], [ %i.ej, %bb.bi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #29
          to label %.body69 unwind label %bb.ab

bb.ai:                                            ; preds = %bb.bk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i61, %bb.an, %bb.al, %bb.bl, %bb.aj, %bb.ah
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body62

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.by = load i64, ptr %i.o, align 8, !range !12, !noundef !5
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !5 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  store ptr %i.bx, ptr %i.d, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.by, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bx, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.cc, ptr %i.cf, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ak unwind label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.cg = load i64, ptr %i.bu, align 8, !alias.scope !3551, !noundef !5 ; 4 uses
  %i.ch = load i64, ptr %i.p, align 8, !range !12, !alias.scope !3551, !noundef !5
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #32
          to label %bb.am unwind label %bb.ai

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.cj = load ptr, ptr %i.bt, align 8, !alias.scope !3551, !nonnull !5, !noundef !5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cg
  store i8 58, ptr %i.ck, align 1
  %i.cl = add i64 %i.cg, 1                        ; 3 uses
  store i64 %i.cl, ptr %i.bu, align 8, !alias.scope !3551
  %i.cm = load i64, ptr %i.p, align 8, !range !12, !alias.scope !3552, !noundef !5
  %i.cn = icmp eq i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #32
          to label %bb.ao unwind label %bb.ai

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.co = load ptr, ptr %i.bt, align 8, !alias.scope !3552, !nonnull !5, !noundef !5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cl
  store i8 32, ptr %i.cp, align 1
  %i.cq = add i64 %i.cg, 2
  store i64 %i.cq, ptr %i.bu, align 8, !alias.scope !3552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 0, ptr %i.l, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @128, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 40, ptr %i.cs, align 8
  store i64 -1, ptr %i.j, align 8
  %i.ct = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.aq unwind label %bb.ap     ; 2 uses

.body54:                                          ; preds = %bb.az, %bb.ap, %.body52
  %.pn24 = phi { ptr, i32 } [ %.pn, %.body52 ], [ %i.cu, %bb.ap ], [ %i.dr, %bb.az ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish12localization7gettext17LocalizableStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #29
          to label %.body57 unwind label %bb.ab

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.aq, %bb.ao
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body54

bb.aq:                                            ; preds = %bb.ao
  %i.cv = extractvalue { ptr, i64 } %i.ct, 0
  %i.cw = extractvalue { ptr, i64 } %i.ct, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !5, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noundef !5
  invoke void @_RNvXs4_Cskr4qsHYS30i_15fish_widestringNtNtCsaL1QbXo9JQH_3std4path4PathNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.da)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !5, !noundef !5
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.dc, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.de, ptr %i.dg, align 8
  store i64 1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf3argRNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_5ToArg6to_arg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #29
          to label %.body52 unwind label %bb.ab

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtB12_6utfstr8Utf32StrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.cv, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @18, ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef 2)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.aw, %bb.at
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.i) #29
          to label %.body52 unwind label %bb.ab

bb.av:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !3553)
  %i.dk = load i8, ptr %i.k, align 8, !range !16, !alias.scope !3553, !noalias !3554, !noundef !5
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.aw, label %.preheader.preheader, !prof !7

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3555
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !range !17, !alias.scope !3553, !noalias !3554, !noundef !5
  store i8 %i.dn, ptr %i.b, align 1, !noalias !3555
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #31
          to label %.noexc unwind label %bb.au

.noexc:                                           ; preds = %bb.aw
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.do)
          to label %.preheader.1 unwind label %.peel.begin

end_hunk_9
begin_hunk_10_@_RNvNtCs8frGy5WneL6_4fish5wutil7wgetcwd:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.0.0.copyload, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.4.0.copyload, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ce, ptr %i.ch, align 8
  invoke void @_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendhINtNtB7_9into_iter8IntoIterhEE11spec_extendCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.ag unwind label %bb.o

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ci = load i64, ptr %i.ah, align 8, !alias.scope !3662, !noundef !5 ; 3 uses
  %i.cj = load i64, ptr %i.j, align 8, !range !12, !alias.scope !3662, !noundef !5
  %i.ck = icmp eq i64 %i.ci, %i.cj
  br i1 %i.ck, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #32
          to label %bb.ai unwind label %bb.o

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.cl = load ptr, ptr %i.ag, align 8, !alias.scope !3662, !nonnull !5, !noundef !5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci
  store i8 10, ptr %i.cm, align 1
  %i.cn = add i64 %i.ci, 1                        ; 2 uses
  store i64 %i.cn, ptr %i.ah, align 8, !alias.scope !3662
  %i.co = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  invoke void @_RNvNtCs8frGy5WneL6_4fish4flog9flog_impl(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cn)
          to label %bb.aj unwind label %bb.o

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body13 unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit unwind label %bb.i

bb.am:                                            ; preds = %bb.ak
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.k

bb.an:                                            ; preds = %bb.w
  unreachable

bb.ao:                                            ; preds = %.body13, %.body
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvNtCs8frGy5WneL6_4fish5wutil7wunlink(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvCskr4qsHYS30i_15fish_widestring12wcs2osstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1)
  %i.b = call noundef ptr @_RINvNtCsaL1QbXo9JQH_3std2fs11remove_fileNtNtNtB4_3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish5wutil8wdirname(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %.idx = shl nuw nsw i64 %1, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.d = tail call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.c, ptr noundef nonnull @149, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @149, i64 2))
  br i1 %i.d, label %.critedge44, label %bb.b

bb.b:                                             ; preds = %bb.a
  %cond75 = icmp eq i64 %1, 0
  br i1 %cond75, label %.critedge, label %.lr.ph102

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not12.not.not.i.not = icmp eq ptr %i.e, %i.c
  br i1 %.not12.not.not.i.not, label %.critedge44, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.b, %.preheader
  %i.f = phi ptr [ %i.e, %.preheader ], [ %0, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !3677, !noundef !5 ; 4 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %.lr.ph102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3678
  store i32 %i.g, ptr %i.b, align 4, !noalias !3678
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #31, !noalias !3677
  unreachable

bb.c:                                             ; preds = %.lr.ph102
  %i.k = icmp ult i32 %i.g, 1114112
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq i32 %i.g, 47
  br i1 %.not.i, label %.preheader, label %.lr.ph

.critedge44:                                      ; preds = %.preheader, %bb.d, %.lr.ph69, %bb.j, %.critedge, %bb.h, %bb.a
  %.sroa.6.0 = phi i64 [ 1, %bb.h ], [ 1, %.critedge ], [ %1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.j ], [ %.sroa.18.168, %.lr.ph69 ], [ 1, %.preheader ]
  %.sroa.027.0 = phi ptr [ @143, %bb.h ], [ @146, %.critedge ], [ %0, %bb.a ], [ @146, %bb.d ], [ @143, %bb.j ], [ %.sroa.0.167, %.lr.ph69 ], [ @143, %.preheader ]
  %i.l = insertvalue { ptr, i64 } poison, ptr %.sroa.027.0, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %i.m

.lr.ph:                                           ; preds = %bb.c, %bb.k
  %.sroa.0.059 = phi ptr [ %i.al, %bb.k ], [ %0, %bb.c ] ; 3 uses
  %.sroa.18.058 = phi i64 [ %i.am, %bb.k ], [ %1, %bb.c ] ; 4 uses
  %i.n = getelementptr [4 x i8], ptr %.sroa.0.059, i64 %.sroa.18.058
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !range !13, !noundef !5
  %i.q = icmp eq i32 %i.p, 47
  br i1 %i.q, label %bb.k, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.k, %bb.b
  %.sroa.18.0.lcssa = phi i64 [ 0, %bb.b ], [ 0, %bb.k ], [ %.sroa.18.058, %.lr.ph ] ; 4 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.b ], [ %i.al, %bb.k ], [ %.sroa.0.059, %.lr.ph ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.lcssa) ]
  %.not.not.not.not.i.not103 = icmp eq i64 %.sroa.18.0.lcssa, 0
  br i1 %.not.not.not.not.i.not103, label %.critedge44, label %.lr.ph105

.lr.ph105:                                        ; preds = %.critedge
  %.idx106 = shl nuw nsw i64 %.sroa.18.0.lcssa, 2
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 %.idx106
  br label %bb.e

bb.d:                                             ; preds = %bb.f
  %i.s = add i64 %.sroa.01.0.i.i104, -1
  %.not.not.not.not.i.not = icmp eq ptr %.sroa.0.0.lcssa, %i.u
  br i1 %.not.not.not.not.i.not, label %.critedge44, label %bb.e

bb.e:                                             ; preds = %.lr.ph105, %bb.d
  %.sroa.01.0.i.i104 = phi i64 [ %.sroa.18.0.lcssa, %.lr.ph105 ], [ %i.s, %bb.d ] ; 3 uses
  %i.t = phi ptr [ %i.r, %.lr.ph105 ], [ %i.u, %bb.d ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !noalias !3679, !noundef !5 ; 4 uses
  %i.w = xor i32 %i.v, 55296
  %i.x = add i32 %i.w, -1114112
  %i.y = icmp ult i32 %i.x, -1112064
  br i1 %i.y, label %.split.i.i.i, label %bb.f

.split.i.i.i:                                     ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3680
  store i32 %i.v, ptr %i.a, align 4, !noalias !3680
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #31, !noalias !3679
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.z = icmp ult i32 %i.v, 1114112
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i32 %i.v, 47
  br i1 %i.aa, label %bb.g, label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i64 %.sroa.01.0.i.i104, 0
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt8slice_toCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.lcssa, i64 noundef %.sroa.18.0.lcssa, i64 noundef %.sroa.01.0.i.i104) ; 2 uses
  %.sroa.18.165 = extractvalue { ptr, i64 } %i.ac, 1 ; 2 uses
  %cond66 = icmp eq i64 %.sroa.18.165, 0
  br i1 %cond66, label %.critedge44, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %bb.h
  %.sroa.0.164 = extractvalue { ptr, i64 } %i.ac, 0
  br label %.lr.ph69

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #31
  unreachable

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.j
  %.sroa.18.168 = phi i64 [ %.sroa.18.1, %bb.j ], [ %.sroa.18.165, %.lr.ph69.preheader ] ; 4 uses
  %.sroa.0.167 = phi ptr [ %.sroa.0.1, %bb.j ], [ %.sroa.0.164, %.lr.ph69.preheader ] ; 3 uses
  %i.ad = getelementptr [4 x i8], ptr %.sroa.0.167, i64 %.sroa.18.168
  %i.ae = getelementptr i8, ptr %i.ad, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !range !13, !noundef !5
  %i.ag = icmp eq i32 %i.af, 47
  br i1 %i.ag, label %bb.j, label %.critedge44

bb.j:                                             ; preds = %.lr.ph69
  %i.ah = add i64 %.sroa.18.168, -1
  %i.ai = tail call { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt8slice_toCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.167, i64 noundef %.sroa.18.168, i64 noundef %i.ah) ; 2 uses
  %.sroa.0.1 = extractvalue { ptr, i64 } %i.ai, 0 ; 2 uses
  %.sroa.18.1 = extractvalue { ptr, i64 } %i.ai, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  %cond = icmp eq i64 %.sroa.18.1, 0
  br i1 %cond, label %.critedge44, label %.lr.ph69

bb.k:                                             ; preds = %.lr.ph
  %i.aj = add i64 %.sroa.18.058, -1
  %i.ak = tail call { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt8slice_toCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.059, i64 noundef %.sroa.18.058, i64 noundef %i.aj) ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0      ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.ak, 1      ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %.critedge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define noalias noundef ptr @_RNvNtCs8frGy5WneL6_4fish5wutil8wopendir(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvCskr4qsHYS30i_15fish_widestring11wcs2zstring(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %i.d = tail call noundef ptr @opendir(ptr noundef %i.b) #34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  store i8 0, ptr %i.b, align 1
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, 0) %i.c, i64 noundef 1) #34
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1xwejQucwHj_5alloc3ffi5c_str7CStringECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8frGy5WneL6_4fish5wutil9perror_io(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.i, align 8
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf3argRNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorNtB5_5ToArg6to_arg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #29
          to label %.body unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 7, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @18, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #29
          to label %.body unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !3684)
  %i.m = load i8, ptr %i.e, align 8, !range !16, !alias.scope !3684, !noalias !3685, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %.preheader.preheader, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3686
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !17, !alias.scope !3684, !noalias !3685, !noundef !5
  store i8 %i.p, ptr %i.a, align 1, !noalias !3686
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #31
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.f
  unreachable

.preheader:                                       ; preds = %.preheader.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
          to label %.preheader.1 unwind label %.peel.begin

.preheader.1:                                     ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = invoke { i64, i64 } @_RINvNtCs8frGy5WneL6_4fish5wutil30unescape_bytes_and_write_to_fdRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, i32 noundef 2)
          to label %bb.j unwind label %bb.i       ; 0 uses

.preheader.preheader:                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d)
          to label %.preheader unwind label %.peel.begin

.peel.begin:                                      ; preds = %.preheader, %.preheader.preheader
  %i.s = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader ]
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.s, label %.body, label %bb.g

bb.g:                                             ; preds = %.peel.begin
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #29
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

.body:                                            ; preds = %.peel.begin, %bb.g, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.l, %bb.d ], [ %i.t, %bb.g ], [ %i.t, %.peel.begin ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %common.resume unwind label %bb.m

bb.i:                                             ; preds = %.preheader.1
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #29
          to label %common.resume unwind label %bb.m

bb.j:                                             ; preds = %.preheader.1
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.u, %bb.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.m:                                             ; preds = %bb.i, %.body, %bb.d, %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvNtCs8frGy5WneL6_4fish5wutil9wbasename(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.loopexit31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %1, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %.not12.not.not.i.not = icmp eq ptr %i.e, %i.d
  br i1 %.not12.not.not.i.not, label %.loopexit31, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi ptr [ %0, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !noalias !3701, !noundef !5 ; 4 uses
  %i.h = xor i32 %i.g, 55296
  %i.i = add i32 %i.h, -1114112
  %i.j = icmp ult i32 %i.i, -1112064
  br i1 %i.j, label %.split.i.i, label %bb.d
end_hunk_10
begin_hunk_11_@_RNvXs2_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_9GraphemesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 79 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.pre.i = load i8, ptr %i.bi, align 1, !range !16, !alias.scope !3866, !noalias !3868
  %i.bs = trunc nuw i8 %.pre.i to i1
  br label %bb.k

bb.k:                                             ; preds = %bb.cj, %bb.j
  %i.bt = phi i1 [ %i.bs, %bb.j ], [ false, %bb.cj ]
  %.sroa.0.0.i5 = phi ptr [ %.sroa.0.2.ph.i, %bb.j ], [ %.sroa.0.1.i, %bb.cj ] ; 9 uses
  %.sroa.08.0.i = phi i32 [ %.sroa.4.0.i.ph.i, %bb.j ], [ %.sroa.08.2.i, %bb.cj ] ; 28 uses
  br i1 %i.bt, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = load i64, ptr %i.c, align 8, !alias.scope !3866, !noalias !3868, !noundef !5
  %i.bv = icmp ult i32 %.sroa.08.0.i, 128
  br i1 %i.bv, label %bb.p, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bw = load i8, ptr %i.bk, align 8, !range !3873, !alias.scope !3866, !noalias !3868, !noundef !5
  %.not29.i = icmp eq i8 %i.bw, -1
  br i1 %.not29.i, label %bb.ci, label %bb.ai

bb.n:                                             ; preds = %bb.l
  %i.bx = icmp ult i32 %.sroa.08.0.i, 2048
  br i1 %i.bx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = icmp ult i32 %.sroa.08.0.i, 65536
  %..i = select i1 %i.by, i64 3, i64 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.sroa.01.0.i = phi i64 [ 2, %bb.n ], [ %..i, %bb.o ], [ 1, %bb.l ]
  %i.bz = tail call i64 @llvm.uadd.sat.i64(i64 %i.bu, i64 %.sroa.01.0.i)
  store i64 %i.bz, ptr %i.c, align 8, !alias.scope !3866, !noalias !3868
  store i8 0, ptr %i.bj, align 2, !alias.scope !3866, !noalias !3868
  %i.ca = load i8, ptr %i.bk, align 8, !range !3873, !alias.scope !3866, !noalias !3868, !noundef !5 ; 3 uses
  store i8 -1, ptr %i.bk, align 8, !alias.scope !3866, !noalias !3868
  store i8 %i.ca, ptr %i.bl, align 1, !alias.scope !3866, !noalias !3868
  %.not27.i = icmp eq i8 %i.ca, -1
  br i1 %.not27.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.cb = phi i8 [ %i.cc, %bb.r ], [ %i.ca, %bb.p ]
  switch i32 %.sroa.08.0.i, label %bb.s [
    i32 2381, label %bb.t
    i32 2509, label %bb.t
    i32 2765, label %bb.t
    i32 2893, label %bb.t
    i32 3149, label %bb.t
    i32 3405, label %bb.t
    i32 4153, label %bb.t
    i32 6098, label %bb.t
    i32 6752, label %bb.t
    i32 6980, label %bb.t
    i32 7083, label %bb.t
    i32 43456, label %bb.t
    i32 43766, label %bb.t
    i32 68159, label %bb.t
    i32 69939, label %bb.t
    i32 70608, label %bb.t
    i32 71998, label %bb.t
    i32 72263, label %bb.t
    i32 72345, label %bb.t
    i32 73538, label %bb.t
  ]

bb.r:                                             ; preds = %bb.p
  %i.cc = tail call noundef i8 @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.08.0.i), !noalias !3868 ; 2 uses
  store i8 %i.cc, ptr %i.bl, align 1, !alias.scope !3866, !noalias !3868
  br label %bb.q

bb.s:                                             ; preds = %bb.q
  %i.cd = icmp samesign ult i32 %.sroa.08.0.i, 43302
  %i.ce = select i1 %i.cd, i64 0, i64 188, !unpredictable !5 ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, 94               ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.cf ; 2 uses
  %.val12.1.i.i = load i32, ptr %i.cg, align 4, !range !13, !noalias !3874, !noundef !5
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.val13.1.i.i = load i32, ptr %i.ch, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i17.1.i.i = icmp samesign ugt i32 %.val12.1.i.i, %.sroa.08.0.i
  %.not1.i18.1.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val13.1.i.i
  %i.ci = select i1 %.not1.i18.1.i.i, i1 %.not.i17.1.i.i, i1 false
  %i.cj = select i1 %i.ci, i64 %i.ce, i64 %i.cf, !unpredictable !5 ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, 47               ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.ck ; 2 uses
  %.val12.2.i.i = load i32, ptr %i.cl, align 4, !range !13, !noalias !3874, !noundef !5
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %.val13.2.i.i = load i32, ptr %i.cm, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i17.2.i.i = icmp samesign ugt i32 %.val12.2.i.i, %.sroa.08.0.i
  %.not1.i18.2.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val13.2.i.i
  %i.cn = select i1 %.not1.i18.2.i.i, i1 %.not.i17.2.i.i, i1 false
  %i.co = select i1 %i.cn, i64 %i.cj, i64 %i.ck, !unpredictable !5 ; 2 uses
  %i.cp = add nuw nsw i64 %i.co, 24               ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.cp ; 2 uses
  %.val12.3.i.i = load i32, ptr %i.cq, align 4, !range !13, !noalias !3874, !noundef !5
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.val13.3.i.i = load i32, ptr %i.cr, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i17.3.i.i = icmp samesign ugt i32 %.val12.3.i.i, %.sroa.08.0.i
  %.not1.i18.3.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val13.3.i.i
  %i.cs = select i1 %.not1.i18.3.i.i, i1 %.not.i17.3.i.i, i1 false
  %i.ct = select i1 %i.cs, i64 %i.co, i64 %i.cp, !unpredictable !5 ; 2 uses
  %i.cu = add nuw nsw i64 %i.ct, 12               ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.cu ; 2 uses
  %.val12.4.i.i = load i32, ptr %i.cv, align 4, !range !13, !noalias !3874, !noundef !5
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %.val13.4.i.i = load i32, ptr %i.cw, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i17.4.i.i = icmp samesign ugt i32 %.val12.4.i.i, %.sroa.08.0.i
  %.not1.i18.4.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val13.4.i.i
  %i.cx = select i1 %.not1.i18.4.i.i, i1 %.not.i17.4.i.i, i1 false
  %i.cy = select i1 %i.cx, i64 %i.ct, i64 %i.cu, !unpredictable !5 ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, 6                ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.cz ; 2 uses
  %.val12.5.i.i = load i32, ptr %i.da, align 4, !range !13, !noalias !3874, !noundef !5
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %.val13.5.i.i = load i32, ptr %i.db, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i17.5.i.i = icmp samesign ugt i32 %.val12.5.i.i, %.sroa.08.0.i
  %.not1.i18.5.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val13.5.i.i
  %i.dc = select i1 %.not1.i18.5.i.i, i1 %.not.i17.5.i.i, i1 false
  %i.dd = select i1 %i.dc, i64 %i.cy, i64 %i.cz, !unpredictable !5 ; 2 uses
  %i.de = add nuw nsw i64 %i.dd, 3                ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.de ; 2 uses
  %.val12.6.i.i = load i32, ptr %i.df, align 4, !range !13, !noalias !3874, !noundef !5
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val13.6.i.i = load i32, ptr %i.dg, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i17.6.i.i = icmp samesign ugt i32 %.val12.6.i.i, %.sroa.08.0.i
  %.not1.i18.6.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val13.6.i.i
  %i.dh = select i1 %.not1.i18.6.i.i, i1 %.not.i17.6.i.i, i1 false
  %i.di = select i1 %i.dh, i64 %i.dd, i64 %i.de, !unpredictable !5 ; 2 uses
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.dj ; 2 uses
  %.val12.7.i.i = load i32, ptr %i.dk, align 4, !range !13, !noalias !3874, !noundef !5
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %.val13.7.i.i = load i32, ptr %i.dl, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i17.7.i.i = icmp samesign ugt i32 %.val12.7.i.i, %.sroa.08.0.i
  %.not1.i18.7.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val13.7.i.i
  %i.dm = select i1 %.not1.i18.7.i.i, i1 %.not.i17.7.i.i, i1 false
  %i.dn = select i1 %i.dm, i64 %i.di, i64 %i.dj, !unpredictable !5 ; 2 uses
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.do ; 2 uses
  %.val12.8.i.i = load i32, ptr %i.dp, align 4, !range !13, !noalias !3874, !noundef !5
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  %.val13.8.i.i = load i32, ptr %i.dq, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i17.8.i.i = icmp samesign ugt i32 %.val12.8.i.i, %.sroa.08.0.i
  %.not1.i18.8.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val13.8.i.i
  %i.dr = select i1 %.not1.i18.8.i.i, i1 %.not.i17.8.i.i, i1 false
  %i.ds = select i1 %i.dr, i64 %i.dn, i64 %i.do, !unpredictable !5
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr @103, i64 %i.ds ; 2 uses
  %.val15.i.i = load i32, ptr %i.dt, align 4, !range !13, !noalias !3874, !noundef !5
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %.val16.i.i = load i32, ptr %i.du, align 4, !range !13, !noalias !3874, !noundef !5
  %.not.i.i.i = icmp samesign ule i32 %.val15.i.i, %.sroa.08.0.i
  %.not1.i.i.i = icmp samesign ule i32 %.sroa.08.0.i, %.val16.i.i
  %.not.i32.not.i = select i1 %.not1.i.i.i, i1 %.not.i.i.i, i1 false
  br i1 %.not.i32.not.i, label %bb.w, label %.sink.split.i

bb.t:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.dv = load i64, ptr %i.bm, align 8, !range !9, !alias.scope !3866, !noalias !3868, !noundef !5
  %i.dw = load i64, ptr %i.bn, align 8, !alias.scope !3866, !noalias !3868 ; 2 uses
  %i.dx = trunc nuw i64 %i.dv to i1
  br i1 %i.dx, label %bb.u, label %.sink.split.i

bb.u:                                             ; preds = %bb.t
  %i.dy = icmp eq i64 %i.dw, -1
  br i1 %i.dy, label %bb.v, label %_RNCNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB7_14GraphemeCursor13next_boundary0Cs8frGy5WneL6_4fish.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #31, !noalias !3868
  unreachable

_RNCNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB7_14GraphemeCursor13next_boundary0Cs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.u
  %i.dz = add nuw i64 %i.dw, 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RNCNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB7_14GraphemeCursor13next_boundary0Cs8frGy5WneL6_4fish.exit.i.i, %bb.t, %bb.s
  %.sink.i = phi i64 [ 0, %bb.s ], [ %i.dz, %_RNCNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB7_14GraphemeCursor13next_boundary0Cs8frGy5WneL6_4fish.exit.i.i ], [ 1, %bb.t ]
  store i64 1, ptr %i.bm, align 8, !alias.scope !3866, !noalias !3868
  store i64 %.sink.i, ptr %i.bn, align 8, !alias.scope !3866, !noalias !3868
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i, %bb.s
  %cond.i = icmp eq i8 %i.cb, 11
  br i1 %cond.i, label %bb.x, label %bb.y, !prof !3875

bb.x:                                             ; preds = %bb.w
  %i.ea = load i64, ptr %i.bo, align 8, !range !9, !alias.scope !3866, !noalias !3868, !noundef !5
  %i.eb = trunc nuw i64 %i.ea to i1
  br i1 %i.eb, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.ac, %bb.x, %bb.w
  %storemerge160.i = phi i64 [ 1, %bb.w ], [ 1, %bb.ac ], [ 0, %bb.x ]
  %storemerge.i = phi i64 [ 0, %bb.w ], [ %i.fn, %bb.ac ], [ undef, %bb.x ]
  store i64 %storemerge160.i, ptr %i.bo, align 8, !alias.scope !3866, !noalias !3868
  store i64 %storemerge.i, ptr %i.bp, align 8, !alias.scope !3866, !noalias !3868
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i5) ]
  %i.ec = icmp eq ptr %.sroa.0.0.i5, %i.u
  br i1 %i.ec, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 1 ; 3 uses
  %i.ee = load i8, ptr %.sroa.0.0.i5, align 1, !alias.scope !3867, !noalias !3876, !noundef !5 ; 5 uses
  %i.ef = icmp sgt i8 %i.ee, -1
  br i1 %i.ef, label %bb.aa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i33.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i33.i: ; preds = %bb.z
  %i.eg = and i8 %i.ee, 31
  %i.eh = zext nneg i8 %i.eg to i32               ; 3 uses
  %i.ei = icmp ne ptr %i.ed, %i.u
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 2 ; 3 uses
  %i.ek = load i8, ptr %i.ed, align 1, !alias.scope !3867, !noalias !3876, !noundef !5
  %i.el = shl nuw nsw i32 %i.eh, 6
  %i.em = and i8 %i.ek, 63
  %i.en = zext nneg i8 %i.em to i32               ; 2 uses
  %i.eo = or disjoint i32 %i.el, %i.en
  %i.ep = icmp samesign ugt i8 %i.ee, -33
  br i1 %i.ep, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i36.i, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.eq = zext nneg i8 %i.ee to i32
  br label %bb.ae

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i36.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i33.i
  %i.er = icmp ne ptr %i.ej, %i.u
  tail call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 3 ; 3 uses
  %i.et = load i8, ptr %i.ej, align 1, !alias.scope !3867, !noalias !3876, !noundef !5
  %i.eu = shl nuw nsw i32 %i.en, 6
  %i.ev = and i8 %i.et, 63
  %i.ew = zext nneg i8 %i.ev to i32
  %i.ex = or disjoint i32 %i.eu, %i.ew            ; 2 uses
  %i.ey = shl nuw nsw i32 %i.eh, 12
  %i.ez = or disjoint i32 %i.ex, %i.ey
  %i.fa = icmp samesign ugt i8 %i.ee, -17
  br i1 %i.fa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i37.i, label %bb.ae

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i37.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i36.i
  %i.fb = icmp ne ptr %i.es, %i.u
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i5, i64 4
  %i.fd = load i8, ptr %i.es, align 1, !alias.scope !3867, !noalias !3876, !noundef !5
  %i.fe = shl nuw nsw i32 %i.eh, 18
  %i.ff = and i32 %i.fe, 1835008
  %i.fg = shl nuw nsw i32 %i.ex, 6
  %i.fh = and i8 %i.fd, 63
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = or disjoint i32 %i.fg, %i.fi
  %i.fk = or disjoint i32 %i.fj, %i.ff
  br label %bb.ae

bb.ab:                                            ; preds = %bb.x
  %i.fl = load i64, ptr %i.bp, align 8, !alias.scope !3866, !noalias !3868 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, -1
  br i1 %i.fm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fn = add nuw i64 %i.fl, 1
  br label %bb.y

bb.ad:                                            ; preds = %bb.ab
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #31, !noalias !3868
  unreachable

bb.ae:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i37.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i36.i, %bb.aa, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i33.i
  %.sroa.0.3.ph.i = phi ptr [ %i.ej, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i33.i ], [ %i.es, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i36.i ], [ %i.fc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i37.i ], [ %i.ed, %bb.aa ]
  %.sroa.4.0.i34.ph.i = phi i32 [ %i.eo, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i33.i ], [ %i.ez, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i36.i ], [ %i.fk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i37.i ], [ %i.eq, %bb.aa ] ; 3 uses
  %i.fo = icmp samesign ult i32 %.sroa.4.0.i34.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = tail call noundef i8 @_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.0.i34.ph.i), !noalias !3868
  store i8 %i.fp, ptr %i.bk, align 8, !alias.scope !3866, !noalias !3868
  br label %bb.ai

bb.af:                                            ; preds = %bb.y
  %i.fq = load i64, ptr %i.c, align 8, !alias.scope !3866, !noalias !3868, !noundef !5
  %i.fr = load i64, ptr %i.l, align 8, !alias.scope !3866, !noalias !3868, !noundef !5
  %i.fs = icmp eq i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.bi, align 1, !alias.scope !3866, !noalias !3868
  br label %bb.ck

bb.ah:                                            ; preds = %bb.af
  store i8 2, ptr %i.bj, align 2, !alias.scope !3866, !noalias !3868
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ci, %bb.ah, %bb.ae, %bb.m
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i5, %bb.ci ], [ %.sroa.0.0.i5, %bb.m ], [ %.sroa.0.3.ph.i, %bb.ae ], [ %i.u, %bb.ah ]
  %.sroa.08.2.i = phi i32 [ %.sroa.08.0.i, %bb.ci ], [ %.sroa.08.0.i, %bb.m ], [ %.sroa.4.0.i34.ph.i, %bb.ae ], [ %.sroa.08.0.i, %bb.ah ]
  store i8 1, ptr %i.bi, align 1, !alias.scope !3866, !noalias !3868
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3879)
  %i.ft = load i8, ptr %i.bj, align 2, !range !17, !alias.scope !3880, !noalias !3881, !noundef !5
  switch i8 %i.ft, label %bb.aj [
    i8 2, label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i
    i8 1, label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread162.i
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fu = load i64, ptr %i.c, align 8, !alias.scope !3880, !noalias !3881, !noundef !5 ; 35 uses
  %.not.i39.i = icmp ult i64 %i.fu, %i.k          ; 6 uses
  br i1 %.not.i39.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.fv = load i64, ptr %0, align 8, !range !9, !alias.scope !3880, !noalias !3881, !noundef !5
  %i.fw = trunc nuw i64 %i.fv to i1
  br i1 %i.fw, label %bb.am, label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.fx = icmp ugt i64 %i.fu, %i.k
  %i.fy = load i8, ptr %i.bk, align 8, !range !3873, !alias.scope !3880, !noalias !3881
  %.not38.i.i = icmp eq i8 %i.fy, -1
  %or.cond.i.i = select i1 %i.fx, i1 true, i1 %.not38.i.i
  br i1 %or.cond.i.i, label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i.loopexit, label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !3880, !noalias !3881, !noundef !5
  br label %_RNvMs4_NtCsg9url7n1wdL_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread58.i

bb.an:                                            ; preds = %bb.ak
  %i.gb = load i8, ptr %i.bk, align 8, !range !3873, !alias.scope !3880, !noalias !3881, !noundef !5 ; 2 uses
  %.not39.i.i = icmp eq i8 %i.gb, -1
  br i1 %.not39.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.aw, %bb.an
  %i.gc = phi i8 [ %i.hx, %bb.aw ], [ %i.gb, %bb.an ] ; 3 uses
  %i.gd = phi i64 [ %.pre.i.i, %bb.aw ], [ %i.fu, %bb.an ]
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %bb.ay, label %bb.az

bb.ap:                                            ; preds = %bb.an
  %i.gf = icmp eq i64 %i.fu, 0
  br i1 %i.gf, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not.i39.i, label %bb.ar, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.aq
  %i.gg = icmp eq i64 %i.fu, %i.k
  br i1 %i.gg, label %bb.as, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.gh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !3882, !noalias !3883, !noundef !5
  %i.gj = icmp sgt i8 %i.gi, -65
  br i1 %i.gj, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar, %.split.i.i.i, %bb.ap
  %i.gk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu ; 4 uses
  %i.gl = icmp samesign eq i64 %i.fu, %i.k
  br i1 %i.gl, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gm = load i8, ptr %i.gk, align 1, !alias.scope !3884, !noalias !3885, !noundef !5 ; 5 uses
  %i.gn = icmp sgt i8 %i.gm, -1
  br i1 %i.gn, label %bb.au, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i: ; preds = %bb.at
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gp = and i8 %i.gm, 31
  %i.gq = zext nneg i8 %i.gp to i32               ; 3 uses
  %i.gr = add nuw nsw i64 %i.fu, 1
  %i.gs = icmp samesign ne i64 %i.gr, %i.k
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = load i8, ptr %i.go, align 1, !alias.scope !3884, !noalias !3885, !noundef !5
  %i.gu = shl nuw nsw i32 %i.gq, 6
  %i.gv = and i8 %i.gt, 63
  %i.gw = zext nneg i8 %i.gv to i32               ; 2 uses
  %i.gx = or disjoint i32 %i.gu, %i.gw
  %i.gy = icmp samesign ugt i8 %i.gm, -33
  br i1 %i.gy, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.gz = zext nneg i8 %i.gm to i32
  br label %bb.aw

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.hb = add nuw nsw i64 %i.fu, 2
  %i.hc = icmp samesign ne i64 %i.hb, %i.k
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = load i8, ptr %i.ha, align 1, !alias.scope !3884, !noalias !3885, !noundef !5
  %i.he = shl nuw nsw i32 %i.gw, 6
  %i.hf = and i8 %i.hd, 63
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = or disjoint i32 %i.he, %i.hg            ; 2 uses
  %i.hi = shl nuw nsw i32 %i.gq, 12
  %i.hj = or disjoint i32 %i.hh, %i.hi
  %i.hk = icmp samesign ugt i8 %i.gm, -17
  br i1 %i.hk, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i, label %bb.aw

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
end_hunk_11
