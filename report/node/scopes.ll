inline.NumInlined: 2198
inline.NumDeleted: 874
begin_hunk_0_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b
define weak_odr hidden noundef ptr @_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 256
end_hunk_0
begin_hunk_1_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %.043.in = phi i1 [ %4, %bb.a ], [ %5, %bb.n ]  ; 4 uses
  %.041 = phi ptr [ %1, %bb.a ], [ %i.ao, %bb.n ] ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.041, i64 40
  %i.l = load i32, ptr %i.k, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
  br i1 %.not, label %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit
  br i1 %.043.in, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = tail call noundef ptr @_ZN2v88internal5Scope16LookupSloppyEvalEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef nonnull %0, ptr noundef nonnull %.041, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.043.in)
  br label %.thread

bb.k:                                             ; preds = %bb.i
end_hunk_3
begin_hunk_4_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call noundef ptr @_ZN2v88internal5Scope10LookupWithEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef nonnull %0, ptr noundef nonnull %.041, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.043.in)
  br label %.thread

bb.m:                                             ; preds = %bb.k
end_hunk_4
begin_hunk_5_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE0EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.041, i64 120
  %i.ba = load i8, ptr %i.az, align 8
  %i.bb = icmp eq i8 %i.ba, 4
  %5 = or i1 %.043.in, %i.bb
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bd, null
end_hunk_5
begin_hunk_6_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
end_hunk_6
begin_hunk_7_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %.03784 = phi ptr [ %i.aj, %bb.k ], [ %1, %.preheader ] ; 9 uses
  %.041.in83 = phi i1 [ %6, %bb.k ], [ %4, %.preheader ] ; 3 uses
  %i.aj = load ptr, ptr %.03784, align 8          ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %2
  %i.al = getelementptr inbounds nuw i8, ptr %.03784, i64 121
end_hunk_7
begin_hunk_8_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ap = tail call noundef ptr @_ZN2v88internal5Scope16LookupSloppyEvalEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef nonnull %0, ptr noundef nonnull %.03784, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.041.in83)
  br label %.thread

bb.g:                                             ; preds = %bb.e
end_hunk_8
begin_hunk_9_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
  br i1 %i.as, label %bb.h, label %_ZNK2v88internal5Scope23is_debug_evaluate_scopeEv.exit

bb.h:                                             ; preds = %bb.g
  %i.at = tail call noundef ptr @_ZN2v88internal5Scope10LookupWithEPNS0_13VariableProxyEPS1_S4_S4_b(ptr noundef nonnull %0, ptr noundef nonnull %.03784, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %.041.in83)
  br label %.thread

_ZNK2v88internal5Scope23is_debug_evaluate_scopeEv.exit: ; preds = %bb.g
end_hunk_9
begin_hunk_10_@_ZN2v88internal5Scope6LookupILNS1_15ScopeLookupModeE1EEEPNS0_8VariableEPNS0_13VariableProxyEPS1_S8_S8_b:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %.03784, i64 120
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = icmp eq i8 %i.be, 4
  %6 = or i1 %.041.in83, %i.bf
  %i.bg = load i32, ptr %i.c, align 4
  %i.bh = and i32 %i.bg, 256
  %.not.i46 = icmp eq i32 %i.bh, 0
end_hunk_10
begin_hunk_11_@_ZN2v88internal16DeclarationScope31CheckConflictingVarDeclarationsEPb:bb.a
bb.h:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit
  %i.az = icmp ne ptr %.0.i.i, null
  %i.ba = load i8, ptr %1, align 1, !range !7, !noundef !8
  %2 = trunc nuw i8 %i.ba to i1
  %3 = or i1 %i.az, %2
  %4 = zext i1 %3 to i8
  store i8 %4, ptr %1, align 1
  br label %bb.j

bb.i:                                             ; preds = %_ZN2v88internal5Scope11LookupLocalEPKNS0_12AstRawStringE.exit
end_hunk_11
begin_hunk_12_@_ZN2v88internal10ClassScope18DeclarePrivateNameEPKNS0_12AstRawStringENS0_12VariableModeENS0_12IsStaticFlagEPb:bb.a
  %i.au = add nsw i8 %i.at, -9
  %i.av = icmp ult i8 %i.au, 4
  %narrow = select i1 %.not, i1 %i.av, i1 false
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8             ; 2 uses
  %5 = trunc i8 %i.ax to i1
  %6 = or i1 %narrow, %5
  %7 = zext i1 %6 to i8
  %8 = and i8 %i.ax, -2
  %i.ay = or disjoint i8 %8, %7
  store i8 %i.ay, ptr %i.aw, align 8
  %.pre = load i16, ptr %i.ap, align 8
  br label %_ZN2v88internal27IsComplementaryAccessorPairENS0_12VariableModeES1_.exit.thread
end_hunk_12
begin_hunk_13_@_ZN2v88internal10ClassScope28ResolvePrivateNamesPartiallyEv:bb.a
  tail call void @_ZN2v88internal13VariableProxy6BindToEPNS0_8VariableE(ptr noundef nonnull align 8 dereferenceable(24) %.02949, ptr noundef nonnull %i.cd) #22
  %i.ch = load i16, ptr %i.ce, align 8            ; 2 uses
  %i.ci = and i16 %i.ch, 16384
  %2 = icmp ne i16 %i.ci, 0
  %i.cj = trunc i16 %i.ch to i8
  %i.ck = and i8 %i.cj, 15
  %i.cl = add nsw i8 %i.ck, -9
  %i.cm = icmp ult i8 %i.cl, 4
  %i.cn = select i1 %2, i1 %i.cm, i1 false
  %3 = load i8, ptr %i.am, align 8                ; 2 uses
  %4 = and i8 %3, 2
  %5 = icmp ne i8 %4, 0
  %6 = or i1 %5, %i.cn
  %i.co = select i1 %6, i8 2, i8 0
  %7 = and i8 %3, -3
  %i.cp = or disjoint i8 %i.co, %7
  store i8 %i.cp, ptr %i.am, align 8
  br label %bb.m

end_hunk_13
