Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ThreadSafetyCommon?download=true
inline.NumInlined: 3623
inline.NumDeleted: 2201
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang12threadSafety9CFGWalker4walkINS0_12SExprBuilderEEEvRT_:bb.a

_ZNSt6vectorIPN5clang12threadSafety3til3PhiESaIS4_EE5clearEv.exit.i90: ; preds = %bb.ck, %.thread
  %i.vm = load ptr, ptr %i.am, align 8, !tbaa !132 ; 2 uses
  %i.vn = load ptr, ptr %i.an, align 8, !tbaa !133
  %.not.i.i1.i = icmp eq ptr %i.vn, %i.vm
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIPN5clang12threadSafety3til5SExprESaIS4_EE5clearEv.exit.i91, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIPN5clang12threadSafety3til3PhiESaIS4_EE5clearEv.exit.i90
  store ptr %i.vm, ptr %i.an, align 8, !tbaa !133
  br label %_ZNSt6vectorIPN5clang12threadSafety3til5SExprESaIS4_EE5clearEv.exit.i91

_ZNSt6vectorIPN5clang12threadSafety3til5SExprESaIS4_EE5clearEv.exit.i91: ; preds = %bb.cl, %_ZNSt6vectorIPN5clang12threadSafety3til3PhiESaIS4_EE5clearEv.exit.i90
  %i.vo = load ptr, ptr %i.aj, align 8, !tbaa !153 ; 3 uses
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !165 ; 6 uses
  %.not.i.i2.i = icmp eq ptr %i.vp, null
  br i1 %.not.i.i2.i, label %_ZN5clang12threadSafety12SExprBuilder12exitCFGBlockEPKNS_8CFGBlockE.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIPN5clang12threadSafety3til5SExprESaIS4_EE5clearEv.exit.i91
  %i.vq = load i32, ptr %i.vp, align 8, !tbaa !172 ; 2 uses
  %i.vr = icmp ult i32 %i.vq, 2
  br i1 %i.vr, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !173 ; 3 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq ptr %i.vt, null
  br i1 %.not.i.i.i.i.i.i.i92, label %_ZN5clang12threadSafety17CopyOnWriteVectorISt4pairIPKNS_9ValueDeclEPNS0_3til5SExprEEE10VectorDataD2Ev.exit.i.i.i93, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !174
  %i.vw = ptrtoint ptr %i.vv to i64
  %i.vx = ptrtoint ptr %i.vt to i64
  %i.vy = sub i64 %i.vw, %i.vx
  call void @_ZdlPvm(ptr noundef nonnull %i.vt, i64 noundef %i.vy) #20
  br label %_ZN5clang12threadSafety17CopyOnWriteVectorISt4pairIPKNS_9ValueDeclEPNS0_3til5SExprEEE10VectorDataD2Ev.exit.i.i.i93

_ZN5clang12threadSafety17CopyOnWriteVectorISt4pairIPKNS_9ValueDeclEPNS0_3til5SExprEEE10VectorDataD2Ev.exit.i.i.i93: ; preds = %bb.co, %bb.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.vp, i64 noundef 32) #20
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cm
  %i.vz = add i32 %i.vq, -1
  store i32 %i.vz, ptr %i.vp, align 8, !tbaa !172
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %_ZN5clang12threadSafety17CopyOnWriteVectorISt4pairIPKNS_9ValueDeclEPNS0_3til5SExprEEE10VectorDataD2Ev.exit.i.i.i93
  store ptr null, ptr %i.vo, align 8, !tbaa !165
  br label %_ZN5clang12threadSafety12SExprBuilder12exitCFGBlockEPKNS_8CFGBlockE.exit

_ZN5clang12threadSafety12SExprBuilder12exitCFGBlockEPKNS_8CFGBlockE.exit: ; preds = %_ZNSt6vectorIPN5clang12threadSafety3til5SExprESaIS4_EE5clearEv.exit.i91, %bb.cq
  %i.wa = load ptr, ptr %i.ai, align 8, !tbaa !165
  store ptr %i.wa, ptr %i.vo, align 8, !tbaa !165
  store ptr null, ptr %i.ai, align 8, !tbaa !165
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %.not133 = icmp eq ptr %i.bs, %i.ab
  br i1 %.not133, label %._crit_edge168, label %bb.h
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12threadSafety12SExprBuilder17translateAttrExprEPKNS_4ExprEPKNS_9NamedDeclES4_PNS0_3til5SExprE(ptr dead_on_unwind noalias writable sret(%"class.clang::threadSafety::CapabilityExpr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.clang::threadSafety::SExprBuilder::CallingContext", align 8 ; 10 uses
  %i.a = icmp ne ptr %4, null                     ; 2 uses
  %i.b = icmp ne ptr %5, null                     ; 2 uses
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang12threadSafety12SExprBuilder17translateAttrExprEPKNS_4ExprEPNS1_14CallingContextE(ptr dead_on_unwind writable sret(%"class.clang::threadSafety::CapabilityExpr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef %2, ptr noundef null)
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr null, ptr %6, align 8, !tbaa !229
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !230
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  store i32 0, ptr %i.e, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !232
  br i1 %i.a, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.h = load i16, ptr %4, align 8
  %i.i = and i16 %i.h, 511                        ; 5 uses
  switch i16 %i.i, label %bb.h [
    i16 46, label %bb.e
    i16 94, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !239
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  store i64 %i.l, ptr %i.d, align 8
  %i.m = load i32, ptr %4, align 8
  %i.n = lshr i32 %i.m, 19
  %i.o = trunc i32 %i.n to i8
  %i.p = and i8 %i.o, 1
  store i8 %i.p, ptr %i.g, align 8, !tbaa !232
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noundef ptr @_ZNK5clang17CXXMemberCallExpr25getImplicitObjectArgumentEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  store i64 %i.r, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.u = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %i.t) #22 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8
  %i.w = and i16 %i.v, 511
  %.not.i = icmp eq i16 %i.w, 46
  br i1 %.not.i, label %bb.g, label %_ZL13isCalleeArrowPKN5clang4ExprE.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.u, align 8
  %i.y = lshr i32 %i.x, 19
  %i.z = trunc i32 %i.y to i8
  %i.aa = and i8 %i.z, 1
  br label %_ZL13isCalleeArrowPKN5clang4ExprE.exit

_ZL13isCalleeArrowPKN5clang4ExprE.exit:           ; preds = %bb.f, %bb.g
  %i.ab = phi i8 [ %i.aa, %bb.g ], [ 0, %bb.f ]
  store i8 %i.ab, ptr %i.g, align 8, !tbaa !232
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !241
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !231
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.af = load i32, ptr %4, align 8
  %i.ag = lshr i32 %i.af, 19
  %i.ah = and i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %i.f, align 8
  br label %bb.o

bb.h:                                             ; preds = %bb.d
  %i.al = add nsw i16 %i.i, -96
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.al, -5
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp eq i16 %i.i, 93
  br i1 %i.am, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 124
  %i.aq = icmp eq i32 %i.ap, 36
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.as = load i32, ptr %4, align 8
  %i.at = lshr i32 %i.as, 19
  %i.au = and i32 %i.at, 1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !243
  %i.ay = ptrtoint ptr %i.ax to i64               ; 2 uses
  store i64 %i.ay, ptr %i.d, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !241
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr %i.e, align 8, !tbaa !231
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bd = ptrtoint ptr %i.bc to i64
  store i64 %i.bd, ptr %i.f, align 8
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !241
  store i32 %i.bf, ptr %i.e, align 8, !tbaa !231
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bh = load i32, ptr %4, align 8
  %i.bi = lshr i32 %i.bh, 19
  %i.bj = and i32 %i.bi, 1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bk
  %i.bm = ptrtoint ptr %i.bl to i64
  store i64 %i.bm, ptr %i.f, align 8
  br label %bb.o

bb.m:                                             ; preds = %bb.h
  %i.bn = add nsw i16 %i.i, -119
  %spec.select.i.i.i.i.i.i.i.i45 = icmp ult i16 %i.bn, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !482
  store i32 %i.bp, ptr %i.e, align 8, !tbaa !231
  %.not.i.i.i = icmp eq i16 %i.i, 118             ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %4, ptr null
  %7 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %7, ptr %i.bq
  %i.br = ptrtoint ptr %spec.select.i.i.i to i64
  store i64 %i.br, ptr %i.f, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.n, %bb.m, %bb.e, %_ZL13isCalleeArrowPKN5clang4ExprE.exit, %bb.c
  %.0.copyload.i.i.i68 = phi i64 [ 0, %bb.l ], [ %i.ay, %bb.k ], [ 0, %bb.n ], [ 0, %bb.m ], [ %i.l, %bb.e ], [ %i.r, %_ZL13isCalleeArrowPKN5clang4ExprE.exit ], [ 0, %bb.c ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 124
  %i.bv = icmp ne i32 %i.bu, 36
  %.not4065 = icmp eq ptr %3, null
  %.not40 = or i1 %.not4065, %i.bv
  br i1 %.not40, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bx = tail call noundef ptr @_ZN5clang4Decl19castFromDeclContextEPKNS_11DeclContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.bw) #18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.by, align 8 ; 3 uses
  %i.bz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cb = inttoptr i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to ptr
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

bb.r:                                             ; preds = %bb.p
  %i.cc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -5
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !247
  br label %_ZNK5clang13CXXMethodDecl9getParentEv.exit

_ZNK5clang13CXXMethodDecl9getParentEv.exit:       ; preds = %bb.q, %bb.r
  %.0.i.i.i.i = phi ptr [ %i.cb, %bb.q ], [ %i.ce, %bb.r ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !498 ; 2 uses
  %.not.i48 = icmp eq ptr %i.cg, null
  br i1 %.not.i48, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit:        ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = and i32 %i.ci, 8388608
  %.not66 = icmp eq i32 %i.cj, 0
  br i1 %.not66, label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit
  store i64 0, ptr %i.d, align 8
  br label %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread

_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread: ; preds = %_ZNK5clang13CXXMethodDecl9getParentEv.exit, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit, %bb.s, %bb.o
  %.0.copyload.i.i.i = phi i64 [ %.0.copyload.i.i.i68, %_ZNK5clang13CXXMethodDecl9getParentEv.exit ], [ %.0.copyload.i.i.i68, %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit ], [ 0, %bb.s ], [ %.0.copyload.i.i.i68, %bb.o ] ; 2 uses
  br i1 %i.b, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread
  %i.ck = load i32, ptr %i.bs, align 4
  %i.cl = and i32 %i.ck, 124
  %i.cm = icmp eq i32 %i.cl, 36
  %i.cn = ptrtoint ptr %5 to i64                  ; 2 uses
  br i1 %i.cm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.co = or i64 %i.cn, 2
  store i64 %i.co, ptr %i.d, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cp = or i64 %i.cn, 4
  store i64 %i.cp, ptr %i.f, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.not42 = icmp eq ptr %2, null
  br i1 %.not42, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cq = tail call i64 @_ZNK5clang13CXXMethodDecl39getFunctionObjectParameterReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(168) %3) #18 ; 3 uses
  %i.cr = and i64 %i.cq, -16
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load ptr, ptr %i.cs, align 16, !tbaa !37 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i8, ptr %i.cu, align 16
  %i.cw = and i8 %i.cv, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.cw, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cx, align 8, !tbaa !20
  %i.cy = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load ptr, ptr %i.cz, align 16, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i8, ptr %i.db, align 16
  %i.dd = and i8 %i.dc, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i.i = icmp eq i8 %i.dd, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.y
  %i.de = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ct) #18 ; 2 uses
  %.not.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i, label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %bb.x
  %.1.i8.i.i = phi ptr [ %i.de, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %i.ct, %bb.x ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1.i8.i.i, i64 16
  %i.dg = load i24, ptr %i.df, align 16
  %i.dh = and i24 %i.dg, 1048576
  %.not4.i.i.i = icmp eq i24 %i.dh, 0
  br i1 %.not4.i.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i
  %.05.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ], [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.di, align 8
  %i.dj = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load ptr, ptr %i.dk, align 16, !tbaa !37 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i8, ptr %i.dm, align 16
  %i.do = and i8 %i.dn, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i = icmp eq i8 %i.do, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.dp = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.dl) #18
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.dp, %bb.z ], [ %i.dl, %.lr.ph.i.i.i ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  %i.dr = load i24, ptr %i.dq, align 16
  %i.ds = and i24 %i.dr, 1048576
  %.not.i.i.i49 = icmp eq i24 %i.ds, 0
  br i1 %.not.i.i.i49, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !479

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i
  %.0.lcssa.i.i.i = phi ptr [ %.1.i8.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i.i ], [ %.1.i.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i = load i64, ptr %i.dt, align 8, !tbaa !20
  br label %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit

_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit: ; preds = %bb.y, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i
  %.sroa.0.0.in.i.sroa.speculated.i = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i.i ], [ %i.cq, %bb.y ], [ %i.cq, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  tail call void @_ZN5clang12threadSafety14CapabilityExprC1EPKNS0_3til5SExprENS_8QualTypeEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5, i64 %.sroa.0.0.in.i.sroa.speculated.i, i1 noundef zeroext false) #18
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  call void @_ZN5clang12threadSafety12SExprBuilder17translateAttrExprEPKNS_4ExprEPNS1_14CallingContextE(ptr dead_on_unwind writable sret(%"class.clang::threadSafety::CapabilityExpr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull %2, ptr noundef nonnull %6)
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNK5clang13CXXRecordDecl8isLambdaEv.exit.thread
  %.not41 = icmp eq ptr %2, null
  br i1 %.not41, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.du = icmp ugt i64 %.0.copyload.i.i.i, 3
  br i1 %i.du, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.dv = and i64 %.0.copyload.i.i.i, -3
  %i.dw = inttoptr i64 %i.dv to ptr
  tail call void @_ZN5clang12threadSafety12SExprBuilder17translateAttrExprEPKNS_4ExprEPNS1_14CallingContextE(ptr dead_on_unwind writable sret(%"class.clang::threadSafety::CapabilityExpr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef %i.dw, ptr noundef null)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  call void @_ZN5clang12threadSafety12SExprBuilder17translateAttrExprEPKNS_4ExprEPNS1_14CallingContextE(ptr dead_on_unwind writable sret(%"class.clang::threadSafety::CapabilityExpr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef nonnull %2, ptr noundef nonnull %6)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.aa, %_ZNK5clang13CXXMethodDecl30getFunctionObjectParameterTypeEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang12threadSafety12SExprBuilder17translateAttrExprEPKNS_4ExprEPNS1_14CallingContextE(ptr dead_on_unwind noalias writable sret(%"class.clang::threadSafety::CapabilityExpr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.a = load i16, ptr %2, align 8
  %i.b = and i16 %i.a, 511
  switch i16 %i.b, label %bb.k [
    i16 9, label %bb.d
    i16 93, label %bb.g
    i16 4, label %bb.i
  ]

end_hunk_0
