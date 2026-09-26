Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTWriterStmt?download=true
inline.NumInlined: 5562
inline.NumDeleted: 2881
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang13ASTStmtWriter21VisitCXXConstructExprEPNS_16CXXConstructExprE:bb.a
  br i1 %.not.i.i19, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 noundef %i.q)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit20

bb.e:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  %i.w = zext i32 %i.t to i64
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store i64 %i.q, ptr %i.y, align 1
  %i.z = load i32, ptr %i.s, align 8, !tbaa !40
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.s, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit20

_ZN5clang15ASTRecordWriter9push_backEm.exit20:    ; preds = %bb.d, %bb.e
  %i.ab = load i32, ptr %1, align 8
  %i.ac = lshr i32 %i.ab, 20
  %.lobit35 = and i32 %i.ac, 1
  %i.ad = zext nneg i32 %.lobit35 to i64          ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !35  ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !41
  %.not.i.i21 = icmp ult i32 %i.ag, %i.ai
  br i1 %.not.i.i21, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit20
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.ad)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit22

bb.g:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit20
  %i.aj = zext i32 %i.ag to i64
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  store i64 %i.ad, ptr %i.al, align 1
  %i.am = load i32, ptr %i.af, align 8, !tbaa !40
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.af, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit22

_ZN5clang15ASTRecordWriter9push_backEm.exit22:    ; preds = %bb.f, %bb.g
  %i.ao = load i32, ptr %1, align 8
  %i.ap = lshr i32 %i.ao, 21
  %.lobit36 = and i32 %i.ap, 1
  %i.aq = zext nneg i32 %.lobit36 to i64          ; 2 uses
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !35  ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !41
  %.not.i.i23 = icmp ult i32 %i.at, %i.av
  br i1 %.not.i.i23, label %bb.i, label %bb.h, !prof !42

bb.h:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit22
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 noundef %i.aq)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit24

bb.i:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit22
  %i.aw = zext i32 %i.at to i64
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  store i64 %i.aq, ptr %i.ay, align 1
  %i.az = load i32, ptr %i.as, align 8, !tbaa !40
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.as, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit24

_ZN5clang15ASTRecordWriter9push_backEm.exit24:    ; preds = %bb.h, %bb.i
  %i.bb = load i32, ptr %1, align 8
  %i.bc = lshr i32 %i.bb, 22
  %.lobit37 = and i32 %i.bc, 1
  %i.bd = zext nneg i32 %.lobit37 to i64          ; 2 uses
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !35  ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41
  %.not.i.i25 = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i.i25, label %bb.k, label %bb.j, !prof !42

bb.j:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit24
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 noundef %i.bd)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit26

bb.k:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit24
  %i.bj = zext i32 %i.bg to i64
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  store i64 %i.bd, ptr %i.bl, align 1
  %i.bm = load i32, ptr %i.bf, align 8, !tbaa !40
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit26

_ZN5clang15ASTRecordWriter9push_backEm.exit26:    ; preds = %bb.j, %bb.k
  %i.bo = load i32, ptr %1, align 8
  %i.bp = lshr i32 %i.bo, 23
  %.lobit38 = and i32 %i.bp, 1
  %i.bq = zext nneg i32 %.lobit38 to i64          ; 2 uses
  %i.br = load ptr, ptr %i.d, align 8, !tbaa !35  ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !40 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !41
  %.not.i.i27 = icmp ult i32 %i.bt, %i.bv
  br i1 %.not.i.i27, label %bb.m, label %bb.l, !prof !42

bb.l:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit26
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 noundef %i.bq)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit28

bb.m:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit26
  %i.bw = zext i32 %i.bt to i64
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  store i64 %i.bq, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.bs, align 8, !tbaa !40
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bs, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit28

_ZN5clang15ASTRecordWriter9push_backEm.exit28:    ; preds = %bb.l, %bb.m
  %i.cb = load i32, ptr %1, align 8
  %i.cc = lshr i32 %i.cb, 24
  %i.cd = and i32 %i.cc, 7
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !35  ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !41
  %.not.i.i29 = icmp ult i32 %i.ch, %i.cj
  br i1 %.not.i.i29, label %bb.o, label %bb.n, !prof !42

bb.n:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit28
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 noundef %i.ce)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit30

bb.o:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit28
  %i.ck = zext i32 %i.ch to i64
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !43
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  store i64 %i.ce, ptr %i.cm, align 1
  %i.cn = load i32, ptr %i.cg, align 8, !tbaa !40
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.cg, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit30

_ZN5clang15ASTRecordWriter9push_backEm.exit30:    ; preds = %bb.n, %bb.o
  %i.cp = load i32, ptr %1, align 8
  %i.cq = lshr i32 %i.cp, 27
  %.lobit39 = and i32 %i.cq, 1
  %i.cr = zext nneg i32 %.lobit39 to i64          ; 2 uses
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !35  ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !41
  %.not.i.i31 = icmp ult i32 %i.cu, %i.cw
  br i1 %.not.i.i31, label %bb.q, label %bb.p, !prof !42

bb.p:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit30
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i64 noundef %i.cr)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit32

bb.q:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit30
  %i.cx = zext i32 %i.cu to i64
  %i.cy = load ptr, ptr %i.cs, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store i64 %i.cr, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.ct, align 8, !tbaa !40
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.ct, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit32

_ZN5clang15ASTRecordWriter9push_backEm.exit32:    ; preds = %bb.p, %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.dc, align 4, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !34
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.de, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.df) #14
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !762
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !34
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter10AddDeclRefEPKNS_4DeclERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.di, ptr noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #14
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i33 = load i64, ptr %i.dk, align 8, !tbaa !15
  %i.dl = load ptr, ptr %i.dd, align 8, !tbaa !34
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter14AddSourceRangeENS_11SourceRangeERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.dl, i64 %.sroa.0.0.copyload.i33, ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #14
  %i.dn = load i32, ptr %i.a, align 8, !tbaa !761 ; 2 uses
  %.not40 = icmp eq i32 %i.dn, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit32
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dr = zext i32 %i.dn to i64
  br label %bb.r

._crit_edge:                                      ; preds = %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit, %_ZN5clang15ASTRecordWriter9push_backEm.exit32
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 251, ptr %i.ds, align 8, !tbaa !54
  ret void

bb.r:                                             ; preds = %.lr.ph, %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit ] ; 2 uses
  %i.dt = load i16, ptr %1, align 8
  %i.du = and i16 %i.dt, 511
  %.not.i.i.i = icmp eq i16 %i.du, 118            ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i, ptr %1, ptr null
  %i.dv = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 48
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %i.dv, ptr %2
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i.i, i64 %indvars.iv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !264 ; 2 uses
  %i.dy = load i32, ptr %i.dp, align 8, !tbaa !40 ; 2 uses
  %i.dz = load i32, ptr %i.dq, align 4, !tbaa !41
  %.not.i.i34 = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i.i34, label %bb.t, label %bb.s, !prof !42

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4StmtELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef %i.dx)
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

bb.t:                                             ; preds = %bb.r
  %i.ea = zext i32 %i.dy to i64
  %i.eb = load ptr, ptr %i.do, align 8, !tbaa !43
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  store ptr %i.dx, ptr %i.ec, align 1
  %i.ed = load i32, ptr %i.dp, align 8, !tbaa !40
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.dp, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit

_ZN5clang15ASTRecordWriter7AddStmtEPNS_4StmtE.exit: ; preds = %bb.s, %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.dr
  br i1 %.not, label %._crit_edge, label %bb.r, !llvm.loop !760
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtWriter29VisitCXXInheritedCtorInitExprEPNS_24CXXInheritedCtorInitExprE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(256) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTStmtWriter9VisitExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !764
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter10AddDeclRefEPKNS_4DeclERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.d, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 8, !tbaa !15
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.h, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(16) %i.i) #14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i64                 ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !35   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.p, %i.r
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %i.m)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = zext i32 %i.p to i64
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  store i64 %i.m, ptr %i.u, align 1
  %i.v = load i32, ptr %i.o, align 8, !tbaa !40
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.o, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

_ZN5clang15ASTRecordWriter9push_backEm.exit:      ; preds = %bb.b, %bb.c
  %i.x = load i8, ptr %i.j, align 4
  %i.y = lshr i8 %i.x, 1
  %.lobit = and i8 %i.y, 1
  %i.z = zext nneg i8 %.lobit to i64              ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !35  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !41
  %.not.i.i6 = icmp ult i32 %i.ac, %i.ae
  br i1 %.not.i.i6, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 noundef %i.z)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit7

bb.e:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  %i.af = zext i32 %i.ac to i64
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store i64 %i.z, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit7

_ZN5clang15ASTRecordWriter9push_backEm.exit7:     ; preds = %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 252, ptr %i.ak, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtWriter27VisitCXXTemporaryObjectExprEPNS_22CXXTemporaryObjectExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTStmtWriter21VisitCXXConstructExprEPNS_16CXXConstructExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !766
  tail call void @_ZN5clang15ASTRecordWriter17AddTypeSourceInfoEPNS_14TypeSourceInfoE(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 253, ptr %i.d, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang13ASTStmtWriter15VisitLambdaExprEPNS_10LambdaExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang13ASTStmtWriter9VisitExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = zext i16 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %.not.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.c)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  store i64 %i.c, ptr %i.l, align 1
  %i.m = load i32, ptr %i.f, align 8, !tbaa !40
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit

_ZN5clang15ASTRecordWriter9push_backEm.exit:      ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.05.0.copyload = load i64, ptr %i.o, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter14AddSourceRangeENS_11SourceRangeERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.q, i64 %.sroa.05.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.r) #14
  %i.s = load i32, ptr %1, align 8
  %i.t = lshr i32 %i.s, 19
  %i.u = and i32 %i.t, 3
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !35   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !40   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41
  %.not.i.i17 = icmp ult i32 %i.y, %i.aa
  br i1 %.not.i.i17, label %bb.e, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef %i.v)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit18

bb.e:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit
  %i.ab = zext i32 %i.y to i64
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  store i64 %i.v, ptr %i.ad, align 1
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !40
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.x, align 8, !tbaa !40
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit18

_ZN5clang15ASTRecordWriter9push_backEm.exit18:    ; preds = %bb.d, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.04.0.copyload = load i32, ptr %i.ag, align 8, !tbaa !15
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @_ZN5clang9ASTWriter17AddSourceLocationENS_14SourceLocationERN4llvm15SmallVectorImplImEE(ptr noundef nonnull align 8 dereferenceable(3772) %i.ah, i32 %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #14
  %i.aj = load i32, ptr %1, align 8
  %i.ak = lshr i32 %i.aj, 21
  %i.al = and i32 %i.ak, 1
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !35  ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !41
  %.not.i.i19 = icmp ult i32 %i.ap, %i.ar
  br i1 %.not.i.i19, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit18
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 noundef %i.am)
  br label %_ZN5clang15ASTRecordWriter9push_backEm.exit20

bb.g:                                             ; preds = %_ZN5clang15ASTRecordWriter9push_backEm.exit18
end_hunk_0
