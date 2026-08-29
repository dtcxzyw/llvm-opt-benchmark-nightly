Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ParseLex?download=true
inline.NumInlined: 5488
inline.NumDeleted: 391
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11V3LexerBase5yylexEv:bb.a

bb.bav:                                           ; preds = %bb.bau
  %i.svi = load ptr, ptr %248, align 8, !tbaa !121 ; 2 uses
  %i.svj = icmp eq ptr %i.svi, %i.cv
  br i1 %i.svj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1309: ; preds = %bb.bav
  %i.svk = load i64, ptr %i.cv, align 8, !tbaa !53
  %i.svl = add i64 %i.svk, 1
  call void @_ZdlPvm(ptr noundef %i.svi, i64 noundef %i.svl) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1311: ; preds = %bb.bav, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1309
  call void @llvm.lifetime.end.p0(ptr nonnull %249) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %248) #36
  %i.svm = load ptr, ptr @_ZN10V3ParseImp8s_parsepE, align 8, !tbaa !65
  %i.svn = getelementptr inbounds nuw i8, ptr %i.svm, i64 24
  %i.svo = load ptr, ptr %i.svn, align 8, !tbaa !67 ; 3 uses
  %i.svp = getelementptr inbounds nuw i8, ptr %i.svo, i64 12 ; 2 uses
  %i.svq = load i32, ptr %i.svp, align 4, !tbaa !116
  %i.svr = getelementptr inbounds nuw i8, ptr %i.svo, i64 24 ; 2 uses
  %i.svs = load i16, ptr %i.svr, align 8, !tbaa !119
  %i.svt = zext i16 %i.svs to i32
  %i.svu = add nsw i32 %i.svq, %i.svt
  store i32 %i.svu, ptr %i.svp, align 4, !tbaa !116
  %i.svv = getelementptr inbounds nuw i8, ptr %i.svo, i64 16 ; 2 uses
  %i.svw = load i64, ptr %i.svv, align 8          ; 2 uses
  %i.svx = lshr i64 %i.svw, 32
  %i.svy = and i64 %i.svx, 16777215
  %i.svz = and i64 %i.svw, -16777216
  %i.swa = or disjoint i64 %i.svy, %i.svz
  store i64 %i.swa, ptr %i.svv, align 8
  store i16 0, ptr %i.svr, align 8, !tbaa !119
  br label %.thread1422.backedge

bb.baw:                                           ; preds = %bb.bat
  %i.swb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1314

bb.bax:                                           ; preds = %bb.bau
  %i.swc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.swd = load ptr, ptr %248, align 8, !tbaa !121 ; 2 uses
  %i.swe = icmp eq ptr %i.swd, %i.cv
  br i1 %i.swe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1312: ; preds = %bb.bax
  %i.swf = load i64, ptr %i.cv, align 8, !tbaa !53
  %i.swg = add i64 %i.swf, 1
  call void @_ZdlPvm(ptr noundef %i.swd, i64 noundef %i.swg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1314

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1314: ; preds = %bb.bax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1312, %bb.baw
  %.pn = phi { ptr, i32 } [ %i.swb, %bb.baw ], [ %i.swc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1312 ], [ %i.swc, %bb.bax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %249) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %248) #36
  br label %bb.bbv

bb.bay:                                           ; preds = %bb.z
  %i.swh = load ptr, ptr %i.co, align 8, !tbaa !51
  %i.swi = load i32, ptr %i.cp, align 8, !tbaa !64
  %i.swj = load ptr, ptr %0, align 8, !tbaa !21
  %i.swk = getelementptr inbounds nuw i8, ptr %i.swj, i64 104
  %i.swl = load ptr, ptr %i.swk, align 8
  call void %i.swl(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef %i.swh, i32 noundef %i.swi)
  br label %.thread1422.backedge

bb.baz:                                           ; preds = %bb.z
  %i.swm = load ptr, ptr %i.co, align 8, !tbaa !51 ; 2 uses
  %i.swn = load i8, ptr %i.ck, align 8, !tbaa !54
  store i8 %i.swn, ptr %.3237, align 1, !tbaa !53
  %i.swo = load ptr, ptr %i.cq, align 8, !tbaa !40
  %i.swp = load i64, ptr %i.cr, align 8, !tbaa !41
  %i.swq = getelementptr inbounds nuw [8 x i8], ptr %i.swo, i64 %i.swp
  %i.swr = load ptr, ptr %i.swq, align 8, !tbaa !42 ; 4 uses
  %i.sws = getelementptr inbounds nuw i8, ptr %i.swr, i64 56 ; 2 uses
  %i.swt = load i32, ptr %i.sws, align 8, !tbaa !189
  %i.swu = icmp eq i32 %i.swt, 0
  br i1 %i.swu, label %bb.bba, label %._crit_edge9304

._crit_edge9304:                                  ; preds = %bb.baz
  %.pre = load i32, ptr %i.cs, align 4, !tbaa !48
  br label %bb.bbb

bb.bba:                                           ; preds = %bb.baz
  %i.swv = getelementptr inbounds nuw i8, ptr %i.swr, i64 28
  %i.sww = load i32, ptr %i.swv, align 4, !tbaa !46 ; 2 uses
  store i32 %i.sww, ptr %i.cs, align 4, !tbaa !48
  %i.swx = load ptr, ptr %i.ct, align 8, !tbaa !21
  %i.swy = getelementptr i8, ptr %i.swx, i64 -24
  %i.swz = load i64, ptr %i.swy, align 8
  %i.sxa = getelementptr inbounds i8, ptr %i.ct, i64 %i.swz
  %i.sxb = getelementptr inbounds nuw i8, ptr %i.sxa, i64 232
  %i.sxc = load ptr, ptr %i.sxb, align 8, !tbaa !32
  store ptr %i.sxc, ptr %i.swr, align 8, !tbaa !52
  store i32 1, ptr %i.sws, align 8, !tbaa !189
  br label %bb.bbb

bb.bbb:                                           ; preds = %._crit_edge9304, %bb.bba
  %i.sxd = phi i32 [ %.pre, %._crit_edge9304 ], [ %i.sww, %bb.bba ]
  %i.sxe = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.sxf = getelementptr inbounds nuw i8, ptr %i.swr, i64 8
  %i.sxg = load ptr, ptr %i.sxf, align 8, !tbaa !190
  %i.sxh = sext i32 %i.sxd to i64
  %i.sxi = getelementptr inbounds i8, ptr %i.sxg, i64 %i.sxh
  %.not251 = icmp ugt ptr %i.sxe, %i.sxi
  br i1 %.not251, label %bb.bbn, label %bb.bbc

bb.bbc:                                           ; preds = %bb.bbb
  %i.sxj = ptrtoint ptr %.3237 to i64
  %i.sxk = ptrtoint ptr %i.swm to i64
  %i.sxl = sub i64 %i.sxj, %i.sxk
  %i.sxm = trunc i64 %i.sxl to i32
  %i.sxn = add nsw i32 %i.sxm, -1                 ; 2 uses
  %i.sxo = load ptr, ptr %i.co, align 8, !tbaa !51 ; 3 uses
  %i.sxp = sext i32 %i.sxn to i64
  %i.sxq = getelementptr inbounds i8, ptr %i.sxo, i64 %i.sxp ; 6 uses
  store ptr %i.sxq, ptr %i.cj, align 8, !tbaa !50
  %i.sxr = load i32, ptr %i.cl, align 4, !tbaa !20 ; 2 uses
  %i.sxs = load i32, ptr %i.ch, align 8, !tbaa !55 ; 3 uses
  %i.sxt = icmp slt i32 %i.sxs, %i.sxn
  br i1 %i.sxt, label %.lr.ph27.i, label %_ZN11V3LexerBase21yy_get_previous_stateEv.exit

.lr.ph27.i:                                       ; preds = %bb.bbc
  %i.sxu = sext i32 %i.sxs to i64
  %i.sxv = getelementptr inbounds i8, ptr %i.sxo, i64 %i.sxu
  br label %bb.bbd

bb.bbd:                                           ; preds = %._crit_edge.i, %.lr.ph27.i
  %.01625.i = phi ptr [ %i.sxv, %.lr.ph27.i ], [ %i.sze, %._crit_edge.i ] ; 3 uses
  %.01724.i = phi i32 [ %i.sxr, %.lr.ph27.i ], [ %i.szd, %._crit_edge.i ] ; 3 uses
  %i.sxw = load i8, ptr %.01625.i, align 1, !tbaa !53 ; 2 uses
  %.not.i1315 = icmp eq i8 %i.sxw, 0
  br i1 %.not.i1315, label %bb.bbf, label %bb.bbe

bb.bbe:                                           ; preds = %bb.bbd
  %i.sxx = zext i8 %i.sxw to i64
  %i.sxy = getelementptr inbounds nuw i8, ptr @_ZL5yy_ec, i64 %i.sxx
  %i.sxz = load i8, ptr %i.sxy, align 1, !tbaa !53
  br label %bb.bbf

bb.bbf:                                           ; preds = %bb.bbe, %bb.bbd
  %i.sya = phi i8 [ %i.sxz, %bb.bbe ], [ 1, %bb.bbd ] ; 2 uses
  %i.syb = sext i32 %.01724.i to i64              ; 3 uses
  %i.syc = getelementptr inbounds [2 x i8], ptr @_ZL9yy_accept, i64 %i.syb
  %i.syd = load i16, ptr %i.syc, align 2, !tbaa !57
  %.not20.i = icmp eq i16 %i.syd, 0
  br i1 %.not20.i, label %bb.bbh, label %bb.bbg

bb.bbg:                                           ; preds = %bb.bbf
  store i32 %.01724.i, ptr %i.cm, align 8, !tbaa !59
  store ptr %.01625.i, ptr %i.cn, align 8, !tbaa !60
  br label %bb.bbh

bb.bbh:                                           ; preds = %bb.bbg, %bb.bbf
  %i.sye = getelementptr inbounds [2 x i8], ptr @_ZL7yy_base, i64 %i.syb
  %i.syf = load i16, ptr %i.sye, align 2, !tbaa !57
  %i.syg = sext i16 %i.syf to i64
  %i.syh = zext i8 %i.sya to i64                  ; 2 uses
  %i.syi = add nsw i64 %i.syg, %i.syh             ; 2 uses
  %i.syj = getelementptr inbounds [2 x i8], ptr @_ZL6yy_chk, i64 %i.syi
  %i.syk = load i16, ptr %i.syj, align 2, !tbaa !57
  %i.syl = sext i16 %i.syk to i32
  %.not2122.i = icmp eq i32 %.01724.i, %i.syl
  br i1 %.not2122.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bbh, %bb.bbj
  %i.sym = phi i64 [ %i.syx, %bb.bbj ], [ %i.syh, %bb.bbh ]
  %i.syn = phi i64 [ %i.syt, %bb.bbj ], [ %i.syb, %bb.bbh ]
  %.023.i = phi i8 [ %.1.i, %bb.bbj ], [ %i.sya, %bb.bbh ]
  %i.syo = getelementptr inbounds [2 x i8], ptr @_ZL6yy_def, i64 %i.syn
  %i.syp = load i16, ptr %i.syo, align 2, !tbaa !57 ; 3 uses
  %i.syq = icmp sgt i16 %i.syp, 5164
  br i1 %i.syq, label %bb.bbi, label %bb.bbj

bb.bbi:                                           ; preds = %.lr.ph.i
  %i.syr = getelementptr inbounds nuw i8, ptr @_ZL7yy_meta, i64 %i.sym
  %i.sys = load i8, ptr %i.syr, align 1, !tbaa !53
  br label %bb.bbj

bb.bbj:                                           ; preds = %bb.bbi, %.lr.ph.i
  %.1.i = phi i8 [ %i.sys, %bb.bbi ], [ %.023.i, %.lr.ph.i ] ; 2 uses
  %i.syt = sext i16 %i.syp to i64                 ; 2 uses
  %i.syu = getelementptr inbounds [2 x i8], ptr @_ZL7yy_base, i64 %i.syt
  %i.syv = load i16, ptr %i.syu, align 2, !tbaa !57
  %i.syw = sext i16 %i.syv to i64
  %i.syx = zext i8 %.1.i to i64                   ; 2 uses
  %i.syy = add nsw i64 %i.syw, %i.syx             ; 2 uses
  %i.syz = getelementptr inbounds [2 x i8], ptr @_ZL6yy_chk, i64 %i.syy
  %i.sza = load i16, ptr %i.syz, align 2, !tbaa !57
  %.not21.i = icmp eq i16 %i.syp, %i.sza
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !191

._crit_edge.i:                                    ; preds = %bb.bbj, %bb.bbh
  %.lcssa.i = phi i64 [ %i.syi, %bb.bbh ], [ %i.syy, %bb.bbj ]
  %i.szb = getelementptr inbounds [2 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i
  %i.szc = load i16, ptr %i.szb, align 2, !tbaa !57
  %i.szd = sext i16 %i.szc to i32                 ; 2 uses
  %i.sze = getelementptr inbounds nuw i8, ptr %.01625.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.sze, %i.sxq
  br i1 %exitcond.not.i, label %_ZN11V3LexerBase21yy_get_previous_stateEv.exit, label %bb.bbd, !llvm.loop !192

_ZN11V3LexerBase21yy_get_previous_stateEv.exit:   ; preds = %._crit_edge.i, %bb.bbc
  %.017.lcssa.i = phi i32 [ %i.sxr, %bb.bbc ], [ %i.szd, %._crit_edge.i ] ; 5 uses
  %i.szf = sext i32 %.017.lcssa.i to i64          ; 3 uses
  %i.szg = getelementptr inbounds [2 x i8], ptr @_ZL9yy_accept, i64 %i.szf
  %i.szh = load i16, ptr %i.szg, align 2, !tbaa !57
  %.not.i1316 = icmp eq i16 %i.szh, 0
  br i1 %.not.i1316, label %bb.bbl, label %bb.bbk

bb.bbk:                                           ; preds = %_ZN11V3LexerBase21yy_get_previous_stateEv.exit
  store i32 %.017.lcssa.i, ptr %i.cm, align 8, !tbaa !59
  store ptr %i.sxq, ptr %i.cn, align 8, !tbaa !60
  br label %bb.bbl

bb.bbl:                                           ; preds = %bb.bbk, %_ZN11V3LexerBase21yy_get_previous_stateEv.exit
  %i.szi = getelementptr inbounds [2 x i8], ptr @_ZL7yy_base, i64 %i.szf
  %i.szj = load i16, ptr %i.szi, align 2, !tbaa !57
  %i.szk = sext i16 %i.szj to i64
  %i.szl = add nsw i64 %i.szk, 1                  ; 2 uses
  %i.szm = getelementptr inbounds [2 x i8], ptr @_ZL6yy_chk, i64 %i.szl
  %i.szn = load i16, ptr %i.szm, align 2, !tbaa !57
  %i.szo = sext i16 %i.szn to i32
  %.not1516.i = icmp eq i32 %.017.lcssa.i, %i.szo
  br i1 %.not1516.i, label %_ZN11V3LexerBase16yy_try_NUL_transEi.exit, label %.lr.ph.i1317

.lr.ph.i1317:                                     ; preds = %bb.bbl, %.lr.ph.i1317
  %i.szp = phi i64 [ %i.szs, %.lr.ph.i1317 ], [ %i.szf, %bb.bbl ]
  %i.szq = getelementptr inbounds [2 x i8], ptr @_ZL6yy_def, i64 %i.szp
  %i.szr = load i16, ptr %i.szq, align 2, !tbaa !57 ; 2 uses
  %i.szs = sext i16 %i.szr to i64                 ; 2 uses
  %i.szt = getelementptr inbounds [2 x i8], ptr @_ZL7yy_base, i64 %i.szs
  %i.szu = load i16, ptr %i.szt, align 2, !tbaa !57
  %i.szv = sext i16 %i.szu to i64
  %i.szw = add nsw i64 %i.szv, 1                  ; 2 uses
  %i.szx = getelementptr inbounds [2 x i8], ptr @_ZL6yy_chk, i64 %i.szw
  %i.szy = load i16, ptr %i.szx, align 2, !tbaa !57
  %.not15.i = icmp eq i16 %i.szr, %i.szy
  br i1 %.not15.i, label %_ZN11V3LexerBase16yy_try_NUL_transEi.exit, label %.lr.ph.i1317, !llvm.loop !193

_ZN11V3LexerBase16yy_try_NUL_transEi.exit:        ; preds = %.lr.ph.i1317, %bb.bbl
  %.lcssa.i1319 = phi i64 [ %i.szl, %bb.bbl ], [ %i.szw, %.lr.ph.i1317 ]
  %i.szz = getelementptr inbounds [2 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i1319
  %i.taa = load i16, ptr %i.szz, align 2, !tbaa !57 ; 2 uses
  %i.tab = sext i32 %i.sxs to i64
  %i.tac = getelementptr inbounds i8, ptr %i.sxo, i64 %i.tab ; 3 uses
  switch i16 %i.taa, label %bb.bbm [
    i16 5164, label %.preheader1433.outer.backedge
    i16 0, label %.preheader1433.outer.backedge
  ]

.preheader1433.outer.backedge:                    ; preds = %_ZN11V3LexerBase16yy_try_NUL_transEi.exit, %_ZN11V3LexerBase16yy_try_NUL_transEi.exit, %bb.bbs
  %.2236.ph.be = phi ptr [ %i.sxq, %_ZN11V3LexerBase16yy_try_NUL_transEi.exit ], [ %i.tbl, %bb.bbs ], [ %i.sxq, %_ZN11V3LexerBase16yy_try_NUL_transEi.exit ]
  %.1231.ph.be = phi ptr [ %i.tac, %_ZN11V3LexerBase16yy_try_NUL_transEi.exit ], [ %i.tbp, %bb.bbs ], [ %i.tac, %_ZN11V3LexerBase16yy_try_NUL_transEi.exit ]
  %.3220.ph.be = phi i32 [ %.017.lcssa.i, %_ZN11V3LexerBase16yy_try_NUL_transEi.exit ], [ %i.tbk, %bb.bbs ], [ %.017.lcssa.i, %_ZN11V3LexerBase16yy_try_NUL_transEi.exit ]
  br label %.preheader1433.outer

bb.bbm:                                           ; preds = %_ZN11V3LexerBase16yy_try_NUL_transEi.exit
  %i.tad = sext i16 %i.taa to i32
  %i.tae = getelementptr inbounds nuw i8, ptr %i.sxq, i64 1 ; 2 uses
  store ptr %i.tae, ptr %i.cj, align 8, !tbaa !50
  br label %.loopexit1431.backedge

.loopexit1431.backedge:                           ; preds = %bb.bbm, %bb.bbr
  %.0234.be = phi ptr [ %i.tae, %bb.bbm ], [ %i.taw, %bb.bbr ]
  %.0230.be = phi ptr [ %i.tac, %bb.bbm ], [ %i.tba, %bb.bbr ]
  %.0217.be = phi i32 [ %i.tad, %bb.bbm ], [ %i.tav, %bb.bbr ]
  br label %.loopexit1431

bb.bbn:                                           ; preds = %bb.bbb
  %i.taf = call noundef i32 @_ZN11V3LexerBase18yy_get_next_bufferEv(ptr noundef nonnull align 8 dereferenceable(732) %0)
  switch i32 %i.taf, label %default.unreachable9850 [
    i32 1, label %bb.bbo
    i32 0, label %bb.bbr
    i32 2, label %bb.bbs
  ]

bb.bbo:                                           ; preds = %bb.bbn
  store i32 0, ptr %i.cu, align 8, !tbaa !194
  %i.tag = load ptr, ptr %0, align 8, !tbaa !21
  %i.tah = getelementptr inbounds nuw i8, ptr %i.tag, i64 88
  %i.tai = load ptr, ptr %i.tah, align 8
  %i.taj = call noundef i32 %i.tai(ptr noundef nonnull align 8 dereferenceable(732) %0)
  %.not252 = icmp eq i32 %i.taj, 0
  br i1 %.not252, label %bb.bbp, label %bb.bbt

bb.bbp:                                           ; preds = %bb.bbo
  %i.tak = load i32, ptr %i.cu, align 8, !tbaa !194
  %.not253 = icmp eq i32 %i.tak, 0
  br i1 %.not253, label %bb.bbq, label %.thread1422.backedge

bb.bbq:                                           ; preds = %bb.bbp
  %i.tal = load ptr, ptr %0, align 8, !tbaa !21
  %i.tam = getelementptr inbounds nuw i8, ptr %i.tal, i64 56
  %i.tan = load ptr, ptr %i.tam, align 8
  call void %i.tan(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ct)
  br label %.thread1422.backedge

.thread1422.backedge:                             ; preds = %bb.bbq, %bb.bbp, %bb.bbu, %bb.bay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1311, %bb.bar, %bb.baq, %bb.bap, %bb.bao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1293, %bb.azr, %bb.azq, %bb.azp, %bb.azo, %bb.azn, %bb.azm, %bb.azl, %bb.azk, %bb.azj, %bb.azi, %bb.azb, %bb.aza, %bb.ayz, %bb.ayy, %bb.ayx, %bb.ayw, %bb.ayv, %bb.ayu, %bb.ayt, %bb.ays, %bb.ayr, %bb.ayq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1280, %bb.ayi, %bb.ayh, %bb.ayf, %bb.aye, %bb.ayd, %bb.ayc, %bb.ayb, %bb.axz, %bb.axy, %bb.axx, %bb.axw, %bb.axv, %bb.axu, %bb.axt, %bb.axs, %bb.axr, %bb.axq, %bb.axp, %bb.axo, %bb.axn, %bb.axm, %bb.axl, %bb.axk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1268, %bb.awz, %bb.awy, %bb.awx, %bb.aww, %bb.awv, %bb.awu, %bb.aws, %bb.awj, %bb.awi, %bb.awh, %bb.awb, %bb.avv, %bb.avu, %bb.avt, %bb.avs, %bb.avr, %bb.avq, %bb.avp, %bb.avn, %bb.avm, %bb.avg, %bb.avf, %bb.avd, %bb.avc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1244, %bb.aui, %bb.auh, %bb.aqe, %bb.aqd, %bb.aqa, %bb.apz, %bb.apy, %bb.apx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196, %bb.aos, %bb.aor, %bb.aoq, %bb.aop, %bb.aoj, %bb.aoi, %bb.aoe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1094, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1088, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1082, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1076, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1070, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1064, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1058, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1052, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1046, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1040, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1034, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1028, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1022, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1016, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1010, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit998, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit992, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit986, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit968, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit962, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit944, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit932, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit926, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit920, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit914, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit908, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit902, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit896, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit890, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit884, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit878, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit872, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit866, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit848, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit842, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit830, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit824, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit818, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit812, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit806, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit623, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit614, %bb.cy, %bb.cx, %bb.an, %bb.am, %bb.ad, %bb.ac, %bb.ab
  br label %.thread1422, !llvm.loop !195

bb.bbr:                                           ; preds = %bb.bbn
  %i.tao = ptrtoint ptr %.3237 to i64
  %i.tap = ptrtoint ptr %i.swm to i64
  %i.taq = xor i64 %i.tap, -1
  %i.tar = add i64 %i.taq, %i.tao
  %i.tas = load ptr, ptr %i.co, align 8, !tbaa !51
  %sext = shl i64 %i.tar, 32
  %i.tat = ashr exact i64 %sext, 32
  %i.tau = getelementptr inbounds i8, ptr %i.tas, i64 %i.tat
  store ptr %i.tau, ptr %i.cj, align 8, !tbaa !50
  %i.tav = call noundef i32 @_ZN11V3LexerBase21yy_get_previous_stateEv(ptr noundef nonnull align 8 dereferenceable(732) %0)
  %i.taw = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.tax = load ptr, ptr %i.co, align 8, !tbaa !51
  %i.tay = load i32, ptr %i.ch, align 8, !tbaa !55
  %i.taz = sext i32 %i.tay to i64
  %i.tba = getelementptr inbounds i8, ptr %i.tax, i64 %i.taz
  br label %.loopexit1431.backedge

bb.bbs:                                           ; preds = %bb.bbn
  %i.tbb = load ptr, ptr %i.cq, align 8, !tbaa !40
  %i.tbc = load i64, ptr %i.cr, align 8, !tbaa !41
  %i.tbd = getelementptr inbounds nuw [8 x i8], ptr %i.tbb, i64 %i.tbc
  %i.tbe = load ptr, ptr %i.tbd, align 8, !tbaa !42
  %i.tbf = getelementptr inbounds nuw i8, ptr %i.tbe, i64 8
  %i.tbg = load ptr, ptr %i.tbf, align 8, !tbaa !190
  %i.tbh = load i32, ptr %i.cs, align 4, !tbaa !48
  %i.tbi = sext i32 %i.tbh to i64
  %i.tbj = getelementptr inbounds i8, ptr %i.tbg, i64 %i.tbi
  store ptr %i.tbj, ptr %i.cj, align 8, !tbaa !50
  %i.tbk = call noundef i32 @_ZN11V3LexerBase21yy_get_previous_stateEv(ptr noundef nonnull align 8 dereferenceable(732) %0)
  %i.tbl = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.tbm = load ptr, ptr %i.co, align 8, !tbaa !51
  %i.tbn = load i32, ptr %i.ch, align 8, !tbaa !55
  %i.tbo = sext i32 %i.tbn to i64
  %i.tbp = getelementptr inbounds i8, ptr %i.tbm, i64 %i.tbo
  br label %.preheader1433.outer.backedge

default.unreachable9850:                          ; preds = %bb.bbn
  unreachable

bb.bbt:                                           ; preds = %bb.bbo
  %i.tbq = load ptr, ptr %i.co, align 8, !tbaa !51
  %i.tbr = load i32, ptr %i.ch, align 8, !tbaa !55
  %i.tbs = sext i32 %i.tbr to i64
  %i.tbt = getelementptr inbounds i8, ptr %i.tbq, i64 %i.tbs
  store ptr %i.tbt, ptr %i.cj, align 8, !tbaa !50
  %i.tbu = load i32, ptr %i.cl, align 4, !tbaa !20
  %i.tbv = add nsw i32 %i.tbu, -1
  %i.tbw = sdiv i32 %i.tbv, 2
  %i.tbx = add nsw i32 %i.tbw, 869
  br label %bb.z

bb.bbu:                                           ; preds = %bb.z
  %i.tby = load ptr, ptr %0, align 8, !tbaa !21
  %i.tbz = getelementptr inbounds nuw i8, ptr %i.tby, i64 112
  %i.tca = load ptr, ptr %i.tbz, align 8
  call void %i.tca(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull @.str.26)
  br label %.thread1422.backedge

.loopexit:                                        ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.aum, %bb.bas, %bb.ban, %bb.bam, %bb.bal, %bb.bak, %bb.baj, %bb.bai, %bb.bah, %bb.ayk, %bb.ayj, %bb.ayg, %bb.aya, %bb.awt, %bb.awr, %bb.awq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1262, %bb.awk, %bb.awg, %bb.awf, %bb.awe, %bb.awd, %bb.awc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256, %bb.avo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250, %bb.ave, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238, %bb.aur, %bb.auq, %bb.aup, %bb.auo, %bb.aun, %.critedge512, %bb.aug, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1217, %bb.atr, %bb.atq, %bb.atp, %bb.ato, %bb.atn, %bb.atm, %bb.atl, %bb.atk, %bb.atj, %bb.ati, %bb.ath, %bb.atg, %bb.atf, %bb.ate, %bb.atd, %bb.atc, %bb.atb, %bb.ata, %bb.asz, %bb.asy, %bb.asx, %bb.asw, %bb.asv, %bb.asu, %bb.ast, %bb.ass, %bb.asr, %bb.asq, %bb.asp, %bb.aso, %bb.asn, %bb.asm, %bb.asl, %bb.ask, %bb.asj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208, %bb.asd, %bb.asc, %bb.asb, %bb.asa, %bb.arz, %bb.ary, %bb.arx, %bb.arw, %bb.arv, %bb.aru, %bb.art, %bb.ars, %bb.arr, %bb.arq, %bb.arp, %bb.aro, %bb.arn, %bb.arm, %bb.arl, %bb.ark, %bb.arj, %bb.ari, %bb.arh, %bb.arg, %bb.arf, %bb.are, %bb.ard, %bb.arc, %bb.arb, %bb.ara, %bb.aqz, %bb.aqy, %bb.aqx, %bb.aqw, %bb.aqv, %bb.aqu, %bb.aqt, %bb.aqs, %bb.aqr, %bb.aqq, %bb.aqp, %bb.aqo, %bb.aqn, %bb.aqm, %bb.aql, %bb.aqk, %bb.aqj, %bb.aqi, %bb.aqh, %bb.aqg, %bb.aqf, %bb.aqc, %bb.aqb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202, %bb.apt, %bb.aps, %bb.apr, %bb.apq, %bb.app, %bb.apj, %bb.api, %bb.aph, %bb.apg, %bb.apf, %bb.ape, %bb.apd, %bb.apc, %bb.apb, %bb.apa, %bb.aoz, %bb.aoy, %bb.aox, %bb.aow, %bb.aov, %bb.aou, %bb.aot, %bb.aoo, %bb.aon, %bb.aom, %bb.aol, %bb.aok, %bb.aoh, %bb.aog, %bb.aof, %bb.anj, %bb.amo, %bb.amn, %bb.amm, %bb.aml, %bb.ama, %bb.alz, %bb.alt, %bb.ake, %bb.akd, %bb.ahz, %bb.ahj, %bb.agy, %bb.aek, %bb.aej, %bb.ado, %bb.adi, %bb.adh, %bb.adg, %bb.ada, %bb.acz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit797, %bb.aao, %bb.aan, %bb.aam, %bb.aal, %bb.aak, %bb.aaj, %bb.aai, %bb.aah, %bb.aag, %bb.aaf, %bb.aae, %bb.aad, %bb.aac, %bb.aab, %bb.aaa, %bb.zz, %bb.zy, %bb.zx, %bb.zw, %bb.zv, %bb.zu, %bb.zt, %bb.zs, %bb.zr, %bb.zq, %bb.zp, %bb.zo, %bb.zn, %bb.zm, %bb.zl, %bb.zk, %bb.zj, %bb.zi, %bb.zh, %bb.zg, %bb.zf, %bb.ze, %bb.zd, %bb.zc, %bb.zb, %bb.za, %bb.yz, %bb.yy, %bb.yx, %bb.yw, %bb.yv, %bb.yu, %bb.yt, %bb.ys, %bb.yr, %bb.yq, %bb.yp, %bb.yo, %bb.yn, %bb.ym, %bb.yl, %bb.yk, %bb.yj, %bb.yi, %bb.yh, %bb.yg, %bb.yf, %bb.ye, %bb.yd, %bb.yc, %bb.yb, %bb.ya, %bb.xz, %bb.xy, %bb.xx, %bb.xw, %bb.xv, %bb.xu, %bb.xt, %bb.xs, %bb.xr, %bb.xq, %bb.xp, %bb.xo, %bb.xn, %bb.xm, %bb.xl, %bb.xk, %bb.xj, %bb.xi, %bb.xh, %bb.xg, %bb.xf, %bb.xe, %bb.xd, %bb.xc, %bb.xb, %bb.xa, %bb.wz, %bb.wy, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo, %bb.wn, %bb.wm, %bb.wl, %bb.wk, %bb.wj, %bb.wi, %bb.wh, %bb.wg, %bb.wf, %bb.we, %bb.wd, %bb.wc, %bb.wb, %bb.wa, %bb.vz, %bb.vy, %bb.vx, %bb.vw, %bb.vv, %bb.vu, %bb.vt, %bb.vs, %bb.vr, %bb.vq, %bb.vp, %bb.vo, %bb.vn, %bb.vm, %bb.vl, %bb.vk, %bb.vj, %bb.vi, %bb.vh, %bb.vg, %bb.vf, %bb.ve, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782, %bb.us, %bb.ur, %bb.uq, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.ul, %bb.uk, %bb.uj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764, %bb.tx, %bb.tw, %bb.tv, %bb.tu, %bb.tt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, %bb.th, %bb.tg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728, %bb.su, %bb.st, %bb.ss, %bb.sr, %bb.sq, %bb.sp, %bb.so, %bb.sn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638, %bb.qj, %bb.qi, %bb.qh, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py, %bb.pq, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj, %bb.pi, %bb.ph, %bb.pg, %bb.pf, %bb.pe, %bb.pd, %bb.pc, %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov, %bb.ou, %bb.ot, %bb.os, %bb.or, %bb.oq, %bb.op, %bb.oo, %bb.on, %bb.om, %bb.ol, %bb.ok, %bb.oj, %bb.oi, %bb.oh, %bb.og, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob, %bb.oa, %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nv, %bb.nu, %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh, %bb.ng, %bb.nf, %bb.ne, %bb.nd, %bb.nc, %bb.nb, %bb.na, %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mu, %bb.mt, %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me, %bb.md, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %bb.lq, %bb.lp, %bb.lo, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt, %bb.ks, %bb.kr, %bb.kq, %bb.kp, %bb.ko, %bb.kn, %bb.km, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy, %bb.jx, %bb.jw, %bb.jv, %bb.ju, %bb.jt, %bb.js, %bb.jr, %bb.jq, %bb.jp, %bb.jo, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.iw, %bb.iv, %bb.iu, %bb.it, %bb.is, %bb.ir, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ag, %bb.af, %bb.ae
  %.177 = phi i32 [ 445, %bb.ae ], [ 59, %bb.af ], [ 44, %bb.ag ], [ 267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 283, %bb.ao ], [ 282, %bb.ap ], [ 284, %bb.aq ], [ 285, %bb.ar ], [ 286, %bb.as ], [ 287, %bb.at ], [ 288, %bb.au ], [ 289, %bb.av ], [ 290, %bb.aw ], [ 291, %bb.ax ], [ 292, %bb.ay ], [ 293, %bb.az ], [ 294, %bb.ba ], [ 295, %bb.bb ], [ 296, %bb.bc ], [ 297, %bb.bd ], [ 298, %bb.be ], [ 299, %bb.bf ], [ 300, %bb.bg ], [ 301, %bb.bh ], [ 302, %bb.bi ], [ 303, %bb.bj ], [ 304, %bb.bk ], [ 305, %bb.bl ], [ 306, %bb.bm ], [ 307, %bb.bn ], [ 308, %bb.bo ], [ 309, %bb.bp ], [ 310, %bb.bq ], [ 311, %bb.br ], [ 312, %bb.bs ], [ 313, %bb.bt ], [ 314, %bb.bu ], [ 315, %bb.bv ], [ 316, %bb.bw ], [ 317, %bb.bx ], [ 318, %bb.by ], [ 319, %bb.bz ], [ 320, %bb.ca ], [ 321, %bb.cb ], [ 322, %bb.cc ], [ 323, %bb.cd ], [ 324, %bb.ce ], [ 325, %bb.cf ], [ 326, %bb.cg ], [ 327, %bb.ch ], [ 328, %bb.ci ], [ 329, %bb.cj ], [ 330, %bb.ck ], [ 331, %bb.cl ], [ 332, %bb.cm ], [ 333, %bb.cn ], [ 334, %bb.co ], [ 335, %bb.cp ], [ 336, %bb.cq ], [ 337, %bb.cr ], [ 338, %bb.cs ], [ 394, %bb.ct ], [ 473, %bb.cu ], [ 485, %bb.cv ], [ 491, %bb.cw ], [ 629, %bb.cz ], [ 630, %bb.da ], [ 609, %bb.db ], [ 610, %bb.dc ], [ 611, %bb.dd ], [ 612, %bb.de ], [ 623, %bb.df ], [ 624, %bb.dg ], [ 625, %bb.dh ], [ 627, %bb.di ], [ 628, %bb.dj ], [ 631, %bb.dk ], [ 632, %bb.dl ], [ 637, %bb.dm ], [ 638, %bb.dn ], [ 642, %bb.do ], [ 643, %bb.dp ], [ 644, %bb.dq ], [ 645, %bb.dr ], [ 646, %bb.ds ], [ 647, %bb.dt ], [ 648, %bb.du ], [ 649, %bb.dv ], [ 650, %bb.dw ], [ 651, %bb.dx ], [ 652, %bb.dy ], [ 653, %bb.dz ], [ 654, %bb.ea ], [ 655, %bb.eb ], [ 656, %bb.ec ], [ 657, %bb.ed ], [ 658, %bb.ee ], [ 659, %bb.ef ], [ 653, %bb.eg ], [ 655, %bb.eh ], [ 656, %bb.ei ], [ 657, %bb.ej ], [ 658, %bb.ek ], [ 660, %bb.el ], [ 662, %bb.em ], [ 663, %bb.en ], [ 666, %bb.eo ], [ 667, %bb.ep ], [ 668, %bb.eq ], [ 669, %bb.er ], [ 670, %bb.es ], [ 673, %bb.et ], [ 674, %bb.eu ], [ 675, %bb.ev ], [ 676, %bb.ew ], [ 677, %bb.ex ], [ 678, %bb.ey ], [ 679, %bb.ez ], [ 680, %bb.fa ], [ 681, %bb.fb ], [ 682, %bb.fc ], [ 683, %bb.fd ], [ 684, %bb.fe ], [ 685, %bb.ff ], [ 686, %bb.fg ], [ 687, %bb.fh ], [ 688, %bb.fi ], [ 689, %bb.fj ], [ 690, %bb.fk ], [ 691, %bb.fl ], [ 692, %bb.fm ], [ 693, %bb.fn ], [ 270, %bb.fo ], [ 695, %bb.fp ], [ 696, %bb.fq ], [ 697, %bb.fr ], [ 698, %bb.fs ], [ 700, %bb.ft ], [ 270, %bb.fu ], [ 702, %bb.fv ], [ 708, %bb.fw ], [ 710, %bb.fx ], [ 711, %bb.fy ], [ 713, %bb.fz ], [ 714, %bb.ga ], [ 715, %bb.gb ], [ 716, %bb.gc ], [ 717, %bb.gd ], [ 718, %bb.ge ], [ 270, %bb.gf ], [ 270, %bb.gg ], [ 723, %bb.gh ], [ 724, %bb.gi ], [ 741, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit518 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit530 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit548 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit566 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit584 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602 ], [ 725, %bb.ir ], [ 726, %bb.is ], [ 727, %bb.it ], [ 728, %bb.iu ], [ 729, %bb.iv ], [ 270, %bb.iw ], [ 270, %bb.ix ], [ 270, %bb.iy ], [ 730, %bb.iz ], [ 736, %bb.ja ], [ 737, %bb.jb ], [ 738, %bb.jc ], [ 270, %bb.jd ], [ 739, %bb.je ], [ 740, %bb.jf ], [ 741, %bb.jg ], [ 742, %bb.jh ], [ 744, %bb.ji ], [ 745, %bb.jj ], [ 270, %bb.jk ], [ 747, %bb.jl ], [ 748, %bb.jm ], [ 751, %bb.jn ], [ 753, %bb.jo ], [ 754, %bb.jp ], [ 755, %bb.jq ], [ 756, %bb.jr ], [ 757, %bb.js ], [ 758, %bb.jt ], [ 759, %bb.ju ], [ 760, %bb.jv ], [ 761, %bb.jw ], [ 762, %bb.jx ], [ 763, %bb.jy ], [ 764, %bb.jz ], [ 765, %bb.ka ], [ 766, %bb.kb ], [ 767, %bb.kc ], [ 768, %bb.kd ], [ 769, %bb.ke ], [ 270, %bb.kf ], [ 770, %bb.kg ], [ 771, %bb.kh ], [ 772, %bb.ki ], [ 776, %bb.kj ], [ 777, %bb.kk ], [ 778, %bb.kl ], [ 270, %bb.km ], [ 780, %bb.kn ], [ 781, %bb.ko ], [ 782, %bb.kp ], [ 783, %bb.kq ], [ 784, %bb.kr ], [ 785, %bb.ks ], [ 347, %bb.kt ], [ 351, %bb.ku ], [ 353, %bb.kv ], [ 357, %bb.kw ], [ 363, %bb.kx ], [ 364, %bb.ky ], [ 365, %bb.kz ], [ 367, %bb.la ], [ 368, %bb.lb ], [ 369, %bb.lc ], [ 375, %bb.ld ], [ 387, %bb.le ], [ 388, %bb.lf ], [ 389, %bb.lg ], [ 391, %bb.lh ], [ 394, %bb.li ], [ 394, %bb.lj ], [ 395, %bb.lk ], [ 396, %bb.ll ], [ 397, %bb.lm ], [ 402, %bb.ln ], [ 406, %bb.lo ], [ 408, %bb.lp ], [ 412, %bb.lq ], [ 414, %bb.lw ], [ 416, %bb.lx ], [ 424, %bb.ly ], [ 425, %bb.lz ], [ 426, %bb.ma ], [ 427, %bb.mb ], [ 428, %bb.mc ], [ 430, %bb.md ], [ 436, %bb.me ], [ 437, %bb.mf ], [ 438, %bb.mg ], [ 447, %bb.mh ], [ 448, %bb.mi ], [ 449, %bb.mj ], [ 453, %bb.mk ], [ 457, %bb.ml ], [ 271, %bb.mm ], [ 471, %bb.mn ], [ 271, %bb.mo ], [ 471, %bb.mp ], [ 472, %bb.mq ], [ 473, %bb.mr ], [ 479, %bb.ms ], [ 480, %bb.mt ], [ 481, %bb.mu ], [ 482, %bb.mv ], [ 483, %bb.mw ], [ 485, %bb.mx ], [ 486, %bb.my ], [ 489, %bb.mz ], [ 490, %bb.na ], [ 491, %bb.nb ], [ 492, %bb.nc ], [ 497, %bb.nd ], [ 498, %bb.ne ], [ 499, %bb.nf ], [ 500, %bb.ng ], [ 507, %bb.nh ], [ 508, %bb.ni ], [ 509, %bb.nj ], [ 511, %bb.nk ], [ 513, %bb.nl ], [ 514, %bb.nm ], [ 517, %bb.nn ], [ 518, %bb.no ], [ 519, %bb.np ], [ 520, %bb.nq ], [ 521, %bb.nr ], [ 522, %bb.ns ], [ 271, %bb.nt ], [ 529, %bb.nu ], [ 530, %bb.nv ], [ 536, %bb.nw ], [ 537, %bb.nx ], [ 540, %bb.ny ], [ 541, %bb.nz ], [ 549, %bb.oa ], [ 553, %bb.ob ], [ 556, %bb.oc ], [ 559, %bb.od ], [ 560, %bb.oe ], [ 561, %bb.of ], [ 562, %bb.og ], [ 563, %bb.oh ], [ 564, %bb.oi ], [ 565, %bb.oj ], [ 566, %bb.ok ], [ 567, %bb.ol ], [ 582, %bb.om ], [ 589, %bb.on ], [ 591, %bb.oo ], [ 593, %bb.op ], [ 594, %bb.oq ], [ 595, %bb.or ], [ 597, %bb.os ], [ 605, %bb.ot ], [ 607, %bb.ou ], [ 608, %bb.ov ], [ 743, %bb.ow ], [ 775, %bb.ox ], [ 355, %bb.oy ], [ 403, %bb.oz ], [ 431, %bb.pa ], [ 432, %bb.pb ], [ 270, %bb.pc ], [ 463, %bb.pd ], [ 270, %bb.pe ], [ 270, %bb.pf ], [ 270, %bb.pg ], [ 270, %bb.ph ], [ 526, %bb.pi ], [ 576, %bb.pj ], [ 370, %bb.pk ], [ 376, %bb.pl ], [ 390, %bb.pm ], [ 401, %bb.pn ], [ 445, %bb.po ], [ 446, %bb.pq ], [ 451, %bb.py ], [ 461, %bb.pz ], [ 462, %bb.qa ], [ 580, %bb.qb ], [ 636, %bb.qc ], [ 597, %bb.qd ], [ 626, %bb.qe ], [ 633, %bb.qf ], [ 634, %bb.qg ], [ 635, %bb.qh ], [ 639, %bb.qi ], [ 640, %bb.qj ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit638 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit656 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit692 ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit710 ], [ 641, %bb.sn ], [ 661, %bb.so ], [ 664, %bb.sp ], [ 665, %bb.sq ], [ 671, %bb.sr ], [ 672, %bb.ss ], [ 694, %bb.st ], [ 699, %bb.su ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit728 ], [ 701, %bb.tg ], [ 703, %bb.th ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746 ], [ 704, %bb.tt ], [ 705, %bb.tu ], [ 706, %bb.tv ], [ 707, %bb.tw ], [ 709, %bb.tx ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit764 ], [ 712, %bb.uj ], [ 719, %bb.uk ], [ 720, %bb.ul ], [ 721, %bb.um ], [ 722, %bb.un ], [ 731, %bb.uo ], [ 732, %bb.up ], [ 733, %bb.uq ], [ 734, %bb.ur ], [ 735, %bb.us ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782 ], [ 746, %bb.ve ], [ 749, %bb.vf ], [ 750, %bb.vg ], [ 752, %bb.vh ], [ 774, %bb.vi ], [ 779, %bb.vj ], [ 773, %bb.vk ], [ 346, %bb.vl ], [ 348, %bb.vm ], [ 349, %bb.vn ], [ 350, %bb.vo ], [ 352, %bb.vp ], [ 354, %bb.vq ], [ 356, %bb.vr ], [ 358, %bb.vs ], [ 359, %bb.vt ], [ 360, %bb.vu ], [ 361, %bb.vv ], [ 362, %bb.vw ], [ 366, %bb.vx ], [ 371, %bb.vy ], [ 373, %bb.vz ], [ 374, %bb.wa ], [ 379, %bb.wb ], [ 377, %bb.wc ], [ 381, %bb.wd ], [ 382, %bb.we ], [ 383, %bb.wf ], [ 384, %bb.wg ], [ 385, %bb.wh ], [ 386, %bb.wi ], [ 392, %bb.wj ], [ 393, %bb.wk ], [ 399, %bb.wl ], [ 400, %bb.wm ], [ 404, %bb.wn ], [ 405, %bb.wo ], [ 407, %bb.wp ], [ 409, %bb.wq ], [ 410, %bb.wr ], [ 411, %bb.ws ], [ 415, %bb.wt ], [ 418, %bb.wu ], [ 419, %bb.wv ], [ 420, %bb.ww ], [ 421, %bb.wx ], [ 422, %bb.wy ], [ 423, %bb.wz ], [ 429, %bb.xa ], [ 439, %bb.xb ], [ 440, %bb.xc ], [ 441, %bb.xd ], [ 444, %bb.xe ], [ 450, %bb.xf ], [ 452, %bb.xg ], [ 455, %bb.xh ], [ 456, %bb.xi ], [ 458, %bb.xj ], [ 459, %bb.xk ], [ 466, %bb.xl ], [ 467, %bb.xm ], [ 468, %bb.xn ], [ 469, %bb.xo ], [ 470, %bb.xp ], [ 476, %bb.xq ], [ 484, %bb.xr ], [ 487, %bb.xs ], [ 488, %bb.xt ], [ 493, %bb.xu ], [ 494, %bb.xv ], [ 495, %bb.xw ], [ 496, %bb.xx ], [ 501, %bb.xy ], [ 502, %bb.xz ], [ 503, %bb.ya ], [ 504, %bb.yb ], [ 505, %bb.yc ], [ 506, %bb.yd ], [ 510, %bb.ye ], [ 515, %bb.yf ], [ 516, %bb.yg ], [ 523, %bb.yh ], [ 524, %bb.yi ], [ 525, %bb.yj ], [ 528, %bb.yk ], [ 533, %bb.yl ], [ 534, %bb.ym ], [ 538, %bb.yn ], [ 539, %bb.yo ], [ 551, %bb.yp ], [ 554, %bb.yq ], [ 555, %bb.yr ], [ 557, %bb.ys ], [ 558, %bb.yt ], [ 572, %bb.yu ], [ 569, %bb.yv ], [ 573, %bb.yw ], [ 574, %bb.yx ], [ 581, %bb.yy ], [ 586, %bb.yz ], [ 588, %bb.za ], [ 590, %bb.zb ], [ 596, %bb.zc ], [ 602, %bb.zd ], [ 598, %bb.ze ], [ 614, %bb.zf ], [ 615, %bb.zg ], [ 616, %bb.zh ], [ 617, %bb.zi ], [ 618, %bb.zj ], [ 619, %bb.zk ], [ 620, %bb.zl ], [ 621, %bb.zm ], [ 622, %bb.zn ], [ 345, %bb.zo ], [ 372, %bb.zp ], [ 398, %bb.zq ], [ 417, %bb.zr ], [ 435, %bb.zs ], [ 443, %bb.zt ], [ 460, %bb.zu ], [ 478, %bb.zv ], [ 512, %bb.zw ], [ 544, %bb.zx ], [ 545, %bb.zy ], [ 546, %bb.zz ], [ 547, %bb.aaa ], [ 548, %bb.aab ], [ 535, %bb.aac ], [ 542, %bb.aad ], [ 543, %bb.aae ], [ 575, %bb.aaf ], [ 577, %bb.aag ], [ 578, %bb.aah ], [ 579, %bb.aai ], [ 592, %bb.aaj ], [ 613, %bb.aak ], [ 442, %bb.aal ], [ 454, %bb.aam ], [ 474, %bb.aan ], [ 527, %bb.aao ], [ 339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit797 ], [ 611, %bb.acz ], [ 612, %bb.ada ], [ 623, %bb.adg ], [ 624, %bb.adh ], [ 625, %bb.adi ], [ 632, %bb.ado ], [ 637, %bb.aej ], [ 638, %bb.aek ], [ 663, %bb.agy ], [ 679, %bb.ahj ], [ 702, %bb.ahz ], [ 710, %bb.akd ], [ 711, %bb.ake ], [ 723, %bb.alt ], [ 744, %bb.alz ], [ 745, %bb.ama ], [ 747, %bb.aml ], [ 534, %bb.amm ], [ 764, %bb.amn ], [ 765, %bb.amo ], [ 606, %bb.anj ], [ 787, %bb.aof ], [ 786, %bb.aog ], [ 788, %bb.aoh ], [ 789, %bb.aok ], [ 790, %bb.aol ], [ 791, %bb.aom ], [ 792, %bb.aon ], [ 793, %bb.aoo ], [ 794, %bb.aot ], [ 795, %bb.aou ], [ 796, %bb.aov ], [ 797, %bb.aow ], [ 798, %bb.aox ], [ 799, %bb.aoy ], [ 800, %bb.aoz ], [ 801, %bb.apa ], [ 802, %bb.apb ], [ 803, %bb.apc ], [ 804, %bb.apd ], [ 805, %bb.ape ], [ 808, %bb.apf ], [ 806, %bb.apg ], [ 807, %bb.aph ], [ 809, %bb.api ], [ 810, %bb.apj ], [ 811, %bb.app ], [ 812, %bb.apq ], [ 813, %bb.apr ], [ 814, %bb.aps ], [ 815, %bb.apt ], [ 816, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1202 ], [ 817, %bb.aqb ], [ 818, %bb.aqc ], [ %i.nzt, %bb.aqf ], [ %i.oag, %bb.aqg ], [ %i.oat, %bb.aqh ], [ %i.obg, %bb.aqi ], [ %i.obt, %bb.aqj ], [ %i.ocg, %bb.aqk ], [ %i.oct, %bb.aql ], [ %i.odg, %bb.aqm ], [ %i.odt, %bb.aqn ], [ %i.oeg, %bb.aqo ], [ %i.oet, %bb.aqp ], [ %i.ofg, %bb.aqq ], [ %i.oft, %bb.aqr ], [ %i.ogg, %bb.aqs ], [ %i.ogt, %bb.aqt ], [ %i.ohg, %bb.aqu ], [ %i.oht, %bb.aqv ], [ %i.oig, %bb.aqw ], [ %i.oit, %bb.aqx ], [ %i.ojg, %bb.aqy ], [ %i.ojt, %bb.aqz ], [ %i.okg, %bb.ara ], [ %i.okt, %bb.arb ], [ %i.olg, %bb.arc ], [ %i.olt, %bb.ard ], [ %i.omg, %bb.are ], [ %i.omt, %bb.arf ], [ 822, %bb.arg ], [ 821, %bb.arh ], [ 833, %bb.ari ], [ 832, %bb.arj ], [ 835, %bb.ark ], [ 836, %bb.arl ], [ 826, %bb.arm ], [ 827, %bb.arn ], [ 828, %bb.aro ], [ 829, %bb.arp ], [ 824, %bb.arq ], [ 824, %bb.arr ], [ 825, %bb.ars ], [ 823, %bb.art ], [ 847, %bb.aru ], [ 849, %bb.arv ], [ 850, %bb.arw ], [ 851, %bb.arx ], [ 835, %bb.ary ], [ 837, %bb.arz ], [ 838, %bb.asa ], [ 845, %bb.asb ], [ 846, %bb.asc ], [ 855, %bb.asd ], [ 58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1208 ], [ 819, %bb.asj ], [ 820, %bb.ask ], [ 830, %bb.asl ], [ 831, %bb.asm ], [ 866, %bb.asn ], [ 867, %bb.aso ], [ 868, %bb.asp ], [ 869, %bb.asq ], [ 870, %bb.asr ], [ 871, %bb.ass ], [ 872, %bb.ast ], [ 873, %bb.asu ], [ 874, %bb.asv ], [ 875, %bb.asw ], [ 876, %bb.asx ], [ 877, %bb.asy ], [ 876, %bb.asz ], [ 878, %bb.ata ], [ 848, %bb.atb ], [ 852, %bb.atc ], [ 853, %bb.atd ], [ 854, %bb.ate ], [ 856, %bb.atf ], [ 857, %bb.atg ], [ 858, %bb.ath ], [ 859, %bb.ati ], [ 860, %bb.atj ], [ 861, %bb.atk ], [ 862, %bb.atl ], [ 865, %bb.atm ], [ 864, %bb.atn ], [ 863, %bb.ato ], [ 844, %bb.atp ], [ 879, %bb.atq ], [ 880, %bb.atr ], [ 261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1217 ], [ 261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1229 ], [ 267, %bb.aug ], [ 265, %.critedge512 ], [ 265, %bb.aum ], [ 265, %bb.aun ], [ 258, %bb.auo ], [ 258, %bb.aup ], [ 266, %bb.auq ], [ 344, %bb.aur ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1238 ], [ 267, %bb.ave ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1250 ], [ 267, %bb.avo ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1256 ], [ 272, %bb.awc ], [ 272, %bb.awd ], [ 273, %bb.awe ], [ 274, %bb.awf ], [ %i.qde, %bb.awg ], [ 413, %bb.awk ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1262 ], [ 269, %bb.awq ], [ %i.qim, %bb.awr ], [ %i.qju, %bb.awt ], [ 340, %bb.aya ], [ 341, %bb.ayg ], [ 342, %bb.ayj ], [ 343, %bb.ayk ], [ 277, %bb.bah ], [ 278, %bb.bai ], [ 281, %bb.baj ], [ 279, %bb.bak ], [ 280, %bb.bal ], [ 275, %bb.bam ], [ 276, %bb.ban ], [ %i.sum, %bb.bas ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ], [ 0, %bb.z ]
  ret i32 %.177

bb.bbv:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1253, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1235, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1223, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1097, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1091, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1085, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1061, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1037, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1031, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1025, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit935, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit929, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit899, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit791, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit755, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit752, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515
  %.pn505.pn = phi { ptr, i32 } [ %.pn505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit515 ], [ %.pn503, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ], [ %.pn501, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit539 ], [ %.pn498.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit536 ], [ %.pn496, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit557 ], [ %.pn493.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit554 ], [ %.pn491, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575 ], [ %.pn488.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.pn486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit593 ], [ %.pn483.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit590 ], [ %.pn481, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611 ], [ %.pn478.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit608 ], [ %.pn475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %.pn472.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit629 ], [ %.pn470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit647 ], [ %.pn467.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644 ], [ %.pn465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit665 ], [ %.pn462.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit662 ], [ %.pn460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit683 ], [ %.pn457.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit680 ], [ %.pn455, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit701 ], [ %.pn452.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit698 ], [ %.pn450, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719 ], [ %.pn447.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit716 ], [ %.pn445, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit737 ], [ %.pn442.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit734 ], [ %.pn440, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit755 ], [ %.pn437.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit752 ], [ %.pn435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773 ], [ %.pn432.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770 ], [ %.pn430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit791 ], [ %.pn427.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788 ], [ %.pn424.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit803 ], [ %.pn422, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809 ], [ %.pn420, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit815 ], [ %.pn418, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821 ], [ %.pn416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit827 ], [ %.pn414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit833 ], [ %.pn412, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit839 ], [ %.pn410, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit845 ], [ %.pn408, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit851 ], [ %.pn406, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857 ], [ %.pn404, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863 ], [ %.pn402, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit869 ], [ %.pn400, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit875 ], [ %.pn398, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit881 ], [ %.pn396, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit887 ], [ %.pn394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit893 ], [ %.pn392, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit899 ], [ %.pn390, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit905 ], [ %.pn388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit911 ], [ %.pn386, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit917 ], [ %.pn384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit923 ], [ %.pn382, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit929 ], [ %.pn380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit935 ], [ %.pn378, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941 ], [ %.pn376, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947 ], [ %.pn374, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953 ], [ %.pn372, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959 ], [ %.pn370, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit965 ], [ %.pn368, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit971 ], [ %.pn366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit977 ], [ %.pn364, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit983 ], [ %.pn362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit989 ], [ %.pn360, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit995 ], [ %.pn358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1001 ], [ %.pn356, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1007 ], [ %.pn354, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1013 ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1019 ], [ %.pn350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1025 ], [ %.pn348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1031 ], [ %.pn346, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1037 ], [ %.pn344, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1043 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1049 ], [ %.pn340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1055 ], [ %.pn338, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1061 ], [ %.pn336, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1067 ], [ %.pn334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1073 ], [ %.pn332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1079 ], [ %.pn330, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1085 ], [ %.pn328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1091 ], [ %.pn326, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1097 ], [ %.pn324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1103 ], [ %.pn322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1109 ], [ %.pn320, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1115 ], [ %.pn318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1121 ], [ %.pn316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1127 ], [ %.pn314, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1133 ], [ %.pn312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1139 ], [ %.pn310, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1145 ], [ %.pn308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1151 ], [ %.pn306, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1157 ], [ %.pn304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1163 ], [ %.pn302, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1169 ], [ %.pn300, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1175 ], [ %.pn298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1181 ], [ %.pn296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1187 ], [ %.pn294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1193 ], [ %.pn292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199 ], [ %i.nsu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1205 ], [ %.pn290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1211 ], [ %.pn286.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1223 ], [ %.pn283.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1235 ], [ %.pn278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1241 ], [ %.pn276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1247 ], [ %.pn274, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1253 ], [ %.pn272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1259 ], [ %.pn270, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1265 ], [ %.pn268, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1271 ], [ %.pn266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1277 ], [ %.pn264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1283 ], [ %.pn262, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1290 ], [ %.pn260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1296 ], [ %.pn258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1302 ], [ %.pn256, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1308 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1314 ]
  resume { ptr, i32 } %.pn505.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11V3LexerBase21yyensure_buffer_stackEv(ptr noundef nonnull align 8 dereferenceable(732) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #34 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !40
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull @.str.32)
  %.pre10 = load ptr, ptr %i.a, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %.pre10, %bb.c ], [ %i.c, %bb.b ]
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i64 1, ptr %i.h, align 8, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZN8FileLine6warnOnE11V3ErrorCodeb:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8V3Global5rootpEv(ptr noundef nonnull align 8 dereferenceable(1920) %0) #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !128
  ret ptr %i.a
}

declare void @_ZN10V3ParseImp17lexTimescaleParseEP8FileLinePKc(ptr noundef nonnull align 8 dereferenceable(552), ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN10V3ParseImp9newStringB5cxx11EPKc(ptr noundef nonnull align 8 dereferenceable(552) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !199
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.50) #39
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 %i.f, ptr %i.a, align 8, !tbaa !200
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.i    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.h, ptr %i.c, align 8, !tbaa !121
  %i.i = load i64, ptr %i.a, align 8, !tbaa !200
  store i64 %i.i, ptr %i.d, align 8, !tbaa !53
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc4 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1, !tbaa !53
  store i8 %i.k, ptr %i.j, align 1, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !125
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  store ptr %i.c, ptr %i.b, align 8, !tbaa !201
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !202  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !203
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.not.i = icmp eq ptr %i.q, %i.t
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.c, ptr %i.q, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !202
  br label %_ZNSt5dequeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE9push_backERKS6_.exit

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZNSt5dequeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE16_M_push_back_auxIJRKS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !201
  br label %_ZNSt5dequeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE9push_backERKS6_.exit

_ZNSt5dequeIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE9push_backERKS6_.exit: ; preds = %bb.g, %bb.h
  %i.w = phi ptr [ %i.c, %bb.g ], [ %.pre, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret ptr %i.w

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  resume { ptr, i32 } %i.x
}

declare void @_ZN10V3ParseImp24lexErrorPreprocDirectiveEP8FileLinePKc(ptr noundef, ptr noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN11V3LexerBase21yy_get_previous_stateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(732) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.f = load i32, ptr %i.e, align 8, !tbaa !55
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %._crit_edge
  %.01625 = phi ptr [ %i.h, %.lr.ph27 ], [ %i.av, %._crit_edge ] ; 3 uses
  %.01724 = phi i32 [ %i.b, %.lr.ph27 ], [ %i.au, %._crit_edge ] ; 3 uses
  %i.n = load i8, ptr %.01625, align 1, !tbaa !53 ; 2 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @_ZL5yy_ec, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.r = phi i8 [ %i.q, %bb.c ], [ 1, %bb.b ]     ; 2 uses
  %i.s = sext i32 %.01724 to i64                  ; 3 uses
  %i.t = getelementptr inbounds [2 x i8], ptr @_ZL9yy_accept, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !57
  %.not20 = icmp eq i16 %i.u, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.01724, ptr %i.l, align 8, !tbaa !59
  store ptr %.01625, ptr %i.m, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds [2 x i8], ptr @_ZL7yy_base, i64 %i.s
  %i.w = load i16, ptr %i.v, align 2, !tbaa !57
  %i.x = sext i16 %i.w to i64
  %i.y = zext i8 %i.r to i64                      ; 2 uses
  %i.z = add nsw i64 %i.x, %i.y                   ; 2 uses
  %i.aa = getelementptr inbounds [2 x i8], ptr @_ZL6yy_chk, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !57
  %i.ac = sext i16 %i.ab to i32
  %.not2122 = icmp eq i32 %.01724, %i.ac
  br i1 %.not2122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %i.ad = phi i64 [ %i.ao, %bb.h ], [ %i.y, %bb.f ]
  %i.ae = phi i64 [ %i.ak, %bb.h ], [ %i.s, %bb.f ]
  %.023 = phi i8 [ %.1, %bb.h ], [ %i.r, %bb.f ]
  %i.af = getelementptr inbounds [2 x i8], ptr @_ZL6yy_def, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !57 ; 3 uses
  %i.ah = icmp sgt i16 %i.ag, 5164
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr @_ZL7yy_meta, i64 %i.ad
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.1 = phi i8 [ %i.aj, %bb.g ], [ %.023, %.lr.ph ] ; 2 uses
  %i.ak = sext i16 %i.ag to i64                   ; 2 uses
  %i.al = getelementptr inbounds [2 x i8], ptr @_ZL7yy_base, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !57
  %i.an = sext i16 %i.am to i64
  %i.ao = zext i8 %.1 to i64                      ; 2 uses
  %i.ap = add nsw i64 %i.an, %i.ao                ; 2 uses
  %i.aq = getelementptr inbounds [2 x i8], ptr @_ZL6yy_chk, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !57
  %.not21 = icmp eq i16 %i.ag, %i.ar
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !191

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %.lcssa = phi i64 [ %i.z, %bb.f ], [ %i.ap, %bb.h ]
  %i.as = getelementptr inbounds [2 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa
  %i.at = load i16, ptr %i.as, align 2, !tbaa !57
  %i.au = sext i16 %i.at to i32                   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01625, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.av, %i.j
  br i1 %exitcond.not, label %._crit_edge28, label %bb.b, !llvm.loop !192

._crit_edge28:                                    ; preds = %._crit_edge, %bb.a
  %.017.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.au, %._crit_edge ]
  ret i32 %.017.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 -32768, 32768) i32 @_ZN11V3LexerBase16yy_try_NUL_transEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(732) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [2 x i8], ptr @_ZL9yy_accept, i64 %i.a
  %i.c = load i16, ptr %i.b, align 2, !tbaa !57
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 %1, ptr %i.f, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.e, ptr %i.g, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds [2 x i8], ptr @_ZL7yy_base, i64 %i.a
  %i.i = load i16, ptr %i.h, align 2, !tbaa !57
  %i.j = sext i16 %i.i to i64
  %i.k = add nsw i64 %i.j, 1                      ; 2 uses
  %i.l = getelementptr inbounds [2 x i8], ptr @_ZL6yy_chk, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !57
  %i.n = sext i16 %i.m to i32
  %.not1516 = icmp eq i32 %1, %i.n
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.o = phi i64 [ %i.r, %.lr.ph ], [ %i.a, %bb.c ]
  %i.p = getelementptr inbounds [2 x i8], ptr @_ZL6yy_def, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !57   ; 2 uses
  %i.r = sext i16 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds [2 x i8], ptr @_ZL7yy_base, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !57
  %i.u = sext i16 %i.t to i64
  %i.v = add nsw i64 %i.u, 1                      ; 2 uses
  %i.w = getelementptr inbounds [2 x i8], ptr @_ZL6yy_chk, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !57
  %.not15 = icmp eq i16 %i.q, %i.x
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !193

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.lcssa = phi i64 [ %i.k, %bb.c ], [ %i.v, %.lr.ph ]
  %i.y = getelementptr inbounds [2 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa
  %i.z = load i16, ptr %i.y, align 2, !tbaa !57   ; 2 uses
  %i.aa = icmp eq i16 %i.z, 5164
  %narrow = select i1 %i.aa, i16 0, i16 %i.z
  %i.ab = sext i16 %narrow to i32
  ret i32 %i.ab
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN11V3LexerBase18yy_get_next_bufferEv(ptr noundef nonnull align 8 dereferenceable(732) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 10 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !190  ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 6 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 7 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !48
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %i.h, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 1
  %i.t = icmp ugt ptr %i.n, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(732) %0, ptr noundef nonnull @.str.27)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !40
  %.pre61 = load i64, ptr %i.c, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.pre61
  %.pre62 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi ptr [ %.pre62, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !224
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !51
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !55
  %i.ah = sext i32 %i.ag to i64
  %i.ai = add i64 %i.ae, %i.ah
  %i.aj = sub i64 %i.ad, %i.ai
  %i.ak = icmp eq i64 %i.aj, 1
  %. = select i1 %i.ak, i32 1, i32 2
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.al = xor i64 %i.ae, -1
  %i.am = add i64 %i.al, %i.ad                    ; 6 uses
  %i.an = trunc i64 %i.am to i32                  ; 6 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.e
  %i.ap = and i64 %i.am, 2147483647               ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.ap, 4
  %i.aq = sub i64 %i.l, %i.i
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp samesign ult i64 %i.ap, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.am, 28
  %n.vec = and i64 %i.am, 2147483616              ; 6 uses
  %i.as = trunc nuw nsw i64 %n.vec to i32
  %i.at = getelementptr i8, ptr %i.k, i64 %n.vec
  %i.au = getelementptr i8, ptr %i.h, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %index ; 2 uses
  %next.gep87 = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !53
  %wide.load88 = load <16 x i8>, ptr %i.av, align 1, !tbaa !53
  %i.aw = getelementptr i8, ptr %next.gep87, i64 16
  store <16 x i8> %wide.load, ptr %next.gep87, align 1, !tbaa !53
  store <16 x i8> %wide.load88, ptr %i.aw, align 1, !tbaa !53
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec91 = and i64 %i.am, 2147483644            ; 5 uses
  %i.ay = trunc nuw nsw i64 %n.vec91 to i32
  %i.az = getelementptr i8, ptr %i.k, i64 %n.vec91
  %i.ba = getelementptr i8, ptr %i.h, i64 %n.vec91
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 3 uses
  %next.gep93 = getelementptr i8, ptr %i.k, i64 %index92
  %next.gep94 = getelementptr i8, ptr %i.h, i64 %index92
  %wide.load95 = load <4 x i8>, ptr %next.gep93, align 1, !tbaa !53
  store <4 x i8> %wide.load95, ptr %next.gep94, align 1, !tbaa !53
  %index.next96 = add nuw i64 %index92, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !229

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.ap, %n.vec91
  br i1 %cmp.n97, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03453.ph = phi i32 [ 0, %iter.check ], [ %i.as, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  %.03552.ph = phi ptr [ %i.k, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  %.03651.ph = phi ptr [ %i.h, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.03453 = phi i32 [ %i.bf, %.lr.ph ], [ %.03453.ph, %.lr.ph.preheader ]
  %.03552 = phi ptr [ %i.bc, %.lr.ph ], [ %.03552.ph, %.lr.ph.preheader ] ; 2 uses
  %.03651 = phi ptr [ %i.be, %.lr.ph ], [ %.03651.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.03552, i64 1
  %i.bd = load i8, ptr %.03552, align 1, !tbaa !53
  %i.be = getelementptr inbounds nuw i8, ptr %.03651, i64 1
end_hunk_1
