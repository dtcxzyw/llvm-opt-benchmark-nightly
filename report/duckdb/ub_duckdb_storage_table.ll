inline.NumInlined: 22010
inline.NumDeleted: 8913
begin_hunk_0_@_ZN6duckdbL21FilterSelectionSwitchIbEEvRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorERmNS_14ExpressionTypeE:bb.a

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i198
  %i.adv = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.ado
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !1916, !range !263, !noundef !70
  %i.adx = trunc nuw i8 %i.adw to i1
  %not..i.i.i203 = xor i1 %i.adx, true
  %i.ady = and i1 %1, %not..i.i.i203
  %i.adz = zext i1 %i.ady to i64
  br label %bb.x

bb.x:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i198
  %i.aea = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i198 ], [ %i.adz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202 ]
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %.024.i199
  store i32 %i.adk, ptr %i.aeb, align 4, !tbaa !3
  %i.aec = add i64 %i.aea, %.024.i199             ; 2 uses
  %i.aed = add nuw i64 %.01823.i200, 1            ; 2 uses
  %exitcond.not.i204 = icmp eq i64 %i.aed, %i.tk
  br i1 %exitcond.not.i204, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i198, !llvm.loop !1922

bb.y:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.aee = load ptr, ptr %i.d, align 8, !tbaa !91
  %.not.i236 = icmp eq ptr %i.aee, null
  %i.aef = load i64, ptr %3, align 8, !tbaa !24   ; 74 uses
  br i1 %.not.i236, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0)
          to label %.noexc262 unwind label %bb.e

.noexc262:                                        ; preds = %bb.z
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !1756 ; 18 uses
  %.not.i237 = icmp eq i64 %i.aef, 0
  br i1 %.not.i237, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %.noexc262
  %i.aei = load ptr, ptr %2, align 8, !tbaa !152  ; 33 uses
  %.not.i.i239 = icmp eq ptr %i.aei, null
  %i.aej = load ptr, ptr %0, align 8, !tbaa !1193
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !152 ; 9 uses
  %.not.i17.i240 = icmp eq ptr %i.aek, null       ; 2 uses
  %i.ael = load ptr, ptr %5, align 8, !tbaa !152  ; 44 uses
  br i1 %.not.i.i239, label %.lr.ph.split.us.i253, label %.lr.ph.split.i241

.lr.ph.split.us.i253:                             ; preds = %.lr.ph.i238
  br i1 %.not.i17.i240, label %.lr.ph.split.us.split.us.i258, label %.lr.ph.split.us.split.i254

.lr.ph.split.us.split.us.i258:                    ; preds = %.lr.ph.split.us.i253
  br i1 %1, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.sink.split, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader: ; preds = %.lr.ph.split.us.split.us.i258
  %i.aem = add i64 %i.aef, -1
  %xtraiter1611 = and i64 %i.aef, 3               ; 3 uses
  %i.aen = icmp ult i64 %i.aem, 3
  br i1 %i.aen, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader
  %unroll_iter1616 = and i64 %i.aef, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader.new
  %.020.us.us.i260 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader.new ], [ %i.afo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259 ] ; 2 uses
  %.01619.us.us.i261 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader.new ], [ %i.afp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259 ] ; 6 uses
  %niter1617 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259.preheader.new ], [ %niter1617.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259 ]
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %.01619.us.us.i261
  %i.aep = load i8, ptr %i.aeo, align 1, !range !263
  %i.aeq = zext nneg i8 %i.aep to i64
  %i.aer = trunc i64 %.01619.us.us.i261 to i32
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %.020.us.us.i260
  store i32 %i.aer, ptr %i.aes, align 4, !tbaa !3
  %i.aet = add i64 %.020.us.us.i260, %i.aeq       ; 2 uses
  %i.aeu = or disjoint i64 %.01619.us.us.i261, 1  ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aeu
  %i.aew = load i8, ptr %i.aev, align 1, !range !263
  %i.aex = zext nneg i8 %i.aew to i64
  %i.aey = trunc i64 %i.aeu to i32
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.aet
  store i32 %i.aey, ptr %i.aez, align 4, !tbaa !3
  %i.afa = add i64 %i.aet, %i.aex                 ; 2 uses
  %i.afb = or disjoint i64 %.01619.us.us.i261, 2  ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.afb
  %i.afd = load i8, ptr %i.afc, align 1, !range !263
  %i.afe = zext nneg i8 %i.afd to i64
  %i.aff = trunc i64 %i.afb to i32
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.afa
  store i32 %i.aff, ptr %i.afg, align 4, !tbaa !3
  %i.afh = add i64 %i.afa, %i.afe                 ; 2 uses
  %i.afi = or disjoint i64 %.01619.us.us.i261, 3  ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !range !263
  %i.afl = zext nneg i8 %i.afk to i64
  %i.afm = trunc i64 %i.afi to i32
  %i.afn = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.afh
  store i32 %i.afm, ptr %i.afn, align 4, !tbaa !3
  %i.afo = add i64 %i.afh, %i.afl                 ; 3 uses
  %i.afp = add nuw i64 %.01619.us.us.i261, 4      ; 2 uses
  %niter1617.next.3 = add i64 %niter1617, 4       ; 2 uses
  %niter1617.ncmp.3 = icmp eq i64 %niter1617.next.3, %unroll_iter1616
  br i1 %niter1617.ncmp.3, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.loopexit1343.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i259, !llvm.loop !1923

.lr.ph.split.us.split.i254:                       ; preds = %.lr.ph.split.us.i253
  br i1 %1, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.sink.split, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader: ; preds = %.lr.ph.split.us.split.i254
  %i.afq = add i64 %i.aef, -1
  %xtraiter1604 = and i64 %i.aef, 3               ; 3 uses
  %i.afr = icmp ult i64 %i.afq, 3
  br i1 %i.afr, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader
  %unroll_iter1609 = and i64 %i.aef, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader.new
  %.020.us.i256 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader.new ], [ %i.ahe, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255 ] ; 2 uses
  %.01619.us.i257 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader.new ], [ %i.ahf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255 ] ; 6 uses
  %niter1610 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255.preheader.new ], [ %niter1610.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255 ]
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %.01619.us.i257
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !3
  %i.afu = zext i32 %i.aft to i64
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.afu
  %i.afw = load i8, ptr %i.afv, align 1, !range !263
  %i.afx = zext nneg i8 %i.afw to i64
  %i.afy = trunc i64 %.01619.us.i257 to i32
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %.020.us.i256
  store i32 %i.afy, ptr %i.afz, align 4, !tbaa !3
  %i.aga = add i64 %.020.us.i256, %i.afx          ; 2 uses
  %i.agb = or disjoint i64 %.01619.us.i257, 1     ; 2 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !3
  %i.age = zext i32 %i.agd to i64
  %i.agf = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.age
  %i.agg = load i8, ptr %i.agf, align 1, !range !263
  %i.agh = zext nneg i8 %i.agg to i64
  %i.agi = trunc i64 %i.agb to i32
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.aga
  store i32 %i.agi, ptr %i.agj, align 4, !tbaa !3
  %i.agk = add i64 %i.aga, %i.agh                 ; 2 uses
  %i.agl = or disjoint i64 %.01619.us.i257, 2     ; 2 uses
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.agl
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !3
  %i.ago = zext i32 %i.agn to i64
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.ago
  %i.agq = load i8, ptr %i.agp, align 1, !range !263
  %i.agr = zext nneg i8 %i.agq to i64
  %i.ags = trunc i64 %i.agl to i32
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.agk
  store i32 %i.ags, ptr %i.agt, align 4, !tbaa !3
  %i.agu = add i64 %i.agk, %i.agr                 ; 2 uses
  %i.agv = or disjoint i64 %.01619.us.i257, 3     ; 2 uses
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.agv
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !3
  %i.agy = zext i32 %i.agx to i64
  %i.agz = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.agy
  %i.aha = load i8, ptr %i.agz, align 1, !range !263
  %i.ahb = zext nneg i8 %i.aha to i64
  %i.ahc = trunc i64 %i.agv to i32
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.agu
  store i32 %i.ahc, ptr %i.ahd, align 4, !tbaa !3
  %i.ahe = add i64 %i.agu, %i.ahb                 ; 3 uses
  %i.ahf = add nuw i64 %.01619.us.i257, 4         ; 2 uses
  %niter1610.next.3 = add i64 %niter1610, 4       ; 2 uses
  %niter1610.ncmp.3 = icmp eq i64 %niter1610.next.3, %unroll_iter1609
  br i1 %niter1610.ncmp.3, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.loopexit1345.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i255, !llvm.loop !1923

.lr.ph.split.i241:                                ; preds = %.lr.ph.i238
  br i1 %.not.i17.i240, label %.lr.ph.split.split.us.i249, label %.lr.ph.split.split.i242

.lr.ph.split.split.us.i249:                       ; preds = %.lr.ph.split.i241
  br i1 %1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader: ; preds = %.lr.ph.split.split.us.i249
  %i.ahg = add i64 %i.aef, -1
  %xtraiter1594 = and i64 %i.aef, 3               ; 3 uses
  %i.ahh = icmp ult i64 %i.ahg, 3
  br i1 %i.ahh, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader
  %unroll_iter1599 = and i64 %i.aef, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader: ; preds = %.lr.ph.split.split.us.i249
  %min.iters.check1259 = icmp ult i64 %i.aef, 12
  br i1 %min.iters.check1259, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347, label %vector.memcheck1252

vector.memcheck1252:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader
  %scevgep1253 = getelementptr i8, ptr %i.ael, i64 4
  %i.ahi = shl i64 %i.aef, 2
  %scevgep1254 = getelementptr i8, ptr %i.aei, i64 %i.ahi
  %bound01255 = icmp ult ptr %i.ael, %scevgep1254
  %bound11256 = icmp ult ptr %i.aei, %scevgep1253
  %found.conflict1257 = and i1 %bound01255, %bound11256
  br i1 %found.conflict1257, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347, label %vector.ph1260

vector.ph1260:                                    ; preds = %vector.memcheck1252
  %n.vec1262 = and i64 %i.aef, -8                 ; 3 uses
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1260
  %index1264 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1266, %vector.body1263 ] ; 2 uses
  %index.next1266 = add nuw i64 %index1264, 8     ; 2 uses
  %i.ahj = icmp eq i64 %index.next1266, %n.vec1262
  br i1 %i.ahj, label %middle.block1267, label %vector.body1263, !llvm.loop !1924

middle.block1267:                                 ; preds = %vector.body1263
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %index1264
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 28
  %10 = load i32, ptr %9, align 4, !tbaa !3, !alias.scope !1925
  store i32 %10, ptr %i.ael, align 4, !tbaa !3, !alias.scope !1928, !noalias !1925
  %cmp.n1268 = icmp eq i64 %i.aef, %n.vec1262
  br i1 %cmp.n1268, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347: ; preds = %vector.memcheck1252, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader, %middle.block1267
  %.01619.us23.us.i.ph = phi i64 [ 0, %vector.memcheck1252 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader ], [ %n.vec1262, %middle.block1267 ] ; 3 uses
  %xtraiter1601 = and i64 %i.aef, 7               ; 2 uses
  %lcmp.mod1602.not = icmp eq i64 %xtraiter1601, 0
  br i1 %lcmp.mod1602.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol
  %.01619.us23.us.i.prol = phi i64 [ %i.ahm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol ], [ %.01619.us23.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347 ] ; 2 uses
  %prol.iter1603 = phi i64 [ %prol.iter1603.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347 ]
  %i.ahk = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i.prol
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !3
  store i32 %i.ahl, ptr %i.ael, align 4, !tbaa !3
  %i.ahm = add nuw i64 %.01619.us23.us.i.prol, 1  ; 2 uses
  %prol.iter1603.next = add i64 %prol.iter1603, 1 ; 2 uses
  %prol.iter1603.cmp.not = icmp eq i64 %prol.iter1603.next, %xtraiter1601
  br i1 %prol.iter1603.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol, !llvm.loop !1930

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347
  %.01619.us23.us.i.unr = phi i64 [ %.01619.us23.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.preheader1347 ], [ %i.ahm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol ]
  %i.ahn = sub i64 %.01619.us23.us.i.ph, %i.aef
  %i.aho = icmp ugt i64 %i.ahn, -8
  br i1 %i.aho, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i
  %.01619.us23.us.i = phi i64 [ %i.aim, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i ], [ %.01619.us23.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i.prol.loopexit ] ; 9 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i
  %i.ahq = load i32, ptr %i.ahp, align 4, !tbaa !3
  store i32 %i.ahq, ptr %i.ael, align 4, !tbaa !3
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !3
  store i32 %i.aht, ptr %i.ael, align 4, !tbaa !3
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !3
  store i32 %i.ahw, ptr %i.ael, align 4, !tbaa !3
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 12
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !3
  store i32 %i.ahz, ptr %i.ael, align 4, !tbaa !3
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 16
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !3
  store i32 %i.aic, ptr %i.ael, align 4, !tbaa !3
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 20
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !3
  store i32 %i.aif, ptr %i.ael, align 4, !tbaa !3
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 24
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !3
  store i32 %i.aii, ptr %i.ael, align 4, !tbaa !3
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.us.i
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 28
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !3
  store i32 %i.ail, ptr %i.ael, align 4, !tbaa !3
  %i.aim = add nuw i64 %.01619.us23.us.i, 8       ; 2 uses
  %exitcond50.not.i.7 = icmp eq i64 %i.aim, %i.aef
  br i1 %exitcond50.not.i.7, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.us.i, !llvm.loop !1931

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader.new
  %.020.us22.i251 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader.new ], [ %i.ajv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250 ] ; 2 uses
  %.01619.us23.i252 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader.new ], [ %i.ajw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250 ] ; 5 uses
  %niter1600 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250.preheader.new ], [ %niter1600.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250 ]
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.i252
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !3 ; 2 uses
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aip
  %i.air = load i8, ptr %i.aiq, align 1, !range !263
  %i.ais = zext nneg i8 %i.air to i64
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %.020.us22.i251
  store i32 %i.aio, ptr %i.ait, align 4, !tbaa !3
  %i.aiu = add i64 %.020.us22.i251, %i.ais        ; 2 uses
  %i.aiv = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.i252
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 4
  %i.aix = load i32, ptr %i.aiw, align 4, !tbaa !3 ; 2 uses
  %i.aiy = zext i32 %i.aix to i64
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.aiy
  %i.aja = load i8, ptr %i.aiz, align 1, !range !263
  %i.ajb = zext nneg i8 %i.aja to i64
  %i.ajc = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.aiu
  store i32 %i.aix, ptr %i.ajc, align 4, !tbaa !3
  %i.ajd = add i64 %i.aiu, %i.ajb                 ; 2 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.i252
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 8
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !3 ; 2 uses
  %i.ajh = zext i32 %i.ajg to i64
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.ajh
  %i.ajj = load i8, ptr %i.aji, align 1, !range !263
  %i.ajk = zext nneg i8 %i.ajj to i64
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.ajd
  store i32 %i.ajg, ptr %i.ajl, align 4, !tbaa !3
  %i.ajm = add i64 %i.ajd, %i.ajk                 ; 2 uses
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us23.i252
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 12
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !3 ; 2 uses
  %i.ajq = zext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.ajq
  %i.ajs = load i8, ptr %i.ajr, align 1, !range !263
  %i.ajt = zext nneg i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.ajm
  store i32 %i.ajp, ptr %i.aju, align 4, !tbaa !3
  %i.ajv = add i64 %i.ajm, %i.ajt                 ; 3 uses
  %i.ajw = add nuw i64 %.01619.us23.i252, 4       ; 2 uses
  %niter1600.next.3 = add i64 %niter1600, 4       ; 2 uses
  %niter1600.ncmp.3 = icmp eq i64 %niter1600.next.3, %unroll_iter1599
  br i1 %niter1600.ncmp.3, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.loopexit1349.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us21.i250, !llvm.loop !1923

.lr.ph.split.split.i242:                          ; preds = %.lr.ph.split.i241
  br i1 %1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader: ; preds = %.lr.ph.split.split.i242
  %xtraiter1584 = and i64 %i.aef, 1
  %i.ajx = icmp eq i64 %i.aef, 1
  br i1 %i.ajx, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader
  %unroll_iter1589 = and i64 %i.aef, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader: ; preds = %.lr.ph.split.split.i242
  %min.iters.check1241 = icmp ult i64 %i.aef, 12
  br i1 %min.iters.check1241, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351, label %vector.memcheck1234

vector.memcheck1234:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader
  %scevgep1235 = getelementptr i8, ptr %i.ael, i64 4
  %i.ajy = shl i64 %i.aef, 2
  %scevgep1236 = getelementptr i8, ptr %i.aei, i64 %i.ajy
  %bound01237 = icmp ult ptr %i.ael, %scevgep1236
  %bound11238 = icmp ult ptr %i.aei, %scevgep1235
  %found.conflict1239 = and i1 %bound01237, %bound11238
  br i1 %found.conflict1239, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351, label %vector.ph1242

vector.ph1242:                                    ; preds = %vector.memcheck1234
  %n.vec1244 = and i64 %i.aef, -8                 ; 3 uses
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1242
  %index1246 = phi i64 [ 0, %vector.ph1242 ], [ %index.next1248, %vector.body1245 ] ; 2 uses
  %index.next1248 = add nuw i64 %index1246, 8     ; 2 uses
  %i.ajz = icmp eq i64 %index.next1248, %n.vec1244
  br i1 %i.ajz, label %middle.block1249, label %vector.body1245, !llvm.loop !1932

middle.block1249:                                 ; preds = %vector.body1245
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %index1246
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 28
  %13 = load i32, ptr %12, align 4, !tbaa !3, !alias.scope !1933
  store i32 %13, ptr %i.ael, align 4, !tbaa !3, !alias.scope !1936, !noalias !1933
  %cmp.n1250 = icmp eq i64 %i.aef, %n.vec1244
  br i1 %cmp.n1250, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351: ; preds = %vector.memcheck1234, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader, %middle.block1249
  %.01619.us29.i.ph = phi i64 [ 0, %vector.memcheck1234 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader ], [ %n.vec1244, %middle.block1249 ] ; 3 uses
  %xtraiter1591 = and i64 %i.aef, 7               ; 2 uses
  %lcmp.mod1592.not = icmp eq i64 %xtraiter1591, 0
  br i1 %lcmp.mod1592.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol
  %.01619.us29.i.prol = phi i64 [ %i.akc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol ], [ %.01619.us29.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351 ] ; 2 uses
  %prol.iter1593 = phi i64 [ %prol.iter1593.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351 ]
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i.prol
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !3
  store i32 %i.akb, ptr %i.ael, align 4, !tbaa !3
  %i.akc = add nuw i64 %.01619.us29.i.prol, 1     ; 2 uses
  %prol.iter1593.next = add i64 %prol.iter1593, 1 ; 2 uses
  %prol.iter1593.cmp.not = icmp eq i64 %prol.iter1593.next, %xtraiter1591
  br i1 %prol.iter1593.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol, !llvm.loop !1938

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351
  %.01619.us29.i.unr = phi i64 [ %.01619.us29.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.preheader1351 ], [ %i.akc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol ]
  %i.akd = sub i64 %.01619.us29.i.ph, %i.aef
  %i.ake = icmp ugt i64 %i.akd, -8
  br i1 %i.ake, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248
  %.01619.us29.i = phi i64 [ %i.alc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248 ], [ %.01619.us29.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248.prol.loopexit ] ; 9 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !3
  store i32 %i.akg, ptr %i.ael, align 4, !tbaa !3
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 4
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !3
  store i32 %i.akj, ptr %i.ael, align 4, !tbaa !3
  %i.akk = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !3
  store i32 %i.akm, ptr %i.ael, align 4, !tbaa !3
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 12
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !3
  store i32 %i.akp, ptr %i.ael, align 4, !tbaa !3
  %i.akq = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 16
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !3
  store i32 %i.aks, ptr %i.ael, align 4, !tbaa !3
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 20
  %i.akv = load i32, ptr %i.aku, align 4, !tbaa !3
  store i32 %i.akv, ptr %i.ael, align 4, !tbaa !3
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 24
  %i.aky = load i32, ptr %i.akx, align 4, !tbaa !3
  store i32 %i.aky, ptr %i.ael, align 4, !tbaa !3
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.us29.i
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 28
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !3
  store i32 %i.alb, ptr %i.ael, align 4, !tbaa !3
  %i.alc = add nuw i64 %.01619.us29.i, 8          ; 2 uses
  %exitcond48.not.i.7 = icmp eq i64 %i.alc, %i.aef
  br i1 %exitcond48.not.i.7, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i248, !llvm.loop !1939

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader.new
  %.020.i244 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader.new ], [ %i.alz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243 ] ; 2 uses
  %.01619.i245 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader.new ], [ %i.ama, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243 ] ; 3 uses
  %niter1590 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243.preheader.new ], [ %niter1590.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243 ]
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.i245
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !3 ; 2 uses
  %i.alf = zext i32 %i.ale to i64
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.alf
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !3
  %i.ali = zext i32 %i.alh to i64
  %i.alj = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.ali
  %i.alk = load i8, ptr %i.alj, align 1, !range !263
  %i.all = zext nneg i8 %i.alk to i64
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %.020.i244
  store i32 %i.ale, ptr %i.alm, align 4, !tbaa !3
  %i.aln = add i64 %.020.i244, %i.all             ; 2 uses
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %.01619.i245
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 4
  %i.alq = load i32, ptr %i.alp, align 4, !tbaa !3 ; 2 uses
  %i.alr = zext i32 %i.alq to i64
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.alr
  %i.alt = load i32, ptr %i.als, align 4, !tbaa !3
  %i.alu = zext i32 %i.alt to i64
  %i.alv = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.alu
  %i.alw = load i8, ptr %i.alv, align 1, !range !263
  %i.alx = zext nneg i8 %i.alw to i64
  %i.aly = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.aln
  store i32 %i.alq, ptr %i.aly, align 4, !tbaa !3
  %i.alz = add i64 %i.aln, %i.alx                 ; 3 uses
  %i.ama = add nuw i64 %.01619.i245, 2            ; 2 uses
  %niter1590.next.1 = add i64 %niter1590, 2       ; 2 uses
  %niter1590.ncmp.1 = icmp eq i64 %niter1590.next.1, %unroll_iter1589
  br i1 %niter1590.ncmp.1, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.loopexit1353.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i243, !llvm.loop !1923

bb.aa:                                            ; preds = %bb.y
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0)
          to label %.noexc299 unwind label %bb.e

.noexc299:                                        ; preds = %bb.aa
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !1756 ; 21 uses
  %.not68.i = icmp eq i64 %i.aef, 0
  br i1 %.not68.i, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %.lr.ph.i263

.lr.ph.i263:                                      ; preds = %.noexc299
  %i.amd = load ptr, ptr %2, align 8, !tbaa !152  ; 59 uses
  %.not.i.i264 = icmp eq ptr %i.amd, null         ; 2 uses
  %i.ame = load ptr, ptr %0, align 8, !tbaa !1193
  %i.amf = load ptr, ptr %i.ame, align 8, !tbaa !152 ; 11 uses
  %.not.i19.i265 = icmp eq ptr %i.amf, null       ; 4 uses
  %i.amg = load ptr, ptr %i.d, align 8, !tbaa !91 ; 4 uses
  %.not.i21.i266 = icmp eq ptr %i.amg, null
  %i.amh = load ptr, ptr %5, align 8, !tbaa !152  ; 71 uses
  br i1 %.not.i21.i266, label %.lr.ph.split.us.i286, label %.lr.ph.split.i267

.lr.ph.split.us.i286:                             ; preds = %.lr.ph.i263
  br i1 %.not.i.i264, label %.lr.ph.split.us.split.us.i291, label %.lr.ph.split.us.split.i287

.lr.ph.split.us.split.us.i291:                    ; preds = %.lr.ph.split.us.i286
  br i1 %.not.i19.i265, label %.lr.ph.split.us.split.us.split.us.i, label %.lr.ph.split.us.split.us.split.i

.lr.ph.split.us.split.us.split.us.i:              ; preds = %.lr.ph.split.us.split.us.i291
  br i1 %1, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.sink.split, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader: ; preds = %.lr.ph.split.us.split.us.split.us.i
  %i.ami = add i64 %i.aef, -1
  %xtraiter1577 = and i64 %i.aef, 3               ; 3 uses
  %i.amj = icmp ult i64 %i.ami, 3
  br i1 %i.amj, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader
  %unroll_iter1582 = and i64 %i.aef, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader.new
  %.024.us.us.us.i297 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader.new ], [ %i.ank, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296 ] ; 2 uses
  %.01823.us.us.us.i298 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader.new ], [ %i.anl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296 ] ; 6 uses
  %niter1583 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296.preheader.new ], [ %niter1583.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296 ]
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amc, i64 %.01823.us.us.us.i298
  %i.aml = load i8, ptr %i.amk, align 1, !range !263
  %i.amm = zext nneg i8 %i.aml to i64
  %i.amn = trunc i64 %.01823.us.us.us.i298 to i32
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %.024.us.us.us.i297
  store i32 %i.amn, ptr %i.amo, align 4, !tbaa !3
  %i.amp = add i64 %.024.us.us.us.i297, %i.amm    ; 2 uses
  %i.amq = or disjoint i64 %.01823.us.us.us.i298, 1 ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.amq
  %i.ams = load i8, ptr %i.amr, align 1, !range !263
  %i.amt = zext nneg i8 %i.ams to i64
  %i.amu = trunc i64 %i.amq to i32
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.amp
  store i32 %i.amu, ptr %i.amv, align 4, !tbaa !3
  %i.amw = add i64 %i.amp, %i.amt                 ; 2 uses
  %i.amx = or disjoint i64 %.01823.us.us.us.i298, 2 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.amx
  %i.amz = load i8, ptr %i.amy, align 1, !range !263
  %i.ana = zext nneg i8 %i.amz to i64
  %i.anb = trunc i64 %i.amx to i32
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.amw
  store i32 %i.anb, ptr %i.anc, align 4, !tbaa !3
  %i.and = add i64 %i.amw, %i.ana                 ; 2 uses
  %i.ane = or disjoint i64 %.01823.us.us.us.i298, 3 ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !range !263
  %i.anh = zext nneg i8 %i.ang to i64
  %i.ani = trunc i64 %i.ane to i32
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.and
  store i32 %i.ani, ptr %i.anj, align 4, !tbaa !3
  %i.ank = add i64 %i.and, %i.anh                 ; 3 uses
  %i.anl = add nuw i64 %.01823.us.us.us.i298, 4   ; 2 uses
  %niter1583.next.3 = add i64 %niter1583, 4       ; 2 uses
  %niter1583.ncmp.3 = icmp eq i64 %niter1583.next.3, %unroll_iter1582
  br i1 %niter1583.ncmp.3, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.loopexit1355.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i296, !llvm.loop !1940

.lr.ph.split.us.split.us.split.i:                 ; preds = %.lr.ph.split.us.split.us.i291
  br i1 %1, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.sink.split, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader: ; preds = %.lr.ph.split.us.split.us.split.i
  %i.anm = add i64 %i.aef, -1
  %xtraiter1570 = and i64 %i.aef, 3               ; 3 uses
  %i.ann = icmp ult i64 %i.anm, 3
  br i1 %i.ann, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader
  %unroll_iter1575 = and i64 %i.aef, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader.new
  %.024.us.us.i293 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader.new ], [ %i.apa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292 ] ; 2 uses
  %.01823.us.us.i294 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader.new ], [ %i.apb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292 ] ; 6 uses
  %niter1576 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292.preheader.new ], [ %niter1576.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292 ]
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %.01823.us.us.i294
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !3
  %i.anq = zext i32 %i.anp to i64
  %i.anr = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.anq
  %i.ans = load i8, ptr %i.anr, align 1, !range !263
  %i.ant = zext nneg i8 %i.ans to i64
  %i.anu = trunc i64 %.01823.us.us.i294 to i32
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %.024.us.us.i293
  store i32 %i.anu, ptr %i.anv, align 4, !tbaa !3
  %i.anw = add i64 %.024.us.us.i293, %i.ant       ; 2 uses
  %i.anx = or disjoint i64 %.01823.us.us.i294, 1  ; 2 uses
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %i.anx
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !3
  %i.aoa = zext i32 %i.anz to i64
  %i.aob = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.aoa
  %i.aoc = load i8, ptr %i.aob, align 1, !range !263
  %i.aod = zext nneg i8 %i.aoc to i64
  %i.aoe = trunc i64 %i.anx to i32
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.anw
  store i32 %i.aoe, ptr %i.aof, align 4, !tbaa !3
  %i.aog = add i64 %i.anw, %i.aod                 ; 2 uses
  %i.aoh = or disjoint i64 %.01823.us.us.i294, 2  ; 2 uses
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %i.aoh
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !3
  %i.aok = zext i32 %i.aoj to i64
  %i.aol = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.aok
  %i.aom = load i8, ptr %i.aol, align 1, !range !263
  %i.aon = zext nneg i8 %i.aom to i64
  %i.aoo = trunc i64 %i.aoh to i32
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.aog
  store i32 %i.aoo, ptr %i.aop, align 4, !tbaa !3
  %i.aoq = add i64 %i.aog, %i.aon                 ; 2 uses
  %i.aor = or disjoint i64 %.01823.us.us.i294, 3  ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %i.aor
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !3
  %i.aou = zext i32 %i.aot to i64
  %i.aov = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.aou
  %i.aow = load i8, ptr %i.aov, align 1, !range !263
  %i.aox = zext nneg i8 %i.aow to i64
  %i.aoy = trunc i64 %i.aor to i32
  %i.aoz = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.aoq
  store i32 %i.aoy, ptr %i.aoz, align 4, !tbaa !3
  %i.apa = add i64 %i.aoq, %i.aox                 ; 3 uses
  %i.apb = add nuw i64 %.01823.us.us.i294, 4      ; 2 uses
  %niter1576.next.3 = add i64 %niter1576, 4       ; 2 uses
  %niter1576.ncmp.3 = icmp eq i64 %niter1576.next.3, %unroll_iter1575
  br i1 %niter1576.ncmp.3, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.loopexit1357.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i292, !llvm.loop !1940

.lr.ph.split.us.split.i287:                       ; preds = %.lr.ph.split.us.i286
  br i1 %.not.i19.i265, label %.lr.ph.split.us.split.split.us.i, label %.lr.ph.split.us.split.split.i

.lr.ph.split.us.split.split.us.i:                 ; preds = %.lr.ph.split.us.split.i287
  br i1 %1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader: ; preds = %.lr.ph.split.us.split.split.us.i
  %i.apc = add i64 %i.aef, -1
  %xtraiter1561 = and i64 %i.aef, 3               ; 3 uses
  %i.apd = icmp ult i64 %i.apc, 3
  br i1 %i.apd, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader
  %unroll_iter1565 = and i64 %i.aef, -4
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader: ; preds = %.lr.ph.split.us.split.split.us.i
  %min.iters.check1223 = icmp ult i64 %i.aef, 12
  br i1 %min.iters.check1223, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359, label %vector.memcheck1216

vector.memcheck1216:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader
  %scevgep1217 = getelementptr i8, ptr %i.amh, i64 4
  %i.ape = shl i64 %i.aef, 2
  %scevgep1218 = getelementptr i8, ptr %i.amd, i64 %i.ape
  %bound01219 = icmp ult ptr %i.amh, %scevgep1218
  %bound11220 = icmp ult ptr %i.amd, %scevgep1217
  %found.conflict1221 = and i1 %bound01219, %bound11220
  br i1 %found.conflict1221, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359, label %vector.ph1224

vector.ph1224:                                    ; preds = %vector.memcheck1216
  %n.vec1226 = and i64 %i.aef, -8                 ; 3 uses
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1224
  %index1228 = phi i64 [ 0, %vector.ph1224 ], [ %index.next1230, %vector.body1227 ] ; 2 uses
  %index.next1230 = add nuw i64 %index1228, 8     ; 2 uses
  %i.apf = icmp eq i64 %index.next1230, %n.vec1226
  br i1 %i.apf, label %middle.block1231, label %vector.body1227, !llvm.loop !1941

middle.block1231:                                 ; preds = %vector.body1227
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %index1228
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 28
  %16 = load i32, ptr %15, align 4, !tbaa !3, !alias.scope !1942
  store i32 %16, ptr %i.amh, align 4, !tbaa !3, !alias.scope !1945, !noalias !1942
  %cmp.n1232 = icmp eq i64 %i.aef, %n.vec1226
  br i1 %cmp.n1232, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359: ; preds = %vector.memcheck1216, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader, %middle.block1231
  %.01823.us.us51.us.i.ph = phi i64 [ 0, %vector.memcheck1216 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader ], [ %n.vec1226, %middle.block1231 ] ; 3 uses
  %xtraiter1567 = and i64 %i.aef, 7               ; 2 uses
  %lcmp.mod1568.not = icmp eq i64 %xtraiter1567, 0
  br i1 %lcmp.mod1568.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol
  %.01823.us.us51.us.i.prol = phi i64 [ %i.api, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol ], [ %.01823.us.us51.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359 ] ; 2 uses
  %prol.iter1569 = phi i64 [ %prol.iter1569.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359 ]
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i.prol
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !3
  store i32 %i.aph, ptr %i.amh, align 4, !tbaa !3
  %i.api = add nuw i64 %.01823.us.us51.us.i.prol, 1 ; 2 uses
  %prol.iter1569.next = add i64 %prol.iter1569, 1 ; 2 uses
  %prol.iter1569.cmp.not = icmp eq i64 %prol.iter1569.next, %xtraiter1567
  br i1 %prol.iter1569.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol, !llvm.loop !1947

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359
  %.01823.us.us51.us.i.unr = phi i64 [ %.01823.us.us51.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.preheader1359 ], [ %i.api, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol ]
  %i.apj = sub i64 %.01823.us.us51.us.i.ph, %i.aef
  %i.apk = icmp ugt i64 %i.apj, -8
  br i1 %i.apk, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i
  %.01823.us.us51.us.i = phi i64 [ %i.aqi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i ], [ %.01823.us.us51.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i.prol.loopexit ] ; 9 uses
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !3
  store i32 %i.apm, ptr %i.amh, align 4, !tbaa !3
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 4
  %i.app = load i32, ptr %i.apo, align 4, !tbaa !3
  store i32 %i.app, ptr %i.amh, align 4, !tbaa !3
  %i.apq = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !3
  store i32 %i.aps, ptr %i.amh, align 4, !tbaa !3
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 12
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !3
  store i32 %i.apv, ptr %i.amh, align 4, !tbaa !3
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !3
  store i32 %i.apy, ptr %i.amh, align 4, !tbaa !3
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 20
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !3
  store i32 %i.aqb, ptr %i.amh, align 4, !tbaa !3
  %i.aqc = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 24
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !3
  store i32 %i.aqe, ptr %i.amh, align 4, !tbaa !3
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.us.i
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 28
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !3
  store i32 %i.aqh, ptr %i.amh, align 4, !tbaa !3
  %i.aqi = add nuw i64 %.01823.us.us51.us.i, 8    ; 2 uses
  %exitcond92.not.i.7 = icmp eq i64 %i.aqi, %i.aef
  br i1 %exitcond92.not.i.7, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.us.i, !llvm.loop !1948

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader.new
  %.024.us.us50.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader.new ], [ %i.arr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i ] ; 2 uses
  %.01823.us.us51.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader.new ], [ %i.ars, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i ] ; 5 uses
  %niter1566 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i.preheader.new ], [ %niter1566.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i ]
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.i
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !3 ; 2 uses
  %i.aql = zext i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.aql
  %i.aqn = load i8, ptr %i.aqm, align 1, !range !263
  %i.aqo = zext nneg i8 %i.aqn to i64
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %.024.us.us50.i
  store i32 %i.aqk, ptr %i.aqp, align 4, !tbaa !3
  %i.aqq = add i64 %.024.us.us50.i, %i.aqo        ; 2 uses
  %i.aqr = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.i
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 4
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !3 ; 2 uses
  %i.aqu = zext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.aqu
  %i.aqw = load i8, ptr %i.aqv, align 1, !range !263
  %i.aqx = zext nneg i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.aqq
  store i32 %i.aqt, ptr %i.aqy, align 4, !tbaa !3
  %i.aqz = add i64 %i.aqq, %i.aqx                 ; 2 uses
  %i.ara = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.i
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !3 ; 2 uses
  %i.ard = zext i32 %i.arc to i64
  %i.are = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.ard
  %i.arf = load i8, ptr %i.are, align 1, !range !263
  %i.arg = zext nneg i8 %i.arf to i64
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.aqz
  store i32 %i.arc, ptr %i.arh, align 4, !tbaa !3
  %i.ari = add i64 %i.aqz, %i.arg                 ; 2 uses
  %i.arj = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us51.i
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 12
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !3 ; 2 uses
  %i.arm = zext i32 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.arm
  %i.aro = load i8, ptr %i.arn, align 1, !range !263
  %i.arp = zext nneg i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.ari
  store i32 %i.arl, ptr %i.arq, align 4, !tbaa !3
  %i.arr = add i64 %i.ari, %i.arp                 ; 3 uses
  %i.ars = add nuw i64 %.01823.us.us51.i, 4       ; 2 uses
  %niter1566.next.3 = add i64 %niter1566, 4       ; 2 uses
  %niter1566.ncmp.3 = icmp eq i64 %niter1566.next.3, %unroll_iter1565
  br i1 %niter1566.ncmp.3, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.loopexit1361.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us49.i, !llvm.loop !1940

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.split.us.split.i287
  br i1 %1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader: ; preds = %.lr.ph.split.us.split.split.i
  %xtraiter1552 = and i64 %i.aef, 1
  %i.art = icmp eq i64 %i.aef, 1
  br i1 %i.art, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader
  %unroll_iter1556 = and i64 %i.aef, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader: ; preds = %.lr.ph.split.us.split.split.i
  %min.iters.check1205 = icmp ult i64 %i.aef, 12
  br i1 %min.iters.check1205, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363, label %vector.memcheck1198

vector.memcheck1198:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader
  %scevgep1199 = getelementptr i8, ptr %i.amh, i64 4
  %i.aru = shl i64 %i.aef, 2
  %scevgep1200 = getelementptr i8, ptr %i.amd, i64 %i.aru
  %bound01201 = icmp ult ptr %i.amh, %scevgep1200
  %bound11202 = icmp ult ptr %i.amd, %scevgep1199
  %found.conflict1203 = and i1 %bound01201, %bound11202
  br i1 %found.conflict1203, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363, label %vector.ph1206

vector.ph1206:                                    ; preds = %vector.memcheck1198
  %n.vec1208 = and i64 %i.aef, -8                 ; 3 uses
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1206
  %index1210 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1212, %vector.body1209 ] ; 2 uses
  %index.next1212 = add nuw i64 %index1210, 8     ; 2 uses
  %i.arv = icmp eq i64 %index.next1212, %n.vec1208
  br i1 %i.arv, label %middle.block1213, label %vector.body1209, !llvm.loop !1949

middle.block1213:                                 ; preds = %vector.body1209
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %index1210
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 28
  %19 = load i32, ptr %18, align 4, !tbaa !3, !alias.scope !1950
  store i32 %19, ptr %i.amh, align 4, !tbaa !3, !alias.scope !1953, !noalias !1950
  %cmp.n1214 = icmp eq i64 %i.aef, %n.vec1208
  br i1 %cmp.n1214, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363: ; preds = %vector.memcheck1198, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader, %middle.block1213
  %.01823.us.us57.i.ph = phi i64 [ 0, %vector.memcheck1198 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader ], [ %n.vec1208, %middle.block1213 ] ; 3 uses
  %xtraiter1558 = and i64 %i.aef, 7               ; 2 uses
  %lcmp.mod1559.not = icmp eq i64 %xtraiter1558, 0
  br i1 %lcmp.mod1559.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol
  %.01823.us.us57.i.prol = phi i64 [ %i.ary, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol ], [ %.01823.us.us57.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363 ] ; 2 uses
  %prol.iter1560 = phi i64 [ %prol.iter1560.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363 ]
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i.prol
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !3
  store i32 %i.arx, ptr %i.amh, align 4, !tbaa !3
  %i.ary = add nuw i64 %.01823.us.us57.i.prol, 1  ; 2 uses
  %prol.iter1560.next = add i64 %prol.iter1560, 1 ; 2 uses
  %prol.iter1560.cmp.not = icmp eq i64 %prol.iter1560.next, %xtraiter1558
  br i1 %prol.iter1560.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol, !llvm.loop !1955

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363
  %.01823.us.us57.i.unr = phi i64 [ %.01823.us.us57.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.preheader1363 ], [ %i.ary, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol ]
  %i.arz = sub i64 %.01823.us.us57.i.ph, %i.aef
  %i.asa = icmp ugt i64 %i.arz, -8
  br i1 %i.asa, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i
  %.01823.us.us57.i = phi i64 [ %i.asy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i ], [ %.01823.us.us57.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i.prol.loopexit ] ; 9 uses
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !3
  store i32 %i.asc, ptr %i.amh, align 4, !tbaa !3
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 4
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !3
  store i32 %i.asf, ptr %i.amh, align 4, !tbaa !3
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !3
  store i32 %i.asi, ptr %i.amh, align 4, !tbaa !3
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 12
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !3
  store i32 %i.asl, ptr %i.amh, align 4, !tbaa !3
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 16
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !3
  store i32 %i.aso, ptr %i.amh, align 4, !tbaa !3
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 20
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !3
  store i32 %i.asr, ptr %i.amh, align 4, !tbaa !3
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ass, i64 24
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !3
  store i32 %i.asu, ptr %i.amh, align 4, !tbaa !3
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.us57.i
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 28
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !3
  store i32 %i.asx, ptr %i.amh, align 4, !tbaa !3
  %i.asy = add nuw i64 %.01823.us.us57.i, 8       ; 2 uses
  %exitcond90.not.i.7 = icmp eq i64 %i.asy, %i.aef
  br i1 %exitcond90.not.i.7, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us55.i, !llvm.loop !1956

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader.new
  %.024.us.i289 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader.new ], [ %i.atv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288 ] ; 2 uses
  %.01823.us.i290 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader.new ], [ %i.atw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288 ] ; 3 uses
  %niter1557 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288.preheader.new ], [ %niter1557.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288 ]
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.i290
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !3 ; 2 uses
  %i.atb = zext i32 %i.ata to i64
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %i.atb
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !3
  %i.ate = zext i32 %i.atd to i64
  %i.atf = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.ate
  %i.atg = load i8, ptr %i.atf, align 1, !range !263
  %i.ath = zext nneg i8 %i.atg to i64
  %i.ati = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %.024.us.i289
  store i32 %i.ata, ptr %i.ati, align 4, !tbaa !3
  %i.atj = add i64 %.024.us.i289, %i.ath          ; 2 uses
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us.i290
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 4
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !3 ; 2 uses
  %i.atn = zext i32 %i.atm to i64
  %i.ato = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %i.atn
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !3
  %i.atq = zext i32 %i.atp to i64
  %i.atr = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.atq
  %i.ats = load i8, ptr %i.atr, align 1, !range !263
  %i.att = zext nneg i8 %i.ats to i64
  %i.atu = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %i.atj
  store i32 %i.atm, ptr %i.atu, align 4, !tbaa !3
  %i.atv = add i64 %i.atj, %i.att                 ; 3 uses
  %i.atw = add nuw i64 %.01823.us.i290, 2         ; 2 uses
  %niter1557.next.1 = add i64 %niter1557, 2       ; 2 uses
  %niter1557.ncmp.1 = icmp eq i64 %niter1557.next.1, %unroll_iter1556
  br i1 %niter1557.ncmp.1, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit.loopexit1365.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.i288, !llvm.loop !1940

.lr.ph.split.i267:                                ; preds = %.lr.ph.i263
  br i1 %.not.i.i264, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i281, label %.lr.ph.split.split.i268

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i281: ; preds = %.lr.ph.split.i267, %bb.ac
  %.024.us25.i282 = phi i64 [ %i.auo, %bb.ac ], [ 0, %.lr.ph.split.i267 ] ; 2 uses
  %.01823.us26.i283 = phi i64 [ %i.aup, %bb.ac ], [ 0, %.lr.ph.split.i267 ] ; 4 uses
  br i1 %.not.i19.i265, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit20.us28.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i281
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %.01823.us26.i283
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !3
  %i.atz = zext i32 %i.aty to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit20.us28.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit20.us28.i: ; preds = %bb.ab, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i281
  %i.aua = phi i64 [ %i.atz, %bb.ab ], [ %.01823.us26.i283, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i281 ] ; 3 uses
  %i.aub = lshr i64 %i.aua, 6
  %i.auc = and i64 %i.aua, 63
  %i.aud = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %i.aub
  %i.aue = load i64, ptr %i.aud, align 8, !tbaa !24
  %i.auf = shl nuw i64 1, %i.auc
  %i.aug = and i64 %i.auf, %i.aue
  %.not.us.i284 = icmp eq i64 %i.aug, 0
  br i1 %.not.us.i284, label %bb.ac, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us29.i285

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us29.i285: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit20.us28.i
  %i.auh = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.aua
  %i.aui = load i8, ptr %i.auh, align 1, !range !263
  %i.auj = zext nneg i8 %i.aui to i64
  %i.auk = select i1 %1, i64 0, i64 %i.auj
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us29.i285, %_ZNK6duckdb15SelectionVector9get_indexEm.exit20.us28.i
  %i.aul = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit20.us28.i ], [ %i.auk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us29.i285 ]
  %i.aum = trunc i64 %.01823.us26.i283 to i32
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %.024.us25.i282
  store i32 %i.aum, ptr %i.aun, align 4, !tbaa !3
  %i.auo = add i64 %i.aul, %.024.us25.i282        ; 2 uses
  %i.aup = add nuw i64 %.01823.us26.i283, 1       ; 2 uses
  %exitcond88.not.i = icmp eq i64 %i.aup, %i.aef
  br i1 %exitcond88.not.i, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us27.i281, !llvm.loop !1940

.lr.ph.split.split.i268:                          ; preds = %.lr.ph.split.i267
  br i1 %.not.i19.i265, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i268
  br i1 %1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.i276

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader: ; preds = %.lr.ph.split.split.split.us.i
  %min.iters.check1187 = icmp ult i64 %i.aef, 12
  br i1 %min.iters.check1187, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369, label %vector.memcheck1180

vector.memcheck1180:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader
  %scevgep1181 = getelementptr i8, ptr %i.amh, i64 4
  %i.auq = shl i64 %i.aef, 2
  %scevgep1182 = getelementptr i8, ptr %i.amd, i64 %i.auq
  %bound01183 = icmp ult ptr %i.amh, %scevgep1182
  %bound11184 = icmp ult ptr %i.amd, %scevgep1181
  %found.conflict1185 = and i1 %bound01183, %bound11184
  br i1 %found.conflict1185, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369, label %vector.ph1188

vector.ph1188:                                    ; preds = %vector.memcheck1180
  %n.vec1190 = and i64 %i.aef, -8                 ; 3 uses
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1188
  %index1192 = phi i64 [ 0, %vector.ph1188 ], [ %index.next1194, %vector.body1191 ] ; 2 uses
  %index.next1194 = add nuw i64 %index1192, 8     ; 2 uses
  %i.aur = icmp eq i64 %index.next1194, %n.vec1190
  br i1 %i.aur, label %middle.block1195, label %vector.body1191, !llvm.loop !1957

middle.block1195:                                 ; preds = %vector.body1191
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %index1192
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 28
  %22 = load i32, ptr %21, align 4, !tbaa !3, !alias.scope !1958
  store i32 %22, ptr %i.amh, align 4, !tbaa !3, !alias.scope !1961, !noalias !1958
  %cmp.n1196 = icmp eq i64 %i.aef, %n.vec1190
  br i1 %cmp.n1196, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369: ; preds = %vector.memcheck1180, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader, %middle.block1195
  %.01823.us34.us.i.ph = phi i64 [ 0, %vector.memcheck1180 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader ], [ %n.vec1190, %middle.block1195 ] ; 3 uses
  %xtraiter1549 = and i64 %i.aef, 7               ; 2 uses
  %lcmp.mod1550.not = icmp eq i64 %xtraiter1549, 0
  br i1 %lcmp.mod1550.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol
  %.01823.us34.us.i.prol = phi i64 [ %i.auu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol ], [ %.01823.us34.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369 ] ; 2 uses
  %prol.iter1551 = phi i64 [ %prol.iter1551.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369 ]
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i.prol
  %i.aut = load i32, ptr %i.aus, align 4, !tbaa !3
  store i32 %i.aut, ptr %i.amh, align 4, !tbaa !3
  %i.auu = add nuw i64 %.01823.us34.us.i.prol, 1  ; 2 uses
  %prol.iter1551.next = add i64 %prol.iter1551, 1 ; 2 uses
  %prol.iter1551.cmp.not = icmp eq i64 %prol.iter1551.next, %xtraiter1549
  br i1 %prol.iter1551.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol, !llvm.loop !1963

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369
  %.01823.us34.us.i.unr = phi i64 [ %.01823.us34.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.preheader1369 ], [ %i.auu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol ]
  %i.auv = sub i64 %.01823.us34.us.i.ph, %i.aef
  %i.auw = icmp ugt i64 %i.auv, -8
  br i1 %i.auw, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i
  %.01823.us34.us.i = phi i64 [ %i.avu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i ], [ %.01823.us34.us.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i.prol.loopexit ] ; 9 uses
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !3
  store i32 %i.auy, ptr %i.amh, align 4, !tbaa !3
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 4
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !3
  store i32 %i.avb, ptr %i.amh, align 4, !tbaa !3
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 8
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !3
  store i32 %i.ave, ptr %i.amh, align 4, !tbaa !3
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 12
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !3
  store i32 %i.avh, ptr %i.amh, align 4, !tbaa !3
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 16
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !3
  store i32 %i.avk, ptr %i.amh, align 4, !tbaa !3
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 20
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !3
  store i32 %i.avn, ptr %i.amh, align 4, !tbaa !3
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 24
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !3
  store i32 %i.avq, ptr %i.amh, align 4, !tbaa !3
  %i.avr = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.us.i
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 28
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !3
  store i32 %i.avt, ptr %i.amh, align 4, !tbaa !3
  %i.avu = add nuw i64 %.01823.us34.us.i, 8       ; 2 uses
  %exitcond87.not.i.7 = icmp eq i64 %i.avu, %i.aef
  br i1 %exitcond87.not.i.7, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.us.i, !llvm.loop !1964

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.i276: ; preds = %.lr.ph.split.split.split.us.i, %bb.ad
  %.024.us33.i277 = phi i64 [ %i.awj, %bb.ad ], [ 0, %.lr.ph.split.split.split.us.i ] ; 2 uses
  %.01823.us34.i278 = phi i64 [ %i.awk, %bb.ad ], [ 0, %.lr.ph.split.split.split.us.i ] ; 2 uses
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us34.i278
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !3 ; 2 uses
  %i.avx = zext i32 %i.avw to i64                 ; 3 uses
  %i.avy = lshr i64 %i.avx, 6
  %i.avz = and i64 %i.avx, 63
  %i.awa = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %i.avy
  %i.awb = load i64, ptr %i.awa, align 8, !tbaa !24
  %i.awc = shl nuw i64 1, %i.avz
  %i.awd = and i64 %i.awc, %i.awb
  %.not.us36.i279 = icmp eq i64 %i.awd, 0
  br i1 %.not.us36.i279, label %bb.ad, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us37.i280

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us37.i280: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.i276
  %i.awe = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.avx
  %i.awf = load i8, ptr %i.awe, align 1, !range !263
  %i.awg = zext nneg i8 %i.awf to i64
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us37.i280, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.i276
  %i.awh = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.i276 ], [ %i.awg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us37.i280 ]
  %i.awi = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %.024.us33.i277
  store i32 %i.avw, ptr %i.awi, align 4, !tbaa !3
  %i.awj = add i64 %i.awh, %.024.us33.i277        ; 2 uses
  %i.awk = add nuw i64 %.01823.us34.i278, 1       ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.awk, %i.aef
  br i1 %exitcond86.not.i, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us32.i276, !llvm.loop !1940

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i268
  br i1 %1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader: ; preds = %.lr.ph.split.split.split.i
  %min.iters.check1169 = icmp ult i64 %i.aef, 12
  br i1 %min.iters.check1169, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373, label %vector.memcheck1166

vector.memcheck1166:                              ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader
  %scevgep = getelementptr i8, ptr %i.amh, i64 4
  %i.awl = shl i64 %i.aef, 2
  %scevgep1167 = getelementptr i8, ptr %i.amd, i64 %i.awl
  %bound0 = icmp ult ptr %i.amh, %scevgep1167
  %bound1 = icmp ult ptr %i.amd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373, label %vector.ph1170

vector.ph1170:                                    ; preds = %vector.memcheck1166
  %n.vec1172 = and i64 %i.aef, -8                 ; 3 uses
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1170
  %index1174 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1176, %vector.body1173 ] ; 2 uses
  %index.next1176 = add nuw i64 %index1174, 8     ; 2 uses
  %i.awm = icmp eq i64 %index.next1176, %n.vec1172
  br i1 %i.awm, label %middle.block1177, label %vector.body1173, !llvm.loop !1965

middle.block1177:                                 ; preds = %vector.body1173
  %23 = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %index1174
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 28
  %25 = load i32, ptr %24, align 4, !tbaa !3, !alias.scope !1966
  store i32 %25, ptr %i.amh, align 4, !tbaa !3, !alias.scope !1969, !noalias !1966
  %cmp.n1178 = icmp eq i64 %i.aef, %n.vec1172
  br i1 %cmp.n1178, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373: ; preds = %vector.memcheck1166, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader, %middle.block1177
  %.01823.us42.i.ph = phi i64 [ 0, %vector.memcheck1166 ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader ], [ %n.vec1172, %middle.block1177 ] ; 3 uses
  %xtraiter1546 = and i64 %i.aef, 7               ; 2 uses
  %lcmp.mod1547.not = icmp eq i64 %xtraiter1546, 0
  br i1 %lcmp.mod1547.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol
  %.01823.us42.i.prol = phi i64 [ %i.awp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol ], [ %.01823.us42.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373 ] ; 2 uses
  %prol.iter1548 = phi i64 [ %prol.iter1548.next, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol ], [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373 ]
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i.prol
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !3
  store i32 %i.awo, ptr %i.amh, align 4, !tbaa !3
  %i.awp = add nuw i64 %.01823.us42.i.prol, 1     ; 2 uses
  %prol.iter1548.next = add i64 %prol.iter1548, 1 ; 2 uses
  %prol.iter1548.cmp.not = icmp eq i64 %prol.iter1548.next, %xtraiter1546
  br i1 %prol.iter1548.cmp.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol, !llvm.loop !1971

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373
  %.01823.us42.i.unr = phi i64 [ %.01823.us42.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.preheader1373 ], [ %i.awp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol ]
  %i.awq = sub i64 %.01823.us42.i.ph, %i.aef
  %i.awr = icmp ugt i64 %i.awq, -8
  br i1 %i.awr, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i
  %.01823.us42.i = phi i64 [ %i.axp, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i ], [ %.01823.us42.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i.prol.loopexit ] ; 9 uses
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !3
  store i32 %i.awt, ptr %i.amh, align 4, !tbaa !3
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 4
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !3
  store i32 %i.aww, ptr %i.amh, align 4, !tbaa !3
  %i.awx = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 8
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !3
  store i32 %i.awz, ptr %i.amh, align 4, !tbaa !3
  %i.axa = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 12
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !3
  store i32 %i.axc, ptr %i.amh, align 4, !tbaa !3
  %i.axd = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 16
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !3
  store i32 %i.axf, ptr %i.amh, align 4, !tbaa !3
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 20
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !3
  store i32 %i.axi, ptr %i.amh, align 4, !tbaa !3
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 24
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !3
  store i32 %i.axl, ptr %i.amh, align 4, !tbaa !3
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.us42.i
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 28
  %i.axo = load i32, ptr %i.axn, align 4, !tbaa !3
  store i32 %i.axo, ptr %i.amh, align 4, !tbaa !3
  %i.axp = add nuw i64 %.01823.us42.i, 8          ; 2 uses
  %exitcond85.not.i.7 = icmp eq i64 %i.axp, %i.aef
  br i1 %exitcond85.not.i.7, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us40.i, !llvm.loop !1972

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269: ; preds = %.lr.ph.split.split.split.i, %bb.ae
  %.024.i270 = phi i64 [ %i.ayh, %bb.ae ], [ 0, %.lr.ph.split.split.split.i ] ; 2 uses
  %.01823.i271 = phi i64 [ %i.ayi, %bb.ae ], [ 0, %.lr.ph.split.split.split.i ] ; 2 uses
  %i.axq = getelementptr inbounds nuw [4 x i8], ptr %i.amd, i64 %.01823.i271
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !3 ; 2 uses
  %i.axs = zext i32 %i.axr to i64
  %i.axt = getelementptr inbounds nuw [4 x i8], ptr %i.amf, i64 %i.axs
  %i.axu = load i32, ptr %i.axt, align 4, !tbaa !3
  %i.axv = zext i32 %i.axu to i64                 ; 3 uses
  %i.axw = lshr i64 %i.axv, 6
  %i.axx = and i64 %i.axv, 63
  %i.axy = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %i.axw
  %i.axz = load i64, ptr %i.axy, align 8, !tbaa !24
  %i.aya = shl nuw i64 1, %i.axx
  %i.ayb = and i64 %i.aya, %i.axz
  %.not.i272 = icmp eq i64 %i.ayb, 0
  br i1 %.not.i272, label %bb.ae, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i273

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i273: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.amc, i64 %i.axv
  %i.ayd = load i8, ptr %i.ayc, align 1, !range !263
  %i.aye = zext nneg i8 %i.ayd to i64
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i273, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269
  %i.ayf = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269 ], [ %i.aye, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i273 ]
  %i.ayg = getelementptr inbounds nuw [4 x i8], ptr %i.amh, i64 %.024.i270
  store i32 %i.axr, ptr %i.ayg, align 4, !tbaa !3
  %i.ayh = add i64 %i.ayf, %.024.i270             ; 2 uses
  %i.ayi = add nuw i64 %.01823.i271, 1            ; 2 uses
  %exitcond.not.i274 = icmp eq i64 %i.ayi, %i.aef
  br i1 %exitcond.not.i274, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i269, !llvm.loop !1940

bb.af:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.ayj = load ptr, ptr %i.d, align 8, !tbaa !91
  %.not.i300 = icmp eq ptr %i.ayj, null
  %i.ayk = load i64, ptr %3, align 8, !tbaa !24   ; 89 uses
  br i1 %.not.i300, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIbEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0)
          to label %.noexc319 unwind label %bb.e

.noexc319:                                        ; preds = %bb.ag
  %i.ayl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !1756 ; 12 uses
  %.not.i301 = icmp eq i64 %i.ayk, 0
  br i1 %.not.i301, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %.lr.ph.i302

.lr.ph.i302:                                      ; preds = %.noexc319
  %i.ayn = load ptr, ptr %2, align 8, !tbaa !152  ; 20 uses
  %i.ayo = ptrtoaddr ptr %i.ayn to i64            ; 2 uses
  %.not.i.i303 = icmp eq ptr %i.ayn, null
  %i.ayp = load ptr, ptr %0, align 8, !tbaa !1193
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !152 ; 7 uses
  %.not.i17.i304 = icmp eq ptr %i.ayq, null       ; 2 uses
  %i.ayr = load ptr, ptr %5, align 8, !tbaa !152  ; 29 uses
  %i.ays = ptrtoaddr ptr %i.ayr to i64            ; 2 uses
  br i1 %.not.i.i303, label %.lr.ph.split.us.i312, label %.lr.ph.split.i305

.lr.ph.split.us.i312:                             ; preds = %.lr.ph.i302
  br i1 %.not.i17.i304, label %.lr.ph.split.us.split.us.i315, label %.lr.ph.split.us.split.i313

.lr.ph.split.us.split.us.i315:                    ; preds = %.lr.ph.split.us.i312
  br i1 %1, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader: ; preds = %.lr.ph.split.us.split.us.i315
  %xtraiter1540 = and i64 %i.ayk, 1
  %i.ayt = icmp eq i64 %i.ayk, 1
  br i1 %i.ayt, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader
  %unroll_iter1544 = and i64 %i.ayk, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader: ; preds = %.lr.ph.split.us.split.us.i315
  %min.iters.check1153 = icmp ult i64 %i.ayk, 8
  br i1 %min.iters.check1153, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader1377, label %vector.ph1154

vector.ph1154:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader
  %n.vec1156 = and i64 %i.ayk, -8                 ; 3 uses
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %vector.ph1154
  %index1158 = phi i64 [ 0, %vector.ph1154 ], [ %index.next1161, %vector.body1157 ] ; 2 uses
  %vec.ind1159 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph1154 ], [ %vec.ind.next1162, %vector.body1157 ] ; 3 uses
  %step.add1160 = add <4 x i32> %vec.ind1159, splat (i32 4)
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %index1158 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 16
  store <4 x i32> %vec.ind1159, ptr %i.ayu, align 4, !tbaa !3
  store <4 x i32> %step.add1160, ptr %i.ayv, align 4, !tbaa !3
  %index.next1161 = add nuw i64 %index1158, 8     ; 2 uses
  %vec.ind.next1162 = add <4 x i32> %vec.ind1159, splat (i32 8)
  %i.ayw = icmp eq i64 %index.next1161, %n.vec1156
  br i1 %i.ayw, label %middle.block1163, label %vector.body1157, !llvm.loop !1973

middle.block1163:                                 ; preds = %vector.body1157
  %cmp.n1164 = icmp eq i64 %i.ayk, %n.vec1156
  br i1 %cmp.n1164, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader1377

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader1377: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader, %middle.block1163
  %.021.us.us.us.i.ph = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader ], [ %n.vec1156, %middle.block1163 ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader1377, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317
  %.021.us.us.us.i = phi i64 [ %i.ayz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317 ], [ %.021.us.us.us.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317.preheader1377 ] ; 3 uses
  %i.ayx = trunc i64 %.021.us.us.us.i to i32
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %.021.us.us.us.i
  store i32 %i.ayx, ptr %i.ayy, align 4, !tbaa !3
  %i.ayz = add nuw i64 %.021.us.us.us.i, 1        ; 2 uses
  %exitcond64.not.i318 = icmp eq i64 %i.ayz, %i.ayk
  br i1 %exitcond64.not.i318, label %_ZN6duckdbL24TemplatedFilterSelectionIbNS_6EqualsELb0EEEmRNS_19UnifiedVectorFormatET_RNS_15SelectionVectorEmS6_.exit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.us.i317, !llvm.loop !1974

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader.new
  %.021.us.us.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader.new ], [ %i.azm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316 ] ; 2 uses
  %.01620.us.us.i = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader.new ], [ %i.azn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316 ] ; 4 uses
  %niter1545 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316.preheader.new ], [ %niter1545.next.1, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us.i316 ]
  %i.aza = getelementptr inbounds nuw i8, ptr %i.aym, i64 %.01620.us.us.i
  %i.azb = load i8, ptr %i.aza, align 1, !range !263
  %i.azc = xor i8 %i.azb, 1
  %.not.i19.us.us.i = zext nneg i8 %i.azc to i64
  %i.azd = trunc i64 %.01620.us.us.i to i32
  %i.aze = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %.021.us.us.i
  store i32 %i.azd, ptr %i.aze, align 4, !tbaa !3
  %i.azf = add i64 %.021.us.us.i, %.not.i19.us.us.i ; 2 uses
  %i.azg = or disjoint i64 %.01620.us.us.i, 1     ; 2 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aym, i64 %i.azg
  %i.azi = load i8, ptr %i.azh, align 1, !range !263
  %i.azj = xor i8 %i.azi, 1
  %.not.i19.us.us.i.1 = zext nneg i8 %i.azj to i64
  %i.azk = trunc i64 %i.azg to i32
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.ayr, i64 %i.azf
  store i32 %i.azk, ptr %i.azl, align 4, !tbaa !3
  %i.azm = add i64 %i.azf, %.not.i19.us.us.i.1    ; 3 uses
  %i.azn = add nuw i64 %.01620.us.us.i, 2         ; 2 uses
  %niter1545.next.1 = add i64 %niter1545, 2       ; 2 uses
  %niter1545.ncmp.1 = icmp eq i64 %niter1545.next.1, %unroll_iter1544
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.umin.v2i64
!1724 = distinct !{!1724, !1725, !"_ZSt11make_sharedIN6duckdb15ArrayColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoERmRKNS0_11LogicalTypeERNS0_14ColumnDataTypeERNS0_12optional_ptrINS0_10ColumnDataELb1EEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!1725 = distinct !{!1725, !"_ZSt11make_sharedIN6duckdb15ArrayColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoERmRKNS0_11LogicalTypeERNS0_14ColumnDataTypeERNS0_12optional_ptrINS0_10ColumnDataELb1EEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!1726 = distinct !{null, null, null, null}
!1727 = distinct !{null, null, null, null, null}
!1728 = distinct !{null, null, null, null, null, null}
!1729 = !{!1730, !1731, i64 0}
!1730 = !{!"_ZTSSt12__shared_ptrIN6duckdb15ArrayColumnDataELN9__gnu_cxx12_Lock_policyE2EE", !1731, i64 0, !56, i64 8}
!1731 = !{!"p1 _ZTSN6duckdb15ArrayColumnDataE", !19, i64 0}
!1732 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1733 = !{!1734}
!1734 = distinct !{!1734, !1735, !"_ZSt11make_sharedIN6duckdb18ValidityColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoERmRNS0_14ColumnDataTypeERNS0_12optional_ptrINS0_10ColumnDataELb1EEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESF_E4typeEEDpOT0_: argument 0"}
!1735 = distinct !{!1735, !"_ZSt11make_sharedIN6duckdb18ValidityColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoERmRNS0_14ColumnDataTypeERNS0_12optional_ptrINS0_10ColumnDataELb1EEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESF_E4typeEEDpOT0_"}
!1736 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1737 = !{!1738}
!1738 = distinct !{!1738, !1739, !"_ZSt11make_sharedIN6duckdb18StandardColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoERmRKNS0_11LogicalTypeERNS0_14ColumnDataTypeERNS0_12optional_ptrINS0_10ColumnDataELb1EEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_: argument 0"}
!1739 = distinct !{!1739, !"_ZSt11make_sharedIN6duckdb18StandardColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoERmRKNS0_11LogicalTypeERNS0_14ColumnDataTypeERNS0_12optional_ptrINS0_10ColumnDataELb1EEEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESI_E4typeEEDpOT0_"}
!1740 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!1741 = !{!641, !642, i64 0}
!1742 = !{!397, !9, i64 40}
!1743 = !{!426, !427, i64 0}
!1744 = !{!649, !19, i64 120}
!1745 = distinct !{null, null, null, null, null, null}
!1746 = distinct !{null, null}
!1747 = !{!649, !19, i64 144}
!1748 = distinct !{null, null, null, null}
!1749 = !{!1220, !1220, i64 0}
!1750 = !{!1751, !1752, i64 8}
!1751 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !1752, i64 0, !1752, i64 8, !1752, i64 16}
!1752 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEE", !19, i64 0}
!1753 = !{!1751, !1752, i64 0}
!1754 = !{!1755, !1755, i64 0}
!1755 = !{!"p1 _ZTSN6duckdb16TableFilterStateE", !19, i64 0}
!1756 = !{!1194, !38, i64 8}
!1757 = distinct !{!1757, !72}
!1758 = distinct !{!1758, !72}
!1759 = distinct !{!1759, !72}
!1760 = distinct !{!1760, !72}
!1761 = distinct !{!1761, !72}
!1762 = distinct !{!1762, !72}
!1763 = distinct !{!1763, !72}
!1764 = distinct !{!1764, !72}
!1765 = distinct !{!1765, !72}
!1766 = distinct !{!1766, !72}
!1767 = distinct !{!1767, !72}
!1768 = distinct !{!1768, !72}
!1769 = distinct !{!1769, !72}
!1770 = distinct !{!1770, !72}
!1771 = distinct !{!1771, !72}
!1772 = distinct !{!1772, !72}
!1773 = distinct !{!1773, !72}
!1774 = distinct !{!1774, !72}
!1775 = distinct !{!1775, !72}
!1776 = distinct !{!1776, !72}
!1777 = distinct !{!1777, !72}
!1778 = distinct !{!1778, !72}
!1779 = distinct !{!1779, !72}
!1780 = distinct !{!1780, !72}
!1781 = distinct !{!1781, !72}
!1782 = distinct !{!1782, !72}
!1783 = distinct !{!1783, !72}
!1784 = distinct !{!1784, !72}
!1785 = distinct !{!1785, !72}
!1786 = distinct !{!1786, !72}
!1787 = distinct !{!1787, !72}
!1788 = distinct !{!1788, !72}
!1789 = distinct !{!1789, !72}
!1790 = distinct !{!1790, !72}
!1791 = distinct !{!1791, !72}
!1792 = distinct !{!1792, !72}
!1793 = distinct !{!1793, !72}
!1794 = distinct !{!1794, !72}
!1795 = distinct !{!1795, !72}
!1796 = distinct !{!1796, !72}
!1797 = distinct !{!1797, !72}
!1798 = distinct !{!1798, !72}
!1799 = distinct !{!1799, !72}
!1800 = distinct !{!1800, !72}
!1801 = distinct !{!1801, !72}
!1802 = distinct !{!1802, !72}
!1803 = distinct !{!1803, !72}
!1804 = distinct !{!1804, !72}
!1805 = distinct !{!1805, !72}
!1806 = distinct !{!1806, !72}
!1807 = distinct !{!1807, !72}
!1808 = distinct !{!1808, !72}
!1809 = distinct !{!1809, !72}
!1810 = distinct !{!1810, !72}
!1811 = distinct !{!1811, !72}
!1812 = distinct !{!1812, !72}
!1813 = distinct !{!1813, !72}
!1814 = distinct !{!1814, !72}
!1815 = distinct !{!1815, !72}
!1816 = distinct !{!1816, !72}
!1817 = distinct !{!1817, !72}
!1818 = distinct !{!1818, !72}
!1819 = distinct !{!1819, !72}
!1820 = distinct !{!1820, !72}
!1821 = distinct !{!1821, !72}
!1822 = distinct !{!1822, !72}
!1823 = distinct !{!1823, !72}
!1824 = distinct !{!1824, !72}
!1825 = distinct !{!1825, !72}
!1826 = distinct !{!1826, !72}
!1827 = distinct !{!1827, !72}
!1828 = distinct !{!1828, !72}
!1829 = distinct !{!1829, !72}
!1830 = distinct !{!1830, !72}
!1831 = distinct !{!1831, !72}
!1832 = distinct !{!1832, !72}
!1833 = distinct !{!1833, !72}
!1834 = distinct !{!1834, !72}
!1835 = distinct !{!1835, !72}
!1836 = distinct !{!1836, !72}
!1837 = distinct !{!1837, !72}
!1838 = distinct !{!1838, !72}
!1839 = distinct !{!1839, !72}
!1840 = distinct !{!1840, !72}
!1841 = distinct !{!1841, !72}
!1842 = distinct !{!1842, !72}
!1843 = distinct !{!1843, !72}
!1844 = distinct !{!1844, !72}
!1845 = distinct !{!1845, !72}
!1846 = distinct !{!1846, !72}
!1847 = distinct !{!1847, !72}
!1848 = distinct !{!1848, !72}
!1849 = distinct !{!1849, !72}
!1850 = distinct !{!1850, !72}
!1851 = distinct !{!1851, !72}
!1852 = distinct !{!1852, !72}
!1853 = distinct !{!1853, !72}
!1854 = distinct !{!1854, !72}
!1855 = distinct !{!1855, !72}
!1856 = distinct !{!1856, !72}
!1857 = distinct !{!1857, !72}
!1858 = distinct !{!1858, !72}
!1859 = distinct !{!1859, !72}
!1860 = distinct !{!1860, !72}
!1861 = distinct !{!1861, !72}
!1862 = distinct !{!1862, !72}
!1863 = distinct !{!1863, !72}
!1864 = distinct !{!1864, !72}
!1865 = distinct !{!1865, !72}
!1866 = distinct !{!1866, !72}
!1867 = distinct !{!1867, !72}
!1868 = distinct !{!1868, !72}
!1869 = distinct !{!1869, !72}
!1870 = distinct !{!1870, !72}
!1871 = distinct !{!1871, !72}
!1872 = distinct !{!1872, !72}
!1873 = distinct !{!1873, !72}
!1874 = distinct !{!1874, !72}
!1875 = distinct !{!1875, !72}
!1876 = distinct !{!1876, !72}
!1877 = !{!65, !65, i64 0}
!1878 = distinct !{!1878, !72}
!1879 = distinct !{!1879, !72}
!1880 = distinct !{!1880, !72}
!1881 = distinct !{!1881, !72}
!1882 = distinct !{!1882, !72}
!1883 = distinct !{!1883, !72}
!1884 = distinct !{!1884, !72}
!1885 = distinct !{!1885, !72}
!1886 = distinct !{!1886, !72}
!1887 = distinct !{!1887, !72}
!1888 = distinct !{!1888, !72}
!1889 = distinct !{!1889, !72}
!1890 = !{!1891, !1891, i64 0}
!1891 = !{!"double", !5, i64 0}
!1892 = distinct !{!1892, !72}
!1893 = distinct !{!1893, !72}
!1894 = distinct !{!1894, !72}
!1895 = distinct !{!1895, !72}
!1896 = distinct !{!1896, !72}
!1897 = distinct !{!1897, !72}
!1898 = distinct !{!1898, !72}
!1899 = distinct !{!1899, !72}
!1900 = distinct !{!1900, !72}
!1901 = distinct !{!1901, !72}
!1902 = distinct !{!1902, !72}
!1903 = distinct !{!1903, !72}
!1904 = distinct !{!1904, !72}
!1905 = distinct !{!1905, !72}
!1906 = distinct !{!1906, !72}
!1907 = distinct !{!1907, !72}
!1908 = distinct !{!1908, !72}
!1909 = distinct !{!1909, !72}
!1910 = distinct !{!1910, !72}
!1911 = distinct !{!1911, !72}
!1912 = distinct !{!1912, !72}
!1913 = distinct !{!1913, !72}
!1914 = distinct !{!1914, !72}
!1915 = distinct !{!1915, !72}
!1916 = !{!262, !262, i64 0}
!1917 = distinct !{!1917, !72}
!1918 = distinct !{!1918, !72}
!1919 = distinct !{!1919, !72}
!1920 = distinct !{!1920, !72}
!1921 = distinct !{!1921, !72}
!1922 = distinct !{!1922, !72}
!1923 = distinct !{!1923, !72}
!1924 = distinct !{!1924, !72, !242, !243}
!1925 = !{!1926}
!1926 = distinct !{!1926, !1927}
!1927 = distinct !{!1927, !"LVerDomain"}
!1928 = !{!1929}
!1929 = distinct !{!1929, !1927}
!1930 = distinct !{!1930, !252}
!1931 = distinct !{!1931, !72, !242}
!1932 = distinct !{!1932, !72, !242, !243}
!1933 = !{!1934}
!1934 = distinct !{!1934, !1935}
!1935 = distinct !{!1935, !"LVerDomain"}
!1936 = !{!1937}
!1937 = distinct !{!1937, !1935}
!1938 = distinct !{!1938, !252}
!1939 = distinct !{!1939, !72, !242}
!1940 = distinct !{!1940, !72}
!1941 = distinct !{!1941, !72, !242, !243}
!1942 = !{!1943}
!1943 = distinct !{!1943, !1944}
!1944 = distinct !{!1944, !"LVerDomain"}
!1945 = !{!1946}
!1946 = distinct !{!1946, !1944}
!1947 = distinct !{!1947, !252}
!1948 = distinct !{!1948, !72, !242}
!1949 = distinct !{!1949, !72, !242, !243}
!1950 = !{!1951}
!1951 = distinct !{!1951, !1952}
!1952 = distinct !{!1952, !"LVerDomain"}
!1953 = !{!1954}
!1954 = distinct !{!1954, !1952}
!1955 = distinct !{!1955, !252}
!1956 = distinct !{!1956, !72, !242}
!1957 = distinct !{!1957, !72, !242, !243}
!1958 = !{!1959}
!1959 = distinct !{!1959, !1960}
!1960 = distinct !{!1960, !"LVerDomain"}
!1961 = !{!1962}
!1962 = distinct !{!1962, !1960}
!1963 = distinct !{!1963, !252}
!1964 = distinct !{!1964, !72, !242}
!1965 = distinct !{!1965, !72, !242, !243}
!1966 = !{!1967}
!1967 = distinct !{!1967, !1968}
!1968 = distinct !{!1968, !"LVerDomain"}
!1969 = !{!1970}
!1970 = distinct !{!1970, !1968}
!1971 = distinct !{!1971, !252}
!1972 = distinct !{!1972, !72, !242}
!1973 = distinct !{!1973, !72, !242, !243}
!1974 = distinct !{!1974, !72, !243, !242}
!1975 = distinct !{!1975, !72}
!1976 = distinct !{!1976, !72, !242, !243}
!1977 = distinct !{!1977, !72, !243, !242}
!1978 = distinct !{!1978, !72, !242, !243}
!1979 = distinct !{!1979, !252}
!1980 = distinct !{!1980, !72, !242}
!1981 = distinct !{!1981, !72, !242, !243}
!1982 = distinct !{!1982, !252}
!1983 = distinct !{!1983, !72, !242}
!1984 = distinct !{!1984, !72}
!1985 = distinct !{!1985, !72, !242, !243}
!1986 = distinct !{!1986, !252}
!1987 = distinct !{!1987, !72, !242}
!1988 = distinct !{!1988, !72, !242, !243}
!1989 = distinct !{!1989, !252}
!1990 = distinct !{!1990, !72, !242}
!1991 = distinct !{!1991, !72}
!1992 = distinct !{!1992, !72}
!1993 = distinct !{!1993, !252}
!1994 = distinct !{!1994, !252}
!1995 = distinct !{!1995, !252}
!1996 = distinct !{!1996, !252}
!1997 = distinct !{!1997, !252}
!1998 = distinct !{!1998, !252}
!1999 = !{!2000, !2001, i64 8}
!2000 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_6VectorESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !2001, i64 0, !2001, i64 8, !2001, i64 16}
!2001 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEE", !19, i64 0}
!2002 = !{!2000, !2001, i64 0}
!2003 = !{!1223, !1223, i64 0}
!2004 = !{!2005, !1432, i64 312}
!2005 = !{!"_ZTSN6duckdb13GeoColumnDataE", !472, i64 0, !342, i64 296, !1432, i64 312}
!2006 = !{!1691, !1691, i64 0}
!2007 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2008 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_18StandardColumnDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2009 = !{!2010}
!2010 = distinct !{!2010, !2011, !"_ZSt11make_sharedIN6duckdb18StandardColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoERmRNS0_11LogicalTypeERNS0_14ColumnDataTypeEPNS0_13GeoColumnDataEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESF_E4typeEEDpOT0_: argument 0"}
!2011 = distinct !{!2011, !"_ZSt11make_sharedIN6duckdb18StandardColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoERmRNS0_11LogicalTypeERNS0_14ColumnDataTypeEPNS0_13GeoColumnDataEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESF_E4typeEEDpOT0_"}
!2012 = distinct !{null, null, null}
!2013 = !{!821, !821, i64 0}
!2014 = !{!1222, !1223, i64 0}
!2015 = !{!2016}
!2016 = distinct !{!2016, !2017, !"_ZN6duckdb9make_uniqINS_24GeoColumnCheckpointStateEJRKNS_8RowGroupERNS_13GeoColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!2017 = distinct !{!2017, !"_ZN6duckdb9make_uniqINS_24GeoColumnCheckpointStateEJRKNS_8RowGroupERNS_13GeoColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!2018 = distinct !{null}
!2019 = !{!2020, !678, i64 0}
!2020 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb21ColumnCheckpointStateELb0EE", !678, i64 0}
!2021 = !{!2022, !2022, i64 0}
!2022 = !{!"p1 _ZTSN6duckdb24GeoColumnCheckpointStateE", !19, i64 0}
!2023 = distinct !{null, ptr @_ZN6duckdb24GeoColumnCheckpointStateD2Ev, null, null}
!2024 = distinct !{null, ptr @_ZN6duckdb24GeoColumnCheckpointStateD2Ev, ptr @_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2025 = !{!2026}
!2026 = distinct !{!2026, !2027, !"_ZN6duckdb9make_uniqINS_24GeoColumnCheckpointStateEJRKNS_8RowGroupERNS_13GeoColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!2027 = distinct !{!2027, !"_ZN6duckdb9make_uniqINS_24GeoColumnCheckpointStateEJRKNS_8RowGroupERNS_13GeoColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!2028 = !{ptr @_ZNK6duckdb10ColumnData16GetStatisticsRefEv}
!2029 = !{ptr @_ZNK6duckdb13GeoColumnData13HasAnyChangesEv}
!2030 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2031 = distinct !{null, null, null, null, null, null}
!2032 = !{ptr @_ZN6duckdb13GeoColumnData14InitializeScanERNS_15ColumnScanStateE}
!2033 = distinct !{!2033, !72}
!2034 = !{!2035, !1432, i64 112}
!2035 = !{!"_ZTSN6duckdb24GeoColumnCheckpointStateE", !328, i64 0, !342, i64 88, !2036, i64 104, !1432, i64 112}
!2036 = !{!"_ZTSN6duckdb10unique_ptrINS_21ColumnCheckpointStateESt14default_deleteIS1_ELb1EEE", !2037, i64 0}
!2037 = !{!"_ZTSSt10unique_ptrIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EE", !2038, i64 0}
!2038 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_ELb1ELb1EE", !2039, i64 0}
!2039 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EE", !2040, i64 0}
!2040 = !{!"_ZTSSt5tupleIJPN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EEE", !2041, i64 0}
!2041 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb21ColumnCheckpointStateESt14default_deleteIS1_EEE", !2020, i64 0}
!2042 = distinct !{ptr @_ZN6duckdb17ColumnAppendStateD2Ev, null, null}
!2043 = !{ptr @_ZN6duckdb17ColumnAppendStateD2Ev}
!2044 = !{!2045, !2046, i64 0}
!2045 = !{!"_ZTSNSt12_Vector_baseIN6duckdb17ColumnAppendStateESaIS1_EE17_Vector_impl_dataE", !2046, i64 0, !2046, i64 8, !2046, i64 16}
!2046 = !{!"p1 _ZTSN6duckdb17ColumnAppendStateE", !19, i64 0}
!2047 = !{!2045, !2046, i64 8}
!2048 = distinct !{ptr @_ZN6duckdb17ColumnAppendStateD2Ev, null}
!2049 = !{!2050, !2051, i64 0}
!2050 = !{!"_ZTSSt17reference_wrapperIN6duckdb18RowGroupCollectionEE", !2051, i64 0}
!2051 = !{!"p1 _ZTSN6duckdb18RowGroupCollectionE", !19, i64 0}
!2052 = !{!2053, !2053, i64 0}
!2053 = !{!"_ZTSN6duckdb12GeometryTypeE", !5, i64 0}
!2054 = !{!2055, !2055, i64 0}
!2055 = !{!"_ZTSN6duckdb10VertexTypeE", !5, i64 0}
!2056 = !{!2057, !5, i64 0}
!2057 = !{!"_ZTSN6duckdb18GeometryStatsFlagsE", !5, i64 0}
!2058 = distinct !{!2058, !72}
!2059 = distinct !{ptr @_ZNSt10unique_ptrIN6duckdb24GeoColumnCheckpointStateESt14default_deleteIS1_EED2Ev, null, ptr @_ZN6duckdb24GeoColumnCheckpointStateD2Ev, null, null}
!2060 = distinct !{ptr @_ZNSt10unique_ptrIN6duckdb24GeoColumnCheckpointStateESt14default_deleteIS1_EED2Ev, null, ptr @_ZN6duckdb24GeoColumnCheckpointStateD2Ev, ptr @_ZN6duckdb10shared_ptrINS_10ColumnDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2061 = distinct !{null}
!2062 = !{!2063, !1891, i64 0}
!2063 = !{!"_ZTSN6duckdb14GeometryExtentE", !1891, i64 0, !1891, i64 8, !1891, i64 16, !1891, i64 24, !1891, i64 32, !1891, i64 40, !1891, i64 48, !1891, i64 56}
!2064 = !{!2063, !1891, i64 32}
!2065 = !{!2063, !1891, i64 8}
!2066 = !{!2063, !1891, i64 40}
!2067 = !{!2063, !1891, i64 16}
!2068 = !{!2063, !1891, i64 24}
!2069 = !{!2063, !1891, i64 48}
!2070 = !{!2071}
!2071 = distinct !{!2071, !2072, !"_ZN6duckdb9make_uniqINS_28GeometryPersistentColumnDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!2072 = distinct !{!2072, !"_ZN6duckdb9make_uniqINS_28GeometryPersistentColumnDataEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!2073 = !{!2074, !2074, i64 0}
!2074 = !{!"p1 _ZTSN6duckdb28GeometryPersistentColumnDataE", !19, i64 0}
!2075 = distinct !{null, null, null, null, null, null}
!2076 = !{!1275, !51, i64 16}
!2077 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!2078 = !{!2079}
!2079 = distinct !{!2079, !2080, !"_ZN6duckdb15make_shared_ptrINS_18ValidityColumnDataEJRNS_12BlockManagerERNS_13DataTableInfoEiRNS_15ArrayColumnDataEEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!2080 = distinct !{!2080, !"_ZN6duckdb15make_shared_ptrINS_18ValidityColumnDataEJRNS_12BlockManagerERNS_13DataTableInfoEiRNS_15ArrayColumnDataEEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!2081 = !{!2082, !2079}
!2082 = distinct !{!2082, !2083, !"_ZSt11make_sharedIN6duckdb18ValidityColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoEiRNS0_15ArrayColumnDataEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!2083 = distinct !{!2083, !"_ZSt11make_sharedIN6duckdb18ValidityColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoEiRNS0_15ArrayColumnDataEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!2084 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2085 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_18ValidityColumnDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2086 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_18ValidityColumnDataELb1EED2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2087 = distinct !{!2087, !72}
!2088 = distinct !{!2088, !72}
!2089 = !{!2045, !2046, i64 16}
!2090 = !{!2046, !2046, i64 0}
!2091 = !{!1046, !1046, i64 0}
!2092 = !{!2093}
!2093 = distinct !{!2093, !2094, !"_ZN6duckdb9make_uniqINS_16ColumnFetchStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!2094 = distinct !{!2094, !"_ZN6duckdb9make_uniqINS_16ColumnFetchStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!2095 = !{!1045, !1046, i64 16}
!2096 = distinct !{null}
!2097 = !{!2098}
!2098 = distinct !{!2098, !2099, !"_ZN6duckdb9make_uniqINS_26ArrayColumnCheckpointStateEJRKNS_8RowGroupERNS_15ArrayColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!2099 = distinct !{!2099, !"_ZN6duckdb9make_uniqINS_26ArrayColumnCheckpointStateEJRKNS_8RowGroupERNS_15ArrayColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!2100 = distinct !{null}
!2101 = !{!2102}
!2102 = distinct !{!2102, !2103, !"_ZN6duckdb9make_uniqINS_26ArrayColumnCheckpointStateEJRKNS_8RowGroupERNS_15ArrayColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!2103 = distinct !{!2103, !"_ZN6duckdb9make_uniqINS_26ArrayColumnCheckpointStateEJRKNS_8RowGroupERNS_15ArrayColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!2104 = !{!2105, !2105, i64 0}
!2105 = !{!"p1 _ZTSN6duckdb26ArrayColumnCheckpointStateE", !19, i64 0}
!2106 = distinct !{null, null}
!2107 = !{!2108}
!2108 = distinct !{!2108, !2109, !"_ZN6duckdb15make_shared_ptrINS_18ValidityColumnDataEJRNS_12BlockManagerERNS_13DataTableInfoEiRNS_14ListColumnDataEEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!2109 = distinct !{!2109, !"_ZN6duckdb15make_shared_ptrINS_18ValidityColumnDataEJRNS_12BlockManagerERNS_13DataTableInfoEiRNS_14ListColumnDataEEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!2110 = !{!2111, !2108}
!2111 = distinct !{!2111, !2112, !"_ZSt11make_sharedIN6duckdb18ValidityColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoEiRNS0_14ListColumnDataEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_: argument 0"}
!2112 = distinct !{!2112, !"_ZSt11make_sharedIN6duckdb18ValidityColumnDataEJRNS0_12BlockManagerERNS0_13DataTableInfoEiRNS0_14ListColumnDataEEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_"}
!2113 = distinct !{null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2114 = !{!694, !38, i64 32}
!2115 = !{!2116, !9, i64 0}
!2116 = !{!"_ZTSN6duckdb12list_entry_tE", !9, i64 0, !9, i64 8}
!2117 = !{!2116, !9, i64 8}
!2118 = distinct !{!2118, !72}
!2119 = distinct !{!2119, !72}
!2120 = distinct !{!2120, !72, !243, !242}
!2121 = distinct !{!2121, !72}
!2122 = distinct !{!2122, !72, !242, !243}
!2123 = distinct !{!2123, !72, !243, !242}
!2124 = distinct !{!2124, !72, !242, !243}
!2125 = distinct !{!2125, !72, !243, !242}
!2126 = distinct !{!2126, !72, !242, !243}
!2127 = distinct !{!2127, !72, !242, !243}
!2128 = distinct !{!2128, !72, !243, !242}
!2129 = !{!1194, !404, i64 72}
!2130 = distinct !{null, null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2131 = !{!2132}
!2132 = distinct !{!2132, !2133, !"_ZN6duckdb9make_uniqINS_16ColumnFetchStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!2133 = distinct !{!2133, !"_ZN6duckdb9make_uniqINS_16ColumnFetchStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!2134 = !{!2135}
!2135 = distinct !{!2135, !2136, !"_ZN6duckdb9make_uniqINS_25ListColumnCheckpointStateEJRKNS_8RowGroupERNS_14ListColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!2136 = distinct !{!2136, !"_ZN6duckdb9make_uniqINS_25ListColumnCheckpointStateEJRKNS_8RowGroupERNS_14ListColumnDataERNS_19PartialBlockManagerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!2137 = distinct !{null}
!2138 = !{!511, !511, i64 0}
!2139 = !{i64 0, i64 4, !2140, i64 4, i64 4, !2141, i64 8, i64 4, !2142, i64 16, i64 8, !24, i64 24, i64 8, !2143}
!2140 = !{!899, !899, i64 0}
!2141 = !{!900, !900, i64 0}
!2142 = !{!901, !901, i64 0}
!2143 = !{!903, !903, i64 0}
!2144 = !{!2145, !511, i64 8}
!2145 = !{!"_ZTSN6duckdb16CheckpointWriterE", !511, i64 8}
!2146 = !{!2147, !2147, i64 0}
!2147 = !{!"p1 _ZTSN6duckdb6vectorISt17reference_wrapperINS_18SchemaCatalogEntryEELb1ESaIS3_EEE", !19, i64 0}
!2148 = !{!2149, !19, i64 24}
!2149 = !{!"_ZTSSt8functionIFvRN6duckdb18SchemaCatalogEntryEEE", !831, i64 0, !19, i64 24}
!2150 = !{!2151, !2151, i64 0}
!2151 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEE", !19, i64 0}
!2152 = !{!2153, !2153, i64 0}
!2153 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb17TableCatalogEntryEE", !19, i64 0}
!2154 = !{!2155, !2156, i64 0}
!2155 = !{!"_ZTSSt17reference_wrapperIN6duckdb18SchemaCatalogEntryEE", !2156, i64 0}
!2156 = !{!"p1 _ZTSN6duckdb18SchemaCatalogEntryE", !19, i64 0}
!2157 = !{!2158, !2158, i64 0}
!2158 = !{!"p1 _ZTSN6duckdb6vectorISt17reference_wrapperINS_17TableCatalogEntryEELb1ESaIS3_EEE", !19, i64 0}
!2159 = !{!2160, !582, i64 152}
!2160 = !{!"_ZTSN6duckdb20InMemoryCheckpointerE", !2145, i64 0, !784, i64 16, !2161, i64 24, !582, i64 152, !898, i64 160}
!2161 = !{!"_ZTSN6duckdb19PartialBlockManagerE", !784, i64 8, !79, i64 16, !2162, i64 24, !445, i64 32, !2163, i64 72, !4, i64 120, !4, i64 124}
!2162 = !{!"_ZTSN6duckdb16PartialBlockTypeE", !5, i64 0}
!2163 = !{!"_ZTSSt8multimapImN6duckdb10unique_ptrINS0_12PartialBlockESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE", !2164, i64 0}
!2164 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_12PartialBlockESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE", !2165, i64 0}
!2165 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_12PartialBlockESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !2166, i64 0, !2168, i64 8}
!2166 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !2167, i64 0}
!2167 = !{!"_ZTSSt4lessImE"}
!2168 = !{!"_ZTSSt15_Rb_tree_header", !2169, i64 0, !9, i64 32}
!2169 = !{!"_ZTSSt18_Rb_tree_node_base", !2170, i64 0, !2171, i64 8, !2171, i64 16, !2171, i64 24}
!2170 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
end_hunk_1
