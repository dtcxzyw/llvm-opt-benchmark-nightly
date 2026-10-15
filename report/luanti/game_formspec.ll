Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/game_formspec?download=true
inline.NumInlined: 777
inline.NumDeleted: 288
begin_hunk_0_@_ZN12GameFormSpec13showPauseMenuEv:bb.a
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.cl
  %i.oj = load i64, ptr %i.nm, align 8, !tbaa !36
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329, %bb.ck
  %.pn73 = phi { ptr, i32 } [ %i.of, %bb.ck ], [ %i.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %i.og, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.fg

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.ol = call ptr @gettext(ptr noundef nonnull @.str.32) #26, !noalias !557 ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.om, ptr %15, align 8, !tbaa !35, !alias.scope !557
  %i.on = icmp eq ptr %i.ol, null
  br i1 %i.on, label %.noexc.i334, label %bb.cn

.noexc.i334:                                      ; preds = %bb.cm
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.72) #27
          to label %.noexc335 unwind label %bb.cr

.noexc335:                                        ; preds = %.noexc.i334
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.oo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ol) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !557
  store i64 %i.oo, ptr %i.f, align 8, !tbaa !50, !noalias !557
  %i.op = icmp ugt i64 %i.oo, 15
  br i1 %i.op, label %.noexc.i.i333, label %._crit_edge.i.i.i332

.noexc.i.i333:                                    ; preds = %bb.cn
  %i.oq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc336 unwind label %bb.cr ; 2 uses

.noexc336:                                        ; preds = %.noexc.i.i333
  store ptr %i.oq, ptr %15, align 8, !tbaa !41, !alias.scope !557
  %i.or = load i64, ptr %i.f, align 8, !tbaa !50, !noalias !557
  store i64 %i.or, ptr %i.om, align 8, !tbaa !36, !alias.scope !557
  br label %._crit_edge.i.i.i332

._crit_edge.i.i.i332:                             ; preds = %.noexc336, %bb.cn
  %i.os = phi ptr [ %i.oq, %.noexc336 ], [ %i.om, %bb.cn ] ; 2 uses
  switch i64 %i.oo, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %bb.cq
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i332
  %i.ot = load i8, ptr %i.ol, align 1, !tbaa !36
  store i8 %i.ot, ptr %i.os, align 1, !tbaa !36
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge.i.i.i332
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.os, ptr nonnull align 1 %i.ol, i64 %i.oo, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i.i.i332
  %i.ou = load i64, ptr %i.f, align 8, !tbaa !50, !noalias !557 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.ou, ptr %i.ov, align 8, !tbaa !46, !alias.scope !557
  %i.ow = load ptr, ptr %15, align 8, !tbaa !41, !alias.scope !557
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.ou
  store i8 0, ptr %i.ox, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !557
  %i.oy = load ptr, ptr %15, align 8, !tbaa !41
  %i.oz = load i64, ptr %i.ov, align 8, !tbaa !46
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.oy, i64 noundef %i.oz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339 unwind label %bb.cs ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339: ; preds = %bb.cq
  %i.pb = load ptr, ptr %15, align 8, !tbaa !41   ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.om
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339
  %i.pd = load i64, ptr %i.om, align 8, !tbaa !36
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ct

bb.cr:                                            ; preds = %.noexc.i.i333, %.noexc.i334
  %i.pf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

bb.cs:                                            ; preds = %bb.cq
  %i.pg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ph = load ptr, ptr %15, align 8, !tbaa !41   ; 2 uses
  %i.pi = icmp eq ptr %i.ph, %i.om
  br i1 %i.pi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.cs
  %i.pj = load i64, ptr %i.om, align 8, !tbaa !36
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.ph, i64 noundef %i.pk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343, %bb.cr
  %.pn77 = phi { ptr, i32 } [ %i.pf, %bb.cr ], [ %i.pg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343 ], [ %i.pg, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.fg

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347: ; preds = %bb.ct
  br i1 %i.be, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347
  %i.pm = getelementptr inbounds nuw i8, ptr %i.la, i64 592
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !46
  %i.po = icmp eq i64 %i.pn, 0
  br i1 %i.po, label %bb.cv, label %bb.ep

bb.cv:                                            ; preds = %bb.cu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit347
  %i.pp = load atomic i8, ptr @_ZGVZN12GameFormSpec13showPauseMenuEvE2onB5cxx11 acquire, align 8
  %i.pq = icmp eq i8 %i.pp, 0
  br i1 %i.pq, label %bb.cw, label %bb.cz, !prof !450

bb.cw:                                            ; preds = %bb.cv
  %i.pr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE2onB5cxx11) #26
  %.not79 = icmp eq i32 %i.pr, 0
  br i1 %.not79, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  invoke void @_Z10strgettextB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, ptr noundef nonnull @.str.33)
          to label %bb.cy unwind label %bb.dl

bb.cy:                                            ; preds = %bb.cx
  %i.ps = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE2onB5cxx11) #26
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cw, %bb.cv
  %i.pt = load atomic i8, ptr @_ZGVZN12GameFormSpec13showPauseMenuEvE3offB5cxx11 acquire, align 8
  %i.pu = icmp eq i8 %i.pt, 0
  br i1 %i.pu, label %bb.da, label %._crit_edge.i.i, !prof !450

bb.da:                                            ; preds = %bb.cz
  %i.pv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE3offB5cxx11) #26
  %.not80 = icmp eq i32 %i.pv, 0
  br i1 %.not80, label %._crit_edge.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void @_Z10strgettextB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, ptr noundef nonnull @.str.34)
          to label %bb.dc unwind label %bb.dm

bb.dc:                                            ; preds = %bb.db
  %i.pw = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, ptr nonnull @__dso_handle) #26 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE3offB5cxx11) #26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.dc, %bb.da, %bb.cz
  %i.px = load ptr, ptr @g_settings, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.py = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.py, ptr %16, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.py, ptr noundef nonnull align 1 dereferenceable(13) @.str.35, i64 13, i1 false)
  %i.pz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 13, ptr %i.pz, align 8, !tbaa !46
  %i.qa = getelementptr inbounds nuw i8, ptr %16, i64 29
  store i8 0, ptr %i.qa, align 1, !tbaa !36
  %i.qb = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.px, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.dd unwind label %bb.dn

bb.dd:                                            ; preds = %._crit_edge.i.i
  %i.qc = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.py
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350: ; preds = %bb.dd
  %i.qe = load i64, ptr %i.py, align 8, !tbaa !36
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.qg = load ptr, ptr @g_settings, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.qh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.qh, ptr %17, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.qh, ptr noundef nonnull align 1 dereferenceable(15) @.str.36, i64 15, i1 false)
  %i.qi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 15, ptr %i.qi, align 8, !tbaa !46
  %i.qj = getelementptr inbounds nuw i8, ptr %17, i64 31
  store i8 0, ptr %i.qj, align 1, !tbaa !36
  %i.qk = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.qg, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.de unwind label %bb.do

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11._ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11 = select i1 %i.qk, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, ptr @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11 ; 3 uses
  %i.ql = load ptr, ptr %17, align 8, !tbaa !41   ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %i.qh
  br i1 %i.qm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %bb.de
  %i.qn = load i64, ptr %i.qh, align 8, !tbaa !36
  %i.qo = add i64 %i.qn, 1
  call void @_ZdlPvm(ptr noundef %i.ql, i64 noundef %i.qo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br i1 %i.be, label %bb.ep, label %bb.df

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359
  br i1 %i.qb, label %._crit_edge.i.i360, label %bb.ds

._crit_edge.i.i360:                               ; preds = %bb.df
  %i.qp = load ptr, ptr @g_settings, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.qq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.qq, ptr %18, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.qq, ptr noundef nonnull align 1 dereferenceable(10) @.str.37, i64 10, i1 false)
  %i.qr = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 10, ptr %i.qr, align 8, !tbaa !46
  %i.qs = getelementptr inbounds nuw i8, ptr %18, i64 26
  store i8 0, ptr %i.qs, align 2, !tbaa !36
  %i.qt = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.qp, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.dg unwind label %bb.dp     ; 2 uses

bb.dg:                                            ; preds = %._crit_edge.i.i360
  %i.qu = load ptr, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.qv = icmp eq ptr %i.qu, %i.qq
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.dg
  %i.qw = load i64, ptr %i.qq, align 8, !tbaa !36
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.qy = call ptr @gettext(ptr noundef nonnull @.str.38) #26, !noalias !560 ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 7 uses
  store ptr %i.qz, ptr %19, align 8, !tbaa !35, !alias.scope !560
  %i.ra = icmp eq ptr %i.qy, null
  br i1 %i.ra, label %.noexc.i369, label %bb.dh

.noexc.i369:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.72) #27
          to label %.noexc370 unwind label %bb.dq

.noexc370:                                        ; preds = %.noexc.i369
  unreachable

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.rb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qy) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26, !noalias !560
  store i64 %i.rb, ptr %i.e, align 8, !tbaa !50, !noalias !560
  %i.rc = icmp ugt i64 %i.rb, 15
  br i1 %i.rc, label %.noexc.i.i368, label %._crit_edge.i.i.i367

.noexc.i.i368:                                    ; preds = %bb.dh
  %i.rd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc371 unwind label %bb.dq ; 2 uses

.noexc371:                                        ; preds = %.noexc.i.i368
  store ptr %i.rd, ptr %19, align 8, !tbaa !41, !alias.scope !560
  %i.re = load i64, ptr %i.e, align 8, !tbaa !50, !noalias !560
  store i64 %i.re, ptr %i.qz, align 8, !tbaa !36, !alias.scope !560
  br label %._crit_edge.i.i.i367

._crit_edge.i.i.i367:                             ; preds = %.noexc371, %bb.dh
  %i.rf = phi ptr [ %i.rd, %.noexc371 ], [ %i.qz, %bb.dh ] ; 2 uses
  switch i64 %i.rb, label %bb.dj [
    i64 1, label %bb.di
    i64 0, label %bb.dk
  ]

bb.di:                                            ; preds = %._crit_edge.i.i.i367
  %i.rg = load i8, ptr %i.qy, align 1, !tbaa !36
  store i8 %i.rg, ptr %i.rf, align 1, !tbaa !36
  br label %bb.dk

bb.dj:                                            ; preds = %._crit_edge.i.i.i367
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rf, ptr nonnull align 1 %i.qy, i64 %i.rb, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %._crit_edge.i.i.i367
  %i.rh = load i64, ptr %i.e, align 8, !tbaa !50, !noalias !560 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i64 %i.rh, ptr %i.ri, align 8, !tbaa !46, !alias.scope !560
  %i.rj = load ptr, ptr %19, align 8, !tbaa !41, !alias.scope !560
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rh
  store i8 0, ptr %i.rk, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !560
  %i.rl = load ptr, ptr %19, align 8, !tbaa !41
  %i.rm = load i64, ptr %i.ri, align 8, !tbaa !46
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.rl, i64 noundef %i.rm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit374 unwind label %bb.dr

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit374: ; preds = %bb.dk
  %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11.val = load ptr, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, align 8
  %_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11.val = load ptr, ptr @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, align 8
  %i.ro = select i1 %i.qt, ptr %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11.val, ptr %_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11.val
  %.val = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, i64 8), align 8
  %.val487 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, i64 8), align 8
  %i.rp = select i1 %i.qt, i64 %.val, i64 %.val487
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rn, ptr noundef %i.ro, i64 noundef %i.rp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376 unwind label %bb.dr

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit374
  %i.rr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rq, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378 unwind label %bb.dr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376
  %i.rs = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.qz
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378
  %i.ru = load i64, ptr %i.qz, align 8, !tbaa !36
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i379
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.ds

bb.dl:                                            ; preds = %bb.cx
  %i.rw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE2onB5cxx11) #26
  br label %bb.fg

bb.dm:                                            ; preds = %bb.db
  %i.rx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12GameFormSpec13showPauseMenuEvE3offB5cxx11) #26
  br label %bb.fg

bb.dn:                                            ; preds = %._crit_edge.i.i
  %i.ry = landingpad { ptr, i32 }
          cleanup
  %i.rz = load ptr, ptr %16, align 8, !tbaa !41   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %i.py
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382: ; preds = %bb.dn
  %i.sb = load i64, ptr %i.py, align 8, !tbaa !36
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit384: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.fg

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352
  %i.sd = landingpad { ptr, i32 }
          cleanup
  %i.se = load ptr, ptr %17, align 8, !tbaa !41   ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.qh
  br i1 %i.sf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385: ; preds = %bb.do
  %i.sg = load i64, ptr %i.qh, align 8, !tbaa !36
  %i.sh = add i64 %i.sg, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.sh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i385
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.fg

bb.dp:                                            ; preds = %._crit_edge.i.i360
  %i.si = landingpad { ptr, i32 }
          cleanup
  %i.sj = load ptr, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.sk = icmp eq ptr %i.sj, %i.qq
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388: ; preds = %bb.dp
  %i.sl = load i64, ptr %i.qq, align 8, !tbaa !36
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.sj, i64 noundef %i.sm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit390: ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i388
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.fg

bb.dq:                                            ; preds = %.noexc.i.i368, %.noexc.i369
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

bb.dr:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit376, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit374, %bb.dk
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sp = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %i.sq = icmp eq ptr %i.sp, %i.qz
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %bb.dr
  %i.sr = load i64, ptr %i.qz, align 8, !tbaa !36
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.ss) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391, %bb.dq
  %.pn87 = phi { ptr, i32 } [ %i.sn, %bb.dq ], [ %i.so, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391 ], [ %i.so, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.fg

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit381, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.st = call ptr @gettext(ptr noundef nonnull @.str.39) #26, !noalias !561 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.su, ptr %20, align 8, !tbaa !35, !alias.scope !561
  %i.sv = icmp eq ptr %i.st, null
  br i1 %i.sv, label %.noexc.i396, label %bb.dt

.noexc.i396:                                      ; preds = %bb.ds
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.72) #27
          to label %.noexc397 unwind label %bb.ei

.noexc397:                                        ; preds = %.noexc.i396
  unreachable

bb.dt:                                            ; preds = %bb.ds
  %i.sw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.st) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !561
  store i64 %i.sw, ptr %i.d, align 8, !tbaa !50, !noalias !561
  %i.sx = icmp ugt i64 %i.sw, 15
  br i1 %i.sx, label %.noexc.i.i395, label %._crit_edge.i.i.i394

.noexc.i.i395:                                    ; preds = %bb.dt
  %i.sy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc398 unwind label %bb.ei ; 2 uses

.noexc398:                                        ; preds = %.noexc.i.i395
  store ptr %i.sy, ptr %20, align 8, !tbaa !41, !alias.scope !561
  %i.sz = load i64, ptr %i.d, align 8, !tbaa !50, !noalias !561
  store i64 %i.sz, ptr %i.su, align 8, !tbaa !36, !alias.scope !561
  br label %._crit_edge.i.i.i394

._crit_edge.i.i.i394:                             ; preds = %.noexc398, %bb.dt
  %i.ta = phi ptr [ %i.sy, %.noexc398 ], [ %i.su, %bb.dt ] ; 2 uses
  switch i64 %i.sw, label %bb.dv [
    i64 1, label %bb.du
    i64 0, label %bb.dw
  ]

bb.du:                                            ; preds = %._crit_edge.i.i.i394
  %i.tb = load i8, ptr %i.st, align 1, !tbaa !36
  store i8 %i.tb, ptr %i.ta, align 1, !tbaa !36
  br label %bb.dw

bb.dv:                                            ; preds = %._crit_edge.i.i.i394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ta, ptr nonnull align 1 %i.st, i64 %i.sw, i1 false)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %._crit_edge.i.i.i394
  %i.tc = load i64, ptr %i.d, align 8, !tbaa !50, !noalias !561 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  store i64 %i.tc, ptr %i.td, align 8, !tbaa !46, !alias.scope !561
  %i.te = load ptr, ptr %20, align 8, !tbaa !41, !alias.scope !561
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.tc
  store i8 0, ptr %i.tf, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !561
  %i.tg = load ptr, ptr %20, align 8, !tbaa !41
  %i.th = load i64, ptr %i.td, align 8, !tbaa !46
  %i.ti = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.tg, i64 noundef %i.th)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401 unwind label %bb.ej

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401: ; preds = %bb.dw
  %i.tj = load ptr, ptr %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11._ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, align 8, !tbaa !41
  %26 = getelementptr inbounds nuw i8, ptr %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11._ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, i64 8 ; 2 uses
  %i.tk = load i64, ptr %26, align 8, !tbaa !46
  %i.tl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ti, ptr noundef %i.tj, i64 noundef %i.tk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403 unwind label %bb.ej

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit401
  %i.tm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tl, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405 unwind label %bb.ej ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit403
  %i.tn = load ptr, ptr %20, align 8, !tbaa !41   ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.su
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405
  %i.tp = load i64, ptr %i.su, align 8, !tbaa !36
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit405, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i406
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.tr = load ptr, ptr @g_settings, align 8, !tbaa !559
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.ts = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.ts, ptr %22, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ts, ptr noundef nonnull align 1 dereferenceable(11) @.str.40, i64 11, i1 false)
  %i.tt = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 11, ptr %i.tt, align 8, !tbaa !46
  %i.tu = getelementptr inbounds nuw i8, ptr %22, i64 27
  store i8 0, ptr %i.tu, align 1, !tbaa !36
  %i.tv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.tr, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.dx unwind label %bb.ek     ; 2 uses

bb.dx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit408
  %i.tw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  store ptr %i.tw, ptr %21, align 8, !tbaa !35
  %i.tx = load ptr, ptr %i.tv, align 8, !tbaa !41 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 %i.tz, ptr %i.c, align 8, !tbaa !50
  %i.ua = icmp ugt i64 %i.tz, 15
  br i1 %i.ua, label %.noexc.i414, label %._crit_edge.i.i413

.noexc.i414:                                      ; preds = %bb.dx
  %i.ub = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc415 unwind label %bb.ek ; 2 uses

.noexc415:                                        ; preds = %.noexc.i414
  store ptr %i.ub, ptr %21, align 8, !tbaa !41
  %i.uc = load i64, ptr %i.c, align 8, !tbaa !50
  store i64 %i.uc, ptr %i.tw, align 8, !tbaa !36
  br label %._crit_edge.i.i413

._crit_edge.i.i413:                               ; preds = %.noexc415, %bb.dx
  %i.ud = phi ptr [ %i.ub, %.noexc415 ], [ %i.tw, %bb.dx ] ; 2 uses
  switch i64 %i.tz, label %bb.dz [
    i64 1, label %bb.dy
    i64 0, label %bb.ea
  ]

bb.dy:                                            ; preds = %._crit_edge.i.i413
  %i.ue = load i8, ptr %i.tx, align 1, !tbaa !36
  store i8 %i.ue, ptr %i.ud, align 1, !tbaa !36
  br label %bb.ea

bb.dz:                                            ; preds = %._crit_edge.i.i413
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ud, ptr align 1 %i.tx, i64 %i.tz, i1 false)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %._crit_edge.i.i413
  %i.uf = load i64, ptr %i.c, align 8, !tbaa !50  ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store i64 %i.uf, ptr %i.ug, align 8, !tbaa !46
  %i.uh = load ptr, ptr %21, align 8, !tbaa !41
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.uf
  store i8 0, ptr %i.ui, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.uj = load ptr, ptr %22, align 8, !tbaa !41   ; 2 uses
  %i.uk = icmp eq ptr %i.uj, %i.ts
  br i1 %i.uk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %bb.ea
  %i.ul = load i64, ptr %i.ts, align 8, !tbaa !36
  %i.um = add i64 %i.ul, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.um) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  invoke void @_Z19str_formspec_escapeRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.eb unwind label %bb.el

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit418
  %i.un = load i64, ptr %26, align 8, !tbaa !46   ; 3 uses
  %i.uo = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, i64 8), align 8, !tbaa !46
  %i.up = icmp eq i64 %i.un, %i.uo
  br i1 %i.up, label %bb.ec, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485

bb.ec:                                            ; preds = %bb.eb
  %i.uq = icmp eq i64 %i.un, 0
  br i1 %i.uq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ec
  %i.ur = load ptr, ptr @_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11, align 8, !tbaa !41
  %i.us = load ptr, ptr %_ZZN12GameFormSpec13showPauseMenuEvE2onB5cxx11._ZZN12GameFormSpec13showPauseMenuEvE3offB5cxx11, align 8, !tbaa !41
  %bcmp.i = call i32 @bcmp(ptr %i.us, ptr %i.ur, i64 %i.un)
  %i.ut = icmp ne i32 %bcmp.i, 0
  %i.uu = load i64, ptr %i.ug, align 8
  %i.uv = icmp eq i64 %i.uu, 0
  %or.cond = select i1 %i.ut, i1 true, i1 %i.uv
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485, label %bb.ed

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ec
  %.old = load i64, ptr %i.ug, align 8, !tbaa !46
  %.old486 = icmp eq i64 %.old, 0
  br i1 %.old486, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread485, label %bb.ed

bb.ed:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.uw = call ptr @gettext(ptr noundef nonnull @.str.41) #26, !noalias !562 ; 4 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.ux, ptr %23, align 8, !tbaa !35, !alias.scope !562
  %i.uy = icmp eq ptr %i.uw, null
  br i1 %i.uy, label %.noexc.i421, label %bb.ee

.noexc.i421:                                      ; preds = %bb.ed
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.72) #27
          to label %.noexc422 unwind label %bb.em

.noexc422:                                        ; preds = %.noexc.i421
  unreachable

bb.ee:                                            ; preds = %bb.ed
  %i.uz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.uw) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26, !noalias !562
  store i64 %i.uz, ptr %i.b, align 8, !tbaa !50, !noalias !562
  %i.va = icmp ugt i64 %i.uz, 15
  br i1 %i.va, label %.noexc.i.i420, label %._crit_edge.i.i.i419

.noexc.i.i420:                                    ; preds = %bb.ee
  %i.vb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc423 unwind label %bb.em ; 2 uses

.noexc423:                                        ; preds = %.noexc.i.i420
  store ptr %i.vb, ptr %23, align 8, !tbaa !41, !alias.scope !562
  %i.vc = load i64, ptr %i.b, align 8, !tbaa !50, !noalias !562
  store i64 %i.vc, ptr %i.ux, align 8, !tbaa !36, !alias.scope !562
  br label %._crit_edge.i.i.i419

._crit_edge.i.i.i419:                             ; preds = %.noexc423, %bb.ee
  %i.vd = phi ptr [ %i.vb, %.noexc423 ], [ %i.ux, %bb.ee ] ; 2 uses
  switch i64 %i.uz, label %bb.eg [
    i64 1, label %bb.ef
    i64 0, label %bb.eh
  ]

bb.ef:                                            ; preds = %._crit_edge.i.i.i419
  %i.ve = load i8, ptr %i.uw, align 1, !tbaa !36
  store i8 %i.ve, ptr %i.vd, align 1, !tbaa !36
  br label %bb.eh

bb.eg:                                            ; preds = %._crit_edge.i.i.i419
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vd, ptr nonnull align 1 %i.uw, i64 %i.uz, i1 false)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %._crit_edge.i.i.i419
  %i.vf = load i64, ptr %i.b, align 8, !tbaa !50, !noalias !562 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 %i.vf, ptr %i.vg, align 8, !tbaa !46, !alias.scope !562
  %i.vh = load ptr, ptr %23, align 8, !tbaa !41, !alias.scope !562
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vf
  store i8 0, ptr %i.vi, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26, !noalias !562
  %i.vj = load ptr, ptr %23, align 8, !tbaa !41
  %i.vk = load i64, ptr %i.vg, align 8, !tbaa !46
  %i.vl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.vj, i64 noundef %i.vk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit426 unwind label %bb.en

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit426: ; preds = %bb.eh
  %i.vm = load ptr, ptr %21, align 8, !tbaa !41
  %i.vn = load i64, ptr %i.ug, align 8, !tbaa !46
  %i.vo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.vl, ptr noundef %i.vm, i64 noundef %i.vn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428 unwind label %bb.en ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit426
  %i.vp = load ptr, ptr %23, align 8, !tbaa !41   ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.ux
  br i1 %i.vq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428
  %i.vr = load i64, ptr %i.ux, align 8, !tbaa !36
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit431: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit428, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
end_hunk_0
