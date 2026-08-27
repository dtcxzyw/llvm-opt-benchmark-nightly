Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.05?download=true
inline.NumInlined: 1084
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4MetaECs33K2ylI4knu_10hir_expand:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 48 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !noundef !4 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #27
  unreachable

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.a
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 4
  %i.g = tail call noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.0.val)
  store ptr %i.g, ptr %i.b, align 8
  %i.h = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %.not19.i = icmp eq ptr %i.h, null
  br i1 %.not19.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc9
  %i.i = phi ptr [ %i.u, %.noexc9 ], [ %i.h, %.noexc ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1360
  store ptr %i.i, ptr %i.a, align 8, !noalias !1360
  %i.j = invoke noundef i16 @_RNvMs4_NtCs9GitHPCrz2Q_5rowan3apiINtB5_10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !4
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #30
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  switch i16 %i.j, label %bb.f [
    i16 186, label %.loopexit11.i.loopexit
    i16 188, label %.loopexit11.i.loopexit41
    i16 222, label %.loopexit11.i
    i16 262, label %.loopexit
    i16 295, label %.loopexit13
    i16 313, label %.loopexit24
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !noundef !4
  %i.r = add i32 %i.q, -1                         ; 2 uses
  store i32 %i.r, ptr %i.p, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0Cs33K2ylI4knu_10hir_expand.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.i) #30
          to label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0Cs33K2ylI4knu_10hir_expand.exit.i unwind label %.loopexit4

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0Cs33K2ylI4knu_10hir_expand.exit.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1360
  %i.u = invoke noundef ptr @_RNvXs7_NtCs9GitHPCrz2Q_5rowan3apiINtB5_18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc9 unwind label %.loopexit4 ; 2 uses

.noexc9:                                          ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0Cs33K2ylI4knu_10hir_expand.exit.i
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph.i

.loopexit4:                                       ; preds = %bb.g, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8find_map5checkINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtNtNtB1Z_3ast9generated5nodes4MetaNvYB2M_NtB2S_7AstNode4castE0Cs33K2ylI4knu_10hir_expand.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit4, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %lpad.loopexit, %.loopexit4 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val4 = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.v = icmp eq ptr %.val4, null
  br i1 %i.v, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.w = getelementptr inbounds nuw i8, ptr %.val4, i64 48 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !noundef !4
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val4) #30
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.m

.loopexit:                                        ; preds = %bb.e
  br label %.loopexit11.i

.loopexit13:                                      ; preds = %bb.e
  br label %.loopexit11.i

.loopexit24:                                      ; preds = %bb.e
  br label %.loopexit11.i

.loopexit11.i.loopexit:                           ; preds = %bb.e
  br label %.loopexit11.i

.loopexit11.i.loopexit41:                         ; preds = %bb.e
  br label %.loopexit11.i

.loopexit11.i:                                    ; preds = %bb.e, %.loopexit11.i.loopexit41, %.loopexit11.i.loopexit, %.loopexit24, %.loopexit13, %.loopexit
  %.sroa.0.0.i.i.i.ph.i = phi i64 [ 4, %.loopexit13 ], [ 3, %.loopexit ], [ 1, %.loopexit11.i.loopexit41 ], [ 0, %.loopexit11.i.loopexit ], [ 5, %.loopexit24 ], [ 2, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1360
  %i.aa = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.ph.i, 0
  %i.ab = insertvalue { i64, ptr } %i.aa, ptr %i.i, 1
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs33K2ylI4knu_10hir_expand.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs33K2ylI4knu_10hir_expand.exit: ; preds = %.noexc9, %.noexc, %.loopexit11.i
  %i.ac = phi { i64, ptr } [ %i.ab, %.loopexit11.i ], [ { i64 -1, ptr null }, %.noexc ], [ { i64 -1, ptr null }, %.noexc9 ]
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.ad = icmp eq ptr %.val, null
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit11, label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs33K2ylI4knu_10hir_expand.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noundef !4
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit11

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #30
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit11

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit11: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs33K2ylI4knu_10hir_expand.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, ptr } %i.ac

bb.m:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api18SyntaxNodeChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.i, %.body, %bb.j
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SBT_16sort_unstable_byNCNvMs0_BV_NtBV_17ProcMacrosBuilder6insert0E0EBX_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro7reverseBy_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48
  %.val9 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 56
  %.val10 = load i8, ptr %i.c, align 8, !range !1363, !noundef !4 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val11 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val12 = load i8, ptr %i.e, align 8, !range !1363, !noundef !4
  %i.f = ptrtoint ptr %.val9 to i64
  %i.g = and i64 %i.f, 1
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr i8, ptr %.val9, i64 %i.h   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = ptrtoint ptr %.val11 to i64
  %i.n = and i64 %i.m, 1
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr i8, ptr %.val11, i64 %i.o  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.s)
  %i.t = tail call i32 @memcmp(ptr nonnull %i.j, ptr nonnull %i.q, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %i.l, %i.s
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u ; 2 uses
  %i.x = icmp eq i64 %spec.select.i.i, 0
  %3 = icmp slt i64 %spec.select.i.i, 0
  %4 = icmp samesign ult i8 %.val10, %.val12
  %spec.select.i = select i1 %i.x, i1 %4, i1 %3   ; 2 uses
  %.not33 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %spec.select.i, label %.preheader, label %.preheader23

.preheader23:                                     ; preds = %bb.b
  br i1 %.not33, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not33, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit, label %.lr.ph29

.lr.ph:                                           ; preds = %.preheader23, %bb.c
  %.val8 = phi i8 [ %.val6, %bb.c ], [ %.val10, %.preheader23 ]
  %.val7 = phi ptr [ %.val5, %bb.c ], [ %.val9, %.preheader23 ] ; 2 uses
  %.sroa.01.0.i25 = phi i64 [ %i.au, %bb.c ], [ 2, %.preheader23 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i25 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %.val5 = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 24
  %.val6 = load i8, ptr %i.aa, align 8, !range !1363, !noundef !4 ; 2 uses
  %i.ab = ptrtoint ptr %.val5 to i64
  %i.ac = and i64 %i.ab, 1
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr i8, ptr %.val5, i64 %i.ad ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 2 uses
  %i.ai = ptrtoint ptr %.val7 to i64
  %i.aj = and i64 %i.ai, 1
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr i8, ptr %.val7, i64 %i.ak ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i13 = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ao)
  %i.ap = tail call i32 @memcmp(ptr nonnull %i.af, ptr nonnull %i.am, i64 %spec.store.select.i.i13) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub i64 %i.ah, %i.ao
  %spec.select.i.i14 = select i1 %i.ar, i64 %i.as, i64 %i.aq ; 2 uses
  %i.at = icmp eq i64 %spec.select.i.i14, 0
  %5 = icmp slt i64 %spec.select.i.i14, 0
  %6 = icmp samesign ult i8 %.val6, %.val8
  %spec.select.i15 = select i1 %i.at, i1 %6, i1 %5
  br i1 %spec.select.i15, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.au = add nuw nsw i64 %.sroa.01.0.i25, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit.thread, label %.lr.ph

.lr.ph29:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i8 [ %.val2, %bb.d ], [ %.val10, %.preheader ]
  %.val3 = phi ptr [ %.val, %bb.d ], [ %.val9, %.preheader ] ; 2 uses
  %.sroa.01.1.i28 = phi i64 [ %i.br, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.1.i28 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %.val = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 24
  %.val2 = load i8, ptr %i.ax, align 8, !range !1363, !noundef !4 ; 2 uses
  %i.ay = ptrtoint ptr %.val to i64
  %i.az = and i64 %i.ay, 1
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr i8, ptr %.val, i64 %i.ba  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noundef !4 ; 2 uses
  %i.bf = ptrtoint ptr %.val3 to i64
  %i.bg = and i64 %i.bf, 1
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = getelementptr i8, ptr %.val3, i64 %i.bh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bl)
  %i.bm = tail call i32 @memcmp(ptr nonnull %i.bc, ptr nonnull %i.bj, i64 %spec.store.select.i.i16) ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp eq i32 %i.bm, 0
  %i.bp = sub i64 %i.be, %i.bl
  %spec.select.i.i17 = select i1 %i.bo, i64 %i.bp, i64 %i.bn ; 2 uses
  %i.bq = icmp eq i64 %spec.select.i.i17, 0
  %7 = icmp slt i64 %spec.select.i.i17, 0
  %8 = icmp samesign ult i8 %.val2, %.val4
  %spec.select.i18 = select i1 %i.bq, i1 %8, i1 %7
  br i1 %spec.select.i18, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit

bb.d:                                             ; preds = %.lr.ph29
  %i.br = add nuw nsw i64 %.sroa.01.1.i28, 1      ; 2 uses
  %exitcond36.not = icmp eq i64 %i.br, %1
  br i1 %exitcond36.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit.thread, label %.lr.ph29

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit: ; preds = %.lr.ph, %.lr.ph29, %.preheader23, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader23 ], [ 2, %.preheader ], [ %.sroa.01.1.i28, %.lr.ph29 ], [ %.sroa.01.0.i25, %.lr.ph ] ; 2 uses
  %i.bs = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bt, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit.thread, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit
  br i1 %spec.select.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro7reverseBy_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit
  %i.bu = or i64 %1, 1
  %i.bv = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_17ProcMacrosBuilder6insert0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, i32 noundef %i.by, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro7reverseBy_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro7reverseBy_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEB14_.exit.i.i, %bb.a, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB6_SB12_16sort_unstable_byNCNvMs0_B14_NtB14_17ProcMacrosBuilder6insert0E0EB16_.exit.thread
  %i.bz = lshr i64 %1, 1
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.cf, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cb = xor i64 %.sroa.0.017.i.i, -1
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.cd = getelementptr [32 x i8], ptr %i.ca, i64 %i.cb
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs33K2ylI4knu_10hir_expand(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd, i64 noundef 4)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEB14_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #31
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroEB14_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cf = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cf, %i.bz
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro7reverseBy_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYBT_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex7reverseCs33K2ylI4knu_10hir_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val5 = load i32, ptr %i.b, align 4, !noundef !4 ; 3 uses
  %.val6 = load i32, ptr %0, align 4, !noundef !4
  %i.c = icmp ult i32 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i32, ptr %i.d, align 4, !noundef !4 ; 2 uses
  %i.e = icmp ult i32 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i32, ptr %i.g, align 4, !noundef !4 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.thread, label %.lr.ph17

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.thread, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit
  br i1 %i.c, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex7reverseCs33K2ylI4knu_10hir_expand.exit

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 3, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB17_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex7reverseCs33K2ylI4knu_10hir_expand.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex7reverseCs33K2ylI4knu_10hir_expand.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.thread, %bb.e
  ret void

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB12_NtNtB8_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 16
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 1152921504606846968      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [4 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !alias.scope !1369, !noalias !1367
  %wide.load39 = load <4 x i32>, ptr %i.v, align 4, !alias.scope !1369, !noalias !1367
  %i.w = getelementptr i8, ptr %i.u, i64 -12      ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -28      ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %i.w, align 4, !alias.scope !1372, !noalias !1364
  %wide.load41 = load <4 x i32>, ptr %i.x, align 4, !alias.scope !1372, !noalias !1364
  %reverse = shufflevector <4 x i32> %wide.load40, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse42 = shufflevector <4 x i32> %wide.load41, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.t, align 4, !alias.scope !1369, !noalias !1367
  store <4 x i32> %reverse42, ptr %i.v, align 4, !alias.scope !1369, !noalias !1367
  %reverse43 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse44 = shufflevector <4 x i32> %wide.load39, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse43, ptr %i.w, align 4, !alias.scope !1372, !noalias !1364
  store <4 x i32> %reverse44, ptr %i.x, align 4, !alias.scope !1372, !noalias !1364
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1373

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex7reverseCs33K2ylI4knu_10hir_expand.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !alias.scope !1369, !noalias !1367, !noundef !4
  %i.ad = load i32, ptr %i.ab, align 4, !alias.scope !1372, !noalias !1364
  store i32 %i.ad, ptr %i.aa, align 4, !alias.scope !1369, !noalias !1367
  store i32 %i.ac, ptr %i.ab, align 4, !alias.scope !1372, !noalias !1364
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex7reverseCs33K2ylI4knu_10hir_expand.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit11.i.i, !llvm.loop !1376
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_17ProcMacrosBuilder6insert0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(32) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph139

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph139

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1f_16sort_unstable_byNCNvMs0_B1h_NtB1h_17ProcMacrosBuilder6insert0E0EB1j_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.e

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.095.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.094.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort8heapsortNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_17ProcMacrosBuilder6insert0E0EB19_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.095.lcssa, i64 noundef %.sroa.15.094.lcssa, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4) #30
  br label %bb.e

.lr.ph139:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.092138 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.093137 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.094136 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.095135 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.f = add nsw i32 %.sroa.026.092138, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1377)
  %i.g = lshr i64 %.sroa.15.094136, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 224
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 %.idx2.i ; 4 uses
  %i.j = icmp samesign ult i64 %.sroa.15.094136, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph139
  %i.k = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_17ProcMacrosBuilder6insert0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.095135, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_17ProcMacrosBuilder6insert0E0EB19_.exit

bb.c:                                             ; preds = %.lr.ph139
  %i.l = getelementptr i8, ptr %.sroa.0.095135, i64 16
  %.val10.i = load ptr, ptr %i.l, align 8, !alias.scope !1377, !noalias !1380, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.095135, i64 24
  %.val11.i = load i8, ptr %i.m, align 8, !range !1363, !alias.scope !1377, !noalias !1380, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %.val12.i = load ptr, ptr %i.n, align 8, !alias.scope !1377, !noalias !1380, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr i8, ptr %i.h, i64 24
  %.val13.i = load i8, ptr %i.o, align 8, !range !1363, !alias.scope !1377, !noalias !1380, !noundef !4 ; 2 uses
  %i.p = ptrtoint ptr %.val10.i to i64
  %i.q = and i64 %i.p, 1
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %.val10.i, i64 %i.r ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1382, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noalias !1382, !noundef !4 ; 4 uses
  %i.w = ptrtoint ptr %.val12.i to i64
  %i.x = and i64 %i.w, 1
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr i8, ptr %.val12.i, i64 %i.y ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1382, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1382, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.ac)
  %i.ad = tail call i32 @memcmp(ptr nonnull %i.t, ptr nonnull %i.aa, i64 %spec.store.select.i.i.i), !noalias !1382 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub i64 %i.v, %i.ac
  %spec.select.i.i.i = select i1 %i.af, i64 %i.ag, i64 %i.ae ; 2 uses
  %i.ah = icmp eq i64 %spec.select.i.i.i, 0
  %5 = icmp slt i64 %spec.select.i.i.i, 0
  %6 = icmp samesign ult i8 %.val11.i, %.val13.i
  %spec.select.i.i.a = select i1 %i.ah, i1 %6, i1 %5 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.i, i64 16
  %.val8.i = load ptr, ptr %i.ai, align 8, !alias.scope !1377, !noalias !1380, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.i, i64 24
  %.val9.i = load i8, ptr %i.aj, align 8, !range !1363, !alias.scope !1377, !noalias !1380, !noundef !4 ; 2 uses
  %i.ak = ptrtoint ptr %.val8.i to i64
  %i.al = and i64 %i.ak, 1
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr i8, ptr %.val8.i, i64 %i.am ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1382, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !1382, !noundef !4 ; 4 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.aq)
  %i.ar = tail call i32 @memcmp(ptr nonnull %i.t, ptr nonnull %i.ao, i64 %spec.store.select.i.i14.i), !noalias !1382 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = sub i64 %i.v, %i.aq
  %spec.select.i.i15.i = select i1 %i.at, i64 %i.au, i64 %i.as ; 2 uses
  %i.av = icmp eq i64 %spec.select.i.i15.i, 0
  %7 = icmp slt i64 %spec.select.i.i15.i, 0
  %8 = icmp samesign ult i8 %.val11.i, %.val9.i
  %spec.select.i16.i = select i1 %i.av, i1 %8, i1 %7
  %i.aw = xor i1 %spec.select.i.i.a, %spec.select.i16.i
  br i1 %i.aw, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_17ProcMacrosBuilder6insert0E0EB19_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.i.i17.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.aq)
  %i.ax = tail call i32 @memcmp(ptr nonnull %i.aa, ptr nonnull %i.ao, i64 %spec.store.select.i.i17.i), !noalias !1382 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %i.ba = sub i64 %i.ac, %i.aq
  %spec.select.i.i18.i = select i1 %i.az, i64 %i.ba, i64 %i.ay ; 2 uses
  %i.bb = icmp eq i64 %spec.select.i.i18.i, 0
  %9 = icmp slt i64 %spec.select.i.i18.i, 0
  %10 = icmp samesign ult i8 %.val13.i, %.val9.i
  %spec.select.i19.i = select i1 %i.bb, i1 %10, i1 %9
  %i.bc = xor i1 %spec.select.i.i.a, %spec.select.i19.i
  %..i.i = select i1 %i.bc, ptr %i.i, ptr %i.h
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_17ProcMacrosBuilder6insert0E0EB19_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_17ProcMacrosBuilder6insert0E0EB19_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.0.095135, %bb.c ], [ %..i.i, %bb.d ]
  %i.bd = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.be = ptrtoint ptr %.sroa.0.095135 to i64
  %i.bf = sub nuw i64 %i.bd, %i.be                ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.bf, 5          ; 3 uses
  %i.bg = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.094136
  tail call void @llvm.assume(i1 %i.bg)
  %.not = icmp eq ptr %.sroa.023.093137, null
  br i1 %.not, label %.lr.ph.i.i, label %bb.h

bb.e:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_17ProcMacrosBuilder6insert0E0EB19_.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.095135, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.094136, i64 noundef 0, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false), !noalias !1389
  %i.bi = shl nuw nsw i64 %.sroa.15.094136, 5
  %i.bj = getelementptr i8, ptr %.sroa.0.095135, i64 %i.bi ; 2 uses
  %.sroa.11.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 64
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 16
  %.val2.i.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1392, !noalias !1386 ; 2 uses
  %.phi.trans.insert44.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 24
  %.val3.i.pre.i.i = load i8, ptr %.phi.trans.insert44.i.i, align 8, !range !1363, !alias.scope !1392, !noalias !1386 ; 2 uses
  %.pre.i.i = ptrtoint ptr %.val2.i.pre.i.i to i64
  %.pre46.i.i = and i64 %.pre.i.i, 1
  %.pre48.i.i = sub nsw i64 0, %.pre46.i.i
  %i.bk = getelementptr i8, ptr %.val2.i.pre.i.i, i64 %.pre48.i.i ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bk, align 8, !noalias !1393, !nonnull !4, !noundef !4
  %i.bn = load i64, ptr %i.bl, align 8, !noalias !1393, !noundef !4 ; 2 uses
  br label %bb.f

.preheader.i.i:                                   ; preds = %bb.f, %.preheader.i.i
  %.sroa.19.1.i.i = phi i64 [ %i.cf, %.preheader.i.i ], [ %i.cw, %bb.f ] ; 2 uses
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.1.sroa.gep27.i.i, %.preheader.i.i ], [ %.sroa.11.0.i.i, %bb.f ] ; 6 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.11.1.i.i, %.preheader.i.i ], [ %.sroa.11.036.i.i, %bb.f ]
  %i.bo = icmp eq ptr %.sroa.11.1.i.i, %i.bj      ; 4 uses
  %.sroa.01.0.i.i = select i1 %i.bo, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bo, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val.i.i.i = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !1396, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bo, ptr %i.b, ptr %.sroa.11.1.i.i
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %.val1.i.i.i = load i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !1363, !noalias !1396, !noundef !4
  %i.bp = ptrtoint ptr %.val.i.i.i to i64
  %i.bq = and i64 %i.bp, 1
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr i8, ptr %.val.i.i.i, i64 %i.br ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !1399, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !1399, !noundef !4 ; 2 uses
  %i.bw = load ptr, ptr %i.bk, align 8, !noalias !1399, !nonnull !4, !noundef !4
  %i.bx = load i64, ptr %i.bl, align 8, !noalias !1399, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bx)
  %i.by = tail call i32 @memcmp(ptr nonnull %i.bt, ptr nonnull %i.bw, i64 %spec.store.select.i.i.i.i.i), !noalias !1399 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp eq i32 %i.by, 0
  %i.cb = sub i64 %i.bv, %i.bx
  %spec.select.i.i.i.i.i = select i1 %i.ca, i64 %i.cb, i64 %i.bz ; 2 uses
  %i.cc = icmp eq i64 %spec.select.i.i.i.i.i, 0
  %11 = icmp slt i64 %spec.select.i.i.i.i.i, 0
  %12 = icmp samesign ult i8 %.val1.i.i.i, %.val3.i.pre.i.i
  %spec.select.i.i.i.i = select i1 %i.cc, i1 %12, i1 %11
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %.sroa.19.1.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false), !alias.scope !1400, !noalias !1396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i, i64 32, i1 false), !noalias !1396
  %i.ce = zext i1 %spec.select.i.i.i.i to i64
  %i.cf = add i64 %.sroa.19.1.i.i, %i.ce          ; 6 uses
  %.sroa.11.1.sroa.gep27.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i, i64 32
  br i1 %i.bo, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_17ProcMacrosBuilder6insert0E0EB1B_.exit.i, label %.preheader.i.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.11.036.i.i = phi ptr [ %.sroa.11.033.i.i, %.lr.ph.i.i ], [ %.sroa.11.0.i.i, %bb.f ] ; 4 uses
  %.sroa.016.035.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %.sroa.11.036.i.i, %bb.f ] ; 3 uses
  %.sroa.19.034.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cw, %bb.f ] ; 2 uses
  %i.cg = getelementptr i8, ptr %.sroa.016.035.i.i, i64 48
  %.val.i9.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !1400, !noalias !1401, !nonnull !4, !noundef !4 ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.016.035.i.i, i64 56
  %.val1.i10.i.i = load i8, ptr %i.ch, align 8, !range !1363, !alias.scope !1400, !noalias !1401, !noundef !4
  %i.ci = ptrtoint ptr %.val.i9.i.i to i64
  %i.cj = and i64 %i.ci, 1
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr i8, ptr %.val.i9.i.i, i64 %i.ck ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cl) ]
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !1393, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noalias !1393, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %i.bn)
  %i.cp = tail call i32 @memcmp(ptr nonnull %i.cm, ptr nonnull %i.bm, i64 %spec.store.select.i.i.i13.i.i), !noalias !1393 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  %i.cs = sub i64 %i.co, %i.bn
  %spec.select.i.i.i14.i.i = select i1 %i.cr, i64 %i.cs, i64 %i.cq ; 2 uses
  %i.ct = icmp eq i64 %spec.select.i.i.i14.i.i, 0
  %13 = icmp slt i64 %spec.select.i.i.i14.i.i, 0
  %14 = icmp samesign ult i8 %.val1.i10.i.i, %.val3.i.pre.i.i
  %spec.select.i.i15.i.i = select i1 %i.ct, i1 %14, i1 %13
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %.sroa.19.034.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.035.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cu, i64 32, i1 false), !alias.scope !1400, !noalias !1401
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.036.i.i, i64 32, i1 false), !alias.scope !1400, !noalias !1401
  %i.cv = zext i1 %spec.select.i.i15.i.i to i64
  %i.cw = add i64 %.sroa.19.034.i.i, %i.cv        ; 2 uses
  %.sroa.11.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.036.i.i, i64 32 ; 3 uses
  %i.cx = icmp ult ptr %.sroa.11.0.i.i, %i.bj
  br i1 %i.cx, label %bb.f, label %.preheader.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_17ProcMacrosBuilder6insert0E0EB1B_.exit.i: ; preds = %.preheader.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1391
  %.not7.i = icmp ult i64 %i.cf, %.sroa.15.094136
  br i1 %.not7.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro12split_at_mutBy_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_17ProcMacrosBuilder6insert0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro12split_at_mutBy_.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_17ProcMacrosBuilder6insert0E0EB1B_.exit.i
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.095135, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.094136, i64 noundef 0, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.095135, i64 %i.cf ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = xor i64 %i.cf, -1
  %i.db = add i64 %.sroa.15.094136, %i.da
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_17ProcMacrosBuilder6insert0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.095135, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.sroa.023.093137, i32 noundef %i.f, ptr noalias nofree noundef align 8 dereferenceable(8) %4)
  br label %.backedge

bb.h:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvMB8_SB15_16sort_unstable_byNCNvMs0_B17_NtB17_17ProcMacrosBuilder6insert0E0EB19_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 %i.bf ; 2 uses
  %i.dd = getelementptr i8, ptr %.sroa.023.093137, i64 16
  %.sroa.023.0.val = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = getelementptr i8, ptr %.sroa.023.093137, i64 24
  %.sroa.023.0.val34 = load i8, ptr %i.de, align 8, !range !1363, !noundef !4
  %i.df = getelementptr i8, ptr %i.dc, i64 16
  %.val = load ptr, ptr %i.df, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.dc, i64 24
  %.val35 = load i8, ptr %i.dg, align 8, !range !1363, !noundef !4
  %i.dh = ptrtoint ptr %.sroa.023.0.val to i64
  %i.di = and i64 %i.dh, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %.sroa.023.0.val, i64 %i.dj ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !4, !noundef !4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !4 ; 2 uses
  %i.do = ptrtoint ptr %.val to i64
  %i.dp = and i64 %i.do, 1
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr i8, ptr %.val, i64 %i.dq  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dr) ]
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.du)
  %i.dv = tail call i32 @memcmp(ptr nonnull %i.dl, ptr nonnull %i.ds, i64 %spec.store.select.i.i) ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i32 %i.dv, 0
  %i.dy = sub i64 %i.dn, %i.du
  %spec.select.i.i42 = select i1 %i.dx, i64 %i.dy, i64 %i.dw ; 2 uses
  %i.dz = icmp eq i64 %spec.select.i.i42, 0
  %15 = icmp slt i64 %spec.select.i.i42, 0
  %16 = icmp samesign ult i8 %.sroa.023.0.val34, %.val35
  %spec.select.i = select i1 %i.dz, i1 %16, i1 %15
  br i1 %spec.select.i, label %.lr.ph.i.i, label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.095135, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.094136, i64 noundef 0, i64 noundef range(i64 0, 288230376151711743) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 32, i1 false), !noalias !1408
  %i.eb = shl nuw nsw i64 %.sroa.15.094136, 5
  %i.ec = getelementptr i8, ptr %.sroa.0.095135, i64 %i.eb ; 2 uses
  %.sroa.11.033.i.i45 = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 64
  %.phi.trans.insert.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 16
  %.val2.i.pre.i.i47 = load ptr, ptr %.phi.trans.insert.i.i46, align 8, !alias.scope !1411, !noalias !1405 ; 2 uses
  %.phi.trans.insert44.i.i48 = getelementptr inbounds nuw i8, ptr %.sroa.0.095135, i64 24
  %.val3.i.pre.i.i49 = load i8, ptr %.phi.trans.insert44.i.i48, align 8, !range !1363, !alias.scope !1411, !noalias !1405 ; 2 uses
  %.pre.i.i50 = ptrtoint ptr %.val2.i.pre.i.i47 to i64
  %.pre46.i.i51 = and i64 %.pre.i.i50, 1
  %.pre48.i.i52 = sub nsw i64 0, %.pre46.i.i51
  %i.ed = getelementptr i8, ptr %.val2.i.pre.i.i47, i64 %.pre48.i.i52 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ed) ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ed, align 8, !noalias !1412, !nonnull !4, !noundef !4
  %i.eg = load i64, ptr %i.ee, align 8, !noalias !1412, !noundef !4 ; 2 uses
  br label %bb.i

.preheader.i.i59:                                 ; preds = %bb.i, %.preheader.i.i59
  %.sroa.19.1.i.i60 = phi i64 [ %i.ey, %.preheader.i.i59 ], [ %i.fp, %bb.i ] ; 2 uses
  %.sroa.11.1.i.i61 = phi ptr [ %.sroa.11.1.sroa.gep27.i.i71, %.preheader.i.i59 ], [ %.sroa.11.0.i.i58, %bb.i ] ; 6 uses
  %.sroa.016.1.i.i62 = phi ptr [ %.sroa.11.1.i.i61, %.preheader.i.i59 ], [ %.sroa.11.036.i.i53, %bb.i ]
  %i.eh = icmp eq ptr %.sroa.11.1.i.i61, %i.ec    ; 4 uses
  %.sroa.01.0.i.i63 = select i1 %i.eh, ptr %i.a, ptr %.sroa.11.1.i.i61
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.eh, ptr %i.a, ptr %.sroa.11.1.i.i61
  %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 16
  %.val.i.i.i66 = load ptr, ptr %.sroa.01.0.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i64.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !noalias !1415, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i67.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.eh, ptr %i.a, ptr %.sroa.11.1.i.i61
  %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i67.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i67.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 24
  %.val1.i.i.i69 = load i8, ptr %.sroa.01.0.sroa.sel25.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i67.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !range !1363, !noalias !1415, !noundef !4
  %i.ei = load ptr, ptr %i.ed, align 8, !noalias !1418, !nonnull !4, !noundef !4
  %i.ej = load i64, ptr %i.ee, align 8, !noalias !1418, !noundef !4 ; 2 uses
  %i.ek = ptrtoint ptr %.val.i.i.i66 to i64
  %i.el = and i64 %i.ek, 1
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr i8, ptr %.val.i.i.i66, i64 %i.em ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !1418, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !1418, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.eq)
  %i.er = tail call i32 @memcmp(ptr nonnull %i.ei, ptr nonnull %i.eo, i64 %spec.store.select.i.i.i.i.i.i), !noalias !1418 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = icmp eq i32 %i.er, 0
  %i.eu = sub i64 %i.ej, %i.eq
  %spec.select.i.i.i.i.i.i = select i1 %i.et, i64 %i.eu, i64 %i.es ; 2 uses
  %i.ev = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  %17 = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1
  %18 = icmp samesign uge i8 %.val3.i.pre.i.i49, %.val1.i.i.i69
  %spec.select.i.i.i.i.i70 = select i1 %i.ev, i1 %18, i1 %17
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %.sroa.19.1.i.i60 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.1.i.i62, ptr noundef nonnull align 8 dereferenceable(32) %i.ew, i64 32, i1 false), !alias.scope !1419, !noalias !1415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.i.i63, i64 32, i1 false), !noalias !1415
  %i.ex = zext i1 %spec.select.i.i.i.i.i70 to i64
  %i.ey = add i64 %.sroa.19.1.i.i60, %i.ex        ; 4 uses
  %.sroa.11.1.sroa.gep27.i.i71 = getelementptr inbounds nuw i8, ptr %.sroa.11.1.i.i61, i64 32
  br i1 %i.eh, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_17ProcMacrosBuilder6insert0E0E0EB1B_.exit.i, label %.preheader.i.i59

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i44
  %.sroa.11.036.i.i53 = phi ptr [ %.sroa.11.033.i.i45, %.lr.ph.i.i44 ], [ %.sroa.11.0.i.i58, %bb.i ] ; 4 uses
  %.sroa.016.035.i.i54 = phi ptr [ %i.ea, %.lr.ph.i.i44 ], [ %.sroa.11.036.i.i53, %bb.i ] ; 3 uses
  %.sroa.19.034.i.i55 = phi i64 [ 0, %.lr.ph.i.i44 ], [ %i.fp, %bb.i ] ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.016.035.i.i54, i64 48
  %.val.i9.i.i56 = load ptr, ptr %i.ez, align 8, !alias.scope !1419, !noalias !1420, !nonnull !4, !noundef !4 ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.016.035.i.i54, i64 56
  %.val1.i10.i.i57 = load i8, ptr %i.fa, align 8, !range !1363, !alias.scope !1419, !noalias !1420, !noundef !4
  %i.fb = ptrtoint ptr %.val.i9.i.i56 to i64
  %i.fc = and i64 %i.fb, 1
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr i8, ptr %.val.i9.i.i56, i64 %i.fd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fe) ]
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !1412, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !noalias !1412, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i13.i.i = tail call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.fh)
  %i.fi = tail call i32 @memcmp(ptr nonnull %i.ef, ptr nonnull %i.ff, i64 %spec.store.select.i.i.i.i13.i.i), !noalias !1412 ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp eq i32 %i.fi, 0
  %i.fl = sub i64 %i.eg, %i.fh
  %spec.select.i.i.i.i14.i.i = select i1 %i.fk, i64 %i.fl, i64 %i.fj ; 2 uses
  %i.fm = icmp eq i64 %spec.select.i.i.i.i14.i.i, 0
  %19 = icmp sgt i64 %spec.select.i.i.i.i14.i.i, -1
  %20 = icmp samesign uge i8 %.val3.i.pre.i.i49, %.val1.i10.i.i57
  %spec.select.i.i.i15.i.i = select i1 %i.fm, i1 %20, i1 %19
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.ea, i64 %.sroa.19.034.i.i55 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.035.i.i54, ptr noundef nonnull align 8 dereferenceable(32) %i.fn, i64 32, i1 false), !alias.scope !1419, !noalias !1420
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.036.i.i53, i64 32, i1 false), !alias.scope !1419, !noalias !1420
  %i.fo = zext i1 %spec.select.i.i.i15.i.i to i64
  %i.fp = add i64 %.sroa.19.034.i.i55, %i.fo      ; 2 uses
  %.sroa.11.0.i.i58 = getelementptr inbounds nuw i8, ptr %.sroa.11.036.i.i53, i64 32 ; 3 uses
  %i.fq = icmp ult ptr %.sroa.11.0.i.i58, %i.ec
  br i1 %i.fq, label %bb.i, label %.preheader.i.i59

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_17ProcMacrosBuilder6insert0E0E0EB1B_.exit.i: ; preds = %.preheader.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1410
  %.not7.i72 = icmp ult i64 %i.ey, %.sroa.15.094136
  br i1 %.not7.i72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_17ProcMacrosBuilder6insert0E0E0EB1B_.exit.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacroNCINvB2_9quicksortB1x_NCINvMB8_SB1x_16sort_unstable_byNCNvMs0_B1z_NtB1z_17ProcMacrosBuilder6insert0E0E0EB1B_.exit.i
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro14swap_uncheckedBy_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.095135, i64 noundef range(i64 33, 288230376151711744) %.sroa.15.094136, i64 noundef 0, i64 noundef %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  %i.fr = add nuw nsw i64 %i.ey, 1                ; 2 uses
  %i.fs = sub nuw i64 %.sroa.15.094136, %i.fr
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.095135, i64 %i.fr
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro12split_at_mutBy_.exit
  %.sroa.023.0.be = phi ptr [ %i.cy, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro12split_at_mutBy_.exit ], [ null, %bb.k ]
  %.sroa.15.0.be = phi i64 [ %i.db, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro12split_at_mutBy_.exit ], [ %i.fs, %bb.k ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.cz, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCs33K2ylI4knu_10hir_expand10proc_macro9ProcMacro12split_at_mutBy_.exit ], [ %i.ft, %bb.k ] ; 3 uses
  %i.fu = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.fu, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB17_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(4) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 33
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %.lr.ph._crit_edge, label %.lr.ph129

.lr.ph:                                           ; preds = %.backedge
  %i.c = icmp eq i32 %i.d, 0
  br i1 %i.c, label %.lr.ph._crit_edge, label %.lr.ph129

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1f_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.082.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.081.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable8heapsort8heapsortNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB15_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082.lcssa, i64 noundef %.sroa.15.081.lcssa, ptr noalias nofree noundef nonnull %4) #30
  br label %bb.c

.lr.ph129:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.079128 = phi i32 [ %i.d, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.080127 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.15.081126 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.082125 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 22 uses
  %i.d = add nsw i32 %.sroa.026.079128, -1        ; 3 uses
  %i.e = lshr i64 %.sroa.15.081126, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.e, 28
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %.idx2.i ; 3 uses
  %i.h = icmp samesign ult i64 %.sroa.15.081126, 64
  br i1 %i.h, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph129
  %i.i = tail call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB14_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noundef nonnull readonly align 4 %.sroa.0.082125, ptr noundef nonnull readonly %i.f, ptr noundef nonnull readonly %i.g, i64 noundef %i.e, ptr noalias nofree noundef nonnull %4)
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB15_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.lr.ph129
  %.val6.i = load i32, ptr %.sroa.0.082125, align 4, !alias.scope !1421, !noalias !1424, !noundef !4 ; 2 uses
  %.val7.i = load i32, ptr %i.f, align 4, !alias.scope !1421, !noalias !1424, !noundef !4 ; 2 uses
  %i.j = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i32, ptr %i.g, align 4, !alias.scope !1421, !noalias !1424, !noundef !4 ; 2 uses
  %i.k = icmp ult i32 %.val6.i, %.val5.i
  %i.l = xor i1 %i.j, %i.k
  %i.m = icmp ult i32 %.val7.i, %.val5.i
  %i.n = xor i1 %i.j, %i.m
  %..i.i = select i1 %i.n, ptr %i.g, ptr %i.f
  %.sroa.0.0.i.i = select i1 %i.l, ptr %.sroa.0.082125, ptr %..i.i
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB15_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB15_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.b, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot7median3NtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i ], [ %i.i, %bb.b ]
  %i.o = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.p = ptrtoint ptr %.sroa.0.082125 to i64
  %i.q = sub nuw i64 %i.o, %i.p                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.q, 2           ; 3 uses
  %i.r = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.081126
  tail call void @llvm.assume(i1 %i.r)
  %.not = icmp eq ptr %.sroa.023.080127, null
  br i1 %.not, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph._crit_edge, %._crit_edge
  ret void

bb.d:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB15_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit, %bb.f
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex14swap_uncheckedCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef range(i64 0, 2305843009213693951) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 4 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !1431, !noalias !1429, !noundef !4 ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %.sroa.0.082125, i64 %.sroa.15.081126 ; 3 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -4       ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 8 ; 3 uses
  %i.w = icmp ult ptr %.sroa.13.030.i.i, %i.v
  %.val1.i.pre.i.i = load i32, ptr %.sroa.0.082125, align 4, !alias.scope !1434, !noalias !1426 ; 4 uses
  br i1 %i.w, label %.lr.ph.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.d ], [ %i.ao, %.lr.ph.i.i ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.s, %bb.d ], [ %i.aj, %.lr.ph.i.i ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.d ], [ %.sroa.13.0.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.x = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.u
  br i1 %i.x, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ac, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.else.val.i.i = load i32, ptr %.sroa.13.1.i6.i, align 4, !alias.scope !1431, !noalias !1435, !noundef !4 ; 2 uses
  %i.y = icmp ult i32 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !alias.scope !1431, !noalias !1435
  store i32 %i.aa, ptr %.sroa.015.1.i7.i, align 4, !alias.scope !1431, !noalias !1435
  store i32 %.val.i.else.val.i.i, ptr %i.z, align 4, !alias.scope !1431, !noalias !1435
  %i.ab = zext i1 %i.y to i64
  %i.ac = add i64 %.sroa.23.1.i5.i, %i.ab         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 4 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.u
  br i1 %i.ad, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i, label %.cont.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i ], [ %.sroa.13.030.i.i, %bb.d ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.s, %bb.d ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.ao, %.lr.ph.i.i ], [ 0, %bb.d ] ; 2 uses
  %.val.i11.i.i = load i32, ptr %.sroa.13.033.i.i, align 4, !alias.scope !1431, !noalias !1438, !noundef !4 ; 2 uses
  %i.ae = icmp ult i32 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.031.i.i ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !1431, !noalias !1438
  store i32 %i.ag, ptr %.sroa.015.032.i.i, align 4, !alias.scope !1431, !noalias !1438
  store i32 %.val.i11.i.i, ptr %i.af, align 4, !alias.scope !1431, !noalias !1438
  %i.ah = zext i1 %i.ae to i64
  %i.ai = add i64 %.sroa.23.031.i.i, %i.ah        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 8 ; 3 uses
  %.val.i13.i.i = load i32, ptr %i.aj, align 4, !alias.scope !1431, !noalias !1441, !noundef !4 ; 2 uses
  %i.ak = icmp ult i32 %.val.i13.i.i, %.val1.i.pre.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ai ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !alias.scope !1431, !noalias !1441
  store i32 %i.am, ptr %.sroa.13.033.i.i, align 4, !alias.scope !1431, !noalias !1441
  store i32 %.val.i13.i.i, ptr %i.al, align 4, !alias.scope !1431, !noalias !1441
  %i.an = zext i1 %i.ak to i64
  %i.ao = add i64 %i.ai, %i.an                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 12 ; 3 uses
  %i.ap = icmp ult ptr %.sroa.13.0.i.i, %i.v
  br i1 %i.ap, label %.lr.ph.i.i, label %.preheader.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i: ; preds = %.cont.i.i, %.preheader.i.i
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i ], [ %i.ac, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.aq = icmp ult i32 %i.t, %.val1.i.pre.i.i
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !1431, !noalias !1435
  store i32 %i.as, ptr %.sroa.015.1.i.lcssa.i, align 4, !alias.scope !1431, !noalias !1435
  store i32 %i.t, ptr %i.ar, align 4, !alias.scope !1431, !noalias !1435
  %i.at = zext i1 %i.aq to i64
  %i.au = add i64 %.sroa.23.1.i.lcssa.i, %i.at    ; 5 uses
  %.not7.i = icmp ult i64 %i.au, %.sroa.15.081126
  br i1 %.not7.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex12split_at_mutCs33K2ylI4knu_10hir_expand.exit: ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB1x_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit.i
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex14swap_uncheckedCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.082125, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = xor i64 %i.au, -1
  %i.ay = add i64 %.sroa.15.081126, %i.ax
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB17_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef %i.au, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) %.sroa.023.080127, i32 noundef %i.d, ptr noalias nofree noundef nonnull %4)
  br label %.backedge

bb.f:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndexNvYB15_NtNtBa_3cmp10PartialOrd2ltECs33K2ylI4knu_10hir_expand.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.082125, i64 %i.q
  %.sroa.023.0.val = load i32, ptr %.sroa.023.080127, align 4, !noundef !4
  %.val = load i32, ptr %i.az, align 4, !noundef !4
  %i.ba = icmp ult i32 %.sroa.023.0.val, %.val
  br i1 %i.ba, label %bb.d, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsd9Lm8bEdjjY_5salsa5zalsa15IngredientIndex14swap_uncheckedCs33K2ylI4knu_10hir_expand(ptr noalias nofree noundef nonnull align 4 %.sroa.0.082125, i64 noundef range(i64 33, 2305843009213693952) %.sroa.15.081126, i64 noundef 0, i64 noundef range(i64 0, 2305843009213693951) %.sroa.0.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
end_hunk_0
