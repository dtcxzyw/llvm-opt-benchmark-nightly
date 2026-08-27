Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.12?download=true
inline.NumInlined: 991
inline.NumDeleted: 464
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes13AssocItemListECs33K2ylI4knu_10hir_expand:bb.a
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13AssocItemListEECs33K2ylI4knu_10hir_expand.exit: ; preds = %.noexc7, %.noexc, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes13AssocItemListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs33K2ylI4knu_10hir_expand.exit
  %i.ab = phi ptr [ %i.i, %_RINvYINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1H_8find_map5checkINtB6_10SyntaxNodeBQ_ENtNtNtNtBU_3ast9generated5nodes13AssocItemListNvYB3y_NtB3E_7AstNode4castE0INtNtNtB1P_3ops12control_flow11ControlFlowB3y_EECs33K2ylI4knu_10hir_expand.exit ], [ null, %.noexc ], [ null, %.noexc7 ]
  %.val = load ptr, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.ac = icmp eq ptr %.val, null
  br i1 %i.ac, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit9, label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13AssocItemListEECs33K2ylI4knu_10hir_expand.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !8
  %i.af = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit9

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit9: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13AssocItemListEECs33K2ylI4knu_10hir_expand.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.ab

bb.m:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.i, %.body, %bb.j
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1t_9generated5nodes4AttrENCNvNtB1t_6traits21attrs_including_inner0EB27_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !30, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !372
  store ptr %i.f, ptr %i.b, align 8, !noalias !380
  %i.g = tail call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4AttrENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not12.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrQNCNvNtB1i_6traits21attrs_including_inner0E0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i
  %i.h = phi ptr [ %i.t, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrQNCNvNtB1i_6traits21attrs_including_inner0E0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i ], [ %i.g, %bb.b ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !380
  store ptr %i.h, ptr %i.a, align 8, !noalias !384
  %i.i = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtNtCsjJXvCMGntp8_6syntax3ast6traits21attrs_including_inner0INtB7_5FnMutTRNtNtNtBU_9generated5nodes4AttrEE8call_mutCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noalias !387, !noundef !8
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !noalias !387
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %common.resume

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.h) #37
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  br i1 %i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB12_9generated5nodes4AttrENCNvNtB12_6traits21attrs_including_inner0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs33K2ylI4knu_10hir_expand.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !387, !noundef !8
  %i.q = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !noalias !387
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrQNCNvNtB1i_6traits21attrs_including_inner0E0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.h) #37
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrQNCNvNtB1i_6traits21attrs_including_inner0E0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.l ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrQNCNvNtB1i_6traits21attrs_including_inner0E0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !380
  %i.t = call noundef ptr @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4AttrENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB12_9generated5nodes4AttrENCNvNtB12_6traits21attrs_including_inner0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !372
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1E_9generated5nodes4AttrENCNvNtB1E_6traits21attrs_including_inner0EEECs33K2ylI4knu_10hir_expand.exit, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB12_9generated5nodes4AttrENCNvNtB12_6traits21attrs_including_inner0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs33K2ylI4knu_10hir_expand.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1E_9generated5nodes4AttrENCNvNtB1E_6traits21attrs_including_inner0EEECs33K2ylI4knu_10hir_expand.exit ], [ %i.h, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB12_9generated5nodes4AttrENCNvNtB12_6traits21attrs_including_inner0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs33K2ylI4knu_10hir_expand.exit ]
  ret ptr %.sroa.0.0

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4AttrQNCNvNtB1i_6traits21attrs_including_inner0E0Cs33K2ylI4knu_10hir_expand.exit.i.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !372
  %.val = load i64, ptr %0, align 8, !range !30, !noundef !8
  %.val4 = load ptr, ptr %i.e, align 8            ; 3 uses
  %i.u = icmp eq i64 %.val, 0
  %i.v = icmp eq ptr %.val4, null
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1E_9generated5nodes4AttrENCNvNtB1E_6traits21attrs_including_inner0EEECs33K2ylI4knu_10hir_expand.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noundef !8
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1E_9generated5nodes4AttrENCNvNtB1E_6traits21attrs_including_inner0EEECs33K2ylI4knu_10hir_expand.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1E_9generated5nodes4AttrENCNvNtB1E_6traits21attrs_including_inner0EEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.l

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters6filter6FilterINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1E_9generated5nodes4AttrENCNvNtB1E_6traits21attrs_including_inner0EEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.j, %.loopexit, %bb.k
  store i64 0, ptr %0, align 8
  br label %bb.i

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  br label %common.resume
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_17ProcMacrosBuilder6insert0E0EB18_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #6 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_17ProcMacrosBuilder6insert0E0EB18_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_17ProcMacrosBuilder6insert0E0EB18_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_17ProcMacrosBuilder6insert0E0EB18_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val17 = load ptr, ptr %i.n, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.0.0, i64 24
  %.sroa.0.0.val18 = load i8, ptr %i.o, align 8, !range !368, !noundef !8 ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val19 = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.04.0, i64 24
  %.sroa.04.0.val20 = load i8, ptr %i.q, align 8, !range !368, !noundef !8 ; 2 uses
  %i.r = ptrtoint ptr %.sroa.0.0.val17 to i64
  %i.s = and i64 %i.r, 1
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %.sroa.0.0.val17, i64 %i.t ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !8 ; 4 uses
  %i.y = ptrtoint ptr %.sroa.04.0.val19 to i64
  %i.z = and i64 %i.y, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = getelementptr i8, ptr %.sroa.04.0.val19, i64 %i.aa ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !8 ; 4 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ae)
  %i.af = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.ac, i64 %spec.store.select.i.i) ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %i.x, %i.ae
  %spec.select.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag ; 2 uses
  %i.aj = icmp eq i64 %spec.select.i.i, 0
  %5 = icmp samesign ult i8 %.sroa.0.0.val18, %.sroa.04.0.val20
  %6 = icmp slt i64 %spec.select.i.i, 0
  %spec.select.i = select i1 %i.aj, i1 %5, i1 %6  ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val15 = load ptr, ptr %i.ak, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.al = getelementptr i8, ptr %.sroa.08.0, i64 24
  %.sroa.08.0.val16 = load i8, ptr %i.al, align 8, !range !368, !noundef !8 ; 2 uses
  %i.am = ptrtoint ptr %.sroa.08.0.val15 to i64
  %i.an = and i64 %i.am, 1
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr i8, ptr %.sroa.08.0.val15, i64 %i.ao ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noundef !8 ; 4 uses
  %spec.store.select.i.i21 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.as)
  %i.at = tail call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.aq, i64 %spec.store.select.i.i21) ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = icmp eq i32 %i.at, 0
  %i.aw = sub i64 %i.x, %i.as
  %spec.select.i.i22 = select i1 %i.av, i64 %i.aw, i64 %i.au ; 2 uses
  %i.ax = icmp eq i64 %spec.select.i.i22, 0
  %7 = icmp samesign ult i8 %.sroa.0.0.val18, %.sroa.08.0.val16
  %8 = icmp slt i64 %spec.select.i.i22, 0
  %spec.select.i23 = select i1 %i.ax, i1 %7, i1 %8
  %i.ay = xor i1 %spec.select.i, %spec.select.i23
  br i1 %i.ay, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SBZ_16sort_unstable_byNCNvMs0_B11_NtB11_17ProcMacrosBuilder6insert0E0EB13_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i24 = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.as)
  %i.az = tail call i32 @memcmp(ptr nonnull %i.ac, ptr nonnull %i.aq, i64 %spec.store.select.i.i24) ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = sub i64 %i.ae, %i.as
  %spec.select.i.i25 = select i1 %i.bb, i64 %i.bc, i64 %i.ba ; 2 uses
  %i.bd = icmp eq i64 %spec.select.i.i25, 0
  %9 = icmp samesign ult i8 %.sroa.04.0.val20, %.sroa.08.0.val16
  %10 = icmp slt i64 %spec.select.i.i25, 0
  %spec.select.i26 = select i1 %i.bd, i1 %9, i1 %10
  %i.be = xor i1 %spec.select.i, %spec.select.i26
  %..i = select i1 %i.be, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SBZ_16sort_unstable_byNCNvMs0_B11_NtB11_17ProcMacrosBuilder6insert0E0EB13_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SBZ_16sort_unstable_byNCNvMs0_B11_NtB11_17ProcMacrosBuilder6insert0E0EB13_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB14_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly %4) unnamed_addr #7 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB14_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB14_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB14_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i32, ptr %.sroa.0.0, align 4, !noundef !8 ; 2 uses
  %.sroa.04.0.val14 = load i32, ptr %.sroa.04.0, align 4, !noundef !8 ; 2 uses
  %i.n = icmp ult i32 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i32, ptr %.sroa.08.0, align 4, !noundef !8 ; 2 uses
  %i.o = icmp ult i32 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i32 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4recvs_0uEs0_0Cs33K2ylI4knu_10hir_expand(ptr nofree captures(none) %.0.val) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call noundef nonnull ptr @_RNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB2_7Context3new() ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.0.copyload = load ptr, ptr %.0.val, align 8 ; 2 uses
  store ptr null, ptr %.0.val, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !64

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  invoke fastcc void @_RNCNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB7_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4recvs_0Cs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %i.c)
          to label %bb.g unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #39
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !397, !nonnull !8, !noundef !8
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !397
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.h = load ptr, ptr %i.b, align 8, !alias.scope !407, !nonnull !8, !noundef !8
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !407
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit6

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit6: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB7_7ChannelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeE4recvs_0Cs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !8, !align !165, !noundef !8
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !8, !align !408, !noundef !8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtNtNtCscAsMj0W7j8b_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.m = load i64, ptr %i.f, align 8, !range !30, !alias.scope !409, !noalias !412, !noundef !8
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.b, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs33K2ylI4knu_10hir_expand.exit.i, !prof !64

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !414
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !409, !noalias !412, !nonnull !8, !align !165, !noundef !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !110, !alias.scope !409, !noalias !412, !noundef !8
  store ptr %i.p, ptr %i.d, align 8, !noalias !414
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 %i.r, ptr %i.s, align 8, !noalias !414
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #39
          to label %bb.d unwind label %bb.c, !noalias !409

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscAsMj0W7j8b_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #38
          to label %common.resume unwind label %bb.e, !noalias !409

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #40, !noalias !409
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ai, %bb.c, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %.body.i ], [ %i.t, %bb.c ], [ %i.cp, %bb.ad ], [ %i.dk, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !409, !noalias !412, !nonnull !8, !align !165, !noundef !8 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load i8, ptr %i.x, align 8, !range !110, !alias.scope !409, !noalias !412, !noundef !8 ; 2 uses
  %i.z = trunc nuw i8 %i.y to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.aa = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultINtNtNtNtCscAsMj0W7j8b_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCs33K2ylI4knu_10hir_expand.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.ae, align 8
  store ptr %.0.val, ptr %i.e, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !415, !noalias !418, !noundef !8 ; 4 uses
  %i.ah = load i64, ptr %i.ac, align 8, !range !116, !alias.scope !415, !noalias !418, !noundef !8
end_hunk_0
