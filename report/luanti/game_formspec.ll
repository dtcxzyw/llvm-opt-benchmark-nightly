Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game_formspec?download=true
inline.NumInlined: 777
inline.NumDeleted: 288
begin_hunk_0_@_ZN12GameFormSpec13showPauseMenuEv:bb.a
  br i1 %i.og, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.cj
  %i.oh = load i64, ptr %i.nk, align 8, !tbaa !36
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329, %bb.ci
  %.pn73 = phi { ptr, i32 } [ %i.od, %bb.ci ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %i.oe, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.fd

bb.ck:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.oj = call ptr @gettext(ptr noundef nonnull @.str.32) #26, !noalias !557 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.ok, ptr %15, align 8, !tbaa !35, !alias.scope !557
  %i.ol = icmp eq ptr %i.oj, null
  br i1 %i.ol, label %.noexc.i334, label %bb.cl

.noexc.i334:                                      ; preds = %bb.ck
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.72) #27
          to label %.noexc335 unwind label %bb.cp

.noexc335:                                        ; preds = %.noexc.i334
  unreachable

bb.cl:                                            ; preds = %bb.ck
  %i.om = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oj) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !557
  store i64 %i.om, ptr %i.f, align 8, !tbaa !50, !noalias !557
  %i.on = icmp ugt i64 %i.om, 15
  br i1 %i.on, label %.noexc.i.i333, label %._crit_edge.i.i.i332

.noexc.i.i333:                                    ; preds = %bb.cl
  %i.oo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc336 unwind label %bb.cp ; 2 uses

.noexc336:                                        ; preds = %.noexc.i.i333
  store ptr %i.oo, ptr %15, align 8, !tbaa !41, !alias.scope !557
  %i.op = load i64, ptr %i.f, align 8, !tbaa !50, !noalias !557
  store i64 %i.op, ptr %i.ok, align 8, !tbaa !36, !alias.scope !557
  br label %._crit_edge.i.i.i332

._crit_edge.i.i.i332:                             ; preds = %.noexc336, %bb.cl
  %i.oq = phi ptr [ %i.oo, %.noexc336 ], [ %i.ok, %bb.cl ] ; 2 uses
  switch i64 %i.om, label %bb.cn [
    i64 1, label %bb.cm
    i64 0, label %bb.co
  ]

bb.cm:                                            ; preds = %._crit_edge.i.i.i332
  %i.or = load i8, ptr %i.oj, align 1, !tbaa !36
  store i8 %i.or, ptr %i.oq, align 1, !tbaa !36
  br label %bb.co

bb.cn:                                            ; preds = %._crit_edge.i.i.i332
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oq, ptr nonnull align 1 %i.oj, i64 %i.om, i1 false)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %._crit_edge.i.i.i332
  %i.os = load i64, ptr %i.f, align 8, !tbaa !50, !noalias !557 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.os, ptr %i.ot, align 8, !tbaa !46, !alias.scope !557
  %i.ou = load ptr, ptr %15, align 8, !tbaa !41, !alias.scope !557
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.os
  store i8 0, ptr %i.ov, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !557
  %i.ow = load ptr, ptr %15, align 8, !tbaa !41
  %i.ox = load i64, ptr %i.ot, align 8, !tbaa !46
  %i.oy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.ow, i64 noundef %i.ox)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339 unwind label %bb.cq ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339: ; preds = %bb.co
  %i.oz = load ptr, ptr %15, align 8, !tbaa !41   ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.ok
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339
  %i.pb = load i64, ptr %i.ok, align 8, !tbaa !36
  %i.pc = add i64 %i.pb, 1
  call void @_ZdlPvm(ptr noundef %i.oz, i64 noundef %i.pc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.cr

bb.cp:                                            ; preds = %.noexc.i.i333, %.noexc.i334
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

bb.cq:                                            ; preds = %bb.co
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pf = load ptr, ptr %15, align 8, !tbaa !41   ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.ok
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.cq
  %i.ph = load i64, ptr %i.ok, align 8, !tbaa !36
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pi) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.cp
  %.pn77 = phi { ptr, i32 } [ %i.pd, %bb.cp ], [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.pe, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.fd

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.pj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347 unwind label %bb.fb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347: ; preds = %bb.cr
  br i1 %i.be, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347
  %i.pk = getelementptr inbounds nuw i8, ptr %i.kz, i64 592
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !46
  %i.pm = icmp eq i64 %i.pl, 0
  br i1 %i.pm, label %bb.ct, label %bb.en

bb.ct:                                            ; preds = %bb.cs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347
  %i.pn = load atomic i8, ptr @_ZGVZN12GameFormSpec13showPauseMenuEvE2onB5cxx11 acquire, align 8
  %i.po = icmp eq i8 %i.pn, 0
  br i1 %i.po, label %bb.cu, label %bb.cx, !prof !450

bb.cu:                                            ; preds = %bb.ct
  %i.pp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE2onB5cxx11) #26
  %.not79 = icmp eq i32 %i.pp, 0
  br i1 %.not79, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  invoke void @_Z10strgettextB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, ptr noundef nonnull @.str.33)
          to label %bb.cw unwind label %bb.dj

bb.cw:                                            ; preds = %bb.cv
  %i.pq = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE2onB5cxx11) #26
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu, %bb.ct
  %i.pr = load atomic i8, ptr @_ZGVZN12GameFormSpec13showPauseMenuEvE3offB5cxx11 acquire, align 8
  %i.ps = icmp eq i8 %i.pr, 0
  br i1 %i.ps, label %bb.cy, label %._crit_edge.i.i, !prof !450

bb.cy:                                            ; preds = %bb.cx
  %i.pt = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE3offB5cxx11) #26
  %.not80 = icmp eq i32 %i.pt, 0
  br i1 %.not80, label %._crit_edge.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_Z10strgettextB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, ptr noundef nonnull @.str.34)
          to label %bb.da unwind label %bb.dk

bb.da:                                            ; preds = %bb.cz
  %i.pu = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE3offB5cxx11) #26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.da, %bb.cy, %bb.cx
  %i.pv = load ptr, ptr @g_settings, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.pw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.pw, ptr %16, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.pw, ptr noundef nonnull align 1 dereferenceable(13) @.str.35, i64 13, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 13, ptr %i.px, align 8, !tbaa !46
  %i.py = getelementptr inbounds nuw i8, ptr %16, i64 29
  store i8 0, ptr %i.py, align 1, !tbaa !36
  %i.pz = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.pv, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.db unwind label %bb.dl

bb.db:                                            ; preds = %._crit_edge.i.i
  %i.qa = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.qb = icmp eq ptr %i.qa, %i.pw
  br i1 %i.qb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %bb.db
  %i.qc = load i64, ptr %i.pw, align 8, !tbaa !36
  %i.qd = add i64 %i.qc, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.qe = load ptr, ptr @g_settings, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.qf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.qf, ptr %17, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.qf, ptr noundef nonnull align 1 dereferenceable(15) @.str.36, i64 15, i1 false)
  %i.qg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 15, ptr %i.qg, align 8, !tbaa !46
  %i.qh = getelementptr inbounds nuw i8, ptr %17, i64 31
  store i8 0, ptr %i.qh, align 1, !tbaa !36
  %i.qi = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.qe, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.dc unwind label %bb.dm     ; 2 uses

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11._ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11 = select i1 %i.qi, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, ptr @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11 ; 2 uses
  %i.qj = load ptr, ptr %17, align 8, !tbaa !41   ; 2 uses
  %i.qk = icmp eq ptr %i.qj, %i.qf
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %bb.dc
  %i.ql = load i64, ptr %i.qf, align 8, !tbaa !36
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qj, i64 noundef %i.qm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br i1 %i.be, label %bb.en, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  br i1 %i.pz, label %._crit_edge.i.i360, label %bb.dq

._crit_edge.i.i360:                               ; preds = %bb.dd
  %i.qn = load ptr, ptr @g_settings, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.qo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.qo, ptr %18, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.qo, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, i64 10, i1 false)
  %i.qp = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 10, ptr %i.qp, align 8, !tbaa !46
  %i.qq = getelementptr inbounds nuw i8, ptr %18, i64 26
  store i8 0, ptr %i.qq, align 2, !tbaa !36
  %i.qr = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.qn, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.de unwind label %bb.dn     ; 2 uses

bb.de:                                            ; preds = %._crit_edge.i.i360
  %i.qs = load ptr, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.qo
  br i1 %i.qt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.de
  %i.qu = load i64, ptr %i.qo, align 8, !tbaa !36
  %i.qv = add i64 %i.qu, 1
  call void @_ZdlPvm(ptr noundef %i.qs, i64 noundef %i.qv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.qw = call ptr @gettext(ptr noundef nonnull @.str.38) #26, !noalias !560 ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.qx, ptr %19, align 8, !tbaa !35, !alias.scope !560
  %i.qy = icmp eq ptr %i.qw, null
  br i1 %i.qy, label %.noexc.i369, label %bb.df

.noexc.i369:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.72) #27
          to label %.noexc370 unwind label %bb.do

.noexc370:                                        ; preds = %.noexc.i369
  unreachable

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.qz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qw) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26, !noalias !560
  store i64 %i.qz, ptr %i.e, align 8, !tbaa !50, !noalias !560
  %i.ra = icmp ugt i64 %i.qz, 15
  br i1 %i.ra, label %.noexc.i.i368, label %._crit_edge.i.i.i367

.noexc.i.i368:                                    ; preds = %bb.df
  %i.rb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc371 unwind label %bb.do ; 2 uses

.noexc371:                                        ; preds = %.noexc.i.i368
  store ptr %i.rb, ptr %19, align 8, !tbaa !41, !alias.scope !560
  %i.rc = load i64, ptr %i.e, align 8, !tbaa !50, !noalias !560
  store i64 %i.rc, ptr %i.qx, align 8, !tbaa !36, !alias.scope !560
  br label %._crit_edge.i.i.i367

._crit_edge.i.i.i367:                             ; preds = %.noexc371, %bb.df
  %i.rd = phi ptr [ %i.rb, %.noexc371 ], [ %i.qx, %bb.df ] ; 2 uses
  switch i64 %i.qz, label %bb.dh [
    i64 1, label %bb.dg
    i64 0, label %bb.di
  ]

bb.dg:                                            ; preds = %._crit_edge.i.i.i367
  %i.re = load i8, ptr %i.qw, align 1, !tbaa !36
  store i8 %i.re, ptr %i.rd, align 1, !tbaa !36
  br label %bb.di

bb.dh:                                            ; preds = %._crit_edge.i.i.i367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rd, ptr nonnull align 1 %i.qw, i64 %i.qz, i1 false)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %._crit_edge.i.i.i367
  %i.rf = load i64, ptr %i.e, align 8, !tbaa !50, !noalias !560 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 %i.rf, ptr %i.rg, align 8, !tbaa !46, !alias.scope !560
  %i.rh = load ptr, ptr %19, align 8, !tbaa !41, !alias.scope !560
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.rf
  store i8 0, ptr %i.ri, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !560
  %i.rj = load ptr, ptr %19, align 8, !tbaa !41
  %i.rk = load i64, ptr %i.rg, align 8, !tbaa !46
  %i.rl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.rj, i64 noundef %i.rk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit374 unwind label %bb.dp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit374: ; preds = %bb.di
  %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11.val = load ptr, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, align 8
  %_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11.val = load ptr, ptr @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, align 8
  %26 = select i1 %i.qr, ptr %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11.val, ptr %_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11.val
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, i64 8), align 8
  %.val487 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, i64 8), align 8
  %27 = select i1 %i.qr, i64 %.val, i64 %.val487
  %i.rm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rl, ptr noundef %26, i64 noundef %27)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376 unwind label %bb.dp

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit374
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rm, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378 unwind label %bb.dp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376
  %i.ro = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.qx
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378
  %i.rq = load i64, ptr %i.qx, align 8, !tbaa !36
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.dq

bb.dj:                                            ; preds = %bb.cv
  %i.rs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE2onB5cxx11) #26
  br label %bb.fd

bb.dk:                                            ; preds = %bb.cz
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE3offB5cxx11) #26
  br label %bb.fd

bb.dl:                                            ; preds = %._crit_edge.i.i
  %i.ru = landingpad { ptr, i32 }
          cleanup
  %i.rv = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.pw
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %bb.dl
  %i.rx = load i64, ptr %i.pw, align 8, !tbaa !36
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.ry) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.fd

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %i.rz = landingpad { ptr, i32 }
          cleanup
  %i.sa = load ptr, ptr %17, align 8, !tbaa !41   ; 2 uses
  %i.sb = icmp eq ptr %i.sa, %i.qf
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.dm
  %i.sc = load i64, ptr %i.qf, align 8, !tbaa !36
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.sa, i64 noundef %i.sd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.fd

bb.dn:                                            ; preds = %._crit_edge.i.i360
  %i.se = landingpad { ptr, i32 }
          cleanup
  %i.sf = load ptr, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.qo
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %bb.dn
  %i.sh = load i64, ptr %i.qo, align 8, !tbaa !36
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.si) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.fd

bb.do:                                            ; preds = %.noexc.i.i368, %.noexc.i369
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

bb.dp:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit374, %bb.di
  %i.sk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sl = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %i.sm = icmp eq ptr %i.sl, %i.qx
  br i1 %i.sm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %bb.dp
  %i.sn = load i64, ptr %i.qx, align 8, !tbaa !36
  %i.so = add i64 %i.sn, 1
  call void @_ZdlPvm(ptr noundef %i.sl, i64 noundef %i.so) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391, %bb.do
  %.pn87 = phi { ptr, i32 } [ %i.sj, %bb.do ], [ %i.sk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391 ], [ %i.sk, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.fd

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.sp = call ptr @gettext(ptr noundef nonnull @.str.39) #26, !noalias !561 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.sq, ptr %20, align 8, !tbaa !35, !alias.scope !561
  %i.sr = icmp eq ptr %i.sp, null
  br i1 %i.sr, label %.noexc.i396, label %bb.dr

.noexc.i396:                                      ; preds = %bb.dq
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.72) #27
          to label %.noexc397 unwind label %bb.eg

.noexc397:                                        ; preds = %.noexc.i396
  unreachable

bb.dr:                                            ; preds = %bb.dq
  %i.ss = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sp) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !561
  store i64 %i.ss, ptr %i.d, align 8, !tbaa !50, !noalias !561
  %i.st = icmp ugt i64 %i.ss, 15
  br i1 %i.st, label %.noexc.i.i395, label %._crit_edge.i.i.i394

.noexc.i.i395:                                    ; preds = %bb.dr
  %i.su = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc398 unwind label %bb.eg ; 2 uses

.noexc398:                                        ; preds = %.noexc.i.i395
  store ptr %i.su, ptr %20, align 8, !tbaa !41, !alias.scope !561
  %i.sv = load i64, ptr %i.d, align 8, !tbaa !50, !noalias !561
  store i64 %i.sv, ptr %i.sq, align 8, !tbaa !36, !alias.scope !561
  br label %._crit_edge.i.i.i394

._crit_edge.i.i.i394:                             ; preds = %.noexc398, %bb.dr
  %i.sw = phi ptr [ %i.su, %.noexc398 ], [ %i.sq, %bb.dr ] ; 2 uses
  switch i64 %i.ss, label %bb.dt [
    i64 1, label %bb.ds
    i64 0, label %bb.du
  ]

bb.ds:                                            ; preds = %._crit_edge.i.i.i394
  %i.sx = load i8, ptr %i.sp, align 1, !tbaa !36
  store i8 %i.sx, ptr %i.sw, align 1, !tbaa !36
  br label %bb.du

bb.dt:                                            ; preds = %._crit_edge.i.i.i394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sw, ptr nonnull align 1 %i.sp, i64 %i.ss, i1 false)
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %._crit_edge.i.i.i394
  %i.sy = load i64, ptr %i.d, align 8, !tbaa !50, !noalias !561 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 %i.sy, ptr %i.sz, align 8, !tbaa !46, !alias.scope !561
  %i.ta = load ptr, ptr %20, align 8, !tbaa !41, !alias.scope !561
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 %i.sy
  store i8 0, ptr %i.tb, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !561
  %i.tc = load ptr, ptr %20, align 8, !tbaa !41
  %i.td = load i64, ptr %i.sz, align 8, !tbaa !46
  %i.te = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.tc, i64 noundef %i.td)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401 unwind label %bb.eh

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401: ; preds = %bb.du
  %i.tf = load ptr, ptr %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11._ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, align 8, !tbaa !41
  %28 = select i1 %i.qi, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, i64 8) ; 2 uses
  %i.tg = load i64, ptr %28, align 8, !tbaa !46
  %i.th = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.te, ptr noundef %i.tf, i64 noundef %i.tg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403 unwind label %bb.eh

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401
  %i.ti = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.th, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405 unwind label %bb.eh ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403
  %i.tj = load ptr, ptr %20, align 8, !tbaa !41   ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.sq
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405
  %i.tl = load i64, ptr %i.sq, align 8, !tbaa !36
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.tn = load ptr, ptr @g_settings, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.to = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.to, ptr %22, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.to, ptr noundef nonnull align 1 dereferenceable(11) @.str.40, i64 11, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 11, ptr %i.tp, align 8, !tbaa !46
  %i.tq = getelementptr inbounds nuw i8, ptr %22, i64 27
  store i8 0, ptr %i.tq, align 1, !tbaa !36
  %i.tr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.tn, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.dv unwind label %bb.ei     ; 2 uses

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.ts = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.ts, ptr %21, align 8, !tbaa !35
  %i.tt = load ptr, ptr %i.tr, align 8, !tbaa !41 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.tv, ptr %i.c, align 8, !tbaa !50
  %i.tw = icmp ugt i64 %i.tv, 15
  br i1 %i.tw, label %.noexc.i414, label %._crit_edge.i.i413

.noexc.i414:                                      ; preds = %bb.dv
  %i.tx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc415 unwind label %bb.ei ; 2 uses

.noexc415:                                        ; preds = %.noexc.i414
  store ptr %i.tx, ptr %21, align 8, !tbaa !41
  %i.ty = load i64, ptr %i.c, align 8, !tbaa !50
  store i64 %i.ty, ptr %i.ts, align 8, !tbaa !36
  br label %._crit_edge.i.i413

._crit_edge.i.i413:                               ; preds = %.noexc415, %bb.dv
  %i.tz = phi ptr [ %i.tx, %.noexc415 ], [ %i.ts, %bb.dv ] ; 2 uses
  switch i64 %i.tv, label %bb.dx [
    i64 1, label %bb.dw
    i64 0, label %bb.dy
  ]

bb.dw:                                            ; preds = %._crit_edge.i.i413
  %i.ua = load i8, ptr %i.tt, align 1, !tbaa !36
  store i8 %i.ua, ptr %i.tz, align 1, !tbaa !36
  br label %bb.dy

bb.dx:                                            ; preds = %._crit_edge.i.i413
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tz, ptr align 1 %i.tt, i64 %i.tv, i1 false)
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %._crit_edge.i.i413
  %i.ub = load i64, ptr %i.c, align 8, !tbaa !50  ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store i64 %i.ub, ptr %i.uc, align 8, !tbaa !46
  %i.ud = load ptr, ptr %21, align 8, !tbaa !41
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ub
  store i8 0, ptr %i.ue, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.uf = load ptr, ptr %22, align 8, !tbaa !41   ; 2 uses
  %i.ug = icmp eq ptr %i.uf, %i.to
  br i1 %i.ug, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %bb.dy
  %i.uh = load i64, ptr %i.to, align 8, !tbaa !36
  %i.ui = add i64 %i.uh, 1
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.ui) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %bb.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  invoke void @_Z19str_formspec_escapeRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.dz unwind label %bb.ej

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %i.uj = load i64, ptr %28, align 8, !tbaa !46   ; 3 uses
  %i.uk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, i64 8), align 8, !tbaa !46
  %i.ul = icmp eq i64 %i.uj, %i.uk
  br i1 %i.ul, label %bb.ea, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485

bb.ea:                                            ; preds = %bb.dz
  %i.um = icmp eq i64 %i.uj, 0
  br i1 %i.um, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ea
  %i.un = load ptr, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, align 8, !tbaa !41
  %i.uo = load ptr, ptr %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11._ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, align 8, !tbaa !41
  %bcmp.i = call i32 @bcmp(ptr %i.uo, ptr %i.un, i64 %i.uj)
  %i.up = icmp ne i32 %bcmp.i, 0
  %i.uq = load i64, ptr %i.uc, align 8
  %i.ur = icmp eq i64 %i.uq, 0
  %or.cond = select i1 %i.up, i1 true, i1 %i.ur
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485, label %bb.eb

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ea
  %.old = load i64, ptr %i.uc, align 8, !tbaa !46
  %.old486 = icmp eq i64 %.old, 0
  br i1 %.old486, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485, label %bb.eb

bb.eb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.us = call ptr @gettext(ptr noundef nonnull @.str.41) #26, !noalias !562 ; 4 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.ut, ptr %23, align 8, !tbaa !35, !alias.scope !562
  %i.uu = icmp eq ptr %i.us, null
  br i1 %i.uu, label %.noexc.i421, label %bb.ec

.noexc.i421:                                      ; preds = %bb.eb
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.72) #27
          to label %.noexc422 unwind label %bb.ek

.noexc422:                                        ; preds = %.noexc.i421
  unreachable

bb.ec:                                            ; preds = %bb.eb
  %i.uv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.us) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !562
  store i64 %i.uv, ptr %i.b, align 8, !tbaa !50, !noalias !562
  %i.uw = icmp ugt i64 %i.uv, 15
  br i1 %i.uw, label %.noexc.i.i420, label %._crit_edge.i.i.i419

.noexc.i.i420:                                    ; preds = %bb.ec
  %i.ux = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc423 unwind label %bb.ek ; 2 uses

.noexc423:                                        ; preds = %.noexc.i.i420
  store ptr %i.ux, ptr %23, align 8, !tbaa !41, !alias.scope !562
  %i.uy = load i64, ptr %i.b, align 8, !tbaa !50, !noalias !562
  store i64 %i.uy, ptr %i.ut, align 8, !tbaa !36, !alias.scope !562
  br label %._crit_edge.i.i.i419

._crit_edge.i.i.i419:                             ; preds = %.noexc423, %bb.ec
  %i.uz = phi ptr [ %i.ux, %.noexc423 ], [ %i.ut, %bb.ec ] ; 2 uses
  switch i64 %i.uv, label %bb.ee [
    i64 1, label %bb.ed
    i64 0, label %bb.ef
  ]

bb.ed:                                            ; preds = %._crit_edge.i.i.i419
  %i.va = load i8, ptr %i.us, align 1, !tbaa !36
  store i8 %i.va, ptr %i.uz, align 1, !tbaa !36
  br label %bb.ef

bb.ee:                                            ; preds = %._crit_edge.i.i.i419
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uz, ptr nonnull align 1 %i.us, i64 %i.uv, i1 false)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %._crit_edge.i.i.i419
  %i.vb = load i64, ptr %i.b, align 8, !tbaa !50, !noalias !562 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 %i.vb, ptr %i.vc, align 8, !tbaa !46, !alias.scope !562
  %i.vd = load ptr, ptr %23, align 8, !tbaa !41, !alias.scope !562
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 %i.vb
  store i8 0, ptr %i.ve, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !562
  %i.vf = load ptr, ptr %23, align 8, !tbaa !41
  %i.vg = load i64, ptr %i.vc, align 8, !tbaa !46
  %i.vh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.vf, i64 noundef %i.vg)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit426 unwind label %bb.el

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit426: ; preds = %bb.ef
  %i.vi = load ptr, ptr %21, align 8, !tbaa !41
  %i.vj = load i64, ptr %i.uc, align 8, !tbaa !46
  %i.vk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vh, ptr noundef %i.vi, i64 noundef %i.vj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428 unwind label %bb.el ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit426
  %i.vl = load ptr, ptr %23, align 8, !tbaa !41   ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.ut
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428
  %i.vn = load i64, ptr %i.ut, align 8, !tbaa !36
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485

bb.eg:                                            ; preds = %.noexc.i.i395, %.noexc.i396
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

bb.eh:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401, %bb.du
  %i.vq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vr = load ptr, ptr %20, align 8, !tbaa !41   ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.sq
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432: ; preds = %bb.eh
  %i.vt = load i64, ptr %i.sq, align 8, !tbaa !36
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit434: ; preds = %bb.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432, %bb.eg
  %.pn90 = phi { ptr, i32 } [ %i.vp, %bb.eg ], [ %i.vq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i432 ], [ %i.vq, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.fd

bb.ei:                                            ; preds = %.noexc.i414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.vv = landingpad { ptr, i32 }
          cleanup
  %i.vw = load ptr, ptr %22, align 8, !tbaa !41   ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.to
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.ei
  %i.vy = load i64, ptr %i.to, align 8, !tbaa !36
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.vz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %bb.em

bb.ek:                                            ; preds = %.noexc.i.i420, %.noexc.i421
  %i.wb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

bb.el:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit426, %bb.ef
  %i.wc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wd = load ptr, ptr %23, align 8, !tbaa !41   ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.ut
  br i1 %i.we, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438: ; preds = %bb.el
  %i.wf = load i64, ptr %i.ut, align 8, !tbaa !36
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440: ; preds = %bb.el, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438, %bb.ek
  %.pn94 = phi { ptr, i32 } [ %i.wb, %bb.ek ], [ %i.wc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i438 ], [ %i.wc, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.em

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485: ; preds = %bb.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.wh = load ptr, ptr %21, align 8, !tbaa !41   ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.ts
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485
  %i.wj = load i64, ptr %i.ts, align 8, !tbaa !36
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit443: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i441
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.en

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440, %bb.ej
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit440 ], [ %i.wa, %bb.ej ] ; 2 uses
  %i.wl = load ptr, ptr %21, align 8, !tbaa !41   ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.ts
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i444: ; preds = %bb.em
  %i.wn = load i64, ptr %i.ts, align 8, !tbaa !36
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wl, i64 noundef %i.wo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446
end_hunk_0
