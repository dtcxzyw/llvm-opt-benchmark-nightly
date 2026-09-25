Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowLevelHelpers?download=true
inline.NumInlined: 313
inline.NumDeleted: 232
begin_hunk_0_@_ZN5clang12ast_matchers30matchEachArgumentWithParamTypeERKNS_16CXXConstructExprEN4llvm12function_refIFvNS_8QualTypeEPKNS_4ExprEEEE:bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = and i64 %i.ac, -16
  %i.ae = inttoptr i64 %i.ad to ptr               ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !17 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i8, ptr %i.ag, align 16
  %.not.i.i53.i = icmp eq i8 %i.ah, 40
  br i1 %.not.i.i53.i, label %_ZNK5clang4Type21isFunctionPointerTypeEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueDeclEKNS1_4DeclEEEDaPT0_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.aj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i8, ptr %i.am, align 16
  %i.ao = icmp eq i8 %i.an, 40
  br i1 %i.ao, label %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i

_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i: ; preds = %bb.f
  %i.ap = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.af) #4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i, label %_ZNK5clang4Type21isFunctionPointerTypeEv.exit.i

_ZNK5clang4Type21isFunctionPointerTypeEv.exit.i:  ; preds = %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i, %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueDeclEKNS1_4DeclEEEDaPT0_.exit.i
  %.1.i11.i.i = phi ptr [ %i.ap, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i ], [ %i.af, %_ZN4llvm16dyn_cast_or_nullIN5clang9ValueDeclEKNS1_4DeclEEEDaPT0_.exit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i11.i.i, i64 32
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aq, align 16, !tbaa !11
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 16, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.0.0.copyload.i.i.i.i5.i.i = load i64, ptr %i.au, align 8, !tbaa !11
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i.i5.i.i, -16
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i8, ptr %i.ay, align 16
  %i.ba = add i8 %i.az, -23
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ba, 2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i

bb.g:                                             ; preds = %_ZNK5clang4Type21isFunctionPointerTypeEv.exit.i
  %i.bb = load ptr, ptr %i.ae, align 16, !tbaa !17
  %i.bc = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bb) #4
  %i.bd = and i64 %i.bc, -16
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.be, align 16, !tbaa !17 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i8, ptr %i.bg, align 16
  %.not.i56.i = icmp eq i8 %i.bh, 24
  br i1 %.not.i56.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bj = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i8, ptr %i.bm, align 16
  %i.bo = icmp eq i8 %i.bn, 24
  br i1 %i.bo, label %bb.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bp = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bf) #4
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_ZNK5clang4Type21isFunctionPointerTypeEv.exit.i, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i, %bb.f
  %.036.i = phi ptr [ null, %bb.h ], [ null, %_ZNK5clang4Type21isFunctionPointerTypeEv.exit.i ], [ %i.bp, %bb.i ], [ %i.bf, %bb.g ], [ null, %_ZNK5clang4Type5getAsINS_11PointerTypeEEEPKT_v.exit.i.i ], [ null, %bb.f ] ; 4 uses
  %i.bq = load ptr, ptr %i.ae, align 16, !tbaa !17 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i8, ptr %i.br, align 16
  %.not.i.i58.i = icmp eq i8 %i.bs, 30
  br i1 %.not.i.i58.i, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread7.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i59.i = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i.i.i59.i, -16
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !17
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i8, ptr %i.bx, align 16
  %i.bz = icmp eq i8 %i.by, 30
  br i1 %i.bz, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i.i: ; preds = %bb.j
  %i.ca = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.bq) #4 ; 2 uses
  %.not.i61.i = icmp eq ptr %i.ca, null
  br i1 %.not.i61.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread7.i.i

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread7.i.i: ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i
  %.1.i10.i.i = phi ptr [ %i.ca, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i.i ], [ %i.bq, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i10.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.cb, align 8
  %i.cc = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !17 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i8, ptr %i.cf, align 16
  %.not.i.i.i.i.i = icmp eq i8 %i.cg, 24
  br i1 %.not.i.i.i.i.i, label %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.thread98.i, label %bb.k

bb.k:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread7.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !tbaa !11
  %i.ci = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load ptr, ptr %i.cj, align 16, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i8, ptr %i.cl, align 16
  %i.cn = icmp eq i8 %i.cm, 24
  br i1 %i.cn, label %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i

_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.i: ; preds = %bb.k
  %i.co = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ce) #4
  %.not109.i = icmp eq ptr %i.co, null
  br i1 %.not109.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i, label %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.thread98.i

_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.thread98.i: ; preds = %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.i, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.thread7.i.i
  %i.cp = load ptr, ptr %i.ae, align 16, !tbaa !17 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i8, ptr %i.cq, align 16
  %.not.i63.i = icmp eq i8 %i.cr, 30
  br i1 %.not.i63.i, label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.thread98.i
  %i.cs = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cp) #4
  br label %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i

_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i: ; preds = %bb.l, %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.thread98.i
  %.1.i65.i = phi ptr [ %i.cs, %bb.l ], [ %i.cp, %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.thread98.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i65.i, i64 32
  %.sroa.0.0.copyload.i66.i = load i64, ptr %i.ct, align 16, !tbaa !11
  %i.cu = and i64 %.sroa.0.0.copyload.i66.i, -16
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !17 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i8, ptr %i.cx, align 16
  %.not.i68.i = icmp eq i8 %i.cy, 24
  br i1 %.not.i68.i, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread104.i, label %bb.m

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread104.i: ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i
  %i.cz = load i32, ptr %i.q, align 8, !tbaa !75
  br label %bb.o

bb.m:                                             ; preds = %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.0.0.copyload.i.i.i.i69.i = load i64, ptr %i.da, align 8, !tbaa !11
  %i.db = and i64 %.sroa.0.0.copyload.i.i.i.i69.i, -16
  %i.dc = inttoptr i64 %i.db to ptr
  %i.dd = load ptr, ptr %i.dc, align 16, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i8, ptr %i.de, align 16
  %i.dg = icmp eq i8 %i.df, 24
  br i1 %i.dg, label %bb.n, label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread.i

bb.n:                                             ; preds = %bb.m
  %i.dh = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cw) #4
  br label %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread.i: ; preds = %bb.m, %bb.e, %bb.d, %_ZN4llvm16dyn_cast_or_nullIN5clang13CXXMethodDeclEKNS1_12FunctionDeclEEEDaPT0_.exit.thread.i
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !75
  br label %bb.q

_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i: ; preds = %bb.n, %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.i, %bb.k, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i.i, %bb.j
  %.3.i = phi ptr [ %i.dh, %bb.n ], [ %.036.i, %_ZNK5clang4Type27isMemberFunctionPointerTypeEv.exit.i ], [ %.036.i, %bb.k ], [ %.036.i, %_ZNK5clang4Type5getAsINS_17MemberPointerTypeEEEPKT_v.exit.i.i ], [ %.036.i, %bb.j ] ; 2 uses
  %i.dk = load i32, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %.not47.i = icmp eq ptr %.3.i, null
  br i1 %.not47.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread104.i
  %i.dl = phi i32 [ %i.cz, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread104.i ], [ %i.dk, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i ] ; 2 uses
  %.3107.i = phi ptr [ %i.cw, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread104.i ], [ %.3.i, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.3107.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 16           ; 2 uses
  %i.do = and i64 %i.dn, 2147483648
  %.not110.i = icmp eq i64 %i.do, 0
  br i1 %.not110.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = lshr i64 %i.dn, 48
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.dl, i32 %i.dq)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread.i
  %.not47103.i = phi i1 [ true, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i ], [ false, %bb.p ], [ false, %bb.o ], [ true, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread.i ]
  %.3102.i = phi ptr [ null, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i ], [ %.3107.i, %bb.p ], [ %.3107.i, %bb.o ], [ null, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread.i ] ; 2 uses
  %.0.i = phi i32 [ %i.dk, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.i ], [ %.sroa.speculated.i, %bb.p ], [ %i.dl, %bb.o ], [ %i.dj, %_ZNK5clang4Type5getAsINS_17FunctionProtoTypeEEEPKT_v.exit71.thread.i ] ; 3 uses
  %i.dr = icmp ult i32 %.1.i, %.0.i
  br i1 %i.dr, label %.lr.ph.i, label %_ZN5clang12ast_matchersL34matchEachArgumentWithParamTypeImplINS_16CXXConstructExprEEEvRKT_N4llvm12function_refIFvNS_8QualTypeEPKNS_4ExprEEEE.exit

.lr.ph.i:                                         ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %.3102.i, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %.3102.i, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %.not47103.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %i.dv = zext nneg i32 %.1.i to i64
  %i.dw = sub nuw i32 %.0.i, %.1.i
  %wide.trip.count.i = zext i32 %i.dw to i64
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.dx = load ptr, ptr %i.du, align 8, !tbaa !76
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZN5clang12ast_matchersL34matchEachArgumentWithParamTypeImplINS_16CXXConstructExprEEEvRKT_N4llvm12function_refIFvNS_8QualTypeEPKNS_4ExprEEEE.exit, label %.lr.ph.split.us.split.preheader.i

.lr.ph.split.us.split.preheader.i:                ; preds = %.lr.ph.split.us.i
  %i.dz = zext nneg i32 %.1.i to i64
  %i.ea = sub nuw i32 %.0.i, %.1.i
  %wide.trip.count128.i = zext i32 %i.ea to i64
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %bb.s, %.lr.ph.split.us.split.preheader.i
  %indvars.iv123.i = phi i64 [ 0, %.lr.ph.split.us.split.preheader.i ], [ %indvars.iv.next124.i, %bb.s ] ; 3 uses
  %indvars.iv121.i = phi i64 [ %i.dz, %.lr.ph.split.us.split.preheader.i ], [ %indvars.iv.next122.i, %bb.s ] ; 2 uses
  %.val.us.i = load ptr, ptr %i.du, align 8, !tbaa !76 ; 3 uses
  %.not48.us.i = icmp eq ptr %.val.us.i, null
  br i1 %.not48.us.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.us.split.i
  %i.eb = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.val.us.i) #4
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp samesign ult i64 %indvars.iv123.i, %i.ec
  br i1 %i.ed, label %.critedge.us.i, label %bb.s

.critedge.us.i:                                   ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !59
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv123.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !61
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %.sroa.0.0.us.i = load i64, ptr %i.ei, align 8, !tbaa !11
  %i.ej = load i16, ptr %0, align 8
  %i.ek = and i16 %i.ej, 511
  %.not.i.i.i.i74.us.i = icmp eq i16 %i.ek, 118
  %spec.select.v.i.i.i.i.us.i = select i1 %.not.i.i.i.i74.us.i, i64 48, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v.i.i.i.i.us.i
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv121.i
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !63
  %i.eo = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #5
  tail call void %1(i64 noundef %2, i64 %.sroa.0.0.us.i, ptr noundef %i.eo) #4, !inline_history !69
  br label %bb.s

bb.s:                                             ; preds = %.critedge.us.i, %bb.r, %.lr.ph.split.us.split.i
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond129.not.i = icmp eq i64 %indvars.iv.next124.i, %wide.trip.count128.i
  br i1 %exitcond129.not.i, label %_ZN5clang12ast_matchersL34matchEachArgumentWithParamTypeImplINS_16CXXConstructExprEEEvRKT_N4llvm12function_refIFvNS_8QualTypeEPKNS_4ExprEEEE.exit, label %.lr.ph.split.us.split.i, !llvm.loop !70

.lr.ph.split.i:                                   ; preds = %bb.x, %.lr.ph.split.preheader.i
  %indvars.iv116.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next117.i, %bb.x ] ; 5 uses
  %indvars.iv.i = phi i64 [ %i.dv, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %i.ep = load i64, ptr %i.ds, align 16
  %i.eq = lshr i64 %i.ep, 48
  %i.er = icmp samesign ult i64 %indvars.iv116.i, %i.eq
  br i1 %i.er, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.i
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv116.i
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph.split.i
  %.val.i = load ptr, ptr %i.du, align 8, !tbaa !76 ; 3 uses
  %.not48.i = icmp eq ptr %.val.i, null
  br i1 %.not48.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = tail call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.val.i) #4
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv116.i, %i.eu
  br i1 %i.ev, label %.critedge.i, label %bb.x

.critedge.i:                                      ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %.val.i, i64 120
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !59
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv116.i
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !61
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 48
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i, %bb.t
  %.sroa.0.0.in.i = phi ptr [ %i.fa, %.critedge.i ], [ %i.es, %bb.t ]
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !11
  %i.fb = load i16, ptr %0, align 8
  %i.fc = and i16 %i.fb, 511
  %.not.i.i.i.i74.i = icmp eq i16 %i.fc, 118
  %spec.select.v.i.i.i.i.i = select i1 %.not.i.i.i.i74.i, i64 48, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.i
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !63
  %i.fg = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ff) #5
  tail call void %1(i64 noundef %2, i64 %.sroa.0.0.i, ptr noundef %i.fg) #4, !inline_history !69
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next117.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5clang12ast_matchersL34matchEachArgumentWithParamTypeImplINS_16CXXConstructExprEEEvRKT_N4llvm12function_refIFvNS_8QualTypeEPKNS_4ExprEEEE.exit, label %.lr.ph.split.i, !llvm.loop !71

_ZN5clang12ast_matchersL34matchEachArgumentWithParamTypeImplINS_16CXXConstructExprEEEvRKT_N4llvm12function_refIFvNS_8QualTypeEPKNS_4ExprEEEE.exit: ; preds = %bb.x, %bb.s, %bb.q, %.lr.ph.split.us.i
  ret void
}

declare noundef zeroext i1 @_ZNK5clang13CXXMethodDecl30isExplicitObjectMemberFunctionEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

declare i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #1

declare noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #1

declare noundef ptr @_ZN5clang4Expr25getReferencedDeclOfCalleeEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN5clang4StmtE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!4, !4, i64 0}
!12 = !{!"p1 _ZTSN5clang4TypeE", !8, i64 0}
!13 = !{!"_ZTSN4llvm6detail13PunnedPointerINS_12PointerUnionIJPKN5clang4TypeEPKNS3_8ExtQualsEEEEEE", !4, i64 0}
!14 = !{!"_ZTSN4llvm14PointerIntPairINS_12PointerUnionIJPKN5clang4TypeEPKNS2_8ExtQualsEEEELj3EjNS_21PointerLikeTypeTraitsIS9_EENS_18PointerIntPairInfoIS9_Lj3ESB_EEEE", !13, i64 0}
!15 = !{!"_ZTSN5clang8QualTypeE", !14, i64 0}
!16 = !{!"_ZTSN5clang22ExtQualsTypeCommonBaseE", !12, i64 0, !15, i64 8}
!17 = !{!16, !12, i64 0}
!18 = !{!"_ZTSN5clang4StmtE", !4, i64 0}
!19 = !{!"_ZTSN5clang9ValueStmtE", !18, i64 0}
!20 = !{!"_ZTSN5clang4ExprE", !19, i64 0, !15, i64 8}
!21 = !{!"_ZTSN5clang14SourceLocationE", !5, i64 0}
!22 = !{!"_ZTSN4llvm6detail13PunnedPointerIPN5clang4DeclEEE", !4, i64 0}
!23 = !{!"_ZTSN4llvm14PointerIntPairIPN5clang4DeclELj3ENS2_19ModuleOwnershipKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj3ES6_EEEE", !22, i64 0}
!24 = !{!"_ZTSN4llvm6detail13PunnedPointerIPvEE", !4, i64 0}
!25 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang11DeclContextEPNS3_4Decl10MultipleDCEEEELi2EJEEE", !24, i64 0}
!26 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang11DeclContextEPNS3_4Decl10MultipleDCEEEELi1EJS8_EEE", !25, i64 0}
!27 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang11DeclContextEPNS3_4Decl10MultipleDCEEEELi0EJS5_S8_EEE", !26, i64 0}
!28 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang11DeclContextEPNS1_4Decl10MultipleDCEEEE", !27, i64 0}
!29 = !{!"_ZTSN5clang4DeclE", !23, i64 8, !28, i64 16, !21, i64 24, !5, i64 28, !5, i64 28, !5, i64 29, !5, i64 29, !5, i64 29, !5, i64 29, !5, i64 29, !5, i64 29, !5, i64 29, !5, i64 30, !5, i64 32}
!30 = !{!"long", !4, i64 0}
!31 = !{!"_ZTSN5clang15DeclarationNameE", !30, i64 0}
!32 = !{!"_ZTSN5clang9NamedDeclE", !29, i64 0, !31, i64 40}
!33 = !{!"_ZTSN5clang9ValueDeclE", !32, i64 0, !15, i64 48}
!34 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi2EJEEE", !24, i64 0}
!35 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi1EJS8_EEE", !34, i64 0}
!36 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang14TypeSourceInfoEPNS3_14DeclaratorDecl7ExtInfoEEEELi0EJS5_S8_EEE", !35, i64 0}
!37 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang14TypeSourceInfoEPNS1_14DeclaratorDecl7ExtInfoEEEE", !36, i64 0}
!38 = !{!"_ZTSN5clang14DeclaratorDeclE", !33, i64 0, !37, i64 56, !21, i64 64}
!39 = !{!"p1 _ZTSN5clang14StoredDeclsMapE", !8, i64 0}
!40 = !{!"p1 _ZTSN5clang4DeclE", !8, i64 0}
!41 = !{!"_ZTSN5clang11DeclContextE", !39, i64 0, !4, i64 8, !40, i64 16, !40, i64 24}
!42 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJNS2_IJPN5clang4DeclEPKvEEENS3_25LazyGenerationalUpdatePtrIPKS4_S5_XadL_ZNS3_17ExternalASTSource19CompleteRedeclChainESB_EEEEEEELi2EJEEE", !24, i64 0}
!43 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJNS2_IJPN5clang4DeclEPKvEEENS3_25LazyGenerationalUpdatePtrIPKS4_S5_XadL_ZNS3_17ExternalASTSource19CompleteRedeclChainESB_EEEEEEELi1EJSD_EEE", !42, i64 0}
!44 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJNS2_IJPN5clang4DeclEPKvEEENS3_25LazyGenerationalUpdatePtrIPKS4_S5_XadL_ZNS3_17ExternalASTSource19CompleteRedeclChainESB_EEEEEEELi0EJS8_SD_EEE", !43, i64 0}
!45 = !{!"_ZTSN4llvm12PointerUnionIJNS0_IJPN5clang4DeclEPKvEEENS1_25LazyGenerationalUpdatePtrIPKS2_S3_XadL_ZNS1_17ExternalASTSource19CompleteRedeclChainES9_EEEEEEE", !44, i64 0}
!46 = !{!"_ZTSN5clang12RedeclarableINS_12FunctionDeclEE8DeclLinkE", !45, i64 0}
!47 = !{!"p1 _ZTSN5clang12FunctionDeclE", !8, i64 0}
!48 = !{!"_ZTSN5clang12RedeclarableINS_12FunctionDeclEEE", !46, i64 0, !47, i64 8}
!49 = !{!"any p2 pointer", !8, i64 0}
!50 = !{!"p2 _ZTSN5clang11ParmVarDeclE", !49, i64 0}
!51 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi4EJEEE", !24, i64 0}
!52 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi3EJSB_EEE", !51, i64 0}
!53 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi2EJS9_SB_EEE", !52, i64 0}
!54 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi1EJS7_S9_SB_EEE", !53, i64 0}
!55 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPN5clang9NamedDeclEPNS3_24MemberSpecializationInfoEPNS3_34FunctionTemplateSpecializationInfoEPNS3_43DependentFunctionTemplateSpecializationInfoEEEELi0EJS5_S7_S9_SB_EEE", !54, i64 0}
!56 = !{!"_ZTSN4llvm12PointerUnionIJPN5clang9NamedDeclEPNS1_24MemberSpecializationInfoEPNS1_34FunctionTemplateSpecializationInfoEPNS1_43DependentFunctionTemplateSpecializationInfoEEEE", !55, i64 0}
!57 = !{!"_ZTSN5clang18DeclarationNameLocE", !4, i64 0}
!58 = !{!"_ZTSN5clang12FunctionDeclE", !38, i64 0, !41, i64 72, !48, i64 104, !50, i64 120, !4, i64 128, !5, i64 136, !21, i64 140, !21, i64 144, !56, i64 152, !57, i64 160}
!59 = !{!58, !50, i64 120}
!60 = !{!"p1 _ZTSN5clang11ParmVarDeclE", !8, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"p1 _ZTSN5clang4ExprE", !8, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = distinct !{null, null}
!66 = distinct !{!66, !64}
!67 = !{!"_ZTSN5clang8CallExprE", !20, i64 0, !5, i64 16, !21, i64 20}
!68 = !{!67, !5, i64 16}
!69 = distinct !{null, null}
!70 = distinct !{!70, !64, !77}
!71 = distinct !{!71, !64}
!72 = !{!"p1 _ZTSN5clang18CXXConstructorDeclE", !8, i64 0}
!73 = !{!"_ZTSN5clang11SourceRangeE", !21, i64 0, !21, i64 4}
!74 = !{!"_ZTSN5clang16CXXConstructExprE", !20, i64 0, !72, i64 16, !73, i64 24, !5, i64 32}
!75 = !{!74, !5, i64 32}
!76 = !{!74, !72, i64 16}
!77 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
