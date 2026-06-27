inline.NumInlined: 193
inline.NumDeleted: 37
begin_hunk_0_@symtable_visit_stmt:bb.a
  %i.aem = getelementptr i8, ptr %1, i64 28
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !22
  %.not1398 = icmp eq i32 %i.aen, 0
  br i1 %.not1398, label %.thread1783, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.aeo = tail call fastcc i32 @check_lazy_import_context(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.33)
  %.not1399 = icmp eq i32 %i.aeo, 0
  br i1 %.not1399, label %Py_DECREF.exit1643.thread, label %.preheader1896

.preheader1896:                                   ; preds = %bb.fc
  %i.aep = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %i.aeq = load ptr, ptr %i.aep, align 8, !tbaa !22 ; 2 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %.critedge1841, label %.lr.ph1982.a

.lr.ph1982.a:                                     ; preds = %.preheader1896, %bb.ff
  %i.aes = phi ptr [ %i.afa, %bb.ff ], [ %i.aeq, %.preheader1896 ] ; 4 uses
  %.012711981 = phi i64 [ %i.afb, %bb.ff ], [ 0, %.preheader1896 ] ; 3 uses
  %i.aet = load i64, ptr %i.aes, align 8, !tbaa !43 ; 2 uses
  %i.aeu = icmp slt i64 %.012711981, %i.aet
  br i1 %i.aeu, label %bb.fd, label %.lr.ph1985

bb.fd:                                            ; preds = %.lr.ph1982.a
  %i.aev = getelementptr i8, ptr %i.aes, i64 16
  %i.aew = getelementptr [8 x i8], ptr %i.aev, i64 %.012711981
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !114
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !116 ; 2 uses
  %.not1400 = icmp eq ptr %i.aey, null
  br i1 %.not1400, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.aez = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %i.aey, ptr noundef nonnull @.str.34) #7
  %.not1401 = icmp eq i32 %i.aez, 0
  br i1 %.not1401, label %._crit_edge, label %bb.fg

._crit_edge:                                      ; preds = %bb.fe
  %.pre2181 = load ptr, ptr %i.aep, align 8, !tbaa !22
  br label %bb.ff

bb.ff:                                            ; preds = %._crit_edge, %bb.fd
  %i.afa = phi ptr [ %.pre2181, %._crit_edge ], [ %i.aes, %bb.fd ] ; 2 uses
  %i.afb = add nuw nsw i64 %.012711981, 1
  %i.afc = icmp eq ptr %i.afa, null
  br i1 %i.afc, label %.critedge1841, label %.lr.ph1982.a, !llvm.loop !118

bb.fg:                                            ; preds = %bb.fe
  %i.afd = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.afd, ptr noundef nonnull @.str.35) #7
  %i.afe = load ptr, ptr %0, align 8, !tbaa !31
  %i.aff = getelementptr i8, ptr %1, i64 64
  %i.afg = load i32, ptr %i.aff, align 8, !tbaa !62
  %i.afh = getelementptr i8, ptr %1, i64 72
  %i.afi = getelementptr i8, ptr %1, i64 68
  %i.afj = getelementptr i8, ptr %1, i64 76
  %i.afk = load i32, ptr %i.afi, align 4, !tbaa !64
  %i.afl = add i32 %i.afk, 1
  %i.afm = load i32, ptr %i.afh, align 8, !tbaa !63
  %i.afn = load i32, ptr %i.afj, align 4, !tbaa !65
  %i.afo = add i32 %i.afn, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.afe, i32 noundef %i.afg, i32 noundef %i.afl, i32 noundef %i.afm, i32 noundef %i.afo) #7
  br label %Py_DECREF.exit1643.thread

.thread1783:                                      ; preds = %bb.fb
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 16
  %.pre2182 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !22 ; 3 uses
  %i.afp = icmp eq ptr %.pre2182, null
  br i1 %i.afp, label %.critedge1841, label %.lr.ph1985thread-pre-split

.lr.ph1985thread-pre-split:                       ; preds = %.thread1783
  %.pr = load i64, ptr %.pre2182, align 8, !tbaa !43
  br label %.lr.ph1985

.lr.ph1985:                                       ; preds = %.lr.ph1982.a, %.lr.ph1985thread-pre-split
  %i.afq = phi i64 [ %.pr, %.lr.ph1985thread-pre-split ], [ %i.aet, %.lr.ph1982.a ]
  %i.afr = phi ptr [ %.pre2182, %.lr.ph1985thread-pre-split ], [ %i.aes, %.lr.ph1982.a ] ; 2 uses
  %i.afs = getelementptr i8, ptr %i.afr, i64 16
  %i.aft = icmp sgt i64 %i.afq, 0
  br i1 %i.aft, label %.lr.ph1988, label %.critedge1841

bb.fh:                                            ; preds = %.lr.ph1988
  %i.afu = add nuw nsw i64 %.0127219841987, 1     ; 2 uses
  %i.afv = load i64, ptr %i.afr, align 8, !tbaa !43
  %i.afw = icmp slt i64 %i.afu, %i.afv
  br i1 %i.afw, label %.lr.ph1988, label %.critedge1841

.lr.ph1988:                                       ; preds = %.lr.ph1985, %bb.fh
  %.0127219841987 = phi i64 [ %i.afu, %bb.fh ], [ 0, %.lr.ph1985 ] ; 2 uses
  %i.afx = getelementptr [8 x i8], ptr %i.afs, i64 %.0127219841987
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !114
  %i.afz = tail call fastcc i32 @symtable_visit_alias(ptr noundef %0, ptr noundef %i.afy)
  %.not1403.not = icmp eq i32 %i.afz, 0
  br i1 %.not1403.not, label %Py_DECREF.exit1643.thread, label %bb.fh

.critedge1841:                                    ; preds = %bb.ff, %bb.fh, %.preheader1896, %.lr.ph1985, %.thread1783
  %i.aga = tail call fastcc i32 @check_import_from(ptr noundef %0, ptr noundef %1)
  %.not1405 = icmp eq i32 %i.aga, 0
  br i1 %.not1405, label %Py_DECREF.exit1643.thread, label %Py_DECREF.exit1643

bb.fi:                                            ; preds = %bb.b
  %i.agb = getelementptr i8, ptr %1, i64 8
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !22 ; 4 uses
  %i.agd = icmp eq ptr %i.agc, null
  br i1 %i.agd, label %Py_DECREF.exit1643, label %.lr.ph1979

.lr.ph1979:                                       ; preds = %bb.fi
  %i.age = getelementptr i8, ptr %i.agc, i64 16
  %i.agf = getelementptr i8, ptr %0, i64 8        ; 2 uses
  %i.agg = getelementptr i8, ptr %0, i64 56
  %i.agh = getelementptr i8, ptr %1, i64 64       ; 3 uses
  %i.agi = getelementptr i8, ptr %1, i64 72       ; 3 uses
  %i.agj = getelementptr i8, ptr %1, i64 68       ; 3 uses
  %i.agk = getelementptr i8, ptr %1, i64 76       ; 3 uses
  %i.agl = load i64, ptr %i.agc, align 8, !tbaa !43
  %i.agm = icmp sgt i64 %i.agl, 0
  br i1 %i.agm, label %.lr.ph2460, label %Py_DECREF.exit1643

bb.fj:                                            ; preds = %bb.fq
  %i.agn = add nuw nsw i64 %.0127419782459, 1     ; 2 uses
  %i.ago = load i64, ptr %i.agc, align 8, !tbaa !43
  %i.agp = icmp slt i64 %i.agn, %i.ago
  br i1 %i.agp, label %.lr.ph2460, label %Py_DECREF.exit1643

.lr.ph2460:                                       ; preds = %.lr.ph1979, %bb.fj
  %.0127419782459 = phi i64 [ %i.agn, %bb.fj ], [ 0, %.lr.ph1979 ] ; 2 uses
  %i.agq = getelementptr [8 x i8], ptr %i.age, i64 %.0127419782459
  %i.agr = load ptr, ptr %i.agq, align 8, !tbaa !49 ; 4 uses
  %.val1659 = load ptr, ptr %i.agf, align 8, !tbaa !35
  %.val1660 = load ptr, ptr %i.agg, align 8, !tbaa !36
  %i.ags = tail call fastcc range(i64 -1, -9223372036854775808) i64 @symtable_lookup_entry(ptr %.val1660, ptr noundef readonly %.val1659, ptr noundef %i.agr) ; 5 uses
  %i.agt = icmp slt i64 %i.ags, 0
  br i1 %i.agt, label %Py_DECREF.exit1643.thread, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph2460
  %i.agu = and i64 %i.ags, 278
  %.not1392 = icmp eq i64 %i.agu, 0
  br i1 %.not1392, label %bb.fp, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.agv = and i64 %i.ags, 4
  %.not1395 = icmp eq i64 %i.agv, 0
  br i1 %.not1395, label %bb.fm, label %bb.fo

bb.fm:                                            ; preds = %bb.fl
  %i.agw = and i64 %i.ags, 16
  %.not1396 = icmp eq i64 %i.agw, 0
  br i1 %.not1396, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.agx = and i64 %i.ags, 256
  %.not1397 = icmp eq i64 %i.agx, 0
  %.str.38..str.30 = select i1 %.not1397, ptr @.str.38, ptr @.str.30
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm, %bb.fl
  %.01275 = phi ptr [ @.str.37, %bb.fm ], [ @.str.36, %bb.fl ], [ %.str.38..str.30, %bb.fn ]
  %i.agy = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.agz = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.agy, ptr noundef nonnull %.01275, ptr noundef %i.agr) #7 ; 0 uses
  %i.aha = load ptr, ptr %0, align 8, !tbaa !31
  %i.ahb = load i32, ptr %i.agh, align 8, !tbaa !62
  %i.ahc = load i32, ptr %i.agj, align 4, !tbaa !64
  %i.ahd = add i32 %i.ahc, 1
  %i.ahe = load i32, ptr %i.agi, align 8, !tbaa !63
  %i.ahf = load i32, ptr %i.agk, align 4, !tbaa !65
  %i.ahg = add i32 %i.ahf, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.aha, i32 noundef %i.ahb, i32 noundef %i.ahd, i32 noundef %i.ahe, i32 noundef %i.ahg) #7
  br label %Py_DECREF.exit1643.thread

bb.fp:                                            ; preds = %bb.fk
  %i.ahh = load i32, ptr %i.agh, align 8, !tbaa !62
  %i.ahi = load i32, ptr %i.agi, align 8, !tbaa !63
  %i.ahj = load i32, ptr %i.agj, align 4, !tbaa !64
  %i.ahk = load i32, ptr %i.agk, align 4, !tbaa !65
  %.sroa.2212.0.insert.ext = zext i32 %i.ahi to i64
  %.sroa.2212.0.insert.shift = shl nuw i64 %.sroa.2212.0.insert.ext, 32
  %.sroa.0211.0.insert.ext = zext i32 %i.ahh to i64
  %.sroa.0211.0.insert.insert = or disjoint i64 %.sroa.2212.0.insert.shift, %.sroa.0211.0.insert.ext
  %.sroa.5214.8.insert.ext = zext i32 %i.ahk to i64
  %.sroa.5214.8.insert.shift = shl nuw i64 %.sroa.5214.8.insert.ext, 32
  %.sroa.3213.8.insert.ext = zext i32 %i.ahj to i64
  %.sroa.3213.8.insert.insert = or disjoint i64 %.sroa.5214.8.insert.shift, %.sroa.3213.8.insert.ext
  %i.ahl = load ptr, ptr %i.agf, align 8, !tbaa !35
  %i.ahm = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef %i.agr, i32 noundef 1, ptr noundef %i.ahl, i64 %.sroa.0211.0.insert.insert, i64 %.sroa.3213.8.insert.insert)
  %.not1393 = icmp eq i32 %i.ahm, 0
  br i1 %.not1393, label %Py_DECREF.exit1643.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ahn = load i32, ptr %i.agh, align 8, !tbaa !62
  %i.aho = load i32, ptr %i.agi, align 8, !tbaa !63
  %i.ahp = load i32, ptr %i.agj, align 4, !tbaa !64
  %i.ahq = load i32, ptr %i.agk, align 4, !tbaa !65
  %.sroa.2208.0.insert.ext = zext i32 %i.aho to i64
  %.sroa.2208.0.insert.shift = shl nuw i64 %.sroa.2208.0.insert.ext, 32
  %.sroa.0207.0.insert.ext = zext i32 %i.ahn to i64
  %.sroa.0207.0.insert.insert = or disjoint i64 %.sroa.2208.0.insert.shift, %.sroa.0207.0.insert.ext
  %.sroa.5210.8.insert.ext = zext i32 %i.ahq to i64
  %.sroa.5210.8.insert.shift = shl nuw i64 %.sroa.5210.8.insert.ext, 32
  %.sroa.3209.8.insert.ext = zext i32 %i.ahp to i64
  %.sroa.3209.8.insert.insert = or disjoint i64 %.sroa.5210.8.insert.shift, %.sroa.3209.8.insert.ext
  %i.ahr = tail call fastcc i32 @symtable_record_directive(ptr noundef %0, ptr noundef %i.agr, i64 %.sroa.0207.0.insert.insert, i64 %.sroa.3209.8.insert.insert)
  %.not1394 = trunc nuw i32 %i.ahr to i1
  br i1 %.not1394, label %bb.fj, label %Py_DECREF.exit1643.thread

bb.fr:                                            ; preds = %bb.b
  %i.ahs = getelementptr i8, ptr %1, i64 8
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !22 ; 4 uses
  %i.ahu = icmp eq ptr %i.aht, null
  br i1 %i.ahu, label %Py_DECREF.exit1643, label %.lr.ph1976

.lr.ph1976:                                       ; preds = %bb.fr
  %i.ahv = getelementptr i8, ptr %i.aht, i64 16
  %i.ahw = getelementptr i8, ptr %0, i64 8        ; 2 uses
  %i.ahx = getelementptr i8, ptr %0, i64 56
  %i.ahy = getelementptr i8, ptr %1, i64 64       ; 3 uses
  %i.ahz = getelementptr i8, ptr %1, i64 72       ; 3 uses
  %i.aia = getelementptr i8, ptr %1, i64 68       ; 3 uses
  %i.aib = getelementptr i8, ptr %1, i64 76       ; 3 uses
  %i.aic = load i64, ptr %i.aht, align 8, !tbaa !43
  %i.aid = icmp sgt i64 %i.aic, 0
  br i1 %i.aid, label %.lr.ph2458, label %Py_DECREF.exit1643

bb.fs:                                            ; preds = %bb.fz
  %i.aie = add nuw nsw i64 %.0127619752457, 1     ; 2 uses
  %i.aif = load i64, ptr %i.aht, align 8, !tbaa !43
  %i.aig = icmp slt i64 %i.aie, %i.aif
  br i1 %i.aig, label %.lr.ph2458, label %Py_DECREF.exit1643

.lr.ph2458:                                       ; preds = %.lr.ph1976, %bb.fs
  %.0127619752457 = phi i64 [ %i.aie, %bb.fs ], [ 0, %.lr.ph1976 ] ; 2 uses
  %i.aih = getelementptr [8 x i8], ptr %i.ahv, i64 %.0127619752457
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !49 ; 4 uses
  %.val1657 = load ptr, ptr %i.ahw, align 8, !tbaa !35
  %.val1658 = load ptr, ptr %i.ahx, align 8, !tbaa !36
  %i.aij = tail call fastcc range(i64 -1, -9223372036854775808) i64 @symtable_lookup_entry(ptr %.val1658, ptr noundef readonly %.val1657, ptr noundef %i.aii) ; 5 uses
  %i.aik = icmp slt i64 %i.aij, 0
  br i1 %i.aik, label %Py_DECREF.exit1643.thread, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph2458
  %i.ail = and i64 %i.aij, 278
  %.not1386 = icmp eq i64 %i.ail, 0
  br i1 %.not1386, label %bb.fy, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aim = and i64 %i.aij, 4
  %.not1389 = icmp eq i64 %i.aim, 0
  br i1 %.not1389, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %bb.fu
  %i.ain = and i64 %i.aij, 16
  %.not1390 = icmp eq i64 %i.ain, 0
  br i1 %.not1390, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.aio = and i64 %i.aij, 256
  %.not1391 = icmp eq i64 %i.aio, 0
  %.str.41..str.31 = select i1 %.not1391, ptr @.str.41, ptr @.str.31
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.fu
  %.01277 = phi ptr [ @.str.40, %bb.fv ], [ @.str.39, %bb.fu ], [ %.str.41..str.31, %bb.fw ]
  %i.aip = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !49
  %i.aiq = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aip, ptr noundef nonnull %.01277, ptr noundef %i.aii) #7 ; 0 uses
  %i.air = load ptr, ptr %0, align 8, !tbaa !31
  %i.ais = load i32, ptr %i.ahy, align 8, !tbaa !62
  %i.ait = load i32, ptr %i.aia, align 4, !tbaa !64
  %i.aiu = add i32 %i.ait, 1
  %i.aiv = load i32, ptr %i.ahz, align 8, !tbaa !63
  %i.aiw = load i32, ptr %i.aib, align 4, !tbaa !65
  %i.aix = add i32 %i.aiw, 1
  tail call void @PyErr_RangedSyntaxLocationObject(ptr noundef %i.air, i32 noundef %i.ais, i32 noundef %i.aiu, i32 noundef %i.aiv, i32 noundef %i.aix) #7
  br label %Py_DECREF.exit1643.thread

bb.fy:                                            ; preds = %bb.ft
  %i.aiy = load i32, ptr %i.ahy, align 8, !tbaa !62
  %i.aiz = load i32, ptr %i.ahz, align 8, !tbaa !63
  %i.aja = load i32, ptr %i.aia, align 4, !tbaa !64
  %i.ajb = load i32, ptr %i.aib, align 4, !tbaa !65
  %.sroa.2174.0.insert.ext = zext i32 %i.aiz to i64
  %.sroa.2174.0.insert.shift = shl nuw i64 %.sroa.2174.0.insert.ext, 32
  %.sroa.0173.0.insert.ext = zext i32 %i.aiy to i64
  %.sroa.0173.0.insert.insert = or disjoint i64 %.sroa.2174.0.insert.shift, %.sroa.0173.0.insert.ext
  %.sroa.5176.8.insert.ext = zext i32 %i.ajb to i64
  %.sroa.5176.8.insert.shift = shl nuw i64 %.sroa.5176.8.insert.ext, 32
  %.sroa.3175.8.insert.ext = zext i32 %i.aja to i64
  %.sroa.3175.8.insert.insert = or disjoint i64 %.sroa.5176.8.insert.shift, %.sroa.3175.8.insert.ext
  %i.ajc = load ptr, ptr %i.ahw, align 8, !tbaa !35
  %i.ajd = tail call fastcc i32 @symtable_add_def_helper(ptr noundef nonnull readonly %0, ptr noundef %i.aii, i32 noundef 8, ptr noundef %i.ajc, i64 %.sroa.0173.0.insert.insert, i64 %.sroa.3175.8.insert.insert)
  %.not1387 = icmp eq i32 %i.ajd, 0
  br i1 %.not1387, label %Py_DECREF.exit1643.thread, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aje = load i32, ptr %i.ahy, align 8, !tbaa !62
  %i.ajf = load i32, ptr %i.ahz, align 8, !tbaa !63
  %i.ajg = load i32, ptr %i.aia, align 4, !tbaa !64
  %i.ajh = load i32, ptr %i.aib, align 4, !tbaa !65
  %.sroa.2170.0.insert.ext = zext i32 %i.ajf to i64
  %.sroa.2170.0.insert.shift = shl nuw i64 %.sroa.2170.0.insert.ext, 32
  %.sroa.0169.0.insert.ext = zext i32 %i.aje to i64
  %.sroa.0169.0.insert.insert = or disjoint i64 %.sroa.2170.0.insert.shift, %.sroa.0169.0.insert.ext
  %.sroa.5172.8.insert.ext = zext i32 %i.ajh to i64
  %.sroa.5172.8.insert.shift = shl nuw i64 %.sroa.5172.8.insert.ext, 32
  %.sroa.3171.8.insert.ext = zext i32 %i.ajg to i64
  %.sroa.3171.8.insert.insert = or disjoint i64 %.sroa.5172.8.insert.shift, %.sroa.3171.8.insert.ext
  %i.aji = tail call fastcc i32 @symtable_record_directive(ptr noundef %0, ptr noundef %i.aii, i64 %.sroa.0169.0.insert.insert, i64 %.sroa.3171.8.insert.insert)
  %.not1388 = trunc nuw i32 %i.aji to i1
  br i1 %.not1388, label %bb.fs, label %Py_DECREF.exit1643.thread

bb.ga:                                            ; preds = %bb.b
  %i.ajj = getelementptr i8, ptr %1, i64 8
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !22
  %i.ajl = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.ajk)
  %.not1385 = icmp eq i32 %i.ajl, 0
  br i1 %.not1385, label %Py_DECREF.exit1643.thread, label %Py_DECREF.exit1643

bb.gb:                                            ; preds = %bb.b
  %i.ajm = getelementptr i8, ptr %0, i64 8        ; 2 uses
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !35
  %i.ajo = getelementptr i8, ptr %i.ajn, i64 100  ; 2 uses
  %i.ajp = load i16, ptr %i.ajo, align 4          ; 2 uses
  %i.ajq = and i16 %i.ajp, 2048
  %i.ajr = or i16 %i.ajp, 2048
  store i16 %i.ajr, ptr %i.ajo, align 4
  %i.ajs = getelementptr i8, ptr %1, i64 8
  %i.ajt = load ptr, ptr %i.ajs, align 8, !tbaa !22 ; 4 uses
  %i.aju = icmp eq ptr %i.ajt, null
  br i1 %i.aju, label %.critedge1608, label %.lr.ph

.lr.ph:                                           ; preds = %bb.gb
  %i.ajv = getelementptr i8, ptr %i.ajt, i64 16
  %i.ajw = load i64, ptr %i.ajt, align 8, !tbaa !43
  %i.ajx = icmp sgt i64 %i.ajw, 0
  br i1 %i.ajx, label %.lr.ph1935, label %.critedge1608

.lr.ph1935:                                       ; preds = %.lr.ph, %symtable_visit_withitem.exit
  %.0127819321934 = phi i64 [ %i.akf, %symtable_visit_withitem.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.ajy = getelementptr [8 x i8], ptr %i.ajv, i64 %.0127819321934
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !119 ; 2 uses
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !121
  %i.akb = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef %i.aka)
  %.not.i1685 = icmp eq i32 %i.akb, 0
  br i1 %.not.i1685, label %Py_DECREF.exit1643.thread, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph1935
  %i.akc = getelementptr i8, ptr %i.ajz, i64 8
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !123 ; 2 uses
  %.not6.i = icmp eq ptr %i.akd, null
  br i1 %.not6.i, label %symtable_visit_withitem.exit, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ake = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef nonnull %i.akd)
  %.not7.i = icmp eq i32 %i.ake, 0
  br i1 %.not7.i, label %Py_DECREF.exit1643.thread, label %symtable_visit_withitem.exit

symtable_visit_withitem.exit:                     ; preds = %bb.gd, %bb.gc
  %i.akf = add nuw nsw i64 %.0127819321934, 1     ; 2 uses
  %i.akg = load i64, ptr %i.ajt, align 8, !tbaa !43
  %i.akh = icmp slt i64 %i.akf, %i.akg
  br i1 %i.akh, label %.lr.ph1935, label %.critedge1608

.critedge1608:                                    ; preds = %symtable_visit_withitem.exit, %.lr.ph, %bb.gb
  %i.aki = getelementptr i8, ptr %1, i64 16
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !22 ; 4 uses
  %i.akk = icmp eq ptr %i.akj, null
  br i1 %i.akk, label %.critedge1848, label %.lr.ph1937

.lr.ph1937:                                       ; preds = %.critedge1608
  %i.akl = getelementptr i8, ptr %i.akj, i64 16
  %i.akm = load i64, ptr %i.akj, align 8, !tbaa !43
  %i.akn = icmp sgt i64 %i.akm, 0
  br i1 %i.akn, label %.lr.ph1940, label %.critedge1848

bb.ge:                                            ; preds = %.lr.ph1940
  %i.ako = add nuw nsw i64 %.0127919361939, 1     ; 2 uses
  %i.akp = load i64, ptr %i.akj, align 8, !tbaa !43
  %i.akq = icmp slt i64 %i.ako, %i.akp
  br i1 %i.akq, label %.lr.ph1940, label %.critedge1848

.lr.ph1940:                                       ; preds = %.lr.ph1937, %bb.ge
  %.0127919361939 = phi i64 [ %i.ako, %bb.ge ], [ 0, %.lr.ph1937 ] ; 2 uses
  %i.akr = getelementptr [8 x i8], ptr %i.akl, i64 %.0127919361939
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !47
  %i.akt = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.aks)
  %.not1349.not = icmp eq i32 %i.akt, 0
  br i1 %.not1349.not, label %Py_DECREF.exit1643.thread, label %bb.ge

.critedge1848:                                    ; preds = %bb.ge, %.lr.ph1937, %.critedge1608
  %i.aku = load ptr, ptr %i.ajm, align 8, !tbaa !35
  %i.akv = getelementptr i8, ptr %i.aku, i64 100  ; 2 uses
  %i.akw = load i16, ptr %i.akv, align 4
  %i.akx = and i16 %i.akw, -2049
  %i.aky = or disjoint i16 %i.akx, %i.ajq
  store i16 %i.aky, ptr %i.akv, align 4
  br label %Py_DECREF.exit1643

bb.gf:                                            ; preds = %bb.b
  %i.akz = getelementptr i8, ptr %1, i64 8        ; 3 uses
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !22
  %i.alb = getelementptr i8, ptr %1, i64 64       ; 3 uses
  %i.alc = load i32, ptr %i.alb, align 8, !tbaa !62
  %i.ald = getelementptr i8, ptr %1, i64 72       ; 3 uses
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !63
  %i.alf = getelementptr i8, ptr %1, i64 68       ; 3 uses
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !64
  %i.alh = getelementptr i8, ptr %1, i64 76       ; 3 uses
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !65
  %.sroa.2151.0.insert.ext = zext i32 %i.ale to i64
  %.sroa.2151.0.insert.shift = shl nuw i64 %.sroa.2151.0.insert.ext, 32
  %.sroa.0150.0.insert.ext = zext i32 %i.alc to i64
  %.sroa.0150.0.insert.insert = or disjoint i64 %.sroa.2151.0.insert.shift, %.sroa.0150.0.insert.ext
  %.sroa.5153.8.insert.ext = zext i32 %i.ali to i64
  %.sroa.5153.8.insert.shift = shl nuw i64 %.sroa.5153.8.insert.ext, 32
  %.sroa.3152.8.insert.ext = zext i32 %i.alg to i64
  %.sroa.3152.8.insert.insert = or disjoint i64 %.sroa.5153.8.insert.shift, %.sroa.3152.8.insert.ext
  %i.alj = tail call fastcc range(i32 0, 2) i32 @symtable_add_def_ctx(ptr noundef nonnull readonly %0, ptr noundef %i.ala, i32 noundef 2, i64 %.sroa.0150.0.insert.insert, i64 %.sroa.3152.8.insert.insert, i32 noundef 2)
  %.not1351 = icmp eq i32 %i.alj, 0
  br i1 %.not1351, label %Py_DECREF.exit1643.thread, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.alk = getelementptr i8, ptr %1, i64 16       ; 5 uses
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !22 ; 3 uses
  %i.alm = getelementptr i8, ptr %i.all, i64 48
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !66 ; 4 uses
  %.not1352 = icmp eq ptr %i.aln, null
  br i1 %.not1352, label %.thread1793, label %.preheader1913

.preheader1913:                                   ; preds = %bb.gg
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !43
  %i.alp = icmp sgt i64 %i.alo, 0
  br i1 %i.alp, label %.lr.ph1942, label %.thread1793

.lr.ph1942:                                       ; preds = %.preheader1913
  %i.alq = getelementptr i8, ptr %i.aln, i64 16
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gi
  %i.alr = add nuw nsw i64 %.012731941, 1         ; 2 uses
  %i.als = load i64, ptr %i.aln, align 8, !tbaa !43
  %i.alt = icmp slt i64 %i.alr, %i.als
  br i1 %i.alt, label %bb.gi, label %.thread1793.loopexit, !llvm.loop !124

bb.gi:                                            ; preds = %.lr.ph1942, %bb.gh
  %.012731941 = phi i64 [ 0, %.lr.ph1942 ], [ %i.alr, %bb.gh ] ; 2 uses
  %i.alu = getelementptr [8 x i8], ptr %i.alq, i64 %.012731941
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !71
  %i.alw = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.alv)
  %.not1353.not = icmp eq i32 %i.alw, 0
  br i1 %.not1353.not, label %Py_DECREF.exit1643.thread, label %bb.gh

.thread1793.loopexit:                             ; preds = %bb.gh
  %.pre = load ptr, ptr %i.alk, align 8, !tbaa !22
  br label %.thread1793

.thread1793:                                      ; preds = %.thread1793.loopexit, %.preheader1913, %bb.gg
  %i.alx = phi ptr [ %.pre, %.thread1793.loopexit ], [ %i.all, %.preheader1913 ], [ %i.all, %bb.gg ]
  %i.aly = getelementptr i8, ptr %i.alx, i64 32
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !73 ; 4 uses
  %.not1354 = icmp eq ptr %i.alz, null
  br i1 %.not1354, label %.thread1797, label %.preheader1911

.preheader1911:                                   ; preds = %.thread1793
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !43 ; 2 uses
  %i.amb = icmp sgt i64 %i.ama, 0
  br i1 %i.amb, label %.lr.ph1944, label %.thread1797

.lr.ph1944:                                       ; preds = %.preheader1911
  %i.amc = getelementptr i8, ptr %i.alz, i64 16
  br label %bb.gj

bb.gj:                                            ; preds = %.lr.ph1944, %.thread1794
  %i.amd = phi i64 [ %i.ama, %.lr.ph1944 ], [ %i.ami, %.thread1794 ]
  %i.ame = phi i64 [ 0, %.lr.ph1944 ], [ %i.amk, %.thread1794 ]
  %.012701943 = phi i32 [ 0, %.lr.ph1944 ], [ %i.amj, %.thread1794 ]
  %i.amf = getelementptr [8 x i8], ptr %i.amc, i64 %i.ame
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !71 ; 2 uses
  %.not1355 = icmp eq ptr %i.amg, null
  br i1 %.not1355, label %.thread1794, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.amh = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef nonnull %i.amg)
  %cond.not = icmp eq i32 %i.amh, 0
  br i1 %cond.not, label %Py_DECREF.exit1643.thread, label %..thread1794_crit_edge

..thread1794_crit_edge:                           ; preds = %bb.gk
  %.pre2180 = load i64, ptr %i.alz, align 8, !tbaa !43
  br label %.thread1794

.thread1794:                                      ; preds = %..thread1794_crit_edge, %bb.gj
  %i.ami = phi i64 [ %.pre2180, %..thread1794_crit_edge ], [ %i.amd, %bb.gj ] ; 2 uses
  %i.amj = add i32 %.012701943, 1                 ; 2 uses
  %i.amk = sext i32 %i.amj to i64                 ; 2 uses
  %i.aml = icmp sgt i64 %i.ami, %i.amk
  br i1 %i.aml, label %bb.gj, label %.thread1797, !llvm.loop !125

.thread1797:                                      ; preds = %.thread1794, %.preheader1911, %.thread1793
  %i.amm = getelementptr i8, ptr %1, i64 32
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !22 ; 4 uses
  %.not1357 = icmp eq ptr %i.amn, null
  br i1 %.not1357, label %.thread1799, label %.preheader1909

.preheader1909:                                   ; preds = %.thread1797
  %i.amo = load i64, ptr %i.amn, align 8, !tbaa !43
  %i.amp = icmp sgt i64 %i.amo, 0
  br i1 %i.amp, label %.lr.ph1946, label %.thread1799

.lr.ph1946:                                       ; preds = %.preheader1909
  %i.amq = getelementptr i8, ptr %i.amn, i64 16
end_hunk_0
begin_hunk_1_@symtable_visit_stmt:bb.a
  %i.ark = load ptr, ptr %i.arj, align 8, !tbaa !22 ; 4 uses
  %i.arl = icmp eq ptr %i.ark, null
  br i1 %i.arl, label %.critedge1625, label %.lr.ph1958

.lr.ph1958:                                       ; preds = %bb.hn
  %i.arm = getelementptr i8, ptr %i.ark, i64 16
  %i.arn = load i64, ptr %i.ark, align 8, !tbaa !43
  %i.aro = icmp sgt i64 %i.arn, 0
  br i1 %i.aro, label %.lr.ph1961, label %.critedge1625

.lr.ph1961:                                       ; preds = %.lr.ph1958, %symtable_visit_withitem.exit1695
  %.0124819571960 = phi i64 [ %i.arw, %symtable_visit_withitem.exit1695 ], [ 0, %.lr.ph1958 ] ; 2 uses
  %i.arp = getelementptr [8 x i8], ptr %i.arm, i64 %.0124819571960
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !119 ; 2 uses
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !121
  %i.ars = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef %i.arr)
  %.not.i1691 = icmp eq i32 %i.ars, 0
  br i1 %.not.i1691, label %Py_DECREF.exit1643.thread, label %bb.ho

bb.ho:                                            ; preds = %.lr.ph1961
  %i.art = getelementptr i8, ptr %i.arq, i64 8
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !123 ; 2 uses
  %.not6.i1692 = icmp eq ptr %i.aru, null
  br i1 %.not6.i1692, label %symtable_visit_withitem.exit1695, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.arv = tail call fastcc i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef nonnull %i.aru)
  %.not7.i1693 = icmp eq i32 %i.arv, 0
  br i1 %.not7.i1693, label %Py_DECREF.exit1643.thread, label %symtable_visit_withitem.exit1695

symtable_visit_withitem.exit1695:                 ; preds = %bb.hp, %bb.ho
  %i.arw = add nuw nsw i64 %.0124819571960, 1     ; 2 uses
  %i.arx = load i64, ptr %i.ark, align 8, !tbaa !43
  %i.ary = icmp slt i64 %i.arw, %i.arx
  br i1 %i.ary, label %.lr.ph1961, label %.critedge1625

.critedge1625:                                    ; preds = %symtable_visit_withitem.exit1695, %.lr.ph1958, %bb.hn
  %i.arz = getelementptr i8, ptr %1, i64 16
  %i.asa = load ptr, ptr %i.arz, align 8, !tbaa !22 ; 4 uses
  %i.asb = icmp eq ptr %i.asa, null
  br i1 %i.asb, label %.critedge1853, label %.lr.ph1963

.lr.ph1963:                                       ; preds = %.critedge1625
  %i.asc = getelementptr i8, ptr %i.asa, i64 16
  %i.asd = load i64, ptr %i.asa, align 8, !tbaa !43
  %i.ase = icmp sgt i64 %i.asd, 0
  br i1 %i.ase, label %.lr.ph1966, label %.critedge1853

bb.hq:                                            ; preds = %.lr.ph1966
  %i.asf = add nuw nsw i64 %.0124519621965, 1     ; 2 uses
  %i.asg = load i64, ptr %i.asa, align 8, !tbaa !43
  %i.ash = icmp slt i64 %i.asf, %i.asg
  br i1 %i.ash, label %.lr.ph1966, label %.critedge1853

.lr.ph1966:                                       ; preds = %.lr.ph1963, %bb.hq
  %.0124519621965 = phi i64 [ %i.asf, %bb.hq ], [ 0, %.lr.ph1963 ] ; 2 uses
  %i.asi = getelementptr [8 x i8], ptr %i.asc, i64 %.0124519621965
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !47
  %i.ask = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.asj)
  %.not1375.not = icmp eq i32 %i.ask, 0
  br i1 %.not1375.not, label %Py_DECREF.exit1643.thread, label %bb.hq

.critedge1853:                                    ; preds = %bb.hq, %.lr.ph1963, %.critedge1625
  %i.asl = load ptr, ptr %i.ard, align 8, !tbaa !35
  %i.asm = getelementptr i8, ptr %i.asl, i64 100  ; 2 uses
  %i.asn = load i16, ptr %i.asm, align 4
  %i.aso = and i16 %i.asn, -2049
  %i.asp = or disjoint i16 %i.aso, %i.arh
  store i16 %i.asp, ptr %i.asm, align 4
  br label %Py_DECREF.exit1643

bb.hr:                                            ; preds = %bb.b
  %i.asq = getelementptr i8, ptr %0, i64 64
  %i.asr = load ptr, ptr %i.asq, align 8, !tbaa !37
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !57
  %i.ast = and i32 %i.ass, 8192
  %.not.i.i1696 = icmp eq i32 %i.ast, 0
  br i1 %.not.i.i1696, label %maybe_set_ste_coroutine_for_module.exit1698, label %allows_top_level_await.exit.i1697

allows_top_level_await.exit.i1697:                ; preds = %bb.hr
  %i.asu = getelementptr i8, ptr %0, i64 8
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !35 ; 2 uses
  %i.asw = getelementptr i8, ptr %i.asv, i64 72
  %i.asx = load i32, ptr %i.asw, align 8, !tbaa !56
  %i.asy = icmp eq i32 %i.asx, 2
  br i1 %i.asy, label %bb.hs, label %maybe_set_ste_coroutine_for_module.exit1698

bb.hs:                                            ; preds = %allows_top_level_await.exit.i1697
  %i.asz = getelementptr i8, ptr %i.asv, i64 92   ; 2 uses
  %i.ata = load i8, ptr %i.asz, align 4
  %i.atb = or i8 %i.ata, 2
  store i8 %i.atb, ptr %i.asz, align 4
  br label %maybe_set_ste_coroutine_for_module.exit1698

maybe_set_ste_coroutine_for_module.exit1698:      ; preds = %bb.hr, %allows_top_level_await.exit.i1697, %bb.hs
  %i.atc = getelementptr i8, ptr %1, i64 64
  %i.atd = load i32, ptr %i.atc, align 8, !tbaa !62
  %i.ate = getelementptr i8, ptr %1, i64 72
  %i.atf = load i32, ptr %i.ate, align 8, !tbaa !63
  %i.atg = getelementptr i8, ptr %1, i64 68
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !64
  %i.ati = getelementptr i8, ptr %1, i64 76
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !65
  %.sroa.2.0.insert.ext = zext i32 %i.atf to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.atd to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.5.8.insert.ext = zext i32 %i.atj to i64
  %.sroa.5.8.insert.shift = shl nuw i64 %.sroa.5.8.insert.ext, 32
  %.sroa.3.8.insert.ext = zext i32 %i.ath to i64
  %.sroa.3.8.insert.insert = or disjoint i64 %.sroa.5.8.insert.shift, %.sroa.3.8.insert.ext
  %i.atk = tail call fastcc i32 @symtable_raise_if_not_coroutine(ptr noundef %0, ptr noundef nonnull @.str.43, i64 %.sroa.0.0.insert.insert, i64 %.sroa.3.8.insert.insert)
  %.not1377 = icmp eq i32 %i.atk, 0
  br i1 %.not1377, label %Py_DECREF.exit1643.thread, label %bb.ht

bb.ht:                                            ; preds = %maybe_set_ste_coroutine_for_module.exit1698
  %i.atl = getelementptr i8, ptr %1, i64 8
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !22
  %i.atn = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.atm)
  %.not1378 = icmp eq i32 %i.atn, 0
  br i1 %.not1378, label %Py_DECREF.exit1643.thread, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.ato = getelementptr i8, ptr %1, i64 16
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !22
  %i.atq = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.atp)
  %.not1379 = icmp eq i32 %i.atq, 0
  br i1 %.not1379, label %Py_DECREF.exit1643.thread, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.atr = getelementptr i8, ptr %0, i64 8        ; 2 uses
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !35
  %i.att = getelementptr i8, ptr %i.ats, i64 100  ; 2 uses
  %i.atu = load i16, ptr %i.att, align 4          ; 2 uses
  %i.atv = and i16 %i.atu, 2048
  %i.atw = or i16 %i.atu, 2048
  store i16 %i.atw, ptr %i.att, align 4
  %i.atx = getelementptr i8, ptr %1, i64 24
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !22 ; 4 uses
  %i.atz = icmp eq ptr %i.aty, null
  br i1 %i.atz, label %.critedge1630, label %.lr.ph1968

.lr.ph1968:                                       ; preds = %bb.hv
  %i.aua = getelementptr i8, ptr %i.aty, i64 16
  %i.aub = load i64, ptr %i.aty, align 8, !tbaa !43
  %i.auc = icmp sgt i64 %i.aub, 0
  br i1 %i.auc, label %.lr.ph1971, label %.critedge1630

bb.hw:                                            ; preds = %.lr.ph1971
  %i.aud = add nuw nsw i64 %.0123719671970, 1     ; 2 uses
  %i.aue = load i64, ptr %i.aty, align 8, !tbaa !43
  %i.auf = icmp slt i64 %i.aud, %i.aue
  br i1 %i.auf, label %.lr.ph1971, label %.critedge1630

.lr.ph1971:                                       ; preds = %.lr.ph1968, %bb.hw
  %.0123719671970 = phi i64 [ %i.aud, %bb.hw ], [ 0, %.lr.ph1968 ] ; 2 uses
  %i.aug = getelementptr [8 x i8], ptr %i.aua, i64 %.0123719671970
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !47
  %i.aui = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.auh)
  %.not1380.not = icmp eq i32 %i.aui, 0
  br i1 %.not1380.not, label %Py_DECREF.exit1643.thread, label %bb.hw

.critedge1630:                                    ; preds = %bb.hw, %.lr.ph1968, %bb.hv
  %i.auj = getelementptr i8, ptr %1, i64 32
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !22 ; 4 uses
  %.not1382 = icmp eq ptr %i.auk, null
  br i1 %.not1382, label %.loopexit1902, label %.preheader1901

.preheader1901:                                   ; preds = %.critedge1630
  %i.aul = load i64, ptr %i.auk, align 8, !tbaa !43
  %.not13841972 = icmp sgt i64 %i.aul, 0
  br i1 %.not13841972, label %.lr.ph1974, label %.loopexit1902

.lr.ph1974:                                       ; preds = %.preheader1901
  %i.aum = getelementptr i8, ptr %i.auk, i64 16
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hy
  %i.aun = add nuw nsw i64 %.011331973, 1         ; 2 uses
  %i.auo = load i64, ptr %i.auk, align 8, !tbaa !43
  %.not1384 = icmp slt i64 %i.aun, %i.auo
  br i1 %.not1384, label %bb.hy, label %.loopexit1902, !llvm.loop !127

bb.hy:                                            ; preds = %.lr.ph1974, %bb.hx
  %.011331973 = phi i64 [ 0, %.lr.ph1974 ], [ %i.aun, %bb.hx ] ; 2 uses
  %i.aup = getelementptr [8 x i8], ptr %i.aum, i64 %.011331973
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !47
  %i.aur = tail call fastcc i32 @symtable_visit_stmt(ptr noundef %0, ptr noundef %i.auq)
  %.not1383.not = icmp eq i32 %i.aur, 0
  br i1 %.not1383.not, label %Py_DECREF.exit1643.thread, label %bb.hx

.loopexit1902:                                    ; preds = %bb.hx, %.preheader1901, %.critedge1630
  %i.aus = load ptr, ptr %i.atr, align 8, !tbaa !35
  %i.aut = getelementptr i8, ptr %i.aus, i64 100  ; 2 uses
  %i.auu = load i16, ptr %i.aut, align 4
  %i.auv = and i16 %i.auu, -2049
  %i.auw = or disjoint i16 %i.auv, %i.atv
  store i16 %i.auw, ptr %i.aut, align 4
  br label %Py_DECREF.exit1643

Py_DECREF.exit1643:                               ; preds = %bb.fs, %bb.fj, %bb.fa, %bb.bw, %bb.fr, %.lr.ph1976, %bb.fi, %.lr.ph1979, %bb.ez, %.lr.ph1990, %bb.bv, %.lr.ph2069, %.loopexit1902, %.critedge1853, %bb.hi, %bb.hk, %bb.hj, %.critedge1848, %.critedge1836, %.critedge1831, %bb.dp, %.loopexit1878, %.loopexit1874, %.loopexit, %bb.br, %bb.bq, %bb.bf, %bb.ag, %bb.ai, %bb.ah, %bb.ga, %.critedge1841, %bb.ev, %bb.ew, %bb.dq, %bb.dt, %bb.ds, %bb.co, %bb.cl, %bb.cm, %.critedge1822, %bb.bs, %bb.bu, %bb.b
  tail call void @Py_LeaveRecursiveCall() #7
  br label %Py_DECREF.exit1643.thread

Py_DECREF.exit1643.thread:                        ; preds = %bb.gd, %.lr.ph1935, %.lr.ph1940, %bb.gi, %bb.gk, %bb.gm, %.lr.ph1951, %.lr.ph1956, %bb.hp, %.lr.ph1961, %.lr.ph1966, %.lr.ph1971, %bb.hy, %bb.fz, %bb.fy, %.lr.ph2458, %bb.fq, %bb.fp, %.lr.ph2460, %.lr.ph1988, %.lr.ph1993, %.lr.ph1998, %bb.en, %symtable_add_def_ctx.exit1711, %.lr.ph2003, %.lr.ph2008, %.lr.ph2013, %.lr.ph2018, %bb.ea, %symtable_add_def_ctx.exit, %.lr.ph2023, %.lr.ph2028, %.lr.ph2033, %bb.dk, %bb.dm, %.lr.ph2038, %.lr.ph2043, %bb.de, %.lr.ph2051, %bb.cz, %.lr.ph2059, %bb.cu, %.lr.ph2067, %.lr.ph2072, %.lr.ph2077, %bb.am, %.lr.ph2085, %.lr.ph2090, %.lr.ph2095, %.lr.ph2100, %bb.f, %bb.h, %bb.k, %.lr.ph2111, %.lr.ph2116, %bb.hb, %bb.ha, %bb.gx, %bb.gw, %bb.hk, %bb.gy, %.critedge1617, %bb.hc, %Py_DECREF.exit, %.critedge1620, %bb.fx, %bb.fo, %symtable_add_def_ctx.exit1711.thread, %symtable_add_def_ctx.exit.thread, %bb.ci, %bb.cg, %bb.ce, %bb.ca, %bb.br, %bb.bj, %.critedge1555, %bb.bn, %bb.bo, %bb.bp, %bb.be, %bb.aj, %bb.ao, %bb.ap, %.critedge1544, %.critedge1546, %bb.ax, %bb.ay, %.critedge1550, %bb.z, %bb.y, %bb.v, %bb.u, %bb.ai, %bb.w, %.critedge, %bb.aa, %Py_DECREF.exit1639, %.critedge1533, %bb.fg, %bb.hu, %bb.ht, %maybe_set_ste_coroutine_for_module.exit1698, %maybe_set_ste_coroutine_for_module.exit, %has_kwonlydefaults.exit1690, %bb.gf, %bb.ga, %.critedge1841, %bb.fc, %bb.ey, %bb.ew, %bb.eu, %bb.dt, %bb.dr, %bb.df, %bb.da, %bb.cv, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %.critedge1822, %bb.bt, %bb.bg, %has_kwonlydefaults.exit, %bb.c, %bb.a, %Py_DECREF.exit1643
  %.161 = phi i32 [ 0, %bb.gw ], [ 1, %Py_DECREF.exit1643 ], [ 0, %.lr.ph2051 ], [ 0, %.lr.ph2067 ], [ 0, %bb.c ], [ 0, %bb.hp ], [ 0, %.lr.ph2059 ], [ 0, %bb.hu ], [ 0, %bb.a ], [ 0, %.lr.ph2043 ], [ 0, %.lr.ph1951 ], [ 0, %has_kwonlydefaults.exit ], [ 0, %bb.bg ], [ 0, %.lr.ph2028 ], [ 0, %bb.bt ], [ 0, %.lr.ph2111 ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %.lr.ph2116 ], [ 0, %.critedge1822 ], [ 0, %bb.cn ], [ 0, %bb.cm ], [ 0, %bb.ci ], [ 0, %bb.cp ], [ 0, %bb.co ], [ 0, %bb.h ], [ 0, %bb.cq ], [ 0, %.lr.ph2100 ], [ 0, %bb.cv ], [ 0, %.lr.ph2090 ], [ 0, %bb.da ], [ 0, %bb.dr ], [ 0, %bb.df ], [ 0, %bb.am ], [ 0, %bb.cu ], [ 0, %bb.eu ], [ 0, %bb.dt ], [ 0, %bb.k ], [ 0, %bb.ew ], [ 0, %bb.fc ], [ 0, %.lr.ph2033 ], [ 0, %bb.fg ], [ 0, %bb.ey ], [ 0, %.lr.ph2008 ], [ 0, %bb.ha ], [ 0, %.critedge1841 ], [ 0, %.lr.ph1988 ], [ 0, %bb.ht ], [ 0, %maybe_set_ste_coroutine_for_module.exit1698 ], [ 0, %maybe_set_ste_coroutine_for_module.exit ], [ 0, %bb.en ], [ 0, %has_kwonlydefaults.exit1690 ], [ 0, %bb.dk ], [ 0, %.lr.ph1993 ], [ 0, %bb.gf ], [ 0, %bb.fq ], [ 0, %.lr.ph2018 ], [ 0, %.lr.ph1971 ], [ 0, %bb.ga ], [ 0, %.critedge1533 ], [ 0, %Py_DECREF.exit1639 ], [ 0, %bb.aa ], [ 0, %.critedge ], [ 0, %bb.w ], [ 0, %bb.ai ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %.critedge1550 ], [ 0, %bb.ay ], [ 0, %bb.gm ], [ 0, %bb.ax ], [ 0, %.critedge1546 ], [ 0, %.critedge1544 ], [ 0, %bb.gk ], [ 0, %bb.ap ], [ 0, %bb.gi ], [ 0, %.lr.ph1940 ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.be ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 0, %bb.bn ], [ 0, %.critedge1555 ], [ 0, %bb.bj ], [ 0, %bb.br ], [ 0, %bb.ca ], [ 0, %bb.ce ], [ 0, %bb.cg ], [ 0, %bb.f ], [ 0, %.lr.ph2095 ], [ 0, %.lr.ph2085 ], [ 0, %.lr.ph2013 ], [ 0, %.lr.ph2077 ], [ 0, %.lr.ph1966 ], [ 0, %symtable_add_def_ctx.exit.thread ], [ 0, %bb.cz ], [ 0, %bb.hk ], [ 0, %.lr.ph1956 ], [ 0, %.lr.ph2072 ], [ 0, %bb.de ], [ 0, %symtable_add_def_ctx.exit1711.thread ], [ 0, %bb.fz ], [ 0, %.lr.ph2023 ], [ 0, %.lr.ph2038 ], [ 0, %.lr.ph1998 ], [ 0, %bb.hb ], [ 0, %.lr.ph2003 ], [ 0, %bb.fo ], [ 0, %bb.gx ], [ 0, %bb.ea ], [ 0, %bb.fx ], [ 0, %bb.gy ], [ 0, %bb.hy ], [ 0, %.critedge1620 ], [ 0, %Py_DECREF.exit ], [ 0, %bb.hc ], [ 0, %.critedge1617 ], [ 0, %bb.dm ], [ 0, %symtable_add_def_ctx.exit ], [ 0, %symtable_add_def_ctx.exit1711 ], [ 0, %.lr.ph2460 ], [ 0, %bb.fp ], [ 0, %.lr.ph2458 ], [ 0, %bb.fy ], [ 0, %.lr.ph1961 ], [ 0, %.lr.ph1935 ], [ 0, %bb.gd ]
  ret i32 %.161
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @symtable_visit_expr(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @Py_EnterRecursiveCall(ptr noundef nonnull @.str.29) #7
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8, !tbaa !91
  switch i32 %i.b, label %.thread [
    i32 2, label %bb.c
    i32 1, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.j
    i32 6, label %bb.s
    i32 7, label %bb.v
    i32 8, label %bb.ae
    i32 12, label %bb.ag
    i32 9, label %bb.ah
    i32 10, label %bb.ai
    i32 11, label %bb.aj
    i32 14, label %bb.ak
    i32 15, label %bb.ap
    i32 13, label %bb.at
    i32 16, label %bb.ba
    i32 17, label %bb.bd
    i32 18, label %bb.bn
    i32 19, label %bb.bq
    i32 20, label %bb.bt
    i32 21, label %bb.bv
    i32 28, label %bb.cp
    i32 23, label %bb.bx
    i32 24, label %bb.bz
    i32 25, label %bb.cb
    i32 29, label %bb.cc
    i32 26, label %bb.ci
    i32 27, label %bb.cn
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @symtable_raise_if_annotation_block(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull %1)
  %.not485 = icmp eq i32 %i.c, 0
  br i1 %.not485, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @symtable_handle_namedexpr(ptr noundef %0, ptr noundef nonnull %1)
  %.not486 = icmp eq i32 %i.d, 0
  br i1 %.not486, label %.loopexit, label %.thread

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.thread, label %.lr.ph608

.lr.ph608:                                        ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.f, align 8, !tbaa !43
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph611, label %.thread

bb.f:                                             ; preds = %.lr.ph611
  %i.k = add nuw nsw i64 %.0353607610, 1          ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !43
  %i.m = icmp slt i64 %i.k, %i.l
  br i1 %i.m, label %.lr.ph611, label %.thread

.lr.ph611:                                        ; preds = %.lr.ph608, %bb.f
  %.0353607610 = phi i64 [ %i.k, %bb.f ], [ 0, %.lr.ph608 ] ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %i.h, i64 %.0353607610
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.o)
  %.not484.not = icmp eq i32 %i.p, 0
  br i1 %.not484.not, label %.loopexit, label %bb.f

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.s = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.r)
  %.not482 = icmp eq i32 %i.s, 0
  br i1 %.not482, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.u)
  %.not483 = icmp eq i32 %i.v, 0
  br i1 %.not483, label %.loopexit, label %.thread

bb.i:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.y = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.x)
  %.not481 = icmp eq i32 %i.y, 0
  br i1 %.not481, label %.loopexit, label %.thread

bb.j:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 4 uses
  %.not472 = icmp eq ptr %i.ac, null
  br i1 %.not472, label %.thread503, label %.preheader544

.preheader544:                                    ; preds = %bb.j
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph604, label %.thread503

.lr.ph604:                                        ; preds = %.preheader544
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.ag = add nuw nsw i64 %.0381603, 1            ; 2 uses
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !43
  %i.ai = icmp slt i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.l, label %.thread503.loopexit, !llvm.loop !128

bb.l:                                             ; preds = %.lr.ph604, %bb.k
  %.0381603 = phi i64 [ 0, %.lr.ph604 ], [ %i.ag, %bb.k ] ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.af, i64 %.0381603
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.al = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef %i.ak)
  %.not473.not = icmp eq i32 %i.al, 0
  br i1 %.not473.not, label %.loopexit, label %bb.k

.thread503.loopexit:                              ; preds = %bb.k
  %.pre634 = load ptr, ptr %i.z, align 8, !tbaa !22
  br label %.thread503

.thread503:                                       ; preds = %.thread503.loopexit, %.preheader544, %bb.j
  %i.am = phi ptr [ %.pre634, %.thread503.loopexit ], [ %i.aa, %.preheader544 ], [ %i.aa, %bb.j ]
  %i.an = getelementptr i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !73 ; 4 uses
  %.not474 = icmp eq ptr %i.ao, null
  br i1 %.not474, label %.thread506, label %.preheader

.preheader:                                       ; preds = %.thread503
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph606, label %.thread506

.lr.ph606:                                        ; preds = %.preheader
  %i.ar = getelementptr i8, ptr %i.ao, i64 16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph606, %bb.o
  %i.as = phi i64 [ %i.ap, %.lr.ph606 ], [ %i.ax, %bb.o ]
  %i.at = phi i64 [ 0, %.lr.ph606 ], [ %i.az, %bb.o ]
  %.0383605 = phi i32 [ 0, %.lr.ph606 ], [ %i.ay, %bb.o ]
  %i.au = getelementptr [8 x i8], ptr %i.ar, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71 ; 2 uses
  %.not475 = icmp eq ptr %i.av, null
  br i1 %.not475, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = tail call fastcc i32 @symtable_visit_expr(ptr noundef %0, ptr noundef nonnull %i.av)
  %.not476 = icmp eq i32 %i.aw, 0
  br i1 %.not476, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre635 = load i64, ptr %i.ao, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.m
  %i.ax = phi i64 [ %.pre635, %._crit_edge ], [ %i.as, %bb.m ] ; 2 uses
  %i.ay = add i32 %.0383605, 1                    ; 2 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp sgt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.m, label %.thread506, !llvm.loop !129

.thread506:                                       ; preds = %bb.o, %.preheader, %.thread503
  %i.bb = getelementptr i8, ptr %1, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !86
  %i.bd = getelementptr i8, ptr %1, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !88
  %i.bf = getelementptr i8, ptr %1, i64 44
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !89
  %i.bh = getelementptr i8, ptr %1, i64 52
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !90
  %.sroa.2119.0.insert.ext = zext i32 %i.be to i64
  %.sroa.2119.0.insert.shift = shl nuw i64 %.sroa.2119.0.insert.ext, 32
  %.sroa.0118.0.insert.ext = zext i32 %i.bc to i64
  %.sroa.0118.0.insert.insert = or disjoint i64 %.sroa.2119.0.insert.shift, %.sroa.0118.0.insert.ext
  %.sroa.5121.8.insert.ext = zext i32 %i.bi to i64
  %.sroa.5121.8.insert.shift = shl nuw i64 %.sroa.5121.8.insert.ext, 32
  %.sroa.3120.8.insert.ext = zext i32 %i.bg to i64
  %.sroa.3120.8.insert.insert = or disjoint i64 %.sroa.5121.8.insert.shift, %.sroa.3120.8.insert.ext
  %i.bj = tail call fastcc i32 @symtable_enter_block(ptr noundef %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 59536), i32 noundef 0, ptr noundef %1, i64 %.sroa.0118.0.insert.insert, i64 %.sroa.3120.8.insert.insert)
  %.not477 = icmp eq i32 %i.bj, 0
  br i1 %.not477, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.thread506
  %i.bk = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.bl = tail call fastcc i32 @symtable_visit_arguments(ptr noundef %0, ptr noundef %i.bk)
end_hunk_1
