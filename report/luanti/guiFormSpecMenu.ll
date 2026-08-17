inline.NumInlined: 8820
inline.NumDeleted: 2296
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN15GUIFormSpecMenu7OnEventERK6SEvent:bb.a
  %.sroa.0411.0.copyload = load i64, ptr %2, align 8
  %i.eb = invoke noundef zeroext i1 @_Z18keySettingHasMatchRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE8KeyPress(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 %.sroa.0411.0.copyload)
          to label %.critedge844 unwind label %bb.x

.critedge844:                                     ; preds = %.noexc900
  %i.ec = load ptr, ptr %5, align 8, !tbaa !191   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dv
  br i1 %i.ed, label %.critedge846, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902: ; preds = %.critedge844
  %i.ee = load i64, ptr %i.dv, align 8, !tbaa !190
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #33
  br label %.critedge846

.critedge846:                                     ; preds = %.critedge844, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i902
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %i.eb, label %bb.u, label %.critedge846.thread

bb.u:                                             ; preds = %.critedge846
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !187 ; 2 uses
  %.not713 = icmp eq ptr %i.eh, null
  br i1 %.not713, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN6Client14makeScreenshotEv(ptr noundef nonnull align 8 dereferenceable(1674) %i.eh)
  br label %.critedge846.thread

bb.w:                                             ; preds = %.noexc.i899
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907

bb.x:                                             ; preds = %.noexc900
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %5, align 8, !tbaa !191   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dv
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905: ; preds = %bb.x
  %i.em = load i64, ptr %i.dv, align 8, !tbaa !190
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905, %bb.w
  %.pn711 = phi { ptr, i32 } [ %i.ei, %bb.w ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i905 ], [ %i.ej, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.am

bb.y:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2040
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !223 ; 3 uses
  %.not714 = icmp eq ptr %i.ep, null
  br i1 %.not714, label %.critedge846.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !9
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(40) %i.ep)
  br label %.critedge846.thread

.critedge846.thread:                              ; preds = %.critedge842.thread, %bb.v, %bb.z, %bb.y, %.critedge846
  %i.et = load i8, ptr %i.ak, align 4
  %i.eu = trunc i8 %i.et to i1
  br i1 %i.eu, label %.noexc.i909, label %.critedge850.thread

.noexc.i909:                                      ; preds = %.critedge846.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.ev, ptr %6, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #32
  store i64 19, ptr %i.ae, align 8, !tbaa !192
  %i.ew = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef 0)
          to label %.noexc910 unwind label %bb.ab ; 2 uses

.noexc910:                                        ; preds = %.noexc.i909
  store ptr %i.ew, ptr %6, align 8, !tbaa !191
  %i.ex = load i64, ptr %i.ae, align 8, !tbaa !192 ; 3 uses
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ew, ptr noundef nonnull align 1 dereferenceable(19) @.str.164, i64 19, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !189
  %i.ez = load ptr, ptr %6, align 8, !tbaa !191
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ex
  store i8 0, ptr %i.fa, align 1, !tbaa !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #32
  %.sroa.0402.0.copyload = load i64, ptr %2, align 8
  %i.fb = invoke noundef zeroext i1 @_Z18keySettingHasMatchRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE8KeyPress(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %.sroa.0402.0.copyload)
          to label %.critedge848 unwind label %bb.ac

.critedge848:                                     ; preds = %.noexc910
  %i.fc = load ptr, ptr %6, align 8, !tbaa !191   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ev
  br i1 %i.fd, label %.critedge850, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i912

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i912: ; preds = %.critedge848
  %i.fe = load i64, ptr %i.ev, align 8, !tbaa !190
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #33
  br label %.critedge850

.critedge850:                                     ; preds = %.critedge848, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i912
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br i1 %i.fb, label %bb.aa, label %.critedge850.thread

bb.aa:                                            ; preds = %.critedge850
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !187 ; 2 uses
  %.not717.not = icmp eq ptr %i.fh, null
  br i1 %.not717.not, label %.critedge854.thread, label %._crit_edge.i.i915

._crit_edge.i.i915:                               ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.fi, ptr %7, align 8, !tbaa !188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.fi, ptr noundef nonnull align 1 dereferenceable(5) @.str.165, i64 5, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.fj, align 8, !tbaa !189
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.fk, align 1, !tbaa !190
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 1384
  %i.fm = invoke ptr @_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.critedge852 unwind label %bb.ad

.critedge852:                                     ; preds = %._crit_edge.i.i915
  %.not.i.i.i.not = icmp eq ptr %i.fm, null
  %i.fn = load ptr, ptr %7, align 8, !tbaa !191   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.fi
  br i1 %i.fo, label %.critedge854, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i920

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i920: ; preds = %.critedge852
  %i.fp = load i64, ptr %i.fi, align 8, !tbaa !190
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #33
  br label %.critedge854

.critedge854:                                     ; preds = %.critedge852, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i920
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br i1 %.not.i.i.i.not, label %.critedge850.thread, label %.critedge854.thread

.critedge854.thread:                              ; preds = %bb.aa, %.critedge854
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !227, !range !248, !noundef !249
  %i.ft = xor i8 %i.fs, 1
  store i8 %i.ft, ptr %i.fr, align 8, !tbaa !227
  br label %.critedge850.thread

bb.ab:                                            ; preds = %.noexc.i909
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925

bb.ac:                                            ; preds = %.noexc910
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %6, align 8, !tbaa !191   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ev
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923: ; preds = %bb.ac
  %i.fy = load i64, ptr %i.ev, align 8, !tbaa !190
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923, %bb.ab
  %.pn715 = phi { ptr, i32 } [ %i.fu, %bb.ab ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i923 ], [ %i.fv, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.am

bb.ad:                                            ; preds = %._crit_edge.i.i915
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %7, align 8, !tbaa !191   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fi
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926: ; preds = %bb.ad
  %i.gd = load i64, ptr %i.fi, align 8, !tbaa !190
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i926
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.am

.critedge850.thread:                              ; preds = %.critedge846.thread, %.critedge854, %.critedge854.thread, %.critedge850
  %i.gf = load i8, ptr %i.ak, align 4
  %i.gg = trunc i8 %i.gf to i1
  br i1 %i.gg, label %bb.ae, label %_ZN15GUIFormSpecMenu8tryCloseEv.exit

bb.ae:                                            ; preds = %.critedge850.thread
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !190
  switch i32 %i.gi, label %_ZN15GUIFormSpecMenu8tryCloseEv.exit [
    i32 13, label %42
    i32 38, label %bb.af
    i32 40, label %bb.ag
  ]

42:                                               ; preds = %bb.ae
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 2154
  store i8 1, ptr %43, align 2, !tbaa !234
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 2152
  store i8 1, ptr %44, align 8, !tbaa !233
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 2153
  store i8 1, ptr %45, align 1, !tbaa !232
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %42
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 2154
  %i.gk = load i8, ptr %i.gj, align 2, !tbaa !234, !range !248, !noundef !249
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1997
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !218, !range !248, !noundef !249
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN15GUIFormSpecMenu11acceptInputE16FormspecQuitMode(ptr noundef nonnull align 8 dereferenceable(2236) %0, i32 noundef 1)
  call void @_ZN12GUIModalMenu8quitMenuEv(ptr noundef nonnull align 8 dereferenceable(2236) %0)
  br label %_ZN15GUIFormSpecMenu8tryCloseEv.exit.thread

bb.ak:                                            ; preds = %bb.ai
  call void @_ZN15GUIFormSpecMenu11acceptInputE16FormspecQuitMode(ptr noundef nonnull align 8 dereferenceable(2236) %0, i32 noundef 3)
  br label %_ZN15GUIFormSpecMenu8tryCloseEv.exit.thread

bb.al:                                            ; preds = %bb.ah
  call void @_ZN15GUIFormSpecMenu11acceptInputE16FormspecQuitMode(ptr noundef nonnull align 8 dereferenceable(2236) %0, i32 noundef 0)
  br label %_ZN15GUIFormSpecMenu8tryCloseEv.exit.thread

_ZN15GUIFormSpecMenu8tryCloseEv.exit.thread:      ; preds = %bb.h, %bb.p, %bb.al, %bb.o, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit1357

_ZN15GUIFormSpecMenu8tryCloseEv.exit:             ; preds = %bb.ae, %.critedge850.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.pr = load i32, ptr %1, align 8, !tbaa !609
  br label %bb.an

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897
  %.pn718.pn = phi { ptr, i32 } [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928 ], [ %.pn711, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit907 ], [ %.pn715, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit897 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.un

bb.an:                                            ; preds = %_ZN15GUIFormSpecMenu8tryCloseEv.exit, %bb.a
  %i.gp = phi i32 [ %.pr, %_ZN15GUIFormSpecMenu8tryCloseEv.exit ], [ %i.ah, %bb.a ] ; 2 uses
  switch i32 %i.gp, label %bb.ro [
    i32 2, label %bb.ao
    i32 5, label %.critedge858.thread
  ]

bb.ao:                                            ; preds = %bb.an
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !190
  %.not721 = icmp eq i32 %i.gr, 8
  br i1 %.not721, label %bb.ap, label %.critedge858.thread

bb.ap:                                            ; preds = %bb.ao
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !960
  %i.gu = and i32 %i.gt, 7
  %or.cond1628.not = icmp eq i32 %i.gu, 0
  br i1 %or.cond1628.not, label %_ZN11StreamProxylsEPFRSoS0_E.exit1357.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 308
  %.sroa.0391.0.copyload = load i64, ptr %i.gv, align 4
  call void @_ZNK15GUIFormSpecMenu12getItemAtPosEN4core8vector2dIiEE(ptr dead_on_unwind nonnull writable sret(%"struct.GUIInventoryList::ItemSpec") align 8 %8, ptr noundef nonnull align 8 dereferenceable(2236) %0, i64 %.sroa.0391.0.copyload)
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !848
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 316
  %.sroa.0386.0.copyload = load i64, ptr %i.gy, align 4
  invoke void @_ZNK15GUIFormSpecMenu12getItemAtPosEN4core8vector2dIiEE(ptr dead_on_unwind nonnull writable sret(%"struct.GUIInventoryList::ItemSpec") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2236) %0, i64 %.sroa.0386.0.copyload)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.gz = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !848
  %.not722 = icmp eq i32 %i.gx, %i.ha
  br i1 %.not722, label %bb.as, label %.critedge856

bb.as:                                            ; preds = %bb.ar
  %i.hb = load i32, ptr %1, align 8, !tbaa !609
  %i.hc = icmp eq i32 %i.hb, 5
  br label %.critedge856

.critedge856:                                     ; preds = %bb.ar, %bb.as
  %i.hd = phi i1 [ %i.hc, %bb.as ], [ true, %bb.ar ]
  %i.he = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !191 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge856
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !190
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.critedge856, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !191 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZN16GUIInventoryList8ItemSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !190
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #33
  br label %_ZN16GUIInventoryList8ItemSpecD2Ev.exit

_ZN16GUIInventoryList8ItemSpecD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !191 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i930, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i929

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i929: ; preds = %_ZN16GUIInventoryList8ItemSpecD2Ev.exit
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !190
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i930

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i930: ; preds = %_ZN16GUIInventoryList8ItemSpecD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i929
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !191 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %.critedge858, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i931

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i931: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i930
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !190
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #33
  br label %.critedge858

.critedge858:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i930, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i931
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br i1 %i.hd, label %.critedge858.thread, label %thread-pre-split

.critedge858.thread:                              ; preds = %bb.an, %bb.ao, %.critedge858
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1992
  store i32 -1, ptr %i.ic, align 8, !tbaa !216
  call void @_ZN15GUIFormSpecMenu18updateSelectedItemEv(ptr noundef nonnull align 8 dereferenceable(2236) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 5 uses
  %.sroa.0384.0.copyload = load i64, ptr %i.id, align 4
  call void @_ZNK15GUIFormSpecMenu12getItemAtPosEN4core8vector2dIiEE(ptr dead_on_unwind nonnull writable sret(%"struct.GUIInventoryList::ItemSpec") align 8 %10, ptr noundef nonnull align 8 dereferenceable(2236) %0, i64 %.sroa.0384.0.copyload)
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 35 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !254 ; 2 uses
  %.not1636 = icmp eq ptr %i.if, null
  br i1 %.not1636, label %bb.az, label %bb.at

bb.at:                                            ; preds = %.critedge858.thread
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !184 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !9
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = invoke noundef ptr %i.ik(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef nonnull align 8 dereferenceable(46) %i.if)
          to label %bb.au unwind label %bb.aw     ; 2 uses

bb.au:                                            ; preds = %bb.at
  %.not723 = icmp eq ptr %i.il, null
  br i1 %.not723, label %.invoke, label %bb.ax

bb.av:                                            ; preds = %bb.aq
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZN16GUIInventoryList8ItemSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %8) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.un

bb.aw:                                            ; preds = %.invoke, %bb.ax, %bb.at
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %bb.rn

bb.ax:                                            ; preds = %bb.au
  %i.io = load ptr, ptr %i.ie, align 8, !tbaa !254
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 48
  %i.iq = invoke noundef ptr @_ZN9Inventory7getListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(33) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %i.ip)
          to label %bb.ay unwind label %bb.aw     ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %.not724 = icmp eq ptr %i.iq, null
  br i1 %.not724, label %.invoke, label %bb.az

.invoke:                                          ; preds = %bb.au, %bb.ay
  %i.ir = phi ptr [ @.str.168, %bb.ay ], [ @.str.167, %bb.au ]
  %i.is = phi i32 [ 4325, %bb.ay ], [ 4323, %bb.au ]
  invoke void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull %i.ir, ptr noundef nonnull @.str.65, i32 noundef %i.is, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15GUIFormSpecMenu7OnEventERK6SEvent) #36
          to label %.cont unwind label %bb.aw

.cont:                                            ; preds = %.invoke
  unreachable

bb.az:                                            ; preds = %bb.ay, %.critedge858.thread
  %.0636 = phi ptr [ %i.iq, %bb.ay ], [ null, %.critedge858.thread ] ; 8 uses
end_hunk_0
