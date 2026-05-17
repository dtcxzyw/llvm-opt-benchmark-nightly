inline.NumInlined: 896
inline.NumDeleted: 419
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.pf = load ptr, ptr %i.oc, align 8
  %i.pg = getelementptr inbounds nuw [12 x i8], ptr %i.pf, i64 %indvars.iv1414
  store float %i.pe, ptr %i.pg, align 4
  %i.ph = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4 ; 2 uses
  %i.pj = load ptr, ptr %i.bj, align 8
  %i.pk = icmp ugt ptr %i.pi, %i.pj
  br i1 %i.pk, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.pl = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, ptr noundef nonnull @.str.43)
          to label %.invoke1800 unwind label %bb.eu

.invoke1800:                                      ; preds = %bb.et, %bb.eq
  %i.pm = phi ptr [ %i.pc, %bb.eq ], [ %i.pl, %bb.et ]
  invoke void @__cxa_throw(ptr nonnull %i.pm, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont1801 unwind label %bb.ew

.cont1801:                                        ; preds = %.invoke1800
  unreachable

bb.eu:                                            ; preds = %bb.et
  %i.pn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pl) #24
  br label %.body589

bb.ev:                                            ; preds = %bb.es
  %i.po = load float, ptr %i.ph, align 1
  store ptr %i.pi, ptr %i.x, align 8
  %i.pp = load ptr, ptr %i.oc, align 8
  %i.pq = getelementptr inbounds nuw [12 x i8], ptr %i.pp, i64 %indvars.iv1414
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  store float %i.po, ptr %i.pr, align 4
  %indvars.iv.next1415 = add nuw nsw i64 %indvars.iv1414, 1 ; 2 uses
  %exitcond1419.not = icmp eq i64 %indvars.iv.next1415, %i.od
  br i1 %exitcond1419.not, label %.preheader973, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit658, !llvm.loop !17

bb.ew:                                            ; preds = %.invoke1800
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.ex:                                            ; preds = %.lr.ph1180, %._crit_edge1178
  %i.pt = phi ptr [ %i.oq, %.lr.ph1180 ], [ %i.qe, %._crit_edge1178 ] ; 2 uses
  %i.pu = phi ptr [ %i.op, %.lr.ph1180 ], [ %i.qf, %._crit_edge1178 ]
  %indvars.iv1423 = phi i64 [ 0, %.lr.ph1180 ], [ %indvars.iv.next1424, %._crit_edge1178 ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [56 x i8], ptr %i.pt, i64 %indvars.iv1423 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8
  %i.py = load ptr, ptr %i.pv, align 8
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.pz, %i.qa
  %i.qc = and i64 %i.qb, 17179869180
  %.not1247 = icmp eq i64 %i.qc, 0
  br i1 %.not1247, label %._crit_edge1178, label %.lr.ph1177

.lr.ph1177:                                       ; preds = %bb.ex
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 24 ; 2 uses
  br label %bb.ey

._crit_edge1178.loopexit:                         ; preds = %bb.ff
  %.pre1450 = load ptr, ptr %i.is, align 8
  %.pre1451 = load ptr, ptr %i.hg, align 8
  br label %._crit_edge1178

._crit_edge1178:                                  ; preds = %._crit_edge1178.loopexit, %bb.ex
  %i.qe = phi ptr [ %.pre1451, %._crit_edge1178.loopexit ], [ %i.pt, %bb.ex ] ; 2 uses
  %i.qf = phi ptr [ %.pre1450, %._crit_edge1178.loopexit ], [ %i.pu, %bb.ex ] ; 2 uses
  %indvars.iv.next1424 = add nuw nsw i64 %indvars.iv1423, 1 ; 2 uses
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qe to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = sdiv exact i64 %i.qi, 56
  %i.qk = and i64 %i.qj, 4294967295
  %i.ql = icmp samesign ult i64 %indvars.iv.next1424, %i.qk
  br i1 %i.ql, label %bb.ex, label %.loopexit974, !llvm.loop !18

bb.ey:                                            ; preds = %.lr.ph1177, %bb.ff
  %indvars.iv1420 = phi i64 [ 0, %.lr.ph1177 ], [ %indvars.iv.next1421, %bb.ff ] ; 4 uses
  %i.qm = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 4 ; 2 uses
  %i.qo = load ptr, ptr %i.bj, align 8
  %i.qp = icmp ugt ptr %i.qn, %i.qo
  br i1 %i.qp, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  %i.qq = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qq, ptr noundef nonnull @.str.43)
          to label %bb.fa unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  invoke void @__cxa_throw(ptr nonnull %i.qq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.noexc667 unwind label %bb.fd

.noexc667:                                        ; preds = %bb.fa
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qq) #24
  br label %.body589

bb.fc:                                            ; preds = %bb.ey
  %i.qs = load i32, ptr %i.qm, align 1
  store ptr %i.qn, ptr %i.x, align 8
  %i.qt = load ptr, ptr %i.qd, align 8
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %indvars.iv1420
  store i32 %i.qs, ptr %i.qu, align 4
  %i.qv = or i64 %indvars.iv1420, %indvars.iv1423
  %i.qw = and i64 %i.qv, 4294967295
  %or.cond3.not = icmp eq i64 %i.qw, 0
  %i.qx = load ptr, ptr %i.qd, align 8
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv1420
  %i.qz = load i32, ptr %i.qy, align 4            ; 2 uses
  br i1 %or.cond3.not, label %.sink.split, label %bb.fe

bb.fd:                                            ; preds = %bb.fa
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.fe:                                            ; preds = %bb.fc
  %i.rb = load i32, ptr %i.ow, align 8
  %.not502 = icmp eq i32 %i.qz, %i.rb
  br i1 %.not502, label %bb.ff, label %.sink.split

.sink.split:                                      ; preds = %bb.fe, %bb.fc
  %.sink = phi i32 [ %i.qz, %bb.fc ], [ -1, %bb.fe ]
  store i32 %.sink, ptr %i.ow, align 8
  br label %bb.ff

bb.ff:                                            ; preds = %.sink.split, %bb.fe
  %indvars.iv.next1421 = add nuw nsw i64 %indvars.iv1420, 1 ; 2 uses
  %i.rc = load ptr, ptr %i.pw, align 8
  %i.rd = load ptr, ptr %i.pv, align 8
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = sub i64 %i.re, %i.rf
  %i.rh = lshr exact i64 %i.rg, 2
  %i.ri = and i64 %i.rh, 4294967295
  %i.rj = icmp samesign ult i64 %indvars.iv.next1421, %i.ri
  br i1 %i.rj, label %bb.ey, label %._crit_edge1178.loopexit, !llvm.loop !19

.loopexit974:                                     ; preds = %._crit_edge1178, %.preheader973, %bb.ek
  %i.rk = load ptr, ptr %i.x, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 36 ; 4 uses
  store ptr %i.rl, ptr %i.x, align 8
  %i.rm = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.rn = icmp ugt ptr %i.rl, %i.rm
  br i1 %i.rn, label %bb.fg, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit674

bb.fg:                                            ; preds = %.loopexit974
  %i.ro = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ro, ptr noundef nonnull @.str.42)
          to label %.invoke1796 unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ro) #24
  br label %.body589

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit674: ; preds = %.loopexit974
  br i1 %or.cond6, label %bb.fi, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit678

bb.fi:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit674
  %i.rq = load ptr, ptr %i.is, align 8
  %i.rr = load ptr, ptr %i.hg, align 8
  %i.rs = ptrtoint ptr %i.rq to i64
  %i.rt = ptrtoint ptr %i.rr to i64
  %i.ru = sub i64 %i.rs, %i.rt
  %i.rv = sdiv exact i64 %i.ru, 56
  %i.rw = getelementptr inbounds i8, ptr %i.rl, i64 %i.rv ; 3 uses
  store ptr %i.rw, ptr %i.x, align 8
  %i.rx = icmp ugt ptr %i.rw, %i.rm
  br i1 %i.rx, label %bb.fj, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit678

bb.fj:                                            ; preds = %bb.fi
  %i.ry = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ry, ptr noundef nonnull @.str.42)
          to label %.invoke1796 unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.rz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ry) #24
  br label %.body589

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit678: ; preds = %bb.fi, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit674
  %i.sa = phi ptr [ %i.rw, %bb.fi ], [ %i.rl, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit674 ] ; 2 uses
  %i.sb = add nuw i32 %.04181181, 1               ; 2 uses
  %exitcond1426.not = icmp eq i32 %i.sb, %i.bs
  br i1 %exitcond1426.not, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844, label %.lr.ph1182, !llvm.loop !20

.lr.ph1162:                                       ; preds = %.preheader999, %bb.hc
  %.04471161 = phi i32 [ %i.ws, %bb.hc ], [ 0, %.preheader999 ]
  %i.sc = load ptr, ptr %i.dv, align 8            ; 8 uses
  %i.sd = load ptr, ptr %i.dw, align 8
  %.not.i679 = icmp eq ptr %i.sc, %i.sd
  br i1 %.not.i679, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph1162
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 1040
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1072) %i.sc, i8 0, i64 1040, i1 false)
  store <2 x float> splat (float 6.000000e-01), ptr %i.se, align 4
  %10 = getelementptr inbounds nuw i8, ptr %i.sc, i64 1048
  store float 6.000000e-01, ptr %10, align 4
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 1052
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 1068
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sf, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.sg, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 1072 ; 2 uses
  store ptr %i.sh, ptr %i.dv, align 8
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

bb.fm:                                            ; preds = %.lr.ph1162
  invoke void @_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.sc)
          to label %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge unwind label %bb.fs

._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge: ; preds = %bb.fm
  %.pre = load ptr, ptr %i.dv, align 8
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit

_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit: ; preds = %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge, %bb.fl
  %i.si = phi ptr [ %.pre, %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit_crit_edge ], [ %i.sh, %bb.fl ] ; 13 uses
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -1072 ; 3 uses
  %i.sk = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 1 ; 2 uses
  %i.sm = load ptr, ptr %i.bj, align 8
  %i.sn = icmp ugt ptr %i.sl, %i.sm
  br i1 %i.sn, label %bb.fn, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685.preheader

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685.preheader: ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.so = getelementptr inbounds i8, ptr %i.si, i64 -1068 ; 2 uses
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685

bb.fn:                                            ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit
  %i.sp = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.sp, ptr noundef nonnull @.str.43)
          to label %.invoke1802 unwind label %bb.fo

.invoke1802:                                      ; preds = %bb.fn, %bb.ha, %bb.gx, %bb.gu, %bb.gr, %bb.go, %bb.gl, %bb.gi, %bb.gf, %bb.gc, %bb.fz, %bb.fw, %bb.fu
  %i.sq = phi ptr [ %i.wo, %bb.ha ], [ %i.wg, %bb.gx ], [ %i.td, %bb.fu ], [ %i.tm, %bb.fw ], [ %i.tu, %bb.fz ], [ %i.uc, %bb.gc ], [ %i.uk, %bb.gf ], [ %i.us, %bb.gi ], [ %i.va, %bb.gl ], [ %i.vi, %bb.go ], [ %i.vq, %bb.gr ], [ %i.vy, %bb.gu ], [ %i.sp, %bb.fn ]
  invoke void @__cxa_throw(ptr nonnull %i.sq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont1803 unwind label %.loopexit.split-lp1002

.cont1803:                                        ; preds = %.invoke1802
  unreachable

bb.fo:                                            ; preds = %bb.fn
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sp) #24
  br label %.body589

_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685.preheader, %bb.ft
  %storemerge = phi ptr [ %i.ta, %bb.ft ], [ %i.sl, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685.preheader ]
  %.0417.in = phi ptr [ %i.sz, %bb.ft ], [ %i.sk, %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685.preheader ]
  %.0417 = load i8, ptr %.0417.in, align 1        ; 2 uses
  store ptr %storemerge, ptr %i.x, align 8
  %.not497 = icmp eq i8 %.0417, 0
  br i1 %.not497, label %.loopexit982, label %bb.fp

bb.fp:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685
  %i.ss = load i32, ptr %i.sj, align 4            ; 2 uses
  %i.st = add i32 %i.ss, 1                        ; 2 uses
  store i32 %i.st, ptr %i.sj, align 4
  %i.su = zext i32 %i.ss to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.su
  store i8 %.0417, ptr %i.sv, align 1
  %i.sw = icmp eq i32 %i.st, 1024
  br i1 %i.sw, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.sx = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.fr unwind label %.loopexit1001

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.sx, ptr noundef nonnull @.str.14)
          to label %.loopexit982 unwind label %.loopexit1001

bb.fs:                                            ; preds = %bb.fm
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.body589

.loopexit1001:                                    ; preds = %bb.fq, %bb.fr
  %lpad.loopexit1003 = landingpad { ptr, i32 }
          cleanup
  br label %.body589

.loopexit.split-lp1002:                           ; preds = %.invoke1802
  %lpad.loopexit.split-lp1004 = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.ft:                                            ; preds = %bb.fp
  %i.sz = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 1 ; 2 uses
  %i.tb = load ptr, ptr %i.bj, align 8
  %i.tc = icmp ugt ptr %i.ta, %i.tb
  br i1 %i.tc, label %bb.fu, label %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685

bb.fu:                                            ; preds = %bb.ft
  %i.td = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.td, ptr noundef nonnull @.str.43)
          to label %.invoke1802 unwind label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.td) #24
  br label %.body589

.loopexit982:                                     ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE5GetI1Ev.exit685, %bb.fr
  %i.tf = load i32, ptr %i.sj, align 4
  %i.tg = zext i32 %i.tf to i64
  %i.th = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.tg
  store i8 0, ptr %i.th, align 1
  %i.ti = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 4 ; 2 uses
  %i.tk = load ptr, ptr %i.bj, align 8
  %i.tl = icmp ugt ptr %i.tj, %i.tk
  br i1 %i.tl, label %bb.fw, label %bb.fy

bb.fw:                                            ; preds = %.loopexit982
  %i.tm = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tm, ptr noundef nonnull @.str.43)
          to label %.invoke1802 unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tm) #24
  br label %.body589

bb.fy:                                            ; preds = %.loopexit982
  %i.to = load float, ptr %i.ti, align 1
  store ptr %i.tj, ptr %i.x, align 8
  %i.tp = getelementptr inbounds i8, ptr %i.si, i64 -44
  store float %i.to, ptr %i.tp, align 4
  %i.tq = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 4 ; 2 uses
  %i.ts = load ptr, ptr %i.bj, align 8
  %i.tt = icmp ugt ptr %i.tr, %i.ts
  br i1 %i.tt, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.tu = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tu, ptr noundef nonnull @.str.43)
          to label %.invoke1802 unwind label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tu) #24
  br label %.body589

bb.gb:                                            ; preds = %bb.fy
  %i.tw = load float, ptr %i.tq, align 1
  store ptr %i.tr, ptr %i.x, align 8
  %i.tx = getelementptr inbounds i8, ptr %i.si, i64 -40
  store float %i.tw, ptr %i.tx, align 4
  %i.ty = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 4 ; 2 uses
  %i.ua = load ptr, ptr %i.bj, align 8
  %i.ub = icmp ugt ptr %i.tz, %i.ua
  br i1 %i.ub, label %bb.gc, label %bb.ge

bb.gc:                                            ; preds = %bb.gb
  %i.uc = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.uc, ptr noundef nonnull @.str.43)
          to label %.invoke1802 unwind label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ud = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.uc) #24
  br label %.body589

bb.ge:                                            ; preds = %bb.gb
  %i.ue = load float, ptr %i.ty, align 1
  store ptr %i.tz, ptr %i.x, align 8
  %i.uf = getelementptr inbounds i8, ptr %i.si, i64 -36
  store float %i.ue, ptr %i.uf, align 4
  %i.ug = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 4 ; 2 uses
  %i.ui = load ptr, ptr %i.bj, align 8
  %i.uj = icmp ugt ptr %i.uh, %i.ui
  br i1 %i.uj, label %bb.gf, label %bb.gh

bb.gf:                                            ; preds = %bb.ge
  %i.uk = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.uk, ptr noundef nonnull @.str.43)
          to label %.invoke1802 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ul = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.uk) #24
  br label %.body589

bb.gh:                                            ; preds = %bb.ge
  %i.um = load float, ptr %i.ug, align 1
  store ptr %i.uh, ptr %i.x, align 8
  %i.un = getelementptr inbounds i8, ptr %i.si, i64 -32
  store float %i.um, ptr %i.un, align 4
end_hunk_0
begin_hunk_1_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.agp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ago) #24
  br label %.body589

bb.kb:                                            ; preds = %bb.jx
  %i.agq = load i32, ptr %i.agc, align 1          ; 2 uses
  store ptr %i.agm, ptr %i.x, align 8
  %i.agr = getelementptr inbounds nuw i8, ptr %i.ef, i64 178 ; 3 uses
  %i.ags = icmp ugt ptr %i.agr, %i.adc
  br i1 %i.ags, label %bb.kc, label %bb.ke

bb.kc:                                            ; preds = %bb.kb
  %i.agt = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.agt, ptr noundef nonnull @.str.43)
          to label %.invoke1812 unwind label %bb.kd

.invoke1812:                                      ; preds = %bb.kf, %bb.kc
  %i.agu = phi ptr [ %i.agt, %bb.kc ], [ %i.agy, %bb.kf ]
  invoke void @__cxa_throw(ptr nonnull %i.agu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont1813 unwind label %bb.kj

.cont1813:                                        ; preds = %.invoke1812
  unreachable

bb.kd:                                            ; preds = %bb.kc
  %i.agv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.agt) #24
  br label %.body589

bb.ke:                                            ; preds = %bb.kb
  %i.agw = load i32, ptr %i.agm, align 1          ; 2 uses
  store ptr %i.agr, ptr %i.x, align 8
  %i.agx = or i32 %i.agw, %i.agq
  %or.cond8.not = icmp sgt i32 %i.agx, -1
  br i1 %or.cond8.not, label %.preheader1817, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.agy = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, ptr noundef nonnull @.str.19)
          to label %.invoke1812 unwind label %bb.kk

bb.kg:                                            ; preds = %.invoke1808, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit808, %bb.ir
  %i.agz = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.kh:                                            ; preds = %.invoke1810, %bb.jo
  %i.aha = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.ki:                                            ; preds = %bb.jz
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.kj:                                            ; preds = %.invoke1812
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.kk:                                            ; preds = %bb.kf
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.agy) #24
  br label %.body589

.preheader1817:                                   ; preds = %bb.ke, %bb.kn
  %i.ahe = phi ptr [ %i.ahf, %bb.kn ], [ %i.agr, %bb.ke ] ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahe, i64 1 ; 4 uses
  %i.ahg = icmp ugt ptr %i.ahf, %i.adc
  br i1 %i.ahg, label %bb.kl, label %bb.kn

bb.kl:                                            ; preds = %.preheader1817
  %i.ahh = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ahh, ptr noundef nonnull @.str.43)
          to label %.invoke1814 unwind label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahh) #24
  br label %.body589

bb.kn:                                            ; preds = %.preheader1817
  %i.ahj = load i8, ptr %i.ahe, align 1
  store ptr %i.ahf, ptr %i.x, align 8
  %.not481 = icmp eq i8 %i.ahj, 0
  br i1 %.not481, label %bb.kp, label %.preheader1817, !llvm.loop !25

bb.ko:                                            ; preds = %.invoke1814
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.kp:                                            ; preds = %bb.kn
  %i.ahl = mul i32 %i.agq, 3
  %i.ahm = mul i32 %i.ahl, %i.agw
  %i.ahn = add i32 %i.ahm, 20
  %i.aho = zext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.aho ; 2 uses
  store ptr %i.ahp, ptr %i.x, align 8
  %i.ahq = icmp ugt ptr %i.ahp, %i.adc
  br i1 %i.ahq, label %bb.kq, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread

bb.kq:                                            ; preds = %bb.kp
  %i.ahr = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ahr, ptr noundef nonnull @.str.42)
          to label %.invoke1814 unwind label %bb.kr

.invoke1814:                                      ; preds = %bb.kl, %bb.kq
  %i.ahs = phi ptr [ %i.ahr, %bb.kq ], [ %i.ahh, %bb.kl ]
  invoke void @__cxa_throw(ptr nonnull %i.ahs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont1815 unwind label %bb.ko

.cont1815:                                        ; preds = %.invoke1814
  unreachable

bb.kr:                                            ; preds = %bb.kq
  %i.aht = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahr) #24
  br label %.body589

bb.ks:                                            ; preds = %bb.bn
  %i.ahu = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ahu, ptr noundef nonnull @.str.20)
          to label %.invoke unwind label %bb.kt

.invoke:                                          ; preds = %bb.bl, %bb.ks, %bb.il, %bb.ij
  %i.ahv = phi ptr [ %i.zm, %bb.il ], [ %i.ahu, %bb.ks ], [ %i.zk, %bb.ij ], [ %i.ej, %bb.bl ]
  invoke void @__cxa_throw(ptr nonnull %i.ahv, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %.cont unwind label %.loopexit.split-lp1013

.cont:                                            ; preds = %.invoke
  unreachable

bb.kt:                                            ; preds = %bb.ks
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ahu) #24
  br label %.body589

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.loopexit1251: ; preds = %bb.hc
  %.pre1452 = load ptr, ptr %i.x, align 8
  br label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844: ; preds = %._crit_edge, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit678, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.loopexit1251, %.preheader999, %.preheader983, %bb.hd
  %i.ahx = phi ptr [ %i.eg, %bb.hd ], [ %i.sa, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit678 ], [ %.pre1452, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.loopexit1251 ], [ %i.eg, %.preheader983 ], [ %i.eg, %.preheader999 ], [ %i.yt, %._crit_edge ] ; 2 uses
  %i.ahy = load ptr, ptr %i.v, align 8
  %i.ahz = ptrtoint ptr %i.ahy to i64
  %i.aia = ptrtoint ptr %i.ahx to i64
  %i.aib = sub i64 %i.ahz, %i.aia
  %i.aic = and i64 %i.aib, 4294967295
  %i.aid = icmp eq i64 %i.aic, 0
  br i1 %i.aid, label %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread, label %bb.bk

_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread: ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844, %bb.bg, %bb.kp
  %.sroa.0948.2 = phi float [ %i.aeo, %bb.kp ], [ 6.000000e-01, %bb.bg ], [ 6.000000e-01, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844 ]
  %.sroa.6949.2 = phi float [ %i.aet, %bb.kp ], [ 6.000000e-01, %bb.bg ], [ 6.000000e-01, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844 ]
  %.sroa.9.2 = phi float [ %i.aey, %bb.kp ], [ 6.000000e-01, %bb.bg ], [ 6.000000e-01, %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844 ]
  %i.aie = load ptr, ptr %9, align 8
  %i.aif = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.aig = load ptr, ptr %i.aif, align 8
  %i.aih = icmp eq ptr %i.aie, %i.aig
  br i1 %i.aih, label %bb.ku, label %bb.kx

bb.ku:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread
  %i.aii = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aii, ptr noundef nonnull @.str.21)
          to label %bb.kv unwind label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  invoke void @__cxa_throw(ptr nonnull %i.aii, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ph unwind label %bb.bj

bb.kw:                                            ; preds = %bb.ku
  %i.aij = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aii) #24
  br label %.body589

bb.kx:                                            ; preds = %_ZN6Assimp12StreamReaderILb0ELb0EE6IncPtrEl.exit844.thread
  %i.aik = load ptr, ptr %8, align 8              ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.aim = load ptr, ptr %i.ail, align 8          ; 2 uses
  %i.ain = icmp eq ptr %i.aik, %i.aim
  br i1 %i.ain, label %bb.ky, label %bb.ld

bb.ky:                                            ; preds = %bb.kx
  %i.aio = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.kz unwind label %bb.bj

bb.kz:                                            ; preds = %bb.ky
  invoke void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aio, ptr noundef nonnull @.str.22)
          to label %bb.la unwind label %bb.bj

bb.la:                                            ; preds = %bb.kz
  %i.aip = load ptr, ptr %i.ail, align 8          ; 8 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.air = load ptr, ptr %i.aiq, align 8
  %.not.i845 = icmp eq ptr %i.aip, %i.air
  br i1 %.not.i845, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 1040
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1072) %i.aip, i8 0, i64 1040, i1 false)
  store <2 x float> splat (float 6.000000e-01), ptr %i.ais, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.aip, i64 1048
  store float 6.000000e-01, ptr %11, align 4
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 1052
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.aip, i64 1068
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ait, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.aiu, align 4
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aip, i64 1072 ; 2 uses
  store ptr %i.aiv, ptr %i.ail, align 8
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848

bb.lc:                                            ; preds = %bb.la
  invoke void @_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.aip)
          to label %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge unwind label %bb.bj

._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge: ; preds = %bb.lc
  %.pre1453 = load ptr, ptr %i.ail, align 8
  br label %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848

_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848: ; preds = %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge, %bb.lb
  %i.aiw = phi ptr [ %.pre1453, %._ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848_crit_edge ], [ %i.aiv, %bb.lb ] ; 3 uses
  %i.aix = getelementptr inbounds i8, ptr %i.aiw, i64 -32
  store float %.sroa.0948.2, ptr %i.aix, align 4
  %i.aiy = getelementptr inbounds i8, ptr %i.aiw, i64 -28
  store float %.sroa.6949.2, ptr %i.aiy, align 4
  %i.aiz = getelementptr inbounds i8, ptr %i.aiw, i64 -24
  store float %.sroa.9.2, ptr %i.aiz, align 4
  %.pre1454 = load ptr, ptr %i.ail, align 8
  %.pre1455 = load ptr, ptr %8, align 8
  br label %bb.ld

bb.ld:                                            ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848, %bb.kx
  %i.aja = phi ptr [ %.pre1455, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848 ], [ %i.aik, %bb.kx ] ; 2 uses
  %i.ajb = phi ptr [ %.pre1454, %_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12emplace_backIJEEERS2_DpOT_.exit848 ], [ %i.aim, %bb.kx ] ; 2 uses
  %i.ajc = ptrtoint ptr %i.ajb to i64
  %i.ajd = ptrtoint ptr %i.aja to i64
  %i.aje = sub i64 %i.ajc, %i.ajd
  %.fr1648 = freeze i64 %i.aje
  %i.ajf = sdiv i64 %.fr1648, 1072                ; 3 uses
  %i.ajg = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ajf, i64 24) ; 2 uses
  %i.ajh = extractvalue { i64, i1 } %i.ajg, 1
  %i.aji = extractvalue { i64, i1 } %i.ajg, 0
  %i.ajj = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.aji, i64 8) ; 2 uses
  %i.ajk = extractvalue { i64, i1 } %i.ajj, 1
  %i.ajl = or i1 %i.ajh, %i.ajk
  %i.ajm = extractvalue { i64, i1 } %i.ajj, 0
  %i.ajn = select i1 %i.ajl, i64 -1, i64 %i.ajm
  %i.ajo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ajn) #28
          to label %bb.le unwind label %bb.lf     ; 5 uses

bb.le:                                            ; preds = %bb.ld
  store i64 %i.ajf, ptr %i.ajo, align 16
  %.ptr519 = getelementptr i8, ptr %i.ajo, i64 8  ; 5 uses
  %i.ajp = icmp eq ptr %i.ajb, %i.aja
  br i1 %i.ajp, label %.loopexit971, label %.loopexit971.loopexit

.loopexit971.loopexit:                            ; preds = %bb.le
  %i.ajq = mul nsw i64 %i.ajf, 24
  %i.ajr = add nsw i64 %i.ajq, -24                ; 2 uses
  %i.ajs = urem i64 %i.ajr, 24
  %i.ajt = sub nuw nsw i64 %i.ajr, %i.ajs
  %i.aju = add nsw i64 %i.ajt, 24
  call void @llvm.memset.p0.i64(ptr align 8 %.ptr519, i8 0, i64 %i.aju, i1 false)
  br label %.loopexit971

.loopexit971:                                     ; preds = %.loopexit971.loopexit, %bb.le
  %i.ajv = load ptr, ptr %9, align 8              ; 2 uses
  %i.ajw = load ptr, ptr %i.aif, align 8          ; 2 uses
  %.not9621194 = icmp eq ptr %i.ajv, %i.ajw
  br i1 %.not9621194, label %._crit_edge1199, label %.lr.ph1198

.lr.ph1198:                                       ; preds = %.loopexit971
  %i.ajx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.lg

._crit_edge1199:                                  ; preds = %._crit_edge1193, %.loopexit971
  %i.ajy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ajz = load i32, ptr %i.ajy, align 8          ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ajz, ptr %i.aka, align 8
  %i.akb = zext i32 %i.ajz to i64
  %i.akc = shl nuw nsw i64 %i.akb, 3              ; 2 uses
  %i.akd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.akc) #28
          to label %bb.lr unwind label %bb.lt

bb.lf:                                            ; preds = %bb.ld
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.lg:                                            ; preds = %.lr.ph1198, %._crit_edge1193
  %.09531196 = phi i32 [ 0, %.lr.ph1198 ], [ %i.akk, %._crit_edge1193 ] ; 3 uses
  %.sroa.0939.01195 = phi ptr [ %i.ajv, %.lr.ph1198 ], [ %i.akj, %._crit_edge1193 ] ; 3 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 72
  %i.akg = load ptr, ptr %i.akf, align 8          ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 80
  %i.aki = load ptr, ptr %i.akh, align 8          ; 2 uses
  %.not9651188 = icmp eq ptr %i.akg, %i.aki
  br i1 %.not9651188, label %._crit_edge1193, label %.lr.ph1192

._crit_edge1193:                                  ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit, %bb.lg
  %i.akj = getelementptr inbounds nuw i8, ptr %.sroa.0939.01195, i64 104 ; 2 uses
  %i.akk = add i32 %.09531196, 1
  %.not962 = icmp eq ptr %i.akj, %i.ajw
  br i1 %.not962, label %._crit_edge1199, label %bb.lg, !llvm.loop !26

.lr.ph1192:                                       ; preds = %bb.lg, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit
  %.09541190 = phi i32 [ %i.amt, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ], [ 0, %bb.lg ] ; 3 uses
  %.sroa.0930.01189 = phi ptr [ %i.ams, %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit ], [ %i.akg, %bb.lg ] ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.sroa.0930.01189, i64 48 ; 3 uses
  %i.akm = load i32, ptr %i.akl, align 8          ; 2 uses
  %i.akn = zext i32 %i.akm to i64
  %i.ako = load ptr, ptr %i.ail, align 8
  %i.akp = load ptr, ptr %8, align 8
  %i.akq = ptrtoint ptr %i.ako to i64
  %i.akr = ptrtoint ptr %i.akp to i64
  %i.aks = sub i64 %i.akq, %i.akr
  %i.akt = sdiv exact i64 %i.aks, 1072
  %.not545 = icmp ugt i64 %i.akt, %i.akn
  br i1 %.not545, label %bb.lk, label %bb.lh

bb.lh:                                            ; preds = %.lr.ph1192
  %i.aku = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.li unwind label %.loopexit970

bb.li:                                            ; preds = %bb.lh
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aku, ptr noundef nonnull @.str.23)
          to label %bb.lj unwind label %.loopexit970

bb.lj:                                            ; preds = %bb.li
  store i32 0, ptr %i.akl, align 8
  br label %bb.lk

.loopexit970:                                     ; preds = %bb.lh, %bb.li, %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body589

.loopexit.split-lp:                               ; preds = %bb.lp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body589

bb.lk:                                            ; preds = %bb.lj, %.lr.ph1192
  %i.akv = phi i32 [ 0, %bb.lj ], [ %i.akm, %.lr.ph1192 ]
  %i.akw = zext i32 %i.akv to i64                 ; 2 uses
  %i.akx = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %i.akw ; 2 uses
  %i.aky = load ptr, ptr %i.akx, align 8
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  %i.ala = load ptr, ptr %i.akz, align 8          ; 2 uses
  %i.alb = icmp eq ptr %i.aky, %i.ala
  br i1 %i.alb, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.alc = load i32, ptr %i.ajx, align 8
  %i.ald = add i32 %i.alc, 1
  store i32 %i.ald, ptr %i.ajx, align 8
  %.pre1456 = load i32, ptr %i.akl, align 8
  %.phi.trans.insert = zext i32 %.pre1456 to i64  ; 2 uses
  %.phi.trans.insert1457 = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %.phi.trans.insert
  %.phi.trans.insert1458 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1457, i64 8
  %.pre1459 = load ptr, ptr %.phi.trans.insert1458, align 8
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %.pre-phi = phi i64 [ %.phi.trans.insert, %bb.ll ], [ %i.akw, %bb.lk ]
  %i.ale = phi ptr [ %.pre1459, %bb.ll ], [ %i.ala, %bb.lk ] ; 6 uses
  %i.alf = getelementptr inbounds nuw [24 x i8], ptr %.ptr519, i64 %.pre-phi ; 4 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 8 ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 16 ; 2 uses
  %i.ali = load ptr, ptr %i.alh, align 8
  %.not.i849 = icmp eq ptr %i.ale, %i.ali
  br i1 %.not.i849, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  store i32 %.09531196, ptr %i.ale, align 4
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  store i32 %.09541190, ptr %i.alj, align 4
  %i.alk = load ptr, ptr %i.alg, align 8
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  store ptr %i.all, ptr %i.alg, align 8
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EE12emplace_backIJRjS5_EEERS1_DpOT_.exit

bb.lo:                                            ; preds = %bb.lm
  %i.alm = load ptr, ptr %i.alf, align 8          ; 7 uses
  %i.aln = ptrtoint ptr %i.ale to i64             ; 2 uses
  %i.alo = ptrtoint ptr %i.alm to i64             ; 3 uses
  %i.alp = sub i64 %i.aln, %i.alo                 ; 4 uses
  %i.alq = icmp eq i64 %i.alp, 9223372036854775800
  br i1 %i.alq, label %bb.lp, label %_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.lp:                                            ; preds = %bb.lo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
          to label %.noexc850 unwind label %.loopexit.split-lp

.noexc850:                                        ; preds = %bb.lp
  unreachable

_ZNKSt6vectorISt4pairIjjESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.lo
  %i.alr = ashr exact i64 %i.alp, 3               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.alr, i64 1)
  %i.als = add nsw i64 %.sroa.speculated.i.i.i, %i.alr ; 2 uses
  %i.alt = icmp ult i64 %i.als, %i.alr
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE17_M_realloc_insertIJsEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.aa = icmp eq i64 %i.z, 0                     ; 2 uses
  br i1 %i.aa, label %bb.c, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.z, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.y, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i.i.i.i.i.i.i.i
  br label %bb.c

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i10.i: ; preds = %_ZNKSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE12_M_check_lenEmPKc.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.q, i8 0, i64 48, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.ab, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.y, %.noexc ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #28
          to label %.noexc11.i unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit.i ; 4 uses

.noexc11.i:                                       ; preds = %bb.c
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.t
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.af, ptr %i.ag, align 8
  store i32 0, ptr %i.ae, align 4
  %i.ah = getelementptr i8, ptr %i.ae, i64 4      ; 3 uses
  br i1 %i.aa, label %bb.d, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i7.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i7.i: ; preds = %.noexc11.i
  %.idx.i.i.i.i.i.i.i8.i = shl nuw nsw i64 %i.z, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %.idx.i.i.i.i.i.i.i8.i, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i.i.i.i.i.i8.i
  br label %bb.d

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.u) #25
  br label %bb.h

bb.d:                                             ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i7.i, %.noexc11.i, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i10.i
  %.0.i.i.i.i.i9.i = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i10.i ], [ %i.ah, %.noexc11.i ], [ %i.ai, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i7.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.0.i.i.i.i.i9.i, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i32 0, ptr %i.al, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %i.p, %bb.d ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.c, %bb.d ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %i.am = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !103, !noalias !100
  store <2 x ptr> %i.am, ptr %.012.i.i.i, align 8, !alias.scope !100, !noalias !103
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !103, !noalias !100
  store ptr %i.ap, ptr %i.an, align 8, !alias.scope !100, !noalias !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !103, !noalias !100
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !alias.scope !103, !noalias !100
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !alias.scope !100, !noalias !103
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !103, !noalias !100
  store ptr %i.av, ptr %i.at, align 8, !alias.scope !100, !noalias !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false), !alias.scope !103, !noalias !100
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !alias.scope !103, !noalias !100
  store i32 %i.ay, ptr %i.aw, align 8, !alias.scope !100, !noalias !103
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.ba, %.lr.ph.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i27
  %.012.i.i.i28 = phi ptr [ %i.bq, %.lr.ph.i.i.i27 ], [ %i.bb, %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i29 = phi ptr [ %i.bp, %.lr.ph.i.i.i27 ], [ %1, %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.bc = load <2 x ptr>, ptr %.0911.i.i.i29, align 8, !alias.scope !108, !noalias !105
  store <2 x ptr> %i.bc, ptr %.012.i.i.i28, align 8, !alias.scope !105, !noalias !108
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !108, !noalias !105
  store ptr %i.bf, ptr %i.bd, align 8, !alias.scope !105, !noalias !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.0911.i.i.i29, i8 0, i64 24, i1 false), !alias.scope !108, !noalias !105
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 24 ; 2 uses
  %i.bi = load <2 x ptr>, ptr %i.bh, align 8, !alias.scope !108, !noalias !105
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !alias.scope !105, !noalias !108
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !108, !noalias !105
  store ptr %i.bl, ptr %i.bj, align 8, !alias.scope !105, !noalias !108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false), !alias.scope !108, !noalias !105
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !108, !noalias !105
  store i32 %i.bo, ptr %i.bm, align 8, !alias.scope !105, !noalias !108
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 56 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, label %.lr.ph.i.i.i27, !llvm.loop !11

_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32: ; preds = %.lr.ph.i.i.i27, %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i31 = phi ptr [ %i.bb, %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bq, %.lr.ph.i.i.i27 ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bu) #25
  br label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11Q3DImporter4FaceESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp11Q3DImporter4FaceESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, %bb.e
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bv, ptr %i.br, align 8
  ret void

bb.f:                                             ; preds = %.noexc.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.f ], [ %i.aj, %_ZNSt6vectorIjSaIjEED2Ev.exit.i ]
  %i.by = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bz = tail call ptr @__cxa_begin_catch(ptr %i.by) #24 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.g

bb.i:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.bx

bb.j:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  tail call void @__clang_call_terminate(ptr %i.cb) #29
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775632
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #26
  unreachable

_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 1072                ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 8603891825424231)
  %i.l = select i1 %i.j, i64 8603891825424231, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 1072
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1072) %i.q, i8 0, i64 1040, i1 false)
  store <2 x float> splat (float 6.000000e-01), ptr %i.r, align 4
  %2 = getelementptr inbounds nuw i8, ptr %i.q, i64 1048
  store float 6.000000e-01, ptr %2, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1052
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1068
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.t, align 4
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  %i.u = load i32, ptr %.01214.i.i.i.i.i, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.v, i8 0, i64 1024, i1 false)
  %spec.select.i.i.i.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 1023) ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i.i.i, ptr %.015.i.i.i.i.i, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.x = zext nneg i32 %spec.select.i.i.i.i.i.i.i.i to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr nonnull align 4 %i.w, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  store i8 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1028
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1028
  %i.ab = load float, ptr %i.aa, align 4
  store float %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1032
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1032
  %i.ae = load float, ptr %i.ad, align 4
  store float %i.ae, ptr %i.ac, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1036
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1036
  %i.ah = load float, ptr %i.ag, align 4
  store float %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1040
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1040
  %i.ak = load float, ptr %i.aj, align 4
  store float %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1044
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1044
  %i.an = load float, ptr %i.am, align 4
  store float %i.an, ptr %i.al, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1048
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1048
  %i.aq = load float, ptr %i.ap, align 4
  store float %i.aq, ptr %i.ao, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1052
  %i.as = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1052
  %i.at = load float, ptr %i.as, align 4
  store float %i.at, ptr %i.ar, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1056
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1056
  %i.aw = load float, ptr %i.av, align 4
  store float %i.aw, ptr %i.au, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1060
  %i.ay = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1060
  %i.az = load float, ptr %i.ay, align 4
  store float %i.az, ptr %i.ax, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1064
  %i.bb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1064
  %i.bc = load i64, ptr %i.bb, align 4
  store i64 %i.bc, ptr %i.ba, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 1072 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 1072 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !52

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6Assimp11Q3DImporter8MaterialESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 1072 ; 2 uses
  %.not13.i.i.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not13.i.i.i.i.i27, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i28
  %.015.i.i.i.i.i29 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i28 ], [ %i.bf, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 13 uses
  %.01214.i.i.i.i.i30 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i28 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 13 uses
  %i.bg = load i32, ptr %.01214.i.i.i.i.i30, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bh, i8 0, i64 1024, i1 false)
  %spec.select.i.i.i.i.i.i.i.i31 = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 1023) ; 2 uses
  store i32 %spec.select.i.i.i.i.i.i.i.i31, ptr %.015.i.i.i.i.i29, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 4
  %i.bj = zext nneg i32 %spec.select.i.i.i.i.i.i.i.i31 to i64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bh, ptr nonnull align 4 %i.bi, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  store i8 0, ptr %i.bk, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1028
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1028
  %i.bn = load float, ptr %i.bm, align 4
  store float %i.bn, ptr %i.bl, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1032
  %i.bp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1032
  %i.bq = load float, ptr %i.bp, align 4
  store float %i.bq, ptr %i.bo, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1036
  %i.bs = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1036
  %i.bt = load float, ptr %i.bs, align 4
  store float %i.bt, ptr %i.br, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1040
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1040
  %i.bw = load float, ptr %i.bv, align 4
  store float %i.bw, ptr %i.bu, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1044
  %i.by = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1044
  %i.bz = load float, ptr %i.by, align 4
  store float %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1048
  %i.cb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1048
  %i.cc = load float, ptr %i.cb, align 4
  store float %i.cc, ptr %i.ca, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1052
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1052
  %i.cf = load float, ptr %i.ce, align 4
  store float %i.cf, ptr %i.cd, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1056
  %i.ch = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1056
  %i.ci = load float, ptr %i.ch, align 4
  store float %i.ci, ptr %i.cg, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1060
  %i.ck = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1060
  %i.cl = load float, ptr %i.ck, align 4
  store float %i.cl, ptr %i.cj, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1064
  %i.cn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1064
  %i.co = load i64, ptr %i.cn, align 4
  store i64 %i.co, ptr %i.cm, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i30, i64 1072 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i29, i64 1072 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.cp, %i.b
  br i1 %.not.i.i.i.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, label %.lr.ph.i.i.i.i.i28, !llvm.loop !52

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34: ; preds = %.lr.ph.i.i.i.i.i28, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i33 = phi ptr [ %i.bf, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.cq, %.lr.ph.i.i.i.i.i28 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cu) #25
  br label %_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11Q3DImporter8MaterialESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp11Q3DImporter8MaterialES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8
  %i.cv = getelementptr inbounds nuw [1072 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cv, ptr %i.cr, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noreturn }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
end_hunk_2
