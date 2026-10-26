Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTWriterStmt?download=true
inline.NumInlined: 5562
inline.NumDeleted: 2881
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang13ASTStmtWriter14VisitLabelStmtEPNS_9LabelStmtE:bb.a
  store i32 %i.ae, ptr %i.w, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit: ; preds = %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.af, align 4, !tbaa !15
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.ag, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 156, ptr %i.ai, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtWriter19VisitAttributedStmtEPNS_14AttributedStmtE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %1, align 8
  %i.d = lshr i32 %i.c, 9
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !40   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 noundef %i.e)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  store i64 %i.e, ptr %i.n, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !40
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

_ZN5clang15ASTRecordWriter9push_backEm.exit:      ; preds = %bb.b, %bb.c
  %i.q = load i32, ptr %1, align 8
  %i.r = lshr i32 %i.q, 9
  %i.s = zext nneg i32 %i.r to i64
  tail call void @_ZN5clang15ASTRecordWriter13AddAttributesEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr nonnull %i.b, i64 %i.s) #14
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !431  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !41
  %.not.i.i9 = icmp ult i32 %i.x, %i.z
  br i1 %.not.i.i9, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef %i.u)
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

bb.e:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  %i.aa = zext i32 %i.x to i64
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  store ptr %i.u, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.w, align 8, !tbaa !40
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.w, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit: ; preds = %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.af, align 4, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.ah, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 157, ptr %i.aj, align 8, !tbaa !54
  ret void
}

declare void @_ZN5clang15ASTRecordWriter13AddAttributesEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(216), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtWriter11VisitIfStmtEPNS_6IfStmtE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 8                ; 6 uses
  %i.b = and i16 %i.a, 4096
  %.not.i = icmp eq i16 %i.b, 0
  br i1 %.not.i, label %_ZN5clang6IfStmt7getElseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = lshr i16 %i.a, 14
  %.lobit.i.i.i = and i16 %i.d, 1
  %i.e = lshr i16 %i.a, 13
  %.lobit1.i.i.i = and i16 %i.e, 1
  %narrow.i.i.i = or disjoint i16 %.lobit1.i.i.i, 2
  %narrow.i.i = add nuw nsw i16 %narrow.i.i.i, %.lobit.i.i.i
  %i.f = zext nneg i16 %narrow.i.i to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = icmp ne ptr %i.h, null
  br label %_ZN5clang6IfStmt7getElseEv.exit

_ZN5clang6IfStmt7getElseEv.exit:                  ; preds = %bb.a, %bb.b
  %i.j = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ] ; 3 uses
  %i.k = and i16 %i.a, 8192
  %.not.i24 = icmp eq i16 %i.k, 0
  br i1 %.not.i24, label %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang6IfStmt7getElseEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = lshr i16 %i.a, 14
  %.lobit.i.i = and i16 %i.m, 1
  %i.n = zext nneg i16 %.lobit.i.i to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.q = icmp ne ptr %i.p, null
  br label %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit

_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit: ; preds = %_ZN5clang6IfStmt7getElseEv.exit, %bb.c
  %i.r = phi i1 [ %i.q, %bb.c ], [ false, %_ZN5clang6IfStmt7getElseEv.exit ] ; 2 uses
  %i.s = and i16 %i.a, 16384
  %.not.i25 = icmp eq i16 %i.s, 0
  br i1 %.not.i25, label %_ZN5clang6IfStmt7getInitEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = icmp ne ptr %i.u, null
  br label %_ZN5clang6IfStmt7getInitEv.exit

_ZN5clang6IfStmt7getInitEv.exit:                  ; preds = %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit, %bb.d
  %i.w = phi i1 [ %i.v, %bb.d ], [ false, %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !249, !range !248, !noundef !59
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %._ZN5clang13ASTStmtWriter15PakedBitsWriter9writeBitsEv.exit_crit_edge.i

._ZN5clang13ASTStmtWriter15PakedBitsWriter9writeBitsEv.exit_crit_edge.i: ; preds = %_ZN5clang6IfStmt7getInitEv.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !250
  %.phi.trans.insert1.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre2.i = load ptr, ptr %.phi.trans.insert1.i, align 8, !tbaa !35
  br label %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i

bb.e:                                             ; preds = %_ZN5clang6IfStmt7getInitEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = load i32, ptr %i.x, align 8, !tbaa !251
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !250, !nonnull !59, !align !60
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !15
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ah
  store i64 %i.ad, ptr %i.al, align 8, !tbaa !252
  store i32 0, ptr %i.x, align 8, !tbaa !251
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.am, align 4, !tbaa !253
  br label %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i

_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i: ; preds = %bb.e, %._ZN5clang13ASTStmtWriter15PakedBitsWriter9writeBitsEv.exit_crit_edge.i
  %i.an = phi ptr [ %.pre2.i, %._ZN5clang13ASTStmtWriter15PakedBitsWriter9writeBitsEv.exit_crit_edge.i ], [ %i.aj, %bb.e ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.y, align 4, !tbaa !249
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %.not.i.i.i = icmp ult i32 %i.ap, %i.as
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef 0)
  br label %_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit

bb.g:                                             ; preds = %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i
  %i.at = zext i32 %i.ap to i64
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  store i64 0, ptr %i.av, align 1
  %i.aw = load i32, ptr %i.ao, align 8, !tbaa !40
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ao, align 8, !tbaa !40
  br label %_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit

_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit: ; preds = %bb.f, %bb.g
  %i.ay = zext i1 %i.j to i32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !253 ; 4 uses
  %2 = shl nuw i32 %i.ay, %i.ba
  %i.bb = load i32, ptr %i.x, align 8, !tbaa !251
  %3 = or i32 %i.bb, %2
  %4 = add i32 %i.ba, 1
  %5 = zext i1 %i.r to i32
  %6 = shl nuw i32 %5, %4
  %i.bc = or i32 %3, %6
  %7 = add i32 %i.ba, 2
  %8 = zext i1 %i.w to i32
  %i.bd = shl nuw i32 %8, %7
  %i.be = or i32 %i.bc, %i.bd
  store i32 %i.be, ptr %i.x, align 8, !tbaa !251
  %i.bf = add i32 %i.ba, 3
  store i32 %i.bf, ptr %i.az, align 4, !tbaa !253
  %i.bg = load i16, ptr %1, align 8
  %i.bh = lshr i16 %i.bg, 9
  %i.bi = and i16 %i.bh, 7
  %i.bj = zext nneg i16 %i.bi to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !35 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.bn, %i.bp
  br i1 %.not.i.i, label %bb.i, label %bb.h, !prof !42

bb.h:                                             ; preds = %_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 noundef %i.bj)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

bb.i:                                             ; preds = %_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit
  %i.bq = zext i32 %i.bn to i64
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  store i64 %i.bj, ptr %i.bs, align 1
  %i.bt = load i32, ptr %i.bm, align 8, !tbaa !40
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bm, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

_ZN5clang15ASTRecordWriter9push_backEm.exit:      ; preds = %bb.h, %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bw = load i16, ptr %1, align 8               ; 2 uses
  %i.bx = lshr i16 %i.bw, 14
  %.lobit.i.i26 = and i16 %i.bx, 1
  %i.by = lshr i16 %i.bw, 13
  %.lobit1.i.i = and i16 %i.by, 1
  %narrow.i.i27 = add nuw nsw i16 %.lobit.i.i26, %.lobit1.i.i
  %i.bz = zext nneg i16 %narrow.i.i27 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !40 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !41
  %.not.i.i28 = icmp ult i32 %i.ce, %i.cg
  br i1 %.not.i.i28, label %bb.k, label %bb.j, !prof !42

bb.j:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef %i.cb)
  %.pre = load i32, ptr %i.cd, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

bb.k:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  %i.ch = zext i32 %i.ce to i64
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  store ptr %i.cb, ptr %i.cj, align 1
  %i.ck = load i32, ptr %i.cd, align 8, !tbaa !40
  %i.cl = add i32 %i.ck, 1                        ; 2 uses
  store i32 %i.cl, ptr %i.cd, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit: ; preds = %bb.j, %bb.k
  %i.cm = phi i32 [ %.pre, %bb.j ], [ %i.cl, %bb.k ] ; 2 uses
  %i.cn = load i16, ptr %1, align 8               ; 2 uses
  %i.co = lshr i16 %i.cn, 14
  %.lobit.i.i.i29 = and i16 %i.co, 1
  %i.cp = lshr i16 %i.cn, 13
  %.lobit1.i.i.i30 = and i16 %i.cp, 1
  %narrow.i.i.i31 = add nuw nsw i16 %.lobit1.i.i.i30, 1
  %narrow.i.i32 = add nuw nsw i16 %narrow.i.i.i31, %.lobit.i.i.i29
  %i.cq = zext nneg i16 %narrow.i.i32 to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !57 ; 2 uses
  %i.ct = load i32, ptr %i.cf, align 4, !tbaa !41
  %.not.i.i33 = icmp ult i32 %i.cm, %i.ct
  br i1 %.not.i.i33, label %bb.m, label %bb.l, !prof !42

bb.l:                                             ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef %i.cs)
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit34

bb.m:                                             ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit
  %i.cu = zext i32 %i.cm to i64
  %i.cv = load ptr, ptr %i.cc, align 8, !tbaa !43
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cu
  store ptr %i.cs, ptr %i.cw, align 1
  %i.cx = load i32, ptr %i.cd, align 8, !tbaa !40
  %i.cy = add i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cd, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit34

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit34: ; preds = %bb.l, %bb.m
  br i1 %i.j, label %bb.n, label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit42

bb.n:                                             ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit34
  %i.cz = load i16, ptr %1, align 8               ; 3 uses
  %i.da = and i16 %i.cz, 4096
  %.not.i35 = icmp eq i16 %i.da, 0
  br i1 %.not.i35, label %_ZN5clang6IfStmt7getElseEv.exit40, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = lshr i16 %i.cz, 14
  %.lobit.i.i.i36 = and i16 %i.db, 1
  %i.dc = lshr i16 %i.cz, 13
  %.lobit1.i.i.i37 = and i16 %i.dc, 1
  %narrow.i.i.i38 = or disjoint i16 %.lobit1.i.i.i37, 2
  %narrow.i.i39 = add nuw nsw i16 %narrow.i.i.i38, %.lobit.i.i.i36
  %i.dd = zext nneg i16 %narrow.i.i39 to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57
  br label %_ZN5clang6IfStmt7getElseEv.exit40

_ZN5clang6IfStmt7getElseEv.exit40:                ; preds = %bb.n, %bb.o
  %i.dg = phi ptr [ %i.df, %bb.o ], [ null, %bb.n ] ; 2 uses
  %i.dh = load i32, ptr %i.cd, align 8, !tbaa !40 ; 2 uses
  %i.di = load i32, ptr %i.cf, align 4, !tbaa !41
  %.not.i.i41 = icmp ult i32 %i.dh, %i.di
  br i1 %.not.i.i41, label %bb.q, label %bb.p, !prof !42

bb.p:                                             ; preds = %_ZN5clang6IfStmt7getElseEv.exit40
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef %i.dg)
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit42

bb.q:                                             ; preds = %_ZN5clang6IfStmt7getElseEv.exit40
  %i.dj = zext i32 %i.dh to i64
  %i.dk = load ptr, ptr %i.cc, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dj
  store ptr %i.dg, ptr %i.dl, align 1
  %i.dm = load i32, ptr %i.cd, align 8, !tbaa !40
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.cd, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit42

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit42: ; preds = %bb.q, %bb.p, %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit34
  br i1 %i.r, label %bb.r, label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit47

bb.r:                                             ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit42
  %i.do = load i16, ptr %1, align 8               ; 2 uses
  %i.dp = and i16 %i.do, 8192
  %.not.i43 = icmp eq i16 %i.dp, 0
  br i1 %.not.i43, label %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit45, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dq = lshr i16 %i.do, 14
  %.lobit.i.i44 = and i16 %i.dq, 1
  %i.dr = zext nneg i16 %.lobit.i.i44 to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !57
  br label %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit45

_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit45: ; preds = %bb.r, %bb.s
  %i.du = phi ptr [ %i.dt, %bb.s ], [ null, %bb.r ] ; 2 uses
  %i.dv = load i32, ptr %i.cd, align 8, !tbaa !40 ; 2 uses
  %i.dw = load i32, ptr %i.cf, align 4, !tbaa !41
  %.not.i.i46 = icmp ult i32 %i.dv, %i.dw
  br i1 %.not.i.i46, label %bb.u, label %bb.t, !prof !42

bb.t:                                             ; preds = %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit45
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef %i.du)
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit47

bb.u:                                             ; preds = %_ZN5clang6IfStmt28getConditionVariableDeclStmtEv.exit45
  %i.dx = zext i32 %i.dv to i64
  %i.dy = load ptr, ptr %i.cc, align 8, !tbaa !43
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
  store ptr %i.du, ptr %i.dz, align 1
  %i.ea = load i32, ptr %i.cd, align 8, !tbaa !40
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.cd, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit47

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit47: ; preds = %bb.u, %bb.t, %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit42
  br i1 %i.w, label %bb.v, label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit51

bb.v:                                             ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit47
  %i.ec = load i16, ptr %1, align 8
  %i.ed = and i16 %i.ec, 16384
  %.not.i48 = icmp eq i16 %i.ed, 0
  br i1 %.not.i48, label %_ZN5clang6IfStmt7getInitEv.exit49, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = load ptr, ptr %i.bv, align 8, !tbaa !57
  br label %_ZN5clang6IfStmt7getInitEv.exit49

_ZN5clang6IfStmt7getInitEv.exit49:                ; preds = %bb.v, %bb.w
  %i.ef = phi ptr [ %i.ee, %bb.w ], [ null, %bb.v ] ; 2 uses
  %i.eg = load i32, ptr %i.cd, align 8, !tbaa !40 ; 2 uses
  %i.eh = load i32, ptr %i.cf, align 4, !tbaa !41
  %.not.i.i50 = icmp ult i32 %i.eg, %i.eh
  br i1 %.not.i.i50, label %bb.y, label %bb.x, !prof !42

bb.x:                                             ; preds = %_ZN5clang6IfStmt7getInitEv.exit49
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef %i.ef)
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit51

bb.y:                                             ; preds = %_ZN5clang6IfStmt7getInitEv.exit49
  %i.ei = zext i32 %i.eg to i64
end_hunk_0
begin_hunk_1_@_ZN5clang13ASTStmtWriter13VisitCallExprEPNS_8CallExprE:bb.a
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit22
  %i.dr = load ptr, ptr %0, align 8, !tbaa !58, !nonnull !59, !align !60
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 3756
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !608
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !242
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5clang15ASTRecordWriter9push_backEm.exit22
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 189, ptr %i.dv, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtWriter17VisitRecoveryExprEPNS_12RecoveryExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.clang::StmtIterator", align 8 ; 8 uses
  %3 = alloca %"struct.clang::StmtIterator", align 8 ; 10 uses
  tail call void @_ZN5clang13ASTStmtWriter9VisitExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !615, !noalias !616 ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.a, ptr %2, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.447.0..sroa_idx, align 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZSt10__distanceIN5clang12StmtIteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i
  %i.f = phi i64 [ %i.n, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = phi ptr [ %i.l, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i ], [ %i.a, %bb.a ]
  %.03.i = phi i64 [ %i.k, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i ], [ 0, %bb.a ]
  %i.h = and i64 %i.f, 3
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %2, align 8, !tbaa !55
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp ult i64 %i.f, 4
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #14
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i

bb.e:                                             ; preds = %bb.c
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true) #14
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.k = add nuw nsw i64 %.03.i, 1                ; 2 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !55     ; 2 uses
  %i.m = icmp ne ptr %i.l, %i.e
  %i.n = load i64, ptr %.sroa.447.0..sroa_idx, align 8 ; 2 uses
  %i.o = icmp ne i64 %i.n, 0
  %.not3.i.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %.not3.i.i, label %.lr.ph.i, label %_ZSt10__distanceIN5clang12StmtIteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit, !llvm.loop !611

_ZSt10__distanceIN5clang12StmtIteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit: ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.k, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !41
  %.not.i.i13 = icmp ult i32 %i.s, %i.u
  br i1 %.not.i.i13, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZSt10__distanceIN5clang12StmtIteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 noundef %.0.lcssa.i)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

bb.g:                                             ; preds = %_ZSt10__distanceIN5clang12StmtIteratorEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit
  %i.v = zext i32 %i.s to i64
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  store i64 %.0.lcssa.i, ptr %i.x, align 1
  %i.y = load i32, ptr %i.r, align 8, !tbaa !40
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.r, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

_ZN5clang15ASTRecordWriter9push_backEm.exit:      ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !35
  call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.ac, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.0.copyload.i14 = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !35
  call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.af, i32 %.sroa.0.0.copyload.i14, ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #14
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !615, !noalias !617 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %.idx53 = shl nuw nsw i64 %i.ai, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.a, ptr %3, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %.sroa.419.0..sroa_idx, align 8
  %.not54 = icmp eq i32 %i.ah, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit, %_ZN5clang15ASTRecordWriter9push_backEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 219, ptr %i.an, align 8, !tbaa !54
  ret void

bb.h:                                             ; preds = %.lr.ph, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit
  %i.ao = phi i64 [ 0, %.lr.ph ], [ %i.bj, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ]
  %i.ap = phi ptr [ %i.a, %.lr.ph ], [ %i.bh, %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit ]
  %i.aq = and i64 %i.ao, 3
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5clang16StmtIteratorBase11GetDeclExprEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  br label %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit

_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit: ; preds = %bb.h, %bb.i
  %i.at = phi ptr [ %i.as, %bb.i ], [ %i.ap, %bb.h ]
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57 ; 2 uses
  %i.av = load i32, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4, !tbaa !41
  %.not.i.i17 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i.i17, label %bb.k, label %bb.j, !prof !42

bb.j:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef %i.au)
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

bb.k:                                             ; preds = %_ZNK5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEdeEv.exit
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr %i.au, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.al, align 8, !tbaa !40
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.al, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit: ; preds = %bb.j, %bb.k
  %i.bc = load i64, ptr %.sroa.419.0..sroa_idx, align 8, !tbaa !269 ; 2 uses
  %i.bd = and i64 %i.bc, 3
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit
  %i.bf = load ptr, ptr %3, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %3, align 8, !tbaa !55
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.m:                                             ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit
  %.not.i = icmp ult i64 %i.bc, 4
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5clang16StmtIteratorBase6NextVAEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

bb.o:                                             ; preds = %bb.m
  call void @_ZN5clang16StmtIteratorBase8NextDeclEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext true) #14
  br label %_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit

_ZN5clang16StmtIteratorImplINS_12StmtIteratorERPNS_4StmtEEppEv.exit: ; preds = %bb.l, %bb.n, %bb.o
  %i.bh = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.bi = icmp ne ptr %i.bh, %i.aj
  %i.bj = load i64, ptr %.sroa.419.0..sroa_idx, align 8 ; 2 uses
  %i.bk = icmp ne i64 %i.bj, 0
  %.not3.i = select i1 %i.bi, i1 true, i1 %i.bk
  br i1 %.not3.i, label %bb.h, label %._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtWriter15VisitMemberExprEPNS_10MemberExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTStmtWriter9VisitExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8                ; 5 uses
  %i.b = and i32 %i.a, 1048576                    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = and i32 %i.a, 2097152                    ; 2 uses
  %.not46 = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.a, 4194304                    ; 2 uses
  %.not48 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not48, label %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit, label %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.i

_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = lshr i32 %i.a, 20
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = lshr i32 %i.a, 21
  %.lobit.i.i.i.i.i.i.i = and i32 %i.i, 1
  %i.j = zext nneg i32 %.lobit.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %i.l = load i32, ptr %i.k, align 8, !tbaa !15
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.i
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.g
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %i.q = zext i32 %i.p to i64
  br label %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit

_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit: ; preds = %bb.a, %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.i, %bb.b
  %.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %_ZNK5clang10MemberExpr23hasExplicitTemplateArgsEv.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !249, !range !248, !noundef !59
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.c, label %._ZN5clang13ASTStmtWriter15PakedBitsWriter9writeBitsEv.exit_crit_edge.i

._ZN5clang13ASTStmtWriter15PakedBitsWriter9writeBitsEv.exit_crit_edge.i: ; preds = %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !250
  %.phi.trans.insert1.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre2.i = load ptr, ptr %.phi.trans.insert1.i, align 8, !tbaa !35
  br label %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i

bb.c:                                             ; preds = %_ZNK5clang10MemberExpr18getNumTemplateArgsEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = load i32, ptr %i.r, align 8, !tbaa !251
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !250, !nonnull !59, !align !60
  %i.aa = load i32, ptr %i.v, align 8, !tbaa !15
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab
  store i64 %i.x, ptr %i.af, align 8, !tbaa !252
  store i32 0, ptr %i.r, align 8, !tbaa !251
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.ag, align 4, !tbaa !253
  br label %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i

_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i: ; preds = %bb.c, %._ZN5clang13ASTStmtWriter15PakedBitsWriter9writeBitsEv.exit_crit_edge.i
  %i.ah = phi ptr [ %.pre2.i, %._ZN5clang13ASTStmtWriter15PakedBitsWriter9writeBitsEv.exit_crit_edge.i ], [ %i.ad, %bb.c ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !40 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.s, align 4, !tbaa !249
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %.not.i.i.i28 = icmp ult i32 %i.aj, %i.am
  br i1 %.not.i.i.i28, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 noundef 0)
  br label %_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit

bb.e:                                             ; preds = %_ZNSt8optionalIjEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarIjES4_IjNSt5decayIS7_E4typeEEEEESt16is_constructibleIjJS7_EESt13is_assignableIRjS7_EEERS0_E4typeEOS7_.exit.i
  %i.an = zext i32 %i.aj to i64
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.an
  store i64 0, ptr %i.ap, align 1
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !40
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ai, align 8, !tbaa !40
  br label %_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit

_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit: ; preds = %bb.d, %bb.e
  %.lobit = lshr exact i32 %i.b, 20
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 8 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !253 ; 4 uses
  %2 = shl nuw i32 %.lobit, %i.at
  %i.au = load i32, ptr %i.r, align 8, !tbaa !251
  %3 = or i32 %i.au, %2
  %4 = add i32 %i.at, 1
  %.lobit45 = lshr exact i32 %i.c, 21
  %5 = shl nuw i32 %.lobit45, %4
  %6 = or i32 %3, %5
  %7 = add i32 %i.at, 2
  %.lobit47 = lshr exact i32 %i.d, 22
  %i.av = shl nuw i32 %.lobit47, %7
  %i.aw = or i32 %6, %i.av
  store i32 %i.aw, ptr %i.r, align 8, !tbaa !251
  %i.ax = add i32 %i.at, 3
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !253
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.bc, %i.be
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 noundef %.0.i)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

bb.g:                                             ; preds = %_ZN5clang13ASTStmtWriter15PakedBitsWriter10updateBitsEv.exit
  %i.bf = zext i32 %i.bc to i64
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  store i64 %.0.i, ptr %i.bh, align 1
  %i.bi = load i32, ptr %i.bb, align 8, !tbaa !40
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bb, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

_ZN5clang15ASTRecordWriter9push_backEm.exit:      ; preds = %bb.f, %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !619 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !41
  %.not.i.i29 = icmp ult i32 %i.bo, %i.bq
  br i1 %.not.i.i29, label %bb.i, label %bb.h, !prof !42

bb.h:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef %i.bl)
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

bb.i:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  %i.br = zext i32 %i.bo to i64
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store ptr %i.bl, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.bn, align 8, !tbaa !40
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bn, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit: ; preds = %bb.h, %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !620
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.ca = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter10AddDeclRefEPKNS_4DeclERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.bz, ptr noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #14
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !620
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.cd, align 8, !tbaa !252
  tail call void @_ZN5clang15ASTRecordWriter21AddDeclarationNameLocERKNS_18DeclarationNameLocENS_15DeclarationNameE(ptr noundef nonnull align 8 dereferenceable(216) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 %.sroa.0.0.copyload.i) #14
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.0.0.copyload.i30 = load i32, ptr %i.ce, align 8, !tbaa !15
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.cg = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.cf, i32 %.sroa.0.0.copyload.i30, ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #14
  %i.ch = load i32, ptr %1, align 8
  %i.ci = lshr i32 %i.ch, 19
  %.lobit49 = and i32 %i.ci, 1
  %i.cj = load i32, ptr %i.as, align 4, !tbaa !253 ; 4 uses
  %i.ck = shl nuw i32 %.lobit49, %i.cj
  %i.cl = load i32, ptr %i.r, align 8, !tbaa !251
  %i.cm = or i32 %i.ck, %i.cl                     ; 2 uses
  store i32 %i.cm, ptr %i.r, align 8, !tbaa !251
  %i.cn = add i32 %i.cj, 1                        ; 2 uses
  store i32 %i.cn, ptr %i.as, align 4, !tbaa !253
  %i.co = load i32, ptr %1, align 8
  %i.cp = lshr i32 %i.co, 23
  %.lobit50 = and i32 %i.cp, 1
  %i.cq = shl nuw i32 %.lobit50, %i.cn
  %i.cr = or i32 %i.cq, %i.cm                     ; 2 uses
  store i32 %i.cr, ptr %i.r, align 8, !tbaa !251
  %i.cs = add i32 %i.cj, 2                        ; 2 uses
  store i32 %i.cs, ptr %i.as, align 4, !tbaa !253
  %i.ct = load i32, ptr %1, align 8
  %i.cu = lshr i32 %i.ct, 24
  %i.cv = and i32 %i.cu, 3
  %i.cw = shl i32 %i.cv, %i.cs
  %i.cx = or i32 %i.cw, %i.cr
  store i32 %i.cx, ptr %i.r, align 8, !tbaa !251
  %i.cy = add i32 %i.cj, 4
  store i32 %i.cy, ptr %i.as, align 4, !tbaa !253
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i31 = load i32, ptr %i.cz, align 4, !tbaa !15
  %i.da = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.da, i32 %.sroa.0.0.copyload.i31, ptr noundef nonnull align 8 dereferenceable(16) %i.db) #14
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit
  %i.dc = load i32, ptr %1, align 8
  %i.dd = and i32 %i.dc, 1048576
  %.not.i32 = icmp eq i32 %i.dd, 0
  br i1 %.not.i32, label %_ZNK5clang10MemberExpr15getQualifierLocEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i33 = load i64, ptr %i.de, align 8, !tbaa !252
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !285
  br label %_ZNK5clang10MemberExpr15getQualifierLocEv.exit

_ZNK5clang10MemberExpr15getQualifierLocEv.exit:   ; preds = %bb.j, %bb.k
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i33, %bb.k ], [ 0, %bb.j ]
  %.sroa.4.0.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.k ], [ null, %bb.j ]
  tail call void @_ZN5clang15ASTRecordWriter25AddNestedNameSpecifierLocENS_22NestedNameSpecifierLocE(ptr noundef nonnull align 8 dereferenceable(216) %i.ay, i64 %.sroa.0.0.i, ptr %.sroa.4.0.i) #14
  br label %bb.l

bb.l:                                             ; preds = %_ZNK5clang10MemberExpr15getQualifierLocEv.exit, %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit
  br i1 %.not46, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = load i32, ptr %1, align 8               ; 2 uses
  %i.dg = and i32 %i.df, 2097152
  %.not.i34 = icmp eq i32 %i.dg, 0
  br i1 %.not.i34, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr %i.bw, align 8, !tbaa !620 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = lshr i32 %i.dj, 13
  %i.dl = and i32 %i.dk, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = ptrtoint ptr %i.dh to i64
  %i.do = or i64 %i.dm, %i.dn
  br label %_ZNK5clang10MemberExpr12getFoundDeclEv.exit

bb.o:                                             ; preds = %bb.m
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dq = lshr i32 %i.df, 20
  %.lobit.i.i.i.i.i = and i32 %i.dq, 1
  %i.dr = zext nneg i32 %.lobit.i.i.i.i.i to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.dr
  %.sroa.0.0.copyload.i35 = load i64, ptr %i.ds, align 8, !tbaa !55
  br label %_ZNK5clang10MemberExpr12getFoundDeclEv.exit

_ZNK5clang10MemberExpr12getFoundDeclEv.exit:      ; preds = %bb.n, %bb.o
  %.sroa.0.0.i36 = phi i64 [ %.sroa.0.0.copyload.i35, %bb.o ], [ %i.do, %bb.n ] ; 2 uses
  %i.dt = and i64 %.sroa.0.0.i36, -8
  %i.du = inttoptr i64 %i.dt to ptr
  %i.dv = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.dw = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter10AddDeclRefEPKNS_4DeclERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.dv, ptr noundef %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #14
  %i.dx = trunc i64 %.sroa.0.0.i36 to i32
  %i.dy = and i32 %i.dx, 3
  %i.dz = load i32, ptr %i.as, align 4, !tbaa !253 ; 2 uses
  %i.ea = shl i32 %i.dy, %i.dz
  %i.eb = load i32, ptr %i.r, align 8, !tbaa !251
  %i.ec = or i32 %i.eb, %i.ea
  store i32 %i.ec, ptr %i.r, align 8, !tbaa !251
  %i.ed = add i32 %i.dz, 2
  store i32 %i.ed, ptr %i.as, align 4, !tbaa !253
  br label %bb.p

bb.p:                                             ; preds = %_ZNK5clang10MemberExpr12getFoundDeclEv.exit, %bb.l
  br i1 %.not48, label %_ZN5clang13ASTStmtWriter24AddTemplateKWAndArgsInfoERKNS_24ASTTemplateKWAndArgsInfoEPKNS_19TemplateArgumentLocE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ef = load i32, ptr %1, align 8               ; 3 uses
  %i.eg = lshr i32 %i.ef, 20
  %.lobit.i.i.i.i.i.i = and i32 %i.eg, 1
  %i.eh = zext nneg i32 %.lobit.i.i.i.i.i.i to i64
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = lshr i32 %i.ef, 21
  %.lobit.i.i.i.i.i38 = and i32 %i.ej, 1
  %i.ek = zext nneg i32 %.lobit.i.i.i.i.i38 to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ek ; 5 uses
  %i.em = lshr i32 %i.ef, 22
  %.lobit.i.i.i.i.i41 = and i32 %i.em, 1
  %i.en = zext nneg i32 %.lobit.i.i.i.i.i41 to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.04.0.copyload.i = load i32, ptr %i.ep, align 8, !tbaa !15
  %i.eq = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.er = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.eq, i32 %.sroa.04.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.er) #14
  %.sroa.03.0.copyload.i = load i32, ptr %i.el, align 8, !tbaa !15
  %i.es = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.et = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.es, i32 %.sroa.03.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.et) #14
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.0.0.copyload.i42 = load i32, ptr %i.eu, align 4, !tbaa !15
  %i.ev = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.ew = load ptr, ptr %i.az, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.ev, i32 %.sroa.0.0.copyload.i42, ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #14
end_hunk_1
