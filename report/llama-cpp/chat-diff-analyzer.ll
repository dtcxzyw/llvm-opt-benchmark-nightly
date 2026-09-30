Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat-diff-analyzer?download=true
inline.NumInlined: 6589
inline.NumDeleted: 2461
loop-unroll.NumCompletelyUnrolled: 170
loop-unroll.NumUnrolled: 170
begin_hunk_0_@_ZN10autoparser13analyze_tools23extract_call_id_markersEv:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i318
  %i.rd = load i8, ptr %i.qx, align 1, !tbaa !24
  store i8 %i.rd, ptr %i.rc, align 1, !tbaa !24
  br label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i.i318
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rc, ptr align 1 %i.qx, i64 %i.qy, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %._crit_edge.i.i318
  %i.re = load i64, ptr %i.h, align 8, !tbaa !21  ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %i.re, ptr %i.rf, align 8, !tbaa !25
  %i.rg = load ptr, ptr %21, align 8, !tbaa !23
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.re
  store i8 0, ptr %i.rh, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.ri = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  store ptr %i.ri, ptr %22, align 8, !tbaa !19
  %i.rj = load ptr, ptr @_ZN10autoparserL11CALL_ID_999B5cxx11E, align 8, !tbaa !23 ; 2 uses
  %i.rk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN10autoparserL11CALL_ID_999B5cxx11E, i64 8), align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 %i.rk, ptr %i.g, align 8, !tbaa !21
  %i.rl = icmp ugt i64 %i.rk, 15
  br i1 %i.rl, label %.noexc.i322, label %._crit_edge.i.i321

.noexc.i322:                                      ; preds = %bb.cx
  %i.rm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc323 unwind label %bb.db ; 2 uses

.noexc323:                                        ; preds = %.noexc.i322
  store ptr %i.rm, ptr %22, align 8, !tbaa !23
  %i.rn = load i64, ptr %i.g, align 8, !tbaa !21
  store i64 %i.rn, ptr %i.ri, align 8, !tbaa !24
  br label %._crit_edge.i.i321

._crit_edge.i.i321:                               ; preds = %.noexc323, %bb.cx
  %i.ro = phi ptr [ %i.rm, %.noexc323 ], [ %i.ri, %bb.cx ] ; 2 uses
  switch i64 %i.rk, label %bb.cz [
    i64 1, label %bb.cy
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit324
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i321
  %i.rp = load i8, ptr %i.rj, align 1, !tbaa !24
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit324

bb.cz:                                            ; preds = %._crit_edge.i.i321
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ro, ptr align 1 %i.rj, i64 %i.rk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit324: ; preds = %._crit_edge.i.i321, %bb.cy, %bb.cz
  %i.rq = load i64, ptr %i.g, align 8, !tbaa !21  ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 %i.rq, ptr %i.rr, align 8, !tbaa !25
  %i.rs = load ptr, ptr %22, align 8, !tbaa !23
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rq
  store i8 0, ptr %i.rt, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %i.ru = load i64, ptr %i.rf, align 8, !tbaa !25 ; 2 uses
  %i.rv = load i64, ptr %i.rr, align 8, !tbaa !25
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.rv, i64 %i.ru) ; 3 uses
  %.not548 = icmp eq i64 %.sroa.speculated, 0
  %.pre551 = load ptr, ptr %21, align 8, !tbaa !23 ; 3 uses
  br i1 %.not548, label %._crit_edge.i.i.i.thread, label %.lr.ph

._crit_edge.i.i.i.thread:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit324
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.rw = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.rw, ptr %23, align 8, !tbaa !19, !alias.scope !324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !324
  store i64 0, ptr %i.f, align 8, !tbaa !21, !noalias !324
  br label %bb.dg

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit324
  %i.rx = load ptr, ptr %22, align 8, !tbaa !23
  br label %bb.dc

bb.da:                                            ; preds = %.noexc.i319
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

bb.db:                                            ; preds = %.noexc.i322
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488

bb.dc:                                            ; preds = %.lr.ph, %bb.dd
  %.0543 = phi i64 [ 0, %.lr.ph ], [ %i.sf, %bb.dd ] ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.pre551, i64 %.0543
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !24
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 %.0543
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !24
  %i.se = icmp eq i8 %i.sb, %i.sd
  br i1 %i.se, label %bb.dd, label %._crit_edge

bb.dd:                                            ; preds = %bb.dc
  %i.sf = add nuw i64 %.0543, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.sf, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.dc, !llvm.loop !314

._crit_edge:                                      ; preds = %bb.dd, %bb.dc
  %.058.lcssa.ph = phi i64 [ %.sroa.speculated, %bb.dd ], [ %.0543, %bb.dc ]
  %i.sg = call i64 @llvm.umin.i64(i64 %.058.lcssa.ph, i64 %i.ru) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.sh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.sh, ptr %23, align 8, !tbaa !19, !alias.scope !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !325
  store i64 %i.sg, ptr %i.f, align 8, !tbaa !21, !noalias !325
  %i.si = icmp ugt i64 %i.sg, 15
  br i1 %i.si, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %._crit_edge
  %i.sj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc325 unwind label %bb.dw ; 2 uses

.noexc325:                                        ; preds = %.noexc10.i.i
  store ptr %i.sj, ptr %23, align 8, !tbaa !23, !alias.scope !325
  %i.sk = load i64, ptr %i.f, align 8, !tbaa !21, !noalias !325
  store i64 %i.sk, ptr %i.sh, align 8, !tbaa !24, !alias.scope !325
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc325, %._crit_edge
  %i.sl = phi ptr [ %i.sj, %.noexc325 ], [ %i.sh, %._crit_edge ] ; 2 uses
  switch i64 %i.sg, label %bb.df [
    i64 1, label %bb.de
    i64 0, label %bb.dg
  ]

bb.de:                                            ; preds = %._crit_edge.i.i.i
  %i.sm = load i8, ptr %.pre551, align 1, !tbaa !24
  store i8 %i.sm, ptr %i.sl, align 1, !tbaa !24
  br label %bb.dg

bb.df:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sl, ptr nonnull align 1 %.pre551, i64 %i.sg, i1 false)
  br label %bb.dg

bb.dg:                                            ; preds = %._crit_edge.i.i.i.thread, %bb.df, %bb.de, %._crit_edge.i.i.i
  %i.sn = phi ptr [ %i.rw, %._crit_edge.i.i.i.thread ], [ %i.sh, %bb.df ], [ %i.sh, %bb.de ], [ %i.sh, %._crit_edge.i.i.i ] ; 4 uses
  %i.so = load i64, ptr %i.f, align 8, !tbaa !21, !noalias !325 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.so, ptr %i.sp, align 8, !tbaa !25, !alias.scope !325
  %i.sq = load ptr, ptr %23, align 8, !tbaa !23, !alias.scope !325
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.so
  store i8 0, ptr %i.sr, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27, !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.ss = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  store ptr %i.ss, ptr %24, align 8, !tbaa !19
  %i.st = load ptr, ptr @_ZN10autoparserL9FUN_FIRSTB5cxx11E, align 8, !tbaa !23 ; 2 uses
  %i.su = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN10autoparserL9FUN_FIRSTB5cxx11E, i64 8), align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 %i.su, ptr %i.e, align 8, !tbaa !21
  %i.sv = icmp ugt i64 %i.su, 15
  br i1 %i.sv, label %.noexc.i327, label %._crit_edge.i.i326

.noexc.i327:                                      ; preds = %bb.dg
  %i.sw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc328 unwind label %bb.dx ; 2 uses

.noexc328:                                        ; preds = %.noexc.i327
  store ptr %i.sw, ptr %24, align 8, !tbaa !23
  %i.sx = load i64, ptr %i.e, align 8, !tbaa !21
  store i64 %i.sx, ptr %i.ss, align 8, !tbaa !24
  br label %._crit_edge.i.i326

._crit_edge.i.i326:                               ; preds = %.noexc328, %bb.dg
  %i.sy = phi ptr [ %i.sw, %.noexc328 ], [ %i.ss, %bb.dg ] ; 2 uses
  switch i64 %i.su, label %bb.di [
    i64 1, label %bb.dh
    i64 0, label %bb.dj
  ]

bb.dh:                                            ; preds = %._crit_edge.i.i326
  %i.sz = load i8, ptr %i.st, align 1, !tbaa !24
  store i8 %i.sz, ptr %i.sy, align 1, !tbaa !24
  br label %bb.dj

bb.di:                                            ; preds = %._crit_edge.i.i326
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sy, ptr align 1 %i.st, i64 %i.su, i1 false)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %._crit_edge.i.i326
  %i.ta = load i64, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 %i.ta, ptr %i.tb, align 8, !tbaa !25
  %i.tc = load ptr, ptr %24, align 8, !tbaa !23
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.ta
  store i8 0, ptr %i.td, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.te = load ptr, ptr %24, align 8, !tbaa !23
  %i.tf = load i64, ptr %i.tb, align 8, !tbaa !25
  %i.tg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.te, i64 noundef -1, i64 noundef %i.tf) #27 ; 4 uses
  %i.th = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 5 uses
  %i.ti = load ptr, ptr %24, align 8, !tbaa !23
  %i.tj = load i64, ptr %i.tb, align 8, !tbaa !25
  %i.tk = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.th, ptr noundef %i.ti, i64 noundef 0, i64 noundef %i.tj) #27 ; 3 uses
  %i.tl = icmp ne i64 %i.tg, -1
  %i.tm = icmp eq i64 %i.tk, -1
  %or.cond = and i1 %i.tl, %i.tm
  br i1 %or.cond, label %bb.dk, label %bb.gj

bb.dk:                                            ; preds = %bb.dj
  %i.tn = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 noundef signext 123, i64 noundef %i.tg) #27 ; 6 uses
  %i.to = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.th, i8 noundef signext 123, i64 noundef 0) #27
  %.not = icmp eq i64 %i.to, -1
  %.not152 = icmp eq i64 %i.tn, -1                ; 2 uses
  br i1 %.not, label %bb.fh, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tp = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.tq = load i64, ptr %i.tp, align 8            ; 5 uses
  %i.tr = icmp ugt i64 %i.tn, %i.tq
  %or.cond534 = select i1 %.not152, i1 true, i1 %i.tr
  br i1 %or.cond534, label %bb.dm, label %.thread524

bb.dm:                                            ; preds = %bb.dl
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 2, ptr %i.ts, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.tt = load i64, ptr %i.tb, align 8, !tbaa !25
  %i.tu = add i64 %i.tt, %i.tg                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.tv = icmp ugt i64 %i.tu, %i.tq
  br i1 %i.tv, label %bb.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.dn:                                            ; preds = %bb.dm
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.149, i64 noundef %i.tu, i64 noundef %i.tq) #26
          to label %.noexc333 unwind label %bb.dy

.noexc333:                                        ; preds = %bb.dn
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.dm
  %i.tw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.tw, ptr %25, align 8, !tbaa !19, !alias.scope !327
  %i.tx = load ptr, ptr %19, align 8, !tbaa !23, !noalias !327
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tu ; 2 uses
  %i.tz = sub nuw i64 %i.tq, %i.tu                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27, !noalias !327
  store i64 %i.tz, ptr %i.d, align 8, !tbaa !21, !noalias !327
  %i.ua = icmp ugt i64 %i.tz, 15
  br i1 %i.ua, label %.noexc10.i.i332, label %._crit_edge.i.i.i331

.noexc10.i.i332:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ub = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc334 unwind label %bb.dy ; 2 uses

.noexc334:                                        ; preds = %.noexc10.i.i332
  store ptr %i.ub, ptr %25, align 8, !tbaa !23, !alias.scope !327
  %i.uc = load i64, ptr %i.d, align 8, !tbaa !21, !noalias !327
  store i64 %i.uc, ptr %i.tw, align 8, !tbaa !24, !alias.scope !327
  br label %._crit_edge.i.i.i331

._crit_edge.i.i.i331:                             ; preds = %.noexc334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ud = phi ptr [ %i.ub, %.noexc334 ], [ %i.tw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.tz, label %bb.dp [
    i64 1, label %bb.do
    i64 0, label %bb.dq
  ]

bb.do:                                            ; preds = %._crit_edge.i.i.i331
  %i.ue = load i8, ptr %i.ty, align 1, !tbaa !24
  store i8 %i.ue, ptr %i.ud, align 1, !tbaa !24
  br label %bb.dq

bb.dp:                                            ; preds = %._crit_edge.i.i.i331
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ud, ptr align 1 %i.ty, i64 %i.tz, i1 false)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %._crit_edge.i.i.i331
  %i.uf = load i64, ptr %i.d, align 8, !tbaa !21, !noalias !327 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.uf, ptr %i.ug, align 8, !tbaa !25, !alias.scope !327
  %i.uh = load ptr, ptr %25, align 8, !tbaa !23, !alias.scope !327
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.uf
  store i8 0, ptr %i.ui, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27, !noalias !327
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  %i.uj = ptrtoint ptr %23 to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.um = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.um, align 8
  store i64 %i.uj, ptr %27, align 8, !tbaa !86
  store ptr @"_ZNSt17_Function_handlerIF17common_peg_parserR25common_peg_parser_builderEZN10autoparser13analyze_tools23extract_call_id_markersEvE3$_3E9_M_invokeERKSt9_Any_dataS2_", ptr %i.ul, align 8, !tbaa !117
  store ptr @"_ZNSt17_Function_handlerIF17common_peg_parserR25common_peg_parser_builderEZN10autoparser13analyze_tools23extract_call_id_markersEvE3$_3E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.uk, align 8, !tbaa !31
  invoke void @_Z23build_tagged_peg_parserRKSt8functionIF17common_peg_parserR25common_peg_parser_builderEE(ptr dead_on_unwind nonnull writable sret(%struct.tagged_peg_parser) align 8 %26, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.dr unwind label %bb.dz

bb.dr:                                            ; preds = %bb.dq
  %i.un = load ptr, ptr %i.uk, align 8, !tbaa !31 ; 2 uses
  %.not.i336 = icmp eq ptr %i.un, null
  br i1 %.not.i336, label %_ZNSt14_Function_baseD2Ev.exit337, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.uo = invoke noundef zeroext i1 %i.un(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit337 unwind label %bb.dt ; 0 uses

bb.dt:                                            ; preds = %bb.ds
  %i.up = landingpad { ptr, i32 }
          catch ptr null
  %i.uq = extractvalue { ptr, i32 } %i.up, 0
  call void @__clang_call_terminate(ptr %i.uq) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit337:                ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  invoke void @_ZNK17tagged_peg_parser26parse_anywhere_and_extractERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%struct.tagged_parse_result) align 8 %28, ptr noundef nonnull align 8 dereferenceable(92) %26, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.du unwind label %bb.ec

bb.du:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit337
  %i.ur = load i32, ptr %28, align 8, !tbaa !125
  %i.us = icmp eq i32 %i.ur, 1
  br i1 %i.us, label %._crit_edge.i.i338, label %bb.ee

._crit_edge.i.i338:                               ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.ut = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.ut, ptr %29, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ut, ptr noundef nonnull align 1 dereferenceable(6) @.str.136, i64 6, i1 false)
  %i.uu = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 6, ptr %i.uu, align 8, !tbaa !25
  %i.uv = getelementptr inbounds nuw i8, ptr %29, i64 22
  store i8 0, ptr %i.uv, align 2, !tbaa !24
  %i.uw = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.ux = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.uw, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.dv unwind label %bb.ed

bb.dv:                                            ; preds = %._crit_edge.i.i338
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 712
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.uy, ptr noundef nonnull align 8 dereferenceable(32) %i.ux)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ed

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.dv
  %i.uz = load ptr, ptr %29, align 8, !tbaa !23   ; 2 uses
  %i.va = icmp eq ptr %i.uz, %i.ut
  br i1 %i.va, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.vb = load i64, ptr %i.ut, align 8, !tbaa !24
  %i.vc = add i64 %i.vb, 1
  call void @_ZdlPvm(ptr noundef %i.uz, i64 noundef %i.vc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.em

bb.dw:                                            ; preds = %.noexc10.i.i
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit485

bb.dx:                                            ; preds = %.noexc.i327
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit482

bb.dy:                                            ; preds = %.noexc10.i.i332, %bb.dn
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

bb.dz:                                            ; preds = %bb.dq
  %i.vg = landingpad { ptr, i32 }
          cleanup
  %i.vh = load ptr, ptr %i.uk, align 8, !tbaa !31 ; 2 uses
  %.not.i346 = icmp eq ptr %i.vh, null
  br i1 %.not.i346, label %_ZNSt14_Function_baseD2Ev.exit347, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.vi = invoke noundef zeroext i1 %i.vh(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit347 unwind label %bb.eb ; 0 uses

bb.eb:                                            ; preds = %bb.ea
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #28
  unreachable

_ZNSt14_Function_baseD2Ev.exit347:                ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.fg

bb.ec:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit337
  %i.vl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ed:                                            ; preds = %bb.dv, %._crit_edge.i.i338
  %i.vm = landingpad { ptr, i32 }
          cleanup
  %i.vn = load ptr, ptr %29, align 8, !tbaa !23   ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.ut
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i348
end_hunk_0
begin_hunk_1_@_ZN10autoparser13analyze_tools23extract_call_id_markersEv:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit402

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i396, %.thread.i401
  store ptr %i.aap, ptr %37, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit402: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i398, %bb.fv, %bb.fw
  %i.abg = phi ptr [ %i.aal, %bb.fv ], [ %i.aap, %bb.fw ], [ %.pre.i399, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i398 ]
  %i.abh = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 0, ptr %i.abh, align 8, !tbaa !25
  store i8 0, ptr %i.abg, align 1, !tbaa !24
  %i.abi = load ptr, ptr %37, align 8, !tbaa !23  ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.abk = icmp eq ptr %i.abi, %i.abj
  br i1 %i.abk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit402
  %i.abl = load i64, ptr %i.abj, align 8, !tbaa !24
  %i.abm = add i64 %i.abl, 1
  call void @_ZdlPvm(ptr noundef %i.abi, i64 noundef %i.abm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i403
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  %i.abn = load ptr, ptr %36, align 8, !tbaa !23  ; 2 uses
  %i.abo = icmp eq ptr %i.abn, %i.zx
  br i1 %i.abo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405
  %i.abp = load i64, ptr %i.zx, align 8, !tbaa !24
  %i.abq = add i64 %i.abp, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.ga

bb.fx:                                            ; preds = %.noexc10.i.i384, %bb.fi
  %i.abr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

bb.fy:                                            ; preds = %.noexc10.i.i391, %bb.fn
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

bb.fz:                                            ; preds = %bb.fq
  %i.abt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #27
  %i.abu = load ptr, ptr %36, align 8, !tbaa !23  ; 2 uses
  %i.abv = icmp eq ptr %i.abu, %i.zx
  br i1 %i.abv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409: ; preds = %bb.fz
  %i.abw = load i64, ptr %i.zx, align 8, !tbaa !24
  %i.abx = add i64 %i.abw, 1
  call void @_ZdlPvm(ptr noundef %i.abu, i64 noundef %i.abx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409, %bb.fy
  %.pn154 = phi { ptr, i32 } [ %i.abs, %bb.fy ], [ %i.abt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i409 ], [ %i.abt, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #27
  br label %bb.gi

bb.ga:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  invoke fastcc void @"_ZZN10autoparser13analyze_tools23extract_call_id_markersEvENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"(ptr dead_on_unwind noalias writable align 8 %38, ptr noundef nonnull align 8 dereferenceable(32) %i.th)
          to label %bb.gb unwind label %bb.gh

bb.gb:                                            ; preds = %bb.ga
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 4 uses
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !23 ; 6 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.acb = icmp eq ptr %i.abz, %i.aca
  %i.acc = load ptr, ptr %38, align 8, !tbaa !23  ; 5 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.ace = icmp eq ptr %i.acc, %i.acd             ; 2 uses
  br i1 %i.acb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i412

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i417: ; preds = %bb.gb
  br i1 %i.ace, label %bb.gc, label %.thread.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i412: ; preds = %bb.gb
  br i1 %i.ace, label %bb.gc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i413

bb.gc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i412, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i417
  %i.acf = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !25 ; 3 uses
  %i.ach = icmp ult i64 %i.acg, 16
  call void @llvm.assume(i1 %i.ach)
  switch i64 %i.acg, label %bb.ge [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415
    i64 1, label %bb.gd
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.aci = load i8, ptr %i.acc, align 1, !tbaa !24
  store i8 %i.aci, ptr %i.abz, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415

bb.ge:                                            ; preds = %bb.gc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abz, ptr align 1 %i.acc, i64 %i.acg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415: ; preds = %bb.ge, %bb.gd, %bb.gc
  %i.acj = load i64, ptr %i.acf, align 8, !tbaa !25 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i64 %i.acj, ptr %i.ack, align 8, !tbaa !25
  %i.acl = load ptr, ptr %i.aby, align 8, !tbaa !23
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.acj
  store i8 0, ptr %i.acm, align 1, !tbaa !24
  %.pre.i416 = load ptr, ptr %38, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419

.thread.i418:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i417
  %i.acn = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %i.acc, ptr %i.aby, align 8, !tbaa !23
  %i.aco = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.acp = load <2 x i64>, ptr %i.aco, align 8, !tbaa !24
  store <2 x i64> %i.acp, ptr %i.acn, align 8, !tbaa !24
  br label %bb.gg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i413: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i412
  %i.acq = load i64, ptr %i.aca, align 8, !tbaa !24
  store ptr %i.acc, ptr %i.aby, align 8, !tbaa !23
  %i.acr = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.act = load <2 x i64>, ptr %i.acr, align 8, !tbaa !24
  store <2 x i64> %i.act, ptr %i.acs, align 8, !tbaa !24
  %.not.i414 = icmp eq ptr %i.abz, null
  br i1 %.not.i414, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i413
  store ptr %i.abz, ptr %38, align 8, !tbaa !23
  store i64 %i.acq, ptr %i.acd, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419

bb.gg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i413, %.thread.i418
  store ptr %i.acd, ptr %38, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415, %bb.gf, %bb.gg
  %i.acu = phi ptr [ %i.abz, %bb.gf ], [ %i.acd, %bb.gg ], [ %.pre.i416, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i415 ]
  %i.acv = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 0, ptr %i.acv, align 8, !tbaa !25
  store i8 0, ptr %i.acu, align 1, !tbaa !24
  %i.acw = load ptr, ptr %38, align 8, !tbaa !23  ; 2 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.acy = icmp eq ptr %i.acw, %i.acx
  br i1 %i.acy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419
  %i.acz = load i64, ptr %i.acx, align 8, !tbaa !24
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %i.acw, i64 noundef %i.ada) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.adb = load ptr, ptr %35, align 8, !tbaa !23  ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.zh
  br i1 %i.adc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422
  %i.add = load i64, ptr %i.zh, align 8, !tbaa !24
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.ade) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.hd

bb.gh:                                            ; preds = %bb.ga
  %i.adf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411
  %.pn156 = phi { ptr, i32 } [ %i.adf, %bb.gh ], [ %.pn154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit411 ] ; 2 uses
  %i.adg = load ptr, ptr %35, align 8, !tbaa !23  ; 2 uses
  %i.adh = icmp eq ptr %i.adg, %i.zh
  br i1 %i.adh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426: ; preds = %bb.gi
  %i.adi = load i64, ptr %i.zh, align 8, !tbaa !24
  %i.adj = add i64 %i.adi, 1
  call void @_ZdlPvm(ptr noundef %i.adg, i64 noundef %i.adj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426, %bb.fx
  %.pn156.pn = phi { ptr, i32 } [ %i.abr, %bb.fx ], [ %.pn156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426 ], [ %.pn156, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27
  br label %bb.ho

bb.gj:                                            ; preds = %bb.dj
  %.not552 = icmp ne i64 %i.tk, -1
  %.not553 = icmp eq i64 %i.tg, -1
  %or.cond3 = and i1 %.not553, %.not552
  br i1 %or.cond3, label %bb.gk, label %bb.hd

bb.gk:                                            ; preds = %bb.gj
  %i.adk = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i32 1, ptr %i.adk, align 8, !tbaa !326
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #27
  invoke fastcc void @"_ZZN10autoparser13analyze_tools23extract_call_id_markersEvENK3$_1clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.gl unwind label %bb.ha

bb.gl:                                            ; preds = %bb.gk
  %i.adl = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !23 ; 6 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.ado = icmp eq ptr %i.adm, %i.adn
  %i.adp = load ptr, ptr %39, align 8, !tbaa !23  ; 5 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.adr = icmp eq ptr %i.adp, %i.adq             ; 2 uses
  br i1 %i.ado, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i434: ; preds = %bb.gl
  br i1 %i.adr, label %bb.gm, label %.thread.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i429: ; preds = %bb.gl
  br i1 %i.adr, label %bb.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i430

bb.gm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i434
  %i.ads = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.adt = load i64, ptr %i.ads, align 8, !tbaa !25 ; 3 uses
  %i.adu = icmp ult i64 %i.adt, 16
  call void @llvm.assume(i1 %i.adu)
  switch i64 %i.adt, label %bb.go [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432
    i64 1, label %bb.gn
  ]

bb.gn:                                            ; preds = %bb.gm
  %i.adv = load i8, ptr %i.adp, align 1, !tbaa !24
  store i8 %i.adv, ptr %i.adm, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432

bb.go:                                            ; preds = %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.adm, ptr align 1 %i.adp, i64 %i.adt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432: ; preds = %bb.go, %bb.gn, %bb.gm
  %i.adw = load i64, ptr %i.ads, align 8, !tbaa !25 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i64 %i.adw, ptr %i.adx, align 8, !tbaa !25
  %i.ady = load ptr, ptr %i.adl, align 8, !tbaa !23
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 %i.adw
  store i8 0, ptr %i.adz, align 1, !tbaa !24
  %.pre.i433 = load ptr, ptr %39, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436

.thread.i435:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i434
  %i.aea = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %i.adp, ptr %i.adl, align 8, !tbaa !23
  %i.aeb = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aec = load <2 x i64>, ptr %i.aeb, align 8, !tbaa !24
  store <2 x i64> %i.aec, ptr %i.aea, align 8, !tbaa !24
  br label %bb.gq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i430: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i429
  %i.aed = load i64, ptr %i.adn, align 8, !tbaa !24
  store ptr %i.adp, ptr %i.adl, align 8, !tbaa !23
  %i.aee = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.aeg = load <2 x i64>, ptr %i.aee, align 8, !tbaa !24
  store <2 x i64> %i.aeg, ptr %i.aef, align 8, !tbaa !24
  %.not.i431 = icmp eq ptr %i.adm, null
  br i1 %.not.i431, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i430
  store ptr %i.adm, ptr %39, align 8, !tbaa !23
  store i64 %i.aed, ptr %i.adq, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436

bb.gq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i430, %.thread.i435
  store ptr %i.adq, ptr %39, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432, %bb.gp, %bb.gq
  %i.aeh = phi ptr [ %i.adm, %bb.gp ], [ %i.adq, %bb.gq ], [ %.pre.i433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432 ]
  %i.aei = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 0, ptr %i.aei, align 8, !tbaa !25
  store i8 0, ptr %i.aeh, align 1, !tbaa !24
  %i.aej = load ptr, ptr %39, align 8, !tbaa !23  ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.ael = icmp eq ptr %i.aej, %i.aek
  br i1 %i.ael, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436
  %i.aem = load i64, ptr %i.aek, align 8, !tbaa !24
  %i.aen = add i64 %i.aem, 1
  call void @_ZdlPvm(ptr noundef %i.aej, i64 noundef %i.aen) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.aeo = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.aep = load i64, ptr %i.aeo, align 8, !tbaa !25, !noalias !330
  %i.aeq = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 7 uses
  store ptr %i.aeq, ptr %40, align 8, !tbaa !19, !alias.scope !330
  %i.aer = load ptr, ptr %i.th, align 8, !tbaa !23, !noalias !330 ; 2 uses
  %spec.select.i.i.i441 = call noundef i64 @llvm.umin.i64(i64 %i.tk, i64 %i.aep) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !330
  store i64 %spec.select.i.i.i441, ptr %i.a, align 8, !tbaa !21, !noalias !330
  %i.aes = icmp ugt i64 %spec.select.i.i.i441, 15
  br i1 %i.aes, label %.noexc10.i.i443, label %._crit_edge.i.i.i442

.noexc10.i.i443:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.aet = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc444 unwind label %bb.hb ; 2 uses

.noexc444:                                        ; preds = %.noexc10.i.i443
  store ptr %i.aet, ptr %40, align 8, !tbaa !23, !alias.scope !330
  %i.aeu = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !330
  store i64 %i.aeu, ptr %i.aeq, align 8, !tbaa !24, !alias.scope !330
  br label %._crit_edge.i.i.i442

._crit_edge.i.i.i442:                             ; preds = %.noexc444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.aev = phi ptr [ %i.aet, %.noexc444 ], [ %i.aeq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439 ] ; 2 uses
  switch i64 %spec.select.i.i.i441, label %bb.gs [
    i64 1, label %bb.gr
    i64 0, label %bb.gt
  ]

bb.gr:                                            ; preds = %._crit_edge.i.i.i442
  %i.aew = load i8, ptr %i.aer, align 1, !tbaa !24
  store i8 %i.aew, ptr %i.aev, align 1, !tbaa !24
  br label %bb.gt

bb.gs:                                            ; preds = %._crit_edge.i.i.i442
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aev, ptr align 1 %i.aer, i64 %spec.select.i.i.i441, i1 false)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr, %._crit_edge.i.i.i442
  %i.aex = load i64, ptr %i.a, align 8, !tbaa !21, !noalias !330 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 %i.aex, ptr %i.aey, align 8, !tbaa !25, !alias.scope !330
  %i.aez = load ptr, ptr %40, align 8, !tbaa !23, !alias.scope !330
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.aex
  store i8 0, ptr %i.afa, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !330
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #27
  invoke fastcc void @"_ZZN10autoparser13analyze_tools23extract_call_id_markersEvENK3$_2clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"(ptr dead_on_unwind noalias writable align 8 %41, ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.gu unwind label %bb.hc

bb.gu:                                            ; preds = %bb.gt
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 4 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !23 ; 6 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.afe = icmp eq ptr %i.afc, %i.afd
  %i.aff = load ptr, ptr %41, align 8, !tbaa !23  ; 5 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.afh = icmp eq ptr %i.aff, %i.afg             ; 2 uses
  br i1 %i.afe, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i451: ; preds = %bb.gu
  br i1 %i.afh, label %bb.gv, label %.thread.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446: ; preds = %bb.gu
  br i1 %i.afh, label %bb.gv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i447

bb.gv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i446, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i451
  %i.afi = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.afj = load i64, ptr %i.afi, align 8, !tbaa !25 ; 3 uses
  %i.afk = icmp ult i64 %i.afj, 16
  call void @llvm.assume(i1 %i.afk)
  switch i64 %i.afj, label %bb.gx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i449
    i64 1, label %bb.gw
  ]

bb.gw:                                            ; preds = %bb.gv
  %i.afl = load i8, ptr %i.aff, align 1, !tbaa !24
  store i8 %i.afl, ptr %i.afc, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i449

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.afc, ptr align 1 %i.aff, i64 %i.afj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i449: ; preds = %bb.gx, %bb.gw, %bb.gv
  %i.afm = load i64, ptr %i.afi, align 8, !tbaa !25 ; 2 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 752
  store i64 %i.afm, ptr %i.afn, align 8, !tbaa !25
  %i.afo = load ptr, ptr %i.afb, align 8, !tbaa !23
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 %i.afm
  store i8 0, ptr %i.afp, align 1, !tbaa !24
  %.pre.i450 = load ptr, ptr %41, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit453

.thread.i452:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i451
  %i.afq = getelementptr inbounds nuw i8, ptr %0, i64 752
  store ptr %i.aff, ptr %i.afb, align 8, !tbaa !23
  %i.afr = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.afs = load <2 x i64>, ptr %i.afr, align 8, !tbaa !24
  store <2 x i64> %i.afs, ptr %i.afq, align 8, !tbaa !24
end_hunk_1
