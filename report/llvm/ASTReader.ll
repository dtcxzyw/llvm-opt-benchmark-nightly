Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReader?download=true
inline.NumInlined: 33820
inline.NumDeleted: 13736
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN5clang15OMPClauseReader20VisitOMPLinearClauseEPNS_15OMPLinearClauseE:bb.a

.lr.ph.preheader:                                 ; preds = %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit.thread, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit
  %.not72119 = phi i1 [ true, %_ZN4llvm15SmallVectorImplIPN5clang4ExprEE7reserveEm.exit ], [ false, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ]
  %i.ee = load ptr, ptr %2, align 8, !tbaa !872   ; 3 uses
  %i.ef = load i32, ptr %i.ea, align 8, !tbaa !873 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.eh = icmp ugt i32 %i.ef, 1
  br i1 %i.eh, label %bb.k, label %bb.l, !prof !1146

bb.k:                                             ; preds = %._crit_edge
  %i.ei = zext i32 %i.ef to i64
  %.idx.i.i = shl nuw nsw i64 %i.ei, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr align 8 %i.ee, i64 %.idx.i.i, i1 false)
  br label %_ZN5clang16OMPVarListClauseINS_15OMPLinearClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ej = icmp eq i32 %i.ef, 1
  br i1 %i.ej, label %bb.m, label %_ZN5clang16OMPVarListClauseINS_15OMPLinearClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit

bb.m:                                             ; preds = %bb.l
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !3075
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !3075
  br label %_ZN5clang16OMPVarListClauseINS_15OMPLinearClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit

_ZN5clang16OMPVarListClauseINS_15OMPLinearClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit: ; preds = %bb.k, %bb.l, %bb.m
  store i32 0, ptr %i.ea, align 8, !tbaa !873
  br i1 %.not72119, label %._crit_edge77.thread, label %.lr.ph76

._crit_edge77.thread:                             ; preds = %_ZN5clang16OMPVarListClauseINS_15OMPLinearClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit
  call void @_ZN5clang15OMPLinearClause11setPrivatesEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.ee, i64 0) #36
  store i32 0, ptr %i.ea, align 8, !tbaa !873
  %i.el = load ptr, ptr %2, align 8, !tbaa !872
  call void @_ZN5clang15OMPLinearClause8setInitsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.el, i64 0) #36
  store i32 0, ptr %i.ea, align 8, !tbaa !873
  %i.em = load ptr, ptr %2, align 8, !tbaa !872
  call void @_ZN5clang15OMPLinearClause10setUpdatesEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.em, i64 0) #36
  store i32 0, ptr %i.ea, align 8, !tbaa !873
  br label %._crit_edge92

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit
  %.03973 = phi i32 [ %i.ey, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit ], [ 0, %.lr.ph.preheader ]
  %i.en = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !2170
  %i.eq = call noundef ptr @_ZN5clang9ASTReader11ReadSubExprEv(ptr noundef nonnull align 8 dereferenceable(16376) %i.ep) #36 ; 2 uses
  %i.er = load i32, ptr %i.ea, align 8, !tbaa !873 ; 2 uses
  %i.es = load i32, ptr %i.eb, align 4, !tbaa !874
  %.not.i = icmp ult i32 %i.er, %i.es
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !1146

bb.n:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.eq)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

bb.o:                                             ; preds = %.lr.ph
  %i.et = zext i32 %i.er to i64
  %i.eu = load ptr, ptr %2, align 8, !tbaa !872
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.et
  store ptr %i.eq, ptr %i.ev, align 1
  %i.ew = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.ex = add i32 %i.ew, 1
  store i32 %i.ex, ptr %i.ea, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit: ; preds = %bb.n, %bb.o
  %i.ey = add nuw i32 %.03973, 1                  ; 2 uses
  %.not = icmp eq i32 %i.ey, %i.dy
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6427

._crit_edge77:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit53
  %.pre = load ptr, ptr %2, align 8, !tbaa !872
  %.pre98 = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.ez = zext i32 %.pre98 to i64
  call void @_ZN5clang15OMPLinearClause11setPrivatesEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %.pre, i64 %i.ez) #36
  store i32 0, ptr %i.ea, align 8, !tbaa !873
  br label %.lr.ph81

.lr.ph76:                                         ; preds = %_ZN5clang16OMPVarListClauseINS_15OMPLinearClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit53
  %.03875 = phi i32 [ %i.fl, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit53 ], [ 0, %_ZN5clang16OMPVarListClauseINS_15OMPLinearClauseEE10setVarRefsEN4llvm8ArrayRefIPNS_4ExprEEE.exit ]
  %i.fa = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !2170
  %i.fd = call noundef ptr @_ZN5clang9ASTReader11ReadSubExprEv(ptr noundef nonnull align 8 dereferenceable(16376) %i.fc) #36 ; 2 uses
  %i.fe = load i32, ptr %i.ea, align 8, !tbaa !873 ; 2 uses
  %i.ff = load i32, ptr %i.eb, align 4, !tbaa !874
  %.not.i52 = icmp ult i32 %i.fe, %i.ff
  br i1 %.not.i52, label %bb.q, label %bb.p, !prof !1146

bb.p:                                             ; preds = %.lr.ph76
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.fd)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit53

bb.q:                                             ; preds = %.lr.ph76
  %i.fg = zext i32 %i.fe to i64
  %i.fh = load ptr, ptr %2, align 8, !tbaa !872
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fg
  store ptr %i.fd, ptr %i.fi, align 1
  %i.fj = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr %i.ea, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit53

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit53: ; preds = %bb.p, %bb.q
  %i.fl = add nuw i32 %.03875, 1                  ; 2 uses
  %.not41 = icmp eq i32 %i.fl, %i.dy
  br i1 %.not41, label %._crit_edge77, label %.lr.ph76, !llvm.loop !6428

._crit_edge82:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55
  %.pre99 = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.fm = zext i32 %.pre99 to i64
  %i.fn = load ptr, ptr %2, align 8, !tbaa !872
  call void @_ZN5clang15OMPLinearClause8setInitsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.fn, i64 %i.fm) #36
  store i32 0, ptr %i.ea, align 8, !tbaa !873
  br label %.lr.ph86

.lr.ph81:                                         ; preds = %._crit_edge77, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55
  %.03779 = phi i32 [ %i.fz, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55 ], [ 0, %._crit_edge77 ]
  %i.fo = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !2170
  %i.fr = call noundef ptr @_ZN5clang9ASTReader11ReadSubExprEv(ptr noundef nonnull align 8 dereferenceable(16376) %i.fq) #36 ; 2 uses
  %i.fs = load i32, ptr %i.ea, align 8, !tbaa !873 ; 2 uses
  %i.ft = load i32, ptr %i.eb, align 4, !tbaa !874
  %.not.i54 = icmp ult i32 %i.fs, %i.ft
  br i1 %.not.i54, label %bb.s, label %bb.r, !prof !1146

bb.r:                                             ; preds = %.lr.ph81
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.fr)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55

bb.s:                                             ; preds = %.lr.ph81
  %i.fu = zext i32 %i.fs to i64
  %i.fv = load ptr, ptr %2, align 8, !tbaa !872
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fu
  store ptr %i.fr, ptr %i.fw, align 1
  %i.fx = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.fy = add i32 %i.fx, 1
  store i32 %i.fy, ptr %i.ea, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit55: ; preds = %bb.r, %bb.s
  %i.fz = add nuw i32 %.03779, 1                  ; 2 uses
  %.not42 = icmp eq i32 %i.fz, %i.dy
  br i1 %.not42, label %._crit_edge82, label %.lr.ph81, !llvm.loop !6429

._crit_edge87:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57
  %.pre100 = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.ga = zext i32 %.pre100 to i64
  %i.gb = load ptr, ptr %2, align 8, !tbaa !872
  call void @_ZN5clang15OMPLinearClause10setUpdatesEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.gb, i64 %i.ga) #36
  store i32 0, ptr %i.ea, align 8, !tbaa !873
  br label %.lr.ph91

.lr.ph86:                                         ; preds = %._crit_edge82, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57
  %.03684 = phi i32 [ %i.gn, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57 ], [ 0, %._crit_edge82 ]
  %i.gc = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !2170
  %i.gf = call noundef ptr @_ZN5clang9ASTReader11ReadSubExprEv(ptr noundef nonnull align 8 dereferenceable(16376) %i.ge) #36 ; 2 uses
  %i.gg = load i32, ptr %i.ea, align 8, !tbaa !873 ; 2 uses
  %i.gh = load i32, ptr %i.eb, align 4, !tbaa !874
  %.not.i56 = icmp ult i32 %i.gg, %i.gh
  br i1 %.not.i56, label %bb.u, label %bb.t, !prof !1146

bb.t:                                             ; preds = %.lr.ph86
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.gf)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57

bb.u:                                             ; preds = %.lr.ph86
  %i.gi = zext i32 %i.gg to i64
  %i.gj = load ptr, ptr %2, align 8, !tbaa !872
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gi
  store ptr %i.gf, ptr %i.gk, align 1
  %i.gl = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.gm = add i32 %i.gl, 1
  store i32 %i.gm, ptr %i.ea, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit57: ; preds = %bb.t, %bb.u
  %i.gn = add nuw i32 %.03684, 1                  ; 2 uses
  %.not43 = icmp eq i32 %i.gn, %i.dy
  br i1 %.not43, label %._crit_edge87, label %.lr.ph86, !llvm.loop !6430

._crit_edge92.loopexit:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit59
  %.pre101 = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.go = zext i32 %.pre101 to i64
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %._crit_edge77.thread, %._crit_edge92.loopexit
  %i.gp = phi i64 [ %i.go, %._crit_edge92.loopexit ], [ 0, %._crit_edge77.thread ]
  %i.gq = load ptr, ptr %2, align 8, !tbaa !872
  call void @_ZN5clang15OMPLinearClause9setFinalsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.gq, i64 %i.gp) #36
  %i.gr = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !2170
  %i.gu = call noundef ptr @_ZN5clang9ASTReader11ReadSubExprEv(ptr noundef nonnull align 8 dereferenceable(16376) %i.gt) #36
  %i.gv = load i32, ptr %i.dx, align 8, !tbaa !6437
  %i.gw = zext i32 %i.gv to i64                   ; 5 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gw
  %4 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.gw
  %5 = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gw
  %6 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.gw
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.gw
  store ptr %i.gu, ptr %i.gx, align 8, !tbaa !3075
  %i.gy = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !2170
  %i.hb = call noundef ptr @_ZN5clang9ASTReader11ReadSubExprEv(ptr noundef nonnull align 8 dereferenceable(16376) %i.ha) #36
  %i.hc = load i32, ptr %i.dx, align 8, !tbaa !6437
  %i.hd = zext i32 %i.hc to i64                   ; 5 uses
  %7 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.hd
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.hd
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.hd
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.hd
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 72
  store ptr %i.hb, ptr %i.hf, align 8, !tbaa !3075
  store i32 0, ptr %i.ea, align 8, !tbaa !873
  %.not4593 = icmp eq i32 %i.dy, -1
  br i1 %.not4593, label %._crit_edge97, label %.lr.ph96

.lr.ph91:                                         ; preds = %._crit_edge87, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit59
  %.03589 = phi i32 [ %i.hr, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit59 ], [ 0, %._crit_edge87 ]
  %i.hg = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !2170
  %i.hj = call noundef ptr @_ZN5clang9ASTReader11ReadSubExprEv(ptr noundef nonnull align 8 dereferenceable(16376) %i.hi) #36 ; 2 uses
  %i.hk = load i32, ptr %i.ea, align 8, !tbaa !873 ; 2 uses
  %i.hl = load i32, ptr %i.eb, align 4, !tbaa !874
  %.not.i58 = icmp ult i32 %i.hk, %i.hl
  br i1 %.not.i58, label %bb.w, label %bb.v, !prof !1146

bb.v:                                             ; preds = %.lr.ph91
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.hj)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit59

bb.w:                                             ; preds = %.lr.ph91
  %i.hm = zext i32 %i.hk to i64
  %i.hn = load ptr, ptr %2, align 8, !tbaa !872
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hm
  store ptr %i.hj, ptr %i.ho, align 1
  %i.hp = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ea, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit59

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit59: ; preds = %bb.v, %bb.w
  %i.hr = add nuw i32 %.03589, 1                  ; 2 uses
  %.not44 = icmp eq i32 %i.hr, %i.dy
  br i1 %.not44, label %._crit_edge92.loopexit, label %.lr.ph91, !llvm.loop !6431

._crit_edge97.loopexit:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit61
  %.pre102 = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.hs = zext i32 %.pre102 to i64
  br label %._crit_edge97

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit, %._crit_edge92
  %i.ht = phi i64 [ %i.hs, %._crit_edge97.loopexit ], [ 0, %._crit_edge92 ]
  %i.hu = load ptr, ptr %2, align 8, !tbaa !872
  call void @_ZN5clang15OMPLinearClause12setUsedExprsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr %i.hu, i64 %i.ht) #36
  %i.hv = load ptr, ptr %2, align 8, !tbaa !872   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.dz
  br i1 %i.hw, label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge97
  call void @free(ptr noundef %i.hv) #36
  br label %_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang4ExprELj16EED2Ev.exit: ; preds = %._crit_edge97, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  ret void

.lr.ph96:                                         ; preds = %._crit_edge92, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit61
  %.094 = phi i32 [ %i.ii, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit61 ], [ 0, %._crit_edge92 ] ; 2 uses
  %i.hx = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !2170
  %i.ia = call noundef ptr @_ZN5clang9ASTReader11ReadSubExprEv(ptr noundef nonnull align 8 dereferenceable(16376) %i.hz) #36 ; 2 uses
  %i.ib = load i32, ptr %i.ea, align 8, !tbaa !873 ; 2 uses
  %i.ic = load i32, ptr %i.eb, align 4, !tbaa !874
  %.not.i60 = icmp ult i32 %i.ib, %i.ic
  br i1 %.not.i60, label %bb.z, label %bb.y, !prof !1146

bb.y:                                             ; preds = %.lr.ph96
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ia)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit61

bb.z:                                             ; preds = %.lr.ph96
  %i.id = zext i32 %i.ib to i64
  %i.ie = load ptr, ptr %2, align 8, !tbaa !872
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.id
  store ptr %i.ia, ptr %i.if, align 1
  %i.ig = load i32, ptr %i.ea, align 8, !tbaa !873
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.ea, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit61

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ExprELb1EE9push_backES3_.exit61: ; preds = %bb.y, %bb.z
  %i.ii = add nuw i32 %.094, 1
  %.not45 = icmp eq i32 %.094, %i.dy
  br i1 %.not45, label %._crit_edge97.loopexit, label %.lr.ph96, !llvm.loop !6432
}

declare void @_ZN5clang15OMPLinearClause11setPrivatesEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #4

declare void @_ZN5clang15OMPLinearClause8setInitsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #4

declare void @_ZN5clang15OMPLinearClause10setUpdatesEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #4

declare void @_ZN5clang15OMPLinearClause9setFinalsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #4

declare void @_ZN5clang15OMPLinearClause12setUsedExprsEN4llvm8ArrayRefIPNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang15OMPClauseReader21VisitOMPAlignedClauseEPNS_16OMPAlignedClauseE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef captures(none) initializes((12, 16), (20, 24)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.3274", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2170
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2171 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !952  ; 2 uses
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !952
  %i.j = zext i32 %i.h to i64
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !872
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 912
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1047
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.c, ptr noundef nonnull align 8 dereferenceable(3832) %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.m, 32 ; 2 uses
  %i.q = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i, 0
  br i1 %i.q, label %_ZN5clang15ASTRecordReader18readSourceLocationEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 3688
  %i.s = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i, 4294967295
  %i.t = and i64 %i.s, 4294967295
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !872
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !887
  br label %_ZN5clang15ASTRecordReader18readSourceLocationEv.exit

_ZN5clang15ASTRecordReader18readSourceLocationEv.exit: ; preds = %bb.c, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ %i.e, %bb.c ]
  %i.y = trunc i64 %i.m to i32                    ; 3 uses
  %i.z = tail call i32 @llvm.fshl.i32(i32 %i.y, i32 %i.y, i32 31)
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1712
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = add i32 %i.z, -2
  %i.ae = add i32 %i.ad, %i.ac
  %.sroa.0.0.i.i.i.i = select i1 %i.aa, i32 0, i32 %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.sroa.0.0.i.i.i.i, ptr %i.af, align 4, !tbaa !952
  %i.ag = load ptr, ptr %0, align 8, !tbaa !3117, !nonnull !177, !align !178 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2170
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2171 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !952 ; 2 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !952
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !872
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !167 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 912
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1047
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5clang15ASTRecordReader18readSourceLocationEv.exit
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %i.ai, ptr noundef nonnull align 8 dereferenceable(3832) %i.ak)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5clang15ASTRecordReader18readSourceLocationEv.exit
  %.sroa.4.0.extract.shift.i.i.i10 = lshr i64 %i.as, 32 ; 2 uses
  %i.aw = icmp eq i64 %.sroa.4.0.extract.shift.i.i.i10, 0
  br i1 %i.aw, label %_ZN5clang15ASTRecordReader18readSourceLocationEv.exit12, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 3688
  %i.ay = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i.i10, 4294967295
  %i.az = and i64 %i.ay, 4294967295
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !872
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !887
  br label %_ZN5clang15ASTRecordReader18readSourceLocationEv.exit12

_ZN5clang15ASTRecordReader18readSourceLocationEv.exit12: ; preds = %bb.f, %bb.g
  %i.bd = phi ptr [ %i.bc, %bb.g ], [ %i.ak, %bb.f ]
  %i.be = trunc i64 %i.as to i32                  ; 3 uses
  %i.bf = tail call i32 @llvm.fshl.i32(i32 %i.be, i32 %i.be, i32 31)
  %i.bg = icmp eq i32 %i.be, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 1712
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = add i32 %i.bf, -2
  %i.bk = add i32 %i.bj, %i.bi
  %.sroa.0.0.i.i.i.i11 = select i1 %i.bg, i32 0, i32 %i.bk
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %.sroa.0.0.i.i.i.i11, ptr %i.bl, align 4, !tbaa !952
end_hunk_0
