Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/benchmark?download=true
inline.NumInlined: 16777
inline.NumDeleted: 5122
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZN16struct_pb_sample11deserializeIN9pb_sample6personES2_EEv10SampleTypeRT_:bb.a
  %i.pi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, ptr noundef nonnull @.str.77)
          to label %.invoke unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pi) #28
  br label %.body50

.lr.ph819:                                        ; preds = %.preheader494, %bb.cz
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %bb.cz ], [ 0, %.preheader494 ] ; 3 uses
  %.1.i.i65817 = phi i64 [ %i.pq, %bb.cz ], [ 0, %.preheader494 ] ; 2 uses
  %.170.i.i64816 = phi ptr [ %i.pm, %bb.cz ], [ %i.ng, %.preheader494 ] ; 2 uses
  %i.pk = load i8, ptr %.170.i.i64816, align 1, !tbaa !94 ; 3 uses
  %i.pl = icmp slt i8 %i.pk, 0
  %i.pm = getelementptr inbounds nuw i8, ptr %.170.i.i64816, i64 1 ; 3 uses
  br i1 %i.pl, label %bb.cz, label %.critedge.i.i68

bb.cz:                                            ; preds = %.lr.ph819
  %i.pn = and i8 %i.pk, 127
  %i.po = zext nneg i8 %i.pn to i64
  %i.pp = shl i64 %i.po, %indvars.iv1150
  %i.pq = or i64 %i.pp, %.1.i.i65817
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 7
  %.not.i.i67 = icmp eq ptr %i.pm, %i.kn
  br i1 %.not.i.i67, label %.preheader494._crit_edge, label %.lr.ph819, !llvm.loop !46

.preheader494._crit_edge:                         ; preds = %.preheader494, %bb.cz
  %i.pr = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pr, ptr noundef nonnull @.str.78)
          to label %.invoke unwind label %bb.da

bb.da:                                            ; preds = %.preheader494._crit_edge
  %i.ps = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pr) #28
  br label %.body50

.critedge.i.i68:                                  ; preds = %.lr.ph819
  %i.pt = zext nneg i8 %i.pk to i64
  %i.pu = shl i64 %i.pt, %indvars.iv1150
  %i.pv = or i64 %i.pu, %.1.i.i65817
  br label %bb.db

bb.db:                                            ; preds = %.critedge.i.i68, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.271.i.i69 = phi ptr [ %i.pm, %.critedge.i.i68 ], [ %i.pf, %bb.cw ], [ %i.nr, %bb.co ], [ %i.ny, %bb.cp ], [ %i.of, %bb.cq ], [ %i.om, %bb.cr ], [ %i.ot, %bb.cs ], [ %i.ow, %bb.ct ], [ %i.oz, %bb.cu ], [ %i.pc, %bb.cv ]
  %.2.i.i70 = phi i64 [ %i.pv, %.critedge.i.i68 ], [ %i.or, %bb.cw ], [ %i.nw, %bb.co ], [ %i.od, %bb.cp ], [ %i.ok, %bb.cq ], [ %i.or, %bb.cr ], [ %i.or, %bb.cs ], [ %i.or, %bb.ct ], [ %i.or, %bb.cu ], [ %i.or, %bb.cv ]
  %i.pw = ptrtoint ptr %.271.i.i69 to i64
  %i.px = sub i64 %i.pw, %i.nl
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i71

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i71: ; preds = %bb.db, %bb.cm
  %.3452 = phi i64 [ 1, %bb.cm ], [ %i.px, %bb.db ]
  %.072.i.i72 = phi i64 [ %i.nk, %bb.cm ], [ %.2.i.i70, %bb.db ]
  %i.py = trunc i64 %.072.i.i72 to i32            ; 2 uses
  %i.pz = and i32 %i.py, 7
  %i.qa = lshr i32 %i.py, 3                       ; 2 uses
  store i32 %i.qa, ptr %i.a, align 4, !tbaa !164
  br label %bb.dc

bb.dc:                                            ; preds = %bb.bq, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i71
  %.pr = phi i32 [ %i.ke, %bb.bq ], [ %i.qa, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i71 ] ; 2 uses
  %.4453.ph = phi i64 [ %.0449, %bb.bq ], [ %.3452, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i71 ] ; 6 uses
  %.1.ph = phi i32 [ %i.jz, %bb.bq ], [ %i.pz, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i71 ] ; 2 uses
  %.sroa.02.0.copyload.i83461 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 48), align 8, !tbaa !249
  %.not.i84 = icmp eq i32 %.pr, 2
  br i1 %.not.i84, label %bb.dd, label %thread-pre-split

bb.dd:                                            ; preds = %bb.dc
  %i.qb = load i64, ptr %5, align 8, !tbaa !438   ; 5 uses
  %i.qc = icmp ugt i64 %.4453.ph, %i.qb
  br i1 %i.qc, label %.noexc52._crit_edge.invoke, label %.noexc97

.noexc97:                                         ; preds = %bb.dd
  %i.qd = sub nuw i64 %i.qb, %.4453.ph            ; 3 uses
  %i.qe = load ptr, ptr %i.gd, align 8, !tbaa !439 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.4453.ph ; 14 uses
  store i64 %i.qd, ptr %5, align 8, !tbaa !249
  store ptr %i.qf, ptr %i.gd, align 8, !tbaa !363
  %.not4.i86 = icmp eq i32 %.1.ph, 2
  br i1 %.not4.i86, label %bb.dg, label %bb.de, !prof !257

bb.de:                                            ; preds = %.noexc97
  %i.qg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.qg, ptr noundef nonnull @.str.79)
          to label %.invoke unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qg) #28
  br label %.body50

bb.dg:                                            ; preds = %.noexc97
  %i.qi = getelementptr inbounds nuw i8, ptr %12, i64 %.sroa.02.0.copyload.i83461 ; 7 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qb
  %i.qk = load i8, ptr %i.qf, align 1, !tbaa !94  ; 3 uses
  %i.ql = icmp sgt i8 %i.qk, -1
  br i1 %i.ql, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.qm = zext nneg i8 %i.qk to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166

bb.di:                                            ; preds = %bb.dg
  %i.qn = ptrtoint ptr %i.qf to i64
  %i.qo = icmp ugt i64 %i.qd, 9
  br i1 %i.qo, label %bb.dj, label %.preheader493, !prof !257

.preheader493:                                    ; preds = %bb.di
  %.not.i.i162827 = icmp samesign eq i64 %.4453.ph, %i.qb
  br i1 %.not.i.i162827, label %.preheader493._crit_edge, label %.lr.ph831

bb.dj:                                            ; preds = %bb.di
  %i.qp = and i8 %i.qk, 127
  %i.qq = zext nneg i8 %i.qp to i64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qf, i64 1
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qf, i64 2 ; 2 uses
  %i.qt = load i8, ptr %i.qr, align 1, !tbaa !94  ; 2 uses
  %i.qu = sext i8 %i.qt to i64
  %i.qv = shl nsw i64 %i.qu, 7
  %i.qw = and i64 %i.qv, 16256
  %i.qx = or disjoint i64 %i.qw, %i.qq            ; 2 uses
  %i.qy = icmp sgt i8 %i.qt, -1
  br i1 %i.qy, label %bb.dw, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qf, i64 3 ; 2 uses
  %i.ra = load i8, ptr %i.qs, align 1, !tbaa !94  ; 2 uses
  %i.rb = sext i8 %i.ra to i64
  %i.rc = shl nsw i64 %i.rb, 14
  %i.rd = and i64 %i.rc, 2080768
  %i.re = or disjoint i64 %i.rd, %i.qx            ; 2 uses
  %i.rf = icmp sgt i8 %i.ra, -1
  br i1 %i.rf, label %bb.dw, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qf, i64 4 ; 2 uses
  %i.rh = load i8, ptr %i.qz, align 1, !tbaa !94  ; 2 uses
  %i.ri = sext i8 %i.rh to i64
  %i.rj = shl nsw i64 %i.ri, 21
  %i.rk = and i64 %i.rj, 266338304
  %i.rl = or disjoint i64 %i.rk, %i.re            ; 2 uses
  %i.rm = icmp sgt i8 %i.rh, -1
  br i1 %i.rm, label %bb.dw, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qf, i64 5 ; 2 uses
  %i.ro = load i8, ptr %i.rg, align 1, !tbaa !94  ; 2 uses
  %i.rp = sext i8 %i.ro to i64
  %i.rq = shl nsw i64 %i.rp, 28
  %i.rr = and i64 %i.rq, 34091302912
  %i.rs = or disjoint i64 %i.rr, %i.rl            ; 2 uses
  %i.rt = icmp sgt i8 %i.ro, -1
  br i1 %i.rt, label %bb.dw, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qf, i64 6 ; 2 uses
  %i.rv = load i8, ptr %i.rn, align 1, !tbaa !94  ; 2 uses
  %i.rw = sext i8 %i.rv to i64
  %i.rx = shl nsw i64 %i.rw, 35
  %i.ry = and i64 %i.rx, 4363686772736
  %i.rz = or disjoint i64 %i.ry, %i.rs            ; 2 uses
  %i.sa = icmp sgt i8 %i.rv, -1
  br i1 %i.sa, label %bb.dw, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qf, i64 7 ; 2 uses
  %i.sc = load i8, ptr %i.ru, align 1, !tbaa !94  ; 2 uses
  %i.sd = sext i8 %i.sc to i64
  %i.se = shl nsw i64 %i.sd, 42
  %i.sf = and i64 %i.se, 558551906910208
  %i.sg = or i64 %i.sf, %i.rz                     ; 2 uses
  %i.sh = icmp sgt i8 %i.sc, -1
  br i1 %i.sh, label %bb.dw, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.si = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 2 uses
  %i.sj = load i8, ptr %i.sb, align 1, !tbaa !94  ; 2 uses
  %i.sk = sext i8 %i.sj to i64
  %i.sl = shl nsw i64 %i.sk, 49
  %i.sm = and i64 %i.sl, 71494644084506624
  %i.sn = or i64 %i.sm, %i.sg                     ; 2 uses
  %i.so = icmp sgt i8 %i.sj, -1
  br i1 %i.so, label %bb.dw, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qf, i64 9 ; 2 uses
  %i.sq = load i8, ptr %i.si, align 1, !tbaa !94  ; 2 uses
  %i.sr = sext i8 %i.sq to i64
  %i.ss = shl nsw i64 %i.sr, 56
  %i.st = and i64 %i.ss, 9151314442816847872
  %i.su = or i64 %i.st, %i.sn                     ; 2 uses
  %i.sv = icmp sgt i8 %i.sq, -1
  br i1 %i.sv, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qf, i64 10
  %i.sx = load i8, ptr %i.sp, align 1, !tbaa !94  ; 2 uses
  %i.sy = zext i8 %i.sx to i64
  %i.sz = shl i64 %i.sy, 63
  %i.ta = or i64 %i.sz, %i.su
  %i.tb = icmp sgt i8 %i.sx, -1
  br i1 %i.tb, label %bb.dw, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.tc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tc, ptr noundef nonnull @.str.77)
          to label %.invoke unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.td = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tc) #28
  br label %.body50

.lr.ph831:                                        ; preds = %.preheader493, %bb.du
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %bb.du ], [ 0, %.preheader493 ] ; 3 uses
  %.1.i.i160829 = phi i64 [ %i.tk, %bb.du ], [ 0, %.preheader493 ] ; 2 uses
  %.170.i.i159828 = phi ptr [ %i.tg, %bb.du ], [ %i.qf, %.preheader493 ] ; 2 uses
  %i.te = load i8, ptr %.170.i.i159828, align 1, !tbaa !94 ; 3 uses
  %i.tf = icmp slt i8 %i.te, 0
  %i.tg = getelementptr inbounds nuw i8, ptr %.170.i.i159828, i64 1 ; 3 uses
  br i1 %i.tf, label %bb.du, label %.critedge.i.i163

bb.du:                                            ; preds = %.lr.ph831
  %i.th = and i8 %i.te, 127
  %i.ti = zext nneg i8 %i.th to i64
  %i.tj = shl i64 %i.ti, %indvars.iv1153
  %i.tk = or i64 %i.tj, %.1.i.i160829
  %indvars.iv.next1154 = add nuw nsw i64 %indvars.iv1153, 7
  %.not.i.i162 = icmp eq ptr %i.tg, %i.qj
  br i1 %.not.i.i162, label %.preheader493._crit_edge, label %.lr.ph831, !llvm.loop !46

.preheader493._crit_edge:                         ; preds = %.preheader493, %bb.du
  %i.tl = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tl, ptr noundef nonnull @.str.78)
          to label %.invoke unwind label %bb.dv

bb.dv:                                            ; preds = %.preheader493._crit_edge
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tl) #28
  br label %.body50

.critedge.i.i163:                                 ; preds = %.lr.ph831
  %i.tn = zext nneg i8 %i.te to i64
  %i.to = shl i64 %i.tn, %indvars.iv1153
  %i.tp = or i64 %i.to, %.1.i.i160829
  br label %bb.dw

bb.dw:                                            ; preds = %.critedge.i.i163, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj
  %.271.i.i164 = phi ptr [ %i.tg, %.critedge.i.i163 ], [ %i.sw, %bb.dr ], [ %i.qs, %bb.dj ], [ %i.qz, %bb.dk ], [ %i.rg, %bb.dl ], [ %i.rn, %bb.dm ], [ %i.ru, %bb.dn ], [ %i.sb, %bb.do ], [ %i.si, %bb.dp ], [ %i.sp, %bb.dq ]
  %.2.i.i165 = phi i64 [ %i.tp, %.critedge.i.i163 ], [ %i.ta, %bb.dr ], [ %i.qx, %bb.dj ], [ %i.re, %bb.dk ], [ %i.rl, %bb.dl ], [ %i.rs, %bb.dm ], [ %i.rz, %bb.dn ], [ %i.sg, %bb.do ], [ %i.sn, %bb.dp ], [ %i.su, %bb.dq ]
  %i.tq = ptrtoint ptr %.271.i.i164 to i64
  %i.tr = sub i64 %i.tq, %i.qn
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166: ; preds = %bb.dw, %bb.dh
  %.0 = phi i64 [ 1, %bb.dh ], [ %i.tr, %bb.dw ]  ; 2 uses
  %.072.i.i167 = phi i64 [ %i.qm, %bb.dh ], [ %.2.i.i165, %bb.dw ] ; 7 uses
  %i.ts = add i64 %.072.i.i167, %.0               ; 6 uses
  %i.tt = icmp ult i64 %i.qd, %i.ts
  br i1 %i.tt, label %bb.dx, label %bb.dz, !prof !169

bb.dx:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166
  %i.tu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.tu, ptr noundef nonnull @.str.89)
          to label %.invoke unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.tu) #28
  br label %.body50

bb.dz:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i166
  %i.tw = load ptr, ptr %i.qi, align 8, !tbaa !95 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.qi, i64 16 ; 2 uses
  %i.ty = icmp eq ptr %i.tw, %i.tx
  br i1 %i.ty, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.dz
  %i.tz = load i64, ptr %i.tx, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i224: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223
  %i.ua = phi i64 [ %i.tz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223 ], [ 15, %bb.dz ]
  %i.ub = icmp ugt i64 %.072.i.i167, %i.ua
  br i1 %i.ub, label %bb.ea, label %.noexc175

bb.ea:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i224
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.qi, i64 noundef %.072.i.i167)
          to label %.noexc227 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc227:                                        ; preds = %bb.ea
  %.pre.i225 = load ptr, ptr %i.qi, align 8, !tbaa !95
  br label %.noexc175

.noexc175:                                        ; preds = %.noexc227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i224
  %i.uc = phi ptr [ %.pre.i225, %.noexc227 ], [ %i.tw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i224 ]
  %i.ud = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i64 %.072.i.i167, ptr %i.ud, align 8, !tbaa !93
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 %.072.i.i167
  store i8 0, ptr %i.ue, align 1, !tbaa !94
  %i.uf = load ptr, ptr %i.qi, align 8, !tbaa !95
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 %.072.i.i167
  store i8 0, ptr %i.ug, align 1, !tbaa !94
  %i.uh = load ptr, ptr %i.qi, align 8, !tbaa !95
  %i.ui = load ptr, ptr %i.gd, align 8, !tbaa !439
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 %.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uh, ptr align 1 %i.uj, i64 %.072.i.i167, i1 false)
  %i.uk = load i64, ptr %5, align 8, !tbaa !438   ; 5 uses
  %i.ul = icmp ugt i64 %i.ts, %i.uk
  br i1 %i.ul, label %.noexc52._crit_edge.invoke, label %.noexc101

.noexc101:                                        ; preds = %.noexc175
  %i.um = sub nuw i64 %i.uk, %i.ts                ; 2 uses
  %i.un = load ptr, ptr %i.gd, align 8, !tbaa !439 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.ts ; 14 uses
  store i64 %i.um, ptr %5, align 8, !tbaa !249
  store ptr %i.uo, ptr %i.gd, align 8, !tbaa !363
  %i.up = icmp eq i64 %i.uk, %i.ts
  br i1 %i.up, label %.critedge.i, label %bb.eb

bb.eb:                                            ; preds = %.noexc101
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 %i.uk
  %i.ur = load i8, ptr %i.uo, align 1, !tbaa !94  ; 3 uses
  %i.us = icmp sgt i8 %i.ur, -1
  br i1 %i.us, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ut = zext nneg i8 %i.ur to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i94

bb.ed:                                            ; preds = %bb.eb
  %i.uu = ptrtoint ptr %i.uo to i64
  %i.uv = icmp ugt i64 %i.um, 9
  br i1 %i.uv, label %bb.ee, label %.lr.ph843, !prof !257

bb.ee:                                            ; preds = %bb.ed
  %i.uw = and i8 %i.ur, 127
  %i.ux = zext nneg i8 %i.uw to i64
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uo, i64 1
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uo, i64 2 ; 2 uses
  %i.va = load i8, ptr %i.uy, align 1, !tbaa !94  ; 2 uses
  %i.vb = sext i8 %i.va to i64
  %i.vc = shl nsw i64 %i.vb, 7
  %i.vd = and i64 %i.vc, 16256
  %i.ve = or disjoint i64 %i.vd, %i.ux            ; 2 uses
  %i.vf = icmp sgt i8 %i.va, -1
  br i1 %i.vf, label %bb.er, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uo, i64 3 ; 2 uses
  %i.vh = load i8, ptr %i.uz, align 1, !tbaa !94  ; 2 uses
  %i.vi = sext i8 %i.vh to i64
  %i.vj = shl nsw i64 %i.vi, 14
  %i.vk = and i64 %i.vj, 2080768
  %i.vl = or disjoint i64 %i.vk, %i.ve            ; 2 uses
  %i.vm = icmp sgt i8 %i.vh, -1
  br i1 %i.vm, label %bb.er, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uo, i64 4 ; 2 uses
  %i.vo = load i8, ptr %i.vg, align 1, !tbaa !94  ; 2 uses
  %i.vp = sext i8 %i.vo to i64
  %i.vq = shl nsw i64 %i.vp, 21
  %i.vr = and i64 %i.vq, 266338304
  %i.vs = or disjoint i64 %i.vr, %i.vl            ; 2 uses
  %i.vt = icmp sgt i8 %i.vo, -1
  br i1 %i.vt, label %bb.er, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uo, i64 5 ; 2 uses
  %i.vv = load i8, ptr %i.vn, align 1, !tbaa !94  ; 2 uses
  %i.vw = sext i8 %i.vv to i64
  %i.vx = shl nsw i64 %i.vw, 28
  %i.vy = and i64 %i.vx, 34091302912
  %i.vz = or disjoint i64 %i.vy, %i.vs            ; 6 uses
  %i.wa = icmp sgt i8 %i.vv, -1
  br i1 %i.wa, label %bb.er, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.wb = getelementptr inbounds nuw i8, ptr %i.uo, i64 6 ; 2 uses
  %i.wc = load i8, ptr %i.vu, align 1, !tbaa !94
  %i.wd = icmp sgt i8 %i.wc, -1
  br i1 %i.wd, label %bb.er, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.we = getelementptr inbounds nuw i8, ptr %i.uo, i64 7 ; 2 uses
  %i.wf = load i8, ptr %i.wb, align 1, !tbaa !94
  %i.wg = icmp sgt i8 %i.wf, -1
  br i1 %i.wg, label %bb.er, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.wh = getelementptr inbounds nuw i8, ptr %i.uo, i64 8 ; 2 uses
  %i.wi = load i8, ptr %i.we, align 1, !tbaa !94
  %i.wj = icmp sgt i8 %i.wi, -1
  br i1 %i.wj, label %bb.er, label %bb.el
end_hunk_0
begin_hunk_1_@_ZN16struct_pb_sample11deserializeIN9pb_sample7personsES2_EEv10SampleTypeRT_:bb.a
bb.fj:                                            ; preds = %bb.fi
  %i.yg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.yg, ptr noundef nonnull @.str.77)
          to label %.invoke unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.yh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.yg) #28
  br label %.body.i

.lr.ph1348:                                       ; preds = %.preheader612, %bb.fl
  %indvars.iv2099 = phi i64 [ %indvars.iv.next2100, %bb.fl ], [ 0, %.preheader612 ] ; 3 uses
  %.1.i.i23.i1346 = phi i64 [ %i.yo, %bb.fl ], [ 0, %.preheader612 ] ; 2 uses
  %.170.i.i22.i1345 = phi ptr [ %i.yk, %bb.fl ], [ %i.we, %.preheader612 ] ; 2 uses
  %i.yi = load i8, ptr %.170.i.i22.i1345, align 1, !tbaa !94 ; 3 uses
  %i.yj = icmp slt i8 %i.yi, 0
  %i.yk = getelementptr inbounds nuw i8, ptr %.170.i.i22.i1345, i64 1 ; 3 uses
  br i1 %i.yj, label %bb.fl, label %.critedge.i.i26.i

bb.fl:                                            ; preds = %.lr.ph1348
  %i.yl = and i8 %i.yi, 127
  %i.ym = zext nneg i8 %i.yl to i64
  %i.yn = shl i64 %i.ym, %indvars.iv2099
  %i.yo = or i64 %i.yn, %.1.i.i23.i1346
  %indvars.iv.next2100 = add nuw nsw i64 %indvars.iv2099, 7
  %.not.i.i25.i = icmp eq ptr %i.yk, %i.tl
  br i1 %.not.i.i25.i, label %.preheader612._crit_edge, label %.lr.ph1348, !llvm.loop !46

.preheader612._crit_edge:                         ; preds = %.preheader612, %bb.fl
  %i.yp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.yp, ptr noundef nonnull @.str.78)
          to label %.invoke unwind label %bb.fm

bb.fm:                                            ; preds = %.preheader612._crit_edge
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.yp) #28
  br label %.body.i

.critedge.i.i26.i:                                ; preds = %.lr.ph1348
  %i.yr = zext nneg i8 %i.yi to i64
  %i.ys = shl i64 %i.yr, %indvars.iv2099
  %i.yt = or i64 %i.ys, %.1.i.i23.i1346
  br label %bb.fn

bb.fn:                                            ; preds = %.critedge.i.i26.i, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa
  %.271.i.i27.i = phi ptr [ %i.yk, %.critedge.i.i26.i ], [ %i.yd, %bb.fi ], [ %i.wp, %bb.fa ], [ %i.ww, %bb.fb ], [ %i.xd, %bb.fc ], [ %i.xk, %bb.fd ], [ %i.xr, %bb.fe ], [ %i.xu, %bb.ff ], [ %i.xx, %bb.fg ], [ %i.ya, %bb.fh ]
  %.2.i.i28.i = phi i64 [ %i.yt, %.critedge.i.i26.i ], [ %i.xp, %bb.fi ], [ %i.wu, %bb.fa ], [ %i.xb, %bb.fb ], [ %i.xi, %bb.fc ], [ %i.xp, %bb.fd ], [ %i.xp, %bb.fe ], [ %i.xp, %bb.ff ], [ %i.xp, %bb.fg ], [ %i.xp, %bb.fh ]
  %i.yu = ptrtoint ptr %.271.i.i27.i to i64
  %i.yv = sub i64 %i.yu, %i.wj
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i: ; preds = %bb.fn, %bb.ey
  %.10 = phi i64 [ 1, %bb.ey ], [ %i.yv, %bb.fn ]
  %.072.i.i30.i = phi i64 [ %i.wi, %bb.ey ], [ %.2.i.i28.i, %bb.fn ]
  %i.yw = trunc i64 %.072.i.i30.i to i32          ; 2 uses
  %i.yx = and i32 %i.yw, 7
  %i.yy = lshr i32 %i.yw, 3
  br label %bb.fo

bb.fo:                                            ; preds = %bb.ec, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i
  %.pre.pre.pre = phi i64 [ %i.wd, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i ], [ %.pre.pre.pre.pre, %bb.ec ] ; 6 uses
  %.0544.ph = phi i32 [ %i.yy, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i ], [ %i.ta, %bb.ec ] ; 2 uses
  %.1540.ph = phi i64 [ %.10, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i ], [ %.0539, %bb.ec ] ; 6 uses
  %.0538.ph = phi i32 [ %i.yx, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i ], [ %i.sz, %bb.ec ] ; 2 uses
  %.sroa.02.0.copyload.i32.i567 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 48), align 8, !tbaa !249
  %.not.i33.i = icmp eq i32 %.0544.ph, 2
  br i1 %.not.i33.i, label %bb.fp, label %bb.hd

bb.fp:                                            ; preds = %bb.fo
  %i.yz = icmp ugt i64 %.1540.ph, %.pre.pre.pre
  br i1 %i.yz, label %.invoke2948, label %.noexc124

.noexc124:                                        ; preds = %bb.fp
  %i.za = sub nuw i64 %.pre.pre.pre, %.1540.ph    ; 3 uses
  %i.zb = load ptr, ptr %i.ij, align 8, !tbaa !439 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 %.1540.ph ; 14 uses
  store i64 %i.za, ptr %7, align 8, !tbaa !249
  store ptr %i.zc, ptr %i.ij, align 8, !tbaa !363
  %.not4.i35.i = icmp eq i32 %.0538.ph, 2
  br i1 %.not4.i35.i, label %bb.fs, label %bb.fq, !prof !257

bb.fq:                                            ; preds = %.noexc124
  %i.zd = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.zd, ptr noundef nonnull @.str.79)
          to label %.invoke unwind label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ze = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.zd) #28
  br label %.body.i

bb.fs:                                            ; preds = %.noexc124
  %i.zf = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.02.0.copyload.i32.i567 ; 7 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zb, i64 %.pre.pre.pre
  %i.zh = load i8, ptr %i.zc, align 1, !tbaa !94  ; 3 uses
  %i.zi = icmp sgt i8 %i.zh, -1
  br i1 %i.zi, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.zj = zext nneg i8 %i.zh to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i

bb.fu:                                            ; preds = %bb.fs
  %i.zk = ptrtoint ptr %i.zc to i64
  %i.zl = icmp ugt i64 %i.za, 9
  br i1 %i.zl, label %bb.fv, label %.preheader611, !prof !257

.preheader611:                                    ; preds = %bb.fu
  %.not.i.i88.i1358 = icmp samesign eq i64 %.1540.ph, %.pre.pre.pre
  br i1 %.not.i.i88.i1358, label %.preheader611._crit_edge, label %.lr.ph1362

bb.fv:                                            ; preds = %bb.fu
  %i.zm = and i8 %i.zh, 127
  %i.zn = zext nneg i8 %i.zm to i64
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zc, i64 1
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zc, i64 2 ; 2 uses
  %i.zq = load i8, ptr %i.zo, align 1, !tbaa !94  ; 2 uses
  %i.zr = sext i8 %i.zq to i64
  %i.zs = shl nsw i64 %i.zr, 7
  %i.zt = and i64 %i.zs, 16256
  %i.zu = or disjoint i64 %i.zt, %i.zn            ; 2 uses
  %i.zv = icmp sgt i8 %i.zq, -1
  br i1 %i.zv, label %bb.gi, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zc, i64 3 ; 2 uses
  %i.zx = load i8, ptr %i.zp, align 1, !tbaa !94  ; 2 uses
  %i.zy = sext i8 %i.zx to i64
  %i.zz = shl nsw i64 %i.zy, 14
  %i.aaa = and i64 %i.zz, 2080768
  %i.aab = or disjoint i64 %i.aaa, %i.zu          ; 2 uses
  %i.aac = icmp sgt i8 %i.zx, -1
  br i1 %i.aac, label %bb.gi, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zc, i64 4 ; 2 uses
  %i.aae = load i8, ptr %i.zw, align 1, !tbaa !94 ; 2 uses
  %i.aaf = sext i8 %i.aae to i64
  %i.aag = shl nsw i64 %i.aaf, 21
  %i.aah = and i64 %i.aag, 266338304
  %i.aai = or disjoint i64 %i.aah, %i.aab         ; 2 uses
  %i.aaj = icmp sgt i8 %i.aae, -1
  br i1 %i.aaj, label %bb.gi, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aak = getelementptr inbounds nuw i8, ptr %i.zc, i64 5 ; 2 uses
  %i.aal = load i8, ptr %i.aad, align 1, !tbaa !94 ; 2 uses
  %i.aam = sext i8 %i.aal to i64
  %i.aan = shl nsw i64 %i.aam, 28
  %i.aao = and i64 %i.aan, 34091302912
  %i.aap = or disjoint i64 %i.aao, %i.aai         ; 2 uses
  %i.aaq = icmp sgt i8 %i.aal, -1
  br i1 %i.aaq, label %bb.gi, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aar = getelementptr inbounds nuw i8, ptr %i.zc, i64 6 ; 2 uses
  %i.aas = load i8, ptr %i.aak, align 1, !tbaa !94 ; 2 uses
  %i.aat = sext i8 %i.aas to i64
  %i.aau = shl nsw i64 %i.aat, 35
  %i.aav = and i64 %i.aau, 4363686772736
  %i.aaw = or disjoint i64 %i.aav, %i.aap         ; 2 uses
  %i.aax = icmp sgt i8 %i.aas, -1
  br i1 %i.aax, label %bb.gi, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aay = getelementptr inbounds nuw i8, ptr %i.zc, i64 7 ; 2 uses
  %i.aaz = load i8, ptr %i.aar, align 1, !tbaa !94 ; 2 uses
  %i.aba = sext i8 %i.aaz to i64
  %i.abb = shl nsw i64 %i.aba, 42
  %i.abc = and i64 %i.abb, 558551906910208
  %i.abd = or i64 %i.abc, %i.aaw                  ; 2 uses
  %i.abe = icmp sgt i8 %i.aaz, -1
  br i1 %i.abe, label %bb.gi, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.abf = getelementptr inbounds nuw i8, ptr %i.zc, i64 8 ; 2 uses
  %i.abg = load i8, ptr %i.aay, align 1, !tbaa !94 ; 2 uses
  %i.abh = sext i8 %i.abg to i64
  %i.abi = shl nsw i64 %i.abh, 49
  %i.abj = and i64 %i.abi, 71494644084506624
  %i.abk = or i64 %i.abj, %i.abd                  ; 2 uses
  %i.abl = icmp sgt i8 %i.abg, -1
  br i1 %i.abl, label %bb.gi, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zc, i64 9 ; 2 uses
  %i.abn = load i8, ptr %i.abf, align 1, !tbaa !94 ; 2 uses
  %i.abo = sext i8 %i.abn to i64
  %i.abp = shl nsw i64 %i.abo, 56
  %i.abq = and i64 %i.abp, 9151314442816847872
  %i.abr = or i64 %i.abq, %i.abk                  ; 2 uses
  %i.abs = icmp sgt i8 %i.abn, -1
  br i1 %i.abs, label %bb.gi, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.abt = getelementptr inbounds nuw i8, ptr %i.zc, i64 10
  %i.abu = load i8, ptr %i.abm, align 1, !tbaa !94 ; 2 uses
  %i.abv = zext i8 %i.abu to i64
  %i.abw = shl i64 %i.abv, 63
  %i.abx = or i64 %i.abw, %i.abr
  %i.aby = icmp sgt i8 %i.abu, -1
  br i1 %i.aby, label %bb.gi, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.abz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.abz, ptr noundef nonnull @.str.77)
          to label %.invoke unwind label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aca = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.abz) #28
  br label %.body.i

.lr.ph1362:                                       ; preds = %.preheader611, %bb.gg
  %indvars.iv2102 = phi i64 [ %indvars.iv.next2103, %bb.gg ], [ 0, %.preheader611 ] ; 3 uses
  %.1.i.i86.i1360 = phi i64 [ %i.ach, %bb.gg ], [ 0, %.preheader611 ] ; 2 uses
  %.170.i.i85.i1359 = phi ptr [ %i.acd, %bb.gg ], [ %i.zc, %.preheader611 ] ; 2 uses
  %i.acb = load i8, ptr %.170.i.i85.i1359, align 1, !tbaa !94 ; 3 uses
  %i.acc = icmp slt i8 %i.acb, 0
  %i.acd = getelementptr inbounds nuw i8, ptr %.170.i.i85.i1359, i64 1 ; 3 uses
  br i1 %i.acc, label %bb.gg, label %.critedge.i.i89.i

bb.gg:                                            ; preds = %.lr.ph1362
  %i.ace = and i8 %i.acb, 127
  %i.acf = zext nneg i8 %i.ace to i64
  %i.acg = shl i64 %i.acf, %indvars.iv2102
  %i.ach = or i64 %i.acg, %.1.i.i86.i1360
  %indvars.iv.next2103 = add nuw nsw i64 %indvars.iv2102, 7
  %.not.i.i88.i = icmp eq ptr %i.acd, %i.zg
  br i1 %.not.i.i88.i, label %.preheader611._crit_edge, label %.lr.ph1362, !llvm.loop !46

.preheader611._crit_edge:                         ; preds = %.preheader611, %bb.gg
  %i.aci = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aci, ptr noundef nonnull @.str.78)
          to label %.invoke unwind label %bb.gh

bb.gh:                                            ; preds = %.preheader611._crit_edge
  %i.acj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aci) #28
  br label %.body.i

.critedge.i.i89.i:                                ; preds = %.lr.ph1362
  %i.ack = zext nneg i8 %i.acb to i64
  %i.acl = shl i64 %i.ack, %indvars.iv2102
  %i.acm = or i64 %i.acl, %.1.i.i86.i1360
  br label %bb.gi

bb.gi:                                            ; preds = %.critedge.i.i89.i, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %.271.i.i90.i = phi ptr [ %i.acd, %.critedge.i.i89.i ], [ %i.abt, %bb.gd ], [ %i.zp, %bb.fv ], [ %i.zw, %bb.fw ], [ %i.aad, %bb.fx ], [ %i.aak, %bb.fy ], [ %i.aar, %bb.fz ], [ %i.aay, %bb.ga ], [ %i.abf, %bb.gb ], [ %i.abm, %bb.gc ]
  %.2.i.i91.i = phi i64 [ %i.acm, %.critedge.i.i89.i ], [ %i.abx, %bb.gd ], [ %i.zu, %bb.fv ], [ %i.aab, %bb.fw ], [ %i.aai, %bb.fx ], [ %i.aap, %bb.fy ], [ %i.aaw, %bb.fz ], [ %i.abd, %bb.ga ], [ %i.abk, %bb.gb ], [ %i.abr, %bb.gc ]
  %i.acn = ptrtoint ptr %.271.i.i90.i to i64
  %i.aco = sub i64 %i.acn, %i.zk
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i: ; preds = %bb.gi, %bb.ft
  %.0 = phi i64 [ 1, %bb.ft ], [ %i.aco, %bb.gi ] ; 2 uses
  %.072.i.i93.i = phi i64 [ %i.zj, %bb.ft ], [ %.2.i.i91.i, %bb.gi ] ; 7 uses
  %i.acp = add i64 %.072.i.i93.i, %.0             ; 6 uses
  %i.acq = icmp ult i64 %i.za, %i.acp
  br i1 %i.acq, label %bb.gj, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, !prof !169

bb.gj:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i
  %i.acr = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.acr, ptr noundef nonnull @.str.89)
          to label %.invoke unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.acs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.acr) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i
  %i.act = load ptr, ptr %i.zf, align 8, !tbaa !95 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.zf, i64 16 ; 2 uses
  %i.acv = icmp eq ptr %i.act, %i.acu
  br i1 %i.acv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i
  %i.acw = load i64, ptr %i.acu, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i211: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210
  %i.acx = phi i64 [ %i.acw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i210 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i ]
  %i.acy = icmp ugt i64 %.072.i.i93.i, %i.acx
  br i1 %i.acy, label %bb.gl, label %.noexc129

bb.gl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i211
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.zf, i64 noundef %.072.i.i93.i)
          to label %.noexc214 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc214:                                        ; preds = %bb.gl
  %.pre.i212 = load ptr, ptr %i.zf, align 8, !tbaa !95
  br label %.noexc129

.noexc129:                                        ; preds = %.noexc214, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i211
  %i.acz = phi ptr [ %.pre.i212, %.noexc214 ], [ %i.act, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i211 ]
  %i.ada = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  store i64 %.072.i.i93.i, ptr %i.ada, align 8, !tbaa !93
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 %.072.i.i93.i
  store i8 0, ptr %i.adb, align 1, !tbaa !94
  %i.adc = load ptr, ptr %i.zf, align 8, !tbaa !95
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 %.072.i.i93.i
  store i8 0, ptr %i.add, align 1, !tbaa !94
  %i.ade = load ptr, ptr %i.zf, align 8, !tbaa !95
  %i.adf = load ptr, ptr %i.ij, align 8, !tbaa !439
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ade, ptr align 1 %i.adg, i64 %.072.i.i93.i, i1 false)
  %i.adh = load i64, ptr %7, align 8, !tbaa !438  ; 5 uses
  %i.adi = icmp ugt i64 %i.acp, %i.adh
  br i1 %i.adi, label %.invoke2948, label %.noexc130

.noexc130:                                        ; preds = %.noexc129
  %i.adj = sub nuw i64 %i.adh, %i.acp             ; 3 uses
  %i.adk = load ptr, ptr %i.ij, align 8, !tbaa !439 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.acp ; 14 uses
  store i64 %i.adj, ptr %7, align 8, !tbaa !249
  store ptr %i.adl, ptr %i.ij, align 8, !tbaa !363
  %i.adm = icmp eq i64 %i.adh, %i.acp
  br i1 %i.adm, label %_ZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %bb.gm

bb.gm:                                            ; preds = %.noexc130
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adh
  %i.ado = load i8, ptr %i.adl, align 1, !tbaa !94 ; 3 uses
  %i.adp = icmp sgt i8 %i.ado, -1
  br i1 %i.adp, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.adq = zext nneg i8 %i.ado to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i43.i

bb.go:                                            ; preds = %bb.gm
  %i.adr = ptrtoint ptr %i.adl to i64
  %i.ads = icmp ugt i64 %i.adj, 9
  br i1 %i.ads, label %bb.gp, label %.lr.ph1376, !prof !257

bb.gp:                                            ; preds = %bb.go
  %i.adt = and i8 %i.ado, 127
  %i.adu = zext nneg i8 %i.adt to i64
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adl, i64 1
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adl, i64 2 ; 2 uses
  %i.adx = load i8, ptr %i.adv, align 1, !tbaa !94 ; 2 uses
  %i.ady = sext i8 %i.adx to i64
  %i.adz = shl nsw i64 %i.ady, 7
  %i.aea = and i64 %i.adz, 16256
  %i.aeb = or disjoint i64 %i.aea, %i.adu         ; 2 uses
  %i.aec = icmp sgt i8 %i.adx, -1
  br i1 %i.aec, label %bb.hc, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adl, i64 3 ; 2 uses
  %i.aee = load i8, ptr %i.adw, align 1, !tbaa !94 ; 2 uses
  %i.aef = sext i8 %i.aee to i64
  %i.aeg = shl nsw i64 %i.aef, 14
  %i.aeh = and i64 %i.aeg, 2080768
  %i.aei = or disjoint i64 %i.aeh, %i.aeb         ; 2 uses
  %i.aej = icmp sgt i8 %i.aee, -1
  br i1 %i.aej, label %bb.hc, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adl, i64 4 ; 2 uses
  %i.ael = load i8, ptr %i.aed, align 1, !tbaa !94 ; 2 uses
  %i.aem = sext i8 %i.ael to i64
  %i.aen = shl nsw i64 %i.aem, 21
  %i.aeo = and i64 %i.aen, 266338304
  %i.aep = or disjoint i64 %i.aeo, %i.aei         ; 2 uses
  %i.aeq = icmp sgt i8 %i.ael, -1
  br i1 %i.aeq, label %bb.hc, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aer = getelementptr inbounds nuw i8, ptr %i.adl, i64 5 ; 2 uses
  %i.aes = load i8, ptr %i.aek, align 1, !tbaa !94 ; 2 uses
  %i.aet = sext i8 %i.aes to i64
  %i.aeu = shl nsw i64 %i.aet, 28
  %i.aev = and i64 %i.aeu, 34091302912
  %i.aew = or disjoint i64 %i.aev, %i.aep         ; 6 uses
  %i.aex = icmp sgt i8 %i.aes, -1
  br i1 %i.aex, label %bb.hc, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aey = getelementptr inbounds nuw i8, ptr %i.adl, i64 6 ; 2 uses
  %i.aez = load i8, ptr %i.aer, align 1, !tbaa !94
  %i.afa = icmp sgt i8 %i.aez, -1
  br i1 %i.afa, label %bb.hc, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.afb = getelementptr inbounds nuw i8, ptr %i.adl, i64 7 ; 2 uses
  %i.afc = load i8, ptr %i.aey, align 1, !tbaa !94
  %i.afd = icmp sgt i8 %i.afc, -1
  br i1 %i.afd, label %bb.hc, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.afe = getelementptr inbounds nuw i8, ptr %i.adl, i64 8 ; 2 uses
  %i.aff = load i8, ptr %i.afb, align 1, !tbaa !94
  %i.afg = icmp sgt i8 %i.aff, -1
  br i1 %i.afg, label %bb.hc, label %bb.gw
end_hunk_1
begin_hunk_2_@_ZN16struct_pb_sample11deserializeIN9pb_sample7MonsterES2_EEv10SampleTypeRT_:bb.a
  %i.bix = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bix, ptr noundef nonnull @.str.77)
          to label %.invoke11042 unwind label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.biy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bix) #28
  br label %.body182

.lr.ph4793:                                       ; preds = %.preheader2459, %bb.ns
  %indvars.iv7832 = phi i64 [ %indvars.iv.next7833, %bb.ns ], [ 0, %.preheader2459 ] ; 3 uses
  %.1.i.i2564791 = phi i64 [ %i.bjf, %bb.ns ], [ 0, %.preheader2459 ] ; 2 uses
  %.170.i.i2554790 = phi ptr [ %i.bjb, %bb.ns ], [ %i.bgv, %.preheader2459 ] ; 2 uses
  %i.biz = load i8, ptr %.170.i.i2554790, align 1, !tbaa !94 ; 3 uses
  %i.bja = icmp slt i8 %i.biz, 0
  %i.bjb = getelementptr inbounds nuw i8, ptr %.170.i.i2554790, i64 1 ; 3 uses
  br i1 %i.bja, label %bb.ns, label %.critedge.i.i259

bb.ns:                                            ; preds = %.lr.ph4793
  %i.bjc = and i8 %i.biz, 127
  %i.bjd = zext nneg i8 %i.bjc to i64
  %i.bje = shl i64 %i.bjd, %indvars.iv7832
  %i.bjf = or i64 %i.bje, %.1.i.i2564791
  %indvars.iv.next7833 = add nuw nsw i64 %indvars.iv7832, 7
  %.not.i.i258 = icmp eq ptr %i.bjb, %i.bec
  br i1 %.not.i.i258, label %.preheader2459._crit_edge, label %.lr.ph4793, !llvm.loop !46

.preheader2459._crit_edge:                        ; preds = %.preheader2459, %bb.ns
  %i.bjg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bjg, ptr noundef nonnull @.str.78)
          to label %.invoke11042 unwind label %bb.nt

bb.nt:                                            ; preds = %.preheader2459._crit_edge
  %i.bjh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bjg) #28
  br label %.body182

.critedge.i.i259:                                 ; preds = %.lr.ph4793
  %i.bji = zext nneg i8 %i.biz to i64
  %i.bjj = shl i64 %i.bji, %indvars.iv7832
  %i.bjk = or i64 %i.bjj, %.1.i.i2564791
  br label %bb.nu

bb.nu:                                            ; preds = %.critedge.i.i259, %bb.np, %bb.no, %bb.nn, %bb.nm, %bb.nl, %bb.nk, %bb.nj, %bb.ni, %bb.nh
  %.271.i.i260 = phi ptr [ %i.bjb, %.critedge.i.i259 ], [ %i.biu, %bb.np ], [ %i.bhg, %bb.nh ], [ %i.bhn, %bb.ni ], [ %i.bhu, %bb.nj ], [ %i.bib, %bb.nk ], [ %i.bii, %bb.nl ], [ %i.bil, %bb.nm ], [ %i.bio, %bb.nn ], [ %i.bir, %bb.no ]
  %.2.i.i261 = phi i64 [ %i.bjk, %.critedge.i.i259 ], [ %i.big, %bb.np ], [ %i.bhl, %bb.nh ], [ %i.bhs, %bb.ni ], [ %i.bhz, %bb.nj ], [ %i.big, %bb.nk ], [ %i.big, %bb.nl ], [ %i.big, %bb.nm ], [ %i.big, %bb.nn ], [ %i.big, %bb.no ]
  %i.bjl = ptrtoint ptr %.271.i.i260 to i64
  %i.bjm = sub i64 %i.bjl, %i.bha
  br label %.noexc192

.noexc192:                                        ; preds = %bb.nf, %bb.nu
  %.72210 = phi i64 [ 1, %bb.nf ], [ %i.bjm, %bb.nu ]
  %.072.i.i263 = phi i64 [ %i.bgz, %bb.nf ], [ %.2.i.i261, %bb.nu ]
  %i.bjn = trunc i64 %.072.i.i263 to i32          ; 2 uses
  %i.bjo = and i32 %i.bjn, 7
  %i.bjp = lshr i32 %i.bjn, 3                     ; 2 uses
  store i32 %i.bjp, ptr %i.e, align 4, !tbaa !164
  br label %.noexc192.thread2264

.noexc192.thread2264:                             ; preds = %thread-pre-split2258, %.noexc192
  %.pr2287 = phi i32 [ %i.bjp, %.noexc192 ], [ %.pr2273, %thread-pre-split2258 ] ; 2 uses
  %.321972271 = phi i32 [ %i.bjo, %.noexc192 ], [ %.22196, %thread-pre-split2258 ] ; 2 uses
  %.822112270 = phi i64 [ %.72210, %.noexc192 ], [ %.62209, %thread-pre-split2258 ] ; 6 uses
  %.sroa.02.0.copyload.i2752272 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 120), align 8, !tbaa !249
  %.not.i276 = icmp eq i32 %.pr2287, 4
  br i1 %.not.i276, label %bb.nv, label %.noexc193.thread2278

bb.nv:                                            ; preds = %.noexc192.thread2264
  %i.bjq = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.bjr = icmp ugt i64 %.822112270, %i.bjq
  br i1 %i.bjr, label %.noexc184._crit_edge.invoke, label %.noexc299

.noexc299:                                        ; preds = %bb.nv
  %i.bjs = sub nuw i64 %i.bjq, %.822112270        ; 3 uses
  %i.bjt = load ptr, ptr %i.wc, align 8, !tbaa !439 ; 2 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 %.822112270 ; 14 uses
  store i64 %i.bjs, ptr %17, align 8, !tbaa !249
  store ptr %i.bju, ptr %i.wc, align 8, !tbaa !363
  %.not4.i278 = icmp eq i32 %.321972271, 2
  br i1 %.not4.i278, label %bb.ny, label %bb.nw, !prof !257

bb.nw:                                            ; preds = %.noexc299
  %i.bjv = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bjv, ptr noundef nonnull @.str.79)
          to label %.invoke11042 unwind label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.bjw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bjv) #28
  br label %.body182

bb.ny:                                            ; preds = %.noexc299
  %i.bjx = getelementptr inbounds nuw i8, ptr %24, i64 %.sroa.02.0.copyload.i2752272 ; 7 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjt, i64 %i.bjq
  %i.bjz = load i8, ptr %i.bju, align 1, !tbaa !94 ; 3 uses
  %i.bka = icmp sgt i8 %i.bjz, -1
  br i1 %i.bka, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  %i.bkb = zext nneg i8 %i.bjz to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i

bb.oa:                                            ; preds = %bb.ny
  %i.bkc = ptrtoint ptr %i.bju to i64
  %i.bkd = icmp ugt i64 %i.bjs, 9
  br i1 %i.bkd, label %bb.ob, label %.preheader2458, !prof !257

.preheader2458:                                   ; preds = %bb.oa
  %.not.i.i.i2824795 = icmp samesign eq i64 %.822112270, %i.bjq
  br i1 %.not.i.i.i2824795, label %.preheader2458._crit_edge, label %.lr.ph4799

bb.ob:                                            ; preds = %bb.oa
  %i.bke = and i8 %i.bjz, 127
  %i.bkf = zext nneg i8 %i.bke to i64
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bju, i64 1
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bju, i64 2 ; 2 uses
  %i.bki = load i8, ptr %i.bkg, align 1, !tbaa !94 ; 2 uses
  %i.bkj = sext i8 %i.bki to i64
  %i.bkk = shl nsw i64 %i.bkj, 7
  %i.bkl = and i64 %i.bkk, 16256
  %i.bkm = or disjoint i64 %i.bkl, %i.bkf         ; 2 uses
  %i.bkn = icmp sgt i8 %i.bki, -1
  br i1 %i.bkn, label %bb.oo, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bju, i64 3 ; 2 uses
  %i.bkp = load i8, ptr %i.bkh, align 1, !tbaa !94 ; 2 uses
  %i.bkq = sext i8 %i.bkp to i64
  %i.bkr = shl nsw i64 %i.bkq, 14
  %i.bks = and i64 %i.bkr, 2080768
  %i.bkt = or disjoint i64 %i.bks, %i.bkm         ; 2 uses
  %i.bku = icmp sgt i8 %i.bkp, -1
  br i1 %i.bku, label %bb.oo, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bju, i64 4 ; 2 uses
  %i.bkw = load i8, ptr %i.bko, align 1, !tbaa !94 ; 2 uses
  %i.bkx = sext i8 %i.bkw to i64
  %i.bky = shl nsw i64 %i.bkx, 21
  %i.bkz = and i64 %i.bky, 266338304
  %i.bla = or disjoint i64 %i.bkz, %i.bkt         ; 2 uses
  %i.blb = icmp sgt i8 %i.bkw, -1
  br i1 %i.blb, label %bb.oo, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bju, i64 5 ; 2 uses
  %i.bld = load i8, ptr %i.bkv, align 1, !tbaa !94 ; 2 uses
  %i.ble = sext i8 %i.bld to i64
  %i.blf = shl nsw i64 %i.ble, 28
  %i.blg = and i64 %i.blf, 34091302912
  %i.blh = or disjoint i64 %i.blg, %i.bla         ; 2 uses
  %i.bli = icmp sgt i8 %i.bld, -1
  br i1 %i.bli, label %bb.oo, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.blj = getelementptr inbounds nuw i8, ptr %i.bju, i64 6 ; 2 uses
  %i.blk = load i8, ptr %i.blc, align 1, !tbaa !94 ; 2 uses
  %i.bll = sext i8 %i.blk to i64
  %i.blm = shl nsw i64 %i.bll, 35
  %i.bln = and i64 %i.blm, 4363686772736
  %i.blo = or disjoint i64 %i.bln, %i.blh         ; 2 uses
  %i.blp = icmp sgt i8 %i.blk, -1
  br i1 %i.blp, label %bb.oo, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.blq = getelementptr inbounds nuw i8, ptr %i.bju, i64 7 ; 2 uses
  %i.blr = load i8, ptr %i.blj, align 1, !tbaa !94 ; 2 uses
  %i.bls = sext i8 %i.blr to i64
  %i.blt = shl nsw i64 %i.bls, 42
  %i.blu = and i64 %i.blt, 558551906910208
  %i.blv = or i64 %i.blu, %i.blo                  ; 2 uses
  %i.blw = icmp sgt i8 %i.blr, -1
  br i1 %i.blw, label %bb.oo, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bju, i64 8 ; 2 uses
  %i.bly = load i8, ptr %i.blq, align 1, !tbaa !94 ; 2 uses
  %i.blz = sext i8 %i.bly to i64
  %i.bma = shl nsw i64 %i.blz, 49
  %i.bmb = and i64 %i.bma, 71494644084506624
  %i.bmc = or i64 %i.bmb, %i.blv                  ; 2 uses
  %i.bmd = icmp sgt i8 %i.bly, -1
  br i1 %i.bmd, label %bb.oo, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bju, i64 9 ; 2 uses
  %i.bmf = load i8, ptr %i.blx, align 1, !tbaa !94 ; 2 uses
  %i.bmg = sext i8 %i.bmf to i64
  %i.bmh = shl nsw i64 %i.bmg, 56
  %i.bmi = and i64 %i.bmh, 9151314442816847872
  %i.bmj = or i64 %i.bmi, %i.bmc                  ; 2 uses
  %i.bmk = icmp sgt i8 %i.bmf, -1
  br i1 %i.bmk, label %bb.oo, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bju, i64 10
  %i.bmm = load i8, ptr %i.bme, align 1, !tbaa !94 ; 2 uses
  %i.bmn = zext i8 %i.bmm to i64
  %i.bmo = shl i64 %i.bmn, 63
  %i.bmp = or i64 %i.bmo, %i.bmj
  %i.bmq = icmp sgt i8 %i.bmm, -1
  br i1 %i.bmq, label %bb.oo, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.bmr = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bmr, ptr noundef nonnull @.str.77)
          to label %.invoke11042 unwind label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bms = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bmr) #28
  br label %.body182

.lr.ph4799:                                       ; preds = %.preheader2458, %bb.om
  %indvars.iv7835 = phi i64 [ %indvars.iv.next7836, %bb.om ], [ 0, %.preheader2458 ] ; 3 uses
  %.1.i.i.i2804797 = phi i64 [ %i.bmz, %bb.om ], [ 0, %.preheader2458 ] ; 2 uses
  %.170.i.i.i2794796 = phi ptr [ %i.bmv, %bb.om ], [ %i.bju, %.preheader2458 ] ; 2 uses
  %i.bmt = load i8, ptr %.170.i.i.i2794796, align 1, !tbaa !94 ; 3 uses
  %i.bmu = icmp slt i8 %i.bmt, 0
  %i.bmv = getelementptr inbounds nuw i8, ptr %.170.i.i.i2794796, i64 1 ; 3 uses
  br i1 %i.bmu, label %bb.om, label %.critedge.i.i.i283

bb.om:                                            ; preds = %.lr.ph4799
  %i.bmw = and i8 %i.bmt, 127
  %i.bmx = zext nneg i8 %i.bmw to i64
  %i.bmy = shl i64 %i.bmx, %indvars.iv7835
  %i.bmz = or i64 %i.bmy, %.1.i.i.i2804797
  %indvars.iv.next7836 = add nuw nsw i64 %indvars.iv7835, 7
  %.not.i.i.i282 = icmp eq ptr %i.bmv, %i.bjy
  br i1 %.not.i.i.i282, label %.preheader2458._crit_edge, label %.lr.ph4799, !llvm.loop !46

.preheader2458._crit_edge:                        ; preds = %.preheader2458, %bb.om
  %i.bna = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bna, ptr noundef nonnull @.str.78)
          to label %.invoke11042 unwind label %bb.on

bb.on:                                            ; preds = %.preheader2458._crit_edge
  %i.bnb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bna) #28
  br label %.body182

.critedge.i.i.i283:                               ; preds = %.lr.ph4799
  %i.bnc = zext nneg i8 %i.bmt to i64
  %i.bnd = shl i64 %i.bnc, %indvars.iv7835
  %i.bne = or i64 %i.bnd, %.1.i.i.i2804797
  br label %bb.oo

bb.oo:                                            ; preds = %.critedge.i.i.i283, %bb.oj, %bb.oi, %bb.oh, %bb.og, %bb.of, %bb.oe, %bb.od, %bb.oc, %bb.ob
  %.271.i.i.i284 = phi ptr [ %i.bmv, %.critedge.i.i.i283 ], [ %i.bml, %bb.oj ], [ %i.bkh, %bb.ob ], [ %i.bko, %bb.oc ], [ %i.bkv, %bb.od ], [ %i.blc, %bb.oe ], [ %i.blj, %bb.of ], [ %i.blq, %bb.og ], [ %i.blx, %bb.oh ], [ %i.bme, %bb.oi ]
  %.2.i.i.i285 = phi i64 [ %i.bne, %.critedge.i.i.i283 ], [ %i.bmp, %bb.oj ], [ %i.bkm, %bb.ob ], [ %i.bkt, %bb.oc ], [ %i.bla, %bb.od ], [ %i.blh, %bb.oe ], [ %i.blo, %bb.of ], [ %i.blv, %bb.og ], [ %i.bmc, %bb.oh ], [ %i.bmj, %bb.oi ]
  %i.bnf = ptrtoint ptr %.271.i.i.i284 to i64
  %i.bng = sub i64 %i.bnf, %i.bkc
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i: ; preds = %bb.oo, %bb.nz
  %.01852 = phi i64 [ 1, %bb.nz ], [ %i.bng, %bb.oo ] ; 2 uses
  %.072.i.i.i286 = phi i64 [ %i.bkb, %bb.nz ], [ %.2.i.i.i285, %bb.oo ] ; 7 uses
  %i.bnh = add i64 %.072.i.i.i286, %.01852        ; 6 uses
  %i.bni = icmp ult i64 %i.bjs, %i.bnh
  br i1 %i.bni, label %bb.op, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, !prof !169

bb.op:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i
  %i.bnj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bnj, ptr noundef nonnull @.str.89)
          to label %.invoke11042 unwind label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bnk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bnj) #28
  br label %.body182

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i
  %i.bnl = load ptr, ptr %i.bjx, align 8, !tbaa !95 ; 2 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bjx, i64 16 ; 2 uses
  %i.bnn = icmp eq ptr %i.bnl, %i.bnm
  br i1 %i.bnn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i994, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i
  %i.bno = load i64, ptr %i.bnm, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i994

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i994: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993
  %i.bnp = phi i64 [ %i.bno, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i993 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i ]
  %i.bnq = icmp ugt i64 %.072.i.i.i286, %i.bnp
  br i1 %i.bnq, label %bb.or, label %.noexc306

bb.or:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i994
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bjx, i64 noundef %.072.i.i.i286)
          to label %.noexc997 unwind label %.loopexit.split-lp2432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc997:                                        ; preds = %bb.or
  %.pre.i995 = load ptr, ptr %i.bjx, align 8, !tbaa !95
  br label %.noexc306

.noexc306:                                        ; preds = %.noexc997, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i994
  %i.bnr = phi ptr [ %.pre.i995, %.noexc997 ], [ %i.bnl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i994 ]
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bjx, i64 8
  store i64 %.072.i.i.i286, ptr %i.bns, align 8, !tbaa !93
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bnr, i64 %.072.i.i.i286
  store i8 0, ptr %i.bnt, align 1, !tbaa !94
  %i.bnu = load ptr, ptr %i.bjx, align 8, !tbaa !95
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnu, i64 %.072.i.i.i286
  store i8 0, ptr %i.bnv, align 1, !tbaa !94
  %i.bnw = load ptr, ptr %i.bjx, align 8, !tbaa !95
  %i.bnx = load ptr, ptr %i.wc, align 8, !tbaa !439
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %.01852
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bnw, ptr align 1 %i.bny, i64 %.072.i.i.i286, i1 false)
  %i.bnz = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.boa = icmp ugt i64 %i.bnh, %i.bnz
  br i1 %i.boa, label %.noexc184._crit_edge.invoke, label %.noexc307

.noexc307:                                        ; preds = %.noexc306
  %i.bob = sub nuw i64 %i.bnz, %i.bnh             ; 2 uses
  %i.boc = load ptr, ptr %i.wc, align 8, !tbaa !439 ; 2 uses
  %i.bod = getelementptr inbounds nuw i8, ptr %i.boc, i64 %i.bnh ; 14 uses
  store i64 %i.bob, ptr %17, align 8, !tbaa !249
  store ptr %i.bod, ptr %i.wc, align 8, !tbaa !363
  %i.boe = icmp eq i64 %i.bnz, %i.bnh
  br i1 %i.boe, label %.critedge.i, label %bb.os

bb.os:                                            ; preds = %.noexc307
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boc, i64 %i.bnz
  %i.bog = load i8, ptr %i.bod, align 1, !tbaa !94 ; 3 uses
  %i.boh = icmp sgt i8 %i.bog, -1
  br i1 %i.boh, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  %i.boi = zext nneg i8 %i.bog to i64
  br label %.noexc193

bb.ou:                                            ; preds = %bb.os
  %i.boj = ptrtoint ptr %i.bod to i64
  %i.bok = icmp ugt i64 %i.bob, 9
  br i1 %i.bok, label %bb.ov, label %.lr.ph4805, !prof !257

bb.ov:                                            ; preds = %bb.ou
  %i.bol = and i8 %i.bog, 127
  %i.bom = zext nneg i8 %i.bol to i64
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bod, i64 1
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bod, i64 2 ; 2 uses
  %i.bop = load i8, ptr %i.bon, align 1, !tbaa !94 ; 2 uses
  %i.boq = sext i8 %i.bop to i64
  %i.bor = shl nsw i64 %i.boq, 7
  %i.bos = and i64 %i.bor, 16256
  %i.bot = or disjoint i64 %i.bos, %i.bom         ; 2 uses
  %i.bou = icmp sgt i8 %i.bop, -1
  br i1 %i.bou, label %bb.pi, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bod, i64 3 ; 2 uses
  %i.bow = load i8, ptr %i.boo, align 1, !tbaa !94 ; 2 uses
  %i.box = sext i8 %i.bow to i64
  %i.boy = shl nsw i64 %i.box, 14
  %i.boz = and i64 %i.boy, 2080768
  %i.bpa = or disjoint i64 %i.boz, %i.bot         ; 2 uses
  %i.bpb = icmp sgt i8 %i.bow, -1
  br i1 %i.bpb, label %bb.pi, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bod, i64 4 ; 2 uses
  %i.bpd = load i8, ptr %i.bov, align 1, !tbaa !94 ; 2 uses
  %i.bpe = sext i8 %i.bpd to i64
  %i.bpf = shl nsw i64 %i.bpe, 21
  %i.bpg = and i64 %i.bpf, 266338304
  %i.bph = or disjoint i64 %i.bpg, %i.bpa         ; 2 uses
  %i.bpi = icmp sgt i8 %i.bpd, -1
  br i1 %i.bpi, label %bb.pi, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bod, i64 5 ; 2 uses
  %i.bpk = load i8, ptr %i.bpc, align 1, !tbaa !94 ; 2 uses
  %i.bpl = sext i8 %i.bpk to i64
  %i.bpm = shl nsw i64 %i.bpl, 28
  %i.bpn = and i64 %i.bpm, 34091302912
  %i.bpo = or disjoint i64 %i.bpn, %i.bph         ; 6 uses
  %i.bpp = icmp sgt i8 %i.bpk, -1
  br i1 %i.bpp, label %bb.pi, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bod, i64 6 ; 2 uses
  %i.bpr = load i8, ptr %i.bpj, align 1, !tbaa !94
  %i.bps = icmp sgt i8 %i.bpr, -1
  br i1 %i.bps, label %bb.pi, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bod, i64 7 ; 2 uses
  %i.bpu = load i8, ptr %i.bpq, align 1, !tbaa !94
  %i.bpv = icmp sgt i8 %i.bpu, -1
  br i1 %i.bpv, label %bb.pi, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bod, i64 8 ; 2 uses
  %i.bpx = load i8, ptr %i.bpt, align 1, !tbaa !94
  %i.bpy = icmp sgt i8 %i.bpx, -1
  br i1 %i.bpy, label %bb.pi, label %bb.pc
end_hunk_2
begin_hunk_3_@_ZN16struct_pb_sample11deserializeIN9pb_sample7MonsterES2_EEv10SampleTypeRT_:bb.a
  %i.bqf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bqf, ptr noundef nonnull @.str.77)
          to label %.invoke11042 unwind label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.bqg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bqf) #28
  br label %.body182

.lr.ph4805:                                       ; preds = %bb.ou, %bb.pg
  %indvars.iv7838 = phi i64 [ %indvars.iv.next7839, %bb.pg ], [ 0, %bb.ou ] ; 3 uses
  %.1.i.i2894803 = phi i64 [ %i.bqn, %bb.pg ], [ 0, %bb.ou ] ; 2 uses
  %.170.i.i2884802 = phi ptr [ %i.bqj, %bb.pg ], [ %i.bod, %bb.ou ] ; 2 uses
  %i.bqh = load i8, ptr %.170.i.i2884802, align 1, !tbaa !94 ; 3 uses
  %i.bqi = icmp slt i8 %i.bqh, 0
  %i.bqj = getelementptr inbounds nuw i8, ptr %.170.i.i2884802, i64 1 ; 3 uses
  br i1 %i.bqi, label %bb.pg, label %.critedge.i.i292

bb.pg:                                            ; preds = %.lr.ph4805
  %i.bqk = and i8 %i.bqh, 127
  %i.bql = zext nneg i8 %i.bqk to i64
  %i.bqm = shl i64 %i.bql, %indvars.iv7838
  %i.bqn = or i64 %i.bqm, %.1.i.i2894803
  %indvars.iv.next7839 = add nuw nsw i64 %indvars.iv7838, 7
  %.not.i.i291 = icmp eq ptr %i.bqj, %i.bof
  br i1 %.not.i.i291, label %.preheader2457._crit_edge, label %.lr.ph4805, !llvm.loop !46

.preheader2457._crit_edge:                        ; preds = %bb.pg
  %i.bqo = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bqo, ptr noundef nonnull @.str.78)
          to label %.invoke11042 unwind label %bb.ph

bb.ph:                                            ; preds = %.preheader2457._crit_edge
  %i.bqp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bqo) #28
  br label %.body182

.critedge.i.i292:                                 ; preds = %.lr.ph4805
  %i.bqq = zext nneg i8 %i.bqh to i64
  %i.bqr = shl i64 %i.bqq, %indvars.iv7838
  %i.bqs = or i64 %i.bqr, %.1.i.i2894803
  br label %bb.pi

bb.pi:                                            ; preds = %.critedge.i.i292, %bb.pd, %bb.pc, %bb.pb, %bb.pa, %bb.oz, %bb.oy, %bb.ox, %bb.ow, %bb.ov
  %.271.i.i293 = phi ptr [ %i.bqj, %.critedge.i.i292 ], [ %i.bqc, %bb.pd ], [ %i.boo, %bb.ov ], [ %i.bov, %bb.ow ], [ %i.bpc, %bb.ox ], [ %i.bpj, %bb.oy ], [ %i.bpq, %bb.oz ], [ %i.bpt, %bb.pa ], [ %i.bpw, %bb.pb ], [ %i.bpz, %bb.pc ]
  %.2.i.i294 = phi i64 [ %i.bqs, %.critedge.i.i292 ], [ %i.bpo, %bb.pd ], [ %i.bot, %bb.ov ], [ %i.bpa, %bb.ow ], [ %i.bph, %bb.ox ], [ %i.bpo, %bb.oy ], [ %i.bpo, %bb.oz ], [ %i.bpo, %bb.pa ], [ %i.bpo, %bb.pb ], [ %i.bpo, %bb.pc ]
  %i.bqt = ptrtoint ptr %.271.i.i293 to i64
  %i.bqu = sub i64 %i.bqt, %i.boj
  br label %.noexc193

.noexc193:                                        ; preds = %bb.ot, %bb.pi
  %.92212 = phi i64 [ 1, %bb.ot ], [ %i.bqu, %bb.pi ]
  %.072.i.i296 = phi i64 [ %i.boi, %bb.ot ], [ %.2.i.i294, %bb.pi ]
  %i.bqv = trunc i64 %.072.i.i296 to i32          ; 2 uses
  %i.bqw = and i32 %i.bqv, 7
  %i.bqx = lshr i32 %i.bqv, 3                     ; 2 uses
  store i32 %i.bqx, ptr %i.e, align 4, !tbaa !164
  br label %.noexc193.thread2278

.noexc193.thread2278:                             ; preds = %.noexc192.thread2264, %.noexc193
  %.pr2301 = phi i32 [ %i.bqx, %.noexc193 ], [ %.pr2287, %.noexc192.thread2264 ] ; 2 uses
  %.421982285 = phi i32 [ %i.bqw, %.noexc193 ], [ %.321972271, %.noexc192.thread2264 ] ; 2 uses
  %.102284 = phi i64 [ %.92212, %.noexc193 ], [ %.822112270, %.noexc192.thread2264 ] ; 6 uses
  %.sroa.02.0.copyload.i3102286 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 96), align 8, !tbaa !249
  %.not.i311 = icmp eq i32 %.pr2301, 5
  br i1 %.not.i311, label %bb.pj, label %.noexc194.thread2292

bb.pj:                                            ; preds = %.noexc193.thread2278
  %i.bqy = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.bqz = icmp ugt i64 %.102284, %i.bqy
  br i1 %i.bqz, label %.noexc184._crit_edge.invoke, label %.noexc336

.noexc336:                                        ; preds = %bb.pj
  %i.bra = sub nuw i64 %i.bqy, %.102284           ; 3 uses
  %i.brb = load ptr, ptr %i.wc, align 8, !tbaa !439 ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 %.102284 ; 14 uses
  store i64 %i.bra, ptr %17, align 8, !tbaa !249
  store ptr %i.brc, ptr %i.wc, align 8, !tbaa !363
  %.not4.i313 = icmp eq i32 %.421982285, 2
  br i1 %.not4.i313, label %bb.pm, label %bb.pk, !prof !257

bb.pk:                                            ; preds = %.noexc336
  %i.brd = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.brd, ptr noundef nonnull @.str.79)
          to label %.invoke11042 unwind label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.bre = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.brd) #28
  br label %.body182

bb.pm:                                            ; preds = %.noexc336
  %i.brf = getelementptr inbounds nuw i8, ptr %24, i64 %.sroa.02.0.copyload.i3102286 ; 7 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brb, i64 %i.bqy
  %i.brh = load i8, ptr %i.brc, align 1, !tbaa !94 ; 3 uses
  %i.bri = icmp sgt i8 %i.brh, -1
  br i1 %i.bri, label %bb.pn, label %bb.po

bb.pn:                                            ; preds = %bb.pm
  %i.brj = zext nneg i8 %i.brh to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i321

bb.po:                                            ; preds = %bb.pm
  %i.brk = ptrtoint ptr %i.brc to i64
  %i.brl = icmp ugt i64 %i.bra, 9
  br i1 %i.brl, label %bb.pp, label %.preheader2456, !prof !257

.preheader2456:                                   ; preds = %bb.po
  %.not.i.i.i3174807 = icmp samesign eq i64 %.102284, %i.bqy
  br i1 %.not.i.i.i3174807, label %.preheader2456._crit_edge, label %.lr.ph4811

bb.pp:                                            ; preds = %bb.po
  %i.brm = and i8 %i.brh, 127
  %i.brn = zext nneg i8 %i.brm to i64
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brc, i64 1
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brc, i64 2 ; 2 uses
  %i.brq = load i8, ptr %i.bro, align 1, !tbaa !94 ; 2 uses
  %i.brr = sext i8 %i.brq to i64
  %i.brs = shl nsw i64 %i.brr, 7
  %i.brt = and i64 %i.brs, 16256
  %i.bru = or disjoint i64 %i.brt, %i.brn         ; 2 uses
  %i.brv = icmp sgt i8 %i.brq, -1
  br i1 %i.brv, label %bb.qc, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brc, i64 3 ; 2 uses
  %i.brx = load i8, ptr %i.brp, align 1, !tbaa !94 ; 2 uses
  %i.bry = sext i8 %i.brx to i64
  %i.brz = shl nsw i64 %i.bry, 14
  %i.bsa = and i64 %i.brz, 2080768
  %i.bsb = or disjoint i64 %i.bsa, %i.bru         ; 2 uses
  %i.bsc = icmp sgt i8 %i.brx, -1
  br i1 %i.bsc, label %bb.qc, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.brc, i64 4 ; 2 uses
  %i.bse = load i8, ptr %i.brw, align 1, !tbaa !94 ; 2 uses
  %i.bsf = sext i8 %i.bse to i64
  %i.bsg = shl nsw i64 %i.bsf, 21
  %i.bsh = and i64 %i.bsg, 266338304
  %i.bsi = or disjoint i64 %i.bsh, %i.bsb         ; 2 uses
  %i.bsj = icmp sgt i8 %i.bse, -1
  br i1 %i.bsj, label %bb.qc, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.brc, i64 5 ; 2 uses
  %i.bsl = load i8, ptr %i.bsd, align 1, !tbaa !94 ; 2 uses
  %i.bsm = sext i8 %i.bsl to i64
  %i.bsn = shl nsw i64 %i.bsm, 28
  %i.bso = and i64 %i.bsn, 34091302912
  %i.bsp = or disjoint i64 %i.bso, %i.bsi         ; 2 uses
  %i.bsq = icmp sgt i8 %i.bsl, -1
  br i1 %i.bsq, label %bb.qc, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.brc, i64 6 ; 2 uses
  %i.bss = load i8, ptr %i.bsk, align 1, !tbaa !94 ; 2 uses
  %i.bst = sext i8 %i.bss to i64
  %i.bsu = shl nsw i64 %i.bst, 35
  %i.bsv = and i64 %i.bsu, 4363686772736
  %i.bsw = or disjoint i64 %i.bsv, %i.bsp         ; 2 uses
  %i.bsx = icmp sgt i8 %i.bss, -1
  br i1 %i.bsx, label %bb.qc, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.brc, i64 7 ; 2 uses
  %i.bsz = load i8, ptr %i.bsr, align 1, !tbaa !94 ; 2 uses
  %i.bta = sext i8 %i.bsz to i64
  %i.btb = shl nsw i64 %i.bta, 42
  %i.btc = and i64 %i.btb, 558551906910208
  %i.btd = or i64 %i.btc, %i.bsw                  ; 2 uses
  %i.bte = icmp sgt i8 %i.bsz, -1
  br i1 %i.bte, label %bb.qc, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.btf = getelementptr inbounds nuw i8, ptr %i.brc, i64 8 ; 2 uses
  %i.btg = load i8, ptr %i.bsy, align 1, !tbaa !94 ; 2 uses
  %i.bth = sext i8 %i.btg to i64
  %i.bti = shl nsw i64 %i.bth, 49
  %i.btj = and i64 %i.bti, 71494644084506624
  %i.btk = or i64 %i.btj, %i.btd                  ; 2 uses
  %i.btl = icmp sgt i8 %i.btg, -1
  br i1 %i.btl, label %bb.qc, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.btm = getelementptr inbounds nuw i8, ptr %i.brc, i64 9 ; 2 uses
  %i.btn = load i8, ptr %i.btf, align 1, !tbaa !94 ; 2 uses
  %i.bto = sext i8 %i.btn to i64
  %i.btp = shl nsw i64 %i.bto, 56
  %i.btq = and i64 %i.btp, 9151314442816847872
  %i.btr = or i64 %i.btq, %i.btk                  ; 2 uses
  %i.bts = icmp sgt i8 %i.btn, -1
  br i1 %i.bts, label %bb.qc, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.btt = getelementptr inbounds nuw i8, ptr %i.brc, i64 10
  %i.btu = load i8, ptr %i.btm, align 1, !tbaa !94 ; 2 uses
  %i.btv = zext i8 %i.btu to i64
  %i.btw = shl i64 %i.btv, 63
  %i.btx = or i64 %i.btw, %i.btr
  %i.bty = icmp sgt i8 %i.btu, -1
  br i1 %i.bty, label %bb.qc, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.btz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.btz, ptr noundef nonnull @.str.77)
          to label %.invoke11042 unwind label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.bua = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.btz) #28
  br label %.body182

.lr.ph4811:                                       ; preds = %.preheader2456, %bb.qa
  %indvars.iv7841 = phi i64 [ %indvars.iv.next7842, %bb.qa ], [ 0, %.preheader2456 ] ; 3 uses
  %.1.i.i.i3154809 = phi i64 [ %i.buh, %bb.qa ], [ 0, %.preheader2456 ] ; 2 uses
  %.170.i.i.i3144808 = phi ptr [ %i.bud, %bb.qa ], [ %i.brc, %.preheader2456 ] ; 2 uses
  %i.bub = load i8, ptr %.170.i.i.i3144808, align 1, !tbaa !94 ; 3 uses
  %i.buc = icmp slt i8 %i.bub, 0
  %i.bud = getelementptr inbounds nuw i8, ptr %.170.i.i.i3144808, i64 1 ; 3 uses
  br i1 %i.buc, label %bb.qa, label %.critedge.i.i.i318

bb.qa:                                            ; preds = %.lr.ph4811
  %i.bue = and i8 %i.bub, 127
  %i.buf = zext nneg i8 %i.bue to i64
  %i.bug = shl i64 %i.buf, %indvars.iv7841
  %i.buh = or i64 %i.bug, %.1.i.i.i3154809
  %indvars.iv.next7842 = add nuw nsw i64 %indvars.iv7841, 7
  %.not.i.i.i317 = icmp eq ptr %i.bud, %i.brg
  br i1 %.not.i.i.i317, label %.preheader2456._crit_edge, label %.lr.ph4811, !llvm.loop !46

.preheader2456._crit_edge:                        ; preds = %.preheader2456, %bb.qa
  %i.bui = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bui, ptr noundef nonnull @.str.78)
          to label %.invoke11042 unwind label %bb.qb

bb.qb:                                            ; preds = %.preheader2456._crit_edge
  %i.buj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bui) #28
  br label %.body182

.critedge.i.i.i318:                               ; preds = %.lr.ph4811
  %i.buk = zext nneg i8 %i.bub to i64
  %i.bul = shl i64 %i.buk, %indvars.iv7841
  %i.bum = or i64 %i.bul, %.1.i.i.i3154809
  br label %bb.qc

bb.qc:                                            ; preds = %.critedge.i.i.i318, %bb.px, %bb.pw, %bb.pv, %bb.pu, %bb.pt, %bb.ps, %bb.pr, %bb.pq, %bb.pp
  %.271.i.i.i319 = phi ptr [ %i.bud, %.critedge.i.i.i318 ], [ %i.btt, %bb.px ], [ %i.brp, %bb.pp ], [ %i.brw, %bb.pq ], [ %i.bsd, %bb.pr ], [ %i.bsk, %bb.ps ], [ %i.bsr, %bb.pt ], [ %i.bsy, %bb.pu ], [ %i.btf, %bb.pv ], [ %i.btm, %bb.pw ]
  %.2.i.i.i320 = phi i64 [ %i.bum, %.critedge.i.i.i318 ], [ %i.btx, %bb.px ], [ %i.bru, %bb.pp ], [ %i.bsb, %bb.pq ], [ %i.bsi, %bb.pr ], [ %i.bsp, %bb.ps ], [ %i.bsw, %bb.pt ], [ %i.btd, %bb.pu ], [ %i.btk, %bb.pv ], [ %i.btr, %bb.pw ]
  %i.bun = ptrtoint ptr %.271.i.i.i319 to i64
  %i.buo = sub i64 %i.bun, %i.brk
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i321

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i321: ; preds = %bb.qc, %bb.pn
  %.01853 = phi i64 [ 1, %bb.pn ], [ %i.buo, %bb.qc ] ; 2 uses
  %.072.i.i.i322 = phi i64 [ %i.brj, %bb.pn ], [ %.2.i.i.i320, %bb.qc ] ; 7 uses
  %i.bup = add i64 %.072.i.i.i322, %.01853        ; 6 uses
  %i.buq = icmp ult i64 %i.bra, %i.bup
  br i1 %i.buq, label %bb.qd, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i323, !prof !169

bb.qd:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i321
  %i.bur = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bur, ptr noundef nonnull @.str.89)
          to label %.invoke11042 unwind label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.bus = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bur) #28
  br label %.body182

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i323: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i321
  %i.but = load ptr, ptr %i.brf, align 8, !tbaa !95 ; 2 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %i.brf, i64 16 ; 2 uses
  %i.buv = icmp eq ptr %i.but, %i.buu
  br i1 %i.buv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1010, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1009

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1009: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i323
  %i.buw = load i64, ptr %i.buu, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1010

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1010: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1009
  %i.bux = phi i64 [ %i.buw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1009 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i323 ]
  %i.buy = icmp ugt i64 %.072.i.i.i322, %i.bux
  br i1 %i.buy, label %bb.qf, label %.noexc343

bb.qf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1010
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.brf, i64 noundef %.072.i.i.i322)
          to label %.noexc1013 unwind label %.loopexit.split-lp2432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1013:                                       ; preds = %bb.qf
  %.pre.i1011 = load ptr, ptr %i.brf, align 8, !tbaa !95
  br label %.noexc343

.noexc343:                                        ; preds = %.noexc1013, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1010
  %i.buz = phi ptr [ %.pre.i1011, %.noexc1013 ], [ %i.but, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1010 ]
  %i.bva = getelementptr inbounds nuw i8, ptr %i.brf, i64 8
  store i64 %.072.i.i.i322, ptr %i.bva, align 8, !tbaa !93
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.buz, i64 %.072.i.i.i322
  store i8 0, ptr %i.bvb, align 1, !tbaa !94
  %i.bvc = load ptr, ptr %i.brf, align 8, !tbaa !95
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 %.072.i.i.i322
  store i8 0, ptr %i.bvd, align 1, !tbaa !94
  %i.bve = load ptr, ptr %i.brf, align 8, !tbaa !95
  %i.bvf = load ptr, ptr %i.wc, align 8, !tbaa !439
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 %.01853
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bve, ptr align 1 %i.bvg, i64 %.072.i.i.i322, i1 false)
  %i.bvh = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.bvi = icmp ugt i64 %i.bup, %i.bvh
  br i1 %i.bvi, label %.noexc184._crit_edge.invoke, label %.noexc344

.noexc344:                                        ; preds = %.noexc343
  %i.bvj = sub nuw i64 %i.bvh, %i.bup             ; 2 uses
  %i.bvk = load ptr, ptr %i.wc, align 8, !tbaa !439 ; 2 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 %i.bup ; 14 uses
  store i64 %i.bvj, ptr %17, align 8, !tbaa !249
  store ptr %i.bvl, ptr %i.wc, align 8, !tbaa !363
  %i.bvm = icmp eq i64 %i.bvh, %i.bup
  br i1 %i.bvm, label %.critedge.i, label %bb.qg

bb.qg:                                            ; preds = %.noexc344
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvk, i64 %i.bvh
  %i.bvo = load i8, ptr %i.bvl, align 1, !tbaa !94 ; 3 uses
  %i.bvp = icmp sgt i8 %i.bvo, -1
  br i1 %i.bvp, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  %i.bvq = zext nneg i8 %i.bvo to i64
  br label %.noexc194

bb.qi:                                            ; preds = %bb.qg
  %i.bvr = ptrtoint ptr %i.bvl to i64
  %i.bvs = icmp ugt i64 %i.bvj, 9
  br i1 %i.bvs, label %bb.qj, label %.lr.ph4817, !prof !257

bb.qj:                                            ; preds = %bb.qi
  %i.bvt = and i8 %i.bvo, 127
  %i.bvu = zext nneg i8 %i.bvt to i64
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvl, i64 1
  %i.bvw = getelementptr inbounds nuw i8, ptr %i.bvl, i64 2 ; 2 uses
  %i.bvx = load i8, ptr %i.bvv, align 1, !tbaa !94 ; 2 uses
  %i.bvy = sext i8 %i.bvx to i64
  %i.bvz = shl nsw i64 %i.bvy, 7
  %i.bwa = and i64 %i.bvz, 16256
  %i.bwb = or disjoint i64 %i.bwa, %i.bvu         ; 2 uses
  %i.bwc = icmp sgt i8 %i.bvx, -1
  br i1 %i.bwc, label %bb.qw, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.bwd = getelementptr inbounds nuw i8, ptr %i.bvl, i64 3 ; 2 uses
  %i.bwe = load i8, ptr %i.bvw, align 1, !tbaa !94 ; 2 uses
  %i.bwf = sext i8 %i.bwe to i64
  %i.bwg = shl nsw i64 %i.bwf, 14
  %i.bwh = and i64 %i.bwg, 2080768
  %i.bwi = or disjoint i64 %i.bwh, %i.bwb         ; 2 uses
  %i.bwj = icmp sgt i8 %i.bwe, -1
  br i1 %i.bwj, label %bb.qw, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bvl, i64 4 ; 2 uses
  %i.bwl = load i8, ptr %i.bwd, align 1, !tbaa !94 ; 2 uses
  %i.bwm = sext i8 %i.bwl to i64
  %i.bwn = shl nsw i64 %i.bwm, 21
  %i.bwo = and i64 %i.bwn, 266338304
  %i.bwp = or disjoint i64 %i.bwo, %i.bwi         ; 2 uses
  %i.bwq = icmp sgt i8 %i.bwl, -1
  br i1 %i.bwq, label %bb.qw, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bvl, i64 5 ; 2 uses
  %i.bws = load i8, ptr %i.bwk, align 1, !tbaa !94 ; 2 uses
  %i.bwt = sext i8 %i.bws to i64
  %i.bwu = shl nsw i64 %i.bwt, 28
  %i.bwv = and i64 %i.bwu, 34091302912
  %i.bww = or disjoint i64 %i.bwv, %i.bwp         ; 6 uses
  %i.bwx = icmp sgt i8 %i.bws, -1
  br i1 %i.bwx, label %bb.qw, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bvl, i64 6 ; 2 uses
  %i.bwz = load i8, ptr %i.bwr, align 1, !tbaa !94
  %i.bxa = icmp sgt i8 %i.bwz, -1
  br i1 %i.bxa, label %bb.qw, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bvl, i64 7 ; 2 uses
  %i.bxc = load i8, ptr %i.bwy, align 1, !tbaa !94
  %i.bxd = icmp sgt i8 %i.bxc, -1
  br i1 %i.bxd, label %bb.qw, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bvl, i64 8 ; 2 uses
  %i.bxf = load i8, ptr %i.bxb, align 1, !tbaa !94
  %i.bxg = icmp sgt i8 %i.bxf, -1
  br i1 %i.bxg, label %bb.qw, label %bb.qq
end_hunk_3
begin_hunk_4_@_ZN16struct_pb_sample11deserializeIN9pb_sample7MonsterES2_EEv10SampleTypeRT_:bb.a
  %i.cji = load i8, ptr %.170.i12.i6734844, align 1, !tbaa !94 ; 3 uses
  %i.cjj = icmp slt i8 %i.cji, 0
  %i.cjk = getelementptr inbounds nuw i8, ptr %.170.i12.i6734844, i64 1 ; 3 uses
  br i1 %i.cjj, label %bb.tw, label %.critedge.i16.i677

bb.tw:                                            ; preds = %.lr.ph4847
  %i.cjl = and i8 %i.cji, 127
  %i.cjm = zext nneg i8 %i.cjl to i64
  %i.cjn = shl i64 %i.cjm, %indvars.iv7856
  %i.cjo = or i64 %i.cjn, %.1.i13.i6744845
  %indvars.iv.next7857 = add nuw nsw i64 %indvars.iv7856, 7
  %.not.i15.i676 = icmp eq ptr %i.cjk, %i.chg
  br i1 %.not.i15.i676, label %.preheader2428._crit_edge, label %.lr.ph4847, !llvm.loop !46

.preheader2428._crit_edge:                        ; preds = %bb.tw
  %i.cjp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cjp, ptr noundef nonnull @.str.78)
          to label %.invoke11034 unwind label %bb.tx

bb.tx:                                            ; preds = %.preheader2428._crit_edge
  %i.cjq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cjp) #28
  br label %.body.i

.critedge.i16.i677:                               ; preds = %.lr.ph4847
  %i.cjr = zext nneg i8 %i.cji to i64
  %i.cjs = shl i64 %i.cjr, %indvars.iv7856
  %i.cjt = or i64 %i.cjs, %.1.i13.i6744845
  br label %bb.ty

bb.ty:                                            ; preds = %.critedge.i16.i677, %bb.tt, %bb.ts, %bb.tr, %bb.tq, %bb.tp, %bb.to, %bb.tn, %bb.tm, %bb.tl
  %.271.i17.i678 = phi ptr [ %i.cjk, %.critedge.i16.i677 ], [ %i.cjd, %bb.tt ], [ %i.chp, %bb.tl ], [ %i.chw, %bb.tm ], [ %i.cid, %bb.tn ], [ %i.cik, %bb.to ], [ %i.cir, %bb.tp ], [ %i.ciu, %bb.tq ], [ %i.cix, %bb.tr ], [ %i.cja, %bb.ts ]
  %.2.i18.i679 = phi i64 [ %i.cjt, %.critedge.i16.i677 ], [ %i.cip, %bb.tt ], [ %i.chu, %bb.tl ], [ %i.cib, %bb.tm ], [ %i.cii, %bb.tn ], [ %i.cip, %bb.to ], [ %i.cip, %bb.tp ], [ %i.cip, %bb.tq ], [ %i.cip, %bb.tr ], [ %i.cip, %bb.ts ]
  %i.cju = ptrtoint ptr %.271.i17.i678 to i64
  %i.cjv = sub i64 %i.cju, %i.chk
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i680

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i680: ; preds = %bb.ty, %bb.tj
  %.02157 = phi i64 [ 1, %bb.tj ], [ %i.cjv, %bb.ty ] ; 6 uses
  %.072.i19.i681 = phi i64 [ %i.chj, %bb.tj ], [ %.2.i18.i679, %bb.ty ]
  %i.cjw = trunc i64 %.072.i19.i681 to i32        ; 2 uses
  %i.cjx = and i32 %i.cjw, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cjy = lshr i32 %i.cjw, 3
  store i32 %i.cjy, ptr %i.b, align 4, !tbaa !164
  %i.cjz = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.cka = icmp eq i8 %i.cjz, 0
  br i1 %i.cka, label %bb.tz, label %bb.uc, !prof !173

bb.tz:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i680
  %i.ckb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i695 = icmp eq i32 %i.ckb, 0
  br i1 %.not.i695, label %bb.uc, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.ub unwind label %bb.xd

bb.ub:                                            ; preds = %bb.ua
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.uc

bb.uc:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i680, %bb.tz, %bb.ub
  %.sroa.02.0.copyload.i750 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.ckc = load i32, ptr %i.b, align 4, !tbaa !164 ; 2 uses
  %.not.i751 = icmp eq i32 %i.ckc, 1
  %.pre7932.pre = load i64, ptr %10, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i751, label %bb.ud, label %bb.vr

bb.ud:                                            ; preds = %bb.uc
  %i.ckd = icmp ugt i64 %.02157, %.pre7932.pre
  br i1 %i.ckd, label %.invoke, label %.noexc776

.noexc776:                                        ; preds = %bb.ud
  %i.cke = sub nuw i64 %.pre7932.pre, %.02157     ; 3 uses
  %i.ckf = load ptr, ptr %i.wl, align 8, !tbaa !439 ; 2 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.ckf, i64 %.02157 ; 14 uses
  store i64 %i.cke, ptr %10, align 8, !tbaa !249
  store ptr %i.ckg, ptr %i.wl, align 8, !tbaa !363
  %.not4.i753 = icmp eq i32 %i.cjx, 2
  br i1 %.not4.i753, label %bb.ug, label %bb.ue, !prof !257

bb.ue:                                            ; preds = %.noexc776
  %i.ckh = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ckh, ptr noundef nonnull @.str.79)
          to label %.invoke11034 unwind label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  %i.cki = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ckh) #28
  br label %.body.i

bb.ug:                                            ; preds = %.noexc776
  %i.ckj = getelementptr inbounds nuw i8, ptr %14, i64 %.sroa.02.0.copyload.i750 ; 7 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckf, i64 %.pre7932.pre
  %i.ckl = load i8, ptr %i.ckg, align 1, !tbaa !94 ; 3 uses
  %i.ckm = icmp sgt i8 %i.ckl, -1
  br i1 %i.ckm, label %bb.uh, label %bb.ui

bb.uh:                                            ; preds = %bb.ug
  %i.ckn = zext nneg i8 %i.ckl to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i761

bb.ui:                                            ; preds = %bb.ug
  %i.cko = ptrtoint ptr %i.ckg to i64
  %i.ckp = icmp ugt i64 %i.cke, 9
  br i1 %i.ckp, label %bb.uj, label %.preheader2427, !prof !257

.preheader2427:                                   ; preds = %bb.ui
  %.not.i.i.i7574855 = icmp samesign eq i64 %.02157, %.pre7932.pre
  br i1 %.not.i.i.i7574855, label %.preheader2427._crit_edge, label %.lr.ph4859

bb.uj:                                            ; preds = %bb.ui
  %i.ckq = and i8 %i.ckl, 127
  %i.ckr = zext nneg i8 %i.ckq to i64
  %i.cks = getelementptr inbounds nuw i8, ptr %i.ckg, i64 1
  %i.ckt = getelementptr inbounds nuw i8, ptr %i.ckg, i64 2 ; 2 uses
  %i.cku = load i8, ptr %i.cks, align 1, !tbaa !94 ; 2 uses
  %i.ckv = sext i8 %i.cku to i64
  %i.ckw = shl nsw i64 %i.ckv, 7
  %i.ckx = and i64 %i.ckw, 16256
  %i.cky = or disjoint i64 %i.ckx, %i.ckr         ; 2 uses
  %i.ckz = icmp sgt i8 %i.cku, -1
  br i1 %i.ckz, label %bb.uw, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.cla = getelementptr inbounds nuw i8, ptr %i.ckg, i64 3 ; 2 uses
  %i.clb = load i8, ptr %i.ckt, align 1, !tbaa !94 ; 2 uses
  %i.clc = sext i8 %i.clb to i64
  %i.cld = shl nsw i64 %i.clc, 14
  %i.cle = and i64 %i.cld, 2080768
  %i.clf = or disjoint i64 %i.cle, %i.cky         ; 2 uses
  %i.clg = icmp sgt i8 %i.clb, -1
  br i1 %i.clg, label %bb.uw, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.clh = getelementptr inbounds nuw i8, ptr %i.ckg, i64 4 ; 2 uses
  %i.cli = load i8, ptr %i.cla, align 1, !tbaa !94 ; 2 uses
  %i.clj = sext i8 %i.cli to i64
  %i.clk = shl nsw i64 %i.clj, 21
  %i.cll = and i64 %i.clk, 266338304
  %i.clm = or disjoint i64 %i.cll, %i.clf         ; 2 uses
  %i.cln = icmp sgt i8 %i.cli, -1
  br i1 %i.cln, label %bb.uw, label %bb.um

bb.um:                                            ; preds = %bb.ul
  %i.clo = getelementptr inbounds nuw i8, ptr %i.ckg, i64 5 ; 2 uses
  %i.clp = load i8, ptr %i.clh, align 1, !tbaa !94 ; 2 uses
  %i.clq = sext i8 %i.clp to i64
  %i.clr = shl nsw i64 %i.clq, 28
  %i.cls = and i64 %i.clr, 34091302912
  %i.clt = or disjoint i64 %i.cls, %i.clm         ; 2 uses
  %i.clu = icmp sgt i8 %i.clp, -1
  br i1 %i.clu, label %bb.uw, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.clv = getelementptr inbounds nuw i8, ptr %i.ckg, i64 6 ; 2 uses
  %i.clw = load i8, ptr %i.clo, align 1, !tbaa !94 ; 2 uses
  %i.clx = sext i8 %i.clw to i64
  %i.cly = shl nsw i64 %i.clx, 35
  %i.clz = and i64 %i.cly, 4363686772736
  %i.cma = or disjoint i64 %i.clz, %i.clt         ; 2 uses
  %i.cmb = icmp sgt i8 %i.clw, -1
  br i1 %i.cmb, label %bb.uw, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.cmc = getelementptr inbounds nuw i8, ptr %i.ckg, i64 7 ; 2 uses
  %i.cmd = load i8, ptr %i.clv, align 1, !tbaa !94 ; 2 uses
  %i.cme = sext i8 %i.cmd to i64
  %i.cmf = shl nsw i64 %i.cme, 42
  %i.cmg = and i64 %i.cmf, 558551906910208
  %i.cmh = or i64 %i.cmg, %i.cma                  ; 2 uses
  %i.cmi = icmp sgt i8 %i.cmd, -1
  br i1 %i.cmi, label %bb.uw, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.cmj = getelementptr inbounds nuw i8, ptr %i.ckg, i64 8 ; 2 uses
  %i.cmk = load i8, ptr %i.cmc, align 1, !tbaa !94 ; 2 uses
  %i.cml = sext i8 %i.cmk to i64
  %i.cmm = shl nsw i64 %i.cml, 49
  %i.cmn = and i64 %i.cmm, 71494644084506624
  %i.cmo = or i64 %i.cmn, %i.cmh                  ; 2 uses
  %i.cmp = icmp sgt i8 %i.cmk, -1
  br i1 %i.cmp, label %bb.uw, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.ckg, i64 9 ; 2 uses
  %i.cmr = load i8, ptr %i.cmj, align 1, !tbaa !94 ; 2 uses
  %i.cms = sext i8 %i.cmr to i64
  %i.cmt = shl nsw i64 %i.cms, 56
  %i.cmu = and i64 %i.cmt, 9151314442816847872
  %i.cmv = or i64 %i.cmu, %i.cmo                  ; 2 uses
  %i.cmw = icmp sgt i8 %i.cmr, -1
  br i1 %i.cmw, label %bb.uw, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.ckg, i64 10
  %i.cmy = load i8, ptr %i.cmq, align 1, !tbaa !94 ; 2 uses
  %i.cmz = zext i8 %i.cmy to i64
  %i.cna = shl i64 %i.cmz, 63
  %i.cnb = or i64 %i.cna, %i.cmv
  %i.cnc = icmp sgt i8 %i.cmy, -1
  br i1 %i.cnc, label %bb.uw, label %bb.us

bb.us:                                            ; preds = %bb.ur
  %i.cnd = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cnd, ptr noundef nonnull @.str.77)
          to label %.invoke11034 unwind label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.cne = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cnd) #28
  br label %.body.i

.lr.ph4859:                                       ; preds = %.preheader2427, %bb.uu
  %indvars.iv7859 = phi i64 [ %indvars.iv.next7860, %bb.uu ], [ 0, %.preheader2427 ] ; 3 uses
  %.1.i.i.i7554857 = phi i64 [ %i.cnl, %bb.uu ], [ 0, %.preheader2427 ] ; 2 uses
  %.170.i.i.i7544856 = phi ptr [ %i.cnh, %bb.uu ], [ %i.ckg, %.preheader2427 ] ; 2 uses
  %i.cnf = load i8, ptr %.170.i.i.i7544856, align 1, !tbaa !94 ; 3 uses
  %i.cng = icmp slt i8 %i.cnf, 0
  %i.cnh = getelementptr inbounds nuw i8, ptr %.170.i.i.i7544856, i64 1 ; 3 uses
  br i1 %i.cng, label %bb.uu, label %.critedge.i.i.i758

bb.uu:                                            ; preds = %.lr.ph4859
  %i.cni = and i8 %i.cnf, 127
  %i.cnj = zext nneg i8 %i.cni to i64
  %i.cnk = shl i64 %i.cnj, %indvars.iv7859
  %i.cnl = or i64 %i.cnk, %.1.i.i.i7554857
  %indvars.iv.next7860 = add nuw nsw i64 %indvars.iv7859, 7
  %.not.i.i.i757 = icmp eq ptr %i.cnh, %i.ckk
  br i1 %.not.i.i.i757, label %.preheader2427._crit_edge, label %.lr.ph4859, !llvm.loop !46

.preheader2427._crit_edge:                        ; preds = %.preheader2427, %bb.uu
  %i.cnm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cnm, ptr noundef nonnull @.str.78)
          to label %.invoke11034 unwind label %bb.uv

bb.uv:                                            ; preds = %.preheader2427._crit_edge
  %i.cnn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cnm) #28
  br label %.body.i

.critedge.i.i.i758:                               ; preds = %.lr.ph4859
  %i.cno = zext nneg i8 %i.cnf to i64
  %i.cnp = shl i64 %i.cno, %indvars.iv7859
  %i.cnq = or i64 %i.cnp, %.1.i.i.i7554857
  br label %bb.uw

bb.uw:                                            ; preds = %.critedge.i.i.i758, %bb.ur, %bb.uq, %bb.up, %bb.uo, %bb.un, %bb.um, %bb.ul, %bb.uk, %bb.uj
  %.271.i.i.i759 = phi ptr [ %i.cnh, %.critedge.i.i.i758 ], [ %i.cmx, %bb.ur ], [ %i.ckt, %bb.uj ], [ %i.cla, %bb.uk ], [ %i.clh, %bb.ul ], [ %i.clo, %bb.um ], [ %i.clv, %bb.un ], [ %i.cmc, %bb.uo ], [ %i.cmj, %bb.up ], [ %i.cmq, %bb.uq ]
  %.2.i.i.i760 = phi i64 [ %i.cnq, %.critedge.i.i.i758 ], [ %i.cnb, %bb.ur ], [ %i.cky, %bb.uj ], [ %i.clf, %bb.uk ], [ %i.clm, %bb.ul ], [ %i.clt, %bb.um ], [ %i.cma, %bb.un ], [ %i.cmh, %bb.uo ], [ %i.cmo, %bb.up ], [ %i.cmv, %bb.uq ]
  %i.cnr = ptrtoint ptr %.271.i.i.i759 to i64
  %i.cns = sub i64 %i.cnr, %i.cko
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i761

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i761: ; preds = %bb.uw, %bb.uh
  %.01848 = phi i64 [ 1, %bb.uh ], [ %i.cns, %bb.uw ] ; 2 uses
  %.072.i.i.i762 = phi i64 [ %i.ckn, %bb.uh ], [ %.2.i.i.i760, %bb.uw ] ; 7 uses
  %i.cnt = add i64 %.072.i.i.i762, %.01848        ; 6 uses
  %i.cnu = icmp ult i64 %i.cke, %i.cnt
  br i1 %i.cnu, label %bb.ux, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i763, !prof !169

bb.ux:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i761
  %i.cnv = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cnv, ptr noundef nonnull @.str.89)
          to label %.invoke11034 unwind label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.cnw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cnv) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i763: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i761
  %i.cnx = load ptr, ptr %i.ckj, align 8, !tbaa !95 ; 2 uses
  %i.cny = getelementptr inbounds nuw i8, ptr %i.ckj, i64 16 ; 2 uses
  %i.cnz = icmp eq ptr %i.cnx, %i.cny
  br i1 %i.cnz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1052, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i763
  %i.coa = load i64, ptr %i.cny, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1052

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1052: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i763, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051
  %i.cob = phi i64 [ %i.coa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1051 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i763 ]
  %i.coc = icmp ugt i64 %.072.i.i.i762, %i.cob
  br i1 %i.coc, label %bb.uz, label %.noexc783

bb.uz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1052
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ckj, i64 noundef %.072.i.i.i762)
          to label %.noexc1055 unwind label %.loopexit.split-lp2420.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1055:                                       ; preds = %bb.uz
  %.pre.i1053 = load ptr, ptr %i.ckj, align 8, !tbaa !95
  br label %.noexc783

.noexc783:                                        ; preds = %.noexc1055, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1052
  %i.cod = phi ptr [ %.pre.i1053, %.noexc1055 ], [ %i.cnx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1052 ]
  %i.coe = getelementptr inbounds nuw i8, ptr %i.ckj, i64 8
  store i64 %.072.i.i.i762, ptr %i.coe, align 8, !tbaa !93
  %i.cof = getelementptr inbounds nuw i8, ptr %i.cod, i64 %.072.i.i.i762
  store i8 0, ptr %i.cof, align 1, !tbaa !94
  %i.cog = load ptr, ptr %i.ckj, align 8, !tbaa !95
  %i.coh = getelementptr inbounds nuw i8, ptr %i.cog, i64 %.072.i.i.i762
  store i8 0, ptr %i.coh, align 1, !tbaa !94
  %i.coi = load ptr, ptr %i.ckj, align 8, !tbaa !95
  %i.coj = load ptr, ptr %i.wl, align 8, !tbaa !439
  %i.cok = getelementptr inbounds nuw i8, ptr %i.coj, i64 %.01848
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.coi, ptr align 1 %i.cok, i64 %.072.i.i.i762, i1 false)
  %i.col = load i64, ptr %10, align 8, !tbaa !438 ; 5 uses
  %i.com = icmp ugt i64 %i.cnt, %i.col
  br i1 %i.com, label %.invoke, label %.noexc784

.noexc784:                                        ; preds = %.noexc783
  %i.con = sub nuw i64 %i.col, %i.cnt             ; 3 uses
  %i.coo = load ptr, ptr %i.wl, align 8, !tbaa !439 ; 2 uses
  %i.cop = getelementptr inbounds nuw i8, ptr %i.coo, i64 %i.cnt ; 14 uses
  store i64 %i.con, ptr %10, align 8, !tbaa !249
  store ptr %i.cop, ptr %i.wl, align 8, !tbaa !363
  %i.coq = icmp eq i64 %i.col, %i.cnt
  br i1 %i.coq, label %.critedge.i692, label %bb.va

bb.va:                                            ; preds = %.noexc784
  %i.cor = getelementptr inbounds nuw i8, ptr %i.coo, i64 %i.col
  %i.cos = load i8, ptr %i.cop, align 1, !tbaa !94 ; 3 uses
  %i.cot = icmp sgt i8 %i.cos, -1
  br i1 %i.cot, label %bb.vb, label %bb.vc

bb.vb:                                            ; preds = %bb.va
  %i.cou = zext nneg i8 %i.cos to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i772

bb.vc:                                            ; preds = %bb.va
  %i.cov = ptrtoint ptr %i.cop to i64
  %i.cow = icmp ugt i64 %i.con, 9
  br i1 %i.cow, label %bb.vd, label %.lr.ph4871, !prof !257

bb.vd:                                            ; preds = %bb.vc
  %i.cox = and i8 %i.cos, 127
  %i.coy = zext nneg i8 %i.cox to i64
  %i.coz = getelementptr inbounds nuw i8, ptr %i.cop, i64 1
  %i.cpa = getelementptr inbounds nuw i8, ptr %i.cop, i64 2 ; 2 uses
  %i.cpb = load i8, ptr %i.coz, align 1, !tbaa !94 ; 2 uses
  %i.cpc = sext i8 %i.cpb to i64
  %i.cpd = shl nsw i64 %i.cpc, 7
  %i.cpe = and i64 %i.cpd, 16256
  %i.cpf = or disjoint i64 %i.cpe, %i.coy         ; 2 uses
  %i.cpg = icmp sgt i8 %i.cpb, -1
  br i1 %i.cpg, label %bb.vq, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cop, i64 3 ; 2 uses
  %i.cpi = load i8, ptr %i.cpa, align 1, !tbaa !94 ; 2 uses
  %i.cpj = sext i8 %i.cpi to i64
  %i.cpk = shl nsw i64 %i.cpj, 14
  %i.cpl = and i64 %i.cpk, 2080768
  %i.cpm = or disjoint i64 %i.cpl, %i.cpf         ; 2 uses
  %i.cpn = icmp sgt i8 %i.cpi, -1
  br i1 %i.cpn, label %bb.vq, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cop, i64 4 ; 2 uses
  %i.cpp = load i8, ptr %i.cph, align 1, !tbaa !94 ; 2 uses
  %i.cpq = sext i8 %i.cpp to i64
  %i.cpr = shl nsw i64 %i.cpq, 21
  %i.cps = and i64 %i.cpr, 266338304
  %i.cpt = or disjoint i64 %i.cps, %i.cpm         ; 2 uses
  %i.cpu = icmp sgt i8 %i.cpp, -1
  br i1 %i.cpu, label %bb.vq, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cop, i64 5 ; 2 uses
  %i.cpw = load i8, ptr %i.cpo, align 1, !tbaa !94 ; 2 uses
  %i.cpx = sext i8 %i.cpw to i64
  %i.cpy = shl nsw i64 %i.cpx, 28
  %i.cpz = and i64 %i.cpy, 34091302912
  %i.cqa = or disjoint i64 %i.cpz, %i.cpt         ; 6 uses
  %i.cqb = icmp sgt i8 %i.cpw, -1
  br i1 %i.cqb, label %bb.vq, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cop, i64 6 ; 2 uses
  %i.cqd = load i8, ptr %i.cpv, align 1, !tbaa !94
  %i.cqe = icmp sgt i8 %i.cqd, -1
  br i1 %i.cqe, label %bb.vq, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cop, i64 7 ; 2 uses
  %i.cqg = load i8, ptr %i.cqc, align 1, !tbaa !94
  %i.cqh = icmp sgt i8 %i.cqg, -1
  br i1 %i.cqh, label %bb.vq, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.cqi = getelementptr inbounds nuw i8, ptr %i.cop, i64 8 ; 2 uses
  %i.cqj = load i8, ptr %i.cqf, align 1, !tbaa !94
  %i.cqk = icmp sgt i8 %i.cqj, -1
  br i1 %i.cqk, label %bb.vq, label %bb.vk
end_hunk_4
begin_hunk_5_@_ZN16struct_pb_sample11deserializeIN9pb_sample7MonsterES2_EEv10SampleTypeRT_:bb.a
  %i.dnd = load i8, ptr %.170.i12.i6394955, align 1, !tbaa !94 ; 3 uses
  %i.dne = icmp slt i8 %i.dnd, 0
  %i.dnf = getelementptr inbounds nuw i8, ptr %.170.i12.i6394955, i64 1 ; 3 uses
  br i1 %i.dne, label %bb.abb, label %.critedge.i16.i643

bb.abb:                                           ; preds = %.lr.ph4958
  %i.dng = and i8 %i.dnd, 127
  %i.dnh = zext nneg i8 %i.dng to i64
  %i.dni = shl i64 %i.dnh, %indvars.iv7883
  %i.dnj = or i64 %i.dni, %.1.i13.i6404956
  %indvars.iv.next7884 = add nuw nsw i64 %indvars.iv7883, 7
  %.not.i15.i642 = icmp eq ptr %i.dnf, %i.dlb
  br i1 %.not.i15.i642, label %.preheader2447._crit_edge, label %.lr.ph4958, !llvm.loop !46

.preheader2447._crit_edge:                        ; preds = %bb.abb
  %i.dnk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dnk, ptr noundef nonnull @.str.78)
          to label %.invoke11042 unwind label %bb.abc

bb.abc:                                           ; preds = %.preheader2447._crit_edge
  %i.dnl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dnk) #28
  br label %.body182

.critedge.i16.i643:                               ; preds = %.lr.ph4958
  %i.dnm = zext nneg i8 %i.dnd to i64
  %i.dnn = shl i64 %i.dnm, %indvars.iv7883
  %i.dno = or i64 %i.dnn, %.1.i13.i6404956
  br label %bb.abd

bb.abd:                                           ; preds = %.critedge.i16.i643, %bb.aay, %bb.aax, %bb.aaw, %bb.aav, %bb.aau, %bb.aat, %bb.aas, %bb.aar, %bb.aaq
  %.271.i17.i644 = phi ptr [ %i.dnf, %.critedge.i16.i643 ], [ %i.dmy, %bb.aay ], [ %i.dlk, %bb.aaq ], [ %i.dlr, %bb.aar ], [ %i.dly, %bb.aas ], [ %i.dmf, %bb.aat ], [ %i.dmm, %bb.aau ], [ %i.dmp, %bb.aav ], [ %i.dms, %bb.aaw ], [ %i.dmv, %bb.aax ]
  %.2.i18.i645 = phi i64 [ %i.dno, %.critedge.i16.i643 ], [ %i.dmk, %bb.aay ], [ %i.dlp, %bb.aaq ], [ %i.dlw, %bb.aar ], [ %i.dmd, %bb.aas ], [ %i.dmk, %bb.aat ], [ %i.dmk, %bb.aau ], [ %i.dmk, %bb.aav ], [ %i.dmk, %bb.aaw ], [ %i.dmk, %bb.aax ]
  %i.dnp = ptrtoint ptr %.271.i17.i644 to i64
  %i.dnq = sub i64 %i.dnp, %i.dlf
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i646

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i646: ; preds = %bb.abd, %bb.aao
  %.02169 = phi i64 [ 1, %bb.aao ], [ %i.dnq, %bb.abd ] ; 6 uses
  %.072.i19.i647 = phi i64 [ %i.dle, %bb.aao ], [ %.2.i18.i645, %bb.abd ]
  %i.dnr = trunc i64 %.072.i19.i647 to i32        ; 2 uses
  %i.dns = and i32 %i.dnr, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.dnt = lshr i32 %i.dnr, 3
  store i32 %i.dnt, ptr %i.c, align 4, !tbaa !164
  %i.dnu = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.dnv = icmp eq i8 %i.dnu, 0
  br i1 %i.dnv, label %bb.abe, label %bb.abh, !prof !173

bb.abe:                                           ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i646
  %i.dnw = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i661 = icmp eq i32 %i.dnw, 0
  br i1 %.not.i661, label %bb.abh, label %bb.abf

bb.abf:                                           ; preds = %bb.abe
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %i.dic)
          to label %bb.abg unwind label %bb.aei

bb.abg:                                           ; preds = %bb.abf
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.abh

bb.abh:                                           ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i646, %bb.abe, %bb.abg
  %.sroa.02.0.copyload.i713 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.dnx = load i32, ptr %i.c, align 4, !tbaa !164 ; 2 uses
  %.not.i714 = icmp eq i32 %i.dnx, 1
  %.pre7936.pre = load i64, ptr %12, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i714, label %bb.abi, label %bb.acw

bb.abi:                                           ; preds = %bb.abh
  %i.dny = icmp ugt i64 %.02169, %.pre7936.pre
  br i1 %i.dny, label %.noexc184._crit_edge.invoke, label %.noexc739

.noexc739:                                        ; preds = %bb.abi
  %i.dnz = sub nuw i64 %.pre7936.pre, %.02169     ; 3 uses
  %i.doa = load ptr, ptr %i.wp, align 8, !tbaa !439 ; 2 uses
  %i.dob = getelementptr inbounds nuw i8, ptr %i.doa, i64 %.02169 ; 14 uses
  store i64 %i.dnz, ptr %12, align 8, !tbaa !249
  store ptr %i.dob, ptr %i.wp, align 8, !tbaa !363
  %.not4.i716 = icmp eq i32 %i.dns, 2
  br i1 %.not4.i716, label %bb.abl, label %bb.abj, !prof !257

bb.abj:                                           ; preds = %.noexc739
  %i.doc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.doc, ptr noundef nonnull @.str.79)
          to label %.invoke11042 unwind label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.dod = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.doc) #28
  br label %.body182

bb.abl:                                           ; preds = %.noexc739
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dic, i64 %.sroa.02.0.copyload.i713 ; 7 uses
  %i.dof = getelementptr inbounds nuw i8, ptr %i.doa, i64 %.pre7936.pre
  %i.dog = load i8, ptr %i.dob, align 1, !tbaa !94 ; 3 uses
  %i.doh = icmp sgt i8 %i.dog, -1
  br i1 %i.doh, label %bb.abm, label %bb.abn

bb.abm:                                           ; preds = %bb.abl
  %i.doi = zext nneg i8 %i.dog to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i724

bb.abn:                                           ; preds = %bb.abl
  %i.doj = ptrtoint ptr %i.dob to i64
  %i.dok = icmp ugt i64 %i.dnz, 9
  br i1 %i.dok, label %bb.abo, label %.preheader2446, !prof !257

.preheader2446:                                   ; preds = %bb.abn
  %.not.i.i.i7204960 = icmp samesign eq i64 %.02169, %.pre7936.pre
  br i1 %.not.i.i.i7204960, label %.preheader2446._crit_edge, label %.lr.ph4964

bb.abo:                                           ; preds = %bb.abn
  %i.dol = and i8 %i.dog, 127
  %i.dom = zext nneg i8 %i.dol to i64
  %i.don = getelementptr inbounds nuw i8, ptr %i.dob, i64 1
  %i.doo = getelementptr inbounds nuw i8, ptr %i.dob, i64 2 ; 2 uses
  %i.dop = load i8, ptr %i.don, align 1, !tbaa !94 ; 2 uses
  %i.doq = sext i8 %i.dop to i64
  %i.dor = shl nsw i64 %i.doq, 7
  %i.dos = and i64 %i.dor, 16256
  %i.dot = or disjoint i64 %i.dos, %i.dom         ; 2 uses
  %i.dou = icmp sgt i8 %i.dop, -1
  br i1 %i.dou, label %bb.acb, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dob, i64 3 ; 2 uses
  %i.dow = load i8, ptr %i.doo, align 1, !tbaa !94 ; 2 uses
  %i.dox = sext i8 %i.dow to i64
  %i.doy = shl nsw i64 %i.dox, 14
  %i.doz = and i64 %i.doy, 2080768
  %i.dpa = or disjoint i64 %i.doz, %i.dot         ; 2 uses
  %i.dpb = icmp sgt i8 %i.dow, -1
  br i1 %i.dpb, label %bb.acb, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.dpc = getelementptr inbounds nuw i8, ptr %i.dob, i64 4 ; 2 uses
  %i.dpd = load i8, ptr %i.dov, align 1, !tbaa !94 ; 2 uses
  %i.dpe = sext i8 %i.dpd to i64
  %i.dpf = shl nsw i64 %i.dpe, 21
  %i.dpg = and i64 %i.dpf, 266338304
  %i.dph = or disjoint i64 %i.dpg, %i.dpa         ; 2 uses
  %i.dpi = icmp sgt i8 %i.dpd, -1
  br i1 %i.dpi, label %bb.acb, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.dpj = getelementptr inbounds nuw i8, ptr %i.dob, i64 5 ; 2 uses
  %i.dpk = load i8, ptr %i.dpc, align 1, !tbaa !94 ; 2 uses
  %i.dpl = sext i8 %i.dpk to i64
  %i.dpm = shl nsw i64 %i.dpl, 28
  %i.dpn = and i64 %i.dpm, 34091302912
  %i.dpo = or disjoint i64 %i.dpn, %i.dph         ; 2 uses
  %i.dpp = icmp sgt i8 %i.dpk, -1
  br i1 %i.dpp, label %bb.acb, label %bb.abs

bb.abs:                                           ; preds = %bb.abr
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dob, i64 6 ; 2 uses
  %i.dpr = load i8, ptr %i.dpj, align 1, !tbaa !94 ; 2 uses
  %i.dps = sext i8 %i.dpr to i64
  %i.dpt = shl nsw i64 %i.dps, 35
  %i.dpu = and i64 %i.dpt, 4363686772736
  %i.dpv = or disjoint i64 %i.dpu, %i.dpo         ; 2 uses
  %i.dpw = icmp sgt i8 %i.dpr, -1
  br i1 %i.dpw, label %bb.acb, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dob, i64 7 ; 2 uses
  %i.dpy = load i8, ptr %i.dpq, align 1, !tbaa !94 ; 2 uses
  %i.dpz = sext i8 %i.dpy to i64
  %i.dqa = shl nsw i64 %i.dpz, 42
  %i.dqb = and i64 %i.dqa, 558551906910208
  %i.dqc = or i64 %i.dqb, %i.dpv                  ; 2 uses
  %i.dqd = icmp sgt i8 %i.dpy, -1
  br i1 %i.dqd, label %bb.acb, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.dqe = getelementptr inbounds nuw i8, ptr %i.dob, i64 8 ; 2 uses
  %i.dqf = load i8, ptr %i.dpx, align 1, !tbaa !94 ; 2 uses
  %i.dqg = sext i8 %i.dqf to i64
  %i.dqh = shl nsw i64 %i.dqg, 49
  %i.dqi = and i64 %i.dqh, 71494644084506624
  %i.dqj = or i64 %i.dqi, %i.dqc                  ; 2 uses
  %i.dqk = icmp sgt i8 %i.dqf, -1
  br i1 %i.dqk, label %bb.acb, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.dql = getelementptr inbounds nuw i8, ptr %i.dob, i64 9 ; 2 uses
  %i.dqm = load i8, ptr %i.dqe, align 1, !tbaa !94 ; 2 uses
  %i.dqn = sext i8 %i.dqm to i64
  %i.dqo = shl nsw i64 %i.dqn, 56
  %i.dqp = and i64 %i.dqo, 9151314442816847872
  %i.dqq = or i64 %i.dqp, %i.dqj                  ; 2 uses
  %i.dqr = icmp sgt i8 %i.dqm, -1
  br i1 %i.dqr, label %bb.acb, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.dob, i64 10
  %i.dqt = load i8, ptr %i.dql, align 1, !tbaa !94 ; 2 uses
  %i.dqu = zext i8 %i.dqt to i64
  %i.dqv = shl i64 %i.dqu, 63
  %i.dqw = or i64 %i.dqv, %i.dqq
  %i.dqx = icmp sgt i8 %i.dqt, -1
  br i1 %i.dqx, label %bb.acb, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.dqy = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dqy, ptr noundef nonnull @.str.77)
          to label %.invoke11042 unwind label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  %i.dqz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dqy) #28
  br label %.body182

.lr.ph4964:                                       ; preds = %.preheader2446, %bb.abz
  %indvars.iv7886 = phi i64 [ %indvars.iv.next7887, %bb.abz ], [ 0, %.preheader2446 ] ; 3 uses
  %.1.i.i.i7184962 = phi i64 [ %i.drg, %bb.abz ], [ 0, %.preheader2446 ] ; 2 uses
  %.170.i.i.i7174961 = phi ptr [ %i.drc, %bb.abz ], [ %i.dob, %.preheader2446 ] ; 2 uses
  %i.dra = load i8, ptr %.170.i.i.i7174961, align 1, !tbaa !94 ; 3 uses
  %i.drb = icmp slt i8 %i.dra, 0
  %i.drc = getelementptr inbounds nuw i8, ptr %.170.i.i.i7174961, i64 1 ; 3 uses
  br i1 %i.drb, label %bb.abz, label %.critedge.i.i.i721

bb.abz:                                           ; preds = %.lr.ph4964
  %i.drd = and i8 %i.dra, 127
  %i.dre = zext nneg i8 %i.drd to i64
  %i.drf = shl i64 %i.dre, %indvars.iv7886
  %i.drg = or i64 %i.drf, %.1.i.i.i7184962
  %indvars.iv.next7887 = add nuw nsw i64 %indvars.iv7886, 7
  %.not.i.i.i720 = icmp eq ptr %i.drc, %i.dof
  br i1 %.not.i.i.i720, label %.preheader2446._crit_edge, label %.lr.ph4964, !llvm.loop !46

.preheader2446._crit_edge:                        ; preds = %.preheader2446, %bb.abz
  %i.drh = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.drh, ptr noundef nonnull @.str.78)
          to label %.invoke11042 unwind label %bb.aca

bb.aca:                                           ; preds = %.preheader2446._crit_edge
  %i.dri = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.drh) #28
  br label %.body182

.critedge.i.i.i721:                               ; preds = %.lr.ph4964
  %i.drj = zext nneg i8 %i.dra to i64
  %i.drk = shl i64 %i.drj, %indvars.iv7886
  %i.drl = or i64 %i.drk, %.1.i.i.i7184962
  br label %bb.acb

bb.acb:                                           ; preds = %.critedge.i.i.i721, %bb.abw, %bb.abv, %bb.abu, %bb.abt, %bb.abs, %bb.abr, %bb.abq, %bb.abp, %bb.abo
  %.271.i.i.i722 = phi ptr [ %i.drc, %.critedge.i.i.i721 ], [ %i.dqs, %bb.abw ], [ %i.doo, %bb.abo ], [ %i.dov, %bb.abp ], [ %i.dpc, %bb.abq ], [ %i.dpj, %bb.abr ], [ %i.dpq, %bb.abs ], [ %i.dpx, %bb.abt ], [ %i.dqe, %bb.abu ], [ %i.dql, %bb.abv ]
  %.2.i.i.i723 = phi i64 [ %i.drl, %.critedge.i.i.i721 ], [ %i.dqw, %bb.abw ], [ %i.dot, %bb.abo ], [ %i.dpa, %bb.abp ], [ %i.dph, %bb.abq ], [ %i.dpo, %bb.abr ], [ %i.dpv, %bb.abs ], [ %i.dqc, %bb.abt ], [ %i.dqj, %bb.abu ], [ %i.dqq, %bb.abv ]
  %i.drm = ptrtoint ptr %.271.i.i.i722 to i64
  %i.drn = sub i64 %i.drm, %i.doj
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i724

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i724: ; preds = %bb.acb, %bb.abm
  %.01849 = phi i64 [ 1, %bb.abm ], [ %i.drn, %bb.acb ] ; 2 uses
  %.072.i.i.i725 = phi i64 [ %i.doi, %bb.abm ], [ %.2.i.i.i723, %bb.acb ] ; 7 uses
  %i.dro = add i64 %.072.i.i.i725, %.01849        ; 6 uses
  %i.drp = icmp ult i64 %i.dnz, %i.dro
  br i1 %i.drp, label %bb.acc, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i726, !prof !169

bb.acc:                                           ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i724
  %i.drq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.drq, ptr noundef nonnull @.str.89)
          to label %.invoke11042 unwind label %bb.acd

bb.acd:                                           ; preds = %bb.acc
  %i.drr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.drq) #28
  br label %.body182

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i726: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i724
  %i.drs = load ptr, ptr %i.doe, align 8, !tbaa !95 ; 2 uses
  %i.drt = getelementptr inbounds nuw i8, ptr %i.doe, i64 16 ; 2 uses
  %i.dru = icmp eq ptr %i.drs, %i.drt
  br i1 %i.dru, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1113: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i726
  %i.drv = load i64, ptr %i.drt, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1114: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i726, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1113
  %i.drw = phi i64 [ %i.drv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1113 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i726 ]
  %i.drx = icmp ugt i64 %.072.i.i.i725, %i.drw
  br i1 %i.drx, label %bb.ace, label %.noexc746

bb.ace:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1114
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.doe, i64 noundef %.072.i.i.i725)
          to label %.noexc1117 unwind label %.loopexit.split-lp2432.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1117:                                       ; preds = %bb.ace
  %.pre.i1115 = load ptr, ptr %i.doe, align 8, !tbaa !95
  br label %.noexc746

.noexc746:                                        ; preds = %.noexc1117, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1114
  %i.dry = phi ptr [ %.pre.i1115, %.noexc1117 ], [ %i.drs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i1114 ]
  %i.drz = getelementptr inbounds nuw i8, ptr %i.doe, i64 8
  store i64 %.072.i.i.i725, ptr %i.drz, align 8, !tbaa !93
  %i.dsa = getelementptr inbounds nuw i8, ptr %i.dry, i64 %.072.i.i.i725
  store i8 0, ptr %i.dsa, align 1, !tbaa !94
  %i.dsb = load ptr, ptr %i.doe, align 8, !tbaa !95
  %i.dsc = getelementptr inbounds nuw i8, ptr %i.dsb, i64 %.072.i.i.i725
  store i8 0, ptr %i.dsc, align 1, !tbaa !94
  %i.dsd = load ptr, ptr %i.doe, align 8, !tbaa !95
  %i.dse = load ptr, ptr %i.wp, align 8, !tbaa !439
  %i.dsf = getelementptr inbounds nuw i8, ptr %i.dse, i64 %.01849
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dsd, ptr align 1 %i.dsf, i64 %.072.i.i.i725, i1 false)
  %i.dsg = load i64, ptr %12, align 8, !tbaa !438 ; 5 uses
  %i.dsh = icmp ugt i64 %i.dro, %i.dsg
  br i1 %i.dsh, label %.noexc184._crit_edge.invoke, label %.noexc747

.noexc747:                                        ; preds = %.noexc746
  %i.dsi = sub nuw i64 %i.dsg, %i.dro             ; 3 uses
  %i.dsj = load ptr, ptr %i.wp, align 8, !tbaa !439 ; 2 uses
  %i.dsk = getelementptr inbounds nuw i8, ptr %i.dsj, i64 %i.dro ; 14 uses
  store i64 %i.dsi, ptr %12, align 8, !tbaa !249
  store ptr %i.dsk, ptr %i.wp, align 8, !tbaa !363
  %i.dsl = icmp eq i64 %i.dsg, %i.dro
  br i1 %i.dsl, label %.critedge.i658, label %bb.acf

bb.acf:                                           ; preds = %.noexc747
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.dsj, i64 %i.dsg
  %i.dsn = load i8, ptr %i.dsk, align 1, !tbaa !94 ; 3 uses
  %i.dso = icmp sgt i8 %i.dsn, -1
  br i1 %i.dso, label %bb.acg, label %bb.ach

bb.acg:                                           ; preds = %bb.acf
  %i.dsp = zext nneg i8 %i.dsn to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i735

bb.ach:                                           ; preds = %bb.acf
  %i.dsq = ptrtoint ptr %i.dsk to i64
  %i.dsr = icmp ugt i64 %i.dsi, 9
  br i1 %i.dsr, label %bb.aci, label %.lr.ph4970, !prof !257

bb.aci:                                           ; preds = %bb.ach
  %i.dss = and i8 %i.dsn, 127
  %i.dst = zext nneg i8 %i.dss to i64
  %i.dsu = getelementptr inbounds nuw i8, ptr %i.dsk, i64 1
  %i.dsv = getelementptr inbounds nuw i8, ptr %i.dsk, i64 2 ; 2 uses
  %i.dsw = load i8, ptr %i.dsu, align 1, !tbaa !94 ; 2 uses
  %i.dsx = sext i8 %i.dsw to i64
  %i.dsy = shl nsw i64 %i.dsx, 7
  %i.dsz = and i64 %i.dsy, 16256
  %i.dta = or disjoint i64 %i.dsz, %i.dst         ; 2 uses
  %i.dtb = icmp sgt i8 %i.dsw, -1
  br i1 %i.dtb, label %bb.acv, label %bb.acj

bb.acj:                                           ; preds = %bb.aci
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.dsk, i64 3 ; 2 uses
  %i.dtd = load i8, ptr %i.dsv, align 1, !tbaa !94 ; 2 uses
  %i.dte = sext i8 %i.dtd to i64
  %i.dtf = shl nsw i64 %i.dte, 14
  %i.dtg = and i64 %i.dtf, 2080768
  %i.dth = or disjoint i64 %i.dtg, %i.dta         ; 2 uses
  %i.dti = icmp sgt i8 %i.dtd, -1
  br i1 %i.dti, label %bb.acv, label %bb.ack

bb.ack:                                           ; preds = %bb.acj
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dsk, i64 4 ; 2 uses
  %i.dtk = load i8, ptr %i.dtc, align 1, !tbaa !94 ; 2 uses
  %i.dtl = sext i8 %i.dtk to i64
  %i.dtm = shl nsw i64 %i.dtl, 21
  %i.dtn = and i64 %i.dtm, 266338304
  %i.dto = or disjoint i64 %i.dtn, %i.dth         ; 2 uses
  %i.dtp = icmp sgt i8 %i.dtk, -1
  br i1 %i.dtp, label %bb.acv, label %bb.acl

bb.acl:                                           ; preds = %bb.ack
  %i.dtq = getelementptr inbounds nuw i8, ptr %i.dsk, i64 5 ; 2 uses
  %i.dtr = load i8, ptr %i.dtj, align 1, !tbaa !94 ; 2 uses
  %i.dts = sext i8 %i.dtr to i64
  %i.dtt = shl nsw i64 %i.dts, 28
  %i.dtu = and i64 %i.dtt, 34091302912
  %i.dtv = or disjoint i64 %i.dtu, %i.dto         ; 6 uses
  %i.dtw = icmp sgt i8 %i.dtr, -1
  br i1 %i.dtw, label %bb.acv, label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.dtx = getelementptr inbounds nuw i8, ptr %i.dsk, i64 6 ; 2 uses
  %i.dty = load i8, ptr %i.dtq, align 1, !tbaa !94
  %i.dtz = icmp sgt i8 %i.dty, -1
  br i1 %i.dtz, label %bb.acv, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.dua = getelementptr inbounds nuw i8, ptr %i.dsk, i64 7 ; 2 uses
  %i.dub = load i8, ptr %i.dtx, align 1, !tbaa !94
  %i.duc = icmp sgt i8 %i.dub, -1
  br i1 %i.duc, label %bb.acv, label %bb.aco

bb.aco:                                           ; preds = %bb.acn
  %i.dud = getelementptr inbounds nuw i8, ptr %i.dsk, i64 8 ; 2 uses
  %i.due = load i8, ptr %i.dua, align 1, !tbaa !94
  %i.duf = icmp sgt i8 %i.due, -1
  br i1 %i.duf, label %bb.acv, label %bb.acp
end_hunk_5
begin_hunk_6_@_ZN16struct_pb_sample11deserializeIN9pb_sample8MonstersES2_EEv10SampleTypeRT_:bb.a
  %i.bsh = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bsh, ptr noundef nonnull @.str.77)
          to label %.invoke14879 unwind label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.bsi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bsh) #28
  br label %.body.i

.lr.ph5768:                                       ; preds = %.preheader2055, %bb.qj
  %indvars.iv10274 = phi i64 [ %indvars.iv.next10275, %bb.qj ], [ 0, %.preheader2055 ] ; 3 uses
  %.1.i.i61.i5766 = phi i64 [ %i.bsp, %bb.qj ], [ 0, %.preheader2055 ] ; 2 uses
  %.170.i.i60.i5765 = phi ptr [ %i.bsl, %bb.qj ], [ %i.bqf, %.preheader2055 ] ; 2 uses
  %i.bsj = load i8, ptr %.170.i.i60.i5765, align 1, !tbaa !94 ; 3 uses
  %i.bsk = icmp slt i8 %i.bsj, 0
  %i.bsl = getelementptr inbounds nuw i8, ptr %.170.i.i60.i5765, i64 1 ; 3 uses
  br i1 %i.bsk, label %bb.qj, label %.critedge.i.i64.i

bb.qj:                                            ; preds = %.lr.ph5768
  %i.bsm = and i8 %i.bsj, 127
  %i.bsn = zext nneg i8 %i.bsm to i64
  %i.bso = shl i64 %i.bsn, %indvars.iv10274
  %i.bsp = or i64 %i.bso, %.1.i.i61.i5766
  %indvars.iv.next10275 = add nuw nsw i64 %indvars.iv10274, 7
  %.not.i.i63.i = icmp eq ptr %i.bsl, %i.bnm
  br i1 %.not.i.i63.i, label %.preheader2055._crit_edge, label %.lr.ph5768, !llvm.loop !46

.preheader2055._crit_edge:                        ; preds = %.preheader2055, %bb.qj
  %i.bsq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bsq, ptr noundef nonnull @.str.78)
          to label %.invoke14879 unwind label %bb.qk

bb.qk:                                            ; preds = %.preheader2055._crit_edge
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bsq) #28
  br label %.body.i

.critedge.i.i64.i:                                ; preds = %.lr.ph5768
  %i.bss = zext nneg i8 %i.bsj to i64
  %i.bst = shl i64 %i.bss, %indvars.iv10274
  %i.bsu = or i64 %i.bst, %.1.i.i61.i5766
  br label %bb.ql

bb.ql:                                            ; preds = %.critedge.i.i64.i, %bb.qg, %bb.qf, %bb.qe, %bb.qd, %bb.qc, %bb.qb, %bb.qa, %bb.pz, %bb.py
  %.271.i.i65.i = phi ptr [ %i.bsl, %.critedge.i.i64.i ], [ %i.bse, %bb.qg ], [ %i.bqq, %bb.py ], [ %i.bqx, %bb.pz ], [ %i.bre, %bb.qa ], [ %i.brl, %bb.qb ], [ %i.brs, %bb.qc ], [ %i.brv, %bb.qd ], [ %i.bry, %bb.qe ], [ %i.bsb, %bb.qf ]
  %.2.i.i66.i = phi i64 [ %i.bsu, %.critedge.i.i64.i ], [ %i.brq, %bb.qg ], [ %i.bqv, %bb.py ], [ %i.brc, %bb.pz ], [ %i.brj, %bb.qa ], [ %i.brq, %bb.qb ], [ %i.brq, %bb.qc ], [ %i.brq, %bb.qd ], [ %i.brq, %bb.qe ], [ %i.brq, %bb.qf ]
  %i.bsv = ptrtoint ptr %.271.i.i65.i to i64
  %i.bsw = sub i64 %i.bsv, %i.bqk
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i: ; preds = %bb.pw, %bb.ql
  %.18 = phi i64 [ 1, %bb.pw ], [ %i.bsw, %bb.ql ]
  %.072.i.i68.i = phi i64 [ %i.bqj, %bb.pw ], [ %.2.i.i66.i, %bb.ql ]
  %i.bsx = trunc i64 %.072.i.i68.i to i32         ; 2 uses
  %i.bsy = and i32 %i.bsx, 7
  %i.bsz = lshr i32 %i.bsx, 3                     ; 2 uses
  store i32 %i.bsz, ptr %i.c, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread1847

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread1847: ; preds = %thread-pre-split1841, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i
  %.pr1870 = phi i32 [ %i.bsz, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.pr1856, %thread-pre-split1841 ] ; 2 uses
  %.217671854 = phi i32 [ %i.bsy, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.11766, %thread-pre-split1841 ] ; 2 uses
  %.317771853 = phi i64 [ %.18, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.21776, %thread-pre-split1841 ] ; 6 uses
  %.sroa.02.0.copyload.i71.i1855 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 120), align 8, !tbaa !249
  %.not.i72.i = icmp eq i32 %.pr1870, 4
  br i1 %.not.i72.i, label %bb.qm, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread1861

bb.qm:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread1847
  %i.bta = load i64, ptr %19, align 8, !tbaa !438 ; 5 uses
  %i.btb = icmp ugt i64 %.317771853, %i.bta
  br i1 %i.btb, label %.invoke14877, label %.noexc228

.noexc228:                                        ; preds = %bb.qm
  %i.btc = sub nuw i64 %i.bta, %.317771853        ; 3 uses
  %i.btd = load ptr, ptr %i.yg, align 8, !tbaa !439 ; 2 uses
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btd, i64 %.317771853 ; 14 uses
  store i64 %i.btc, ptr %19, align 8, !tbaa !249
  store ptr %i.bte, ptr %i.yg, align 8, !tbaa !363
  %.not4.i74.i = icmp eq i32 %.217671854, 2
  br i1 %.not4.i74.i, label %bb.qp, label %bb.qn, !prof !257

bb.qn:                                            ; preds = %.noexc228
  %i.btf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.btf, ptr noundef nonnull @.str.79)
          to label %.invoke14879 unwind label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.btg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.btf) #28
  br label %.body.i

bb.qp:                                            ; preds = %.noexc228
  %i.bth = getelementptr inbounds nuw i8, ptr %21, i64 %.sroa.02.0.copyload.i71.i1855 ; 7 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.btd, i64 %i.bta
  %i.btj = load i8, ptr %i.bte, align 1, !tbaa !94 ; 3 uses
  %i.btk = icmp sgt i8 %i.btj, -1
  br i1 %i.btk, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %bb.qp
  %i.btl = zext nneg i8 %i.btj to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i

bb.qr:                                            ; preds = %bb.qp
  %i.btm = ptrtoint ptr %i.bte to i64
  %i.btn = icmp ugt i64 %i.btc, 9
  br i1 %i.btn, label %bb.qs, label %.preheader2054, !prof !257

.preheader2054:                                   ; preds = %bb.qr
  %.not.i.i.i78.i5772 = icmp samesign eq i64 %.317771853, %i.bta
  br i1 %.not.i.i.i78.i5772, label %.preheader2054._crit_edge, label %.lr.ph5776

bb.qs:                                            ; preds = %bb.qr
  %i.bto = and i8 %i.btj, 127
  %i.btp = zext nneg i8 %i.bto to i64
  %i.btq = getelementptr inbounds nuw i8, ptr %i.bte, i64 1
  %i.btr = getelementptr inbounds nuw i8, ptr %i.bte, i64 2 ; 2 uses
  %i.bts = load i8, ptr %i.btq, align 1, !tbaa !94 ; 2 uses
  %i.btt = sext i8 %i.bts to i64
  %i.btu = shl nsw i64 %i.btt, 7
  %i.btv = and i64 %i.btu, 16256
  %i.btw = or disjoint i64 %i.btv, %i.btp         ; 2 uses
  %i.btx = icmp sgt i8 %i.bts, -1
  br i1 %i.btx, label %bb.rf, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.bty = getelementptr inbounds nuw i8, ptr %i.bte, i64 3 ; 2 uses
  %i.btz = load i8, ptr %i.btr, align 1, !tbaa !94 ; 2 uses
  %i.bua = sext i8 %i.btz to i64
  %i.bub = shl nsw i64 %i.bua, 14
  %i.buc = and i64 %i.bub, 2080768
  %i.bud = or disjoint i64 %i.buc, %i.btw         ; 2 uses
  %i.bue = icmp sgt i8 %i.btz, -1
  br i1 %i.bue, label %bb.rf, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bte, i64 4 ; 2 uses
  %i.bug = load i8, ptr %i.bty, align 1, !tbaa !94 ; 2 uses
  %i.buh = sext i8 %i.bug to i64
  %i.bui = shl nsw i64 %i.buh, 21
  %i.buj = and i64 %i.bui, 266338304
  %i.buk = or disjoint i64 %i.buj, %i.bud         ; 2 uses
  %i.bul = icmp sgt i8 %i.bug, -1
  br i1 %i.bul, label %bb.rf, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bte, i64 5 ; 2 uses
  %i.bun = load i8, ptr %i.buf, align 1, !tbaa !94 ; 2 uses
  %i.buo = sext i8 %i.bun to i64
  %i.bup = shl nsw i64 %i.buo, 28
  %i.buq = and i64 %i.bup, 34091302912
  %i.bur = or disjoint i64 %i.buq, %i.buk         ; 2 uses
  %i.bus = icmp sgt i8 %i.bun, -1
  br i1 %i.bus, label %bb.rf, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.but = getelementptr inbounds nuw i8, ptr %i.bte, i64 6 ; 2 uses
  %i.buu = load i8, ptr %i.bum, align 1, !tbaa !94 ; 2 uses
  %i.buv = sext i8 %i.buu to i64
  %i.buw = shl nsw i64 %i.buv, 35
  %i.bux = and i64 %i.buw, 4363686772736
  %i.buy = or disjoint i64 %i.bux, %i.bur         ; 2 uses
  %i.buz = icmp sgt i8 %i.buu, -1
  br i1 %i.buz, label %bb.rf, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bte, i64 7 ; 2 uses
  %i.bvb = load i8, ptr %i.but, align 1, !tbaa !94 ; 2 uses
  %i.bvc = sext i8 %i.bvb to i64
  %i.bvd = shl nsw i64 %i.bvc, 42
  %i.bve = and i64 %i.bvd, 558551906910208
  %i.bvf = or i64 %i.bve, %i.buy                  ; 2 uses
  %i.bvg = icmp sgt i8 %i.bvb, -1
  br i1 %i.bvg, label %bb.rf, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bte, i64 8 ; 2 uses
  %i.bvi = load i8, ptr %i.bva, align 1, !tbaa !94 ; 2 uses
  %i.bvj = sext i8 %i.bvi to i64
  %i.bvk = shl nsw i64 %i.bvj, 49
  %i.bvl = and i64 %i.bvk, 71494644084506624
  %i.bvm = or i64 %i.bvl, %i.bvf                  ; 2 uses
  %i.bvn = icmp sgt i8 %i.bvi, -1
  br i1 %i.bvn, label %bb.rf, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bte, i64 9 ; 2 uses
  %i.bvp = load i8, ptr %i.bvh, align 1, !tbaa !94 ; 2 uses
  %i.bvq = sext i8 %i.bvp to i64
  %i.bvr = shl nsw i64 %i.bvq, 56
  %i.bvs = and i64 %i.bvr, 9151314442816847872
  %i.bvt = or i64 %i.bvs, %i.bvm                  ; 2 uses
  %i.bvu = icmp sgt i8 %i.bvp, -1
  br i1 %i.bvu, label %bb.rf, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bte, i64 10
  %i.bvw = load i8, ptr %i.bvo, align 1, !tbaa !94 ; 2 uses
  %i.bvx = zext i8 %i.bvw to i64
  %i.bvy = shl i64 %i.bvx, 63
  %i.bvz = or i64 %i.bvy, %i.bvt
  %i.bwa = icmp sgt i8 %i.bvw, -1
  br i1 %i.bwa, label %bb.rf, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.bwb = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bwb, ptr noundef nonnull @.str.77)
          to label %.invoke14879 unwind label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.bwc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bwb) #28
  br label %.body.i

.lr.ph5776:                                       ; preds = %.preheader2054, %bb.rd
  %indvars.iv10277 = phi i64 [ %indvars.iv.next10278, %bb.rd ], [ 0, %.preheader2054 ] ; 3 uses
  %.1.i.i.i76.i5774 = phi i64 [ %i.bwj, %bb.rd ], [ 0, %.preheader2054 ] ; 2 uses
  %.170.i.i.i75.i5773 = phi ptr [ %i.bwf, %bb.rd ], [ %i.bte, %.preheader2054 ] ; 2 uses
  %i.bwd = load i8, ptr %.170.i.i.i75.i5773, align 1, !tbaa !94 ; 3 uses
  %i.bwe = icmp slt i8 %i.bwd, 0
  %i.bwf = getelementptr inbounds nuw i8, ptr %.170.i.i.i75.i5773, i64 1 ; 3 uses
  br i1 %i.bwe, label %bb.rd, label %.critedge.i.i.i79.i

bb.rd:                                            ; preds = %.lr.ph5776
  %i.bwg = and i8 %i.bwd, 127
  %i.bwh = zext nneg i8 %i.bwg to i64
  %i.bwi = shl i64 %i.bwh, %indvars.iv10277
  %i.bwj = or i64 %i.bwi, %.1.i.i.i76.i5774
  %indvars.iv.next10278 = add nuw nsw i64 %indvars.iv10277, 7
  %.not.i.i.i78.i = icmp eq ptr %i.bwf, %i.bti
  br i1 %.not.i.i.i78.i, label %.preheader2054._crit_edge, label %.lr.ph5776, !llvm.loop !46

.preheader2054._crit_edge:                        ; preds = %.preheader2054, %bb.rd
  %i.bwk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bwk, ptr noundef nonnull @.str.78)
          to label %.invoke14879 unwind label %bb.re

bb.re:                                            ; preds = %.preheader2054._crit_edge
  %i.bwl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bwk) #28
  br label %.body.i

.critedge.i.i.i79.i:                              ; preds = %.lr.ph5776
  %i.bwm = zext nneg i8 %i.bwd to i64
  %i.bwn = shl i64 %i.bwm, %indvars.iv10277
  %i.bwo = or i64 %i.bwn, %.1.i.i.i76.i5774
  br label %bb.rf

bb.rf:                                            ; preds = %.critedge.i.i.i79.i, %bb.ra, %bb.qz, %bb.qy, %bb.qx, %bb.qw, %bb.qv, %bb.qu, %bb.qt, %bb.qs
  %.271.i.i.i80.i = phi ptr [ %i.bwf, %.critedge.i.i.i79.i ], [ %i.bvv, %bb.ra ], [ %i.btr, %bb.qs ], [ %i.bty, %bb.qt ], [ %i.buf, %bb.qu ], [ %i.bum, %bb.qv ], [ %i.but, %bb.qw ], [ %i.bva, %bb.qx ], [ %i.bvh, %bb.qy ], [ %i.bvo, %bb.qz ]
  %.2.i.i.i81.i = phi i64 [ %i.bwo, %.critedge.i.i.i79.i ], [ %i.bvz, %bb.ra ], [ %i.btw, %bb.qs ], [ %i.bud, %bb.qt ], [ %i.buk, %bb.qu ], [ %i.bur, %bb.qv ], [ %i.buy, %bb.qw ], [ %i.bvf, %bb.qx ], [ %i.bvm, %bb.qy ], [ %i.bvt, %bb.qz ]
  %i.bwp = ptrtoint ptr %.271.i.i.i80.i to i64
  %i.bwq = sub i64 %i.bwp, %i.btm
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i: ; preds = %bb.rf, %bb.qq
  %.01392 = phi i64 [ 1, %bb.qq ], [ %i.bwq, %bb.rf ] ; 2 uses
  %.072.i.i.i82.i = phi i64 [ %i.btl, %bb.qq ], [ %.2.i.i.i81.i, %bb.rf ] ; 7 uses
  %i.bwr = add i64 %.072.i.i.i82.i, %.01392       ; 6 uses
  %i.bws = icmp ult i64 %i.btc, %i.bwr
  br i1 %i.bws, label %bb.rg, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, !prof !169

bb.rg:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i
  %i.bwt = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bwt, ptr noundef nonnull @.str.89)
          to label %.invoke14879 unwind label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bwu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bwt) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i
  %i.bwv = load ptr, ptr %i.bth, align 8, !tbaa !95 ; 2 uses
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bth, i64 16 ; 2 uses
  %i.bwx = icmp eq ptr %i.bwv, %i.bww
  br i1 %i.bwx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i424, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i
  %i.bwy = load i64, ptr %i.bww, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i424: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423
  %i.bwz = phi i64 [ %i.bwy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i423 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i ]
  %i.bxa = icmp ugt i64 %.072.i.i.i82.i, %i.bwz
  br i1 %i.bxa, label %bb.ri, label %.noexc233

bb.ri:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i424
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bth, i64 noundef %.072.i.i.i82.i)
          to label %.noexc427 unwind label %.loopexit.split-lp2028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc427:                                        ; preds = %bb.ri
  %.pre.i425 = load ptr, ptr %i.bth, align 8, !tbaa !95
  br label %.noexc233

.noexc233:                                        ; preds = %.noexc427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i424
  %i.bxb = phi ptr [ %.pre.i425, %.noexc427 ], [ %i.bwv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i424 ]
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bth, i64 8
  store i64 %.072.i.i.i82.i, ptr %i.bxc, align 8, !tbaa !93
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxb, i64 %.072.i.i.i82.i
  store i8 0, ptr %i.bxd, align 1, !tbaa !94
  %i.bxe = load ptr, ptr %i.bth, align 8, !tbaa !95
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxe, i64 %.072.i.i.i82.i
  store i8 0, ptr %i.bxf, align 1, !tbaa !94
  %i.bxg = load ptr, ptr %i.bth, align 8, !tbaa !95
  %i.bxh = load ptr, ptr %i.yg, align 8, !tbaa !439
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %.01392
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bxg, ptr align 1 %i.bxi, i64 %.072.i.i.i82.i, i1 false)
  %i.bxj = load i64, ptr %19, align 8, !tbaa !438 ; 5 uses
  %i.bxk = icmp ugt i64 %i.bwr, %i.bxj
  br i1 %i.bxk, label %.invoke14877, label %.noexc234

.noexc234:                                        ; preds = %.noexc233
  %i.bxl = sub nuw i64 %i.bxj, %i.bwr             ; 2 uses
  %i.bxm = load ptr, ptr %i.yg, align 8, !tbaa !439 ; 2 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxm, i64 %i.bwr ; 14 uses
  store i64 %i.bxl, ptr %19, align 8, !tbaa !249
  store ptr %i.bxn, ptr %i.yg, align 8, !tbaa !363
  %i.bxo = icmp eq i64 %i.bxj, %i.bwr
  br i1 %i.bxo, label %.critedge.i18.i, label %bb.rj

bb.rj:                                            ; preds = %.noexc234
  %i.bxp = getelementptr inbounds nuw i8, ptr %i.bxm, i64 %i.bxj
  %i.bxq = load i8, ptr %i.bxn, align 1, !tbaa !94 ; 3 uses
  %i.bxr = icmp sgt i8 %i.bxq, -1
  br i1 %i.bxr, label %bb.rk, label %bb.rl

bb.rk:                                            ; preds = %bb.rj
  %i.bxs = zext nneg i8 %i.bxq to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i

bb.rl:                                            ; preds = %bb.rj
  %i.bxt = ptrtoint ptr %i.bxn to i64
  %i.bxu = icmp ugt i64 %i.bxl, 9
  br i1 %i.bxu, label %bb.rm, label %.lr.ph5784, !prof !257

bb.rm:                                            ; preds = %bb.rl
  %i.bxv = and i8 %i.bxq, 127
  %i.bxw = zext nneg i8 %i.bxv to i64
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxn, i64 1
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxn, i64 2 ; 2 uses
  %i.bxz = load i8, ptr %i.bxx, align 1, !tbaa !94 ; 2 uses
  %i.bya = sext i8 %i.bxz to i64
  %i.byb = shl nsw i64 %i.bya, 7
  %i.byc = and i64 %i.byb, 16256
  %i.byd = or disjoint i64 %i.byc, %i.bxw         ; 2 uses
  %i.bye = icmp sgt i8 %i.bxz, -1
  br i1 %i.bye, label %bb.rz, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bxn, i64 3 ; 2 uses
  %i.byg = load i8, ptr %i.bxy, align 1, !tbaa !94 ; 2 uses
  %i.byh = sext i8 %i.byg to i64
  %i.byi = shl nsw i64 %i.byh, 14
  %i.byj = and i64 %i.byi, 2080768
  %i.byk = or disjoint i64 %i.byj, %i.byd         ; 2 uses
  %i.byl = icmp sgt i8 %i.byg, -1
  br i1 %i.byl, label %bb.rz, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.bym = getelementptr inbounds nuw i8, ptr %i.bxn, i64 4 ; 2 uses
  %i.byn = load i8, ptr %i.byf, align 1, !tbaa !94 ; 2 uses
  %i.byo = sext i8 %i.byn to i64
  %i.byp = shl nsw i64 %i.byo, 21
  %i.byq = and i64 %i.byp, 266338304
  %i.byr = or disjoint i64 %i.byq, %i.byk         ; 2 uses
  %i.bys = icmp sgt i8 %i.byn, -1
  br i1 %i.bys, label %bb.rz, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bxn, i64 5 ; 2 uses
  %i.byu = load i8, ptr %i.bym, align 1, !tbaa !94 ; 2 uses
  %i.byv = sext i8 %i.byu to i64
  %i.byw = shl nsw i64 %i.byv, 28
  %i.byx = and i64 %i.byw, 34091302912
  %i.byy = or disjoint i64 %i.byx, %i.byr         ; 6 uses
  %i.byz = icmp sgt i8 %i.byu, -1
  br i1 %i.byz, label %bb.rz, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.bza = getelementptr inbounds nuw i8, ptr %i.bxn, i64 6 ; 2 uses
  %i.bzb = load i8, ptr %i.byt, align 1, !tbaa !94
  %i.bzc = icmp sgt i8 %i.bzb, -1
  br i1 %i.bzc, label %bb.rz, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bxn, i64 7 ; 2 uses
  %i.bze = load i8, ptr %i.bza, align 1, !tbaa !94
  %i.bzf = icmp sgt i8 %i.bze, -1
  br i1 %i.bzf, label %bb.rz, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bxn, i64 8 ; 2 uses
  %i.bzh = load i8, ptr %i.bzd, align 1, !tbaa !94
  %i.bzi = icmp sgt i8 %i.bzh, -1
  br i1 %i.bzi, label %bb.rz, label %bb.rt
end_hunk_6
begin_hunk_7_@_ZN16struct_pb_sample11deserializeIN9pb_sample8MonstersES2_EEv10SampleTypeRT_:bb.a
  %i.bzp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bzp, ptr noundef nonnull @.str.77)
          to label %.invoke14879 unwind label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.bzq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bzp) #28
  br label %.body.i

.lr.ph5784:                                       ; preds = %bb.rl, %bb.rx
  %indvars.iv10280 = phi i64 [ %indvars.iv.next10281, %bb.rx ], [ 0, %bb.rl ] ; 3 uses
  %.1.i.i85.i5782 = phi i64 [ %i.bzx, %bb.rx ], [ 0, %bb.rl ] ; 2 uses
  %.170.i.i84.i5781 = phi ptr [ %i.bzt, %bb.rx ], [ %i.bxn, %bb.rl ] ; 2 uses
  %i.bzr = load i8, ptr %.170.i.i84.i5781, align 1, !tbaa !94 ; 3 uses
  %i.bzs = icmp slt i8 %i.bzr, 0
  %i.bzt = getelementptr inbounds nuw i8, ptr %.170.i.i84.i5781, i64 1 ; 3 uses
  br i1 %i.bzs, label %bb.rx, label %.critedge.i.i88.i

bb.rx:                                            ; preds = %.lr.ph5784
  %i.bzu = and i8 %i.bzr, 127
  %i.bzv = zext nneg i8 %i.bzu to i64
  %i.bzw = shl i64 %i.bzv, %indvars.iv10280
  %i.bzx = or i64 %i.bzw, %.1.i.i85.i5782
  %indvars.iv.next10281 = add nuw nsw i64 %indvars.iv10280, 7
  %.not.i.i87.i = icmp eq ptr %i.bzt, %i.bxp
  br i1 %.not.i.i87.i, label %.preheader2053._crit_edge, label %.lr.ph5784, !llvm.loop !46

.preheader2053._crit_edge:                        ; preds = %bb.rx
  %i.bzy = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bzy, ptr noundef nonnull @.str.78)
          to label %.invoke14879 unwind label %bb.ry

bb.ry:                                            ; preds = %.preheader2053._crit_edge
  %i.bzz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bzy) #28
  br label %.body.i

.critedge.i.i88.i:                                ; preds = %.lr.ph5784
  %i.caa = zext nneg i8 %i.bzr to i64
  %i.cab = shl i64 %i.caa, %indvars.iv10280
  %i.cac = or i64 %i.cab, %.1.i.i85.i5782
  br label %bb.rz

bb.rz:                                            ; preds = %.critedge.i.i88.i, %bb.ru, %bb.rt, %bb.rs, %bb.rr, %bb.rq, %bb.rp, %bb.ro, %bb.rn, %bb.rm
  %.271.i.i89.i = phi ptr [ %i.bzt, %.critedge.i.i88.i ], [ %i.bzm, %bb.ru ], [ %i.bxy, %bb.rm ], [ %i.byf, %bb.rn ], [ %i.bym, %bb.ro ], [ %i.byt, %bb.rp ], [ %i.bza, %bb.rq ], [ %i.bzd, %bb.rr ], [ %i.bzg, %bb.rs ], [ %i.bzj, %bb.rt ]
  %.2.i.i90.i = phi i64 [ %i.cac, %.critedge.i.i88.i ], [ %i.byy, %bb.ru ], [ %i.byd, %bb.rm ], [ %i.byk, %bb.rn ], [ %i.byr, %bb.ro ], [ %i.byy, %bb.rp ], [ %i.byy, %bb.rq ], [ %i.byy, %bb.rr ], [ %i.byy, %bb.rs ], [ %i.byy, %bb.rt ]
  %i.cad = ptrtoint ptr %.271.i.i89.i to i64
  %i.cae = sub i64 %i.cad, %i.bxt
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i: ; preds = %bb.rk, %bb.rz
  %.17 = phi i64 [ 1, %bb.rk ], [ %i.cae, %bb.rz ]
  %.072.i.i92.i = phi i64 [ %i.bxs, %bb.rk ], [ %.2.i.i90.i, %bb.rz ]
  %i.caf = trunc i64 %.072.i.i92.i to i32         ; 2 uses
  %i.cag = and i32 %i.caf, 7
  %i.cah = lshr i32 %i.caf, 3                     ; 2 uses
  store i32 %i.cah, ptr %i.c, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread1861

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread1861: ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread1847, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i
  %.pr1884 = phi i32 [ %i.cah, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.pr1870, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread1847 ] ; 2 uses
  %.317681868 = phi i32 [ %i.cag, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.217671854, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread1847 ] ; 2 uses
  %.417781867 = phi i64 [ %.17, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.317771853, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread1847 ] ; 6 uses
  %.sroa.02.0.copyload.i95.i1869 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 96), align 8, !tbaa !249
  %.not.i96.i = icmp eq i32 %.pr1884, 5
  br i1 %.not.i96.i, label %bb.sa, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i.thread1875

bb.sa:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread1861
  %i.cai = load i64, ptr %19, align 8, !tbaa !438 ; 5 uses
  %i.caj = icmp ugt i64 %.417781867, %i.cai
  br i1 %i.caj, label %.invoke14877, label %.noexc237

.noexc237:                                        ; preds = %bb.sa
  %i.cak = sub nuw i64 %i.cai, %.417781867        ; 3 uses
  %i.cal = load ptr, ptr %i.yg, align 8, !tbaa !439 ; 2 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 %.417781867 ; 14 uses
  store i64 %i.cak, ptr %19, align 8, !tbaa !249
  store ptr %i.cam, ptr %i.yg, align 8, !tbaa !363
  %.not4.i98.i = icmp eq i32 %.317681868, 2
  br i1 %.not4.i98.i, label %bb.sd, label %bb.sb, !prof !257

bb.sb:                                            ; preds = %.noexc237
  %i.can = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.can, ptr noundef nonnull @.str.79)
          to label %.invoke14879 unwind label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.cao = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.can) #28
  br label %.body.i

bb.sd:                                            ; preds = %.noexc237
  %i.cap = getelementptr inbounds nuw i8, ptr %21, i64 %.sroa.02.0.copyload.i95.i1869 ; 7 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cal, i64 %i.cai
  %i.car = load i8, ptr %i.cam, align 1, !tbaa !94 ; 3 uses
  %i.cas = icmp sgt i8 %i.car, -1
  br i1 %i.cas, label %bb.se, label %bb.sf

bb.se:                                            ; preds = %bb.sd
  %i.cat = zext nneg i8 %i.car to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i

bb.sf:                                            ; preds = %bb.sd
  %i.cau = ptrtoint ptr %i.cam to i64
  %i.cav = icmp ugt i64 %i.cak, 9
  br i1 %i.cav, label %bb.sg, label %.preheader2052, !prof !257

.preheader2052:                                   ; preds = %bb.sf
  %.not.i.i.i102.i5788 = icmp samesign eq i64 %.417781867, %i.cai
  br i1 %.not.i.i.i102.i5788, label %.preheader2052._crit_edge, label %.lr.ph5792

bb.sg:                                            ; preds = %bb.sf
  %i.caw = and i8 %i.car, 127
  %i.cax = zext nneg i8 %i.caw to i64
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cam, i64 1
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cam, i64 2 ; 2 uses
  %i.cba = load i8, ptr %i.cay, align 1, !tbaa !94 ; 2 uses
  %i.cbb = sext i8 %i.cba to i64
  %i.cbc = shl nsw i64 %i.cbb, 7
  %i.cbd = and i64 %i.cbc, 16256
  %i.cbe = or disjoint i64 %i.cbd, %i.cax         ; 2 uses
  %i.cbf = icmp sgt i8 %i.cba, -1
  br i1 %i.cbf, label %bb.st, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cam, i64 3 ; 2 uses
  %i.cbh = load i8, ptr %i.caz, align 1, !tbaa !94 ; 2 uses
  %i.cbi = sext i8 %i.cbh to i64
  %i.cbj = shl nsw i64 %i.cbi, 14
  %i.cbk = and i64 %i.cbj, 2080768
  %i.cbl = or disjoint i64 %i.cbk, %i.cbe         ; 2 uses
  %i.cbm = icmp sgt i8 %i.cbh, -1
  br i1 %i.cbm, label %bb.st, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cam, i64 4 ; 2 uses
  %i.cbo = load i8, ptr %i.cbg, align 1, !tbaa !94 ; 2 uses
  %i.cbp = sext i8 %i.cbo to i64
  %i.cbq = shl nsw i64 %i.cbp, 21
  %i.cbr = and i64 %i.cbq, 266338304
  %i.cbs = or disjoint i64 %i.cbr, %i.cbl         ; 2 uses
  %i.cbt = icmp sgt i8 %i.cbo, -1
  br i1 %i.cbt, label %bb.st, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cam, i64 5 ; 2 uses
  %i.cbv = load i8, ptr %i.cbn, align 1, !tbaa !94 ; 2 uses
  %i.cbw = sext i8 %i.cbv to i64
  %i.cbx = shl nsw i64 %i.cbw, 28
  %i.cby = and i64 %i.cbx, 34091302912
  %i.cbz = or disjoint i64 %i.cby, %i.cbs         ; 2 uses
  %i.cca = icmp sgt i8 %i.cbv, -1
  br i1 %i.cca, label %bb.st, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cam, i64 6 ; 2 uses
  %i.ccc = load i8, ptr %i.cbu, align 1, !tbaa !94 ; 2 uses
  %i.ccd = sext i8 %i.ccc to i64
  %i.cce = shl nsw i64 %i.ccd, 35
  %i.ccf = and i64 %i.cce, 4363686772736
  %i.ccg = or disjoint i64 %i.ccf, %i.cbz         ; 2 uses
  %i.cch = icmp sgt i8 %i.ccc, -1
  br i1 %i.cch, label %bb.st, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cam, i64 7 ; 2 uses
  %i.ccj = load i8, ptr %i.ccb, align 1, !tbaa !94 ; 2 uses
  %i.cck = sext i8 %i.ccj to i64
  %i.ccl = shl nsw i64 %i.cck, 42
  %i.ccm = and i64 %i.ccl, 558551906910208
  %i.ccn = or i64 %i.ccm, %i.ccg                  ; 2 uses
  %i.cco = icmp sgt i8 %i.ccj, -1
  br i1 %i.cco, label %bb.st, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cam, i64 8 ; 2 uses
  %i.ccq = load i8, ptr %i.cci, align 1, !tbaa !94 ; 2 uses
  %i.ccr = sext i8 %i.ccq to i64
  %i.ccs = shl nsw i64 %i.ccr, 49
  %i.cct = and i64 %i.ccs, 71494644084506624
  %i.ccu = or i64 %i.cct, %i.ccn                  ; 2 uses
  %i.ccv = icmp sgt i8 %i.ccq, -1
  br i1 %i.ccv, label %bb.st, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.cam, i64 9 ; 2 uses
  %i.ccx = load i8, ptr %i.ccp, align 1, !tbaa !94 ; 2 uses
  %i.ccy = sext i8 %i.ccx to i64
  %i.ccz = shl nsw i64 %i.ccy, 56
  %i.cda = and i64 %i.ccz, 9151314442816847872
  %i.cdb = or i64 %i.cda, %i.ccu                  ; 2 uses
  %i.cdc = icmp sgt i8 %i.ccx, -1
  br i1 %i.cdc, label %bb.st, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.cam, i64 10
  %i.cde = load i8, ptr %i.ccw, align 1, !tbaa !94 ; 2 uses
  %i.cdf = zext i8 %i.cde to i64
  %i.cdg = shl i64 %i.cdf, 63
  %i.cdh = or i64 %i.cdg, %i.cdb
  %i.cdi = icmp sgt i8 %i.cde, -1
  br i1 %i.cdi, label %bb.st, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.cdj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cdj, ptr noundef nonnull @.str.77)
          to label %.invoke14879 unwind label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.cdk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cdj) #28
  br label %.body.i

.lr.ph5792:                                       ; preds = %.preheader2052, %bb.sr
  %indvars.iv10283 = phi i64 [ %indvars.iv.next10284, %bb.sr ], [ 0, %.preheader2052 ] ; 3 uses
  %.1.i.i.i100.i5790 = phi i64 [ %i.cdr, %bb.sr ], [ 0, %.preheader2052 ] ; 2 uses
  %.170.i.i.i99.i5789 = phi ptr [ %i.cdn, %bb.sr ], [ %i.cam, %.preheader2052 ] ; 2 uses
  %i.cdl = load i8, ptr %.170.i.i.i99.i5789, align 1, !tbaa !94 ; 3 uses
  %i.cdm = icmp slt i8 %i.cdl, 0
  %i.cdn = getelementptr inbounds nuw i8, ptr %.170.i.i.i99.i5789, i64 1 ; 3 uses
  br i1 %i.cdm, label %bb.sr, label %.critedge.i.i.i103.i

bb.sr:                                            ; preds = %.lr.ph5792
  %i.cdo = and i8 %i.cdl, 127
  %i.cdp = zext nneg i8 %i.cdo to i64
  %i.cdq = shl i64 %i.cdp, %indvars.iv10283
  %i.cdr = or i64 %i.cdq, %.1.i.i.i100.i5790
  %indvars.iv.next10284 = add nuw nsw i64 %indvars.iv10283, 7
  %.not.i.i.i102.i = icmp eq ptr %i.cdn, %i.caq
  br i1 %.not.i.i.i102.i, label %.preheader2052._crit_edge, label %.lr.ph5792, !llvm.loop !46

.preheader2052._crit_edge:                        ; preds = %.preheader2052, %bb.sr
  %i.cds = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cds, ptr noundef nonnull @.str.78)
          to label %.invoke14879 unwind label %bb.ss

bb.ss:                                            ; preds = %.preheader2052._crit_edge
  %i.cdt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cds) #28
  br label %.body.i

.critedge.i.i.i103.i:                             ; preds = %.lr.ph5792
  %i.cdu = zext nneg i8 %i.cdl to i64
  %i.cdv = shl i64 %i.cdu, %indvars.iv10283
  %i.cdw = or i64 %i.cdv, %.1.i.i.i100.i5790
  br label %bb.st

bb.st:                                            ; preds = %.critedge.i.i.i103.i, %bb.so, %bb.sn, %bb.sm, %bb.sl, %bb.sk, %bb.sj, %bb.si, %bb.sh, %bb.sg
  %.271.i.i.i104.i = phi ptr [ %i.cdn, %.critedge.i.i.i103.i ], [ %i.cdd, %bb.so ], [ %i.caz, %bb.sg ], [ %i.cbg, %bb.sh ], [ %i.cbn, %bb.si ], [ %i.cbu, %bb.sj ], [ %i.ccb, %bb.sk ], [ %i.cci, %bb.sl ], [ %i.ccp, %bb.sm ], [ %i.ccw, %bb.sn ]
  %.2.i.i.i105.i = phi i64 [ %i.cdw, %.critedge.i.i.i103.i ], [ %i.cdh, %bb.so ], [ %i.cbe, %bb.sg ], [ %i.cbl, %bb.sh ], [ %i.cbs, %bb.si ], [ %i.cbz, %bb.sj ], [ %i.ccg, %bb.sk ], [ %i.ccn, %bb.sl ], [ %i.ccu, %bb.sm ], [ %i.cdb, %bb.sn ]
  %i.cdx = ptrtoint ptr %.271.i.i.i104.i to i64
  %i.cdy = sub i64 %i.cdx, %i.cau
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i: ; preds = %bb.st, %bb.se
  %.01393 = phi i64 [ 1, %bb.se ], [ %i.cdy, %bb.st ] ; 2 uses
  %.072.i.i.i107.i = phi i64 [ %i.cat, %bb.se ], [ %.2.i.i.i105.i, %bb.st ] ; 7 uses
  %i.cdz = add i64 %.072.i.i.i107.i, %.01393      ; 6 uses
  %i.cea = icmp ult i64 %i.cak, %i.cdz
  br i1 %i.cea, label %bb.su, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i, !prof !169

bb.su:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i
  %i.ceb = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ceb, ptr noundef nonnull @.str.89)
          to label %.invoke14879 unwind label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.cec = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ceb) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i
  %i.ced = load ptr, ptr %i.cap, align 8, !tbaa !95 ; 2 uses
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cap, i64 16 ; 2 uses
  %i.cef = icmp eq ptr %i.ced, %i.cee
  br i1 %i.cef, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i
  %i.ceg = load i64, ptr %i.cee, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i440: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439
  %i.ceh = phi i64 [ %i.ceg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i ]
  %i.cei = icmp ugt i64 %.072.i.i.i107.i, %i.ceh
  br i1 %i.cei, label %bb.sw, label %.noexc242

bb.sw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i440
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cap, i64 noundef %.072.i.i.i107.i)
          to label %.noexc443 unwind label %.loopexit.split-lp2028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc443:                                        ; preds = %bb.sw
  %.pre.i441 = load ptr, ptr %i.cap, align 8, !tbaa !95
  br label %.noexc242

.noexc242:                                        ; preds = %.noexc443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i440
  %i.cej = phi ptr [ %.pre.i441, %.noexc443 ], [ %i.ced, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i440 ]
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cap, i64 8
  store i64 %.072.i.i.i107.i, ptr %i.cek, align 8, !tbaa !93
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cej, i64 %.072.i.i.i107.i
  store i8 0, ptr %i.cel, align 1, !tbaa !94
  %i.cem = load ptr, ptr %i.cap, align 8, !tbaa !95
  %i.cen = getelementptr inbounds nuw i8, ptr %i.cem, i64 %.072.i.i.i107.i
  store i8 0, ptr %i.cen, align 1, !tbaa !94
  %i.ceo = load ptr, ptr %i.cap, align 8, !tbaa !95
  %i.cep = load ptr, ptr %i.yg, align 8, !tbaa !439
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cep, i64 %.01393
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ceo, ptr align 1 %i.ceq, i64 %.072.i.i.i107.i, i1 false)
  %i.cer = load i64, ptr %19, align 8, !tbaa !438 ; 5 uses
  %i.ces = icmp ugt i64 %i.cdz, %i.cer
  br i1 %i.ces, label %.invoke14877, label %.noexc243

.noexc243:                                        ; preds = %.noexc242
  %i.cet = sub nuw i64 %i.cer, %i.cdz             ; 2 uses
  %i.ceu = load ptr, ptr %i.yg, align 8, !tbaa !439 ; 2 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 %i.cdz ; 14 uses
  store i64 %i.cet, ptr %19, align 8, !tbaa !249
  store ptr %i.cev, ptr %i.yg, align 8, !tbaa !363
  %i.cew = icmp eq i64 %i.cer, %i.cdz
  br i1 %i.cew, label %.critedge.i18.i, label %bb.sx

bb.sx:                                            ; preds = %.noexc243
  %i.cex = getelementptr inbounds nuw i8, ptr %i.ceu, i64 %i.cer
  %i.cey = load i8, ptr %i.cev, align 1, !tbaa !94 ; 3 uses
  %i.cez = icmp sgt i8 %i.cey, -1
  br i1 %i.cez, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %bb.sx
  %i.cfa = zext nneg i8 %i.cey to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i

bb.sz:                                            ; preds = %bb.sx
  %i.cfb = ptrtoint ptr %i.cev to i64
  %i.cfc = icmp ugt i64 %i.cet, 9
  br i1 %i.cfc, label %bb.ta, label %.lr.ph5800, !prof !257

bb.ta:                                            ; preds = %bb.sz
  %i.cfd = and i8 %i.cey, 127
  %i.cfe = zext nneg i8 %i.cfd to i64
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cev, i64 1
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cev, i64 2 ; 2 uses
  %i.cfh = load i8, ptr %i.cff, align 1, !tbaa !94 ; 2 uses
  %i.cfi = sext i8 %i.cfh to i64
  %i.cfj = shl nsw i64 %i.cfi, 7
  %i.cfk = and i64 %i.cfj, 16256
  %i.cfl = or disjoint i64 %i.cfk, %i.cfe         ; 2 uses
  %i.cfm = icmp sgt i8 %i.cfh, -1
  br i1 %i.cfm, label %bb.tn, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.cfn = getelementptr inbounds nuw i8, ptr %i.cev, i64 3 ; 2 uses
  %i.cfo = load i8, ptr %i.cfg, align 1, !tbaa !94 ; 2 uses
  %i.cfp = sext i8 %i.cfo to i64
  %i.cfq = shl nsw i64 %i.cfp, 14
  %i.cfr = and i64 %i.cfq, 2080768
  %i.cfs = or disjoint i64 %i.cfr, %i.cfl         ; 2 uses
  %i.cft = icmp sgt i8 %i.cfo, -1
  br i1 %i.cft, label %bb.tn, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.cfu = getelementptr inbounds nuw i8, ptr %i.cev, i64 4 ; 2 uses
  %i.cfv = load i8, ptr %i.cfn, align 1, !tbaa !94 ; 2 uses
  %i.cfw = sext i8 %i.cfv to i64
  %i.cfx = shl nsw i64 %i.cfw, 21
  %i.cfy = and i64 %i.cfx, 266338304
  %i.cfz = or disjoint i64 %i.cfy, %i.cfs         ; 2 uses
  %i.cga = icmp sgt i8 %i.cfv, -1
  br i1 %i.cga, label %bb.tn, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cev, i64 5 ; 2 uses
  %i.cgc = load i8, ptr %i.cfu, align 1, !tbaa !94 ; 2 uses
  %i.cgd = sext i8 %i.cgc to i64
  %i.cge = shl nsw i64 %i.cgd, 28
  %i.cgf = and i64 %i.cge, 34091302912
  %i.cgg = or disjoint i64 %i.cgf, %i.cfz         ; 6 uses
  %i.cgh = icmp sgt i8 %i.cgc, -1
  br i1 %i.cgh, label %bb.tn, label %bb.te

bb.te:                                            ; preds = %bb.td
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cev, i64 6 ; 2 uses
  %i.cgj = load i8, ptr %i.cgb, align 1, !tbaa !94
  %i.cgk = icmp sgt i8 %i.cgj, -1
  br i1 %i.cgk, label %bb.tn, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cev, i64 7 ; 2 uses
  %i.cgm = load i8, ptr %i.cgi, align 1, !tbaa !94
  %i.cgn = icmp sgt i8 %i.cgm, -1
  br i1 %i.cgn, label %bb.tn, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cev, i64 8 ; 2 uses
  %i.cgp = load i8, ptr %i.cgl, align 1, !tbaa !94
  %i.cgq = icmp sgt i8 %i.cgp, -1
  br i1 %i.cgq, label %bb.tn, label %bb.th
end_hunk_7
begin_hunk_8_@_ZN16struct_pb_sample11deserializeIN9pb_sample8MonstersES2_EEv10SampleTypeRT_:bb.a
  %indvars.iv10298 = phi i64 [ %indvars.iv.next10299, %bb.wn ], [ 0, %bb.wb ] ; 3 uses
  %.1.i13.i335.i5836 = phi i64 [ %i.csy, %bb.wn ], [ 0, %bb.wb ] ; 2 uses
  %.170.i12.i334.i5835 = phi ptr [ %i.csu, %bb.wn ], [ %i.cqk, %bb.wb ] ; 2 uses
  %i.css = load i8, ptr %.170.i12.i334.i5835, align 1, !tbaa !94 ; 3 uses
  %i.cst = icmp slt i8 %i.css, 0
  %i.csu = getelementptr inbounds nuw i8, ptr %.170.i12.i334.i5835, i64 1 ; 3 uses
  br i1 %i.cst, label %bb.wn, label %.critedge.i16.i338.i

bb.wn:                                            ; preds = %.lr.ph5838
  %i.csv = and i8 %i.css, 127
  %i.csw = zext nneg i8 %i.csv to i64
  %i.csx = shl i64 %i.csw, %indvars.iv10298
  %i.csy = or i64 %i.csx, %.1.i13.i335.i5836
  %indvars.iv.next10299 = add nuw nsw i64 %indvars.iv10298, 7
  %.not.i15.i337.i = icmp eq ptr %i.csu, %i.cqq
  br i1 %.not.i15.i337.i, label %.preheader2022._crit_edge, label %.lr.ph5838, !llvm.loop !46

.preheader2022._crit_edge:                        ; preds = %bb.wn
  %i.csz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.csz, ptr noundef nonnull @.str.78)
          to label %.invoke unwind label %bb.wo

bb.wo:                                            ; preds = %.preheader2022._crit_edge
  %i.cta = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.csz) #28
  br label %.body.i.i

.critedge.i16.i338.i:                             ; preds = %.lr.ph5838
  %i.ctb = zext nneg i8 %i.css to i64
  %i.ctc = shl i64 %i.ctb, %indvars.iv10298
  %i.ctd = or i64 %i.ctc, %.1.i13.i335.i5836
  br label %bb.wp

bb.wp:                                            ; preds = %.critedge.i16.i338.i, %bb.wk, %bb.wj, %bb.wi, %bb.wh, %bb.wg, %bb.wf, %bb.we, %bb.wd, %bb.wc
  %.271.i17.i339.i = phi ptr [ %i.csu, %.critedge.i16.i338.i ], [ %i.csn, %bb.wk ], [ %i.cqz, %bb.wc ], [ %i.crg, %bb.wd ], [ %i.crn, %bb.we ], [ %i.cru, %bb.wf ], [ %i.csb, %bb.wg ], [ %i.cse, %bb.wh ], [ %i.csh, %bb.wi ], [ %i.csk, %bb.wj ]
  %.2.i18.i340.i = phi i64 [ %i.ctd, %.critedge.i16.i338.i ], [ %i.crz, %bb.wk ], [ %i.cre, %bb.wc ], [ %i.crl, %bb.wd ], [ %i.crs, %bb.we ], [ %i.crz, %bb.wf ], [ %i.crz, %bb.wg ], [ %i.crz, %bb.wh ], [ %i.crz, %bb.wi ], [ %i.crz, %bb.wj ]
  %i.cte = ptrtoint ptr %.271.i17.i339.i to i64
  %i.ctf = sub i64 %i.cte, %i.cqu
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i: ; preds = %bb.wp, %bb.wa
  %.01725 = phi i64 [ 1, %bb.wa ], [ %i.ctf, %bb.wp ] ; 6 uses
  %.072.i19.i342.i = phi i64 [ %i.cqt, %bb.wa ], [ %.2.i18.i340.i, %bb.wp ]
  %i.ctg = trunc i64 %.072.i19.i342.i to i32      ; 2 uses
  %i.cth = and i32 %i.ctg, 7                      ; 2 uses
  %i.cti = lshr i32 %i.ctg, 3                     ; 2 uses
  %i.ctj = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.ctk = icmp eq i8 %i.ctj, 0
  br i1 %i.ctk, label %bb.wq, label %bb.wt, !prof !173

bb.wq:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i
  %i.ctl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i356.i = icmp eq i32 %i.ctl, 0
  br i1 %.not.i356.i, label %bb.wt, label %bb.wr

bb.wr:                                            ; preds = %bb.wq
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %bb.ws unwind label %bb.zu

bb.ws:                                            ; preds = %bb.wr
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.wt

bb.wt:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i, %bb.wq, %bb.ws
  %.sroa.02.0.copyload.i397.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %.not.i398.i = icmp eq i32 %i.cti, 1
  %.pre10383.pre = load i64, ptr %12, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i398.i, label %bb.wu, label %bb.yi

bb.wu:                                            ; preds = %bb.wt
  %i.ctm = icmp ugt i64 %.01725, %.pre10383.pre
  br i1 %i.ctm, label %.invoke14871, label %.noexc423.i

.noexc423.i:                                      ; preds = %bb.wu
  %i.ctn = sub nuw i64 %.pre10383.pre, %.01725    ; 3 uses
  %i.cto = load ptr, ptr %i.yp, align 8, !tbaa !439 ; 2 uses
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cto, i64 %.01725 ; 14 uses
  store i64 %i.ctn, ptr %12, align 8, !tbaa !249
  store ptr %i.ctp, ptr %i.yp, align 8, !tbaa !363
  %.not4.i400.i = icmp eq i32 %i.cth, 2
  br i1 %.not4.i400.i, label %bb.wx, label %bb.wv, !prof !257

bb.wv:                                            ; preds = %.noexc423.i
  %i.ctq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ctq, ptr noundef nonnull @.str.79)
          to label %.invoke unwind label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %i.ctr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ctq) #28
  br label %.body.i.i

bb.wx:                                            ; preds = %.noexc423.i
  %i.cts = getelementptr inbounds nuw i8, ptr %16, i64 %.sroa.02.0.copyload.i397.i ; 7 uses
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.cto, i64 %.pre10383.pre
  %i.ctu = load i8, ptr %i.ctp, align 1, !tbaa !94 ; 3 uses
  %i.ctv = icmp sgt i8 %i.ctu, -1
  br i1 %i.ctv, label %bb.wy, label %bb.wz

bb.wy:                                            ; preds = %bb.wx
  %i.ctw = zext nneg i8 %i.ctu to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i

bb.wz:                                            ; preds = %bb.wx
  %i.ctx = ptrtoint ptr %i.ctp to i64
  %i.cty = icmp ugt i64 %i.ctn, 9
  br i1 %i.cty, label %bb.xa, label %.preheader2021, !prof !257

.preheader2021:                                   ; preds = %bb.wz
  %.not.i.i.i404.i5848 = icmp samesign eq i64 %.01725, %.pre10383.pre
  br i1 %.not.i.i.i404.i5848, label %.preheader2021._crit_edge, label %.lr.ph5852

bb.xa:                                            ; preds = %bb.wz
  %i.ctz = and i8 %i.ctu, 127
  %i.cua = zext nneg i8 %i.ctz to i64
  %i.cub = getelementptr inbounds nuw i8, ptr %i.ctp, i64 1
  %i.cuc = getelementptr inbounds nuw i8, ptr %i.ctp, i64 2 ; 2 uses
  %i.cud = load i8, ptr %i.cub, align 1, !tbaa !94 ; 2 uses
  %i.cue = sext i8 %i.cud to i64
  %i.cuf = shl nsw i64 %i.cue, 7
  %i.cug = and i64 %i.cuf, 16256
  %i.cuh = or disjoint i64 %i.cug, %i.cua         ; 2 uses
  %i.cui = icmp sgt i8 %i.cud, -1
  br i1 %i.cui, label %bb.xn, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.ctp, i64 3 ; 2 uses
  %i.cuk = load i8, ptr %i.cuc, align 1, !tbaa !94 ; 2 uses
  %i.cul = sext i8 %i.cuk to i64
  %i.cum = shl nsw i64 %i.cul, 14
  %i.cun = and i64 %i.cum, 2080768
  %i.cuo = or disjoint i64 %i.cun, %i.cuh         ; 2 uses
  %i.cup = icmp sgt i8 %i.cuk, -1
  br i1 %i.cup, label %bb.xn, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.ctp, i64 4 ; 2 uses
  %i.cur = load i8, ptr %i.cuj, align 1, !tbaa !94 ; 2 uses
  %i.cus = sext i8 %i.cur to i64
  %i.cut = shl nsw i64 %i.cus, 21
  %i.cuu = and i64 %i.cut, 266338304
  %i.cuv = or disjoint i64 %i.cuu, %i.cuo         ; 2 uses
  %i.cuw = icmp sgt i8 %i.cur, -1
  br i1 %i.cuw, label %bb.xn, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.cux = getelementptr inbounds nuw i8, ptr %i.ctp, i64 5 ; 2 uses
  %i.cuy = load i8, ptr %i.cuq, align 1, !tbaa !94 ; 2 uses
  %i.cuz = sext i8 %i.cuy to i64
  %i.cva = shl nsw i64 %i.cuz, 28
  %i.cvb = and i64 %i.cva, 34091302912
  %i.cvc = or disjoint i64 %i.cvb, %i.cuv         ; 2 uses
  %i.cvd = icmp sgt i8 %i.cuy, -1
  br i1 %i.cvd, label %bb.xn, label %bb.xe

bb.xe:                                            ; preds = %bb.xd
  %i.cve = getelementptr inbounds nuw i8, ptr %i.ctp, i64 6 ; 2 uses
  %i.cvf = load i8, ptr %i.cux, align 1, !tbaa !94 ; 2 uses
  %i.cvg = sext i8 %i.cvf to i64
  %i.cvh = shl nsw i64 %i.cvg, 35
  %i.cvi = and i64 %i.cvh, 4363686772736
  %i.cvj = or disjoint i64 %i.cvi, %i.cvc         ; 2 uses
  %i.cvk = icmp sgt i8 %i.cvf, -1
  br i1 %i.cvk, label %bb.xn, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.ctp, i64 7 ; 2 uses
  %i.cvm = load i8, ptr %i.cve, align 1, !tbaa !94 ; 2 uses
  %i.cvn = sext i8 %i.cvm to i64
  %i.cvo = shl nsw i64 %i.cvn, 42
  %i.cvp = and i64 %i.cvo, 558551906910208
  %i.cvq = or i64 %i.cvp, %i.cvj                  ; 2 uses
  %i.cvr = icmp sgt i8 %i.cvm, -1
  br i1 %i.cvr, label %bb.xn, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.ctp, i64 8 ; 2 uses
  %i.cvt = load i8, ptr %i.cvl, align 1, !tbaa !94 ; 2 uses
  %i.cvu = sext i8 %i.cvt to i64
  %i.cvv = shl nsw i64 %i.cvu, 49
  %i.cvw = and i64 %i.cvv, 71494644084506624
  %i.cvx = or i64 %i.cvw, %i.cvq                  ; 2 uses
  %i.cvy = icmp sgt i8 %i.cvt, -1
  br i1 %i.cvy, label %bb.xn, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.ctp, i64 9 ; 2 uses
  %i.cwa = load i8, ptr %i.cvs, align 1, !tbaa !94 ; 2 uses
  %i.cwb = sext i8 %i.cwa to i64
  %i.cwc = shl nsw i64 %i.cwb, 56
  %i.cwd = and i64 %i.cwc, 9151314442816847872
  %i.cwe = or i64 %i.cwd, %i.cvx                  ; 2 uses
  %i.cwf = icmp sgt i8 %i.cwa, -1
  br i1 %i.cwf, label %bb.xn, label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.ctp, i64 10
  %i.cwh = load i8, ptr %i.cvz, align 1, !tbaa !94 ; 2 uses
  %i.cwi = zext i8 %i.cwh to i64
  %i.cwj = shl i64 %i.cwi, 63
  %i.cwk = or i64 %i.cwj, %i.cwe
  %i.cwl = icmp sgt i8 %i.cwh, -1
  br i1 %i.cwl, label %bb.xn, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.cwm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cwm, ptr noundef nonnull @.str.77)
          to label %.invoke unwind label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.cwn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cwm) #28
  br label %.body.i.i

.lr.ph5852:                                       ; preds = %.preheader2021, %bb.xl
  %indvars.iv10301 = phi i64 [ %indvars.iv.next10302, %bb.xl ], [ 0, %.preheader2021 ] ; 3 uses
  %.1.i.i.i402.i5850 = phi i64 [ %i.cwu, %bb.xl ], [ 0, %.preheader2021 ] ; 2 uses
  %.170.i.i.i401.i5849 = phi ptr [ %i.cwq, %bb.xl ], [ %i.ctp, %.preheader2021 ] ; 2 uses
  %i.cwo = load i8, ptr %.170.i.i.i401.i5849, align 1, !tbaa !94 ; 3 uses
  %i.cwp = icmp slt i8 %i.cwo, 0
  %i.cwq = getelementptr inbounds nuw i8, ptr %.170.i.i.i401.i5849, i64 1 ; 3 uses
  br i1 %i.cwp, label %bb.xl, label %.critedge.i.i.i405.i

bb.xl:                                            ; preds = %.lr.ph5852
  %i.cwr = and i8 %i.cwo, 127
  %i.cws = zext nneg i8 %i.cwr to i64
  %i.cwt = shl i64 %i.cws, %indvars.iv10301
  %i.cwu = or i64 %i.cwt, %.1.i.i.i402.i5850
  %indvars.iv.next10302 = add nuw nsw i64 %indvars.iv10301, 7
  %.not.i.i.i404.i = icmp eq ptr %i.cwq, %i.ctt
  br i1 %.not.i.i.i404.i, label %.preheader2021._crit_edge, label %.lr.ph5852, !llvm.loop !46

.preheader2021._crit_edge:                        ; preds = %.preheader2021, %bb.xl
  %i.cwv = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cwv, ptr noundef nonnull @.str.78)
          to label %.invoke unwind label %bb.xm

bb.xm:                                            ; preds = %.preheader2021._crit_edge
  %i.cww = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cwv) #28
  br label %.body.i.i

.critedge.i.i.i405.i:                             ; preds = %.lr.ph5852
  %i.cwx = zext nneg i8 %i.cwo to i64
  %i.cwy = shl i64 %i.cwx, %indvars.iv10301
  %i.cwz = or i64 %i.cwy, %.1.i.i.i402.i5850
  br label %bb.xn

bb.xn:                                            ; preds = %.critedge.i.i.i405.i, %bb.xi, %bb.xh, %bb.xg, %bb.xf, %bb.xe, %bb.xd, %bb.xc, %bb.xb, %bb.xa
  %.271.i.i.i406.i = phi ptr [ %i.cwq, %.critedge.i.i.i405.i ], [ %i.cwg, %bb.xi ], [ %i.cuc, %bb.xa ], [ %i.cuj, %bb.xb ], [ %i.cuq, %bb.xc ], [ %i.cux, %bb.xd ], [ %i.cve, %bb.xe ], [ %i.cvl, %bb.xf ], [ %i.cvs, %bb.xg ], [ %i.cvz, %bb.xh ]
  %.2.i.i.i407.i = phi i64 [ %i.cwz, %.critedge.i.i.i405.i ], [ %i.cwk, %bb.xi ], [ %i.cuh, %bb.xa ], [ %i.cuo, %bb.xb ], [ %i.cuv, %bb.xc ], [ %i.cvc, %bb.xd ], [ %i.cvj, %bb.xe ], [ %i.cvq, %bb.xf ], [ %i.cvx, %bb.xg ], [ %i.cwe, %bb.xh ]
  %i.cxa = ptrtoint ptr %.271.i.i.i406.i to i64
  %i.cxb = sub i64 %i.cxa, %i.ctx
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i: ; preds = %bb.xn, %bb.wy
  %.01382 = phi i64 [ 1, %bb.wy ], [ %i.cxb, %bb.xn ] ; 2 uses
  %.072.i.i.i409.i = phi i64 [ %i.ctw, %bb.wy ], [ %.2.i.i.i407.i, %bb.xn ] ; 7 uses
  %i.cxc = add i64 %.072.i.i.i409.i, %.01382      ; 6 uses
  %i.cxd = icmp ult i64 %i.ctn, %i.cxc
  br i1 %i.cxd, label %bb.xo, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i, !prof !169

bb.xo:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i
  %i.cxe = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cxe, ptr noundef nonnull @.str.89)
          to label %.invoke unwind label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cxf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cxe) #28
  br label %.body.i.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i
  %i.cxg = load ptr, ptr %i.cts, align 8, !tbaa !95 ; 2 uses
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cts, i64 16 ; 2 uses
  %i.cxi = icmp eq ptr %i.cxg, %i.cxh
  br i1 %i.cxi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i
  %i.cxj = load i64, ptr %i.cxh, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i483

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i483: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482
  %i.cxk = phi i64 [ %i.cxj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i ]
  %i.cxl = icmp ugt i64 %.072.i.i.i409.i, %i.cxk
  br i1 %i.cxl, label %bb.xq, label %.noexc430.i

bb.xq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i483
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cts, i64 noundef %.072.i.i.i409.i)
          to label %.noexc486 unwind label %.loopexit.split-lp2014.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc486:                                        ; preds = %bb.xq
  %.pre.i484 = load ptr, ptr %i.cts, align 8, !tbaa !95
  br label %.noexc430.i

.noexc430.i:                                      ; preds = %.noexc486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i483
  %i.cxm = phi ptr [ %.pre.i484, %.noexc486 ], [ %i.cxg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i483 ]
  %i.cxn = getelementptr inbounds nuw i8, ptr %i.cts, i64 8
  store i64 %.072.i.i.i409.i, ptr %i.cxn, align 8, !tbaa !93
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxm, i64 %.072.i.i.i409.i
  store i8 0, ptr %i.cxo, align 1, !tbaa !94
  %i.cxp = load ptr, ptr %i.cts, align 8, !tbaa !95
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxp, i64 %.072.i.i.i409.i
  store i8 0, ptr %i.cxq, align 1, !tbaa !94
  %i.cxr = load ptr, ptr %i.cts, align 8, !tbaa !95
  %i.cxs = load ptr, ptr %i.yp, align 8, !tbaa !439
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cxs, i64 %.01382
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cxr, ptr align 1 %i.cxt, i64 %.072.i.i.i409.i, i1 false)
  %i.cxu = load i64, ptr %12, align 8, !tbaa !438 ; 5 uses
  %i.cxv = icmp ugt i64 %i.cxc, %i.cxu
  br i1 %i.cxv, label %.invoke14871, label %.noexc431.i

.noexc431.i:                                      ; preds = %.noexc430.i
  %i.cxw = sub nuw i64 %i.cxu, %i.cxc             ; 3 uses
  %i.cxx = load ptr, ptr %i.yp, align 8, !tbaa !439 ; 2 uses
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cxx, i64 %i.cxc ; 14 uses
  store i64 %i.cxw, ptr %12, align 8, !tbaa !249
  store ptr %i.cxy, ptr %i.yp, align 8, !tbaa !363
  %i.cxz = icmp eq i64 %i.cxu, %i.cxc
  br i1 %i.cxz, label %_ZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEE.exit368.i, label %bb.xr

bb.xr:                                            ; preds = %.noexc431.i
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxx, i64 %i.cxu
  %i.cyb = load i8, ptr %i.cxy, align 1, !tbaa !94 ; 3 uses
  %i.cyc = icmp sgt i8 %i.cyb, -1
  br i1 %i.cyc, label %bb.xs, label %bb.xt

bb.xs:                                            ; preds = %bb.xr
  %i.cyd = zext nneg i8 %i.cyb to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i419.i

bb.xt:                                            ; preds = %bb.xr
  %i.cye = ptrtoint ptr %i.cxy to i64
  %i.cyf = icmp ugt i64 %i.cxw, 9
  br i1 %i.cyf, label %bb.xu, label %.lr.ph5866, !prof !257

bb.xu:                                            ; preds = %bb.xt
  %i.cyg = and i8 %i.cyb, 127
  %i.cyh = zext nneg i8 %i.cyg to i64
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cxy, i64 1
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cxy, i64 2 ; 2 uses
  %i.cyk = load i8, ptr %i.cyi, align 1, !tbaa !94 ; 2 uses
  %i.cyl = sext i8 %i.cyk to i64
  %i.cym = shl nsw i64 %i.cyl, 7
  %i.cyn = and i64 %i.cym, 16256
  %i.cyo = or disjoint i64 %i.cyn, %i.cyh         ; 2 uses
  %i.cyp = icmp sgt i8 %i.cyk, -1
  br i1 %i.cyp, label %bb.yh, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cxy, i64 3 ; 2 uses
  %i.cyr = load i8, ptr %i.cyj, align 1, !tbaa !94 ; 2 uses
  %i.cys = sext i8 %i.cyr to i64
  %i.cyt = shl nsw i64 %i.cys, 14
  %i.cyu = and i64 %i.cyt, 2080768
  %i.cyv = or disjoint i64 %i.cyu, %i.cyo         ; 2 uses
  %i.cyw = icmp sgt i8 %i.cyr, -1
  br i1 %i.cyw, label %bb.yh, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cyx = getelementptr inbounds nuw i8, ptr %i.cxy, i64 4 ; 2 uses
  %i.cyy = load i8, ptr %i.cyq, align 1, !tbaa !94 ; 2 uses
  %i.cyz = sext i8 %i.cyy to i64
  %i.cza = shl nsw i64 %i.cyz, 21
  %i.czb = and i64 %i.cza, 266338304
  %i.czc = or disjoint i64 %i.czb, %i.cyv         ; 2 uses
  %i.czd = icmp sgt i8 %i.cyy, -1
  br i1 %i.czd, label %bb.yh, label %bb.xx

bb.xx:                                            ; preds = %bb.xw
  %i.cze = getelementptr inbounds nuw i8, ptr %i.cxy, i64 5 ; 2 uses
  %i.czf = load i8, ptr %i.cyx, align 1, !tbaa !94 ; 2 uses
  %i.czg = sext i8 %i.czf to i64
  %i.czh = shl nsw i64 %i.czg, 28
  %i.czi = and i64 %i.czh, 34091302912
  %i.czj = or disjoint i64 %i.czi, %i.czc         ; 6 uses
  %i.czk = icmp sgt i8 %i.czf, -1
  br i1 %i.czk, label %bb.yh, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  %i.czl = getelementptr inbounds nuw i8, ptr %i.cxy, i64 6 ; 2 uses
  %i.czm = load i8, ptr %i.cze, align 1, !tbaa !94
  %i.czn = icmp sgt i8 %i.czm, -1
  br i1 %i.czn, label %bb.yh, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cxy, i64 7 ; 2 uses
  %i.czp = load i8, ptr %i.czl, align 1, !tbaa !94
  %i.czq = icmp sgt i8 %i.czp, -1
  br i1 %i.czq, label %bb.yh, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.czr = getelementptr inbounds nuw i8, ptr %i.cxy, i64 8 ; 2 uses
  %i.czs = load i8, ptr %i.czo, align 1, !tbaa !94
  %i.czt = icmp sgt i8 %i.czs, -1
  br i1 %i.czt, label %bb.yh, label %bb.yb
end_hunk_8
begin_hunk_9_@_ZN16struct_pb_sample11deserializeIN9pb_sample8MonstersES2_EEv10SampleTypeRT_:bb.a
  %i.eac = load i8, ptr %.170.i12.i310.i5967, align 1, !tbaa !94 ; 3 uses
  %i.ead = icmp slt i8 %i.eac, 0
  %i.eae = getelementptr inbounds nuw i8, ptr %.170.i12.i310.i5967, i64 1 ; 3 uses
  br i1 %i.ead, label %bb.ady, label %.critedge.i16.i314.i

bb.ady:                                           ; preds = %.lr.ph5970
  %i.eaf = and i8 %i.eac, 127
  %i.eag = zext nneg i8 %i.eaf to i64
  %i.eah = shl i64 %i.eag, %indvars.iv10325
  %i.eai = or i64 %i.eah, %.1.i13.i311.i5968
  %indvars.iv.next10326 = add nuw nsw i64 %indvars.iv10325, 7
  %.not.i15.i313.i = icmp eq ptr %i.eae, %i.dya
  br i1 %.not.i15.i313.i, label %.preheader2043._crit_edge, label %.lr.ph5970, !llvm.loop !46

.preheader2043._crit_edge:                        ; preds = %bb.ady
  %i.eaj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eaj, ptr noundef nonnull @.str.78)
          to label %.invoke14879 unwind label %bb.adz

bb.adz:                                           ; preds = %.preheader2043._crit_edge
  %i.eak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eaj) #28
  br label %.body.i

.critedge.i16.i314.i:                             ; preds = %.lr.ph5970
  %i.eal = zext nneg i8 %i.eac to i64
  %i.eam = shl i64 %i.eal, %indvars.iv10325
  %i.ean = or i64 %i.eam, %.1.i13.i311.i5968
  br label %bb.aea

bb.aea:                                           ; preds = %.critedge.i16.i314.i, %bb.adv, %bb.adu, %bb.adt, %bb.ads, %bb.adr, %bb.adq, %bb.adp, %bb.ado, %bb.adn
  %.271.i17.i315.i = phi ptr [ %i.eae, %.critedge.i16.i314.i ], [ %i.dzx, %bb.adv ], [ %i.dyj, %bb.adn ], [ %i.dyq, %bb.ado ], [ %i.dyx, %bb.adp ], [ %i.dze, %bb.adq ], [ %i.dzl, %bb.adr ], [ %i.dzo, %bb.ads ], [ %i.dzr, %bb.adt ], [ %i.dzu, %bb.adu ]
  %.2.i18.i316.i = phi i64 [ %i.ean, %.critedge.i16.i314.i ], [ %i.dzj, %bb.adv ], [ %i.dyo, %bb.adn ], [ %i.dyv, %bb.ado ], [ %i.dzc, %bb.adp ], [ %i.dzj, %bb.adq ], [ %i.dzj, %bb.adr ], [ %i.dzj, %bb.ads ], [ %i.dzj, %bb.adt ], [ %i.dzj, %bb.adu ]
  %i.eao = ptrtoint ptr %.271.i17.i315.i to i64
  %i.eap = sub i64 %i.eao, %i.dye
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i: ; preds = %bb.aea, %bb.adl
  %.01740 = phi i64 [ 1, %bb.adl ], [ %i.eap, %bb.aea ] ; 6 uses
  %.072.i19.i318.i = phi i64 [ %i.dyd, %bb.adl ], [ %.2.i18.i316.i, %bb.aea ]
  %i.eaq = trunc i64 %.072.i19.i318.i to i32      ; 2 uses
  %i.ear = and i32 %i.eaq, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.eas = lshr i32 %i.eaq, 3
  store i32 %i.eas, ptr %i.a, align 4, !tbaa !164
  %i.eat = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.eau = icmp eq i8 %i.eat, 0
  br i1 %i.eau, label %bb.aeb, label %bb.aee, !prof !173

bb.aeb:                                           ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i
  %i.eav = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i332.i = icmp eq i32 %i.eav, 0
  br i1 %.not.i332.i, label %bb.aee, label %bb.aec

bb.aec:                                           ; preds = %bb.aeb
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %i.dvb)
          to label %bb.aed unwind label %bb.ahf

bb.aed:                                           ; preds = %bb.aec
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.aee

bb.aee:                                           ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i, %bb.aeb, %bb.aed
  %.sroa.02.0.copyload.i371.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.eaw = load i32, ptr %i.a, align 4, !tbaa !164 ; 2 uses
  %.not.i372.i = icmp eq i32 %i.eaw, 1
  %.pre10387.pre = load i64, ptr %14, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i372.i, label %bb.aef, label %bb.aft

bb.aef:                                           ; preds = %bb.aee
  %i.eax = icmp ugt i64 %.01740, %.pre10387.pre
  br i1 %i.eax, label %.invoke14877, label %.noexc267

.noexc267:                                        ; preds = %bb.aef
  %i.eay = sub nuw i64 %.pre10387.pre, %.01740    ; 3 uses
  %i.eaz = load ptr, ptr %i.yt, align 8, !tbaa !439 ; 2 uses
  %i.eba = getelementptr inbounds nuw i8, ptr %i.eaz, i64 %.01740 ; 14 uses
  store i64 %i.eay, ptr %14, align 8, !tbaa !249
  store ptr %i.eba, ptr %i.yt, align 8, !tbaa !363
  %.not4.i374.i = icmp eq i32 %i.ear, 2
  br i1 %.not4.i374.i, label %bb.aei, label %bb.aeg, !prof !257

bb.aeg:                                           ; preds = %.noexc267
  %i.ebb = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ebb, ptr noundef nonnull @.str.79)
          to label %.invoke14879 unwind label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  %i.ebc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ebb) #28
  br label %.body.i

bb.aei:                                           ; preds = %.noexc267
  %i.ebd = getelementptr inbounds nuw i8, ptr %i.dvb, i64 %.sroa.02.0.copyload.i371.i ; 7 uses
  %i.ebe = getelementptr inbounds nuw i8, ptr %i.eaz, i64 %.pre10387.pre
  %i.ebf = load i8, ptr %i.eba, align 1, !tbaa !94 ; 3 uses
  %i.ebg = icmp sgt i8 %i.ebf, -1
  br i1 %i.ebg, label %bb.aej, label %bb.aek

bb.aej:                                           ; preds = %bb.aei
  %i.ebh = zext nneg i8 %i.ebf to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i

bb.aek:                                           ; preds = %bb.aei
  %i.ebi = ptrtoint ptr %i.eba to i64
  %i.ebj = icmp ugt i64 %i.eay, 9
  br i1 %i.ebj, label %bb.ael, label %.preheader2042, !prof !257

.preheader2042:                                   ; preds = %bb.aek
  %.not.i.i.i378.i5974 = icmp samesign eq i64 %.01740, %.pre10387.pre
  br i1 %.not.i.i.i378.i5974, label %.preheader2042._crit_edge, label %.lr.ph5978

bb.ael:                                           ; preds = %bb.aek
  %i.ebk = and i8 %i.ebf, 127
  %i.ebl = zext nneg i8 %i.ebk to i64
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.eba, i64 1
  %i.ebn = getelementptr inbounds nuw i8, ptr %i.eba, i64 2 ; 2 uses
  %i.ebo = load i8, ptr %i.ebm, align 1, !tbaa !94 ; 2 uses
  %i.ebp = sext i8 %i.ebo to i64
  %i.ebq = shl nsw i64 %i.ebp, 7
  %i.ebr = and i64 %i.ebq, 16256
  %i.ebs = or disjoint i64 %i.ebr, %i.ebl         ; 2 uses
  %i.ebt = icmp sgt i8 %i.ebo, -1
  br i1 %i.ebt, label %bb.aey, label %bb.aem

bb.aem:                                           ; preds = %bb.ael
  %i.ebu = getelementptr inbounds nuw i8, ptr %i.eba, i64 3 ; 2 uses
  %i.ebv = load i8, ptr %i.ebn, align 1, !tbaa !94 ; 2 uses
  %i.ebw = sext i8 %i.ebv to i64
  %i.ebx = shl nsw i64 %i.ebw, 14
  %i.eby = and i64 %i.ebx, 2080768
  %i.ebz = or disjoint i64 %i.eby, %i.ebs         ; 2 uses
  %i.eca = icmp sgt i8 %i.ebv, -1
  br i1 %i.eca, label %bb.aey, label %bb.aen

bb.aen:                                           ; preds = %bb.aem
  %i.ecb = getelementptr inbounds nuw i8, ptr %i.eba, i64 4 ; 2 uses
  %i.ecc = load i8, ptr %i.ebu, align 1, !tbaa !94 ; 2 uses
  %i.ecd = sext i8 %i.ecc to i64
  %i.ece = shl nsw i64 %i.ecd, 21
  %i.ecf = and i64 %i.ece, 266338304
  %i.ecg = or disjoint i64 %i.ecf, %i.ebz         ; 2 uses
  %i.ech = icmp sgt i8 %i.ecc, -1
  br i1 %i.ech, label %bb.aey, label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen
  %i.eci = getelementptr inbounds nuw i8, ptr %i.eba, i64 5 ; 2 uses
  %i.ecj = load i8, ptr %i.ecb, align 1, !tbaa !94 ; 2 uses
  %i.eck = sext i8 %i.ecj to i64
  %i.ecl = shl nsw i64 %i.eck, 28
  %i.ecm = and i64 %i.ecl, 34091302912
  %i.ecn = or disjoint i64 %i.ecm, %i.ecg         ; 2 uses
  %i.eco = icmp sgt i8 %i.ecj, -1
  br i1 %i.eco, label %bb.aey, label %bb.aep

bb.aep:                                           ; preds = %bb.aeo
  %i.ecp = getelementptr inbounds nuw i8, ptr %i.eba, i64 6 ; 2 uses
  %i.ecq = load i8, ptr %i.eci, align 1, !tbaa !94 ; 2 uses
  %i.ecr = sext i8 %i.ecq to i64
  %i.ecs = shl nsw i64 %i.ecr, 35
  %i.ect = and i64 %i.ecs, 4363686772736
  %i.ecu = or disjoint i64 %i.ect, %i.ecn         ; 2 uses
  %i.ecv = icmp sgt i8 %i.ecq, -1
  br i1 %i.ecv, label %bb.aey, label %bb.aeq

bb.aeq:                                           ; preds = %bb.aep
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.eba, i64 7 ; 2 uses
  %i.ecx = load i8, ptr %i.ecp, align 1, !tbaa !94 ; 2 uses
  %i.ecy = sext i8 %i.ecx to i64
  %i.ecz = shl nsw i64 %i.ecy, 42
  %i.eda = and i64 %i.ecz, 558551906910208
  %i.edb = or i64 %i.eda, %i.ecu                  ; 2 uses
  %i.edc = icmp sgt i8 %i.ecx, -1
  br i1 %i.edc, label %bb.aey, label %bb.aer

bb.aer:                                           ; preds = %bb.aeq
  %i.edd = getelementptr inbounds nuw i8, ptr %i.eba, i64 8 ; 2 uses
  %i.ede = load i8, ptr %i.ecw, align 1, !tbaa !94 ; 2 uses
  %i.edf = sext i8 %i.ede to i64
  %i.edg = shl nsw i64 %i.edf, 49
  %i.edh = and i64 %i.edg, 71494644084506624
  %i.edi = or i64 %i.edh, %i.edb                  ; 2 uses
  %i.edj = icmp sgt i8 %i.ede, -1
  br i1 %i.edj, label %bb.aey, label %bb.aes

bb.aes:                                           ; preds = %bb.aer
  %i.edk = getelementptr inbounds nuw i8, ptr %i.eba, i64 9 ; 2 uses
  %i.edl = load i8, ptr %i.edd, align 1, !tbaa !94 ; 2 uses
  %i.edm = sext i8 %i.edl to i64
  %i.edn = shl nsw i64 %i.edm, 56
  %i.edo = and i64 %i.edn, 9151314442816847872
  %i.edp = or i64 %i.edo, %i.edi                  ; 2 uses
  %i.edq = icmp sgt i8 %i.edl, -1
  br i1 %i.edq, label %bb.aey, label %bb.aet

bb.aet:                                           ; preds = %bb.aes
  %i.edr = getelementptr inbounds nuw i8, ptr %i.eba, i64 10
  %i.eds = load i8, ptr %i.edk, align 1, !tbaa !94 ; 2 uses
  %i.edt = zext i8 %i.eds to i64
  %i.edu = shl i64 %i.edt, 63
  %i.edv = or i64 %i.edu, %i.edp
  %i.edw = icmp sgt i8 %i.eds, -1
  br i1 %i.edw, label %bb.aey, label %bb.aeu

bb.aeu:                                           ; preds = %bb.aet
  %i.edx = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.edx, ptr noundef nonnull @.str.77)
          to label %.invoke14879 unwind label %bb.aev

bb.aev:                                           ; preds = %bb.aeu
  %i.edy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.edx) #28
  br label %.body.i

.lr.ph5978:                                       ; preds = %.preheader2042, %bb.aew
  %indvars.iv10328 = phi i64 [ %indvars.iv.next10329, %bb.aew ], [ 0, %.preheader2042 ] ; 3 uses
  %.1.i.i.i376.i5976 = phi i64 [ %i.eef, %bb.aew ], [ 0, %.preheader2042 ] ; 2 uses
  %.170.i.i.i375.i5975 = phi ptr [ %i.eeb, %bb.aew ], [ %i.eba, %.preheader2042 ] ; 2 uses
  %i.edz = load i8, ptr %.170.i.i.i375.i5975, align 1, !tbaa !94 ; 3 uses
  %i.eea = icmp slt i8 %i.edz, 0
  %i.eeb = getelementptr inbounds nuw i8, ptr %.170.i.i.i375.i5975, i64 1 ; 3 uses
  br i1 %i.eea, label %bb.aew, label %.critedge.i.i.i379.i

bb.aew:                                           ; preds = %.lr.ph5978
  %i.eec = and i8 %i.edz, 127
  %i.eed = zext nneg i8 %i.eec to i64
  %i.eee = shl i64 %i.eed, %indvars.iv10328
  %i.eef = or i64 %i.eee, %.1.i.i.i376.i5976
  %indvars.iv.next10329 = add nuw nsw i64 %indvars.iv10328, 7
  %.not.i.i.i378.i = icmp eq ptr %i.eeb, %i.ebe
  br i1 %.not.i.i.i378.i, label %.preheader2042._crit_edge, label %.lr.ph5978, !llvm.loop !46

.preheader2042._crit_edge:                        ; preds = %.preheader2042, %bb.aew
  %i.eeg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eeg, ptr noundef nonnull @.str.78)
          to label %.invoke14879 unwind label %bb.aex

bb.aex:                                           ; preds = %.preheader2042._crit_edge
  %i.eeh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eeg) #28
  br label %.body.i

.critedge.i.i.i379.i:                             ; preds = %.lr.ph5978
  %i.eei = zext nneg i8 %i.edz to i64
  %i.eej = shl i64 %i.eei, %indvars.iv10328
  %i.eek = or i64 %i.eej, %.1.i.i.i376.i5976
  br label %bb.aey

bb.aey:                                           ; preds = %.critedge.i.i.i379.i, %bb.aet, %bb.aes, %bb.aer, %bb.aeq, %bb.aep, %bb.aeo, %bb.aen, %bb.aem, %bb.ael
  %.271.i.i.i380.i = phi ptr [ %i.eeb, %.critedge.i.i.i379.i ], [ %i.edr, %bb.aet ], [ %i.ebn, %bb.ael ], [ %i.ebu, %bb.aem ], [ %i.ecb, %bb.aen ], [ %i.eci, %bb.aeo ], [ %i.ecp, %bb.aep ], [ %i.ecw, %bb.aeq ], [ %i.edd, %bb.aer ], [ %i.edk, %bb.aes ]
  %.2.i.i.i381.i = phi i64 [ %i.eek, %.critedge.i.i.i379.i ], [ %i.edv, %bb.aet ], [ %i.ebs, %bb.ael ], [ %i.ebz, %bb.aem ], [ %i.ecg, %bb.aen ], [ %i.ecn, %bb.aeo ], [ %i.ecu, %bb.aep ], [ %i.edb, %bb.aeq ], [ %i.edi, %bb.aer ], [ %i.edp, %bb.aes ]
  %i.eel = ptrtoint ptr %.271.i.i.i380.i to i64
  %i.eem = sub i64 %i.eel, %i.ebi
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i: ; preds = %bb.aey, %bb.aej
  %.01383 = phi i64 [ 1, %bb.aej ], [ %i.eem, %bb.aey ] ; 2 uses
  %.072.i.i.i383.i = phi i64 [ %i.ebh, %bb.aej ], [ %.2.i.i.i381.i, %bb.aey ] ; 7 uses
  %i.een = add i64 %.072.i.i.i383.i, %.01383      ; 6 uses
  %i.eeo = icmp ult i64 %i.eay, %i.een
  br i1 %i.eeo, label %bb.aez, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i, !prof !169

bb.aez:                                           ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i
  %i.eep = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eep, ptr noundef nonnull @.str.89)
          to label %.invoke14879 unwind label %bb.afa

bb.afa:                                           ; preds = %bb.aez
  %i.eeq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eep) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i
  %i.eer = load ptr, ptr %i.ebd, align 8, !tbaa !95 ; 2 uses
  %i.ees = getelementptr inbounds nuw i8, ptr %i.ebd, i64 16 ; 2 uses
  %i.eet = icmp eq ptr %i.eer, %i.ees
  br i1 %i.eet, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i545, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i
  %i.eeu = load i64, ptr %i.ees, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i545: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544
  %i.eev = phi i64 [ %i.eeu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i544 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i ]
  %i.eew = icmp ugt i64 %.072.i.i.i383.i, %i.eev
  br i1 %i.eew, label %bb.afb, label %.noexc272

bb.afb:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i545
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ebd, i64 noundef %.072.i.i.i383.i)
          to label %.noexc548 unwind label %.loopexit.split-lp2028.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc548:                                        ; preds = %bb.afb
  %.pre.i546 = load ptr, ptr %i.ebd, align 8, !tbaa !95
  br label %.noexc272

.noexc272:                                        ; preds = %.noexc548, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i545
  %i.eex = phi ptr [ %.pre.i546, %.noexc548 ], [ %i.eer, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i545 ]
  %i.eey = getelementptr inbounds nuw i8, ptr %i.ebd, i64 8
  store i64 %.072.i.i.i383.i, ptr %i.eey, align 8, !tbaa !93
  %i.eez = getelementptr inbounds nuw i8, ptr %i.eex, i64 %.072.i.i.i383.i
  store i8 0, ptr %i.eez, align 1, !tbaa !94
  %i.efa = load ptr, ptr %i.ebd, align 8, !tbaa !95
  %i.efb = getelementptr inbounds nuw i8, ptr %i.efa, i64 %.072.i.i.i383.i
  store i8 0, ptr %i.efb, align 1, !tbaa !94
  %i.efc = load ptr, ptr %i.ebd, align 8, !tbaa !95
  %i.efd = load ptr, ptr %i.yt, align 8, !tbaa !439
  %i.efe = getelementptr inbounds nuw i8, ptr %i.efd, i64 %.01383
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.efc, ptr align 1 %i.efe, i64 %.072.i.i.i383.i, i1 false)
  %i.eff = load i64, ptr %14, align 8, !tbaa !438 ; 5 uses
  %i.efg = icmp ugt i64 %i.een, %i.eff
  br i1 %i.efg, label %.invoke14877, label %.noexc273

.noexc273:                                        ; preds = %.noexc272
  %i.efh = sub nuw i64 %i.eff, %i.een             ; 3 uses
  %i.efi = load ptr, ptr %i.yt, align 8, !tbaa !439 ; 2 uses
  %i.efj = getelementptr inbounds nuw i8, ptr %i.efi, i64 %i.een ; 14 uses
  store i64 %i.efh, ptr %14, align 8, !tbaa !249
  store ptr %i.efj, ptr %i.yt, align 8, !tbaa !363
  %i.efk = icmp eq i64 %i.eff, %i.een
  br i1 %i.efk, label %.critedge.i329.i, label %bb.afc

bb.afc:                                           ; preds = %.noexc273
  %i.efl = getelementptr inbounds nuw i8, ptr %i.efi, i64 %i.eff
  %i.efm = load i8, ptr %i.efj, align 1, !tbaa !94 ; 3 uses
  %i.efn = icmp sgt i8 %i.efm, -1
  br i1 %i.efn, label %bb.afd, label %bb.afe

bb.afd:                                           ; preds = %bb.afc
  %i.efo = zext nneg i8 %i.efm to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i393.i

bb.afe:                                           ; preds = %bb.afc
  %i.efp = ptrtoint ptr %i.efj to i64
  %i.efq = icmp ugt i64 %i.efh, 9
  br i1 %i.efq, label %bb.aff, label %.lr.ph5986, !prof !257

bb.aff:                                           ; preds = %bb.afe
  %i.efr = and i8 %i.efm, 127
  %i.efs = zext nneg i8 %i.efr to i64
  %i.eft = getelementptr inbounds nuw i8, ptr %i.efj, i64 1
  %i.efu = getelementptr inbounds nuw i8, ptr %i.efj, i64 2 ; 2 uses
  %i.efv = load i8, ptr %i.eft, align 1, !tbaa !94 ; 2 uses
  %i.efw = sext i8 %i.efv to i64
  %i.efx = shl nsw i64 %i.efw, 7
  %i.efy = and i64 %i.efx, 16256
  %i.efz = or disjoint i64 %i.efy, %i.efs         ; 2 uses
  %i.ega = icmp sgt i8 %i.efv, -1
  br i1 %i.ega, label %bb.afs, label %bb.afg

bb.afg:                                           ; preds = %bb.aff
  %i.egb = getelementptr inbounds nuw i8, ptr %i.efj, i64 3 ; 2 uses
  %i.egc = load i8, ptr %i.efu, align 1, !tbaa !94 ; 2 uses
  %i.egd = sext i8 %i.egc to i64
  %i.ege = shl nsw i64 %i.egd, 14
  %i.egf = and i64 %i.ege, 2080768
  %i.egg = or disjoint i64 %i.egf, %i.efz         ; 2 uses
  %i.egh = icmp sgt i8 %i.egc, -1
  br i1 %i.egh, label %bb.afs, label %bb.afh

bb.afh:                                           ; preds = %bb.afg
  %i.egi = getelementptr inbounds nuw i8, ptr %i.efj, i64 4 ; 2 uses
  %i.egj = load i8, ptr %i.egb, align 1, !tbaa !94 ; 2 uses
  %i.egk = sext i8 %i.egj to i64
  %i.egl = shl nsw i64 %i.egk, 21
  %i.egm = and i64 %i.egl, 266338304
  %i.egn = or disjoint i64 %i.egm, %i.egg         ; 2 uses
  %i.ego = icmp sgt i8 %i.egj, -1
  br i1 %i.ego, label %bb.afs, label %bb.afi

bb.afi:                                           ; preds = %bb.afh
  %i.egp = getelementptr inbounds nuw i8, ptr %i.efj, i64 5 ; 2 uses
  %i.egq = load i8, ptr %i.egi, align 1, !tbaa !94 ; 2 uses
  %i.egr = sext i8 %i.egq to i64
  %i.egs = shl nsw i64 %i.egr, 28
  %i.egt = and i64 %i.egs, 34091302912
  %i.egu = or disjoint i64 %i.egt, %i.egn         ; 6 uses
  %i.egv = icmp sgt i8 %i.egq, -1
  br i1 %i.egv, label %bb.afs, label %bb.afj

bb.afj:                                           ; preds = %bb.afi
  %i.egw = getelementptr inbounds nuw i8, ptr %i.efj, i64 6 ; 2 uses
  %i.egx = load i8, ptr %i.egp, align 1, !tbaa !94
  %i.egy = icmp sgt i8 %i.egx, -1
  br i1 %i.egy, label %bb.afs, label %bb.afk

bb.afk:                                           ; preds = %bb.afj
  %i.egz = getelementptr inbounds nuw i8, ptr %i.efj, i64 7 ; 2 uses
  %i.eha = load i8, ptr %i.egw, align 1, !tbaa !94
  %i.ehb = icmp sgt i8 %i.eha, -1
  br i1 %i.ehb, label %bb.afs, label %bb.afl

bb.afl:                                           ; preds = %bb.afk
  %i.ehc = getelementptr inbounds nuw i8, ptr %i.efj, i64 8 ; 2 uses
  %i.ehd = load i8, ptr %i.egz, align 1, !tbaa !94
  %i.ehe = icmp sgt i8 %i.ehd, -1
  br i1 %i.ehe, label %bb.afs, label %bb.afm
end_hunk_9
begin_hunk_10_@_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm1EiEEEEDaS4_:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.170.i.i7, i64 1 ; 3 uses
  br i1 %i.bp, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.br = and i8 %i.bo, 127
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = shl i64 %i.bs, %indvars.iv
  %i.bu = or i64 %i.bt, %.1.i.i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not.i.i = icmp eq ptr %i.bq, %i.m
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull @.str.78)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.v:                                             ; preds = %._crit_edge
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.bx = zext nneg i8 %i.bo to i64
  %i.by = shl i64 %i.bx, %indvars.iv
  %i.bz = or i64 %i.by, %.1.i.i8
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.271.i.i = phi ptr [ %i.bq, %.critedge.i.i ], [ %i.bj, %bb.p ], [ %i.v, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.l ], [ %i.ba, %bb.m ], [ %i.bd, %bb.n ], [ %i.bg, %bb.o ]
  %.2.i.i = phi i64 [ %i.bz, %.critedge.i.i ], [ %i.av, %bb.p ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.av, %bb.l ], [ %i.av, %bb.m ], [ %i.av, %bb.n ], [ %i.av, %bb.o ]
  %i.ca = ptrtoint ptr %.271.i.i to i64
  %i.cb = sub i64 %i.ca, %i.q
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit

_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit: ; preds = %bb.f, %bb.w
  %.0 = phi i64 [ 1, %bb.f ], [ %i.cb, %bb.w ]    ; 4 uses
  %.072.i.i = phi i64 [ %i.p, %bb.f ], [ %.2.i.i, %bb.w ]
  %i.cc = trunc i64 %.072.i.i to i32
  store i32 %i.cc, ptr %i.g, align 4, !tbaa !164
  %i.cd = icmp ugt i64 %.0, %i.l
  br i1 %i.cd, label %bb.x, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.x:                                             ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0, i64 noundef %i.l) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  %i.ce = sub nuw i64 %i.l, %.0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !249
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !363
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NSt7__cxx1112basic_stringIcS7_SaIcEEELm2ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !457
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.z, %bb.d
  %.sink = phi ptr [ %i.cf, %bb.s ], [ %i.co, %bb.v ], [ %i.cx, %bb.z ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.s ], [ %i.cp, %bb.v ], [ %i.cy, %bb.z ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !562, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !567
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !565, !nonnull !272, !align !273 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 14 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i8 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i8, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !94   ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 14
  %i.ag = and i64 %i.af, 2080768
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !94  ; 2 uses
  %i.al = sext i8 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 21
  %i.an = and i64 %i.am, 266338304
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !94  ; 2 uses
  %i.as = sext i8 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 28
  %i.au = and i64 %i.at, 34091302912
  %i.av = or disjoint i64 %i.au, %i.ao            ; 2 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !94  ; 2 uses
  %i.az = sext i8 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 35
  %i.bb = and i64 %i.ba, 4363686772736
  %i.bc = or disjoint i64 %i.bb, %i.av            ; 2 uses
  %i.bd = icmp sgt i8 %i.ay, -1
  br i1 %i.bd, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 7 ; 2 uses
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !94  ; 2 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 42
  %i.bi = and i64 %i.bh, 558551906910208
  %i.bj = or i64 %i.bi, %i.bc                     ; 2 uses
  %i.bk = icmp sgt i8 %i.bf, -1
  br i1 %i.bk, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !94  ; 2 uses
  %i.bn = sext i8 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 49
  %i.bp = and i64 %i.bo, 71494644084506624
  %i.bq = or i64 %i.bp, %i.bj                     ; 2 uses
  %i.br = icmp sgt i8 %i.bm, -1
  br i1 %i.br, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 9 ; 2 uses
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !94  ; 2 uses
  %i.bu = sext i8 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 56
  %i.bw = and i64 %i.bv, 9151314442816847872
  %i.bx = or i64 %i.bw, %i.bq                     ; 2 uses
  %i.by = icmp sgt i8 %i.bt, -1
  br i1 %i.by, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !94  ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl i64 %i.cb, 63
  %i.cd = or i64 %i.cc, %i.bx
  %i.ce = icmp sgt i8 %i.ca, -1
  br i1 %i.ce, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.77)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader ] ; 3 uses
  %.1.i.i10 = phi i64 [ %i.cn, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %.170.i.i9 = phi ptr [ %i.cj, %bb.t ], [ %i.k, %.preheader ] ; 2 uses
  %i.ch = load i8, ptr %.170.i.i9, align 1, !tbaa !94 ; 3 uses
  %i.ci = icmp slt i8 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.170.i.i9, i64 1 ; 3 uses
  br i1 %i.ci, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.ck = and i8 %i.ch, 127
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = shl i64 %i.cl, %indvars.iv
  %i.cn = or i64 %i.cm, %.1.i.i10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not.i.i = icmp eq ptr %i.cj, %i.m
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.co = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull @.str.78)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.v:                                             ; preds = %._crit_edge
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.cq = zext nneg i8 %i.ch to i64
  %i.cr = shl i64 %i.cq, %indvars.iv
  %i.cs = or i64 %i.cr, %.1.i.i10
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.271.i.i = phi ptr [ %i.cj, %.critedge.i.i ], [ %i.bz, %bb.p ], [ %i.v, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.l ], [ %i.be, %bb.m ], [ %i.bl, %bb.n ], [ %i.bs, %bb.o ]
  %.2.i.i = phi i64 [ %i.cs, %.critedge.i.i ], [ %i.cd, %bb.p ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.bc, %bb.l ], [ %i.bj, %bb.m ], [ %i.bq, %bb.n ], [ %i.bx, %bb.o ]
  %i.ct = ptrtoint ptr %.271.i.i to i64
  %i.cu = sub i64 %i.ct, %i.q
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i: ; preds = %bb.w, %bb.f
  %.0 = phi i64 [ 1, %bb.f ], [ %i.cu, %bb.w ]    ; 2 uses
  %.072.i.i = phi i64 [ %i.p, %bb.f ], [ %.2.i.i, %bb.w ] ; 7 uses
  %i.cv = add i64 %.072.i.i, %.0                  ; 5 uses
  %i.cw = icmp ult i64 %i.l, %i.cv
  br i1 %i.cw, label %bb.x, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit, !prof !169

bb.x:                                             ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.89)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dd = phi i64 [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit ]
  %i.de = icmp ugt i64 %.072.i.i, %i.dd
  br i1 %i.de, label %bb.aa, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.072.i.i)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.aa
  %i.df = phi ptr [ %.pre.i, %bb.aa ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.072.i.i, ptr %i.dg, align 8, !tbaa !93
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %.072.i.i
  store i8 0, ptr %i.dh, align 1, !tbaa !94
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.072.i.i
  store i8 0, ptr %i.dj, align 1, !tbaa !94
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.0
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dm, i64 %.072.i.i, i1 false)
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !438 ; 3 uses
  %i.do = icmp ugt i64 %i.cv, %i.dn
  br i1 %i.do, label %bb.ab, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.ab:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.cv, i64 noundef %i.dn) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  %i.dp = sub nuw i64 %i.dn, %i.cv
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cv
  store i64 %i.dp, ptr %i.i, align 8, !tbaa !249
  store ptr %i.dr, ptr %i.j, align 8, !tbaa !363
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm3EiEEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !457
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.d
  %.sink = phi ptr [ %i.bm, %bb.s ], [ %i.bv, %bb.v ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.s ], [ %i.bw, %bb.v ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !562, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !569
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !565, !nonnull !272, !align !273 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 15 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i6 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6iguana9base_implIN9pb_sample6personELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.1.i.i5.i196 = phi i64 [ %i.hl, %bb.bm ], [ 0, %.preheader144 ] ; 2 uses
  %.170.i.i4.i195 = phi ptr [ %i.hh, %bb.bm ], [ %i.fb, %.preheader144 ] ; 2 uses
  %i.hf = load i8, ptr %.170.i.i4.i195, align 1, !tbaa !94 ; 3 uses
  %i.hg = icmp slt i8 %i.hf, 0
  %i.hh = getelementptr inbounds nuw i8, ptr %.170.i.i4.i195, i64 1 ; 3 uses
  br i1 %i.hg, label %bb.bm, label %.critedge.i.i8.i

bb.bm:                                            ; preds = %.lr.ph198
  %i.hi = and i8 %i.hf, 127
  %i.hj = zext nneg i8 %i.hi to i64
  %i.hk = shl i64 %i.hj, %indvars.iv273
  %i.hl = or i64 %i.hk, %.1.i.i5.i196
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 7
  %.not.i.i7.i = icmp eq ptr %i.hh, %i.ci
  br i1 %.not.i.i7.i, label %._crit_edge199, label %.lr.ph198, !llvm.loop !46

._crit_edge199:                                   ; preds = %bb.bm, %.preheader144
  %i.hm = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull @.str.78)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %._crit_edge199
  tail call void @__cxa_throw(ptr nonnull %i.hm, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.bo:                                            ; preds = %._crit_edge199
  %i.hn = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.hm) #28
  br label %common.resume

.critedge.i.i8.i:                                 ; preds = %.lr.ph198
  %i.ho = zext nneg i8 %i.hf to i64
  %i.hp = shl i64 %i.ho, %indvars.iv273
  %i.hq = or i64 %i.hp, %.1.i.i5.i196
  br label %bb.bp

bb.bp:                                            ; preds = %.critedge.i.i8.i, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.271.i.i9.i = phi ptr [ %i.hh, %.critedge.i.i8.i ], [ %i.ha, %bb.bi ], [ %i.fm, %bb.ba ], [ %i.ft, %bb.bb ], [ %i.ga, %bb.bc ], [ %i.gh, %bb.bd ], [ %i.go, %bb.be ], [ %i.gr, %bb.bf ], [ %i.gu, %bb.bg ], [ %i.gx, %bb.bh ]
  %.2.i.i10.i = phi i64 [ %i.hq, %.critedge.i.i8.i ], [ %i.gm, %bb.bi ], [ %i.fr, %bb.ba ], [ %i.fy, %bb.bb ], [ %i.gf, %bb.bc ], [ %i.gm, %bb.bd ], [ %i.gm, %bb.be ], [ %i.gm, %bb.bf ], [ %i.gm, %bb.bg ], [ %i.gm, %bb.bh ]
  %i.hr = ptrtoint ptr %.271.i.i9.i to i64
  %i.hs = sub i64 %i.hr, %i.fg
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i: ; preds = %bb.bp, %bb.ay
  %.10 = phi i64 [ 1, %bb.ay ], [ %i.hs, %bb.bp ]
  %.072.i.i12.i = phi i64 [ %i.ff, %bb.ay ], [ %.2.i.i10.i, %bb.bp ]
  %i.ht = trunc i64 %.072.i.i12.i to i32          ; 2 uses
  %i.hu = and i32 %i.ht, 7
  %i.hv = lshr i32 %i.ht, 3                       ; 2 uses
  store i32 %i.hv, ptr %i.a, align 4, !tbaa !164
  br label %bb.bq

bb.bq:                                            ; preds = %bb.x, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i
  %.pr = phi i32 [ %i.bz, %bb.x ], [ %i.hv, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i ] ; 2 uses
  %.1102.ph = phi i64 [ %.0101, %bb.x ], [ %.10, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i ] ; 6 uses
  %.0100.ph = phi i32 [ %i.bu, %bb.x ], [ %i.hu, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i ] ; 2 uses
  %.sroa.02.0.copyload.i14.i113 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 48), align 8, !tbaa !249
  %.not.i15.i = icmp eq i32 %.pr, 2
  br i1 %.not.i15.i, label %bb.br, label %thread-pre-split

bb.br:                                            ; preds = %bb.bq
  %i.hw = load i64, ptr %3, align 8, !tbaa !438   ; 5 uses
  %i.hx = icmp ugt i64 %.1102.ph, %i.hw
  br i1 %i.hx, label %bb.bs, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit8

bb.bs:                                            ; preds = %bb.br
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.1102.ph, i64 noundef %i.hw) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit8: ; preds = %bb.br
  %i.hy = sub nuw i64 %i.hw, %.1102.ph            ; 3 uses
  %i.hz = load ptr, ptr %i.b, align 8, !tbaa !439 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.1102.ph ; 14 uses
  store i64 %i.hy, ptr %3, align 8, !tbaa !249
  store ptr %i.ia, ptr %i.b, align 8, !tbaa !363
  %.not4.i17.i = icmp eq i32 %.0100.ph, 2
  br i1 %.not4.i17.i, label %bb.bw, label %bb.bt, !prof !257

bb.bt:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit8
  %i.ib = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ib, ptr noundef nonnull @.str.79)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  tail call void @__cxa_throw(ptr nonnull %i.ib, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.ic = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ib) #28
  br label %common.resume

bb.bw:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit8
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i14.i113 ; 7 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hw
  %i.if = load i8, ptr %i.ia, align 1, !tbaa !94  ; 3 uses
  %i.ig = icmp sgt i8 %i.if, -1
  br i1 %i.ig, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ih = zext nneg i8 %i.if to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i74.i

bb.by:                                            ; preds = %bb.bw
  %i.ii = ptrtoint ptr %i.ia to i64
  %i.ij = icmp ugt i64 %i.hy, 9
  br i1 %i.ij, label %bb.bz, label %.preheader143, !prof !257

.preheader143:                                    ; preds = %bb.by
  %.not.i.i70.i200 = icmp samesign eq i64 %.1102.ph, %i.hw
  br i1 %.not.i.i70.i200, label %._crit_edge205, label %.lr.ph204

bb.bz:                                            ; preds = %bb.by
  %i.ik = and i8 %i.if, 127
  %i.il = zext nneg i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 2 ; 2 uses
  %i.io = load i8, ptr %i.im, align 1, !tbaa !94  ; 2 uses
  %i.ip = sext i8 %i.io to i64
  %i.iq = shl nsw i64 %i.ip, 7
  %i.ir = and i64 %i.iq, 16256
  %i.is = or disjoint i64 %i.ir, %i.il            ; 2 uses
  %i.it = icmp sgt i8 %i.io, -1
  br i1 %i.it, label %bb.co, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ia, i64 3 ; 2 uses
  %i.iv = load i8, ptr %i.in, align 1, !tbaa !94  ; 2 uses
  %i.iw = sext i8 %i.iv to i64
  %i.ix = shl nsw i64 %i.iw, 14
  %i.iy = and i64 %i.ix, 2080768
  %i.iz = or disjoint i64 %i.iy, %i.is            ; 2 uses
  %i.ja = icmp sgt i8 %i.iv, -1
  br i1 %i.ja, label %bb.co, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 2 uses
  %i.jc = load i8, ptr %i.iu, align 1, !tbaa !94  ; 2 uses
  %i.jd = sext i8 %i.jc to i64
  %i.je = shl nsw i64 %i.jd, 21
  %i.jf = and i64 %i.je, 266338304
  %i.jg = or disjoint i64 %i.jf, %i.iz            ; 2 uses
  %i.jh = icmp sgt i8 %i.jc, -1
  br i1 %i.jh, label %bb.co, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ia, i64 5 ; 2 uses
  %i.jj = load i8, ptr %i.jb, align 1, !tbaa !94  ; 2 uses
  %i.jk = sext i8 %i.jj to i64
  %i.jl = shl nsw i64 %i.jk, 28
  %i.jm = and i64 %i.jl, 34091302912
  %i.jn = or disjoint i64 %i.jm, %i.jg            ; 2 uses
  %i.jo = icmp sgt i8 %i.jj, -1
  br i1 %i.jo, label %bb.co, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ia, i64 6 ; 2 uses
  %i.jq = load i8, ptr %i.ji, align 1, !tbaa !94  ; 2 uses
  %i.jr = sext i8 %i.jq to i64
  %i.js = shl nsw i64 %i.jr, 35
  %i.jt = and i64 %i.js, 4363686772736
  %i.ju = or disjoint i64 %i.jt, %i.jn            ; 2 uses
  %i.jv = icmp sgt i8 %i.jq, -1
  br i1 %i.jv, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ia, i64 7 ; 2 uses
  %i.jx = load i8, ptr %i.jp, align 1, !tbaa !94  ; 2 uses
  %i.jy = sext i8 %i.jx to i64
  %i.jz = shl nsw i64 %i.jy, 42
  %i.ka = and i64 %i.jz, 558551906910208
  %i.kb = or i64 %i.ka, %i.ju                     ; 2 uses
  %i.kc = icmp sgt i8 %i.jx, -1
  br i1 %i.kc, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ke = load i8, ptr %i.jw, align 1, !tbaa !94  ; 2 uses
  %i.kf = sext i8 %i.ke to i64
  %i.kg = shl nsw i64 %i.kf, 49
  %i.kh = and i64 %i.kg, 71494644084506624
  %i.ki = or i64 %i.kh, %i.kb                     ; 2 uses
  %i.kj = icmp sgt i8 %i.ke, -1
  br i1 %i.kj, label %bb.co, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ia, i64 9 ; 2 uses
  %i.kl = load i8, ptr %i.kd, align 1, !tbaa !94  ; 2 uses
  %i.km = sext i8 %i.kl to i64
  %i.kn = shl nsw i64 %i.km, 56
  %i.ko = and i64 %i.kn, 9151314442816847872
  %i.kp = or i64 %i.ko, %i.ki                     ; 2 uses
  %i.kq = icmp sgt i8 %i.kl, -1
  br i1 %i.kq, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ia, i64 10
  %i.ks = load i8, ptr %i.kk, align 1, !tbaa !94  ; 2 uses
  %i.kt = zext i8 %i.ks to i64
  %i.ku = shl i64 %i.kt, 63
  %i.kv = or i64 %i.ku, %i.kp
  %i.kw = icmp sgt i8 %i.ks, -1
  br i1 %i.kw, label %bb.co, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kx = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, ptr noundef nonnull @.str.77)
          to label %bb.cj unwind label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call void @__cxa_throw(ptr nonnull %i.kx, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.ky = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.kx) #28
  br label %common.resume

.lr.ph204:                                        ; preds = %.preheader143, %bb.cl
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %bb.cl ], [ 0, %.preheader143 ] ; 3 uses
  %.1.i.i68.i202 = phi i64 [ %i.lf, %bb.cl ], [ 0, %.preheader143 ] ; 2 uses
  %.170.i.i67.i201 = phi ptr [ %i.lb, %bb.cl ], [ %i.ia, %.preheader143 ] ; 2 uses
  %i.kz = load i8, ptr %.170.i.i67.i201, align 1, !tbaa !94 ; 3 uses
  %i.la = icmp slt i8 %i.kz, 0
  %i.lb = getelementptr inbounds nuw i8, ptr %.170.i.i67.i201, i64 1 ; 3 uses
  br i1 %i.la, label %bb.cl, label %.critedge.i.i71.i

bb.cl:                                            ; preds = %.lr.ph204
  %i.lc = and i8 %i.kz, 127
  %i.ld = zext nneg i8 %i.lc to i64
  %i.le = shl i64 %i.ld, %indvars.iv276
  %i.lf = or i64 %i.le, %.1.i.i68.i202
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 7
  %.not.i.i70.i = icmp eq ptr %i.lb, %i.ie
  br i1 %.not.i.i70.i, label %._crit_edge205, label %.lr.ph204, !llvm.loop !46

._crit_edge205:                                   ; preds = %bb.cl, %.preheader143
  %i.lg = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull @.str.78)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %._crit_edge205
  tail call void @__cxa_throw(ptr nonnull %i.lg, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.cn:                                            ; preds = %._crit_edge205
  %i.lh = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.lg) #28
  br label %common.resume

.critedge.i.i71.i:                                ; preds = %.lr.ph204
  %i.li = zext nneg i8 %i.kz to i64
  %i.lj = shl i64 %i.li, %indvars.iv276
  %i.lk = or i64 %i.lj, %.1.i.i68.i202
  br label %bb.co

bb.co:                                            ; preds = %.critedge.i.i71.i, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %.271.i.i72.i = phi ptr [ %i.lb, %.critedge.i.i71.i ], [ %i.kr, %bb.ch ], [ %i.in, %bb.bz ], [ %i.iu, %bb.ca ], [ %i.jb, %bb.cb ], [ %i.ji, %bb.cc ], [ %i.jp, %bb.cd ], [ %i.jw, %bb.ce ], [ %i.kd, %bb.cf ], [ %i.kk, %bb.cg ]
  %.2.i.i73.i = phi i64 [ %i.lk, %.critedge.i.i71.i ], [ %i.kv, %bb.ch ], [ %i.is, %bb.bz ], [ %i.iz, %bb.ca ], [ %i.jg, %bb.cb ], [ %i.jn, %bb.cc ], [ %i.ju, %bb.cd ], [ %i.kb, %bb.ce ], [ %i.ki, %bb.cf ], [ %i.kp, %bb.cg ]
  %i.ll = ptrtoint ptr %.271.i.i72.i to i64
  %i.lm = sub i64 %i.ll, %i.ii
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i74.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i74.i: ; preds = %bb.co, %bb.bx
  %.085 = phi i64 [ 1, %bb.bx ], [ %i.lm, %bb.co ] ; 2 uses
  %.072.i.i75.i = phi i64 [ %i.ih, %bb.bx ], [ %.2.i.i73.i, %bb.co ] ; 7 uses
  %i.ln = add i64 %.072.i.i75.i, %.085            ; 6 uses
  %i.lo = icmp ult i64 %i.hy, %i.ln
  br i1 %i.lo, label %bb.cp, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, !prof !169

bb.cp:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i74.i
  %i.lp = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull @.str.89)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  tail call void @__cxa_throw(ptr nonnull %i.lp, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.lq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.lp) #28
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i74.i
  %i.lr = load ptr, ptr %i.id, align 8, !tbaa !95 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i
  %i.lu = load i64, ptr %i.ls, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.lv = phi i64 [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i ]
  %i.lw = icmp ugt i64 %.072.i.i75.i, %i.lv
  br i1 %i.lw, label %bb.cs, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.id, i64 noundef %.072.i.i75.i)
  %.pre.i = load ptr, ptr %i.id, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.cs
  %i.lx = phi ptr [ %.pre.i, %bb.cs ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ly = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i64 %.072.i.i75.i, ptr %i.ly, align 8, !tbaa !93
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 %.072.i.i75.i
  store i8 0, ptr %i.lz, align 1, !tbaa !94
  %i.ma = load ptr, ptr %i.id, align 8, !tbaa !95
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.072.i.i75.i
  store i8 0, ptr %i.mb, align 1, !tbaa !94
  %i.mc = load ptr, ptr %i.id, align 8, !tbaa !95
  %i.md = load ptr, ptr %i.b, align 8, !tbaa !439 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %.085
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mc, ptr align 1 %i.me, i64 %.072.i.i75.i, i1 false)
  %i.mf = load i64, ptr %3, align 8, !tbaa !438   ; 5 uses
  %i.mg = icmp ugt i64 %i.ln, %i.mf
  br i1 %i.mg, label %bb.ct, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit11

bb.ct:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.ln, i64 noundef %i.mf) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit11: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  %i.mh = sub nuw i64 %i.mf, %i.ln                ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.ln ; 14 uses
  store i64 %i.mh, ptr %3, align 8, !tbaa !249
  store ptr %i.mi, ptr %i.b, align 8, !tbaa !363
  %i.mj = icmp eq i64 %i.mf, %i.ln
  br i1 %i.mj, label %.critedge.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit11
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mf
  %i.ml = load i8, ptr %i.mi, align 1, !tbaa !94  ; 3 uses
  %i.mm = icmp sgt i8 %i.ml, -1
  br i1 %i.mm, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.mn = zext nneg i8 %i.ml to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i25.i

bb.cw:                                            ; preds = %bb.cu
  %i.mo = ptrtoint ptr %i.mi to i64
  %i.mp = icmp ugt i64 %i.mh, 9
  br i1 %i.mp, label %bb.cx, label %.lr.ph210, !prof !257

bb.cx:                                            ; preds = %bb.cw
  %i.mq = and i8 %i.ml, 127
  %i.mr = zext nneg i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 2 ; 2 uses
  %i.mu = load i8, ptr %i.ms, align 1, !tbaa !94  ; 2 uses
  %i.mv = sext i8 %i.mu to i64
  %i.mw = shl nsw i64 %i.mv, 7
  %i.mx = and i64 %i.mw, 16256
  %i.my = or disjoint i64 %i.mx, %i.mr            ; 2 uses
  %i.mz = icmp sgt i8 %i.mu, -1
  br i1 %i.mz, label %bb.dm, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.na = getelementptr inbounds nuw i8, ptr %i.mi, i64 3 ; 2 uses
  %i.nb = load i8, ptr %i.mt, align 1, !tbaa !94  ; 2 uses
  %i.nc = sext i8 %i.nb to i64
  %i.nd = shl nsw i64 %i.nc, 14
  %i.ne = and i64 %i.nd, 2080768
  %i.nf = or disjoint i64 %i.ne, %i.my            ; 2 uses
  %i.ng = icmp sgt i8 %i.nb, -1
  br i1 %i.ng, label %bb.dm, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mi, i64 4 ; 2 uses
  %i.ni = load i8, ptr %i.na, align 1, !tbaa !94  ; 2 uses
  %i.nj = sext i8 %i.ni to i64
  %i.nk = shl nsw i64 %i.nj, 21
  %i.nl = and i64 %i.nk, 266338304
  %i.nm = or disjoint i64 %i.nl, %i.nf            ; 2 uses
  %i.nn = icmp sgt i8 %i.ni, -1
  br i1 %i.nn, label %bb.dm, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.no = getelementptr inbounds nuw i8, ptr %i.mi, i64 5 ; 2 uses
  %i.np = load i8, ptr %i.nh, align 1, !tbaa !94  ; 2 uses
  %i.nq = sext i8 %i.np to i64
  %i.nr = shl nsw i64 %i.nq, 28
  %i.ns = and i64 %i.nr, 34091302912
  %i.nt = or disjoint i64 %i.ns, %i.nm            ; 6 uses
  %i.nu = icmp sgt i8 %i.np, -1
  br i1 %i.nu, label %bb.dm, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mi, i64 6 ; 2 uses
  %i.nw = load i8, ptr %i.no, align 1, !tbaa !94
  %i.nx = icmp sgt i8 %i.nw, -1
  br i1 %i.nx, label %bb.dm, label %bb.dc
end_hunk_11
begin_hunk_12_@_ZZN6iguana7from_pbIN9pb_sample7personsEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_6personESaISE_EELm1ESG_EEEEDaS4_:bb.a
  %i.lg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull @.str.77)
          to label %.invoke1779 unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lg) #28
  br label %.body.i

.lr.ph739:                                        ; preds = %.preheader247, %bb.cg
  %indvars.iv1255 = phi i64 [ %indvars.iv.next1256, %bb.cg ], [ 0, %.preheader247 ] ; 3 uses
  %.1.i.i23.i737 = phi i64 [ %i.lo, %bb.cg ], [ 0, %.preheader247 ] ; 2 uses
  %.170.i.i22.i736 = phi ptr [ %i.lk, %bb.cg ], [ %i.je, %.preheader247 ] ; 2 uses
  %i.li = load i8, ptr %.170.i.i22.i736, align 1, !tbaa !94 ; 3 uses
  %i.lj = icmp slt i8 %i.li, 0
  %i.lk = getelementptr inbounds nuw i8, ptr %.170.i.i22.i736, i64 1 ; 3 uses
  br i1 %i.lj, label %bb.cg, label %.critedge.i.i26.i

bb.cg:                                            ; preds = %.lr.ph739
  %i.ll = and i8 %i.li, 127
  %i.lm = zext nneg i8 %i.ll to i64
  %i.ln = shl i64 %i.lm, %indvars.iv1255
  %i.lo = or i64 %i.ln, %.1.i.i23.i737
  %indvars.iv.next1256 = add nuw nsw i64 %indvars.iv1255, 7
  %.not.i.i25.i = icmp eq ptr %i.lk, %i.gl
  br i1 %.not.i.i25.i, label %.preheader247._crit_edge, label %.lr.ph739, !llvm.loop !46

.preheader247._crit_edge:                         ; preds = %.preheader247, %bb.cg
  %i.lp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull @.str.78)
          to label %.invoke1779 unwind label %bb.ch

bb.ch:                                            ; preds = %.preheader247._crit_edge
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.lp) #28
  br label %.body.i

.critedge.i.i26.i:                                ; preds = %.lr.ph739
  %i.lr = zext nneg i8 %i.li to i64
  %i.ls = shl i64 %i.lr, %indvars.iv1255
  %i.lt = or i64 %i.ls, %.1.i.i23.i737
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.i.i26.i, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.271.i.i27.i = phi ptr [ %i.lk, %.critedge.i.i26.i ], [ %i.ld, %bb.cd ], [ %i.jp, %bb.bv ], [ %i.jw, %bb.bw ], [ %i.kd, %bb.bx ], [ %i.kk, %bb.by ], [ %i.kr, %bb.bz ], [ %i.ku, %bb.ca ], [ %i.kx, %bb.cb ], [ %i.la, %bb.cc ]
  %.2.i.i28.i = phi i64 [ %i.lt, %.critedge.i.i26.i ], [ %i.kp, %bb.cd ], [ %i.ju, %bb.bv ], [ %i.kb, %bb.bw ], [ %i.ki, %bb.bx ], [ %i.kp, %bb.by ], [ %i.kp, %bb.bz ], [ %i.kp, %bb.ca ], [ %i.kp, %bb.cb ], [ %i.kp, %bb.cc ]
  %i.lu = ptrtoint ptr %.271.i.i27.i to i64
  %i.lv = sub i64 %i.lu, %i.jj
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i: ; preds = %bb.ci, %bb.bt
  %.10 = phi i64 [ 1, %bb.bt ], [ %i.lv, %bb.ci ]
  %.072.i.i30.i = phi i64 [ %i.ji, %bb.bt ], [ %.2.i.i28.i, %bb.ci ]
  %i.lw = trunc i64 %.072.i.i30.i to i32          ; 2 uses
  %i.lx = and i32 %i.lw, 7
  %i.ly = lshr i32 %i.lw, 3                       ; 2 uses
  store i32 %i.ly, ptr %i.a, align 4, !tbaa !164
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ax, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i
  %.pr = phi i32 [ %i.gc, %bb.ax ], [ %i.ly, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i ] ; 2 uses
  %.1203.ph = phi i64 [ %.0202, %bb.ax ], [ %.10, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i ] ; 6 uses
  %.0201.ph = phi i32 [ %i.fx, %bb.ax ], [ %i.lx, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i ] ; 2 uses
  %.sroa.02.0.copyload.i32.i214 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 48), align 8, !tbaa !249
  %.not.i33.i = icmp eq i32 %.pr, 2
  br i1 %.not.i33.i, label %bb.ck, label %thread-pre-split

bb.ck:                                            ; preds = %bb.cj
  %i.lz = load i64, ptr %4, align 8, !tbaa !438   ; 5 uses
  %i.ma = icmp ugt i64 %.1203.ph, %i.lz
  br i1 %i.ma, label %.invoke, label %.noexc26

.noexc26:                                         ; preds = %bb.ck
  %i.mb = sub nuw i64 %i.lz, %.1203.ph            ; 3 uses
  %i.mc = load ptr, ptr %i.q, align 8, !tbaa !439 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.1203.ph ; 14 uses
  store i64 %i.mb, ptr %4, align 8, !tbaa !249
  store ptr %i.md, ptr %i.q, align 8, !tbaa !363
  %.not4.i35.i = icmp eq i32 %.0201.ph, 2
  br i1 %.not4.i35.i, label %bb.cn, label %bb.cl, !prof !257

bb.cl:                                            ; preds = %.noexc26
  %i.me = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.me, ptr noundef nonnull @.str.79)
          to label %.invoke1779 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.me) #28
  br label %.body.i

bb.cn:                                            ; preds = %.noexc26
  %i.mg = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.02.0.copyload.i32.i214 ; 7 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lz
  %i.mi = load i8, ptr %i.md, align 1, !tbaa !94  ; 3 uses
  %i.mj = icmp sgt i8 %i.mi, -1
  br i1 %i.mj, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.mk = zext nneg i8 %i.mi to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i

bb.cp:                                            ; preds = %bb.cn
  %i.ml = ptrtoint ptr %i.md to i64
  %i.mm = icmp ugt i64 %i.mb, 9
  br i1 %i.mm, label %bb.cq, label %.preheader246, !prof !257

.preheader246:                                    ; preds = %bb.cp
  %.not.i.i88.i747 = icmp samesign eq i64 %.1203.ph, %i.lz
  br i1 %.not.i.i88.i747, label %.preheader246._crit_edge, label %.lr.ph751

bb.cq:                                            ; preds = %bb.cp
  %i.mn = and i8 %i.mi, 127
  %i.mo = zext nneg i8 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.md, i64 2 ; 2 uses
  %i.mr = load i8, ptr %i.mp, align 1, !tbaa !94  ; 2 uses
  %i.ms = sext i8 %i.mr to i64
  %i.mt = shl nsw i64 %i.ms, 7
  %i.mu = and i64 %i.mt, 16256
  %i.mv = or disjoint i64 %i.mu, %i.mo            ; 2 uses
  %i.mw = icmp sgt i8 %i.mr, -1
  br i1 %i.mw, label %bb.dd, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mx = getelementptr inbounds nuw i8, ptr %i.md, i64 3 ; 2 uses
  %i.my = load i8, ptr %i.mq, align 1, !tbaa !94  ; 2 uses
  %i.mz = sext i8 %i.my to i64
  %i.na = shl nsw i64 %i.mz, 14
  %i.nb = and i64 %i.na, 2080768
  %i.nc = or disjoint i64 %i.nb, %i.mv            ; 2 uses
  %i.nd = icmp sgt i8 %i.my, -1
  br i1 %i.nd, label %bb.dd, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ne = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 2 uses
  %i.nf = load i8, ptr %i.mx, align 1, !tbaa !94  ; 2 uses
  %i.ng = sext i8 %i.nf to i64
  %i.nh = shl nsw i64 %i.ng, 21
  %i.ni = and i64 %i.nh, 266338304
  %i.nj = or disjoint i64 %i.ni, %i.nc            ; 2 uses
  %i.nk = icmp sgt i8 %i.nf, -1
  br i1 %i.nk, label %bb.dd, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nl = getelementptr inbounds nuw i8, ptr %i.md, i64 5 ; 2 uses
  %i.nm = load i8, ptr %i.ne, align 1, !tbaa !94  ; 2 uses
  %i.nn = sext i8 %i.nm to i64
  %i.no = shl nsw i64 %i.nn, 28
  %i.np = and i64 %i.no, 34091302912
  %i.nq = or disjoint i64 %i.np, %i.nj            ; 2 uses
  %i.nr = icmp sgt i8 %i.nm, -1
  br i1 %i.nr, label %bb.dd, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ns = getelementptr inbounds nuw i8, ptr %i.md, i64 6 ; 2 uses
  %i.nt = load i8, ptr %i.nl, align 1, !tbaa !94  ; 2 uses
  %i.nu = sext i8 %i.nt to i64
  %i.nv = shl nsw i64 %i.nu, 35
  %i.nw = and i64 %i.nv, 4363686772736
  %i.nx = or disjoint i64 %i.nw, %i.nq            ; 2 uses
  %i.ny = icmp sgt i8 %i.nt, -1
  br i1 %i.ny, label %bb.dd, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nz = getelementptr inbounds nuw i8, ptr %i.md, i64 7 ; 2 uses
  %i.oa = load i8, ptr %i.ns, align 1, !tbaa !94  ; 2 uses
  %i.ob = sext i8 %i.oa to i64
  %i.oc = shl nsw i64 %i.ob, 42
  %i.od = and i64 %i.oc, 558551906910208
  %i.oe = or i64 %i.od, %i.nx                     ; 2 uses
  %i.of = icmp sgt i8 %i.oa, -1
  br i1 %i.of, label %bb.dd, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.og = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.oh = load i8, ptr %i.nz, align 1, !tbaa !94  ; 2 uses
  %i.oi = sext i8 %i.oh to i64
  %i.oj = shl nsw i64 %i.oi, 49
  %i.ok = and i64 %i.oj, 71494644084506624
  %i.ol = or i64 %i.ok, %i.oe                     ; 2 uses
  %i.om = icmp sgt i8 %i.oh, -1
  br i1 %i.om, label %bb.dd, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.on = getelementptr inbounds nuw i8, ptr %i.md, i64 9 ; 2 uses
  %i.oo = load i8, ptr %i.og, align 1, !tbaa !94  ; 2 uses
  %i.op = sext i8 %i.oo to i64
  %i.oq = shl nsw i64 %i.op, 56
  %i.or = and i64 %i.oq, 9151314442816847872
  %i.os = or i64 %i.or, %i.ol                     ; 2 uses
  %i.ot = icmp sgt i8 %i.oo, -1
  br i1 %i.ot, label %bb.dd, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ou = getelementptr inbounds nuw i8, ptr %i.md, i64 10
  %i.ov = load i8, ptr %i.on, align 1, !tbaa !94  ; 2 uses
  %i.ow = zext i8 %i.ov to i64
  %i.ox = shl i64 %i.ow, 63
  %i.oy = or i64 %i.ox, %i.os
  %i.oz = icmp sgt i8 %i.ov, -1
  br i1 %i.oz, label %bb.dd, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pa = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull @.str.77)
          to label %.invoke1779 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pa) #28
  br label %.body.i

.lr.ph751:                                        ; preds = %.preheader246, %bb.db
  %indvars.iv1258 = phi i64 [ %indvars.iv.next1259, %bb.db ], [ 0, %.preheader246 ] ; 3 uses
  %.1.i.i86.i749 = phi i64 [ %i.pi, %bb.db ], [ 0, %.preheader246 ] ; 2 uses
  %.170.i.i85.i748 = phi ptr [ %i.pe, %bb.db ], [ %i.md, %.preheader246 ] ; 2 uses
  %i.pc = load i8, ptr %.170.i.i85.i748, align 1, !tbaa !94 ; 3 uses
  %i.pd = icmp slt i8 %i.pc, 0
  %i.pe = getelementptr inbounds nuw i8, ptr %.170.i.i85.i748, i64 1 ; 3 uses
  br i1 %i.pd, label %bb.db, label %.critedge.i.i89.i

bb.db:                                            ; preds = %.lr.ph751
  %i.pf = and i8 %i.pc, 127
  %i.pg = zext nneg i8 %i.pf to i64
  %i.ph = shl i64 %i.pg, %indvars.iv1258
  %i.pi = or i64 %i.ph, %.1.i.i86.i749
  %indvars.iv.next1259 = add nuw nsw i64 %indvars.iv1258, 7
  %.not.i.i88.i = icmp eq ptr %i.pe, %i.mh
  br i1 %.not.i.i88.i, label %.preheader246._crit_edge, label %.lr.ph751, !llvm.loop !46

.preheader246._crit_edge:                         ; preds = %.preheader246, %bb.db
  %i.pj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, ptr noundef nonnull @.str.78)
          to label %.invoke1779 unwind label %bb.dc

bb.dc:                                            ; preds = %.preheader246._crit_edge
  %i.pk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pj) #28
  br label %.body.i

.critedge.i.i89.i:                                ; preds = %.lr.ph751
  %i.pl = zext nneg i8 %i.pc to i64
  %i.pm = shl i64 %i.pl, %indvars.iv1258
  %i.pn = or i64 %i.pm, %.1.i.i86.i749
  br label %bb.dd

bb.dd:                                            ; preds = %.critedge.i.i89.i, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq
  %.271.i.i90.i = phi ptr [ %i.pe, %.critedge.i.i89.i ], [ %i.ou, %bb.cy ], [ %i.mq, %bb.cq ], [ %i.mx, %bb.cr ], [ %i.ne, %bb.cs ], [ %i.nl, %bb.ct ], [ %i.ns, %bb.cu ], [ %i.nz, %bb.cv ], [ %i.og, %bb.cw ], [ %i.on, %bb.cx ]
  %.2.i.i91.i = phi i64 [ %i.pn, %.critedge.i.i89.i ], [ %i.oy, %bb.cy ], [ %i.mv, %bb.cq ], [ %i.nc, %bb.cr ], [ %i.nj, %bb.cs ], [ %i.nq, %bb.ct ], [ %i.nx, %bb.cu ], [ %i.oe, %bb.cv ], [ %i.ol, %bb.cw ], [ %i.os, %bb.cx ]
  %i.po = ptrtoint ptr %.271.i.i90.i to i64
  %i.pp = sub i64 %i.po, %i.ml
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i: ; preds = %bb.dd, %bb.co
  %.0186 = phi i64 [ 1, %bb.co ], [ %i.pp, %bb.dd ] ; 2 uses
  %.072.i.i93.i = phi i64 [ %i.mk, %bb.co ], [ %.2.i.i91.i, %bb.dd ] ; 7 uses
  %i.pq = add i64 %.072.i.i93.i, %.0186           ; 6 uses
  %i.pr = icmp ult i64 %i.mb, %i.pq
  br i1 %i.pr, label %bb.de, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, !prof !169

bb.de:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i
  %i.ps = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ps, ptr noundef nonnull @.str.89)
          to label %.invoke1779 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ps) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i
  %i.pu = load ptr, ptr %i.mg, align 8, !tbaa !95 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.mg, i64 16 ; 2 uses
  %i.pw = icmp eq ptr %i.pu, %i.pv
  br i1 %i.pw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i
  %i.px = load i64, ptr %i.pv, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.py = phi i64 [ %i.px, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i ]
  %i.pz = icmp ugt i64 %.072.i.i93.i, %i.py
  br i1 %i.pz, label %bb.dg, label %.noexc31

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.mg, i64 noundef %.072.i.i93.i)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc73:                                         ; preds = %bb.dg
  %.pre.i = load ptr, ptr %i.mg, align 8, !tbaa !95
  br label %.noexc31

.noexc31:                                         ; preds = %.noexc73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.qa = phi ptr [ %.pre.i, %.noexc73 ], [ %i.pu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.qb = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  store i64 %.072.i.i93.i, ptr %i.qb, align 8, !tbaa !93
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 %.072.i.i93.i
  store i8 0, ptr %i.qc, align 1, !tbaa !94
  %i.qd = load ptr, ptr %i.mg, align 8, !tbaa !95
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.072.i.i93.i
  store i8 0, ptr %i.qe, align 1, !tbaa !94
  %i.qf = load ptr, ptr %i.mg, align 8, !tbaa !95
  %i.qg = load ptr, ptr %i.q, align 8, !tbaa !439
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %.0186
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qf, ptr align 1 %i.qh, i64 %.072.i.i93.i, i1 false)
  %i.qi = load i64, ptr %4, align 8, !tbaa !438   ; 5 uses
  %i.qj = icmp ugt i64 %i.pq, %i.qi
  br i1 %i.qj, label %.invoke, label %.noexc32

.noexc32:                                         ; preds = %.noexc31
  %i.qk = sub nuw i64 %i.qi, %i.pq                ; 2 uses
  %i.ql = load ptr, ptr %i.q, align 8, !tbaa !439 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.pq ; 14 uses
  store i64 %i.qk, ptr %4, align 8, !tbaa !249
  store ptr %i.qm, ptr %i.q, align 8, !tbaa !363
  %i.qn = icmp eq i64 %i.qi, %i.pq
  br i1 %i.qn, label %.critedge.i18.i, label %bb.dh

bb.dh:                                            ; preds = %.noexc32
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qi
  %i.qp = load i8, ptr %i.qm, align 1, !tbaa !94  ; 3 uses
  %i.qq = icmp sgt i8 %i.qp, -1
  br i1 %i.qq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.qr = zext nneg i8 %i.qp to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i43.i

bb.dj:                                            ; preds = %bb.dh
  %i.qs = ptrtoint ptr %i.qm to i64
  %i.qt = icmp ugt i64 %i.qk, 9
  br i1 %i.qt, label %bb.dk, label %.lr.ph763, !prof !257

bb.dk:                                            ; preds = %bb.dj
  %i.qu = and i8 %i.qp, 127
  %i.qv = zext nneg i8 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qm, i64 1
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qm, i64 2 ; 2 uses
  %i.qy = load i8, ptr %i.qw, align 1, !tbaa !94  ; 2 uses
  %i.qz = sext i8 %i.qy to i64
  %i.ra = shl nsw i64 %i.qz, 7
  %i.rb = and i64 %i.ra, 16256
  %i.rc = or disjoint i64 %i.rb, %i.qv            ; 2 uses
  %i.rd = icmp sgt i8 %i.qy, -1
  br i1 %i.rd, label %bb.dx, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.re = getelementptr inbounds nuw i8, ptr %i.qm, i64 3 ; 2 uses
  %i.rf = load i8, ptr %i.qx, align 1, !tbaa !94  ; 2 uses
  %i.rg = sext i8 %i.rf to i64
  %i.rh = shl nsw i64 %i.rg, 14
  %i.ri = and i64 %i.rh, 2080768
  %i.rj = or disjoint i64 %i.ri, %i.rc            ; 2 uses
  %i.rk = icmp sgt i8 %i.rf, -1
  br i1 %i.rk, label %bb.dx, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qm, i64 4 ; 2 uses
  %i.rm = load i8, ptr %i.re, align 1, !tbaa !94  ; 2 uses
  %i.rn = sext i8 %i.rm to i64
  %i.ro = shl nsw i64 %i.rn, 21
  %i.rp = and i64 %i.ro, 266338304
  %i.rq = or disjoint i64 %i.rp, %i.rj            ; 2 uses
  %i.rr = icmp sgt i8 %i.rm, -1
  br i1 %i.rr, label %bb.dx, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qm, i64 5 ; 2 uses
  %i.rt = load i8, ptr %i.rl, align 1, !tbaa !94  ; 2 uses
  %i.ru = sext i8 %i.rt to i64
  %i.rv = shl nsw i64 %i.ru, 28
  %i.rw = and i64 %i.rv, 34091302912
  %i.rx = or disjoint i64 %i.rw, %i.rq            ; 6 uses
  %i.ry = icmp sgt i8 %i.rt, -1
  br i1 %i.ry, label %bb.dx, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qm, i64 6 ; 2 uses
  %i.sa = load i8, ptr %i.rs, align 1, !tbaa !94
  %i.sb = icmp sgt i8 %i.sa, -1
  br i1 %i.sb, label %bb.dx, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qm, i64 7 ; 2 uses
  %i.sd = load i8, ptr %i.rz, align 1, !tbaa !94
  %i.se = icmp sgt i8 %i.sd, -1
  br i1 %i.se, label %bb.dx, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qm, i64 8 ; 2 uses
  %i.sg = load i8, ptr %i.sc, align 1, !tbaa !94
  %i.sh = icmp sgt i8 %i.sg, -1
  br i1 %i.sh, label %bb.dx, label %bb.dr
end_hunk_12
begin_hunk_13_@_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE2atIjSH_SJ_EERSF_RKT_RKT0_RKT1_:bb.a
  %i.l = mul i64 %i.k, 265                        ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, 3
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !249  ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = xor i64 %i.t, %i.e                       ; 2 uses
  %i.x = xor i64 %i.w, -1
  %i.y = shl i64 %i.w, 21
  %i.z = add i64 %i.y, %i.x                       ; 2 uses
  %i.aa = lshr i64 %i.z, 24
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 265                      ; 2 uses
  %i.ad = lshr i64 %i.ac, 14
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = mul i64 %i.ae, 21                       ; 2 uses
  %i.ag = lshr i64 %i.af, 28
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = and i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !249
  br label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i = phi i64 [ %i.ak, %bb.b ], [ %i.t, %bb.a ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.al, i64 %.0.i.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !164
  %i.ao = icmp eq i32 %i.an, %i.d
  br i1 %i.ao, label %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE7at_implIRSK_jSH_SJ_EERDaOT_RKT0_RKT1_RKT2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt12out_of_rangeC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.82)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt12out_of_range, ptr nonnull @_ZNSt12out_of_rangeD1Ev) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ap) #28
  resume { ptr, i32 } %i.aq

_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE7at_implIRSK_jSH_SJ_EERDaOT_RKT0_RKT1_RKT2_.exit: ; preds = %_ZN6frozen13unordered_mapIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample6WeaponENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm1ESC_EENS4_IS6_iLm2EiEEEELm2ENS_4elsaIjEESt8equal_toIjEE6lookupIjSH_EERDaRKT_RKT0_.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  ret ptr %i.ar
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NSt7__cxx1112basic_stringIcS7_SaIcEEELm1ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !472
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.z, %bb.d
  %.sink = phi ptr [ %i.cf, %bb.s ], [ %i.co, %bb.v ], [ %i.cx, %bb.z ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.s ], [ %i.cp, %bb.v ], [ %i.cy, %bb.z ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !589, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !591
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !592, !nonnull !272, !align !273 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 14 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i8 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i8, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !94   ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 14
  %i.ag = and i64 %i.af, 2080768
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !94  ; 2 uses
  %i.al = sext i8 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 21
  %i.an = and i64 %i.am, 266338304
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !94  ; 2 uses
  %i.as = sext i8 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 28
  %i.au = and i64 %i.at, 34091302912
  %i.av = or disjoint i64 %i.au, %i.ao            ; 2 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !94  ; 2 uses
  %i.az = sext i8 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 35
  %i.bb = and i64 %i.ba, 4363686772736
  %i.bc = or disjoint i64 %i.bb, %i.av            ; 2 uses
  %i.bd = icmp sgt i8 %i.ay, -1
  br i1 %i.bd, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 7 ; 2 uses
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !94  ; 2 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 42
  %i.bi = and i64 %i.bh, 558551906910208
  %i.bj = or i64 %i.bi, %i.bc                     ; 2 uses
  %i.bk = icmp sgt i8 %i.bf, -1
  br i1 %i.bk, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !94  ; 2 uses
  %i.bn = sext i8 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 49
  %i.bp = and i64 %i.bo, 71494644084506624
  %i.bq = or i64 %i.bp, %i.bj                     ; 2 uses
  %i.br = icmp sgt i8 %i.bm, -1
  br i1 %i.br, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 9 ; 2 uses
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !94  ; 2 uses
  %i.bu = sext i8 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 56
  %i.bw = and i64 %i.bv, 9151314442816847872
  %i.bx = or i64 %i.bw, %i.bq                     ; 2 uses
  %i.by = icmp sgt i8 %i.bt, -1
  br i1 %i.by, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !94  ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl i64 %i.cb, 63
  %i.cd = or i64 %i.cc, %i.bx
  %i.ce = icmp sgt i8 %i.ca, -1
  br i1 %i.ce, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.77)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader ] ; 3 uses
  %.1.i.i10 = phi i64 [ %i.cn, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %.170.i.i9 = phi ptr [ %i.cj, %bb.t ], [ %i.k, %.preheader ] ; 2 uses
  %i.ch = load i8, ptr %.170.i.i9, align 1, !tbaa !94 ; 3 uses
  %i.ci = icmp slt i8 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.170.i.i9, i64 1 ; 3 uses
  br i1 %i.ci, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.ck = and i8 %i.ch, 127
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = shl i64 %i.cl, %indvars.iv
  %i.cn = or i64 %i.cm, %.1.i.i10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not.i.i = icmp eq ptr %i.cj, %i.m
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.co = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull @.str.78)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.v:                                             ; preds = %._crit_edge
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.cq = zext nneg i8 %i.ch to i64
  %i.cr = shl i64 %i.cq, %indvars.iv
  %i.cs = or i64 %i.cr, %.1.i.i10
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.271.i.i = phi ptr [ %i.cj, %.critedge.i.i ], [ %i.bz, %bb.p ], [ %i.v, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.l ], [ %i.be, %bb.m ], [ %i.bl, %bb.n ], [ %i.bs, %bb.o ]
  %.2.i.i = phi i64 [ %i.cs, %.critedge.i.i ], [ %i.cd, %bb.p ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.bc, %bb.l ], [ %i.bj, %bb.m ], [ %i.bq, %bb.n ], [ %i.bx, %bb.o ]
  %i.ct = ptrtoint ptr %.271.i.i to i64
  %i.cu = sub i64 %i.ct, %i.q
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i: ; preds = %bb.w, %bb.f
  %.0 = phi i64 [ 1, %bb.f ], [ %i.cu, %bb.w ]    ; 2 uses
  %.072.i.i = phi i64 [ %i.p, %bb.f ], [ %.2.i.i, %bb.w ] ; 7 uses
  %i.cv = add i64 %.072.i.i, %.0                  ; 5 uses
  %i.cw = icmp ult i64 %i.l, %i.cv
  br i1 %i.cw, label %bb.x, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit, !prof !169

bb.x:                                             ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.89)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dd = phi i64 [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit ]
  %i.de = icmp ugt i64 %.072.i.i, %i.dd
  br i1 %i.de, label %bb.aa, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.072.i.i)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.aa
  %i.df = phi ptr [ %.pre.i, %bb.aa ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.072.i.i, ptr %i.dg, align 8, !tbaa !93
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %.072.i.i
  store i8 0, ptr %i.dh, align 1, !tbaa !94
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.072.i.i
  store i8 0, ptr %i.dj, align 1, !tbaa !94
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.0
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dm, i64 %.072.i.i, i1 false)
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !438 ; 3 uses
  %i.do = icmp ugt i64 %i.cv, %i.dn
  br i1 %i.do, label %bb.ab, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.ab:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.cv, i64 noundef %i.dn) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  %i.dp = sub nuw i64 %i.dn, %i.cv
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cv
  store i64 %i.dp, ptr %i.i, align 8, !tbaa !249
  store ptr %i.dr, ptr %i.j, align 8, !tbaa !363
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm2EiEEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !472
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.d
  %.sink = phi ptr [ %i.bm, %bb.s ], [ %i.bv, %bb.v ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.s ], [ %i.bw, %bb.v ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !589, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !594
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !592, !nonnull !272, !align !273 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 15 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i6 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i6, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN6iguana9base_implIN9pb_sample6WeaponELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull @.str.78)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.s:                                             ; preds = %._crit_edge
  %i.bn = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bm) #28
  br label %common.resume

.critedge.i16.i.i:                                ; preds = %.lr.ph
  %i.bo = zext nneg i8 %i.bf to i64
  %i.bp = shl i64 %i.bo, %indvars.iv
  %i.bq = or i64 %i.bp, %.1.i13.i.i100
  br label %bb.t

bb.t:                                             ; preds = %.critedge.i16.i.i, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %.271.i17.i.i = phi ptr [ %i.bh, %.critedge.i16.i.i ], [ %i.ba, %bb.m ], [ %i.m, %bb.e ], [ %i.t, %bb.f ], [ %i.aa, %bb.g ], [ %i.ah, %bb.h ], [ %i.ao, %bb.i ], [ %i.ar, %bb.j ], [ %i.au, %bb.k ], [ %i.ax, %bb.l ]
  %.2.i18.i.i = phi i64 [ %i.bq, %.critedge.i16.i.i ], [ %i.am, %bb.m ], [ %i.r, %bb.e ], [ %i.y, %bb.f ], [ %i.af, %bb.g ], [ %i.am, %bb.h ], [ %i.am, %bb.i ], [ %i.am, %bb.j ], [ %i.am, %bb.k ], [ %i.am, %bb.l ]
  %i.br = ptrtoint ptr %.271.i17.i.i to i64
  %i.bs = sub i64 %i.br, %i.h
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i

common.resume:                                    ; preds = %bb.ei, %bb.el, %bb.di, %bb.dl, %bb.co, %bb.cr, %bb.bp, %bb.bs, %bb.ar, %bb.au, %bb.p, %bb.s, %bb.eo, %bb.bz, %bb.ay, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i, %bb.eo ], [ %i.cf, %bb.ac ], [ %i.bn, %bb.s ], [ %i.ft, %bb.ay ], [ %i.fk, %bb.au ], [ %i.jm, %bb.bz ], [ %i.ix, %bb.bs ], [ %i.ly, %bb.cr ], [ %i.ot, %bb.dl ], [ %i.be, %bb.p ], [ %i.fb, %bb.ar ], [ %i.io, %bb.bp ], [ %i.lp, %bb.co ], [ %i.ok, %bb.di ], [ %i.rw, %bb.ei ], [ %i.sf, %bb.el ]
  resume { ptr, i32 } %common.resume.op

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i: ; preds = %bb.t, %bb.c
  %.051 = phi i64 [ 1, %bb.c ], [ %i.bs, %bb.t ]  ; 6 uses
  %.072.i19.i.i = phi i64 [ %i.g, %bb.c ], [ %.2.i18.i.i, %bb.t ]
  %i.bt = trunc i64 %.072.i19.i.i to i32          ; 2 uses
  %i.bu = and i32 %i.bt, 7                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bv = lshr i32 %i.bt, 3
  store i32 %i.bv, ptr %i.a, align 4, !tbaa !164
  %i.bw = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.u, label %bb.x, !prof !173

bb.u:                                             ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i
  %i.by = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %0)
          to label %bb.w unwind label %bb.dn

bb.w:                                             ; preds = %bb.v
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.x

bb.x:                                             ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i.i, %bb.u, %bb.w
  %.sroa.02.0.copyload.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !164 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.bz, 1
  %.pre.pre = load i64, ptr %3, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i3.i, label %bb.y, label %bb.bu

bb.y:                                             ; preds = %bb.x
  %i.ca = icmp ugt i64 %.051, %.pre.pre
  br i1 %i.ca, label %bb.z, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.051, i64 noundef %.pre.pre) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.y
  %i.cb = sub nuw i64 %.pre.pre, %.051            ; 3 uses
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !439 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.051 ; 14 uses
  store i64 %i.cb, ptr %3, align 8, !tbaa !249
  store ptr %i.cd, ptr %i.b, align 8, !tbaa !363
  %.not4.i.i = icmp eq i32 %i.bu, 2
  br i1 %.not4.i.i, label %bb.ad, label %bb.aa, !prof !257

bb.aa:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ce = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull @.str.79)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__cxa_throw(ptr nonnull %i.ce, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ce) #28
  br label %common.resume

bb.ad:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i.i ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.pre.pre
  %i.ci = load i8, ptr %i.cd, align 1, !tbaa !94  ; 3 uses
  %i.cj = icmp sgt i8 %i.ci, -1
  br i1 %i.cj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ck = zext nneg i8 %i.ci to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cl = ptrtoint ptr %i.cd to i64
  %i.cm = icmp ugt i64 %i.cb, 9
  br i1 %i.cm, label %bb.ag, label %.preheader70, !prof !257

.preheader70:                                     ; preds = %bb.af
  %.not.i.i.i.i102 = icmp samesign eq i64 %.051, %.pre.pre
  br i1 %.not.i.i.i.i102, label %._crit_edge107, label %.lr.ph106

bb.ag:                                            ; preds = %bb.af
  %i.cn = and i8 %i.ci, 127
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 2 ; 2 uses
  %i.cr = load i8, ptr %i.cp, align 1, !tbaa !94  ; 2 uses
  %i.cs = sext i8 %i.cr to i64
  %i.ct = shl nsw i64 %i.cs, 7
  %i.cu = and i64 %i.ct, 16256
  %i.cv = or disjoint i64 %i.cu, %i.co            ; 2 uses
  %i.cw = icmp sgt i8 %i.cr, -1
  br i1 %i.cw, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 3 ; 2 uses
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !94  ; 2 uses
  %i.cz = sext i8 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 14
  %i.db = and i64 %i.da, 2080768
  %i.dc = or disjoint i64 %i.db, %i.cv            ; 2 uses
  %i.dd = icmp sgt i8 %i.cy, -1
  br i1 %i.dd, label %bb.av, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !94  ; 2 uses
  %i.dg = sext i8 %i.df to i64
  %i.dh = shl nsw i64 %i.dg, 21
  %i.di = and i64 %i.dh, 266338304
  %i.dj = or disjoint i64 %i.di, %i.dc            ; 2 uses
  %i.dk = icmp sgt i8 %i.df, -1
  br i1 %i.dk, label %bb.av, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cd, i64 5 ; 2 uses
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !94  ; 2 uses
  %i.dn = sext i8 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 28
  %i.dp = and i64 %i.do, 34091302912
  %i.dq = or disjoint i64 %i.dp, %i.dj            ; 2 uses
  %i.dr = icmp sgt i8 %i.dm, -1
  br i1 %i.dr, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cd, i64 6 ; 2 uses
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !94  ; 2 uses
  %i.du = sext i8 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 35
  %i.dw = and i64 %i.dv, 4363686772736
  %i.dx = or disjoint i64 %i.dw, %i.dq            ; 2 uses
  %i.dy = icmp sgt i8 %i.dt, -1
  br i1 %i.dy, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cd, i64 7 ; 2 uses
  %i.ea = load i8, ptr %i.ds, align 1, !tbaa !94  ; 2 uses
  %i.eb = sext i8 %i.ea to i64
  %i.ec = shl nsw i64 %i.eb, 42
  %i.ed = and i64 %i.ec, 558551906910208
  %i.ee = or i64 %i.ed, %i.dx                     ; 2 uses
  %i.ef = icmp sgt i8 %i.ea, -1
  br i1 %i.ef, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !94  ; 2 uses
  %i.ei = sext i8 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 49
  %i.ek = and i64 %i.ej, 71494644084506624
  %i.el = or i64 %i.ek, %i.ee                     ; 2 uses
  %i.em = icmp sgt i8 %i.eh, -1
  br i1 %i.em, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.en = getelementptr inbounds nuw i8, ptr %i.cd, i64 9 ; 2 uses
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !94  ; 2 uses
  %i.ep = sext i8 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 56
  %i.er = and i64 %i.eq, 9151314442816847872
  %i.es = or i64 %i.er, %i.el                     ; 2 uses
  %i.et = icmp sgt i8 %i.eo, -1
  br i1 %i.et, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cd, i64 10
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !94  ; 2 uses
  %i.ew = zext i8 %i.ev to i64
  %i.ex = shl i64 %i.ew, 63
  %i.ey = or i64 %i.ex, %i.es
  %i.ez = icmp sgt i8 %i.ev, -1
  br i1 %i.ez, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fa = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, ptr noundef nonnull @.str.77)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void @__cxa_throw(ptr nonnull %i.fa, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.fb = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fa) #28
  br label %common.resume

.lr.ph106:                                        ; preds = %.preheader70, %bb.as
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %bb.as ], [ 0, %.preheader70 ] ; 3 uses
  %.1.i.i.i.i104 = phi i64 [ %i.fi, %bb.as ], [ 0, %.preheader70 ] ; 2 uses
  %.170.i.i.i.i103 = phi ptr [ %i.fe, %bb.as ], [ %i.cd, %.preheader70 ] ; 2 uses
  %i.fc = load i8, ptr %.170.i.i.i.i103, align 1, !tbaa !94 ; 3 uses
  %i.fd = icmp slt i8 %i.fc, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %.170.i.i.i.i103, i64 1 ; 3 uses
  br i1 %i.fd, label %bb.as, label %.critedge.i.i.i.i

bb.as:                                            ; preds = %.lr.ph106
  %i.ff = and i8 %i.fc, 127
  %i.fg = zext nneg i8 %i.ff to i64
  %i.fh = shl i64 %i.fg, %indvars.iv157
  %i.fi = or i64 %i.fh, %.1.i.i.i.i104
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 7
  %.not.i.i.i.i = icmp eq ptr %i.fe, %i.ch
  br i1 %.not.i.i.i.i, label %._crit_edge107, label %.lr.ph106, !llvm.loop !46

._crit_edge107:                                   ; preds = %bb.as, %.preheader70
  %i.fj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull @.str.78)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %._crit_edge107
  tail call void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.au:                                            ; preds = %._crit_edge107
  %i.fk = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fj) #28
  br label %common.resume

.critedge.i.i.i.i:                                ; preds = %.lr.ph106
  %i.fl = zext nneg i8 %i.fc to i64
  %i.fm = shl i64 %i.fl, %indvars.iv157
  %i.fn = or i64 %i.fm, %.1.i.i.i.i104
  br label %bb.av

bb.av:                                            ; preds = %.critedge.i.i.i.i, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.271.i.i.i.i = phi ptr [ %i.fe, %.critedge.i.i.i.i ], [ %i.eu, %bb.ao ], [ %i.cq, %bb.ag ], [ %i.cx, %bb.ah ], [ %i.de, %bb.ai ], [ %i.dl, %bb.aj ], [ %i.ds, %bb.ak ], [ %i.dz, %bb.al ], [ %i.eg, %bb.am ], [ %i.en, %bb.an ]
  %.2.i.i.i.i = phi i64 [ %i.fn, %.critedge.i.i.i.i ], [ %i.ey, %bb.ao ], [ %i.cv, %bb.ag ], [ %i.dc, %bb.ah ], [ %i.dj, %bb.ai ], [ %i.dq, %bb.aj ], [ %i.dx, %bb.ak ], [ %i.ee, %bb.al ], [ %i.el, %bb.am ], [ %i.es, %bb.an ]
  %i.fo = ptrtoint ptr %.271.i.i.i.i to i64
  %i.fp = sub i64 %i.fo, %i.cl
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i: ; preds = %bb.av, %bb.ae
  %.0 = phi i64 [ 1, %bb.ae ], [ %i.fp, %bb.av ]  ; 2 uses
  %.072.i.i.i.i = phi i64 [ %i.ck, %bb.ae ], [ %.2.i.i.i.i, %bb.av ] ; 7 uses
  %i.fq = add i64 %.072.i.i.i.i, %.0              ; 6 uses
  %i.fr = icmp ult i64 %i.cb, %i.fq
  br i1 %i.fr, label %bb.aw, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, !prof !169

bb.aw:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i
  %i.fs = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fs, ptr noundef nonnull @.str.89)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  tail call void @__cxa_throw(ptr nonnull %i.fs, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fs) #28
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i
  %i.fu = load ptr, ptr %i.cg, align 8, !tbaa !95 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fy = phi i64 [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i ]
  %i.fz = icmp ugt i64 %.072.i.i.i.i, %i.fy
  br i1 %i.fz, label %bb.az, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 noundef %.072.i.i.i.i)
  %.pre.i = load ptr, ptr %i.cg, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.az
  %i.ga = phi ptr [ %.pre.i, %bb.az ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %.072.i.i.i.i, ptr %i.gb, align 8, !tbaa !93
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.072.i.i.i.i
  store i8 0, ptr %i.gc, align 1, !tbaa !94
  %i.gd = load ptr, ptr %i.cg, align 8, !tbaa !95
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.072.i.i.i.i
  store i8 0, ptr %i.ge, align 1, !tbaa !94
  %i.gf = load ptr, ptr %i.cg, align 8, !tbaa !95
  %i.gg = load ptr, ptr %i.b, align 8, !tbaa !439 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.0
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.gh, i64 %.072.i.i.i.i, i1 false)
  %i.gi = load i64, ptr %3, align 8, !tbaa !438   ; 5 uses
  %i.gj = icmp ugt i64 %i.fq, %i.gi
  br i1 %i.gj, label %bb.ba, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit5

bb.ba:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.fq, i64 noundef %i.gi) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit5: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  %i.gk = sub nuw i64 %i.gi, %i.fq                ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fq ; 14 uses
  store i64 %i.gk, ptr %3, align 8, !tbaa !249
  store ptr %i.gl, ptr %i.b, align 8, !tbaa !363
  %i.gm = icmp eq i64 %i.gi, %i.fq
  br i1 %i.gm, label %.critedge.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit5
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gi
  %i.go = load i8, ptr %i.gl, align 1, !tbaa !94  ; 3 uses
  %i.gp = icmp sgt i8 %i.go, -1
  br i1 %i.gp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gq = zext nneg i8 %i.go to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i11.i

bb.bd:                                            ; preds = %bb.bb
  %i.gr = ptrtoint ptr %i.gl to i64
  %i.gs = icmp ugt i64 %i.gk, 9
  br i1 %i.gs, label %bb.be, label %.lr.ph112, !prof !257

bb.be:                                            ; preds = %bb.bd
  %i.gt = and i8 %i.go, 127
  %i.gu = zext nneg i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 2 ; 2 uses
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !94  ; 2 uses
  %i.gy = sext i8 %i.gx to i64
  %i.gz = shl nsw i64 %i.gy, 7
  %i.ha = and i64 %i.gz, 16256
  %i.hb = or disjoint i64 %i.ha, %i.gu            ; 2 uses
  %i.hc = icmp sgt i8 %i.gx, -1
  br i1 %i.hc, label %bb.bt, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gl, i64 3 ; 2 uses
  %i.he = load i8, ptr %i.gw, align 1, !tbaa !94  ; 2 uses
  %i.hf = sext i8 %i.he to i64
  %i.hg = shl nsw i64 %i.hf, 14
  %i.hh = and i64 %i.hg, 2080768
  %i.hi = or disjoint i64 %i.hh, %i.hb            ; 2 uses
  %i.hj = icmp sgt i8 %i.he, -1
  br i1 %i.hj, label %bb.bt, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %i.hl = load i8, ptr %i.hd, align 1, !tbaa !94  ; 2 uses
  %i.hm = sext i8 %i.hl to i64
  %i.hn = shl nsw i64 %i.hm, 21
  %i.ho = and i64 %i.hn, 266338304
  %i.hp = or disjoint i64 %i.ho, %i.hi            ; 2 uses
  %i.hq = icmp sgt i8 %i.hl, -1
  br i1 %i.hq, label %bb.bt, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gl, i64 5 ; 2 uses
  %i.hs = load i8, ptr %i.hk, align 1, !tbaa !94  ; 2 uses
  %i.ht = sext i8 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 28
  %i.hv = and i64 %i.hu, 34091302912
  %i.hw = or disjoint i64 %i.hv, %i.hp            ; 6 uses
  %i.hx = icmp sgt i8 %i.hs, -1
  br i1 %i.hx, label %bb.bt, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gl, i64 6 ; 2 uses
  %i.hz = load i8, ptr %i.hr, align 1, !tbaa !94
  %i.ia = icmp sgt i8 %i.hz, -1
  br i1 %i.ia, label %bb.bt, label %bb.bj
end_hunk_14
begin_hunk_15_@_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_iLm3EiEEEEDaS4_:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.170.i.i7, i64 1 ; 3 uses
  br i1 %i.bp, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.br = and i8 %i.bo, 127
  %i.bs = zext nneg i8 %i.br to i64
  %i.bt = shl i64 %i.bs, %indvars.iv
  %i.bu = or i64 %i.bt, %.1.i.i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not.i.i = icmp eq ptr %i.bq, %i.m
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.bv = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull @.str.78)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.v:                                             ; preds = %._crit_edge
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.bx = zext nneg i8 %i.bo to i64
  %i.by = shl i64 %i.bx, %indvars.iv
  %i.bz = or i64 %i.by, %.1.i.i8
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.271.i.i = phi ptr [ %i.bq, %.critedge.i.i ], [ %i.bj, %bb.p ], [ %i.v, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.l ], [ %i.ba, %bb.m ], [ %i.bd, %bb.n ], [ %i.bg, %bb.o ]
  %.2.i.i = phi i64 [ %i.bz, %.critedge.i.i ], [ %i.av, %bb.p ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.av, %bb.l ], [ %i.av, %bb.m ], [ %i.av, %bb.n ], [ %i.av, %bb.o ]
  %i.ca = ptrtoint ptr %.271.i.i to i64
  %i.cb = sub i64 %i.ca, %i.q
  br label %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit

_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit: ; preds = %bb.f, %bb.w
  %.0 = phi i64 [ 1, %bb.f ], [ %i.cb, %bb.w ]    ; 4 uses
  %.072.i.i = phi i64 [ %i.p, %bb.f ], [ %.2.i.i, %bb.w ]
  %i.cc = trunc i64 %.072.i.i to i32
  store i32 %i.cc, ptr %i.g, align 4, !tbaa !164
  %i.cd = icmp ugt i64 %.0, %i.l
  br i1 %i.cd, label %bb.x, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.x:                                             ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0, i64 noundef %i.l) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail12from_pb_implIiEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit
  %i.ce = sub nuw i64 %i.l, %.0
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 %.0
  store i64 %i.ce, ptr %i.i, align 8, !tbaa !249
  store ptr %i.cf, ptr %i.j, align 8, !tbaa !363
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NSt7__cxx1112basic_stringIcS7_SaIcEEELm4ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !478
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.z, %bb.d
  %.sink = phi ptr [ %i.cf, %bb.s ], [ %i.co, %bb.v ], [ %i.cx, %bb.z ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.s ], [ %i.cp, %bb.v ], [ %i.cy, %bb.z ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !620, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !629
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !623, !nonnull !272, !align !273 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 14 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i8 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i8, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !94   ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 14
  %i.ag = and i64 %i.af, 2080768
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !94  ; 2 uses
  %i.al = sext i8 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 21
  %i.an = and i64 %i.am, 266338304
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !94  ; 2 uses
  %i.as = sext i8 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 28
  %i.au = and i64 %i.at, 34091302912
  %i.av = or disjoint i64 %i.au, %i.ao            ; 2 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !94  ; 2 uses
  %i.az = sext i8 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 35
  %i.bb = and i64 %i.ba, 4363686772736
  %i.bc = or disjoint i64 %i.bb, %i.av            ; 2 uses
  %i.bd = icmp sgt i8 %i.ay, -1
  br i1 %i.bd, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 7 ; 2 uses
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !94  ; 2 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 42
  %i.bi = and i64 %i.bh, 558551906910208
  %i.bj = or i64 %i.bi, %i.bc                     ; 2 uses
  %i.bk = icmp sgt i8 %i.bf, -1
  br i1 %i.bk, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !94  ; 2 uses
  %i.bn = sext i8 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 49
  %i.bp = and i64 %i.bo, 71494644084506624
  %i.bq = or i64 %i.bp, %i.bj                     ; 2 uses
  %i.br = icmp sgt i8 %i.bm, -1
  br i1 %i.br, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 9 ; 2 uses
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !94  ; 2 uses
  %i.bu = sext i8 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 56
  %i.bw = and i64 %i.bv, 9151314442816847872
  %i.bx = or i64 %i.bw, %i.bq                     ; 2 uses
  %i.by = icmp sgt i8 %i.bt, -1
  br i1 %i.by, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !94  ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl i64 %i.cb, 63
  %i.cd = or i64 %i.cc, %i.bx
  %i.ce = icmp sgt i8 %i.ca, -1
  br i1 %i.ce, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.77)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader ] ; 3 uses
  %.1.i.i10 = phi i64 [ %i.cn, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %.170.i.i9 = phi ptr [ %i.cj, %bb.t ], [ %i.k, %.preheader ] ; 2 uses
  %i.ch = load i8, ptr %.170.i.i9, align 1, !tbaa !94 ; 3 uses
  %i.ci = icmp slt i8 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.170.i.i9, i64 1 ; 3 uses
  br i1 %i.ci, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.ck = and i8 %i.ch, 127
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = shl i64 %i.cl, %indvars.iv
  %i.cn = or i64 %i.cm, %.1.i.i10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not.i.i = icmp eq ptr %i.cj, %i.m
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.co = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull @.str.78)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.v:                                             ; preds = %._crit_edge
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.cq = zext nneg i8 %i.ch to i64
  %i.cr = shl i64 %i.cq, %indvars.iv
  %i.cs = or i64 %i.cr, %.1.i.i10
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.271.i.i = phi ptr [ %i.cj, %.critedge.i.i ], [ %i.bz, %bb.p ], [ %i.v, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.l ], [ %i.be, %bb.m ], [ %i.bl, %bb.n ], [ %i.bs, %bb.o ]
  %.2.i.i = phi i64 [ %i.cs, %.critedge.i.i ], [ %i.cd, %bb.p ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.bc, %bb.l ], [ %i.bj, %bb.m ], [ %i.bq, %bb.n ], [ %i.bx, %bb.o ]
  %i.ct = ptrtoint ptr %.271.i.i to i64
  %i.cu = sub i64 %i.ct, %i.q
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i: ; preds = %bb.w, %bb.f
  %.0 = phi i64 [ 1, %bb.f ], [ %i.cu, %bb.w ]    ; 2 uses
  %.072.i.i = phi i64 [ %i.p, %bb.f ], [ %.2.i.i, %bb.w ] ; 7 uses
  %i.cv = add i64 %.072.i.i, %.0                  ; 5 uses
  %i.cw = icmp ult i64 %i.l, %i.cv
  br i1 %i.cw, label %bb.x, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit, !prof !169

bb.x:                                             ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.89)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dd = phi i64 [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit ]
  %i.de = icmp ugt i64 %.072.i.i, %i.dd
  br i1 %i.de, label %bb.aa, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.072.i.i)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.aa
  %i.df = phi ptr [ %.pre.i, %bb.aa ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.072.i.i, ptr %i.dg, align 8, !tbaa !93
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %.072.i.i
  store i8 0, ptr %i.dh, align 1, !tbaa !94
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.072.i.i
  store i8 0, ptr %i.dj, align 1, !tbaa !94
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.0
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dm, i64 %.072.i.i, i1 false)
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !438 ; 3 uses
  %i.do = icmp ugt i64 %i.cv, %i.dn
  br i1 %i.do, label %bb.ab, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.ab:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.cv, i64 noundef %i.dn) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  %i.dp = sub nuw i64 %i.dn, %i.cv
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cv
  store i64 %i.dp, ptr %i.i, align 8, !tbaa !249
  store ptr %i.dr, ptr %i.j, align 8, !tbaa !363
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NSt7__cxx1112basic_stringIcS7_SaIcEEELm5ESG_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !478
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.s, %bb.v, %bb.z, %bb.d
  %.sink = phi ptr [ %i.cf, %bb.s ], [ %i.co, %bb.v ], [ %i.cx, %bb.z ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.cg, %bb.s ], [ %i.cp, %bb.v ], [ %i.cy, %bb.z ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !620, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !631
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !623, !nonnull !272, !align !273 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !439  ; 14 uses
  %i.l = load i64, ptr %i.i, align 8, !tbaa !438  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.k, align 1, !tbaa !94    ; 3 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = zext nneg i8 %i.n to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

bb.g:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = icmp ugt i64 %i.l, 9
  br i1 %i.r, label %bb.h, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.g
  %.not.i.i8 = icmp samesign eq i64 %i.l, 0
  br i1 %.not.i.i8, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.s = and i8 %i.n, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !94    ; 2 uses
  %i.x = sext i8 %i.w to i64
  %i.y = shl nsw i64 %i.x, 7
  %i.z = and i64 %i.y, 16256
  %i.aa = or disjoint i64 %i.z, %i.t              ; 2 uses
  %i.ab = icmp sgt i8 %i.w, -1
  br i1 %i.ab, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !94   ; 2 uses
  %i.ae = sext i8 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 14
  %i.ag = and i64 %i.af, 2080768
  %i.ah = or disjoint i64 %i.ag, %i.aa            ; 2 uses
  %i.ai = icmp sgt i8 %i.ad, -1
  br i1 %i.ai, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.ac, align 1, !tbaa !94  ; 2 uses
  %i.al = sext i8 %i.ak to i64
  %i.am = shl nsw i64 %i.al, 21
  %i.an = and i64 %i.am, 266338304
  %i.ao = or disjoint i64 %i.an, %i.ah            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 5 ; 2 uses
  %i.ar = load i8, ptr %i.aj, align 1, !tbaa !94  ; 2 uses
  %i.as = sext i8 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 28
  %i.au = and i64 %i.at, 34091302912
  %i.av = or disjoint i64 %i.au, %i.ao            ; 2 uses
  %i.aw = icmp sgt i8 %i.ar, -1
  br i1 %i.aw, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !94  ; 2 uses
  %i.az = sext i8 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 35
  %i.bb = and i64 %i.ba, 4363686772736
  %i.bc = or disjoint i64 %i.bb, %i.av            ; 2 uses
  %i.bd = icmp sgt i8 %i.ay, -1
  br i1 %i.bd, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 7 ; 2 uses
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !94  ; 2 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 42
  %i.bi = and i64 %i.bh, 558551906910208
  %i.bj = or i64 %i.bi, %i.bc                     ; 2 uses
  %i.bk = icmp sgt i8 %i.bf, -1
  br i1 %i.bk, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bm = load i8, ptr %i.be, align 1, !tbaa !94  ; 2 uses
  %i.bn = sext i8 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 49
  %i.bp = and i64 %i.bo, 71494644084506624
  %i.bq = or i64 %i.bp, %i.bj                     ; 2 uses
  %i.br = icmp sgt i8 %i.bm, -1
  br i1 %i.br, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 9 ; 2 uses
  %i.bt = load i8, ptr %i.bl, align 1, !tbaa !94  ; 2 uses
  %i.bu = sext i8 %i.bt to i64
  %i.bv = shl nsw i64 %i.bu, 56
  %i.bw = and i64 %i.bv, 9151314442816847872
  %i.bx = or i64 %i.bw, %i.bq                     ; 2 uses
  %i.by = icmp sgt i8 %i.bt, -1
  br i1 %i.by, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !94  ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl i64 %i.cb, 63
  %i.cd = or i64 %i.cc, %i.bx
  %i.ce = icmp sgt i8 %i.ca, -1
  br i1 %i.ce, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.77)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.lr.ph:                                           ; preds = %.preheader, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader ] ; 3 uses
  %.1.i.i10 = phi i64 [ %i.cn, %bb.t ], [ 0, %.preheader ] ; 2 uses
  %.170.i.i9 = phi ptr [ %i.cj, %bb.t ], [ %i.k, %.preheader ] ; 2 uses
  %i.ch = load i8, ptr %.170.i.i9, align 1, !tbaa !94 ; 3 uses
  %i.ci = icmp slt i8 %i.ch, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %.170.i.i9, i64 1 ; 3 uses
  br i1 %i.ci, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %.lr.ph
  %i.ck = and i8 %i.ch, 127
  %i.cl = zext nneg i8 %i.ck to i64
  %i.cm = shl i64 %i.cl, %indvars.iv
  %i.cn = or i64 %i.cm, %.1.i.i10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %.not.i.i = icmp eq ptr %i.cj, %i.m
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.t, %.preheader
  %i.co = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull @.str.78)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge
  tail call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.v:                                             ; preds = %._crit_edge
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.critedge.i.i:                                    ; preds = %.lr.ph
  %i.cq = zext nneg i8 %i.ch to i64
  %i.cr = shl i64 %i.cq, %indvars.iv
  %i.cs = or i64 %i.cr, %.1.i.i10
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.271.i.i = phi ptr [ %i.cj, %.critedge.i.i ], [ %i.bz, %bb.p ], [ %i.v, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.l ], [ %i.be, %bb.m ], [ %i.bl, %bb.n ], [ %i.bs, %bb.o ]
  %.2.i.i = phi i64 [ %i.cs, %.critedge.i.i ], [ %i.cd, %bb.p ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ], [ %i.ao, %bb.j ], [ %i.av, %bb.k ], [ %i.bc, %bb.l ], [ %i.bj, %bb.m ], [ %i.bq, %bb.n ], [ %i.bx, %bb.o ]
  %i.ct = ptrtoint ptr %.271.i.i to i64
  %i.cu = sub i64 %i.ct, %i.q
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i: ; preds = %bb.w, %bb.f
  %.0 = phi i64 [ 1, %bb.f ], [ %i.cu, %bb.w ]    ; 2 uses
  %.072.i.i = phi i64 [ %i.p, %bb.f ], [ %.2.i.i, %bb.w ] ; 7 uses
  %i.cv = add i64 %.072.i.i, %.0                  ; 5 uses
  %i.cw = icmp ult i64 %i.l, %i.cv
  br i1 %i.cw, label %bb.x, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit, !prof !169

bb.x:                                             ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull @.str.89)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.dd = phi i64 [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit ]
  %i.de = icmp ugt i64 %.072.i.i, %i.dd
  br i1 %i.de, label %bb.aa, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %.072.i.i)
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.aa
  %i.df = phi ptr [ %.pre.i, %bb.aa ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.072.i.i, ptr %i.dg, align 8, !tbaa !93
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %.072.i.i
  store i8 0, ptr %i.dh, align 1, !tbaa !94
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.072.i.i
  store i8 0, ptr %i.dj, align 1, !tbaa !94
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.0
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dm, i64 %.072.i.i, i1 false)
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !438 ; 3 uses
  %i.do = icmp ugt i64 %i.cv, %i.dn
  br i1 %i.do, label %bb.ab, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.ab:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.cv, i64 noundef %i.dn) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  %i.dp = sub nuw i64 %i.dn, %i.cv
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !439
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.cv
  store i64 %i.dp, ptr %i.i, align 8, !tbaa !249
  store ptr %i.dr, ptr %i.j, align 8, !tbaa !363
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NS1_5ColorELm6ESD_EEEEDaS4_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !478
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.u, %bb.d
  %.sink = phi ptr [ %i.ay, %bb.r ], [ %i.bh, %bb.u ], [ %i.c, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.r ], [ %i.bi, %bb.u ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !620, !nonnull !272, !align !273
  %i.f = load i64, ptr %1, align 8, !tbaa !633
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !623, !nonnull !272, !align !273 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !439  ; 15 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !438  ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.j, align 1, !tbaa !94    ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %_ZN6iguana6detail12from_pb_implIhEEvRT_RSt17basic_string_viewIcSt11char_traitsIcEEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = icmp ugt i64 %i.k, 9
  br i1 %i.p, label %bb.g, label %.preheader, !prof !257

.preheader:                                       ; preds = %bb.f
  %.not.i.i7 = icmp samesign eq i64 %i.k, 0
  br i1 %.not.i.i7, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.q = and i8 %i.m, 127
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 2 uses
  %i.u = load i8, ptr %i.s, align 1, !tbaa !94    ; 2 uses
  %i.v = sext i8 %i.u to i64
  %i.w = shl nsw i64 %i.v, 7
  %i.x = and i64 %i.w, 16256
  %i.y = or disjoint i64 %i.x, %i.r               ; 9 uses
  %i.z = icmp sgt i8 %i.u, -1
  br i1 %i.z, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 3 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_6WeaponESaISE_EELm7ESG_EEEEDaS4_:bb.a
  %i.fh = load i8, ptr %.170.i12.i507, align 1, !tbaa !94 ; 3 uses
  %i.fi = icmp slt i8 %i.fh, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %.170.i12.i507, i64 1 ; 3 uses
  br i1 %i.fi, label %bb.ar, label %.critedge.i16.i

bb.ar:                                            ; preds = %.lr.ph510
  %i.fk = and i8 %i.fh, 127
  %i.fl = zext nneg i8 %i.fk to i64
  %i.fm = shl i64 %i.fl, %indvars.iv852
  %i.fn = or i64 %i.fm, %.1.i13.i508
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 7
  %.not.i15.i = icmp eq ptr %i.fj, %i.df
  br i1 %.not.i15.i, label %.preheader207._crit_edge, label %.lr.ph510, !llvm.loop !46

.preheader207._crit_edge:                         ; preds = %bb.ar
  %i.fo = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull @.str.78)
          to label %.invoke1203 unwind label %bb.as

bb.as:                                            ; preds = %.preheader207._crit_edge
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fo) #28
  br label %.body.i

.critedge.i16.i:                                  ; preds = %.lr.ph510
  %i.fq = zext nneg i8 %i.fh to i64
  %i.fr = shl i64 %i.fq, %indvars.iv852
  %i.fs = or i64 %i.fr, %.1.i13.i508
  br label %bb.at

bb.at:                                            ; preds = %.critedge.i16.i, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.271.i17.i = phi ptr [ %i.fj, %.critedge.i16.i ], [ %i.fc, %bb.ao ], [ %i.do, %bb.ag ], [ %i.dv, %bb.ah ], [ %i.ec, %bb.ai ], [ %i.ej, %bb.aj ], [ %i.eq, %bb.ak ], [ %i.et, %bb.al ], [ %i.ew, %bb.am ], [ %i.ez, %bb.an ]
  %.2.i18.i = phi i64 [ %i.fs, %.critedge.i16.i ], [ %i.eo, %bb.ao ], [ %i.dt, %bb.ag ], [ %i.ea, %bb.ah ], [ %i.eh, %bb.ai ], [ %i.eo, %bb.aj ], [ %i.eo, %bb.ak ], [ %i.eo, %bb.al ], [ %i.eo, %bb.am ], [ %i.eo, %bb.an ]
  %i.ft = ptrtoint ptr %.271.i17.i to i64
  %i.fu = sub i64 %i.ft, %i.dj
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i: ; preds = %bb.at, %bb.ae
  %.0185 = phi i64 [ 1, %bb.ae ], [ %i.fu, %bb.at ] ; 6 uses
  %.072.i19.i = phi i64 [ %i.di, %bb.ae ], [ %.2.i18.i, %bb.at ]
  %i.fv = trunc i64 %.072.i19.i to i32            ; 2 uses
  %i.fw = and i32 %i.fv, 7                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.fx = lshr i32 %i.fv, 3
  store i32 %i.fx, ptr %i.a, align 4, !tbaa !164
  %i.fy = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.au, label %bb.ax, !prof !173

bb.au:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i
  %i.ga = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i29 = icmp eq i32 %i.ga, 0
  br i1 %.not.i29, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %6)
          to label %bb.aw unwind label %bb.dy

bb.aw:                                            ; preds = %bb.av
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i, %bb.au, %bb.aw
  %.sroa.02.0.copyload.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.gb = load i32, ptr %i.a, align 4, !tbaa !164 ; 2 uses
  %.not.i42 = icmp eq i32 %i.gb, 1
  %.pre.pre = load i64, ptr %4, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i42, label %bb.ay, label %bb.cm

bb.ay:                                            ; preds = %bb.ax
  %i.gc = icmp ugt i64 %.0185, %.pre.pre
  br i1 %i.gc, label %.invoke, label %.noexc53

.noexc53:                                         ; preds = %bb.ay
  %i.gd = sub nuw i64 %.pre.pre, %.0185           ; 3 uses
  %i.ge = load ptr, ptr %i.q, align 8, !tbaa !439 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.0185 ; 14 uses
  store i64 %i.gd, ptr %4, align 8, !tbaa !249
  store ptr %i.gf, ptr %i.q, align 8, !tbaa !363
  %.not4.i = icmp eq i32 %i.fw, 2
  br i1 %.not4.i, label %bb.bb, label %bb.az, !prof !257

bb.az:                                            ; preds = %.noexc53
  %i.gg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, ptr noundef nonnull @.str.79)
          to label %.invoke1203 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gg) #28
  br label %.body.i

bb.bb:                                            ; preds = %.noexc53
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 %.sroa.02.0.copyload.i ; 7 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.pre.pre
  %i.gk = load i8, ptr %i.gf, align 1, !tbaa !94  ; 3 uses
  %i.gl = icmp sgt i8 %i.gk, -1
  br i1 %i.gl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gm = zext nneg i8 %i.gk to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.gn = ptrtoint ptr %i.gf to i64
  %i.go = icmp ugt i64 %i.gd, 9
  br i1 %i.go, label %bb.be, label %.preheader206, !prof !257

.preheader206:                                    ; preds = %bb.bd
  %.not.i.i.i518 = icmp samesign eq i64 %.0185, %.pre.pre
  br i1 %.not.i.i.i518, label %.preheader206._crit_edge, label %.lr.ph522

bb.be:                                            ; preds = %bb.bd
  %i.gp = and i8 %i.gk, 127
  %i.gq = zext nneg i8 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 2 ; 2 uses
  %i.gt = load i8, ptr %i.gr, align 1, !tbaa !94  ; 2 uses
  %i.gu = sext i8 %i.gt to i64
  %i.gv = shl nsw i64 %i.gu, 7
  %i.gw = and i64 %i.gv, 16256
  %i.gx = or disjoint i64 %i.gw, %i.gq            ; 2 uses
  %i.gy = icmp sgt i8 %i.gt, -1
  br i1 %i.gy, label %bb.br, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gf, i64 3 ; 2 uses
  %i.ha = load i8, ptr %i.gs, align 1, !tbaa !94  ; 2 uses
  %i.hb = sext i8 %i.ha to i64
  %i.hc = shl nsw i64 %i.hb, 14
  %i.hd = and i64 %i.hc, 2080768
  %i.he = or disjoint i64 %i.hd, %i.gx            ; 2 uses
  %i.hf = icmp sgt i8 %i.ha, -1
  br i1 %i.hf, label %bb.br, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 2 uses
  %i.hh = load i8, ptr %i.gz, align 1, !tbaa !94  ; 2 uses
  %i.hi = sext i8 %i.hh to i64
  %i.hj = shl nsw i64 %i.hi, 21
  %i.hk = and i64 %i.hj, 266338304
  %i.hl = or disjoint i64 %i.hk, %i.he            ; 2 uses
  %i.hm = icmp sgt i8 %i.hh, -1
  br i1 %i.hm, label %bb.br, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gf, i64 5 ; 2 uses
  %i.ho = load i8, ptr %i.hg, align 1, !tbaa !94  ; 2 uses
  %i.hp = sext i8 %i.ho to i64
  %i.hq = shl nsw i64 %i.hp, 28
  %i.hr = and i64 %i.hq, 34091302912
  %i.hs = or disjoint i64 %i.hr, %i.hl            ; 2 uses
  %i.ht = icmp sgt i8 %i.ho, -1
  br i1 %i.ht, label %bb.br, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gf, i64 6 ; 2 uses
  %i.hv = load i8, ptr %i.hn, align 1, !tbaa !94  ; 2 uses
  %i.hw = sext i8 %i.hv to i64
  %i.hx = shl nsw i64 %i.hw, 35
  %i.hy = and i64 %i.hx, 4363686772736
  %i.hz = or disjoint i64 %i.hy, %i.hs            ; 2 uses
  %i.ia = icmp sgt i8 %i.hv, -1
  br i1 %i.ia, label %bb.br, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gf, i64 7 ; 2 uses
  %i.ic = load i8, ptr %i.hu, align 1, !tbaa !94  ; 2 uses
  %i.id = sext i8 %i.ic to i64
  %i.ie = shl nsw i64 %i.id, 42
  %i.if = and i64 %i.ie, 558551906910208
  %i.ig = or i64 %i.if, %i.hz                     ; 2 uses
  %i.ih = icmp sgt i8 %i.ic, -1
  br i1 %i.ih, label %bb.br, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.ij = load i8, ptr %i.ib, align 1, !tbaa !94  ; 2 uses
  %i.ik = sext i8 %i.ij to i64
  %i.il = shl nsw i64 %i.ik, 49
  %i.im = and i64 %i.il, 71494644084506624
  %i.in = or i64 %i.im, %i.ig                     ; 2 uses
  %i.io = icmp sgt i8 %i.ij, -1
  br i1 %i.io, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gf, i64 9 ; 2 uses
  %i.iq = load i8, ptr %i.ii, align 1, !tbaa !94  ; 2 uses
  %i.ir = sext i8 %i.iq to i64
  %i.is = shl nsw i64 %i.ir, 56
  %i.it = and i64 %i.is, 9151314442816847872
  %i.iu = or i64 %i.it, %i.in                     ; 2 uses
  %i.iv = icmp sgt i8 %i.iq, -1
  br i1 %i.iv, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gf, i64 10
  %i.ix = load i8, ptr %i.ip, align 1, !tbaa !94  ; 2 uses
  %i.iy = zext i8 %i.ix to i64
  %i.iz = shl i64 %i.iy, 63
  %i.ja = or i64 %i.iz, %i.iu
  %i.jb = icmp sgt i8 %i.ix, -1
  br i1 %i.jb, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noundef nonnull @.str.77)
          to label %.invoke1203 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jc) #28
  br label %.body.i

.lr.ph522:                                        ; preds = %.preheader206, %bb.bp
  %indvars.iv855 = phi i64 [ %indvars.iv.next856, %bb.bp ], [ 0, %.preheader206 ] ; 3 uses
  %.1.i.i.i520 = phi i64 [ %i.jk, %bb.bp ], [ 0, %.preheader206 ] ; 2 uses
  %.170.i.i.i519 = phi ptr [ %i.jg, %bb.bp ], [ %i.gf, %.preheader206 ] ; 2 uses
  %i.je = load i8, ptr %.170.i.i.i519, align 1, !tbaa !94 ; 3 uses
  %i.jf = icmp slt i8 %i.je, 0
  %i.jg = getelementptr inbounds nuw i8, ptr %.170.i.i.i519, i64 1 ; 3 uses
  br i1 %i.jf, label %bb.bp, label %.critedge.i.i.i

bb.bp:                                            ; preds = %.lr.ph522
  %i.jh = and i8 %i.je, 127
  %i.ji = zext nneg i8 %i.jh to i64
  %i.jj = shl i64 %i.ji, %indvars.iv855
  %i.jk = or i64 %i.jj, %.1.i.i.i520
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 7
  %.not.i.i.i = icmp eq ptr %i.jg, %i.gj
  br i1 %.not.i.i.i, label %.preheader206._crit_edge, label %.lr.ph522, !llvm.loop !46

.preheader206._crit_edge:                         ; preds = %.preheader206, %bb.bp
  %i.jl = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, ptr noundef nonnull @.str.78)
          to label %.invoke1203 unwind label %bb.bq

bb.bq:                                            ; preds = %.preheader206._crit_edge
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jl) #28
  br label %.body.i

.critedge.i.i.i:                                  ; preds = %.lr.ph522
  %i.jn = zext nneg i8 %i.je to i64
  %i.jo = shl i64 %i.jn, %indvars.iv855
  %i.jp = or i64 %i.jo, %.1.i.i.i520
  br label %bb.br

bb.br:                                            ; preds = %.critedge.i.i.i, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.271.i.i.i = phi ptr [ %i.jg, %.critedge.i.i.i ], [ %i.iw, %bb.bm ], [ %i.gs, %bb.be ], [ %i.gz, %bb.bf ], [ %i.hg, %bb.bg ], [ %i.hn, %bb.bh ], [ %i.hu, %bb.bi ], [ %i.ib, %bb.bj ], [ %i.ii, %bb.bk ], [ %i.ip, %bb.bl ]
  %.2.i.i.i = phi i64 [ %i.jp, %.critedge.i.i.i ], [ %i.ja, %bb.bm ], [ %i.gx, %bb.be ], [ %i.he, %bb.bf ], [ %i.hl, %bb.bg ], [ %i.hs, %bb.bh ], [ %i.hz, %bb.bi ], [ %i.ig, %bb.bj ], [ %i.in, %bb.bk ], [ %i.iu, %bb.bl ]
  %i.jq = ptrtoint ptr %.271.i.i.i to i64
  %i.jr = sub i64 %i.jq, %i.gn
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i: ; preds = %bb.br, %bb.bc
  %.0174 = phi i64 [ 1, %bb.bc ], [ %i.jr, %bb.br ] ; 2 uses
  %.072.i.i.i = phi i64 [ %i.gm, %bb.bc ], [ %.2.i.i.i, %bb.br ] ; 7 uses
  %i.js = add i64 %.072.i.i.i, %.0174             ; 6 uses
  %i.jt = icmp ult i64 %i.gd, %i.js
  br i1 %i.jt, label %bb.bs, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, !prof !169

bb.bs:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i
  %i.ju = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noundef nonnull @.str.89)
          to label %.invoke1203 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ju) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i
  %i.jw = load ptr, ptr %i.gi, align 8, !tbaa !95 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ka = phi i64 [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i ]
  %i.kb = icmp ugt i64 %.072.i.i.i, %i.ka
  br i1 %i.kb, label %bb.bu, label %.noexc60

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gi, i64 noundef %.072.i.i.i)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %bb.bu
  %.pre.i = load ptr, ptr %i.gi, align 8, !tbaa !95
  br label %.noexc60

.noexc60:                                         ; preds = %.noexc106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.kc = phi ptr [ %.pre.i, %.noexc106 ], [ %i.jw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %.072.i.i.i, ptr %i.kd, align 8, !tbaa !93
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.072.i.i.i
  store i8 0, ptr %i.ke, align 1, !tbaa !94
  %i.kf = load ptr, ptr %i.gi, align 8, !tbaa !95
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.072.i.i.i
  store i8 0, ptr %i.kg, align 1, !tbaa !94
  %i.kh = load ptr, ptr %i.gi, align 8, !tbaa !95
  %i.ki = load ptr, ptr %i.q, align 8, !tbaa !439
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.0174
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kh, ptr align 1 %i.kj, i64 %.072.i.i.i, i1 false)
  %i.kk = load i64, ptr %4, align 8, !tbaa !438   ; 5 uses
  %i.kl = icmp ugt i64 %i.js, %i.kk
  br i1 %i.kl, label %.invoke, label %.noexc61

.noexc61:                                         ; preds = %.noexc60
  %i.km = sub nuw i64 %i.kk, %i.js                ; 3 uses
  %i.kn = load ptr, ptr %i.q, align 8, !tbaa !439 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.js ; 14 uses
  store i64 %i.km, ptr %4, align 8, !tbaa !249
  store ptr %i.ko, ptr %i.q, align 8, !tbaa !363
  %i.kp = icmp eq i64 %i.kk, %i.js
  br i1 %i.kp, label %.critedge.i, label %bb.bv

bb.bv:                                            ; preds = %.noexc61
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kk
  %i.kr = load i8, ptr %i.ko, align 1, !tbaa !94  ; 3 uses
  %i.ks = icmp sgt i8 %i.kr, -1
  br i1 %i.ks, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kt = zext nneg i8 %i.kr to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i50

bb.bx:                                            ; preds = %bb.bv
  %i.ku = ptrtoint ptr %i.ko to i64
  %i.kv = icmp ugt i64 %i.km, 9
  br i1 %i.kv, label %bb.by, label %.lr.ph534, !prof !257

bb.by:                                            ; preds = %bb.bx
  %i.kw = and i8 %i.kr, 127
  %i.kx = zext nneg i8 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ko, i64 2 ; 2 uses
  %i.la = load i8, ptr %i.ky, align 1, !tbaa !94  ; 2 uses
  %i.lb = sext i8 %i.la to i64
  %i.lc = shl nsw i64 %i.lb, 7
  %i.ld = and i64 %i.lc, 16256
  %i.le = or disjoint i64 %i.ld, %i.kx            ; 2 uses
  %i.lf = icmp sgt i8 %i.la, -1
  br i1 %i.lf, label %bb.cl, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ko, i64 3 ; 2 uses
  %i.lh = load i8, ptr %i.kz, align 1, !tbaa !94  ; 2 uses
  %i.li = sext i8 %i.lh to i64
  %i.lj = shl nsw i64 %i.li, 14
  %i.lk = and i64 %i.lj, 2080768
  %i.ll = or disjoint i64 %i.lk, %i.le            ; 2 uses
  %i.lm = icmp sgt i8 %i.lh, -1
  br i1 %i.lm, label %bb.cl, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 2 uses
  %i.lo = load i8, ptr %i.lg, align 1, !tbaa !94  ; 2 uses
  %i.lp = sext i8 %i.lo to i64
  %i.lq = shl nsw i64 %i.lp, 21
  %i.lr = and i64 %i.lq, 266338304
  %i.ls = or disjoint i64 %i.lr, %i.ll            ; 2 uses
  %i.lt = icmp sgt i8 %i.lo, -1
  br i1 %i.lt, label %bb.cl, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ko, i64 5 ; 2 uses
  %i.lv = load i8, ptr %i.ln, align 1, !tbaa !94  ; 2 uses
  %i.lw = sext i8 %i.lv to i64
  %i.lx = shl nsw i64 %i.lw, 28
  %i.ly = and i64 %i.lx, 34091302912
  %i.lz = or disjoint i64 %i.ly, %i.ls            ; 6 uses
  %i.ma = icmp sgt i8 %i.lv, -1
  br i1 %i.ma, label %bb.cl, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ko, i64 6 ; 2 uses
  %i.mc = load i8, ptr %i.lu, align 1, !tbaa !94
  %i.md = icmp sgt i8 %i.mc, -1
  br i1 %i.md, label %bb.cl, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.me = getelementptr inbounds nuw i8, ptr %i.ko, i64 7 ; 2 uses
  %i.mf = load i8, ptr %i.mb, align 1, !tbaa !94
  %i.mg = icmp sgt i8 %i.mf, -1
  br i1 %i.mg, label %bb.cl, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.mi = load i8, ptr %i.me, align 1, !tbaa !94
  %i.mj = icmp sgt i8 %i.mi, -1
  br i1 %i.mj, label %bb.cl, label %bb.cf
end_hunk_16
begin_hunk_17_@_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_NS1_6WeaponELm8ESD_EEEEDaS4_:bb.a
  br i1 %.not.i15.i, label %._crit_edge172, label %.lr.ph171, !llvm.loop !46

._crit_edge172:                                   ; preds = %bb.ar
  %i.ev = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull @.str.78)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %._crit_edge172
  tail call void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.at:                                            ; preds = %._crit_edge172
  %i.ew = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ev) #28
  br label %common.resume

.critedge.i16.i:                                  ; preds = %.lr.ph171
  %i.ex = zext nneg i8 %i.eo to i64
  %i.ey = shl i64 %i.ex, %indvars.iv231
  %i.ez = or i64 %i.ey, %.1.i13.i169
  br label %bb.au

bb.au:                                            ; preds = %.critedge.i16.i, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.271.i17.i = phi ptr [ %i.eq, %.critedge.i16.i ], [ %i.ej, %bb.an ], [ %i.cv, %bb.af ], [ %i.dc, %bb.ag ], [ %i.dj, %bb.ah ], [ %i.dq, %bb.ai ], [ %i.dx, %bb.aj ], [ %i.ea, %bb.ak ], [ %i.ed, %bb.al ], [ %i.eg, %bb.am ]
  %.2.i18.i = phi i64 [ %i.ez, %.critedge.i16.i ], [ %i.dv, %bb.an ], [ %i.da, %bb.af ], [ %i.dh, %bb.ag ], [ %i.do, %bb.ah ], [ %i.dv, %bb.ai ], [ %i.dv, %bb.aj ], [ %i.dv, %bb.ak ], [ %i.dv, %bb.al ], [ %i.dv, %bb.am ]
  %i.fa = ptrtoint ptr %.271.i17.i to i64
  %i.fb = sub i64 %i.fa, %i.cq
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i: ; preds = %bb.au, %bb.ad
  %.0112 = phi i64 [ 1, %bb.ad ], [ %i.fb, %bb.au ] ; 6 uses
  %.072.i19.i = phi i64 [ %i.cp, %bb.ad ], [ %.2.i18.i, %bb.au ]
  %i.fc = trunc i64 %.072.i19.i to i32            ; 2 uses
  %i.fd = and i32 %i.fc, 7                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.fe = lshr i32 %i.fc, 3
  store i32 %i.fe, ptr %i.a, align 4, !tbaa !164
  %i.ff = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.av, label %bb.ay, !prof !173

bb.av:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i
  %i.fh = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %i.h)
          to label %bb.ax unwind label %bb.eo

bb.ax:                                            ; preds = %bb.aw
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i, %bb.av, %bb.ax
  %.sroa.02.0.copyload.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.fi = load i32, ptr %i.a, align 4, !tbaa !164 ; 2 uses
  %.not.i13 = icmp eq i32 %i.fi, 1
  %.pre.pre = load i64, ptr %2, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i13, label %bb.az, label %bb.cv

bb.az:                                            ; preds = %bb.ay
  %i.fj = icmp ugt i64 %.0112, %.pre.pre
  br i1 %i.fj, label %bb.ba, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53

bb.ba:                                            ; preds = %bb.az
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0112, i64 noundef %.pre.pre) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53: ; preds = %bb.az
  %i.fk = sub nuw i64 %.pre.pre, %.0112           ; 3 uses
  %i.fl = load ptr, ptr %i.cl, align 8, !tbaa !439 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.0112 ; 14 uses
  store i64 %i.fk, ptr %2, align 8, !tbaa !249
  store ptr %i.fm, ptr %i.cl, align 8, !tbaa !363
  %.not4.i = icmp eq i32 %i.fd, 2
  br i1 %.not4.i, label %bb.be, label %bb.bb, !prof !257

bb.bb:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53
  %i.fn = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull @.str.79)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  tail call void @__cxa_throw(ptr nonnull %i.fn, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.fo = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.fn) #28
  br label %common.resume

bb.be:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit53
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.02.0.copyload.i ; 7 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.pre.pre
  %i.fr = load i8, ptr %i.fm, align 1, !tbaa !94  ; 3 uses
  %i.fs = icmp sgt i8 %i.fr, -1
  br i1 %i.fs, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ft = zext nneg i8 %i.fr to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i

bb.bg:                                            ; preds = %bb.be
  %i.fu = ptrtoint ptr %i.fm to i64
  %i.fv = icmp ugt i64 %i.fk, 9
  br i1 %i.fv, label %bb.bh, label %.preheader131, !prof !257

.preheader131:                                    ; preds = %bb.bg
  %.not.i.i.i173 = icmp samesign eq i64 %.0112, %.pre.pre
  br i1 %.not.i.i.i173, label %._crit_edge178, label %.lr.ph177

bb.bh:                                            ; preds = %bb.bg
  %i.fw = and i8 %i.fr, 127
  %i.fx = zext nneg i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 2 ; 2 uses
  %i.ga = load i8, ptr %i.fy, align 1, !tbaa !94  ; 2 uses
  %i.gb = sext i8 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 7
  %i.gd = and i64 %i.gc, 16256
  %i.ge = or disjoint i64 %i.gd, %i.fx            ; 2 uses
  %i.gf = icmp sgt i8 %i.ga, -1
  br i1 %i.gf, label %bb.bw, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fm, i64 3 ; 2 uses
  %i.gh = load i8, ptr %i.fz, align 1, !tbaa !94  ; 2 uses
  %i.gi = sext i8 %i.gh to i64
  %i.gj = shl nsw i64 %i.gi, 14
  %i.gk = and i64 %i.gj, 2080768
  %i.gl = or disjoint i64 %i.gk, %i.ge            ; 2 uses
  %i.gm = icmp sgt i8 %i.gh, -1
  br i1 %i.gm, label %bb.bw, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4 ; 2 uses
  %i.go = load i8, ptr %i.gg, align 1, !tbaa !94  ; 2 uses
  %i.gp = sext i8 %i.go to i64
  %i.gq = shl nsw i64 %i.gp, 21
  %i.gr = and i64 %i.gq, 266338304
  %i.gs = or disjoint i64 %i.gr, %i.gl            ; 2 uses
  %i.gt = icmp sgt i8 %i.go, -1
  br i1 %i.gt, label %bb.bw, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fm, i64 5 ; 2 uses
  %i.gv = load i8, ptr %i.gn, align 1, !tbaa !94  ; 2 uses
  %i.gw = sext i8 %i.gv to i64
  %i.gx = shl nsw i64 %i.gw, 28
  %i.gy = and i64 %i.gx, 34091302912
  %i.gz = or disjoint i64 %i.gy, %i.gs            ; 2 uses
  %i.ha = icmp sgt i8 %i.gv, -1
  br i1 %i.ha, label %bb.bw, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fm, i64 6 ; 2 uses
  %i.hc = load i8, ptr %i.gu, align 1, !tbaa !94  ; 2 uses
  %i.hd = sext i8 %i.hc to i64
  %i.he = shl nsw i64 %i.hd, 35
  %i.hf = and i64 %i.he, 4363686772736
  %i.hg = or disjoint i64 %i.hf, %i.gz            ; 2 uses
  %i.hh = icmp sgt i8 %i.hc, -1
  br i1 %i.hh, label %bb.bw, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fm, i64 7 ; 2 uses
  %i.hj = load i8, ptr %i.hb, align 1, !tbaa !94  ; 2 uses
  %i.hk = sext i8 %i.hj to i64
  %i.hl = shl nsw i64 %i.hk, 42
  %i.hm = and i64 %i.hl, 558551906910208
  %i.hn = or i64 %i.hm, %i.hg                     ; 2 uses
  %i.ho = icmp sgt i8 %i.hj, -1
  br i1 %i.ho, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.hq = load i8, ptr %i.hi, align 1, !tbaa !94  ; 2 uses
  %i.hr = sext i8 %i.hq to i64
  %i.hs = shl nsw i64 %i.hr, 49
  %i.ht = and i64 %i.hs, 71494644084506624
  %i.hu = or i64 %i.ht, %i.hn                     ; 2 uses
  %i.hv = icmp sgt i8 %i.hq, -1
  br i1 %i.hv, label %bb.bw, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fm, i64 9 ; 2 uses
  %i.hx = load i8, ptr %i.hp, align 1, !tbaa !94  ; 2 uses
  %i.hy = sext i8 %i.hx to i64
  %i.hz = shl nsw i64 %i.hy, 56
  %i.ia = and i64 %i.hz, 9151314442816847872
  %i.ib = or i64 %i.ia, %i.hu                     ; 2 uses
  %i.ic = icmp sgt i8 %i.hx, -1
  br i1 %i.ic, label %bb.bw, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.id = getelementptr inbounds nuw i8, ptr %i.fm, i64 10
  %i.ie = load i8, ptr %i.hw, align 1, !tbaa !94  ; 2 uses
  %i.if = zext i8 %i.ie to i64
  %i.ig = shl i64 %i.if, 63
  %i.ih = or i64 %i.ig, %i.ib
  %i.ii = icmp sgt i8 %i.ie, -1
  br i1 %i.ii, label %bb.bw, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ij = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull @.str.77)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call void @__cxa_throw(ptr nonnull %i.ij, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.ik = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ij) #28
  br label %common.resume

.lr.ph177:                                        ; preds = %.preheader131, %bb.bt
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %bb.bt ], [ 0, %.preheader131 ] ; 3 uses
  %.1.i.i.i175 = phi i64 [ %i.ir, %bb.bt ], [ 0, %.preheader131 ] ; 2 uses
  %.170.i.i.i174 = phi ptr [ %i.in, %bb.bt ], [ %i.fm, %.preheader131 ] ; 2 uses
  %i.il = load i8, ptr %.170.i.i.i174, align 1, !tbaa !94 ; 3 uses
  %i.im = icmp slt i8 %i.il, 0
  %i.in = getelementptr inbounds nuw i8, ptr %.170.i.i.i174, i64 1 ; 3 uses
  br i1 %i.im, label %bb.bt, label %.critedge.i.i.i

bb.bt:                                            ; preds = %.lr.ph177
  %i.io = and i8 %i.il, 127
  %i.ip = zext nneg i8 %i.io to i64
  %i.iq = shl i64 %i.ip, %indvars.iv234
  %i.ir = or i64 %i.iq, %.1.i.i.i175
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 7
  %.not.i.i.i = icmp eq ptr %i.in, %i.fq
  br i1 %.not.i.i.i, label %._crit_edge178, label %.lr.ph177, !llvm.loop !46

._crit_edge178:                                   ; preds = %bb.bt, %.preheader131
  %i.is = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull @.str.78)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %._crit_edge178
  tail call void @__cxa_throw(ptr nonnull %i.is, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.bv:                                            ; preds = %._crit_edge178
  %i.it = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.is) #28
  br label %common.resume

.critedge.i.i.i:                                  ; preds = %.lr.ph177
  %i.iu = zext nneg i8 %i.il to i64
  %i.iv = shl i64 %i.iu, %indvars.iv234
  %i.iw = or i64 %i.iv, %.1.i.i.i175
  br label %bb.bw

bb.bw:                                            ; preds = %.critedge.i.i.i, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %.271.i.i.i = phi ptr [ %i.in, %.critedge.i.i.i ], [ %i.id, %bb.bp ], [ %i.fz, %bb.bh ], [ %i.gg, %bb.bi ], [ %i.gn, %bb.bj ], [ %i.gu, %bb.bk ], [ %i.hb, %bb.bl ], [ %i.hi, %bb.bm ], [ %i.hp, %bb.bn ], [ %i.hw, %bb.bo ]
  %.2.i.i.i = phi i64 [ %i.iw, %.critedge.i.i.i ], [ %i.ih, %bb.bp ], [ %i.ge, %bb.bh ], [ %i.gl, %bb.bi ], [ %i.gs, %bb.bj ], [ %i.gz, %bb.bk ], [ %i.hg, %bb.bl ], [ %i.hn, %bb.bm ], [ %i.hu, %bb.bn ], [ %i.ib, %bb.bo ]
  %i.ix = ptrtoint ptr %.271.i.i.i to i64
  %i.iy = sub i64 %i.ix, %i.fu
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i: ; preds = %bb.bw, %bb.bf
  %.0101 = phi i64 [ 1, %bb.bf ], [ %i.iy, %bb.bw ] ; 2 uses
  %.072.i.i.i = phi i64 [ %i.ft, %bb.bf ], [ %.2.i.i.i, %bb.bw ] ; 7 uses
  %i.iz = add i64 %.072.i.i.i, %.0101             ; 6 uses
  %i.ja = icmp ult i64 %i.fk, %i.iz
  br i1 %i.ja, label %bb.bx, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, !prof !169

bb.bx:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i
  %i.jb = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, ptr noundef nonnull @.str.89)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  tail call void @__cxa_throw(ptr nonnull %i.jb, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.jc = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.jb) #28
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i
  %i.jd = load ptr, ptr %i.fp, align 8, !tbaa !95 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.jh = phi i64 [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i ]
  %i.ji = icmp ugt i64 %.072.i.i.i, %i.jh
  br i1 %i.ji, label %bb.ca, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i64 noundef %.072.i.i.i)
  %.pre.i = load ptr, ptr %i.fp, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.ca
  %i.jj = phi ptr [ %.pre.i, %bb.ca ], [ %i.jd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %.072.i.i.i, ptr %i.jk, align 8, !tbaa !93
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.072.i.i.i
  store i8 0, ptr %i.jl, align 1, !tbaa !94
  %i.jm = load ptr, ptr %i.fp, align 8, !tbaa !95
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.072.i.i.i
  store i8 0, ptr %i.jn, align 1, !tbaa !94
  %i.jo = load ptr, ptr %i.fp, align 8, !tbaa !95
  %i.jp = load ptr, ptr %i.cl, align 8, !tbaa !439 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %.0101
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jo, ptr align 1 %i.jq, i64 %.072.i.i.i, i1 false)
  %i.jr = load i64, ptr %2, align 8, !tbaa !438   ; 5 uses
  %i.js = icmp ugt i64 %i.iz, %i.jr
  br i1 %i.js, label %bb.cb, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57

bb.cb:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.iz, i64 noundef %i.jr) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  %i.jt = sub nuw i64 %i.jr, %i.iz                ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.iz ; 14 uses
  store i64 %i.jt, ptr %2, align 8, !tbaa !249
  store ptr %i.ju, ptr %i.cl, align 8, !tbaa !363
  %i.jv = icmp eq i64 %i.jr, %i.iz
  br i1 %i.jv, label %.critedge.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit57
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jr
  %i.jx = load i8, ptr %i.ju, align 1, !tbaa !94  ; 3 uses
  %i.jy = icmp sgt i8 %i.jx, -1
  br i1 %i.jy, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.jz = zext nneg i8 %i.jx to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i21

bb.ce:                                            ; preds = %bb.cc
  %i.ka = ptrtoint ptr %i.ju to i64
  %i.kb = icmp ugt i64 %i.jt, 9
  br i1 %i.kb, label %bb.cf, label %.lr.ph183, !prof !257

bb.cf:                                            ; preds = %bb.ce
  %i.kc = and i8 %i.jx, 127
  %i.kd = zext nneg i8 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ju, i64 2 ; 2 uses
  %i.kg = load i8, ptr %i.ke, align 1, !tbaa !94  ; 2 uses
  %i.kh = sext i8 %i.kg to i64
  %i.ki = shl nsw i64 %i.kh, 7
  %i.kj = and i64 %i.ki, 16256
  %i.kk = or disjoint i64 %i.kj, %i.kd            ; 2 uses
  %i.kl = icmp sgt i8 %i.kg, -1
  br i1 %i.kl, label %bb.cu, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.km = getelementptr inbounds nuw i8, ptr %i.ju, i64 3 ; 2 uses
  %i.kn = load i8, ptr %i.kf, align 1, !tbaa !94  ; 2 uses
  %i.ko = sext i8 %i.kn to i64
  %i.kp = shl nsw i64 %i.ko, 14
  %i.kq = and i64 %i.kp, 2080768
  %i.kr = or disjoint i64 %i.kq, %i.kk            ; 2 uses
  %i.ks = icmp sgt i8 %i.kn, -1
  br i1 %i.ks, label %bb.cu, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ju, i64 4 ; 2 uses
  %i.ku = load i8, ptr %i.km, align 1, !tbaa !94  ; 2 uses
  %i.kv = sext i8 %i.ku to i64
  %i.kw = shl nsw i64 %i.kv, 21
  %i.kx = and i64 %i.kw, 266338304
  %i.ky = or disjoint i64 %i.kx, %i.kr            ; 2 uses
  %i.kz = icmp sgt i8 %i.ku, -1
  br i1 %i.kz, label %bb.cu, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.la = getelementptr inbounds nuw i8, ptr %i.ju, i64 5 ; 2 uses
  %i.lb = load i8, ptr %i.kt, align 1, !tbaa !94  ; 2 uses
  %i.lc = sext i8 %i.lb to i64
  %i.ld = shl nsw i64 %i.lc, 28
  %i.le = and i64 %i.ld, 34091302912
  %i.lf = or disjoint i64 %i.le, %i.ky            ; 6 uses
  %i.lg = icmp sgt i8 %i.lb, -1
  br i1 %i.lg, label %bb.cu, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ju, i64 6 ; 2 uses
  %i.li = load i8, ptr %i.la, align 1, !tbaa !94
  %i.lj = icmp sgt i8 %i.li, -1
  br i1 %i.lj, label %bb.cu, label %bb.ck
end_hunk_17
begin_hunk_18_@_ZN6iguana9base_implIN9pb_sample7MonsterELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.1.i.i43.i1594 = phi i64 [ %i.ake, %bb.kk ], [ 0, %.preheader915 ] ; 2 uses
  %.170.i.i42.i1593 = phi ptr [ %i.aka, %bb.kk ], [ %i.ahu, %.preheader915 ] ; 2 uses
  %i.ajy = load i8, ptr %.170.i.i42.i1593, align 1, !tbaa !94 ; 3 uses
  %i.ajz = icmp slt i8 %i.ajy, 0
  %i.aka = getelementptr inbounds nuw i8, ptr %.170.i.i42.i1593, i64 1 ; 3 uses
  br i1 %i.ajz, label %bb.kk, label %.critedge.i.i46.i

bb.kk:                                            ; preds = %.lr.ph1596
  %i.akb = and i8 %i.ajy, 127
  %i.akc = zext nneg i8 %i.akb to i64
  %i.akd = shl i64 %i.akc, %indvars.iv2502
  %i.ake = or i64 %i.akd, %.1.i.i43.i1594
  %indvars.iv.next2503 = add nuw nsw i64 %indvars.iv2502, 7
  %.not.i.i45.i = icmp eq ptr %i.aka, %i.afb
  br i1 %.not.i.i45.i, label %._crit_edge1597, label %.lr.ph1596, !llvm.loop !46

._crit_edge1597:                                  ; preds = %bb.kk, %.preheader915
  %i.akf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.akf, ptr noundef nonnull @.str.78)
          to label %bb.kl unwind label %bb.km

bb.kl:                                            ; preds = %._crit_edge1597
  call void @__cxa_throw(ptr nonnull %i.akf, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.km:                                            ; preds = %._crit_edge1597
  %i.akg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.akf) #28
  br label %common.resume

.critedge.i.i46.i:                                ; preds = %.lr.ph1596
  %i.akh = zext nneg i8 %i.ajy to i64
  %i.aki = shl i64 %i.akh, %indvars.iv2502
  %i.akj = or i64 %i.aki, %.1.i.i43.i1594
  br label %bb.kn

bb.kn:                                            ; preds = %.critedge.i.i46.i, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz, %bb.jy
  %.271.i.i47.i = phi ptr [ %i.aka, %.critedge.i.i46.i ], [ %i.ajt, %bb.kg ], [ %i.aif, %bb.jy ], [ %i.aim, %bb.jz ], [ %i.ait, %bb.ka ], [ %i.aja, %bb.kb ], [ %i.ajh, %bb.kc ], [ %i.ajk, %bb.kd ], [ %i.ajn, %bb.ke ], [ %i.ajq, %bb.kf ]
  %.2.i.i48.i = phi i64 [ %i.akj, %.critedge.i.i46.i ], [ %i.ajf, %bb.kg ], [ %i.aik, %bb.jy ], [ %i.air, %bb.jz ], [ %i.aiy, %bb.ka ], [ %i.ajf, %bb.kb ], [ %i.ajf, %bb.kc ], [ %i.ajf, %bb.kd ], [ %i.ajf, %bb.ke ], [ %i.ajf, %bb.kf ]
  %i.akk = ptrtoint ptr %.271.i.i47.i to i64
  %i.akl = sub i64 %i.akk, %i.ahz
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i: ; preds = %bb.jw, %bb.kn
  %.18 = phi i64 [ 1, %bb.jw ], [ %i.akl, %bb.kn ]
  %.072.i.i50.i = phi i64 [ %i.ahy, %bb.jw ], [ %.2.i.i48.i, %bb.kn ]
  %i.akm = trunc i64 %.072.i.i50.i to i32         ; 2 uses
  %i.akn = and i32 %i.akm, 7
  %i.ako = lshr i32 %i.akm, 3                     ; 2 uses
  store i32 %i.ako, ptr %i.e, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread744

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread744: ; preds = %thread-pre-split738, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i
  %.pr767 = phi i32 [ %i.ako, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.pr753, %thread-pre-split738 ] ; 2 uses
  %.2684751 = phi i32 [ %i.akn, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.1683, %thread-pre-split738 ] ; 2 uses
  %.3694750 = phi i64 [ %.18, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.2693, %thread-pre-split738 ] ; 6 uses
  %.sroa.02.0.copyload.i53.i752 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 120), align 8, !tbaa !249
  %.not.i54.i = icmp eq i32 %.pr767, 4
  br i1 %.not.i54.i, label %bb.ko, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread758

bb.ko:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread744
  %i.akp = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.akq = icmp ugt i64 %.3694750, %i.akp
  br i1 %i.akq, label %bb.kp, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit59

bb.kp:                                            ; preds = %bb.ko
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.3694750, i64 noundef %i.akp) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit59: ; preds = %bb.ko
  %i.akr = sub nuw i64 %i.akp, %.3694750          ; 3 uses
  %i.aks = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 %.3694750 ; 14 uses
  store i64 %i.akr, ptr %17, align 8, !tbaa !249
  store ptr %i.akt, ptr %i.f, align 8, !tbaa !363
  %.not4.i56.i = icmp eq i32 %.2684751, 2
  br i1 %.not4.i56.i, label %bb.kt, label %bb.kq, !prof !257

bb.kq:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit59
  %i.aku = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aku, ptr noundef nonnull @.str.79)
          to label %bb.kr unwind label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  call void @__cxa_throw(ptr nonnull %i.aku, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.ks:                                            ; preds = %bb.kq
  %i.akv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aku) #28
  br label %common.resume

bb.kt:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit59
  %i.akw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i53.i752 ; 7 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aks, i64 %i.akp
  %i.aky = load i8, ptr %i.akt, align 1, !tbaa !94 ; 3 uses
  %i.akz = icmp sgt i8 %i.aky, -1
  br i1 %i.akz, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.ala = zext nneg i8 %i.aky to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i

bb.kv:                                            ; preds = %bb.kt
  %i.alb = ptrtoint ptr %i.akt to i64
  %i.alc = icmp ugt i64 %i.akr, 9
  br i1 %i.alc, label %bb.kw, label %.preheader914, !prof !257

.preheader914:                                    ; preds = %bb.kv
  %.not.i.i.i60.i1598 = icmp samesign eq i64 %.3694750, %i.akp
  br i1 %.not.i.i.i60.i1598, label %._crit_edge1603, label %.lr.ph1602

bb.kw:                                            ; preds = %bb.kv
  %i.ald = and i8 %i.aky, 127
  %i.ale = zext nneg i8 %i.ald to i64
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akt, i64 1
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akt, i64 2 ; 2 uses
  %i.alh = load i8, ptr %i.alf, align 1, !tbaa !94 ; 2 uses
  %i.ali = sext i8 %i.alh to i64
  %i.alj = shl nsw i64 %i.ali, 7
  %i.alk = and i64 %i.alj, 16256
  %i.all = or disjoint i64 %i.alk, %i.ale         ; 2 uses
  %i.alm = icmp sgt i8 %i.alh, -1
  br i1 %i.alm, label %bb.ll, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.aln = getelementptr inbounds nuw i8, ptr %i.akt, i64 3 ; 2 uses
  %i.alo = load i8, ptr %i.alg, align 1, !tbaa !94 ; 2 uses
  %i.alp = sext i8 %i.alo to i64
  %i.alq = shl nsw i64 %i.alp, 14
  %i.alr = and i64 %i.alq, 2080768
  %i.als = or disjoint i64 %i.alr, %i.all         ; 2 uses
  %i.alt = icmp sgt i8 %i.alo, -1
  br i1 %i.alt, label %bb.ll, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.alu = getelementptr inbounds nuw i8, ptr %i.akt, i64 4 ; 2 uses
  %i.alv = load i8, ptr %i.aln, align 1, !tbaa !94 ; 2 uses
  %i.alw = sext i8 %i.alv to i64
  %i.alx = shl nsw i64 %i.alw, 21
  %i.aly = and i64 %i.alx, 266338304
  %i.alz = or disjoint i64 %i.aly, %i.als         ; 2 uses
  %i.ama = icmp sgt i8 %i.alv, -1
  br i1 %i.ama, label %bb.ll, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.amb = getelementptr inbounds nuw i8, ptr %i.akt, i64 5 ; 2 uses
  %i.amc = load i8, ptr %i.alu, align 1, !tbaa !94 ; 2 uses
  %i.amd = sext i8 %i.amc to i64
  %i.ame = shl nsw i64 %i.amd, 28
  %i.amf = and i64 %i.ame, 34091302912
  %i.amg = or disjoint i64 %i.amf, %i.alz         ; 2 uses
  %i.amh = icmp sgt i8 %i.amc, -1
  br i1 %i.amh, label %bb.ll, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ami = getelementptr inbounds nuw i8, ptr %i.akt, i64 6 ; 2 uses
  %i.amj = load i8, ptr %i.amb, align 1, !tbaa !94 ; 2 uses
  %i.amk = sext i8 %i.amj to i64
  %i.aml = shl nsw i64 %i.amk, 35
  %i.amm = and i64 %i.aml, 4363686772736
  %i.amn = or disjoint i64 %i.amm, %i.amg         ; 2 uses
  %i.amo = icmp sgt i8 %i.amj, -1
  br i1 %i.amo, label %bb.ll, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.amp = getelementptr inbounds nuw i8, ptr %i.akt, i64 7 ; 2 uses
  %i.amq = load i8, ptr %i.ami, align 1, !tbaa !94 ; 2 uses
  %i.amr = sext i8 %i.amq to i64
  %i.ams = shl nsw i64 %i.amr, 42
  %i.amt = and i64 %i.ams, 558551906910208
  %i.amu = or i64 %i.amt, %i.amn                  ; 2 uses
  %i.amv = icmp sgt i8 %i.amq, -1
  br i1 %i.amv, label %bb.ll, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.amw = getelementptr inbounds nuw i8, ptr %i.akt, i64 8 ; 2 uses
  %i.amx = load i8, ptr %i.amp, align 1, !tbaa !94 ; 2 uses
  %i.amy = sext i8 %i.amx to i64
  %i.amz = shl nsw i64 %i.amy, 49
  %i.ana = and i64 %i.amz, 71494644084506624
  %i.anb = or i64 %i.ana, %i.amu                  ; 2 uses
  %i.anc = icmp sgt i8 %i.amx, -1
  br i1 %i.anc, label %bb.ll, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.and = getelementptr inbounds nuw i8, ptr %i.akt, i64 9 ; 2 uses
  %i.ane = load i8, ptr %i.amw, align 1, !tbaa !94 ; 2 uses
  %i.anf = sext i8 %i.ane to i64
  %i.ang = shl nsw i64 %i.anf, 56
  %i.anh = and i64 %i.ang, 9151314442816847872
  %i.ani = or i64 %i.anh, %i.anb                  ; 2 uses
  %i.anj = icmp sgt i8 %i.ane, -1
  br i1 %i.anj, label %bb.ll, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.ank = getelementptr inbounds nuw i8, ptr %i.akt, i64 10
  %i.anl = load i8, ptr %i.and, align 1, !tbaa !94 ; 2 uses
  %i.anm = zext i8 %i.anl to i64
  %i.ann = shl i64 %i.anm, 63
  %i.ano = or i64 %i.ann, %i.ani
  %i.anp = icmp sgt i8 %i.anl, -1
  br i1 %i.anp, label %bb.ll, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.anq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.anq, ptr noundef nonnull @.str.77)
          to label %bb.lg unwind label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  call void @__cxa_throw(ptr nonnull %i.anq, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.lh:                                            ; preds = %bb.lf
  %i.anr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.anq) #28
  br label %common.resume

.lr.ph1602:                                       ; preds = %.preheader914, %bb.li
  %indvars.iv2505 = phi i64 [ %indvars.iv.next2506, %bb.li ], [ 0, %.preheader914 ] ; 3 uses
  %.1.i.i.i58.i1600 = phi i64 [ %i.any, %bb.li ], [ 0, %.preheader914 ] ; 2 uses
  %.170.i.i.i57.i1599 = phi ptr [ %i.anu, %bb.li ], [ %i.akt, %.preheader914 ] ; 2 uses
  %i.ans = load i8, ptr %.170.i.i.i57.i1599, align 1, !tbaa !94 ; 3 uses
  %i.ant = icmp slt i8 %i.ans, 0
  %i.anu = getelementptr inbounds nuw i8, ptr %.170.i.i.i57.i1599, i64 1 ; 3 uses
  br i1 %i.ant, label %bb.li, label %.critedge.i.i.i61.i

bb.li:                                            ; preds = %.lr.ph1602
  %i.anv = and i8 %i.ans, 127
  %i.anw = zext nneg i8 %i.anv to i64
  %i.anx = shl i64 %i.anw, %indvars.iv2505
  %i.any = or i64 %i.anx, %.1.i.i.i58.i1600
  %indvars.iv.next2506 = add nuw nsw i64 %indvars.iv2505, 7
  %.not.i.i.i60.i = icmp eq ptr %i.anu, %i.akx
  br i1 %.not.i.i.i60.i, label %._crit_edge1603, label %.lr.ph1602, !llvm.loop !46

._crit_edge1603:                                  ; preds = %bb.li, %.preheader914
  %i.anz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.anz, ptr noundef nonnull @.str.78)
          to label %bb.lj unwind label %bb.lk

bb.lj:                                            ; preds = %._crit_edge1603
  call void @__cxa_throw(ptr nonnull %i.anz, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.lk:                                            ; preds = %._crit_edge1603
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.anz) #28
  br label %common.resume

.critedge.i.i.i61.i:                              ; preds = %.lr.ph1602
  %i.aob = zext nneg i8 %i.ans to i64
  %i.aoc = shl i64 %i.aob, %indvars.iv2505
  %i.aod = or i64 %i.aoc, %.1.i.i.i58.i1600
  br label %bb.ll

bb.ll:                                            ; preds = %.critedge.i.i.i61.i, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw
  %.271.i.i.i62.i = phi ptr [ %i.anu, %.critedge.i.i.i61.i ], [ %i.ank, %bb.le ], [ %i.alg, %bb.kw ], [ %i.aln, %bb.kx ], [ %i.alu, %bb.ky ], [ %i.amb, %bb.kz ], [ %i.ami, %bb.la ], [ %i.amp, %bb.lb ], [ %i.amw, %bb.lc ], [ %i.and, %bb.ld ]
  %.2.i.i.i63.i = phi i64 [ %i.aod, %.critedge.i.i.i61.i ], [ %i.ano, %bb.le ], [ %i.all, %bb.kw ], [ %i.als, %bb.kx ], [ %i.alz, %bb.ky ], [ %i.amg, %bb.kz ], [ %i.amn, %bb.la ], [ %i.amu, %bb.lb ], [ %i.anb, %bb.lc ], [ %i.ani, %bb.ld ]
  %i.aoe = ptrtoint ptr %.271.i.i.i62.i to i64
  %i.aof = sub i64 %i.aoe, %i.alb
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i: ; preds = %bb.ll, %bb.ku
  %.0550 = phi i64 [ 1, %bb.ku ], [ %i.aof, %bb.ll ] ; 2 uses
  %.072.i.i.i64.i = phi i64 [ %i.ala, %bb.ku ], [ %.2.i.i.i63.i, %bb.ll ] ; 7 uses
  %i.aog = add i64 %.072.i.i.i64.i, %.0550        ; 6 uses
  %i.aoh = icmp ult i64 %i.akr, %i.aog
  br i1 %i.aoh, label %bb.lm, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, !prof !169

bb.lm:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i
  %i.aoi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aoi, ptr noundef nonnull @.str.89)
          to label %bb.ln unwind label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  call void @__cxa_throw(ptr nonnull %i.aoi, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.lo:                                            ; preds = %bb.lm
  %i.aoj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aoi) #28
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i
  %i.aok = load ptr, ptr %i.akw, align 8, !tbaa !95 ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.akw, i64 16 ; 2 uses
  %i.aom = icmp eq ptr %i.aok, %i.aol
  br i1 %i.aom, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i
  %i.aon = load i64, ptr %i.aol, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aoo = phi i64 [ %i.aon, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i ]
  %i.aop = icmp ugt i64 %.072.i.i.i64.i, %i.aoo
  br i1 %i.aop, label %bb.lp, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

bb.lp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.akw, i64 noundef %.072.i.i.i64.i)
  %.pre.i = load ptr, ptr %i.akw, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.lp
  %i.aoq = phi ptr [ %.pre.i, %bb.lp ], [ %i.aok, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.aor = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  store i64 %.072.i.i.i64.i, ptr %i.aor, align 8, !tbaa !93
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aoq, i64 %.072.i.i.i64.i
  store i8 0, ptr %i.aos, align 1, !tbaa !94
  %i.aot = load ptr, ptr %i.akw, align 8, !tbaa !95
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 %.072.i.i.i64.i
  store i8 0, ptr %i.aou, align 1, !tbaa !94
  %i.aov = load ptr, ptr %i.akw, align 8, !tbaa !95
  %i.aow = load ptr, ptr %i.f, align 8, !tbaa !439
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aow, i64 %.0550
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aov, ptr align 1 %i.aox, i64 %.072.i.i.i64.i, i1 false)
  %i.aoy = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.aoz = icmp ugt i64 %i.aog, %i.aoy
  br i1 %i.aoz, label %bb.lq, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63

bb.lq:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.aog, i64 noundef %i.aoy) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit
  %i.apa = sub nuw i64 %i.aoy, %i.aog             ; 2 uses
  %i.apb = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 %i.aog ; 14 uses
  store i64 %i.apa, ptr %17, align 8, !tbaa !249
  store ptr %i.apc, ptr %i.f, align 8, !tbaa !363
  %i.apd = icmp eq i64 %i.aoy, %i.aog
  br i1 %i.apd, label %.critedge.i.i, label %bb.lr

bb.lr:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit63
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apb, i64 %i.aoy
  %i.apf = load i8, ptr %i.apc, align 1, !tbaa !94 ; 3 uses
  %i.apg = icmp sgt i8 %i.apf, -1
  br i1 %i.apg, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  %i.aph = zext nneg i8 %i.apf to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i

bb.lt:                                            ; preds = %bb.lr
  %i.api = ptrtoint ptr %i.apc to i64
  %i.apj = icmp ugt i64 %i.apa, 9
  br i1 %i.apj, label %bb.lu, label %.lr.ph1608, !prof !257

bb.lu:                                            ; preds = %bb.lt
  %i.apk = and i8 %i.apf, 127
  %i.apl = zext nneg i8 %i.apk to i64
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apc, i64 1
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apc, i64 2 ; 2 uses
  %i.apo = load i8, ptr %i.apm, align 1, !tbaa !94 ; 2 uses
  %i.app = sext i8 %i.apo to i64
  %i.apq = shl nsw i64 %i.app, 7
  %i.apr = and i64 %i.apq, 16256
  %i.aps = or disjoint i64 %i.apr, %i.apl         ; 2 uses
  %i.apt = icmp sgt i8 %i.apo, -1
  br i1 %i.apt, label %bb.mj, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apc, i64 3 ; 2 uses
  %i.apv = load i8, ptr %i.apn, align 1, !tbaa !94 ; 2 uses
  %i.apw = sext i8 %i.apv to i64
  %i.apx = shl nsw i64 %i.apw, 14
  %i.apy = and i64 %i.apx, 2080768
  %i.apz = or disjoint i64 %i.apy, %i.aps         ; 2 uses
  %i.aqa = icmp sgt i8 %i.apv, -1
  br i1 %i.aqa, label %bb.mj, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apc, i64 4 ; 2 uses
  %i.aqc = load i8, ptr %i.apu, align 1, !tbaa !94 ; 2 uses
  %i.aqd = sext i8 %i.aqc to i64
  %i.aqe = shl nsw i64 %i.aqd, 21
  %i.aqf = and i64 %i.aqe, 266338304
  %i.aqg = or disjoint i64 %i.aqf, %i.apz         ; 2 uses
  %i.aqh = icmp sgt i8 %i.aqc, -1
  br i1 %i.aqh, label %bb.mj, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.apc, i64 5 ; 2 uses
  %i.aqj = load i8, ptr %i.aqb, align 1, !tbaa !94 ; 2 uses
  %i.aqk = sext i8 %i.aqj to i64
  %i.aql = shl nsw i64 %i.aqk, 28
  %i.aqm = and i64 %i.aql, 34091302912
  %i.aqn = or disjoint i64 %i.aqm, %i.aqg         ; 6 uses
  %i.aqo = icmp sgt i8 %i.aqj, -1
  br i1 %i.aqo, label %bb.mj, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.apc, i64 6 ; 2 uses
  %i.aqq = load i8, ptr %i.aqi, align 1, !tbaa !94
  %i.aqr = icmp sgt i8 %i.aqq, -1
end_hunk_18
begin_hunk_19_@_ZN6iguana9base_implIN9pb_sample7MonsterELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %.1.i.i67.i1606 = phi i64 [ %i.arm, %bb.mg ], [ 0, %bb.lt ] ; 2 uses
  %.170.i.i66.i1605 = phi ptr [ %i.ari, %bb.mg ], [ %i.apc, %bb.lt ] ; 2 uses
  %i.arg = load i8, ptr %.170.i.i66.i1605, align 1, !tbaa !94 ; 3 uses
  %i.arh = icmp slt i8 %i.arg, 0
  %i.ari = getelementptr inbounds nuw i8, ptr %.170.i.i66.i1605, i64 1 ; 3 uses
  br i1 %i.arh, label %bb.mg, label %.critedge.i.i70.i

bb.mg:                                            ; preds = %.lr.ph1608
  %i.arj = and i8 %i.arg, 127
  %i.ark = zext nneg i8 %i.arj to i64
  %i.arl = shl i64 %i.ark, %indvars.iv2508
  %i.arm = or i64 %i.arl, %.1.i.i67.i1606
  %indvars.iv.next2509 = add nuw nsw i64 %indvars.iv2508, 7
  %.not.i.i69.i = icmp eq ptr %i.ari, %i.ape
  br i1 %.not.i.i69.i, label %._crit_edge1609, label %.lr.ph1608, !llvm.loop !46

._crit_edge1609:                                  ; preds = %bb.mg
  %i.arn = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.arn, ptr noundef nonnull @.str.78)
          to label %bb.mh unwind label %bb.mi

bb.mh:                                            ; preds = %._crit_edge1609
  call void @__cxa_throw(ptr nonnull %i.arn, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.mi:                                            ; preds = %._crit_edge1609
  %i.aro = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.arn) #28
  br label %common.resume

.critedge.i.i70.i:                                ; preds = %.lr.ph1608
  %i.arp = zext nneg i8 %i.arg to i64
  %i.arq = shl i64 %i.arp, %indvars.iv2508
  %i.arr = or i64 %i.arq, %.1.i.i67.i1606
  br label %bb.mj

bb.mj:                                            ; preds = %.critedge.i.i70.i, %bb.mc, %bb.mb, %bb.ma, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.lu
  %.271.i.i71.i = phi ptr [ %i.ari, %.critedge.i.i70.i ], [ %i.arb, %bb.mc ], [ %i.apn, %bb.lu ], [ %i.apu, %bb.lv ], [ %i.aqb, %bb.lw ], [ %i.aqi, %bb.lx ], [ %i.aqp, %bb.ly ], [ %i.aqs, %bb.lz ], [ %i.aqv, %bb.ma ], [ %i.aqy, %bb.mb ]
  %.2.i.i72.i = phi i64 [ %i.arr, %.critedge.i.i70.i ], [ %i.aqn, %bb.mc ], [ %i.aps, %bb.lu ], [ %i.apz, %bb.lv ], [ %i.aqg, %bb.lw ], [ %i.aqn, %bb.lx ], [ %i.aqn, %bb.ly ], [ %i.aqn, %bb.lz ], [ %i.aqn, %bb.ma ], [ %i.aqn, %bb.mb ]
  %i.ars = ptrtoint ptr %.271.i.i71.i to i64
  %i.art = sub i64 %i.ars, %i.api
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i: ; preds = %bb.ls, %bb.mj
  %.17 = phi i64 [ 1, %bb.ls ], [ %i.art, %bb.mj ]
  %.072.i.i74.i = phi i64 [ %i.aph, %bb.ls ], [ %.2.i.i72.i, %bb.mj ]
  %i.aru = trunc i64 %.072.i.i74.i to i32         ; 2 uses
  %i.arv = and i32 %i.aru, 7
  %i.arw = lshr i32 %i.aru, 3                     ; 2 uses
  store i32 %i.arw, ptr %i.e, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread758

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread758: ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread744, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i
  %.pr781 = phi i32 [ %i.arw, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.pr767, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread744 ] ; 2 uses
  %.3685765 = phi i32 [ %i.arv, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.2684751, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread744 ] ; 2 uses
  %.4695764 = phi i64 [ %.17, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.3694750, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread744 ] ; 6 uses
  %.sroa.02.0.copyload.i77.i766 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 96), align 8, !tbaa !249
  %.not.i78.i = icmp eq i32 %.pr781, 5
  br i1 %.not.i78.i, label %bb.mk, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i.thread772

bb.mk:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread758
  %i.arx = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.ary = icmp ugt i64 %.4695764, %i.arx
  br i1 %i.ary, label %bb.ml, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit67

bb.ml:                                            ; preds = %bb.mk
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.4695764, i64 noundef %i.arx) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit67: ; preds = %bb.mk
  %i.arz = sub nuw i64 %i.arx, %.4695764          ; 3 uses
  %i.asa = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 %.4695764 ; 14 uses
  store i64 %i.arz, ptr %17, align 8, !tbaa !249
  store ptr %i.asb, ptr %i.f, align 8, !tbaa !363
  %.not4.i80.i = icmp eq i32 %.3685765, 2
  br i1 %.not4.i80.i, label %bb.mp, label %bb.mm, !prof !257

bb.mm:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit67
  %i.asc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.asc, ptr noundef nonnull @.str.79)
          to label %bb.mn unwind label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  call void @__cxa_throw(ptr nonnull %i.asc, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.mo:                                            ; preds = %bb.mm
  %i.asd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.asc) #28
  br label %common.resume

bb.mp:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit67
  %i.ase = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.02.0.copyload.i77.i766 ; 7 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asa, i64 %i.arx
  %i.asg = load i8, ptr %i.asb, align 1, !tbaa !94 ; 3 uses
  %i.ash = icmp sgt i8 %i.asg, -1
  br i1 %i.ash, label %bb.mq, label %bb.mr

bb.mq:                                            ; preds = %bb.mp
  %i.asi = zext nneg i8 %i.asg to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i88.i

bb.mr:                                            ; preds = %bb.mp
  %i.asj = ptrtoint ptr %i.asb to i64
  %i.ask = icmp ugt i64 %i.arz, 9
  br i1 %i.ask, label %bb.ms, label %.preheader912, !prof !257

.preheader912:                                    ; preds = %bb.mr
  %.not.i.i.i84.i1610 = icmp samesign eq i64 %.4695764, %i.arx
  br i1 %.not.i.i.i84.i1610, label %._crit_edge1615, label %.lr.ph1614

bb.ms:                                            ; preds = %bb.mr
  %i.asl = and i8 %i.asg, 127
  %i.asm = zext nneg i8 %i.asl to i64
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asb, i64 1
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asb, i64 2 ; 2 uses
  %i.asp = load i8, ptr %i.asn, align 1, !tbaa !94 ; 2 uses
  %i.asq = sext i8 %i.asp to i64
  %i.asr = shl nsw i64 %i.asq, 7
  %i.ass = and i64 %i.asr, 16256
  %i.ast = or disjoint i64 %i.ass, %i.asm         ; 2 uses
  %i.asu = icmp sgt i8 %i.asp, -1
  br i1 %i.asu, label %bb.nh, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asb, i64 3 ; 2 uses
  %i.asw = load i8, ptr %i.aso, align 1, !tbaa !94 ; 2 uses
  %i.asx = sext i8 %i.asw to i64
  %i.asy = shl nsw i64 %i.asx, 14
  %i.asz = and i64 %i.asy, 2080768
  %i.ata = or disjoint i64 %i.asz, %i.ast         ; 2 uses
  %i.atb = icmp sgt i8 %i.asw, -1
  br i1 %i.atb, label %bb.nh, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asb, i64 4 ; 2 uses
  %i.atd = load i8, ptr %i.asv, align 1, !tbaa !94 ; 2 uses
  %i.ate = sext i8 %i.atd to i64
  %i.atf = shl nsw i64 %i.ate, 21
  %i.atg = and i64 %i.atf, 266338304
  %i.ath = or disjoint i64 %i.atg, %i.ata         ; 2 uses
  %i.ati = icmp sgt i8 %i.atd, -1
  br i1 %i.ati, label %bb.nh, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.atj = getelementptr inbounds nuw i8, ptr %i.asb, i64 5 ; 2 uses
  %i.atk = load i8, ptr %i.atc, align 1, !tbaa !94 ; 2 uses
  %i.atl = sext i8 %i.atk to i64
  %i.atm = shl nsw i64 %i.atl, 28
  %i.atn = and i64 %i.atm, 34091302912
  %i.ato = or disjoint i64 %i.atn, %i.ath         ; 2 uses
  %i.atp = icmp sgt i8 %i.atk, -1
  br i1 %i.atp, label %bb.nh, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.atq = getelementptr inbounds nuw i8, ptr %i.asb, i64 6 ; 2 uses
  %i.atr = load i8, ptr %i.atj, align 1, !tbaa !94 ; 2 uses
  %i.ats = sext i8 %i.atr to i64
  %i.att = shl nsw i64 %i.ats, 35
  %i.atu = and i64 %i.att, 4363686772736
  %i.atv = or disjoint i64 %i.atu, %i.ato         ; 2 uses
  %i.atw = icmp sgt i8 %i.atr, -1
  br i1 %i.atw, label %bb.nh, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.atx = getelementptr inbounds nuw i8, ptr %i.asb, i64 7 ; 2 uses
  %i.aty = load i8, ptr %i.atq, align 1, !tbaa !94 ; 2 uses
  %i.atz = sext i8 %i.aty to i64
  %i.aua = shl nsw i64 %i.atz, 42
  %i.aub = and i64 %i.aua, 558551906910208
  %i.auc = or i64 %i.aub, %i.atv                  ; 2 uses
  %i.aud = icmp sgt i8 %i.aty, -1
  br i1 %i.aud, label %bb.nh, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.aue = getelementptr inbounds nuw i8, ptr %i.asb, i64 8 ; 2 uses
  %i.auf = load i8, ptr %i.atx, align 1, !tbaa !94 ; 2 uses
  %i.aug = sext i8 %i.auf to i64
  %i.auh = shl nsw i64 %i.aug, 49
  %i.aui = and i64 %i.auh, 71494644084506624
  %i.auj = or i64 %i.aui, %i.auc                  ; 2 uses
  %i.auk = icmp sgt i8 %i.auf, -1
  br i1 %i.auk, label %bb.nh, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.aul = getelementptr inbounds nuw i8, ptr %i.asb, i64 9 ; 2 uses
  %i.aum = load i8, ptr %i.aue, align 1, !tbaa !94 ; 2 uses
  %i.aun = sext i8 %i.aum to i64
  %i.auo = shl nsw i64 %i.aun, 56
  %i.aup = and i64 %i.auo, 9151314442816847872
  %i.auq = or i64 %i.aup, %i.auj                  ; 2 uses
  %i.aur = icmp sgt i8 %i.aum, -1
  br i1 %i.aur, label %bb.nh, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.aus = getelementptr inbounds nuw i8, ptr %i.asb, i64 10
  %i.aut = load i8, ptr %i.aul, align 1, !tbaa !94 ; 2 uses
  %i.auu = zext i8 %i.aut to i64
  %i.auv = shl i64 %i.auu, 63
  %i.auw = or i64 %i.auv, %i.auq
  %i.aux = icmp sgt i8 %i.aut, -1
  br i1 %i.aux, label %bb.nh, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.auy = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.auy, ptr noundef nonnull @.str.77)
          to label %bb.nc unwind label %bb.nd

bb.nc:                                            ; preds = %bb.nb
  call void @__cxa_throw(ptr nonnull %i.auy, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.nd:                                            ; preds = %bb.nb
  %i.auz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.auy) #28
  br label %common.resume

.lr.ph1614:                                       ; preds = %.preheader912, %bb.ne
  %indvars.iv2511 = phi i64 [ %indvars.iv.next2512, %bb.ne ], [ 0, %.preheader912 ] ; 3 uses
  %.1.i.i.i82.i1612 = phi i64 [ %i.avg, %bb.ne ], [ 0, %.preheader912 ] ; 2 uses
  %.170.i.i.i81.i1611 = phi ptr [ %i.avc, %bb.ne ], [ %i.asb, %.preheader912 ] ; 2 uses
  %i.ava = load i8, ptr %.170.i.i.i81.i1611, align 1, !tbaa !94 ; 3 uses
  %i.avb = icmp slt i8 %i.ava, 0
  %i.avc = getelementptr inbounds nuw i8, ptr %.170.i.i.i81.i1611, i64 1 ; 3 uses
  br i1 %i.avb, label %bb.ne, label %.critedge.i.i.i85.i

bb.ne:                                            ; preds = %.lr.ph1614
  %i.avd = and i8 %i.ava, 127
  %i.ave = zext nneg i8 %i.avd to i64
  %i.avf = shl i64 %i.ave, %indvars.iv2511
  %i.avg = or i64 %i.avf, %.1.i.i.i82.i1612
  %indvars.iv.next2512 = add nuw nsw i64 %indvars.iv2511, 7
  %.not.i.i.i84.i = icmp eq ptr %i.avc, %i.asf
  br i1 %.not.i.i.i84.i, label %._crit_edge1615, label %.lr.ph1614, !llvm.loop !46

._crit_edge1615:                                  ; preds = %bb.ne, %.preheader912
  %i.avh = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.avh, ptr noundef nonnull @.str.78)
          to label %bb.nf unwind label %bb.ng

bb.nf:                                            ; preds = %._crit_edge1615
  call void @__cxa_throw(ptr nonnull %i.avh, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.ng:                                            ; preds = %._crit_edge1615
  %i.avi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.avh) #28
  br label %common.resume

.critedge.i.i.i85.i:                              ; preds = %.lr.ph1614
  %i.avj = zext nneg i8 %i.ava to i64
  %i.avk = shl i64 %i.avj, %indvars.iv2511
  %i.avl = or i64 %i.avk, %.1.i.i.i82.i1612
  br label %bb.nh

bb.nh:                                            ; preds = %.critedge.i.i.i85.i, %bb.na, %bb.mz, %bb.my, %bb.mx, %bb.mw, %bb.mv, %bb.mu, %bb.mt, %bb.ms
  %.271.i.i.i86.i = phi ptr [ %i.avc, %.critedge.i.i.i85.i ], [ %i.aus, %bb.na ], [ %i.aso, %bb.ms ], [ %i.asv, %bb.mt ], [ %i.atc, %bb.mu ], [ %i.atj, %bb.mv ], [ %i.atq, %bb.mw ], [ %i.atx, %bb.mx ], [ %i.aue, %bb.my ], [ %i.aul, %bb.mz ]
  %.2.i.i.i87.i = phi i64 [ %i.avl, %.critedge.i.i.i85.i ], [ %i.auw, %bb.na ], [ %i.ast, %bb.ms ], [ %i.ata, %bb.mt ], [ %i.ath, %bb.mu ], [ %i.ato, %bb.mv ], [ %i.atv, %bb.mw ], [ %i.auc, %bb.mx ], [ %i.auj, %bb.my ], [ %i.auq, %bb.mz ]
  %i.avm = ptrtoint ptr %.271.i.i.i86.i to i64
  %i.avn = sub i64 %i.avm, %i.asj
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i88.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i88.i: ; preds = %bb.nh, %bb.mq
  %.0551 = phi i64 [ 1, %bb.mq ], [ %i.avn, %bb.nh ] ; 2 uses
  %.072.i.i.i89.i = phi i64 [ %i.asi, %bb.mq ], [ %.2.i.i.i87.i, %bb.nh ] ; 7 uses
  %i.avo = add i64 %.072.i.i.i89.i, %.0551        ; 6 uses
  %i.avp = icmp ult i64 %i.arz, %i.avo
  br i1 %i.avp, label %bb.ni, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i90.i, !prof !169

bb.ni:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i88.i
  %i.avq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.avq, ptr noundef nonnull @.str.89)
          to label %bb.nj unwind label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  call void @__cxa_throw(ptr nonnull %i.avq, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.nk:                                            ; preds = %bb.ni
  %i.avr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.avq) #28
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i90.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i88.i
  %i.avs = load ptr, ptr %i.ase, align 8, !tbaa !95 ; 2 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.ase, i64 16 ; 2 uses
  %i.avu = icmp eq ptr %i.avs, %i.avt
  br i1 %i.avu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i90.i
  %i.avv = load i64, ptr %i.avt, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i90.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %i.avw = phi i64 [ %i.avv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i90.i ]
  %i.avx = icmp ugt i64 %.072.i.i.i89.i, %i.avw
  br i1 %i.avx, label %bb.nl, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit72

bb.nl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ase, i64 noundef %.072.i.i.i89.i)
  %.pre.i70 = load ptr, ptr %i.ase, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit72

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit72: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69, %bb.nl
  %i.avy = phi ptr [ %.pre.i70, %bb.nl ], [ %i.avs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69 ]
  %i.avz = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  store i64 %.072.i.i.i89.i, ptr %i.avz, align 8, !tbaa !93
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avy, i64 %.072.i.i.i89.i
  store i8 0, ptr %i.awa, align 1, !tbaa !94
  %i.awb = load ptr, ptr %i.ase, align 8, !tbaa !95
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awb, i64 %.072.i.i.i89.i
  store i8 0, ptr %i.awc, align 1, !tbaa !94
  %i.awd = load ptr, ptr %i.ase, align 8, !tbaa !95
  %i.awe = load ptr, ptr %i.f, align 8, !tbaa !439
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 %.0551
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awd, ptr align 1 %i.awf, i64 %.072.i.i.i89.i, i1 false)
  %i.awg = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.awh = icmp ugt i64 %i.avo, %i.awg
  br i1 %i.awh, label %bb.nm, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit76

bb.nm:                                            ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit72
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.avo, i64 noundef %i.awg) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit76: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit72
  %i.awi = sub nuw i64 %i.awg, %i.avo             ; 2 uses
  %i.awj = load ptr, ptr %i.f, align 8, !tbaa !439 ; 2 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 %i.avo ; 14 uses
  store i64 %i.awi, ptr %17, align 8, !tbaa !249
  store ptr %i.awk, ptr %i.f, align 8, !tbaa !363
  %i.awl = icmp eq i64 %i.awg, %i.avo
  br i1 %i.awl, label %.critedge.i.i, label %bb.nn

bb.nn:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit76
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awj, i64 %i.awg
  %i.awn = load i8, ptr %i.awk, align 1, !tbaa !94 ; 3 uses
  %i.awo = icmp sgt i8 %i.awn, -1
  br i1 %i.awo, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  %i.awp = zext nneg i8 %i.awn to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i

bb.np:                                            ; preds = %bb.nn
  %i.awq = ptrtoint ptr %i.awk to i64
  %i.awr = icmp ugt i64 %i.awi, 9
  br i1 %i.awr, label %bb.nq, label %.lr.ph1620, !prof !257

bb.nq:                                            ; preds = %bb.np
  %i.aws = and i8 %i.awn, 127
  %i.awt = zext nneg i8 %i.aws to i64
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awk, i64 1
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awk, i64 2 ; 2 uses
  %i.aww = load i8, ptr %i.awu, align 1, !tbaa !94 ; 2 uses
  %i.awx = sext i8 %i.aww to i64
  %i.awy = shl nsw i64 %i.awx, 7
  %i.awz = and i64 %i.awy, 16256
  %i.axa = or disjoint i64 %i.awz, %i.awt         ; 2 uses
  %i.axb = icmp sgt i8 %i.aww, -1
  br i1 %i.axb, label %bb.of, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awk, i64 3 ; 2 uses
  %i.axd = load i8, ptr %i.awv, align 1, !tbaa !94 ; 2 uses
  %i.axe = sext i8 %i.axd to i64
  %i.axf = shl nsw i64 %i.axe, 14
  %i.axg = and i64 %i.axf, 2080768
  %i.axh = or disjoint i64 %i.axg, %i.axa         ; 2 uses
  %i.axi = icmp sgt i8 %i.axd, -1
  br i1 %i.axi, label %bb.of, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.axj = getelementptr inbounds nuw i8, ptr %i.awk, i64 4 ; 2 uses
  %i.axk = load i8, ptr %i.axc, align 1, !tbaa !94 ; 2 uses
  %i.axl = sext i8 %i.axk to i64
  %i.axm = shl nsw i64 %i.axl, 21
  %i.axn = and i64 %i.axm, 266338304
  %i.axo = or disjoint i64 %i.axn, %i.axh         ; 2 uses
  %i.axp = icmp sgt i8 %i.axk, -1
  br i1 %i.axp, label %bb.of, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.axq = getelementptr inbounds nuw i8, ptr %i.awk, i64 5 ; 2 uses
  %i.axr = load i8, ptr %i.axj, align 1, !tbaa !94 ; 2 uses
  %i.axs = sext i8 %i.axr to i64
  %i.axt = shl nsw i64 %i.axs, 28
  %i.axu = and i64 %i.axt, 34091302912
  %i.axv = or disjoint i64 %i.axu, %i.axo         ; 6 uses
  %i.axw = icmp sgt i8 %i.axr, -1
  br i1 %i.axw, label %bb.of, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.axx = getelementptr inbounds nuw i8, ptr %i.awk, i64 6 ; 2 uses
  %i.axy = load i8, ptr %i.axq, align 1, !tbaa !94
  %i.axz = icmp sgt i8 %i.axy, -1
end_hunk_19
begin_hunk_20_@_ZN6iguana9base_implIN9pb_sample7MonsterELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.bkr = load i8, ptr %.170.i12.i315.i1647, align 1, !tbaa !94 ; 3 uses
  %i.bks = icmp slt i8 %i.bkr, 0
  %i.bkt = getelementptr inbounds nuw i8, ptr %.170.i12.i315.i1647, i64 1 ; 3 uses
  br i1 %i.bks, label %bb.ro, label %.critedge.i16.i319.i

bb.ro:                                            ; preds = %.lr.ph1650
  %i.bku = and i8 %i.bkr, 127
  %i.bkv = zext nneg i8 %i.bku to i64
  %i.bkw = shl i64 %i.bkv, %indvars.iv2526
  %i.bkx = or i64 %i.bkw, %.1.i13.i316.i1648
  %indvars.iv.next2527 = add nuw nsw i64 %indvars.iv2526, 7
  %.not.i15.i318.i = icmp eq ptr %i.bkt, %i.bip
  br i1 %.not.i15.i318.i, label %.preheader904._crit_edge, label %.lr.ph1650, !llvm.loop !46

.preheader904._crit_edge:                         ; preds = %bb.ro
  %i.bky = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bky, ptr noundef nonnull @.str.78)
          to label %.invoke3650 unwind label %bb.rp

bb.rp:                                            ; preds = %.preheader904._crit_edge
  %i.bkz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bky) #28
  br label %.body.i.i

.critedge.i16.i319.i:                             ; preds = %.lr.ph1650
  %i.bla = zext nneg i8 %i.bkr to i64
  %i.blb = shl i64 %i.bla, %indvars.iv2526
  %i.blc = or i64 %i.blb, %.1.i13.i316.i1648
  br label %bb.rq

bb.rq:                                            ; preds = %.critedge.i16.i319.i, %bb.rl, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.rg, %bb.rf, %bb.re, %bb.rd
  %.271.i17.i320.i = phi ptr [ %i.bkt, %.critedge.i16.i319.i ], [ %i.bkm, %bb.rl ], [ %i.biy, %bb.rd ], [ %i.bjf, %bb.re ], [ %i.bjm, %bb.rf ], [ %i.bjt, %bb.rg ], [ %i.bka, %bb.rh ], [ %i.bkd, %bb.ri ], [ %i.bkg, %bb.rj ], [ %i.bkj, %bb.rk ]
  %.2.i18.i321.i = phi i64 [ %i.blc, %.critedge.i16.i319.i ], [ %i.bjy, %bb.rl ], [ %i.bjd, %bb.rd ], [ %i.bjk, %bb.re ], [ %i.bjr, %bb.rf ], [ %i.bjy, %bb.rg ], [ %i.bjy, %bb.rh ], [ %i.bjy, %bb.ri ], [ %i.bjy, %bb.rj ], [ %i.bjy, %bb.rk ]
  %i.bld = ptrtoint ptr %.271.i17.i320.i to i64
  %i.ble = sub i64 %i.bld, %i.bit
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i322.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i322.i: ; preds = %bb.rq, %bb.rb
  %.0645 = phi i64 [ 1, %bb.rb ], [ %i.ble, %bb.rq ] ; 6 uses
  %.072.i19.i323.i = phi i64 [ %i.bis, %bb.rb ], [ %.2.i18.i321.i, %bb.rq ]
  %i.blf = trunc i64 %.072.i19.i323.i to i32      ; 2 uses
  %i.blg = and i32 %i.blf, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.blh = lshr i32 %i.blf, 3
  store i32 %i.blh, ptr %i.b, align 4, !tbaa !164
  %i.bli = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.blj = icmp eq i8 %i.bli, 0
  br i1 %i.blj, label %bb.rr, label %bb.ru, !prof !173

bb.rr:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i322.i
  %i.blk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i337.i = icmp eq i32 %i.blk, 0
  br i1 %.not.i337.i, label %bb.ru, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.rt unwind label %bb.uv

bb.rt:                                            ; preds = %bb.rs
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.ru

bb.ru:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i322.i, %bb.rr, %bb.rt
  %.sroa.02.0.copyload.i378.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.bll = load i32, ptr %i.b, align 4, !tbaa !164 ; 2 uses
  %.not.i379.i = icmp eq i32 %i.bll, 1
  %.pre2602.pre = load i64, ptr %10, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i379.i, label %bb.rv, label %bb.tj

bb.rv:                                            ; preds = %bb.ru
  %i.blm = icmp ugt i64 %.0645, %.pre2602.pre
  br i1 %i.blm, label %.invoke, label %.noexc404.i

.noexc404.i:                                      ; preds = %bb.rv
  %i.bln = sub nuw i64 %.pre2602.pre, %.0645      ; 3 uses
  %i.blo = load ptr, ptr %i.bfc, align 8, !tbaa !439 ; 2 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %i.blo, i64 %.0645 ; 14 uses
  store i64 %i.bln, ptr %10, align 8, !tbaa !249
  store ptr %i.blp, ptr %i.bfc, align 8, !tbaa !363
  %.not4.i381.i = icmp eq i32 %i.blg, 2
  br i1 %.not4.i381.i, label %bb.ry, label %bb.rw, !prof !257

bb.rw:                                            ; preds = %.noexc404.i
  %i.blq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.blq, ptr noundef nonnull @.str.79)
          to label %.invoke3650 unwind label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.blr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.blq) #28
  br label %.body.i.i

bb.ry:                                            ; preds = %.noexc404.i
  %i.bls = getelementptr inbounds nuw i8, ptr %14, i64 %.sroa.02.0.copyload.i378.i ; 7 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %i.blo, i64 %.pre2602.pre
  %i.blu = load i8, ptr %i.blp, align 1, !tbaa !94 ; 3 uses
  %i.blv = icmp sgt i8 %i.blu, -1
  br i1 %i.blv, label %bb.rz, label %bb.sa

bb.rz:                                            ; preds = %bb.ry
  %i.blw = zext nneg i8 %i.blu to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i389.i

bb.sa:                                            ; preds = %bb.ry
  %i.blx = ptrtoint ptr %i.blp to i64
  %i.bly = icmp ugt i64 %i.bln, 9
  br i1 %i.bly, label %bb.sb, label %.preheader903, !prof !257

.preheader903:                                    ; preds = %bb.sa
  %.not.i.i.i385.i1658 = icmp samesign eq i64 %.0645, %.pre2602.pre
  br i1 %.not.i.i.i385.i1658, label %.preheader903._crit_edge, label %.lr.ph1662

bb.sb:                                            ; preds = %bb.sa
  %i.blz = and i8 %i.blu, 127
  %i.bma = zext nneg i8 %i.blz to i64
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blp, i64 1
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blp, i64 2 ; 2 uses
  %i.bmd = load i8, ptr %i.bmb, align 1, !tbaa !94 ; 2 uses
  %i.bme = sext i8 %i.bmd to i64
  %i.bmf = shl nsw i64 %i.bme, 7
  %i.bmg = and i64 %i.bmf, 16256
  %i.bmh = or disjoint i64 %i.bmg, %i.bma         ; 2 uses
  %i.bmi = icmp sgt i8 %i.bmd, -1
  br i1 %i.bmi, label %bb.so, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.blp, i64 3 ; 2 uses
  %i.bmk = load i8, ptr %i.bmc, align 1, !tbaa !94 ; 2 uses
  %i.bml = sext i8 %i.bmk to i64
  %i.bmm = shl nsw i64 %i.bml, 14
  %i.bmn = and i64 %i.bmm, 2080768
  %i.bmo = or disjoint i64 %i.bmn, %i.bmh         ; 2 uses
  %i.bmp = icmp sgt i8 %i.bmk, -1
  br i1 %i.bmp, label %bb.so, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.blp, i64 4 ; 2 uses
  %i.bmr = load i8, ptr %i.bmj, align 1, !tbaa !94 ; 2 uses
  %i.bms = sext i8 %i.bmr to i64
  %i.bmt = shl nsw i64 %i.bms, 21
  %i.bmu = and i64 %i.bmt, 266338304
  %i.bmv = or disjoint i64 %i.bmu, %i.bmo         ; 2 uses
  %i.bmw = icmp sgt i8 %i.bmr, -1
  br i1 %i.bmw, label %bb.so, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.blp, i64 5 ; 2 uses
  %i.bmy = load i8, ptr %i.bmq, align 1, !tbaa !94 ; 2 uses
  %i.bmz = sext i8 %i.bmy to i64
  %i.bna = shl nsw i64 %i.bmz, 28
  %i.bnb = and i64 %i.bna, 34091302912
  %i.bnc = or disjoint i64 %i.bnb, %i.bmv         ; 2 uses
  %i.bnd = icmp sgt i8 %i.bmy, -1
  br i1 %i.bnd, label %bb.so, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bne = getelementptr inbounds nuw i8, ptr %i.blp, i64 6 ; 2 uses
  %i.bnf = load i8, ptr %i.bmx, align 1, !tbaa !94 ; 2 uses
  %i.bng = sext i8 %i.bnf to i64
  %i.bnh = shl nsw i64 %i.bng, 35
  %i.bni = and i64 %i.bnh, 4363686772736
  %i.bnj = or disjoint i64 %i.bni, %i.bnc         ; 2 uses
  %i.bnk = icmp sgt i8 %i.bnf, -1
  br i1 %i.bnk, label %bb.so, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.blp, i64 7 ; 2 uses
  %i.bnm = load i8, ptr %i.bne, align 1, !tbaa !94 ; 2 uses
  %i.bnn = sext i8 %i.bnm to i64
  %i.bno = shl nsw i64 %i.bnn, 42
  %i.bnp = and i64 %i.bno, 558551906910208
  %i.bnq = or i64 %i.bnp, %i.bnj                  ; 2 uses
  %i.bnr = icmp sgt i8 %i.bnm, -1
  br i1 %i.bnr, label %bb.so, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.bns = getelementptr inbounds nuw i8, ptr %i.blp, i64 8 ; 2 uses
  %i.bnt = load i8, ptr %i.bnl, align 1, !tbaa !94 ; 2 uses
  %i.bnu = sext i8 %i.bnt to i64
  %i.bnv = shl nsw i64 %i.bnu, 49
  %i.bnw = and i64 %i.bnv, 71494644084506624
  %i.bnx = or i64 %i.bnw, %i.bnq                  ; 2 uses
  %i.bny = icmp sgt i8 %i.bnt, -1
  br i1 %i.bny, label %bb.so, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.blp, i64 9 ; 2 uses
  %i.boa = load i8, ptr %i.bns, align 1, !tbaa !94 ; 2 uses
  %i.bob = sext i8 %i.boa to i64
  %i.boc = shl nsw i64 %i.bob, 56
  %i.bod = and i64 %i.boc, 9151314442816847872
  %i.boe = or i64 %i.bod, %i.bnx                  ; 2 uses
  %i.bof = icmp sgt i8 %i.boa, -1
  br i1 %i.bof, label %bb.so, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.bog = getelementptr inbounds nuw i8, ptr %i.blp, i64 10
  %i.boh = load i8, ptr %i.bnz, align 1, !tbaa !94 ; 2 uses
  %i.boi = zext i8 %i.boh to i64
  %i.boj = shl i64 %i.boi, 63
  %i.bok = or i64 %i.boj, %i.boe
  %i.bol = icmp sgt i8 %i.boh, -1
  br i1 %i.bol, label %bb.so, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.bom = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bom, ptr noundef nonnull @.str.77)
          to label %.invoke3650 unwind label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.bon = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bom) #28
  br label %.body.i.i

.lr.ph1662:                                       ; preds = %.preheader903, %bb.sm
  %indvars.iv2529 = phi i64 [ %indvars.iv.next2530, %bb.sm ], [ 0, %.preheader903 ] ; 3 uses
  %.1.i.i.i383.i1660 = phi i64 [ %i.bou, %bb.sm ], [ 0, %.preheader903 ] ; 2 uses
  %.170.i.i.i382.i1659 = phi ptr [ %i.boq, %bb.sm ], [ %i.blp, %.preheader903 ] ; 2 uses
  %i.boo = load i8, ptr %.170.i.i.i382.i1659, align 1, !tbaa !94 ; 3 uses
  %i.bop = icmp slt i8 %i.boo, 0
  %i.boq = getelementptr inbounds nuw i8, ptr %.170.i.i.i382.i1659, i64 1 ; 3 uses
  br i1 %i.bop, label %bb.sm, label %.critedge.i.i.i386.i

bb.sm:                                            ; preds = %.lr.ph1662
  %i.bor = and i8 %i.boo, 127
  %i.bos = zext nneg i8 %i.bor to i64
  %i.bot = shl i64 %i.bos, %indvars.iv2529
  %i.bou = or i64 %i.bot, %.1.i.i.i383.i1660
  %indvars.iv.next2530 = add nuw nsw i64 %indvars.iv2529, 7
  %.not.i.i.i385.i = icmp eq ptr %i.boq, %i.blt
  br i1 %.not.i.i.i385.i, label %.preheader903._crit_edge, label %.lr.ph1662, !llvm.loop !46

.preheader903._crit_edge:                         ; preds = %.preheader903, %bb.sm
  %i.bov = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bov, ptr noundef nonnull @.str.78)
          to label %.invoke3650 unwind label %bb.sn

bb.sn:                                            ; preds = %.preheader903._crit_edge
  %i.bow = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bov) #28
  br label %.body.i.i

.critedge.i.i.i386.i:                             ; preds = %.lr.ph1662
  %i.box = zext nneg i8 %i.boo to i64
  %i.boy = shl i64 %i.box, %indvars.iv2529
  %i.boz = or i64 %i.boy, %.1.i.i.i383.i1660
  br label %bb.so

bb.so:                                            ; preds = %.critedge.i.i.i386.i, %bb.sj, %bb.si, %bb.sh, %bb.sg, %bb.sf, %bb.se, %bb.sd, %bb.sc, %bb.sb
  %.271.i.i.i387.i = phi ptr [ %i.boq, %.critedge.i.i.i386.i ], [ %i.bog, %bb.sj ], [ %i.bmc, %bb.sb ], [ %i.bmj, %bb.sc ], [ %i.bmq, %bb.sd ], [ %i.bmx, %bb.se ], [ %i.bne, %bb.sf ], [ %i.bnl, %bb.sg ], [ %i.bns, %bb.sh ], [ %i.bnz, %bb.si ]
  %.2.i.i.i388.i = phi i64 [ %i.boz, %.critedge.i.i.i386.i ], [ %i.bok, %bb.sj ], [ %i.bmh, %bb.sb ], [ %i.bmo, %bb.sc ], [ %i.bmv, %bb.sd ], [ %i.bnc, %bb.se ], [ %i.bnj, %bb.sf ], [ %i.bnq, %bb.sg ], [ %i.bnx, %bb.sh ], [ %i.boe, %bb.si ]
  %i.bpa = ptrtoint ptr %.271.i.i.i387.i to i64
  %i.bpb = sub i64 %i.bpa, %i.blx
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i389.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i389.i: ; preds = %bb.so, %bb.rz
  %.0558 = phi i64 [ 1, %bb.rz ], [ %i.bpb, %bb.so ] ; 2 uses
  %.072.i.i.i390.i = phi i64 [ %i.blw, %bb.rz ], [ %.2.i.i.i388.i, %bb.so ] ; 7 uses
  %i.bpc = add i64 %.072.i.i.i390.i, %.0558       ; 6 uses
  %i.bpd = icmp ult i64 %i.bln, %i.bpc
  br i1 %i.bpd, label %bb.sp, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i391.i, !prof !169

bb.sp:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i389.i
  %i.bpe = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bpe, ptr noundef nonnull @.str.89)
          to label %.invoke3650 unwind label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.bpf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bpe) #28
  br label %.body.i.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i391.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i389.i
  %i.bpg = load ptr, ptr %i.bls, align 8, !tbaa !95 ; 2 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bls, i64 16 ; 2 uses
  %i.bpi = icmp eq ptr %i.bpg, %i.bph
  br i1 %i.bpi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i391.i
  %i.bpj = load i64, ptr %i.bph, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i103: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i391.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %i.bpk = phi i64 [ %i.bpj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i391.i ]
  %i.bpl = icmp ugt i64 %.072.i.i.i390.i, %i.bpk
  br i1 %i.bpl, label %bb.sr, label %.noexc411.i

bb.sr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i103
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bls, i64 noundef %.072.i.i.i390.i)
          to label %.noexc106 unwind label %.loopexit.split-lp897.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %bb.sr
  %.pre.i104 = load ptr, ptr %i.bls, align 8, !tbaa !95
  br label %.noexc411.i

.noexc411.i:                                      ; preds = %.noexc106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i103
  %i.bpm = phi ptr [ %.pre.i104, %.noexc106 ], [ %i.bpg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i103 ]
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bls, i64 8
  store i64 %.072.i.i.i390.i, ptr %i.bpn, align 8, !tbaa !93
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpm, i64 %.072.i.i.i390.i
  store i8 0, ptr %i.bpo, align 1, !tbaa !94
  %i.bpp = load ptr, ptr %i.bls, align 8, !tbaa !95
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 %.072.i.i.i390.i
  store i8 0, ptr %i.bpq, align 1, !tbaa !94
  %i.bpr = load ptr, ptr %i.bls, align 8, !tbaa !95
  %i.bps = load ptr, ptr %i.bfc, align 8, !tbaa !439
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 %.0558
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bpr, ptr align 1 %i.bpt, i64 %.072.i.i.i390.i, i1 false)
  %i.bpu = load i64, ptr %10, align 8, !tbaa !438 ; 5 uses
  %i.bpv = icmp ugt i64 %i.bpc, %i.bpu
  br i1 %i.bpv, label %.invoke, label %.noexc412.i

.noexc412.i:                                      ; preds = %.noexc411.i
  %i.bpw = sub nuw i64 %i.bpu, %i.bpc             ; 3 uses
  %i.bpx = load ptr, ptr %i.bfc, align 8, !tbaa !439 ; 2 uses
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpx, i64 %i.bpc ; 14 uses
  store i64 %i.bpw, ptr %10, align 8, !tbaa !249
  store ptr %i.bpy, ptr %i.bfc, align 8, !tbaa !363
  %i.bpz = icmp eq i64 %i.bpu, %i.bpc
  br i1 %i.bpz, label %.critedge.i334.i, label %bb.ss

bb.ss:                                            ; preds = %.noexc412.i
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpx, i64 %i.bpu
  %i.bqb = load i8, ptr %i.bpy, align 1, !tbaa !94 ; 3 uses
  %i.bqc = icmp sgt i8 %i.bqb, -1
  br i1 %i.bqc, label %bb.st, label %bb.su

bb.st:                                            ; preds = %bb.ss
  %i.bqd = zext nneg i8 %i.bqb to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i400.i

bb.su:                                            ; preds = %bb.ss
  %i.bqe = ptrtoint ptr %i.bpy to i64
  %i.bqf = icmp ugt i64 %i.bpw, 9
  br i1 %i.bqf, label %bb.sv, label %.lr.ph1674, !prof !257

bb.sv:                                            ; preds = %bb.su
  %i.bqg = and i8 %i.bqb, 127
  %i.bqh = zext nneg i8 %i.bqg to i64
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bpy, i64 1
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bpy, i64 2 ; 2 uses
  %i.bqk = load i8, ptr %i.bqi, align 1, !tbaa !94 ; 2 uses
  %i.bql = sext i8 %i.bqk to i64
  %i.bqm = shl nsw i64 %i.bql, 7
  %i.bqn = and i64 %i.bqm, 16256
  %i.bqo = or disjoint i64 %i.bqn, %i.bqh         ; 2 uses
  %i.bqp = icmp sgt i8 %i.bqk, -1
  br i1 %i.bqp, label %bb.ti, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bpy, i64 3 ; 2 uses
  %i.bqr = load i8, ptr %i.bqj, align 1, !tbaa !94 ; 2 uses
  %i.bqs = sext i8 %i.bqr to i64
  %i.bqt = shl nsw i64 %i.bqs, 14
  %i.bqu = and i64 %i.bqt, 2080768
  %i.bqv = or disjoint i64 %i.bqu, %i.bqo         ; 2 uses
  %i.bqw = icmp sgt i8 %i.bqr, -1
  br i1 %i.bqw, label %bb.ti, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bpy, i64 4 ; 2 uses
  %i.bqy = load i8, ptr %i.bqq, align 1, !tbaa !94 ; 2 uses
  %i.bqz = sext i8 %i.bqy to i64
  %i.bra = shl nsw i64 %i.bqz, 21
  %i.brb = and i64 %i.bra, 266338304
  %i.brc = or disjoint i64 %i.brb, %i.bqv         ; 2 uses
  %i.brd = icmp sgt i8 %i.bqy, -1
  br i1 %i.brd, label %bb.ti, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bpy, i64 5 ; 2 uses
  %i.brf = load i8, ptr %i.bqx, align 1, !tbaa !94 ; 2 uses
  %i.brg = sext i8 %i.brf to i64
  %i.brh = shl nsw i64 %i.brg, 28
  %i.bri = and i64 %i.brh, 34091302912
  %i.brj = or disjoint i64 %i.bri, %i.brc         ; 6 uses
  %i.brk = icmp sgt i8 %i.brf, -1
  br i1 %i.brk, label %bb.ti, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bpy, i64 6 ; 2 uses
  %i.brm = load i8, ptr %i.bre, align 1, !tbaa !94
  %i.brn = icmp sgt i8 %i.brm, -1
  br i1 %i.brn, label %bb.ti, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.bro = getelementptr inbounds nuw i8, ptr %i.bpy, i64 7 ; 2 uses
  %i.brp = load i8, ptr %i.brl, align 1, !tbaa !94
  %i.brq = icmp sgt i8 %i.brp, -1
  br i1 %i.brq, label %bb.ti, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bpy, i64 8 ; 2 uses
  %i.brs = load i8, ptr %i.bro, align 1, !tbaa !94
  %i.brt = icmp sgt i8 %i.brs, -1
  br i1 %i.brt, label %bb.ti, label %bb.tc
end_hunk_20
begin_hunk_21_@_ZN6iguana9base_implIN9pb_sample7MonsterELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  br i1 %.not.i15.i294.i, label %._crit_edge1762, label %.lr.ph1761, !llvm.loop !46

._crit_edge1762:                                  ; preds = %bb.zd
  %i.cou = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cou, ptr noundef nonnull @.str.78)
          to label %bb.ze unwind label %bb.zf

bb.ze:                                            ; preds = %._crit_edge1762
  call void @__cxa_throw(ptr nonnull %i.cou, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.zf:                                            ; preds = %._crit_edge1762
  %i.cov = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cou) #28
  br label %common.resume

.critedge.i16.i295.i:                             ; preds = %.lr.ph1761
  %i.cow = zext nneg i8 %i.con to i64
  %i.cox = shl i64 %i.cow, %indvars.iv2553
  %i.coy = or i64 %i.cox, %.1.i13.i292.i1759
  br label %bb.zg

bb.zg:                                            ; preds = %.critedge.i16.i295.i, %bb.yz, %bb.yy, %bb.yx, %bb.yw, %bb.yv, %bb.yu, %bb.yt, %bb.ys, %bb.yr
  %.271.i17.i296.i = phi ptr [ %i.cop, %.critedge.i16.i295.i ], [ %i.coi, %bb.yz ], [ %i.cmu, %bb.yr ], [ %i.cnb, %bb.ys ], [ %i.cni, %bb.yt ], [ %i.cnp, %bb.yu ], [ %i.cnw, %bb.yv ], [ %i.cnz, %bb.yw ], [ %i.coc, %bb.yx ], [ %i.cof, %bb.yy ]
  %.2.i18.i297.i = phi i64 [ %i.coy, %.critedge.i16.i295.i ], [ %i.cnu, %bb.yz ], [ %i.cmz, %bb.yr ], [ %i.cng, %bb.ys ], [ %i.cnn, %bb.yt ], [ %i.cnu, %bb.yu ], [ %i.cnu, %bb.yv ], [ %i.cnu, %bb.yw ], [ %i.cnu, %bb.yx ], [ %i.cnu, %bb.yy ]
  %i.coz = ptrtoint ptr %.271.i17.i296.i to i64
  %i.cpa = sub i64 %i.coz, %i.cmp
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i298.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i298.i: ; preds = %bb.zg, %bb.yp
  %.0657 = phi i64 [ 1, %bb.yp ], [ %i.cpa, %bb.zg ] ; 6 uses
  %.072.i19.i299.i = phi i64 [ %i.cmo, %bb.yp ], [ %.2.i18.i297.i, %bb.zg ]
  %i.cpb = trunc i64 %.072.i19.i299.i to i32      ; 2 uses
  %i.cpc = and i32 %i.cpb, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.cpd = lshr i32 %i.cpb, 3
  store i32 %i.cpd, ptr %i.c, align 4, !tbaa !164
  %i.cpe = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.cpf = icmp eq i8 %i.cpe, 0
  br i1 %i.cpf, label %bb.zh, label %bb.zk, !prof !173

bb.zh:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i298.i
  %i.cpg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i313.i = icmp eq i32 %i.cpg, 0
  br i1 %.not.i313.i, label %bb.zk, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %i.cjl)
          to label %bb.zj unwind label %bb.ada

bb.zj:                                            ; preds = %bb.zi
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.zk

bb.zk:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i298.i, %bb.zh, %bb.zj
  %.sroa.02.0.copyload.i352.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.cph = load i32, ptr %i.c, align 4, !tbaa !164 ; 2 uses
  %.not.i353.i = icmp eq i32 %i.cph, 1
  %.pre2606.pre = load i64, ptr %12, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i353.i, label %bb.zl, label %bb.abh

bb.zl:                                            ; preds = %bb.zk
  %i.cpi = icmp ugt i64 %.0657, %.pre2606.pre
  br i1 %i.cpi, label %bb.zm, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit160

bb.zm:                                            ; preds = %bb.zl
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %.0657, i64 noundef %.pre2606.pre) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit160: ; preds = %bb.zl
  %i.cpj = sub nuw i64 %.pre2606.pre, %.0657      ; 3 uses
  %i.cpk = load ptr, ptr %i.cmk, align 8, !tbaa !439 ; 2 uses
  %i.cpl = getelementptr inbounds nuw i8, ptr %i.cpk, i64 %.0657 ; 14 uses
  store i64 %i.cpj, ptr %12, align 8, !tbaa !249
  store ptr %i.cpl, ptr %i.cmk, align 8, !tbaa !363
  %.not4.i355.i = icmp eq i32 %i.cpc, 2
  br i1 %.not4.i355.i, label %bb.zq, label %bb.zn, !prof !257

bb.zn:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit160
  %i.cpm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cpm, ptr noundef nonnull @.str.79)
          to label %bb.zo unwind label %bb.zp

bb.zo:                                            ; preds = %bb.zn
  call void @__cxa_throw(ptr nonnull %i.cpm, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #32
  unreachable

bb.zp:                                            ; preds = %bb.zn
  %i.cpn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cpm) #28
  br label %common.resume

bb.zq:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit160
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cjl, i64 %.sroa.02.0.copyload.i352.i ; 7 uses
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpk, i64 %.pre2606.pre
  %i.cpq = load i8, ptr %i.cpl, align 1, !tbaa !94 ; 3 uses
  %i.cpr = icmp sgt i8 %i.cpq, -1
  br i1 %i.cpr, label %bb.zr, label %bb.zs

bb.zr:                                            ; preds = %bb.zq
  %i.cps = zext nneg i8 %i.cpq to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i363.i

bb.zs:                                            ; preds = %bb.zq
  %i.cpt = ptrtoint ptr %i.cpl to i64
  %i.cpu = icmp ugt i64 %i.cpj, 9
  br i1 %i.cpu, label %bb.zt, label %.preheader890, !prof !257

.preheader890:                                    ; preds = %bb.zs
  %.not.i.i.i359.i1763 = icmp samesign eq i64 %.0657, %.pre2606.pre
  br i1 %.not.i.i.i359.i1763, label %._crit_edge1768, label %.lr.ph1767

bb.zt:                                            ; preds = %bb.zs
  %i.cpv = and i8 %i.cpq, 127
  %i.cpw = zext nneg i8 %i.cpv to i64
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpl, i64 1
  %i.cpy = getelementptr inbounds nuw i8, ptr %i.cpl, i64 2 ; 2 uses
  %i.cpz = load i8, ptr %i.cpx, align 1, !tbaa !94 ; 2 uses
  %i.cqa = sext i8 %i.cpz to i64
  %i.cqb = shl nsw i64 %i.cqa, 7
  %i.cqc = and i64 %i.cqb, 16256
  %i.cqd = or disjoint i64 %i.cqc, %i.cpw         ; 2 uses
  %i.cqe = icmp sgt i8 %i.cpz, -1
  br i1 %i.cqe, label %bb.aai, label %bb.zu

bb.zu:                                            ; preds = %bb.zt
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cpl, i64 3 ; 2 uses
  %i.cqg = load i8, ptr %i.cpy, align 1, !tbaa !94 ; 2 uses
  %i.cqh = sext i8 %i.cqg to i64
  %i.cqi = shl nsw i64 %i.cqh, 14
  %i.cqj = and i64 %i.cqi, 2080768
  %i.cqk = or disjoint i64 %i.cqj, %i.cqd         ; 2 uses
  %i.cql = icmp sgt i8 %i.cqg, -1
  br i1 %i.cql, label %bb.aai, label %bb.zv

bb.zv:                                            ; preds = %bb.zu
  %i.cqm = getelementptr inbounds nuw i8, ptr %i.cpl, i64 4 ; 2 uses
  %i.cqn = load i8, ptr %i.cqf, align 1, !tbaa !94 ; 2 uses
  %i.cqo = sext i8 %i.cqn to i64
  %i.cqp = shl nsw i64 %i.cqo, 21
  %i.cqq = and i64 %i.cqp, 266338304
  %i.cqr = or disjoint i64 %i.cqq, %i.cqk         ; 2 uses
  %i.cqs = icmp sgt i8 %i.cqn, -1
  br i1 %i.cqs, label %bb.aai, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.cqt = getelementptr inbounds nuw i8, ptr %i.cpl, i64 5 ; 2 uses
  %i.cqu = load i8, ptr %i.cqm, align 1, !tbaa !94 ; 2 uses
  %i.cqv = sext i8 %i.cqu to i64
  %i.cqw = shl nsw i64 %i.cqv, 28
  %i.cqx = and i64 %i.cqw, 34091302912
  %i.cqy = or disjoint i64 %i.cqx, %i.cqr         ; 2 uses
  %i.cqz = icmp sgt i8 %i.cqu, -1
  br i1 %i.cqz, label %bb.aai, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cpl, i64 6 ; 2 uses
  %i.crb = load i8, ptr %i.cqt, align 1, !tbaa !94 ; 2 uses
  %i.crc = sext i8 %i.crb to i64
  %i.crd = shl nsw i64 %i.crc, 35
  %i.cre = and i64 %i.crd, 4363686772736
  %i.crf = or disjoint i64 %i.cre, %i.cqy         ; 2 uses
  %i.crg = icmp sgt i8 %i.crb, -1
  br i1 %i.crg, label %bb.aai, label %bb.zy

bb.zy:                                            ; preds = %bb.zx
  %i.crh = getelementptr inbounds nuw i8, ptr %i.cpl, i64 7 ; 2 uses
  %i.cri = load i8, ptr %i.cra, align 1, !tbaa !94 ; 2 uses
  %i.crj = sext i8 %i.cri to i64
  %i.crk = shl nsw i64 %i.crj, 42
  %i.crl = and i64 %i.crk, 558551906910208
  %i.crm = or i64 %i.crl, %i.crf                  ; 2 uses
  %i.crn = icmp sgt i8 %i.cri, -1
  br i1 %i.crn, label %bb.aai, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  %i.cro = getelementptr inbounds nuw i8, ptr %i.cpl, i64 8 ; 2 uses
  %i.crp = load i8, ptr %i.crh, align 1, !tbaa !94 ; 2 uses
  %i.crq = sext i8 %i.crp to i64
  %i.crr = shl nsw i64 %i.crq, 49
  %i.crs = and i64 %i.crr, 71494644084506624
  %i.crt = or i64 %i.crs, %i.crm                  ; 2 uses
  %i.cru = icmp sgt i8 %i.crp, -1
  br i1 %i.cru, label %bb.aai, label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  %i.crv = getelementptr inbounds nuw i8, ptr %i.cpl, i64 9 ; 2 uses
  %i.crw = load i8, ptr %i.cro, align 1, !tbaa !94 ; 2 uses
  %i.crx = sext i8 %i.crw to i64
  %i.cry = shl nsw i64 %i.crx, 56
  %i.crz = and i64 %i.cry, 9151314442816847872
  %i.csa = or i64 %i.crz, %i.crt                  ; 2 uses
  %i.csb = icmp sgt i8 %i.crw, -1
  br i1 %i.csb, label %bb.aai, label %bb.aab

bb.aab:                                           ; preds = %bb.aaa
  %i.csc = getelementptr inbounds nuw i8, ptr %i.cpl, i64 10
  %i.csd = load i8, ptr %i.crv, align 1, !tbaa !94 ; 2 uses
  %i.cse = zext i8 %i.csd to i64
  %i.csf = shl i64 %i.cse, 63
  %i.csg = or i64 %i.csf, %i.csa
  %i.csh = icmp sgt i8 %i.csd, -1
  br i1 %i.csh, label %bb.aai, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  %i.csi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.csi, ptr noundef nonnull @.str.77)
          to label %bb.aad unwind label %bb.aae

bb.aad:                                           ; preds = %bb.aac
  call void @__cxa_throw(ptr nonnull %i.csi, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.aae:                                           ; preds = %bb.aac
  %i.csj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.csi) #28
  br label %common.resume

.lr.ph1767:                                       ; preds = %.preheader890, %bb.aaf
  %indvars.iv2556 = phi i64 [ %indvars.iv.next2557, %bb.aaf ], [ 0, %.preheader890 ] ; 3 uses
  %.1.i.i.i357.i1765 = phi i64 [ %i.csq, %bb.aaf ], [ 0, %.preheader890 ] ; 2 uses
  %.170.i.i.i356.i1764 = phi ptr [ %i.csm, %bb.aaf ], [ %i.cpl, %.preheader890 ] ; 2 uses
  %i.csk = load i8, ptr %.170.i.i.i356.i1764, align 1, !tbaa !94 ; 3 uses
  %i.csl = icmp slt i8 %i.csk, 0
  %i.csm = getelementptr inbounds nuw i8, ptr %.170.i.i.i356.i1764, i64 1 ; 3 uses
  br i1 %i.csl, label %bb.aaf, label %.critedge.i.i.i360.i

bb.aaf:                                           ; preds = %.lr.ph1767
  %i.csn = and i8 %i.csk, 127
  %i.cso = zext nneg i8 %i.csn to i64
  %i.csp = shl i64 %i.cso, %indvars.iv2556
  %i.csq = or i64 %i.csp, %.1.i.i.i357.i1765
  %indvars.iv.next2557 = add nuw nsw i64 %indvars.iv2556, 7
  %.not.i.i.i359.i = icmp eq ptr %i.csm, %i.cpp
  br i1 %.not.i.i.i359.i, label %._crit_edge1768, label %.lr.ph1767, !llvm.loop !46

._crit_edge1768:                                  ; preds = %bb.aaf, %.preheader890
  %i.csr = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.csr, ptr noundef nonnull @.str.78)
          to label %bb.aag unwind label %bb.aah

bb.aag:                                           ; preds = %._crit_edge1768
  call void @__cxa_throw(ptr nonnull %i.csr, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.aah:                                           ; preds = %._crit_edge1768
  %i.css = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.csr) #28
  br label %common.resume

.critedge.i.i.i360.i:                             ; preds = %.lr.ph1767
  %i.cst = zext nneg i8 %i.csk to i64
  %i.csu = shl i64 %i.cst, %indvars.iv2556
  %i.csv = or i64 %i.csu, %.1.i.i.i357.i1765
  br label %bb.aai

bb.aai:                                           ; preds = %.critedge.i.i.i360.i, %bb.aab, %bb.aaa, %bb.zz, %bb.zy, %bb.zx, %bb.zw, %bb.zv, %bb.zu, %bb.zt
  %.271.i.i.i361.i = phi ptr [ %i.csm, %.critedge.i.i.i360.i ], [ %i.csc, %bb.aab ], [ %i.cpy, %bb.zt ], [ %i.cqf, %bb.zu ], [ %i.cqm, %bb.zv ], [ %i.cqt, %bb.zw ], [ %i.cra, %bb.zx ], [ %i.crh, %bb.zy ], [ %i.cro, %bb.zz ], [ %i.crv, %bb.aaa ]
  %.2.i.i.i362.i = phi i64 [ %i.csv, %.critedge.i.i.i360.i ], [ %i.csg, %bb.aab ], [ %i.cqd, %bb.zt ], [ %i.cqk, %bb.zu ], [ %i.cqr, %bb.zv ], [ %i.cqy, %bb.zw ], [ %i.crf, %bb.zx ], [ %i.crm, %bb.zy ], [ %i.crt, %bb.zz ], [ %i.csa, %bb.aaa ]
  %i.csw = ptrtoint ptr %.271.i.i.i361.i to i64
  %i.csx = sub i64 %i.csw, %i.cpt
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i363.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i363.i: ; preds = %bb.aai, %bb.zr
  %.0557 = phi i64 [ 1, %bb.zr ], [ %i.csx, %bb.aai ] ; 2 uses
  %.072.i.i.i364.i = phi i64 [ %i.cps, %bb.zr ], [ %.2.i.i.i362.i, %bb.aai ] ; 7 uses
  %i.csy = add i64 %.072.i.i.i364.i, %.0557       ; 6 uses
  %i.csz = icmp ult i64 %i.cpj, %i.csy
  br i1 %i.csz, label %bb.aaj, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i365.i, !prof !169

bb.aaj:                                           ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i363.i
  %i.cta = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cta, ptr noundef nonnull @.str.89)
          to label %bb.aak unwind label %bb.aal

bb.aak:                                           ; preds = %bb.aaj
  call void @__cxa_throw(ptr nonnull %i.cta, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #32
  unreachable

bb.aal:                                           ; preds = %bb.aaj
  %i.ctb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cta) #28
  br label %common.resume

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i365.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i363.i
  %i.ctc = load ptr, ptr %i.cpo, align 8, !tbaa !95 ; 2 uses
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.cpo, i64 16 ; 2 uses
  %i.cte = icmp eq ptr %i.ctc, %i.ctd
  br i1 %i.cte, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i365.i
  %i.ctf = load i64, ptr %i.ctd, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i162: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i365.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  %i.ctg = phi i64 [ %i.ctf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i365.i ]
  %i.cth = icmp ugt i64 %.072.i.i.i364.i, %i.ctg
  br i1 %i.cth, label %bb.aam, label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit165

bb.aam:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i162
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cpo, i64 noundef %.072.i.i.i364.i)
  %.pre.i163 = load ptr, ptr %i.cpo, align 8, !tbaa !95
  br label %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit165

_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit165: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i162, %bb.aam
  %i.cti = phi ptr [ %.pre.i163, %bb.aam ], [ %i.ctc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i162 ]
  %i.ctj = getelementptr inbounds nuw i8, ptr %i.cpo, i64 8
  store i64 %.072.i.i.i364.i, ptr %i.ctj, align 8, !tbaa !93
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.cti, i64 %.072.i.i.i364.i
  store i8 0, ptr %i.ctk, align 1, !tbaa !94
  %i.ctl = load ptr, ptr %i.cpo, align 8, !tbaa !95
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.ctl, i64 %.072.i.i.i364.i
  store i8 0, ptr %i.ctm, align 1, !tbaa !94
  %i.ctn = load ptr, ptr %i.cpo, align 8, !tbaa !95
  %i.cto = load ptr, ptr %i.cmk, align 8, !tbaa !439
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.cto, i64 %.0557
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ctn, ptr align 1 %i.ctp, i64 %.072.i.i.i364.i, i1 false)
  %i.ctq = load i64, ptr %12, align 8, !tbaa !438 ; 5 uses
  %i.ctr = icmp ugt i64 %i.csy, %i.ctq
  br i1 %i.ctr, label %bb.aan, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit169

bb.aan:                                           ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit165
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i64 noundef %i.csy, i64 noundef %i.ctq) #32
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit169: ; preds = %_ZN6iguana6detail6resizeIcEEvRNSt7__cxx1112basic_stringIT_St11char_traitsIS4_ESaIS4_EEEm.exit165
  %i.cts = sub nuw i64 %i.ctq, %i.csy             ; 3 uses
  %i.ctt = load ptr, ptr %i.cmk, align 8, !tbaa !439 ; 2 uses
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ctt, i64 %i.csy ; 14 uses
  store i64 %i.cts, ptr %12, align 8, !tbaa !249
  store ptr %i.ctu, ptr %i.cmk, align 8, !tbaa !363
  %i.ctv = icmp eq i64 %i.ctq, %i.csy
  br i1 %i.ctv, label %.critedge.i310.i, label %bb.aao

bb.aao:                                           ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit169
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.ctt, i64 %i.ctq
  %i.ctx = load i8, ptr %i.ctu, align 1, !tbaa !94 ; 3 uses
  %i.cty = icmp sgt i8 %i.ctx, -1
  br i1 %i.cty, label %bb.aap, label %bb.aaq

bb.aap:                                           ; preds = %bb.aao
  %i.ctz = zext nneg i8 %i.ctx to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i374.i

bb.aaq:                                           ; preds = %bb.aao
  %i.cua = ptrtoint ptr %i.ctu to i64
  %i.cub = icmp ugt i64 %i.cts, 9
  br i1 %i.cub, label %bb.aar, label %.lr.ph1773, !prof !257

bb.aar:                                           ; preds = %bb.aaq
  %i.cuc = and i8 %i.ctx, 127
  %i.cud = zext nneg i8 %i.cuc to i64
  %i.cue = getelementptr inbounds nuw i8, ptr %i.ctu, i64 1
  %i.cuf = getelementptr inbounds nuw i8, ptr %i.ctu, i64 2 ; 2 uses
  %i.cug = load i8, ptr %i.cue, align 1, !tbaa !94 ; 2 uses
  %i.cuh = sext i8 %i.cug to i64
  %i.cui = shl nsw i64 %i.cuh, 7
  %i.cuj = and i64 %i.cui, 16256
  %i.cuk = or disjoint i64 %i.cuj, %i.cud         ; 2 uses
  %i.cul = icmp sgt i8 %i.cug, -1
  br i1 %i.cul, label %bb.abg, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.cum = getelementptr inbounds nuw i8, ptr %i.ctu, i64 3 ; 2 uses
  %i.cun = load i8, ptr %i.cuf, align 1, !tbaa !94 ; 2 uses
  %i.cuo = sext i8 %i.cun to i64
  %i.cup = shl nsw i64 %i.cuo, 14
  %i.cuq = and i64 %i.cup, 2080768
  %i.cur = or disjoint i64 %i.cuq, %i.cuk         ; 2 uses
  %i.cus = icmp sgt i8 %i.cun, -1
  br i1 %i.cus, label %bb.abg, label %bb.aat

bb.aat:                                           ; preds = %bb.aas
  %i.cut = getelementptr inbounds nuw i8, ptr %i.ctu, i64 4 ; 2 uses
  %i.cuu = load i8, ptr %i.cum, align 1, !tbaa !94 ; 2 uses
  %i.cuv = sext i8 %i.cuu to i64
  %i.cuw = shl nsw i64 %i.cuv, 21
  %i.cux = and i64 %i.cuw, 266338304
  %i.cuy = or disjoint i64 %i.cux, %i.cur         ; 2 uses
  %i.cuz = icmp sgt i8 %i.cuu, -1
  br i1 %i.cuz, label %bb.abg, label %bb.aau

bb.aau:                                           ; preds = %bb.aat
  %i.cva = getelementptr inbounds nuw i8, ptr %i.ctu, i64 5 ; 2 uses
  %i.cvb = load i8, ptr %i.cut, align 1, !tbaa !94 ; 2 uses
  %i.cvc = sext i8 %i.cvb to i64
  %i.cvd = shl nsw i64 %i.cvc, 28
  %i.cve = and i64 %i.cvd, 34091302912
  %i.cvf = or disjoint i64 %i.cve, %i.cuy         ; 6 uses
  %i.cvg = icmp sgt i8 %i.cvb, -1
  br i1 %i.cvg, label %bb.abg, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.ctu, i64 6 ; 2 uses
  %i.cvi = load i8, ptr %i.cva, align 1, !tbaa !94
  %i.cvj = icmp sgt i8 %i.cvi, -1
end_hunk_21
begin_hunk_22_@_ZZN6iguana7from_pbIN9pb_sample8MonstersEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_7MonsterESaISE_EELm1ESG_EEEEDaS4_:bb.a
  %i.apc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.apc, ptr noundef nonnull @.str.77)
          to label %.invoke11638 unwind label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.apd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.apc) #28
  br label %.body.i

.lr.ph4049:                                       ; preds = %.preheader1175, %bb.jq
  %indvars.iv7811 = phi i64 [ %indvars.iv.next7812, %bb.jq ], [ 0, %.preheader1175 ] ; 3 uses
  %.1.i.i61.i4047 = phi i64 [ %i.apk, %bb.jq ], [ 0, %.preheader1175 ] ; 2 uses
  %.170.i.i60.i4046 = phi ptr [ %i.apg, %bb.jq ], [ %i.ana, %.preheader1175 ] ; 2 uses
  %i.ape = load i8, ptr %.170.i.i60.i4046, align 1, !tbaa !94 ; 3 uses
  %i.apf = icmp slt i8 %i.ape, 0
  %i.apg = getelementptr inbounds nuw i8, ptr %.170.i.i60.i4046, i64 1 ; 3 uses
  br i1 %i.apf, label %bb.jq, label %.critedge.i.i64.i

bb.jq:                                            ; preds = %.lr.ph4049
  %i.aph = and i8 %i.ape, 127
  %i.api = zext nneg i8 %i.aph to i64
  %i.apj = shl i64 %i.api, %indvars.iv7811
  %i.apk = or i64 %i.apj, %.1.i.i61.i4047
  %indvars.iv.next7812 = add nuw nsw i64 %indvars.iv7811, 7
  %.not.i.i63.i = icmp eq ptr %i.apg, %i.akh
  br i1 %.not.i.i63.i, label %.preheader1175._crit_edge, label %.lr.ph4049, !llvm.loop !46

.preheader1175._crit_edge:                        ; preds = %.preheader1175, %bb.jq
  %i.apl = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.apl, ptr noundef nonnull @.str.78)
          to label %.invoke11638 unwind label %bb.jr

bb.jr:                                            ; preds = %.preheader1175._crit_edge
  %i.apm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.apl) #28
  br label %.body.i

.critedge.i.i64.i:                                ; preds = %.lr.ph4049
  %i.apn = zext nneg i8 %i.ape to i64
  %i.apo = shl i64 %i.apn, %indvars.iv7811
  %i.app = or i64 %i.apo, %.1.i.i61.i4047
  br label %bb.js

bb.js:                                            ; preds = %.critedge.i.i64.i, %bb.jn, %bb.jm, %bb.jl, %bb.jk, %bb.jj, %bb.ji, %bb.jh, %bb.jg, %bb.jf
  %.271.i.i65.i = phi ptr [ %i.apg, %.critedge.i.i64.i ], [ %i.aoz, %bb.jn ], [ %i.anl, %bb.jf ], [ %i.ans, %bb.jg ], [ %i.anz, %bb.jh ], [ %i.aog, %bb.ji ], [ %i.aon, %bb.jj ], [ %i.aoq, %bb.jk ], [ %i.aot, %bb.jl ], [ %i.aow, %bb.jm ]
  %.2.i.i66.i = phi i64 [ %i.app, %.critedge.i.i64.i ], [ %i.aol, %bb.jn ], [ %i.anq, %bb.jf ], [ %i.anx, %bb.jg ], [ %i.aoe, %bb.jh ], [ %i.aol, %bb.ji ], [ %i.aol, %bb.jj ], [ %i.aol, %bb.jk ], [ %i.aol, %bb.jl ], [ %i.aol, %bb.jm ]
  %i.apq = ptrtoint ptr %.271.i.i65.i to i64
  %i.apr = sub i64 %i.apq, %i.anf
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i: ; preds = %bb.jd, %bb.js
  %.18 = phi i64 [ 1, %bb.jd ], [ %i.apr, %bb.js ]
  %.072.i.i68.i = phi i64 [ %i.ane, %bb.jd ], [ %.2.i.i66.i, %bb.js ]
  %i.aps = trunc i64 %.072.i.i68.i to i32         ; 2 uses
  %i.apt = and i32 %i.aps, 7
  %i.apu = lshr i32 %i.aps, 3                     ; 2 uses
  store i32 %i.apu, ptr %i.e, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread993

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread993: ; preds = %thread-pre-split987, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i
  %.pr1016 = phi i32 [ %i.apu, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.pr1002, %thread-pre-split987 ] ; 2 uses
  %.29331000 = phi i32 [ %i.apt, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.1932, %thread-pre-split987 ] ; 2 uses
  %.3943999 = phi i64 [ %.18, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i ], [ %.2942, %thread-pre-split987 ] ; 6 uses
  %.sroa.02.0.copyload.i71.i1001 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 120), align 8, !tbaa !249
  %.not.i72.i = icmp eq i32 %.pr1016, 4
  br i1 %.not.i72.i, label %bb.jt, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread1007

bb.jt:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread993
  %i.apv = load i64, ptr %16, align 8, !tbaa !438 ; 5 uses
  %i.apw = icmp ugt i64 %.3943999, %i.apv
  br i1 %i.apw, label %.invoke11636, label %.noexc71

.noexc71:                                         ; preds = %bb.jt
  %i.apx = sub nuw i64 %i.apv, %.3943999          ; 3 uses
  %i.apy = load ptr, ptr %i.p, align 8, !tbaa !439 ; 2 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 %.3943999 ; 14 uses
  store i64 %i.apx, ptr %16, align 8, !tbaa !249
  store ptr %i.apz, ptr %i.p, align 8, !tbaa !363
  %.not4.i74.i = icmp eq i32 %.29331000, 2
  br i1 %.not4.i74.i, label %bb.jw, label %bb.ju, !prof !257

bb.ju:                                            ; preds = %.noexc71
  %i.aqa = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aqa, ptr noundef nonnull @.str.79)
          to label %.invoke11638 unwind label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aqb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.aqa) #28
  br label %.body.i

bb.jw:                                            ; preds = %.noexc71
  %i.aqc = getelementptr inbounds nuw i8, ptr %18, i64 %.sroa.02.0.copyload.i71.i1001 ; 7 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apy, i64 %i.apv
  %i.aqe = load i8, ptr %i.apz, align 1, !tbaa !94 ; 3 uses
  %i.aqf = icmp sgt i8 %i.aqe, -1
  br i1 %i.aqf, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.aqg = zext nneg i8 %i.aqe to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i

bb.jy:                                            ; preds = %bb.jw
  %i.aqh = ptrtoint ptr %i.apz to i64
  %i.aqi = icmp ugt i64 %i.apx, 9
  br i1 %i.aqi, label %bb.jz, label %.preheader1174, !prof !257

.preheader1174:                                   ; preds = %bb.jy
  %.not.i.i.i78.i4051 = icmp samesign eq i64 %.3943999, %i.apv
  br i1 %.not.i.i.i78.i4051, label %.preheader1174._crit_edge, label %.lr.ph4055

bb.jz:                                            ; preds = %bb.jy
  %i.aqj = and i8 %i.aqe, 127
  %i.aqk = zext nneg i8 %i.aqj to i64
  %i.aql = getelementptr inbounds nuw i8, ptr %i.apz, i64 1
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apz, i64 2 ; 2 uses
  %i.aqn = load i8, ptr %i.aql, align 1, !tbaa !94 ; 2 uses
  %i.aqo = sext i8 %i.aqn to i64
  %i.aqp = shl nsw i64 %i.aqo, 7
  %i.aqq = and i64 %i.aqp, 16256
  %i.aqr = or disjoint i64 %i.aqq, %i.aqk         ; 2 uses
  %i.aqs = icmp sgt i8 %i.aqn, -1
  br i1 %i.aqs, label %bb.km, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.apz, i64 3 ; 2 uses
  %i.aqu = load i8, ptr %i.aqm, align 1, !tbaa !94 ; 2 uses
  %i.aqv = sext i8 %i.aqu to i64
  %i.aqw = shl nsw i64 %i.aqv, 14
  %i.aqx = and i64 %i.aqw, 2080768
  %i.aqy = or disjoint i64 %i.aqx, %i.aqr         ; 2 uses
  %i.aqz = icmp sgt i8 %i.aqu, -1
  br i1 %i.aqz, label %bb.km, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.ara = getelementptr inbounds nuw i8, ptr %i.apz, i64 4 ; 2 uses
  %i.arb = load i8, ptr %i.aqt, align 1, !tbaa !94 ; 2 uses
  %i.arc = sext i8 %i.arb to i64
  %i.ard = shl nsw i64 %i.arc, 21
  %i.are = and i64 %i.ard, 266338304
  %i.arf = or disjoint i64 %i.are, %i.aqy         ; 2 uses
  %i.arg = icmp sgt i8 %i.arb, -1
  br i1 %i.arg, label %bb.km, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.arh = getelementptr inbounds nuw i8, ptr %i.apz, i64 5 ; 2 uses
  %i.ari = load i8, ptr %i.ara, align 1, !tbaa !94 ; 2 uses
  %i.arj = sext i8 %i.ari to i64
  %i.ark = shl nsw i64 %i.arj, 28
  %i.arl = and i64 %i.ark, 34091302912
  %i.arm = or disjoint i64 %i.arl, %i.arf         ; 2 uses
  %i.arn = icmp sgt i8 %i.ari, -1
  br i1 %i.arn, label %bb.km, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.aro = getelementptr inbounds nuw i8, ptr %i.apz, i64 6 ; 2 uses
  %i.arp = load i8, ptr %i.arh, align 1, !tbaa !94 ; 2 uses
  %i.arq = sext i8 %i.arp to i64
  %i.arr = shl nsw i64 %i.arq, 35
  %i.ars = and i64 %i.arr, 4363686772736
  %i.art = or disjoint i64 %i.ars, %i.arm         ; 2 uses
  %i.aru = icmp sgt i8 %i.arp, -1
  br i1 %i.aru, label %bb.km, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.arv = getelementptr inbounds nuw i8, ptr %i.apz, i64 7 ; 2 uses
  %i.arw = load i8, ptr %i.aro, align 1, !tbaa !94 ; 2 uses
  %i.arx = sext i8 %i.arw to i64
  %i.ary = shl nsw i64 %i.arx, 42
  %i.arz = and i64 %i.ary, 558551906910208
  %i.asa = or i64 %i.arz, %i.art                  ; 2 uses
  %i.asb = icmp sgt i8 %i.arw, -1
  br i1 %i.asb, label %bb.km, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.asc = getelementptr inbounds nuw i8, ptr %i.apz, i64 8 ; 2 uses
  %i.asd = load i8, ptr %i.arv, align 1, !tbaa !94 ; 2 uses
  %i.ase = sext i8 %i.asd to i64
  %i.asf = shl nsw i64 %i.ase, 49
  %i.asg = and i64 %i.asf, 71494644084506624
  %i.ash = or i64 %i.asg, %i.asa                  ; 2 uses
  %i.asi = icmp sgt i8 %i.asd, -1
  br i1 %i.asi, label %bb.km, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.asj = getelementptr inbounds nuw i8, ptr %i.apz, i64 9 ; 2 uses
  %i.ask = load i8, ptr %i.asc, align 1, !tbaa !94 ; 2 uses
  %i.asl = sext i8 %i.ask to i64
  %i.asm = shl nsw i64 %i.asl, 56
  %i.asn = and i64 %i.asm, 9151314442816847872
  %i.aso = or i64 %i.asn, %i.ash                  ; 2 uses
  %i.asp = icmp sgt i8 %i.ask, -1
  br i1 %i.asp, label %bb.km, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.asq = getelementptr inbounds nuw i8, ptr %i.apz, i64 10
  %i.asr = load i8, ptr %i.asj, align 1, !tbaa !94 ; 2 uses
  %i.ass = zext i8 %i.asr to i64
  %i.ast = shl i64 %i.ass, 63
  %i.asu = or i64 %i.ast, %i.aso
  %i.asv = icmp sgt i8 %i.asr, -1
  br i1 %i.asv, label %bb.km, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.asw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.asw, ptr noundef nonnull @.str.77)
          to label %.invoke11638 unwind label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.asx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.asw) #28
  br label %.body.i

.lr.ph4055:                                       ; preds = %.preheader1174, %bb.kk
  %indvars.iv7814 = phi i64 [ %indvars.iv.next7815, %bb.kk ], [ 0, %.preheader1174 ] ; 3 uses
  %.1.i.i.i76.i4053 = phi i64 [ %i.ate, %bb.kk ], [ 0, %.preheader1174 ] ; 2 uses
  %.170.i.i.i75.i4052 = phi ptr [ %i.ata, %bb.kk ], [ %i.apz, %.preheader1174 ] ; 2 uses
  %i.asy = load i8, ptr %.170.i.i.i75.i4052, align 1, !tbaa !94 ; 3 uses
  %i.asz = icmp slt i8 %i.asy, 0
  %i.ata = getelementptr inbounds nuw i8, ptr %.170.i.i.i75.i4052, i64 1 ; 3 uses
  br i1 %i.asz, label %bb.kk, label %.critedge.i.i.i79.i

bb.kk:                                            ; preds = %.lr.ph4055
  %i.atb = and i8 %i.asy, 127
  %i.atc = zext nneg i8 %i.atb to i64
  %i.atd = shl i64 %i.atc, %indvars.iv7814
  %i.ate = or i64 %i.atd, %.1.i.i.i76.i4053
  %indvars.iv.next7815 = add nuw nsw i64 %indvars.iv7814, 7
  %.not.i.i.i78.i = icmp eq ptr %i.ata, %i.aqd
  br i1 %.not.i.i.i78.i, label %.preheader1174._crit_edge, label %.lr.ph4055, !llvm.loop !46

.preheader1174._crit_edge:                        ; preds = %.preheader1174, %bb.kk
  %i.atf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.atf, ptr noundef nonnull @.str.78)
          to label %.invoke11638 unwind label %bb.kl

bb.kl:                                            ; preds = %.preheader1174._crit_edge
  %i.atg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.atf) #28
  br label %.body.i

.critedge.i.i.i79.i:                              ; preds = %.lr.ph4055
  %i.ath = zext nneg i8 %i.asy to i64
  %i.ati = shl i64 %i.ath, %indvars.iv7814
  %i.atj = or i64 %i.ati, %.1.i.i.i76.i4053
  br label %bb.km

bb.km:                                            ; preds = %.critedge.i.i.i79.i, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka, %bb.jz
  %.271.i.i.i80.i = phi ptr [ %i.ata, %.critedge.i.i.i79.i ], [ %i.asq, %bb.kh ], [ %i.aqm, %bb.jz ], [ %i.aqt, %bb.ka ], [ %i.ara, %bb.kb ], [ %i.arh, %bb.kc ], [ %i.aro, %bb.kd ], [ %i.arv, %bb.ke ], [ %i.asc, %bb.kf ], [ %i.asj, %bb.kg ]
  %.2.i.i.i81.i = phi i64 [ %i.atj, %.critedge.i.i.i79.i ], [ %i.asu, %bb.kh ], [ %i.aqr, %bb.jz ], [ %i.aqy, %bb.ka ], [ %i.arf, %bb.kb ], [ %i.arm, %bb.kc ], [ %i.art, %bb.kd ], [ %i.asa, %bb.ke ], [ %i.ash, %bb.kf ], [ %i.aso, %bb.kg ]
  %i.atk = ptrtoint ptr %.271.i.i.i80.i to i64
  %i.atl = sub i64 %i.atk, %i.aqh
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i: ; preds = %bb.km, %bb.jx
  %.0799 = phi i64 [ 1, %bb.jx ], [ %i.atl, %bb.km ] ; 2 uses
  %.072.i.i.i82.i = phi i64 [ %i.aqg, %bb.jx ], [ %.2.i.i.i81.i, %bb.km ] ; 7 uses
  %i.atm = add i64 %.072.i.i.i82.i, %.0799        ; 6 uses
  %i.atn = icmp ult i64 %i.apx, %i.atm
  br i1 %i.atn, label %bb.kn, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, !prof !169

bb.kn:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i
  %i.ato = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ato, ptr noundef nonnull @.str.89)
          to label %.invoke11638 unwind label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.atp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ato) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i
  %i.atq = load ptr, ptr %i.aqc, align 8, !tbaa !95 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16 ; 2 uses
  %i.ats = icmp eq ptr %i.atq, %i.atr
  br i1 %i.ats, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i
  %i.att = load i64, ptr %i.atr, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.atu = phi i64 [ %i.att, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i ]
  %i.atv = icmp ugt i64 %.072.i.i.i82.i, %i.atu
  br i1 %i.atv, label %bb.kp, label %.noexc76

bb.kp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aqc, i64 noundef %.072.i.i.i82.i)
          to label %.noexc230 unwind label %.loopexit.split-lp1148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc230:                                        ; preds = %bb.kp
  %.pre.i = load ptr, ptr %i.aqc, align 8, !tbaa !95
  br label %.noexc76

.noexc76:                                         ; preds = %.noexc230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.atw = phi ptr [ %.pre.i, %.noexc230 ], [ %i.atq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.atx = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  store i64 %.072.i.i.i82.i, ptr %i.atx, align 8, !tbaa !93
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atw, i64 %.072.i.i.i82.i
  store i8 0, ptr %i.aty, align 1, !tbaa !94
  %i.atz = load ptr, ptr %i.aqc, align 8, !tbaa !95
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 %.072.i.i.i82.i
  store i8 0, ptr %i.aua, align 1, !tbaa !94
  %i.aub = load ptr, ptr %i.aqc, align 8, !tbaa !95
  %i.auc = load ptr, ptr %i.p, align 8, !tbaa !439
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 %.0799
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aub, ptr align 1 %i.aud, i64 %.072.i.i.i82.i, i1 false)
  %i.aue = load i64, ptr %16, align 8, !tbaa !438 ; 5 uses
  %i.auf = icmp ugt i64 %i.atm, %i.aue
  br i1 %i.auf, label %.invoke11636, label %.noexc77

.noexc77:                                         ; preds = %.noexc76
  %i.aug = sub nuw i64 %i.aue, %i.atm             ; 2 uses
  %i.auh = load ptr, ptr %i.p, align 8, !tbaa !439 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 %i.atm ; 14 uses
  store i64 %i.aug, ptr %16, align 8, !tbaa !249
  store ptr %i.aui, ptr %i.p, align 8, !tbaa !363
  %i.auj = icmp eq i64 %i.aue, %i.atm
  br i1 %i.auj, label %.critedge.i18.i, label %bb.kq

bb.kq:                                            ; preds = %.noexc77
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auh, i64 %i.aue
  %i.aul = load i8, ptr %i.aui, align 1, !tbaa !94 ; 3 uses
  %i.aum = icmp sgt i8 %i.aul, -1
  br i1 %i.aum, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.aun = zext nneg i8 %i.aul to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i

bb.ks:                                            ; preds = %bb.kq
  %i.auo = ptrtoint ptr %i.aui to i64
  %i.aup = icmp ugt i64 %i.aug, 9
  br i1 %i.aup, label %bb.kt, label %.lr.ph4061, !prof !257

bb.kt:                                            ; preds = %bb.ks
  %i.auq = and i8 %i.aul, 127
  %i.aur = zext nneg i8 %i.auq to i64
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aui, i64 1
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aui, i64 2 ; 2 uses
  %i.auu = load i8, ptr %i.aus, align 1, !tbaa !94 ; 2 uses
  %i.auv = sext i8 %i.auu to i64
  %i.auw = shl nsw i64 %i.auv, 7
  %i.aux = and i64 %i.auw, 16256
  %i.auy = or disjoint i64 %i.aux, %i.aur         ; 2 uses
  %i.auz = icmp sgt i8 %i.auu, -1
  br i1 %i.auz, label %bb.lg, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.ava = getelementptr inbounds nuw i8, ptr %i.aui, i64 3 ; 2 uses
  %i.avb = load i8, ptr %i.aut, align 1, !tbaa !94 ; 2 uses
  %i.avc = sext i8 %i.avb to i64
  %i.avd = shl nsw i64 %i.avc, 14
  %i.ave = and i64 %i.avd, 2080768
  %i.avf = or disjoint i64 %i.ave, %i.auy         ; 2 uses
  %i.avg = icmp sgt i8 %i.avb, -1
  br i1 %i.avg, label %bb.lg, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aui, i64 4 ; 2 uses
  %i.avi = load i8, ptr %i.ava, align 1, !tbaa !94 ; 2 uses
  %i.avj = sext i8 %i.avi to i64
  %i.avk = shl nsw i64 %i.avj, 21
  %i.avl = and i64 %i.avk, 266338304
  %i.avm = or disjoint i64 %i.avl, %i.avf         ; 2 uses
  %i.avn = icmp sgt i8 %i.avi, -1
  br i1 %i.avn, label %bb.lg, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.avo = getelementptr inbounds nuw i8, ptr %i.aui, i64 5 ; 2 uses
  %i.avp = load i8, ptr %i.avh, align 1, !tbaa !94 ; 2 uses
  %i.avq = sext i8 %i.avp to i64
  %i.avr = shl nsw i64 %i.avq, 28
  %i.avs = and i64 %i.avr, 34091302912
  %i.avt = or disjoint i64 %i.avs, %i.avm         ; 6 uses
  %i.avu = icmp sgt i8 %i.avp, -1
  br i1 %i.avu, label %bb.lg, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.avv = getelementptr inbounds nuw i8, ptr %i.aui, i64 6 ; 2 uses
  %i.avw = load i8, ptr %i.avo, align 1, !tbaa !94
  %i.avx = icmp sgt i8 %i.avw, -1
  br i1 %i.avx, label %bb.lg, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.avy = getelementptr inbounds nuw i8, ptr %i.aui, i64 7 ; 2 uses
  %i.avz = load i8, ptr %i.avv, align 1, !tbaa !94
  %i.awa = icmp sgt i8 %i.avz, -1
  br i1 %i.awa, label %bb.lg, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.awb = getelementptr inbounds nuw i8, ptr %i.aui, i64 8 ; 2 uses
  %i.awc = load i8, ptr %i.avy, align 1, !tbaa !94
  %i.awd = icmp sgt i8 %i.awc, -1
  br i1 %i.awd, label %bb.lg, label %bb.la
end_hunk_22
begin_hunk_23_@_ZZN6iguana7from_pbIN9pb_sample8MonstersEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_7MonsterESaISE_EELm1ESG_EEEEDaS4_:bb.a
  %i.awk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.awk, ptr noundef nonnull @.str.77)
          to label %.invoke11638 unwind label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.awl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.awk) #28
  br label %.body.i

.lr.ph4061:                                       ; preds = %bb.ks, %bb.le
  %indvars.iv7817 = phi i64 [ %indvars.iv.next7818, %bb.le ], [ 0, %bb.ks ] ; 3 uses
  %.1.i.i85.i4059 = phi i64 [ %i.aws, %bb.le ], [ 0, %bb.ks ] ; 2 uses
  %.170.i.i84.i4058 = phi ptr [ %i.awo, %bb.le ], [ %i.aui, %bb.ks ] ; 2 uses
  %i.awm = load i8, ptr %.170.i.i84.i4058, align 1, !tbaa !94 ; 3 uses
  %i.awn = icmp slt i8 %i.awm, 0
  %i.awo = getelementptr inbounds nuw i8, ptr %.170.i.i84.i4058, i64 1 ; 3 uses
  br i1 %i.awn, label %bb.le, label %.critedge.i.i88.i

bb.le:                                            ; preds = %.lr.ph4061
  %i.awp = and i8 %i.awm, 127
  %i.awq = zext nneg i8 %i.awp to i64
  %i.awr = shl i64 %i.awq, %indvars.iv7817
  %i.aws = or i64 %i.awr, %.1.i.i85.i4059
  %indvars.iv.next7818 = add nuw nsw i64 %indvars.iv7817, 7
  %.not.i.i87.i = icmp eq ptr %i.awo, %i.auk
  br i1 %.not.i.i87.i, label %.preheader1173._crit_edge, label %.lr.ph4061, !llvm.loop !46

.preheader1173._crit_edge:                        ; preds = %bb.le
  %i.awt = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.awt, ptr noundef nonnull @.str.78)
          to label %.invoke11638 unwind label %bb.lf

bb.lf:                                            ; preds = %.preheader1173._crit_edge
  %i.awu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.awt) #28
  br label %.body.i

.critedge.i.i88.i:                                ; preds = %.lr.ph4061
  %i.awv = zext nneg i8 %i.awm to i64
  %i.aww = shl i64 %i.awv, %indvars.iv7817
  %i.awx = or i64 %i.aww, %.1.i.i85.i4059
  br label %bb.lg

bb.lg:                                            ; preds = %.critedge.i.i88.i, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx, %bb.kw, %bb.kv, %bb.ku, %bb.kt
  %.271.i.i89.i = phi ptr [ %i.awo, %.critedge.i.i88.i ], [ %i.awh, %bb.lb ], [ %i.aut, %bb.kt ], [ %i.ava, %bb.ku ], [ %i.avh, %bb.kv ], [ %i.avo, %bb.kw ], [ %i.avv, %bb.kx ], [ %i.avy, %bb.ky ], [ %i.awb, %bb.kz ], [ %i.awe, %bb.la ]
  %.2.i.i90.i = phi i64 [ %i.awx, %.critedge.i.i88.i ], [ %i.avt, %bb.lb ], [ %i.auy, %bb.kt ], [ %i.avf, %bb.ku ], [ %i.avm, %bb.kv ], [ %i.avt, %bb.kw ], [ %i.avt, %bb.kx ], [ %i.avt, %bb.ky ], [ %i.avt, %bb.kz ], [ %i.avt, %bb.la ]
  %i.awy = ptrtoint ptr %.271.i.i89.i to i64
  %i.awz = sub i64 %i.awy, %i.auo
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i: ; preds = %bb.kr, %bb.lg
  %.17 = phi i64 [ 1, %bb.kr ], [ %i.awz, %bb.lg ]
  %.072.i.i92.i = phi i64 [ %i.aun, %bb.kr ], [ %.2.i.i90.i, %bb.lg ]
  %i.axa = trunc i64 %.072.i.i92.i to i32         ; 2 uses
  %i.axb = and i32 %i.axa, 7
  %i.axc = lshr i32 %i.axa, 3                     ; 2 uses
  store i32 %i.axc, ptr %i.e, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread1007

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread1007: ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread993, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i
  %.pr1030 = phi i32 [ %i.axc, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.pr1016, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread993 ] ; 2 uses
  %.39341014 = phi i32 [ %i.axb, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.29331000, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread993 ] ; 2 uses
  %.49441013 = phi i64 [ %.17, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i ], [ %.3943999, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.thread993 ] ; 6 uses
  %.sroa.02.0.copyload.i95.i1015 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 96), align 8, !tbaa !249
  %.not.i96.i = icmp eq i32 %.pr1030, 5
  br i1 %.not.i96.i, label %bb.lh, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i.thread1021

bb.lh:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.thread1007
  %i.axd = load i64, ptr %16, align 8, !tbaa !438 ; 5 uses
  %i.axe = icmp ugt i64 %.49441013, %i.axd
  br i1 %i.axe, label %.invoke11636, label %.noexc80

.noexc80:                                         ; preds = %bb.lh
  %i.axf = sub nuw i64 %i.axd, %.49441013         ; 3 uses
  %i.axg = load ptr, ptr %i.p, align 8, !tbaa !439 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axg, i64 %.49441013 ; 14 uses
  store i64 %i.axf, ptr %16, align 8, !tbaa !249
  store ptr %i.axh, ptr %i.p, align 8, !tbaa !363
  %.not4.i98.i = icmp eq i32 %.39341014, 2
  br i1 %.not4.i98.i, label %bb.lk, label %bb.li, !prof !257

bb.li:                                            ; preds = %.noexc80
  %i.axi = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.axi, ptr noundef nonnull @.str.79)
          to label %.invoke11638 unwind label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.axj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.axi) #28
  br label %.body.i

bb.lk:                                            ; preds = %.noexc80
  %i.axk = getelementptr inbounds nuw i8, ptr %18, i64 %.sroa.02.0.copyload.i95.i1015 ; 7 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axg, i64 %i.axd
  %i.axm = load i8, ptr %i.axh, align 1, !tbaa !94 ; 3 uses
  %i.axn = icmp sgt i8 %i.axm, -1
  br i1 %i.axn, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  %i.axo = zext nneg i8 %i.axm to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i

bb.lm:                                            ; preds = %bb.lk
  %i.axp = ptrtoint ptr %i.axh to i64
  %i.axq = icmp ugt i64 %i.axf, 9
  br i1 %i.axq, label %bb.ln, label %.preheader1172, !prof !257

.preheader1172:                                   ; preds = %bb.lm
  %.not.i.i.i102.i4063 = icmp samesign eq i64 %.49441013, %i.axd
  br i1 %.not.i.i.i102.i4063, label %.preheader1172._crit_edge, label %.lr.ph4067

bb.ln:                                            ; preds = %bb.lm
  %i.axr = and i8 %i.axm, 127
  %i.axs = zext nneg i8 %i.axr to i64
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axh, i64 1
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axh, i64 2 ; 2 uses
  %i.axv = load i8, ptr %i.axt, align 1, !tbaa !94 ; 2 uses
  %i.axw = sext i8 %i.axv to i64
  %i.axx = shl nsw i64 %i.axw, 7
  %i.axy = and i64 %i.axx, 16256
  %i.axz = or disjoint i64 %i.axy, %i.axs         ; 2 uses
  %i.aya = icmp sgt i8 %i.axv, -1
  br i1 %i.aya, label %bb.ma, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axh, i64 3 ; 2 uses
  %i.ayc = load i8, ptr %i.axu, align 1, !tbaa !94 ; 2 uses
  %i.ayd = sext i8 %i.ayc to i64
  %i.aye = shl nsw i64 %i.ayd, 14
  %i.ayf = and i64 %i.aye, 2080768
  %i.ayg = or disjoint i64 %i.ayf, %i.axz         ; 2 uses
  %i.ayh = icmp sgt i8 %i.ayc, -1
  br i1 %i.ayh, label %bb.ma, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axh, i64 4 ; 2 uses
  %i.ayj = load i8, ptr %i.ayb, align 1, !tbaa !94 ; 2 uses
  %i.ayk = sext i8 %i.ayj to i64
  %i.ayl = shl nsw i64 %i.ayk, 21
  %i.aym = and i64 %i.ayl, 266338304
  %i.ayn = or disjoint i64 %i.aym, %i.ayg         ; 2 uses
  %i.ayo = icmp sgt i8 %i.ayj, -1
  br i1 %i.ayo, label %bb.ma, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axh, i64 5 ; 2 uses
  %i.ayq = load i8, ptr %i.ayi, align 1, !tbaa !94 ; 2 uses
  %i.ayr = sext i8 %i.ayq to i64
  %i.ays = shl nsw i64 %i.ayr, 28
  %i.ayt = and i64 %i.ays, 34091302912
  %i.ayu = or disjoint i64 %i.ayt, %i.ayn         ; 2 uses
  %i.ayv = icmp sgt i8 %i.ayq, -1
  br i1 %i.ayv, label %bb.ma, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axh, i64 6 ; 2 uses
  %i.ayx = load i8, ptr %i.ayp, align 1, !tbaa !94 ; 2 uses
  %i.ayy = sext i8 %i.ayx to i64
  %i.ayz = shl nsw i64 %i.ayy, 35
  %i.aza = and i64 %i.ayz, 4363686772736
  %i.azb = or disjoint i64 %i.aza, %i.ayu         ; 2 uses
  %i.azc = icmp sgt i8 %i.ayx, -1
  br i1 %i.azc, label %bb.ma, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axh, i64 7 ; 2 uses
  %i.aze = load i8, ptr %i.ayw, align 1, !tbaa !94 ; 2 uses
  %i.azf = sext i8 %i.aze to i64
  %i.azg = shl nsw i64 %i.azf, 42
  %i.azh = and i64 %i.azg, 558551906910208
  %i.azi = or i64 %i.azh, %i.azb                  ; 2 uses
  %i.azj = icmp sgt i8 %i.aze, -1
  br i1 %i.azj, label %bb.ma, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.azk = getelementptr inbounds nuw i8, ptr %i.axh, i64 8 ; 2 uses
  %i.azl = load i8, ptr %i.azd, align 1, !tbaa !94 ; 2 uses
  %i.azm = sext i8 %i.azl to i64
  %i.azn = shl nsw i64 %i.azm, 49
  %i.azo = and i64 %i.azn, 71494644084506624
  %i.azp = or i64 %i.azo, %i.azi                  ; 2 uses
  %i.azq = icmp sgt i8 %i.azl, -1
  br i1 %i.azq, label %bb.ma, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.azr = getelementptr inbounds nuw i8, ptr %i.axh, i64 9 ; 2 uses
  %i.azs = load i8, ptr %i.azk, align 1, !tbaa !94 ; 2 uses
  %i.azt = sext i8 %i.azs to i64
  %i.azu = shl nsw i64 %i.azt, 56
  %i.azv = and i64 %i.azu, 9151314442816847872
  %i.azw = or i64 %i.azv, %i.azp                  ; 2 uses
  %i.azx = icmp sgt i8 %i.azs, -1
  br i1 %i.azx, label %bb.ma, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.azy = getelementptr inbounds nuw i8, ptr %i.axh, i64 10
  %i.azz = load i8, ptr %i.azr, align 1, !tbaa !94 ; 2 uses
  %i.baa = zext i8 %i.azz to i64
  %i.bab = shl i64 %i.baa, 63
  %i.bac = or i64 %i.bab, %i.azw
  %i.bad = icmp sgt i8 %i.azz, -1
  br i1 %i.bad, label %bb.ma, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bae = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bae, ptr noundef nonnull @.str.77)
          to label %.invoke11638 unwind label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.baf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bae) #28
  br label %.body.i

.lr.ph4067:                                       ; preds = %.preheader1172, %bb.ly
  %indvars.iv7820 = phi i64 [ %indvars.iv.next7821, %bb.ly ], [ 0, %.preheader1172 ] ; 3 uses
  %.1.i.i.i100.i4065 = phi i64 [ %i.bam, %bb.ly ], [ 0, %.preheader1172 ] ; 2 uses
  %.170.i.i.i99.i4064 = phi ptr [ %i.bai, %bb.ly ], [ %i.axh, %.preheader1172 ] ; 2 uses
  %i.bag = load i8, ptr %.170.i.i.i99.i4064, align 1, !tbaa !94 ; 3 uses
  %i.bah = icmp slt i8 %i.bag, 0
  %i.bai = getelementptr inbounds nuw i8, ptr %.170.i.i.i99.i4064, i64 1 ; 3 uses
  br i1 %i.bah, label %bb.ly, label %.critedge.i.i.i103.i

bb.ly:                                            ; preds = %.lr.ph4067
  %i.baj = and i8 %i.bag, 127
  %i.bak = zext nneg i8 %i.baj to i64
  %i.bal = shl i64 %i.bak, %indvars.iv7820
  %i.bam = or i64 %i.bal, %.1.i.i.i100.i4065
  %indvars.iv.next7821 = add nuw nsw i64 %indvars.iv7820, 7
  %.not.i.i.i102.i = icmp eq ptr %i.bai, %i.axl
  br i1 %.not.i.i.i102.i, label %.preheader1172._crit_edge, label %.lr.ph4067, !llvm.loop !46

.preheader1172._crit_edge:                        ; preds = %.preheader1172, %bb.ly
  %i.ban = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ban, ptr noundef nonnull @.str.78)
          to label %.invoke11638 unwind label %bb.lz

bb.lz:                                            ; preds = %.preheader1172._crit_edge
  %i.bao = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ban) #28
  br label %.body.i

.critedge.i.i.i103.i:                             ; preds = %.lr.ph4067
  %i.bap = zext nneg i8 %i.bag to i64
  %i.baq = shl i64 %i.bap, %indvars.iv7820
  %i.bar = or i64 %i.baq, %.1.i.i.i100.i4065
  br label %bb.ma

bb.ma:                                            ; preds = %.critedge.i.i.i103.i, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.ln
  %.271.i.i.i104.i = phi ptr [ %i.bai, %.critedge.i.i.i103.i ], [ %i.azy, %bb.lv ], [ %i.axu, %bb.ln ], [ %i.ayb, %bb.lo ], [ %i.ayi, %bb.lp ], [ %i.ayp, %bb.lq ], [ %i.ayw, %bb.lr ], [ %i.azd, %bb.ls ], [ %i.azk, %bb.lt ], [ %i.azr, %bb.lu ]
  %.2.i.i.i105.i = phi i64 [ %i.bar, %.critedge.i.i.i103.i ], [ %i.bac, %bb.lv ], [ %i.axz, %bb.ln ], [ %i.ayg, %bb.lo ], [ %i.ayn, %bb.lp ], [ %i.ayu, %bb.lq ], [ %i.azb, %bb.lr ], [ %i.azi, %bb.ls ], [ %i.azp, %bb.lt ], [ %i.azw, %bb.lu ]
  %i.bas = ptrtoint ptr %.271.i.i.i104.i to i64
  %i.bat = sub i64 %i.bas, %i.axp
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i: ; preds = %bb.ma, %bb.ll
  %.0800 = phi i64 [ 1, %bb.ll ], [ %i.bat, %bb.ma ] ; 2 uses
  %.072.i.i.i107.i = phi i64 [ %i.axo, %bb.ll ], [ %.2.i.i.i105.i, %bb.ma ] ; 7 uses
  %i.bau = add i64 %.072.i.i.i107.i, %.0800       ; 6 uses
  %i.bav = icmp ult i64 %i.axf, %i.bau
  br i1 %i.bav, label %bb.mb, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i, !prof !169

bb.mb:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i
  %i.baw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.baw, ptr noundef nonnull @.str.89)
          to label %.invoke11638 unwind label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bax = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.baw) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i
  %i.bay = load ptr, ptr %i.axk, align 8, !tbaa !95 ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.axk, i64 16 ; 2 uses
  %i.bba = icmp eq ptr %i.bay, %i.baz
  br i1 %i.bba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i
  %i.bbb = load i64, ptr %i.baz, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i242: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  %i.bbc = phi i64 [ %i.bbb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i ]
  %i.bbd = icmp ugt i64 %.072.i.i.i107.i, %i.bbc
  br i1 %i.bbd, label %bb.md, label %.noexc85

bb.md:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i242
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.axk, i64 noundef %.072.i.i.i107.i)
          to label %.noexc245 unwind label %.loopexit.split-lp1148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc245:                                        ; preds = %bb.md
  %.pre.i243 = load ptr, ptr %i.axk, align 8, !tbaa !95
  br label %.noexc85

.noexc85:                                         ; preds = %.noexc245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i242
  %i.bbe = phi ptr [ %.pre.i243, %.noexc245 ], [ %i.bay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i242 ]
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  store i64 %.072.i.i.i107.i, ptr %i.bbf, align 8, !tbaa !93
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %.072.i.i.i107.i
  store i8 0, ptr %i.bbg, align 1, !tbaa !94
  %i.bbh = load ptr, ptr %i.axk, align 8, !tbaa !95
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 %.072.i.i.i107.i
  store i8 0, ptr %i.bbi, align 1, !tbaa !94
  %i.bbj = load ptr, ptr %i.axk, align 8, !tbaa !95
  %i.bbk = load ptr, ptr %i.p, align 8, !tbaa !439
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %.0800
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bbj, ptr align 1 %i.bbl, i64 %.072.i.i.i107.i, i1 false)
  %i.bbm = load i64, ptr %16, align 8, !tbaa !438 ; 5 uses
  %i.bbn = icmp ugt i64 %i.bau, %i.bbm
  br i1 %i.bbn, label %.invoke11636, label %.noexc86

.noexc86:                                         ; preds = %.noexc85
  %i.bbo = sub nuw i64 %i.bbm, %i.bau             ; 2 uses
  %i.bbp = load ptr, ptr %i.p, align 8, !tbaa !439 ; 2 uses
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbp, i64 %i.bau ; 14 uses
  store i64 %i.bbo, ptr %16, align 8, !tbaa !249
  store ptr %i.bbq, ptr %i.p, align 8, !tbaa !363
  %i.bbr = icmp eq i64 %i.bbm, %i.bau
  br i1 %i.bbr, label %.critedge.i18.i, label %bb.me

bb.me:                                            ; preds = %.noexc86
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbp, i64 %i.bbm
  %i.bbt = load i8, ptr %i.bbq, align 1, !tbaa !94 ; 3 uses
  %i.bbu = icmp sgt i8 %i.bbt, -1
  br i1 %i.bbu, label %bb.mf, label %bb.mg

bb.mf:                                            ; preds = %bb.me
  %i.bbv = zext nneg i8 %i.bbt to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i

bb.mg:                                            ; preds = %bb.me
  %i.bbw = ptrtoint ptr %i.bbq to i64
  %i.bbx = icmp ugt i64 %i.bbo, 9
  br i1 %i.bbx, label %bb.mh, label %.lr.ph4073, !prof !257

bb.mh:                                            ; preds = %bb.mg
  %i.bby = and i8 %i.bbt, 127
  %i.bbz = zext nneg i8 %i.bby to i64
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbq, i64 1
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbq, i64 2 ; 2 uses
  %i.bcc = load i8, ptr %i.bca, align 1, !tbaa !94 ; 2 uses
  %i.bcd = sext i8 %i.bcc to i64
  %i.bce = shl nsw i64 %i.bcd, 7
  %i.bcf = and i64 %i.bce, 16256
  %i.bcg = or disjoint i64 %i.bcf, %i.bbz         ; 2 uses
  %i.bch = icmp sgt i8 %i.bcc, -1
  br i1 %i.bch, label %bb.mu, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bbq, i64 3 ; 2 uses
  %i.bcj = load i8, ptr %i.bcb, align 1, !tbaa !94 ; 2 uses
  %i.bck = sext i8 %i.bcj to i64
  %i.bcl = shl nsw i64 %i.bck, 14
  %i.bcm = and i64 %i.bcl, 2080768
  %i.bcn = or disjoint i64 %i.bcm, %i.bcg         ; 2 uses
  %i.bco = icmp sgt i8 %i.bcj, -1
  br i1 %i.bco, label %bb.mu, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bbq, i64 4 ; 2 uses
  %i.bcq = load i8, ptr %i.bci, align 1, !tbaa !94 ; 2 uses
  %i.bcr = sext i8 %i.bcq to i64
  %i.bcs = shl nsw i64 %i.bcr, 21
  %i.bct = and i64 %i.bcs, 266338304
  %i.bcu = or disjoint i64 %i.bct, %i.bcn         ; 2 uses
  %i.bcv = icmp sgt i8 %i.bcq, -1
  br i1 %i.bcv, label %bb.mu, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bbq, i64 5 ; 2 uses
  %i.bcx = load i8, ptr %i.bcp, align 1, !tbaa !94 ; 2 uses
  %i.bcy = sext i8 %i.bcx to i64
  %i.bcz = shl nsw i64 %i.bcy, 28
  %i.bda = and i64 %i.bcz, 34091302912
  %i.bdb = or disjoint i64 %i.bda, %i.bcu         ; 6 uses
  %i.bdc = icmp sgt i8 %i.bcx, -1
  br i1 %i.bdc, label %bb.mu, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bbq, i64 6 ; 2 uses
  %i.bde = load i8, ptr %i.bcw, align 1, !tbaa !94
  %i.bdf = icmp sgt i8 %i.bde, -1
  br i1 %i.bdf, label %bb.mu, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bbq, i64 7 ; 2 uses
  %i.bdh = load i8, ptr %i.bdd, align 1, !tbaa !94
  %i.bdi = icmp sgt i8 %i.bdh, -1
  br i1 %i.bdi, label %bb.mu, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bbq, i64 8 ; 2 uses
  %i.bdk = load i8, ptr %i.bdg, align 1, !tbaa !94
  %i.bdl = icmp sgt i8 %i.bdk, -1
  br i1 %i.bdl, label %bb.mu, label %bb.mo
end_hunk_23
begin_hunk_24_@_ZZN6iguana7from_pbIN9pb_sample8MonstersEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_7MonsterESaISE_EELm1ESG_EEEEDaS4_:bb.a
  %i.bpn = load i8, ptr %.170.i12.i334.i4100, align 1, !tbaa !94 ; 3 uses
  %i.bpo = icmp slt i8 %i.bpn, 0
  %i.bpp = getelementptr inbounds nuw i8, ptr %.170.i12.i334.i4100, i64 1 ; 3 uses
  br i1 %i.bpo, label %bb.pu, label %.critedge.i16.i338.i

bb.pu:                                            ; preds = %.lr.ph4103
  %i.bpq = and i8 %i.bpn, 127
  %i.bpr = zext nneg i8 %i.bpq to i64
  %i.bps = shl i64 %i.bpr, %indvars.iv7835
  %i.bpt = or i64 %i.bps, %.1.i13.i335.i4101
  %indvars.iv.next7836 = add nuw nsw i64 %indvars.iv7835, 7
  %.not.i15.i337.i = icmp eq ptr %i.bpp, %i.bnl
  br i1 %.not.i15.i337.i, label %.preheader1143._crit_edge, label %.lr.ph4103, !llvm.loop !46

.preheader1143._crit_edge:                        ; preds = %bb.pu
  %i.bpu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bpu, ptr noundef nonnull @.str.78)
          to label %.invoke11628 unwind label %bb.pv

bb.pv:                                            ; preds = %.preheader1143._crit_edge
  %i.bpv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bpu) #28
  br label %.body.i.i

.critedge.i16.i338.i:                             ; preds = %.lr.ph4103
  %i.bpw = zext nneg i8 %i.bpn to i64
  %i.bpx = shl i64 %i.bpw, %indvars.iv7835
  %i.bpy = or i64 %i.bpx, %.1.i13.i335.i4101
  br label %bb.pw

bb.pw:                                            ; preds = %.critedge.i16.i338.i, %bb.pr, %bb.pq, %bb.pp, %bb.po, %bb.pn, %bb.pm, %bb.pl, %bb.pk, %bb.pj
  %.271.i17.i339.i = phi ptr [ %i.bpp, %.critedge.i16.i338.i ], [ %i.bpi, %bb.pr ], [ %i.bnu, %bb.pj ], [ %i.bob, %bb.pk ], [ %i.boi, %bb.pl ], [ %i.bop, %bb.pm ], [ %i.bow, %bb.pn ], [ %i.boz, %bb.po ], [ %i.bpc, %bb.pp ], [ %i.bpf, %bb.pq ]
  %.2.i18.i340.i = phi i64 [ %i.bpy, %.critedge.i16.i338.i ], [ %i.bou, %bb.pr ], [ %i.bnz, %bb.pj ], [ %i.bog, %bb.pk ], [ %i.bon, %bb.pl ], [ %i.bou, %bb.pm ], [ %i.bou, %bb.pn ], [ %i.bou, %bb.po ], [ %i.bou, %bb.pp ], [ %i.bou, %bb.pq ]
  %i.bpz = ptrtoint ptr %.271.i17.i339.i to i64
  %i.bqa = sub i64 %i.bpz, %i.bnp
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i: ; preds = %bb.pw, %bb.ph
  %.0894 = phi i64 [ 1, %bb.ph ], [ %i.bqa, %bb.pw ] ; 6 uses
  %.072.i19.i342.i = phi i64 [ %i.bno, %bb.ph ], [ %.2.i18.i340.i, %bb.pw ]
  %i.bqb = trunc i64 %.072.i19.i342.i to i32      ; 2 uses
  %i.bqc = and i32 %i.bqb, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bqd = lshr i32 %i.bqb, 3
  store i32 %i.bqd, ptr %i.b, align 4, !tbaa !164
  %i.bqe = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.bqf = icmp eq i8 %i.bqe, 0
  br i1 %i.bqf, label %bb.px, label %bb.qa, !prof !173

bb.px:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i
  %i.bqg = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i356.i = icmp eq i32 %i.bqg, 0
  br i1 %.not.i356.i, label %bb.qa, label %bb.py

bb.py:                                            ; preds = %bb.px
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %13)
          to label %bb.pz unwind label %bb.tb

bb.pz:                                            ; preds = %bb.py
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.qa

bb.qa:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i, %bb.px, %bb.pz
  %.sroa.02.0.copyload.i397.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.bqh = load i32, ptr %i.b, align 4, !tbaa !164 ; 2 uses
  %.not.i398.i = icmp eq i32 %i.bqh, 1
  %.pre7914.pre = load i64, ptr %9, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i398.i, label %bb.qb, label %bb.rp

bb.qb:                                            ; preds = %bb.qa
  %i.bqi = icmp ugt i64 %.0894, %.pre7914.pre
  br i1 %i.bqi, label %.invoke, label %.noexc423.i

.noexc423.i:                                      ; preds = %bb.qb
  %i.bqj = sub nuw i64 %.pre7914.pre, %.0894      ; 3 uses
  %i.bqk = load ptr, ptr %i.y, align 8, !tbaa !439 ; 2 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 %.0894 ; 14 uses
  store i64 %i.bqj, ptr %9, align 8, !tbaa !249
  store ptr %i.bql, ptr %i.y, align 8, !tbaa !363
  %.not4.i400.i = icmp eq i32 %i.bqc, 2
  br i1 %.not4.i400.i, label %bb.qe, label %bb.qc, !prof !257

bb.qc:                                            ; preds = %.noexc423.i
  %i.bqm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bqm, ptr noundef nonnull @.str.79)
          to label %.invoke11628 unwind label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.bqn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bqm) #28
  br label %.body.i.i

bb.qe:                                            ; preds = %.noexc423.i
  %i.bqo = getelementptr inbounds nuw i8, ptr %13, i64 %.sroa.02.0.copyload.i397.i ; 7 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqk, i64 %.pre7914.pre
  %i.bqq = load i8, ptr %i.bql, align 1, !tbaa !94 ; 3 uses
  %i.bqr = icmp sgt i8 %i.bqq, -1
  br i1 %i.bqr, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  %i.bqs = zext nneg i8 %i.bqq to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i

bb.qg:                                            ; preds = %bb.qe
  %i.bqt = ptrtoint ptr %i.bql to i64
  %i.bqu = icmp ugt i64 %i.bqj, 9
  br i1 %i.bqu, label %bb.qh, label %.preheader1142, !prof !257

.preheader1142:                                   ; preds = %bb.qg
  %.not.i.i.i404.i4111 = icmp samesign eq i64 %.0894, %.pre7914.pre
  br i1 %.not.i.i.i404.i4111, label %.preheader1142._crit_edge, label %.lr.ph4115

bb.qh:                                            ; preds = %bb.qg
  %i.bqv = and i8 %i.bqq, 127
  %i.bqw = zext nneg i8 %i.bqv to i64
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bql, i64 1
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bql, i64 2 ; 2 uses
  %i.bqz = load i8, ptr %i.bqx, align 1, !tbaa !94 ; 2 uses
  %i.bra = sext i8 %i.bqz to i64
  %i.brb = shl nsw i64 %i.bra, 7
  %i.brc = and i64 %i.brb, 16256
  %i.brd = or disjoint i64 %i.brc, %i.bqw         ; 2 uses
  %i.bre = icmp sgt i8 %i.bqz, -1
  br i1 %i.bre, label %bb.qu, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.brf = getelementptr inbounds nuw i8, ptr %i.bql, i64 3 ; 2 uses
  %i.brg = load i8, ptr %i.bqy, align 1, !tbaa !94 ; 2 uses
  %i.brh = sext i8 %i.brg to i64
  %i.bri = shl nsw i64 %i.brh, 14
  %i.brj = and i64 %i.bri, 2080768
  %i.brk = or disjoint i64 %i.brj, %i.brd         ; 2 uses
  %i.brl = icmp sgt i8 %i.brg, -1
  br i1 %i.brl, label %bb.qu, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.brm = getelementptr inbounds nuw i8, ptr %i.bql, i64 4 ; 2 uses
  %i.brn = load i8, ptr %i.brf, align 1, !tbaa !94 ; 2 uses
  %i.bro = sext i8 %i.brn to i64
  %i.brp = shl nsw i64 %i.bro, 21
  %i.brq = and i64 %i.brp, 266338304
  %i.brr = or disjoint i64 %i.brq, %i.brk         ; 2 uses
  %i.brs = icmp sgt i8 %i.brn, -1
  br i1 %i.brs, label %bb.qu, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.brt = getelementptr inbounds nuw i8, ptr %i.bql, i64 5 ; 2 uses
  %i.bru = load i8, ptr %i.brm, align 1, !tbaa !94 ; 2 uses
  %i.brv = sext i8 %i.bru to i64
  %i.brw = shl nsw i64 %i.brv, 28
  %i.brx = and i64 %i.brw, 34091302912
  %i.bry = or disjoint i64 %i.brx, %i.brr         ; 2 uses
  %i.brz = icmp sgt i8 %i.bru, -1
  br i1 %i.brz, label %bb.qu, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bql, i64 6 ; 2 uses
  %i.bsb = load i8, ptr %i.brt, align 1, !tbaa !94 ; 2 uses
  %i.bsc = sext i8 %i.bsb to i64
  %i.bsd = shl nsw i64 %i.bsc, 35
  %i.bse = and i64 %i.bsd, 4363686772736
  %i.bsf = or disjoint i64 %i.bse, %i.bry         ; 2 uses
  %i.bsg = icmp sgt i8 %i.bsb, -1
  br i1 %i.bsg, label %bb.qu, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bql, i64 7 ; 2 uses
  %i.bsi = load i8, ptr %i.bsa, align 1, !tbaa !94 ; 2 uses
  %i.bsj = sext i8 %i.bsi to i64
  %i.bsk = shl nsw i64 %i.bsj, 42
  %i.bsl = and i64 %i.bsk, 558551906910208
  %i.bsm = or i64 %i.bsl, %i.bsf                  ; 2 uses
  %i.bsn = icmp sgt i8 %i.bsi, -1
  br i1 %i.bsn, label %bb.qu, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bql, i64 8 ; 2 uses
  %i.bsp = load i8, ptr %i.bsh, align 1, !tbaa !94 ; 2 uses
  %i.bsq = sext i8 %i.bsp to i64
  %i.bsr = shl nsw i64 %i.bsq, 49
  %i.bss = and i64 %i.bsr, 71494644084506624
  %i.bst = or i64 %i.bss, %i.bsm                  ; 2 uses
  %i.bsu = icmp sgt i8 %i.bsp, -1
  br i1 %i.bsu, label %bb.qu, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bql, i64 9 ; 2 uses
  %i.bsw = load i8, ptr %i.bso, align 1, !tbaa !94 ; 2 uses
  %i.bsx = sext i8 %i.bsw to i64
  %i.bsy = shl nsw i64 %i.bsx, 56
  %i.bsz = and i64 %i.bsy, 9151314442816847872
  %i.bta = or i64 %i.bsz, %i.bst                  ; 2 uses
  %i.btb = icmp sgt i8 %i.bsw, -1
  br i1 %i.btb, label %bb.qu, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bql, i64 10
  %i.btd = load i8, ptr %i.bsv, align 1, !tbaa !94 ; 2 uses
  %i.bte = zext i8 %i.btd to i64
  %i.btf = shl i64 %i.bte, 63
  %i.btg = or i64 %i.btf, %i.bta
  %i.bth = icmp sgt i8 %i.btd, -1
  br i1 %i.bth, label %bb.qu, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.bti = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bti, ptr noundef nonnull @.str.77)
          to label %.invoke11628 unwind label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.btj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bti) #28
  br label %.body.i.i

.lr.ph4115:                                       ; preds = %.preheader1142, %bb.qs
  %indvars.iv7838 = phi i64 [ %indvars.iv.next7839, %bb.qs ], [ 0, %.preheader1142 ] ; 3 uses
  %.1.i.i.i402.i4113 = phi i64 [ %i.btq, %bb.qs ], [ 0, %.preheader1142 ] ; 2 uses
  %.170.i.i.i401.i4112 = phi ptr [ %i.btm, %bb.qs ], [ %i.bql, %.preheader1142 ] ; 2 uses
  %i.btk = load i8, ptr %.170.i.i.i401.i4112, align 1, !tbaa !94 ; 3 uses
  %i.btl = icmp slt i8 %i.btk, 0
  %i.btm = getelementptr inbounds nuw i8, ptr %.170.i.i.i401.i4112, i64 1 ; 3 uses
  br i1 %i.btl, label %bb.qs, label %.critedge.i.i.i405.i

bb.qs:                                            ; preds = %.lr.ph4115
  %i.btn = and i8 %i.btk, 127
  %i.bto = zext nneg i8 %i.btn to i64
  %i.btp = shl i64 %i.bto, %indvars.iv7838
  %i.btq = or i64 %i.btp, %.1.i.i.i402.i4113
  %indvars.iv.next7839 = add nuw nsw i64 %indvars.iv7838, 7
  %.not.i.i.i404.i = icmp eq ptr %i.btm, %i.bqp
  br i1 %.not.i.i.i404.i, label %.preheader1142._crit_edge, label %.lr.ph4115, !llvm.loop !46

.preheader1142._crit_edge:                        ; preds = %.preheader1142, %bb.qs
  %i.btr = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.btr, ptr noundef nonnull @.str.78)
          to label %.invoke11628 unwind label %bb.qt

bb.qt:                                            ; preds = %.preheader1142._crit_edge
  %i.bts = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.btr) #28
  br label %.body.i.i

.critedge.i.i.i405.i:                             ; preds = %.lr.ph4115
  %i.btt = zext nneg i8 %i.btk to i64
  %i.btu = shl i64 %i.btt, %indvars.iv7838
  %i.btv = or i64 %i.btu, %.1.i.i.i402.i4113
  br label %bb.qu

bb.qu:                                            ; preds = %.critedge.i.i.i405.i, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh
  %.271.i.i.i406.i = phi ptr [ %i.btm, %.critedge.i.i.i405.i ], [ %i.btc, %bb.qp ], [ %i.bqy, %bb.qh ], [ %i.brf, %bb.qi ], [ %i.brm, %bb.qj ], [ %i.brt, %bb.qk ], [ %i.bsa, %bb.ql ], [ %i.bsh, %bb.qm ], [ %i.bso, %bb.qn ], [ %i.bsv, %bb.qo ]
  %.2.i.i.i407.i = phi i64 [ %i.btv, %.critedge.i.i.i405.i ], [ %i.btg, %bb.qp ], [ %i.brd, %bb.qh ], [ %i.brk, %bb.qi ], [ %i.brr, %bb.qj ], [ %i.bry, %bb.qk ], [ %i.bsf, %bb.ql ], [ %i.bsm, %bb.qm ], [ %i.bst, %bb.qn ], [ %i.bta, %bb.qo ]
  %i.btw = ptrtoint ptr %.271.i.i.i406.i to i64
  %i.btx = sub i64 %i.btw, %i.bqt
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i: ; preds = %bb.qu, %bb.qf
  %.0807 = phi i64 [ 1, %bb.qf ], [ %i.btx, %bb.qu ] ; 2 uses
  %.072.i.i.i409.i = phi i64 [ %i.bqs, %bb.qf ], [ %.2.i.i.i407.i, %bb.qu ] ; 7 uses
  %i.bty = add i64 %.072.i.i.i409.i, %.0807       ; 6 uses
  %i.btz = icmp ult i64 %i.bqj, %i.bty
  br i1 %i.btz, label %bb.qv, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i, !prof !169

bb.qv:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i
  %i.bua = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bua, ptr noundef nonnull @.str.89)
          to label %.invoke11628 unwind label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.bub = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bua) #28
  br label %.body.i.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i
  %i.buc = load ptr, ptr %i.bqo, align 8, !tbaa !95 ; 2 uses
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bqo, i64 16 ; 2 uses
  %i.bue = icmp eq ptr %i.buc, %i.bud
  br i1 %i.bue, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i
  %i.buf = load i64, ptr %i.bud, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i284

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i284: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283
  %i.bug = phi i64 [ %i.buf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i ]
  %i.buh = icmp ugt i64 %.072.i.i.i409.i, %i.bug
  br i1 %i.buh, label %bb.qx, label %.noexc430.i

bb.qx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i284
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bqo, i64 noundef %.072.i.i.i409.i)
          to label %.noexc287 unwind label %.loopexit.split-lp1135.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc287:                                        ; preds = %bb.qx
  %.pre.i285 = load ptr, ptr %i.bqo, align 8, !tbaa !95
  br label %.noexc430.i

.noexc430.i:                                      ; preds = %.noexc287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i284
  %i.bui = phi ptr [ %.pre.i285, %.noexc287 ], [ %i.buc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i284 ]
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bqo, i64 8
  store i64 %.072.i.i.i409.i, ptr %i.buj, align 8, !tbaa !93
  %i.buk = getelementptr inbounds nuw i8, ptr %i.bui, i64 %.072.i.i.i409.i
  store i8 0, ptr %i.buk, align 1, !tbaa !94
  %i.bul = load ptr, ptr %i.bqo, align 8, !tbaa !95
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 %.072.i.i.i409.i
  store i8 0, ptr %i.bum, align 1, !tbaa !94
  %i.bun = load ptr, ptr %i.bqo, align 8, !tbaa !95
  %i.buo = load ptr, ptr %i.y, align 8, !tbaa !439
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buo, i64 %.0807
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bun, ptr align 1 %i.bup, i64 %.072.i.i.i409.i, i1 false)
  %i.buq = load i64, ptr %9, align 8, !tbaa !438  ; 5 uses
  %i.bur = icmp ugt i64 %i.bty, %i.buq
  br i1 %i.bur, label %.invoke, label %.noexc431.i

.noexc431.i:                                      ; preds = %.noexc430.i
  %i.bus = sub nuw i64 %i.buq, %i.bty             ; 3 uses
  %i.but = load ptr, ptr %i.y, align 8, !tbaa !439 ; 2 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %i.but, i64 %i.bty ; 14 uses
  store i64 %i.bus, ptr %9, align 8, !tbaa !249
  store ptr %i.buu, ptr %i.y, align 8, !tbaa !363
  %i.buv = icmp eq i64 %i.buq, %i.bty
  br i1 %i.buv, label %.critedge.i353.i, label %bb.qy

bb.qy:                                            ; preds = %.noexc431.i
  %i.buw = getelementptr inbounds nuw i8, ptr %i.but, i64 %i.buq
  %i.bux = load i8, ptr %i.buu, align 1, !tbaa !94 ; 3 uses
  %i.buy = icmp sgt i8 %i.bux, -1
  br i1 %i.buy, label %bb.qz, label %bb.ra

bb.qz:                                            ; preds = %bb.qy
  %i.buz = zext nneg i8 %i.bux to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i419.i

bb.ra:                                            ; preds = %bb.qy
  %i.bva = ptrtoint ptr %i.buu to i64
  %i.bvb = icmp ugt i64 %i.bus, 9
  br i1 %i.bvb, label %bb.rb, label %.lr.ph4127, !prof !257

bb.rb:                                            ; preds = %bb.ra
  %i.bvc = and i8 %i.bux, 127
  %i.bvd = zext nneg i8 %i.bvc to i64
  %i.bve = getelementptr inbounds nuw i8, ptr %i.buu, i64 1
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.buu, i64 2 ; 2 uses
  %i.bvg = load i8, ptr %i.bve, align 1, !tbaa !94 ; 2 uses
  %i.bvh = sext i8 %i.bvg to i64
  %i.bvi = shl nsw i64 %i.bvh, 7
  %i.bvj = and i64 %i.bvi, 16256
  %i.bvk = or disjoint i64 %i.bvj, %i.bvd         ; 2 uses
  %i.bvl = icmp sgt i8 %i.bvg, -1
  br i1 %i.bvl, label %bb.ro, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.buu, i64 3 ; 2 uses
  %i.bvn = load i8, ptr %i.bvf, align 1, !tbaa !94 ; 2 uses
  %i.bvo = sext i8 %i.bvn to i64
  %i.bvp = shl nsw i64 %i.bvo, 14
  %i.bvq = and i64 %i.bvp, 2080768
  %i.bvr = or disjoint i64 %i.bvq, %i.bvk         ; 2 uses
  %i.bvs = icmp sgt i8 %i.bvn, -1
  br i1 %i.bvs, label %bb.ro, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.buu, i64 4 ; 2 uses
  %i.bvu = load i8, ptr %i.bvm, align 1, !tbaa !94 ; 2 uses
  %i.bvv = sext i8 %i.bvu to i64
  %i.bvw = shl nsw i64 %i.bvv, 21
  %i.bvx = and i64 %i.bvw, 266338304
  %i.bvy = or disjoint i64 %i.bvx, %i.bvr         ; 2 uses
  %i.bvz = icmp sgt i8 %i.bvu, -1
  br i1 %i.bvz, label %bb.ro, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.buu, i64 5 ; 2 uses
  %i.bwb = load i8, ptr %i.bvt, align 1, !tbaa !94 ; 2 uses
  %i.bwc = sext i8 %i.bwb to i64
  %i.bwd = shl nsw i64 %i.bwc, 28
  %i.bwe = and i64 %i.bwd, 34091302912
  %i.bwf = or disjoint i64 %i.bwe, %i.bvy         ; 6 uses
  %i.bwg = icmp sgt i8 %i.bwb, -1
  br i1 %i.bwg, label %bb.ro, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.buu, i64 6 ; 2 uses
  %i.bwi = load i8, ptr %i.bwa, align 1, !tbaa !94
  %i.bwj = icmp sgt i8 %i.bwi, -1
  br i1 %i.bwj, label %bb.ro, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.buu, i64 7 ; 2 uses
  %i.bwl = load i8, ptr %i.bwh, align 1, !tbaa !94
  %i.bwm = icmp sgt i8 %i.bwl, -1
  br i1 %i.bwm, label %bb.ro, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.buu, i64 8 ; 2 uses
  %i.bwo = load i8, ptr %i.bwk, align 1, !tbaa !94
  %i.bwp = icmp sgt i8 %i.bwo, -1
  br i1 %i.bwp, label %bb.ro, label %bb.ri
end_hunk_24
begin_hunk_25_@_ZZN6iguana7from_pbIN9pb_sample8MonstersEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS4_E_clINS_6detail10pb_field_tIS2_St6vectorINS1_7MonsterESaISE_EELm1ESG_EEEEDaS4_:bb.a
  %i.cti = load i8, ptr %.170.i12.i310.i4211, align 1, !tbaa !94 ; 3 uses
  %i.ctj = icmp slt i8 %i.cti, 0
  %i.ctk = getelementptr inbounds nuw i8, ptr %.170.i12.i310.i4211, i64 1 ; 3 uses
  br i1 %i.ctj, label %bb.wz, label %.critedge.i16.i314.i

bb.wz:                                            ; preds = %.lr.ph4214
  %i.ctl = and i8 %i.cti, 127
  %i.ctm = zext nneg i8 %i.ctl to i64
  %i.ctn = shl i64 %i.ctm, %indvars.iv7862
  %i.cto = or i64 %i.ctn, %.1.i13.i311.i4212
  %indvars.iv.next7863 = add nuw nsw i64 %indvars.iv7862, 7
  %.not.i15.i313.i = icmp eq ptr %i.ctk, %i.crg
  br i1 %.not.i15.i313.i, label %.preheader1163._crit_edge, label %.lr.ph4214, !llvm.loop !46

.preheader1163._crit_edge:                        ; preds = %bb.wz
  %i.ctp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ctp, ptr noundef nonnull @.str.78)
          to label %.invoke11638 unwind label %bb.xa

bb.xa:                                            ; preds = %.preheader1163._crit_edge
  %i.ctq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ctp) #28
  br label %.body.i

.critedge.i16.i314.i:                             ; preds = %.lr.ph4214
  %i.ctr = zext nneg i8 %i.cti to i64
  %i.cts = shl i64 %i.ctr, %indvars.iv7862
  %i.ctt = or i64 %i.cts, %.1.i13.i311.i4212
  br label %bb.xb

bb.xb:                                            ; preds = %.critedge.i16.i314.i, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %bb.ws, %bb.wr, %bb.wq, %bb.wp, %bb.wo
  %.271.i17.i315.i = phi ptr [ %i.ctk, %.critedge.i16.i314.i ], [ %i.ctd, %bb.ww ], [ %i.crp, %bb.wo ], [ %i.crw, %bb.wp ], [ %i.csd, %bb.wq ], [ %i.csk, %bb.wr ], [ %i.csr, %bb.ws ], [ %i.csu, %bb.wt ], [ %i.csx, %bb.wu ], [ %i.cta, %bb.wv ]
  %.2.i18.i316.i = phi i64 [ %i.ctt, %.critedge.i16.i314.i ], [ %i.csp, %bb.ww ], [ %i.cru, %bb.wo ], [ %i.csb, %bb.wp ], [ %i.csi, %bb.wq ], [ %i.csp, %bb.wr ], [ %i.csp, %bb.ws ], [ %i.csp, %bb.wt ], [ %i.csp, %bb.wu ], [ %i.csp, %bb.wv ]
  %i.ctu = ptrtoint ptr %.271.i17.i315.i to i64
  %i.ctv = sub i64 %i.ctu, %i.crk
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i: ; preds = %bb.xb, %bb.wm
  %.0906 = phi i64 [ 1, %bb.wm ], [ %i.ctv, %bb.xb ] ; 6 uses
  %.072.i19.i318.i = phi i64 [ %i.crj, %bb.wm ], [ %.2.i18.i316.i, %bb.xb ]
  %i.ctw = trunc i64 %.072.i19.i318.i to i32      ; 2 uses
  %i.ctx = and i32 %i.ctw, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.cty = lshr i32 %i.ctw, 3
  store i32 %i.cty, ptr %i.c, align 4, !tbaa !164
  %i.ctz = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.cua = icmp eq i8 %i.ctz, 0
  br i1 %i.cua, label %bb.xc, label %bb.xf, !prof !173

bb.xc:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i
  %i.cub = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i332.i = icmp eq i32 %i.cub, 0
  br i1 %.not.i332.i, label %bb.xf, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %i.coh)
          to label %bb.xe unwind label %bb.aag

bb.xe:                                            ; preds = %bb.xd
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.xf

bb.xf:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i, %bb.xc, %bb.xe
  %.sroa.02.0.copyload.i371.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.cuc = load i32, ptr %i.c, align 4, !tbaa !164 ; 2 uses
  %.not.i372.i = icmp eq i32 %i.cuc, 1
  %.pre7918.pre = load i64, ptr %11, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i372.i, label %bb.xg, label %bb.yu

bb.xg:                                            ; preds = %bb.xf
  %i.cud = icmp ugt i64 %.0906, %.pre7918.pre
  br i1 %i.cud, label %.invoke11636, label %.noexc110

.noexc110:                                        ; preds = %bb.xg
  %i.cue = sub nuw i64 %.pre7918.pre, %.0906      ; 3 uses
  %i.cuf = load ptr, ptr %i.ac, align 8, !tbaa !439 ; 2 uses
  %i.cug = getelementptr inbounds nuw i8, ptr %i.cuf, i64 %.0906 ; 14 uses
  store i64 %i.cue, ptr %11, align 8, !tbaa !249
  store ptr %i.cug, ptr %i.ac, align 8, !tbaa !363
  %.not4.i374.i = icmp eq i32 %i.ctx, 2
  br i1 %.not4.i374.i, label %bb.xj, label %bb.xh, !prof !257

bb.xh:                                            ; preds = %.noexc110
  %i.cuh = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cuh, ptr noundef nonnull @.str.79)
          to label %.invoke11638 unwind label %bb.xi

bb.xi:                                            ; preds = %bb.xh
  %i.cui = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cuh) #28
  br label %.body.i

bb.xj:                                            ; preds = %.noexc110
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.coh, i64 %.sroa.02.0.copyload.i371.i ; 7 uses
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.cuf, i64 %.pre7918.pre
  %i.cul = load i8, ptr %i.cug, align 1, !tbaa !94 ; 3 uses
  %i.cum = icmp sgt i8 %i.cul, -1
  br i1 %i.cum, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  %i.cun = zext nneg i8 %i.cul to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i

bb.xl:                                            ; preds = %bb.xj
  %i.cuo = ptrtoint ptr %i.cug to i64
  %i.cup = icmp ugt i64 %i.cue, 9
  br i1 %i.cup, label %bb.xm, label %.preheader1162, !prof !257

.preheader1162:                                   ; preds = %bb.xl
  %.not.i.i.i378.i4216 = icmp samesign eq i64 %.0906, %.pre7918.pre
  br i1 %.not.i.i.i378.i4216, label %.preheader1162._crit_edge, label %.lr.ph4220

bb.xm:                                            ; preds = %bb.xl
  %i.cuq = and i8 %i.cul, 127
  %i.cur = zext nneg i8 %i.cuq to i64
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cug, i64 1
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cug, i64 2 ; 2 uses
  %i.cuu = load i8, ptr %i.cus, align 1, !tbaa !94 ; 2 uses
  %i.cuv = sext i8 %i.cuu to i64
  %i.cuw = shl nsw i64 %i.cuv, 7
  %i.cux = and i64 %i.cuw, 16256
  %i.cuy = or disjoint i64 %i.cux, %i.cur         ; 2 uses
  %i.cuz = icmp sgt i8 %i.cuu, -1
  br i1 %i.cuz, label %bb.xz, label %bb.xn

bb.xn:                                            ; preds = %bb.xm
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cug, i64 3 ; 2 uses
  %i.cvb = load i8, ptr %i.cut, align 1, !tbaa !94 ; 2 uses
  %i.cvc = sext i8 %i.cvb to i64
  %i.cvd = shl nsw i64 %i.cvc, 14
  %i.cve = and i64 %i.cvd, 2080768
  %i.cvf = or disjoint i64 %i.cve, %i.cuy         ; 2 uses
  %i.cvg = icmp sgt i8 %i.cvb, -1
  br i1 %i.cvg, label %bb.xz, label %bb.xo

bb.xo:                                            ; preds = %bb.xn
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cug, i64 4 ; 2 uses
  %i.cvi = load i8, ptr %i.cva, align 1, !tbaa !94 ; 2 uses
  %i.cvj = sext i8 %i.cvi to i64
  %i.cvk = shl nsw i64 %i.cvj, 21
  %i.cvl = and i64 %i.cvk, 266338304
  %i.cvm = or disjoint i64 %i.cvl, %i.cvf         ; 2 uses
  %i.cvn = icmp sgt i8 %i.cvi, -1
  br i1 %i.cvn, label %bb.xz, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.cug, i64 5 ; 2 uses
  %i.cvp = load i8, ptr %i.cvh, align 1, !tbaa !94 ; 2 uses
  %i.cvq = sext i8 %i.cvp to i64
  %i.cvr = shl nsw i64 %i.cvq, 28
  %i.cvs = and i64 %i.cvr, 34091302912
  %i.cvt = or disjoint i64 %i.cvs, %i.cvm         ; 2 uses
  %i.cvu = icmp sgt i8 %i.cvp, -1
  br i1 %i.cvu, label %bb.xz, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cug, i64 6 ; 2 uses
  %i.cvw = load i8, ptr %i.cvo, align 1, !tbaa !94 ; 2 uses
  %i.cvx = sext i8 %i.cvw to i64
  %i.cvy = shl nsw i64 %i.cvx, 35
  %i.cvz = and i64 %i.cvy, 4363686772736
  %i.cwa = or disjoint i64 %i.cvz, %i.cvt         ; 2 uses
  %i.cwb = icmp sgt i8 %i.cvw, -1
  br i1 %i.cwb, label %bb.xz, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cug, i64 7 ; 2 uses
  %i.cwd = load i8, ptr %i.cvv, align 1, !tbaa !94 ; 2 uses
  %i.cwe = sext i8 %i.cwd to i64
  %i.cwf = shl nsw i64 %i.cwe, 42
  %i.cwg = and i64 %i.cwf, 558551906910208
  %i.cwh = or i64 %i.cwg, %i.cwa                  ; 2 uses
  %i.cwi = icmp sgt i8 %i.cwd, -1
  br i1 %i.cwi, label %bb.xz, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cug, i64 8 ; 2 uses
  %i.cwk = load i8, ptr %i.cwc, align 1, !tbaa !94 ; 2 uses
  %i.cwl = sext i8 %i.cwk to i64
  %i.cwm = shl nsw i64 %i.cwl, 49
  %i.cwn = and i64 %i.cwm, 71494644084506624
  %i.cwo = or i64 %i.cwn, %i.cwh                  ; 2 uses
  %i.cwp = icmp sgt i8 %i.cwk, -1
  br i1 %i.cwp, label %bb.xz, label %bb.xt

bb.xt:                                            ; preds = %bb.xs
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cug, i64 9 ; 2 uses
  %i.cwr = load i8, ptr %i.cwj, align 1, !tbaa !94 ; 2 uses
  %i.cws = sext i8 %i.cwr to i64
  %i.cwt = shl nsw i64 %i.cws, 56
  %i.cwu = and i64 %i.cwt, 9151314442816847872
  %i.cwv = or i64 %i.cwu, %i.cwo                  ; 2 uses
  %i.cww = icmp sgt i8 %i.cwr, -1
  br i1 %i.cww, label %bb.xz, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cug, i64 10
  %i.cwy = load i8, ptr %i.cwq, align 1, !tbaa !94 ; 2 uses
  %i.cwz = zext i8 %i.cwy to i64
  %i.cxa = shl i64 %i.cwz, 63
  %i.cxb = or i64 %i.cxa, %i.cwv
  %i.cxc = icmp sgt i8 %i.cwy, -1
  br i1 %i.cxc, label %bb.xz, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  %i.cxd = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cxd, ptr noundef nonnull @.str.77)
          to label %.invoke11638 unwind label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.cxe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cxd) #28
  br label %.body.i

.lr.ph4220:                                       ; preds = %.preheader1162, %bb.xx
  %indvars.iv7865 = phi i64 [ %indvars.iv.next7866, %bb.xx ], [ 0, %.preheader1162 ] ; 3 uses
  %.1.i.i.i376.i4218 = phi i64 [ %i.cxl, %bb.xx ], [ 0, %.preheader1162 ] ; 2 uses
  %.170.i.i.i375.i4217 = phi ptr [ %i.cxh, %bb.xx ], [ %i.cug, %.preheader1162 ] ; 2 uses
  %i.cxf = load i8, ptr %.170.i.i.i375.i4217, align 1, !tbaa !94 ; 3 uses
  %i.cxg = icmp slt i8 %i.cxf, 0
  %i.cxh = getelementptr inbounds nuw i8, ptr %.170.i.i.i375.i4217, i64 1 ; 3 uses
  br i1 %i.cxg, label %bb.xx, label %.critedge.i.i.i379.i

bb.xx:                                            ; preds = %.lr.ph4220
  %i.cxi = and i8 %i.cxf, 127
  %i.cxj = zext nneg i8 %i.cxi to i64
  %i.cxk = shl i64 %i.cxj, %indvars.iv7865
  %i.cxl = or i64 %i.cxk, %.1.i.i.i376.i4218
  %indvars.iv.next7866 = add nuw nsw i64 %indvars.iv7865, 7
  %.not.i.i.i378.i = icmp eq ptr %i.cxh, %i.cuk
  br i1 %.not.i.i.i378.i, label %.preheader1162._crit_edge, label %.lr.ph4220, !llvm.loop !46

.preheader1162._crit_edge:                        ; preds = %.preheader1162, %bb.xx
  %i.cxm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cxm, ptr noundef nonnull @.str.78)
          to label %.invoke11638 unwind label %bb.xy

bb.xy:                                            ; preds = %.preheader1162._crit_edge
  %i.cxn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cxm) #28
  br label %.body.i

.critedge.i.i.i379.i:                             ; preds = %.lr.ph4220
  %i.cxo = zext nneg i8 %i.cxf to i64
  %i.cxp = shl i64 %i.cxo, %indvars.iv7865
  %i.cxq = or i64 %i.cxp, %.1.i.i.i376.i4218
  br label %bb.xz

bb.xz:                                            ; preds = %.critedge.i.i.i379.i, %bb.xu, %bb.xt, %bb.xs, %bb.xr, %bb.xq, %bb.xp, %bb.xo, %bb.xn, %bb.xm
  %.271.i.i.i380.i = phi ptr [ %i.cxh, %.critedge.i.i.i379.i ], [ %i.cwx, %bb.xu ], [ %i.cut, %bb.xm ], [ %i.cva, %bb.xn ], [ %i.cvh, %bb.xo ], [ %i.cvo, %bb.xp ], [ %i.cvv, %bb.xq ], [ %i.cwc, %bb.xr ], [ %i.cwj, %bb.xs ], [ %i.cwq, %bb.xt ]
  %.2.i.i.i381.i = phi i64 [ %i.cxq, %.critedge.i.i.i379.i ], [ %i.cxb, %bb.xu ], [ %i.cuy, %bb.xm ], [ %i.cvf, %bb.xn ], [ %i.cvm, %bb.xo ], [ %i.cvt, %bb.xp ], [ %i.cwa, %bb.xq ], [ %i.cwh, %bb.xr ], [ %i.cwo, %bb.xs ], [ %i.cwv, %bb.xt ]
  %i.cxr = ptrtoint ptr %.271.i.i.i380.i to i64
  %i.cxs = sub i64 %i.cxr, %i.cuo
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i: ; preds = %bb.xz, %bb.xk
  %.0806 = phi i64 [ 1, %bb.xk ], [ %i.cxs, %bb.xz ] ; 2 uses
  %.072.i.i.i383.i = phi i64 [ %i.cun, %bb.xk ], [ %.2.i.i.i381.i, %bb.xz ] ; 7 uses
  %i.cxt = add i64 %.072.i.i.i383.i, %.0806       ; 6 uses
  %i.cxu = icmp ult i64 %i.cue, %i.cxt
  br i1 %i.cxu, label %bb.ya, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i, !prof !169

bb.ya:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i
  %i.cxv = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cxv, ptr noundef nonnull @.str.89)
          to label %.invoke11638 unwind label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.cxw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cxv) #28
  br label %.body.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i
  %i.cxx = load ptr, ptr %i.cuj, align 8, !tbaa !95 ; 2 uses
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cuj, i64 16 ; 2 uses
  %i.cxz = icmp eq ptr %i.cxx, %i.cxy
  br i1 %i.cxz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i
  %i.cya = load i64, ptr %i.cxy, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i346: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345
  %i.cyb = phi i64 [ %i.cya, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i ]
  %i.cyc = icmp ugt i64 %.072.i.i.i383.i, %i.cyb
  br i1 %i.cyc, label %bb.yc, label %.noexc115

bb.yc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i346
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cuj, i64 noundef %.072.i.i.i383.i)
          to label %.noexc349 unwind label %.loopexit.split-lp1148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc349:                                        ; preds = %bb.yc
  %.pre.i347 = load ptr, ptr %i.cuj, align 8, !tbaa !95
  br label %.noexc115

.noexc115:                                        ; preds = %.noexc349, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i346
  %i.cyd = phi ptr [ %.pre.i347, %.noexc349 ], [ %i.cxx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i346 ]
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cuj, i64 8
  store i64 %.072.i.i.i383.i, ptr %i.cye, align 8, !tbaa !93
  %i.cyf = getelementptr inbounds nuw i8, ptr %i.cyd, i64 %.072.i.i.i383.i
  store i8 0, ptr %i.cyf, align 1, !tbaa !94
  %i.cyg = load ptr, ptr %i.cuj, align 8, !tbaa !95
  %i.cyh = getelementptr inbounds nuw i8, ptr %i.cyg, i64 %.072.i.i.i383.i
  store i8 0, ptr %i.cyh, align 1, !tbaa !94
  %i.cyi = load ptr, ptr %i.cuj, align 8, !tbaa !95
  %i.cyj = load ptr, ptr %i.ac, align 8, !tbaa !439
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cyj, i64 %.0806
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cyi, ptr align 1 %i.cyk, i64 %.072.i.i.i383.i, i1 false)
  %i.cyl = load i64, ptr %11, align 8, !tbaa !438 ; 5 uses
  %i.cym = icmp ugt i64 %i.cxt, %i.cyl
  br i1 %i.cym, label %.invoke11636, label %.noexc116

.noexc116:                                        ; preds = %.noexc115
  %i.cyn = sub nuw i64 %i.cyl, %i.cxt             ; 3 uses
  %i.cyo = load ptr, ptr %i.ac, align 8, !tbaa !439 ; 2 uses
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cyo, i64 %i.cxt ; 14 uses
  store i64 %i.cyn, ptr %11, align 8, !tbaa !249
  store ptr %i.cyp, ptr %i.ac, align 8, !tbaa !363
  %i.cyq = icmp eq i64 %i.cyl, %i.cxt
  br i1 %i.cyq, label %.critedge.i329.i, label %bb.yd

bb.yd:                                            ; preds = %.noexc116
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cyo, i64 %i.cyl
  %i.cys = load i8, ptr %i.cyp, align 1, !tbaa !94 ; 3 uses
  %i.cyt = icmp sgt i8 %i.cys, -1
  br i1 %i.cyt, label %bb.ye, label %bb.yf

bb.ye:                                            ; preds = %bb.yd
  %i.cyu = zext nneg i8 %i.cys to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i393.i

bb.yf:                                            ; preds = %bb.yd
  %i.cyv = ptrtoint ptr %i.cyp to i64
  %i.cyw = icmp ugt i64 %i.cyn, 9
  br i1 %i.cyw, label %bb.yg, label %.lr.ph4226, !prof !257

bb.yg:                                            ; preds = %bb.yf
  %i.cyx = and i8 %i.cys, 127
  %i.cyy = zext nneg i8 %i.cyx to i64
  %i.cyz = getelementptr inbounds nuw i8, ptr %i.cyp, i64 1
  %i.cza = getelementptr inbounds nuw i8, ptr %i.cyp, i64 2 ; 2 uses
  %i.czb = load i8, ptr %i.cyz, align 1, !tbaa !94 ; 2 uses
  %i.czc = sext i8 %i.czb to i64
  %i.czd = shl nsw i64 %i.czc, 7
  %i.cze = and i64 %i.czd, 16256
  %i.czf = or disjoint i64 %i.cze, %i.cyy         ; 2 uses
  %i.czg = icmp sgt i8 %i.czb, -1
  br i1 %i.czg, label %bb.yt, label %bb.yh

bb.yh:                                            ; preds = %bb.yg
  %i.czh = getelementptr inbounds nuw i8, ptr %i.cyp, i64 3 ; 2 uses
  %i.czi = load i8, ptr %i.cza, align 1, !tbaa !94 ; 2 uses
  %i.czj = sext i8 %i.czi to i64
  %i.czk = shl nsw i64 %i.czj, 14
  %i.czl = and i64 %i.czk, 2080768
  %i.czm = or disjoint i64 %i.czl, %i.czf         ; 2 uses
  %i.czn = icmp sgt i8 %i.czi, -1
  br i1 %i.czn, label %bb.yt, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.czo = getelementptr inbounds nuw i8, ptr %i.cyp, i64 4 ; 2 uses
  %i.czp = load i8, ptr %i.czh, align 1, !tbaa !94 ; 2 uses
  %i.czq = sext i8 %i.czp to i64
  %i.czr = shl nsw i64 %i.czq, 21
  %i.czs = and i64 %i.czr, 266338304
  %i.czt = or disjoint i64 %i.czs, %i.czm         ; 2 uses
  %i.czu = icmp sgt i8 %i.czp, -1
  br i1 %i.czu, label %bb.yt, label %bb.yj

bb.yj:                                            ; preds = %bb.yi
  %i.czv = getelementptr inbounds nuw i8, ptr %i.cyp, i64 5 ; 2 uses
  %i.czw = load i8, ptr %i.czo, align 1, !tbaa !94 ; 2 uses
  %i.czx = sext i8 %i.czw to i64
  %i.czy = shl nsw i64 %i.czx, 28
  %i.czz = and i64 %i.czy, 34091302912
  %i.daa = or disjoint i64 %i.czz, %i.czt         ; 6 uses
  %i.dab = icmp sgt i8 %i.czw, -1
  br i1 %i.dab, label %bb.yt, label %bb.yk

bb.yk:                                            ; preds = %bb.yj
  %i.dac = getelementptr inbounds nuw i8, ptr %i.cyp, i64 6 ; 2 uses
  %i.dad = load i8, ptr %i.czv, align 1, !tbaa !94
  %i.dae = icmp sgt i8 %i.dad, -1
  br i1 %i.dae, label %bb.yt, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.daf = getelementptr inbounds nuw i8, ptr %i.cyp, i64 7 ; 2 uses
  %i.dag = load i8, ptr %i.dac, align 1, !tbaa !94
  %i.dah = icmp sgt i8 %i.dag, -1
  br i1 %i.dah, label %bb.yt, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.dai = getelementptr inbounds nuw i8, ptr %i.cyp, i64 8 ; 2 uses
  %i.daj = load i8, ptr %i.daf, align 1, !tbaa !94
  %i.dak = icmp sgt i8 %i.daj, -1
  br i1 %i.dak, label %bb.yt, label %bb.yn
end_hunk_25
begin_hunk_26_@_ZN6iguana9base_implIN9pb_sample7personsELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.oc = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.oc, ptr noundef nonnull @.str.77)
          to label %.invoke1881 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.oc) #28
  br label %.body.i.i

.lr.ph751:                                        ; preds = %.preheader234, %bb.de
  %indvars.iv1304 = phi i64 [ %indvars.iv.next1305, %bb.de ], [ 0, %.preheader234 ] ; 3 uses
  %.1.i.i23.i.i749 = phi i64 [ %i.ok, %bb.de ], [ 0, %.preheader234 ] ; 2 uses
  %.170.i.i22.i.i748 = phi ptr [ %i.og, %bb.de ], [ %i.ma, %.preheader234 ] ; 2 uses
  %i.oe = load i8, ptr %.170.i.i22.i.i748, align 1, !tbaa !94 ; 3 uses
  %i.of = icmp slt i8 %i.oe, 0
  %i.og = getelementptr inbounds nuw i8, ptr %.170.i.i22.i.i748, i64 1 ; 3 uses
  br i1 %i.of, label %bb.de, label %.critedge.i.i26.i.i

bb.de:                                            ; preds = %.lr.ph751
  %i.oh = and i8 %i.oe, 127
  %i.oi = zext nneg i8 %i.oh to i64
  %i.oj = shl i64 %i.oi, %indvars.iv1304
  %i.ok = or i64 %i.oj, %.1.i.i23.i.i749
  %indvars.iv.next1305 = add nuw nsw i64 %indvars.iv1304, 7
  %.not.i.i25.i.i = icmp eq ptr %i.og, %i.jh
  br i1 %.not.i.i25.i.i, label %.preheader234._crit_edge, label %.lr.ph751, !llvm.loop !46

.preheader234._crit_edge:                         ; preds = %.preheader234, %bb.de
  %i.ol = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ol, ptr noundef nonnull @.str.78)
          to label %.invoke1881 unwind label %bb.df

bb.df:                                            ; preds = %.preheader234._crit_edge
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ol) #28
  br label %.body.i.i

.critedge.i.i26.i.i:                              ; preds = %.lr.ph751
  %i.on = zext nneg i8 %i.oe to i64
  %i.oo = shl i64 %i.on, %indvars.iv1304
  %i.op = or i64 %i.oo, %.1.i.i23.i.i749
  br label %bb.dg

bb.dg:                                            ; preds = %.critedge.i.i26.i.i, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %.271.i.i27.i.i = phi ptr [ %i.og, %.critedge.i.i26.i.i ], [ %i.nz, %bb.db ], [ %i.ml, %bb.ct ], [ %i.ms, %bb.cu ], [ %i.mz, %bb.cv ], [ %i.ng, %bb.cw ], [ %i.nn, %bb.cx ], [ %i.nq, %bb.cy ], [ %i.nt, %bb.cz ], [ %i.nw, %bb.da ]
  %.2.i.i28.i.i = phi i64 [ %i.op, %.critedge.i.i26.i.i ], [ %i.nl, %bb.db ], [ %i.mq, %bb.ct ], [ %i.mx, %bb.cu ], [ %i.ne, %bb.cv ], [ %i.nl, %bb.cw ], [ %i.nl, %bb.cx ], [ %i.nl, %bb.cy ], [ %i.nl, %bb.cz ], [ %i.nl, %bb.da ]
  %i.oq = ptrtoint ptr %.271.i.i27.i.i to i64
  %i.or = sub i64 %i.oq, %i.mf
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i.i: ; preds = %bb.dg, %bb.cr
  %.10 = phi i64 [ 1, %bb.cr ], [ %i.or, %bb.dg ]
  %.072.i.i30.i.i = phi i64 [ %i.me, %bb.cr ], [ %.2.i.i28.i.i, %bb.dg ]
  %i.os = trunc i64 %.072.i.i30.i.i to i32        ; 2 uses
  %i.ot = and i32 %i.os, 7
  %i.ou = lshr i32 %i.os, 3                       ; 2 uses
  store i32 %i.ou, ptr %i.a, align 4, !tbaa !164
  br label %bb.dh

bb.dh:                                            ; preds = %bb.bv, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i.i
  %.pr204 = phi i32 [ %i.iy, %bb.bv ], [ %i.ou, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i.i ] ; 2 uses
  %.1175.ph = phi i64 [ %.0174, %bb.bv ], [ %.10, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i.i ] ; 6 uses
  %.0173.ph = phi i32 [ %i.it, %bb.bv ], [ %i.ot, %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i29.i.i ] ; 2 uses
  %.sroa.02.0.copyload.i32.i.i194 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6personEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 48), align 8, !tbaa !249
  %.not.i33.i.i = icmp eq i32 %.pr204, 2
  br i1 %.not.i33.i.i, label %bb.di, label %thread-pre-split203

bb.di:                                            ; preds = %bb.dh
  %i.ov = load i64, ptr %5, align 8, !tbaa !438   ; 5 uses
  %i.ow = icmp ugt i64 %.1175.ph, %i.ov
  br i1 %i.ow, label %.invoke, label %.noexc48.i

.noexc48.i:                                       ; preds = %bb.di
  %i.ox = sub nuw i64 %i.ov, %.1175.ph            ; 3 uses
  %i.oy = load ptr, ptr %i.co, align 8, !tbaa !439 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.1175.ph ; 14 uses
  store i64 %i.ox, ptr %5, align 8, !tbaa !249
  store ptr %i.oz, ptr %i.co, align 8, !tbaa !363
  %.not4.i35.i.i = icmp eq i32 %.0173.ph, 2
  br i1 %.not4.i35.i.i, label %bb.dl, label %bb.dj, !prof !257

bb.dj:                                            ; preds = %.noexc48.i
  %i.pa = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull @.str.79)
          to label %.invoke1881 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pa) #28
  br label %.body.i.i

bb.dl:                                            ; preds = %.noexc48.i
  %i.pc = getelementptr inbounds nuw i8, ptr %7, i64 %.sroa.02.0.copyload.i32.i.i194 ; 7 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ov
  %i.pe = load i8, ptr %i.oz, align 1, !tbaa !94  ; 3 uses
  %i.pf = icmp sgt i8 %i.pe, -1
  br i1 %i.pf, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.pg = zext nneg i8 %i.pe to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.ph = ptrtoint ptr %i.oz to i64
  %i.pi = icmp ugt i64 %i.ox, 9
  br i1 %i.pi, label %bb.do, label %.preheader233, !prof !257

.preheader233:                                    ; preds = %bb.dn
  %.not.i.i88.i.i759 = icmp samesign eq i64 %.1175.ph, %i.ov
  br i1 %.not.i.i88.i.i759, label %.preheader233._crit_edge, label %.lr.ph763

bb.do:                                            ; preds = %bb.dn
  %i.pj = and i8 %i.pe, 127
  %i.pk = zext nneg i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oz, i64 2 ; 2 uses
  %i.pn = load i8, ptr %i.pl, align 1, !tbaa !94  ; 2 uses
  %i.po = sext i8 %i.pn to i64
  %i.pp = shl nsw i64 %i.po, 7
  %i.pq = and i64 %i.pp, 16256
  %i.pr = or disjoint i64 %i.pq, %i.pk            ; 2 uses
  %i.ps = icmp sgt i8 %i.pn, -1
  br i1 %i.ps, label %bb.eb, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.pt = getelementptr inbounds nuw i8, ptr %i.oz, i64 3 ; 2 uses
  %i.pu = load i8, ptr %i.pm, align 1, !tbaa !94  ; 2 uses
  %i.pv = sext i8 %i.pu to i64
  %i.pw = shl nsw i64 %i.pv, 14
  %i.px = and i64 %i.pw, 2080768
  %i.py = or disjoint i64 %i.px, %i.pr            ; 2 uses
  %i.pz = icmp sgt i8 %i.pu, -1
  br i1 %i.pz, label %bb.eb, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oz, i64 4 ; 2 uses
  %i.qb = load i8, ptr %i.pt, align 1, !tbaa !94  ; 2 uses
  %i.qc = sext i8 %i.qb to i64
  %i.qd = shl nsw i64 %i.qc, 21
  %i.qe = and i64 %i.qd, 266338304
  %i.qf = or disjoint i64 %i.qe, %i.py            ; 2 uses
  %i.qg = icmp sgt i8 %i.qb, -1
  br i1 %i.qg, label %bb.eb, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.qh = getelementptr inbounds nuw i8, ptr %i.oz, i64 5 ; 2 uses
  %i.qi = load i8, ptr %i.qa, align 1, !tbaa !94  ; 2 uses
  %i.qj = sext i8 %i.qi to i64
  %i.qk = shl nsw i64 %i.qj, 28
  %i.ql = and i64 %i.qk, 34091302912
  %i.qm = or disjoint i64 %i.ql, %i.qf            ; 2 uses
  %i.qn = icmp sgt i8 %i.qi, -1
  br i1 %i.qn, label %bb.eb, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qo = getelementptr inbounds nuw i8, ptr %i.oz, i64 6 ; 2 uses
  %i.qp = load i8, ptr %i.qh, align 1, !tbaa !94  ; 2 uses
  %i.qq = sext i8 %i.qp to i64
  %i.qr = shl nsw i64 %i.qq, 35
  %i.qs = and i64 %i.qr, 4363686772736
  %i.qt = or disjoint i64 %i.qs, %i.qm            ; 2 uses
  %i.qu = icmp sgt i8 %i.qp, -1
  br i1 %i.qu, label %bb.eb, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qv = getelementptr inbounds nuw i8, ptr %i.oz, i64 7 ; 2 uses
  %i.qw = load i8, ptr %i.qo, align 1, !tbaa !94  ; 2 uses
  %i.qx = sext i8 %i.qw to i64
  %i.qy = shl nsw i64 %i.qx, 42
  %i.qz = and i64 %i.qy, 558551906910208
  %i.ra = or i64 %i.qz, %i.qt                     ; 2 uses
  %i.rb = icmp sgt i8 %i.qw, -1
  br i1 %i.rb, label %bb.eb, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.rc = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 2 uses
  %i.rd = load i8, ptr %i.qv, align 1, !tbaa !94  ; 2 uses
  %i.re = sext i8 %i.rd to i64
  %i.rf = shl nsw i64 %i.re, 49
  %i.rg = and i64 %i.rf, 71494644084506624
  %i.rh = or i64 %i.rg, %i.ra                     ; 2 uses
  %i.ri = icmp sgt i8 %i.rd, -1
  br i1 %i.ri, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.rj = getelementptr inbounds nuw i8, ptr %i.oz, i64 9 ; 2 uses
  %i.rk = load i8, ptr %i.rc, align 1, !tbaa !94  ; 2 uses
  %i.rl = sext i8 %i.rk to i64
  %i.rm = shl nsw i64 %i.rl, 56
  %i.rn = and i64 %i.rm, 9151314442816847872
  %i.ro = or i64 %i.rn, %i.rh                     ; 2 uses
  %i.rp = icmp sgt i8 %i.rk, -1
  br i1 %i.rp, label %bb.eb, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.rq = getelementptr inbounds nuw i8, ptr %i.oz, i64 10
  %i.rr = load i8, ptr %i.rj, align 1, !tbaa !94  ; 2 uses
  %i.rs = zext i8 %i.rr to i64
  %i.rt = shl i64 %i.rs, 63
  %i.ru = or i64 %i.rt, %i.ro
  %i.rv = icmp sgt i8 %i.rr, -1
  br i1 %i.rv, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.rw, ptr noundef nonnull @.str.77)
          to label %.invoke1881 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.rw) #28
  br label %.body.i.i

.lr.ph763:                                        ; preds = %.preheader233, %bb.dz
  %indvars.iv1307 = phi i64 [ %indvars.iv.next1308, %bb.dz ], [ 0, %.preheader233 ] ; 3 uses
  %.1.i.i86.i.i761 = phi i64 [ %i.se, %bb.dz ], [ 0, %.preheader233 ] ; 2 uses
  %.170.i.i85.i.i760 = phi ptr [ %i.sa, %bb.dz ], [ %i.oz, %.preheader233 ] ; 2 uses
  %i.ry = load i8, ptr %.170.i.i85.i.i760, align 1, !tbaa !94 ; 3 uses
  %i.rz = icmp slt i8 %i.ry, 0
  %i.sa = getelementptr inbounds nuw i8, ptr %.170.i.i85.i.i760, i64 1 ; 3 uses
  br i1 %i.rz, label %bb.dz, label %.critedge.i.i89.i.i

bb.dz:                                            ; preds = %.lr.ph763
  %i.sb = and i8 %i.ry, 127
  %i.sc = zext nneg i8 %i.sb to i64
  %i.sd = shl i64 %i.sc, %indvars.iv1307
  %i.se = or i64 %i.sd, %.1.i.i86.i.i761
  %indvars.iv.next1308 = add nuw nsw i64 %indvars.iv1307, 7
  %.not.i.i88.i.i = icmp eq ptr %i.sa, %i.pd
  br i1 %.not.i.i88.i.i, label %.preheader233._crit_edge, label %.lr.ph763, !llvm.loop !46

.preheader233._crit_edge:                         ; preds = %.preheader233, %bb.dz
  %i.sf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.sf, ptr noundef nonnull @.str.78)
          to label %.invoke1881 unwind label %bb.ea

bb.ea:                                            ; preds = %.preheader233._crit_edge
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sf) #28
  br label %.body.i.i

.critedge.i.i89.i.i:                              ; preds = %.lr.ph763
  %i.sh = zext nneg i8 %i.ry to i64
  %i.si = shl i64 %i.sh, %indvars.iv1307
  %i.sj = or i64 %i.si, %.1.i.i86.i.i761
  br label %bb.eb

bb.eb:                                            ; preds = %.critedge.i.i89.i.i, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do
  %.271.i.i90.i.i = phi ptr [ %i.sa, %.critedge.i.i89.i.i ], [ %i.rq, %bb.dw ], [ %i.pm, %bb.do ], [ %i.pt, %bb.dp ], [ %i.qa, %bb.dq ], [ %i.qh, %bb.dr ], [ %i.qo, %bb.ds ], [ %i.qv, %bb.dt ], [ %i.rc, %bb.du ], [ %i.rj, %bb.dv ]
  %.2.i.i91.i.i = phi i64 [ %i.sj, %.critedge.i.i89.i.i ], [ %i.ru, %bb.dw ], [ %i.pr, %bb.do ], [ %i.py, %bb.dp ], [ %i.qf, %bb.dq ], [ %i.qm, %bb.dr ], [ %i.qt, %bb.ds ], [ %i.ra, %bb.dt ], [ %i.rh, %bb.du ], [ %i.ro, %bb.dv ]
  %i.sk = ptrtoint ptr %.271.i.i90.i.i to i64
  %i.sl = sub i64 %i.sk, %i.ph
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i.i: ; preds = %bb.eb, %bb.dm
  %.0152 = phi i64 [ 1, %bb.dm ], [ %i.sl, %bb.eb ] ; 2 uses
  %.072.i.i93.i.i = phi i64 [ %i.pg, %bb.dm ], [ %.2.i.i91.i.i, %bb.eb ] ; 7 uses
  %i.sm = add i64 %.072.i.i93.i.i, %.0152         ; 6 uses
  %i.sn = icmp ult i64 %i.ox, %i.sm
  br i1 %i.sn, label %bb.ec, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, !prof !169

bb.ec:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i.i
  %i.so = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.so, ptr noundef nonnull @.str.89)
          to label %.invoke1881 unwind label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.so) #28
  br label %.body.i.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i92.i.i
  %i.sq = load ptr, ptr %i.pc, align 8, !tbaa !95 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i
  %i.st = load i64, ptr %i.sr, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.su = phi i64 [ %i.st, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i ]
  %i.sv = icmp ugt i64 %.072.i.i93.i.i, %i.su
  br i1 %i.sv, label %bb.ee, label %.noexc53.i

bb.ee:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.pc, i64 noundef %.072.i.i93.i.i)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %bb.ee
  %.pre.i = load ptr, ptr %i.pc, align 8, !tbaa !95
  br label %.noexc53.i

.noexc53.i:                                       ; preds = %.noexc24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.sw = phi ptr [ %.pre.i, %.noexc24 ], [ %i.sq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.sx = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i64 %.072.i.i93.i.i, ptr %i.sx, align 8, !tbaa !93
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.072.i.i93.i.i
  store i8 0, ptr %i.sy, align 1, !tbaa !94
  %i.sz = load ptr, ptr %i.pc, align 8, !tbaa !95
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 %.072.i.i93.i.i
  store i8 0, ptr %i.ta, align 1, !tbaa !94
  %i.tb = load ptr, ptr %i.pc, align 8, !tbaa !95
  %i.tc = load ptr, ptr %i.co, align 8, !tbaa !439
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 %.0152
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tb, ptr align 1 %i.td, i64 %.072.i.i93.i.i, i1 false)
  %i.te = load i64, ptr %5, align 8, !tbaa !438   ; 5 uses
  %i.tf = icmp ugt i64 %i.sm, %i.te
  br i1 %i.tf, label %.invoke, label %.noexc54.i

.noexc54.i:                                       ; preds = %.noexc53.i
  %i.tg = sub nuw i64 %i.te, %i.sm                ; 2 uses
  %i.th = load ptr, ptr %i.co, align 8, !tbaa !439 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.sm ; 14 uses
  store i64 %i.tg, ptr %5, align 8, !tbaa !249
  store ptr %i.ti, ptr %i.co, align 8, !tbaa !363
  %i.tj = icmp eq i64 %i.te, %i.sm
  br i1 %i.tj, label %.critedge.i18.i.i, label %bb.ef

bb.ef:                                            ; preds = %.noexc54.i
  %i.tk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.te
  %i.tl = load i8, ptr %i.ti, align 1, !tbaa !94  ; 3 uses
  %i.tm = icmp sgt i8 %i.tl, -1
  br i1 %i.tm, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.tn = zext nneg i8 %i.tl to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i43.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.to = ptrtoint ptr %i.ti to i64
  %i.tp = icmp ugt i64 %i.tg, 9
  br i1 %i.tp, label %bb.ei, label %.lr.ph775, !prof !257

bb.ei:                                            ; preds = %bb.eh
  %i.tq = and i8 %i.tl, 127
  %i.tr = zext nneg i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ti, i64 2 ; 2 uses
  %i.tu = load i8, ptr %i.ts, align 1, !tbaa !94  ; 2 uses
  %i.tv = sext i8 %i.tu to i64
  %i.tw = shl nsw i64 %i.tv, 7
  %i.tx = and i64 %i.tw, 16256
  %i.ty = or disjoint i64 %i.tx, %i.tr            ; 2 uses
  %i.tz = icmp sgt i8 %i.tu, -1
  br i1 %i.tz, label %bb.ev, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ti, i64 3 ; 2 uses
  %i.ub = load i8, ptr %i.tt, align 1, !tbaa !94  ; 2 uses
  %i.uc = sext i8 %i.ub to i64
  %i.ud = shl nsw i64 %i.uc, 14
  %i.ue = and i64 %i.ud, 2080768
  %i.uf = or disjoint i64 %i.ue, %i.ty            ; 2 uses
  %i.ug = icmp sgt i8 %i.ub, -1
  br i1 %i.ug, label %bb.ev, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ti, i64 4 ; 2 uses
  %i.ui = load i8, ptr %i.ua, align 1, !tbaa !94  ; 2 uses
  %i.uj = sext i8 %i.ui to i64
  %i.uk = shl nsw i64 %i.uj, 21
  %i.ul = and i64 %i.uk, 266338304
  %i.um = or disjoint i64 %i.ul, %i.uf            ; 2 uses
  %i.un = icmp sgt i8 %i.ui, -1
  br i1 %i.un, label %bb.ev, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.uo = getelementptr inbounds nuw i8, ptr %i.ti, i64 5 ; 2 uses
  %i.up = load i8, ptr %i.uh, align 1, !tbaa !94  ; 2 uses
  %i.uq = sext i8 %i.up to i64
  %i.ur = shl nsw i64 %i.uq, 28
  %i.us = and i64 %i.ur, 34091302912
  %i.ut = or disjoint i64 %i.us, %i.um            ; 6 uses
  %i.uu = icmp sgt i8 %i.up, -1
  br i1 %i.uu, label %bb.ev, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ti, i64 6 ; 2 uses
  %i.uw = load i8, ptr %i.uo, align 1, !tbaa !94
  %i.ux = icmp sgt i8 %i.uw, -1
  br i1 %i.ux, label %bb.ev, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ti, i64 7 ; 2 uses
  %i.uz = load i8, ptr %i.uv, align 1, !tbaa !94
  %i.va = icmp sgt i8 %i.uz, -1
  br i1 %i.va, label %bb.ev, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.vc = load i8, ptr %i.uy, align 1, !tbaa !94
  %i.vd = icmp sgt i8 %i.vc, -1
  br i1 %i.vd, label %bb.ev, label %bb.ep
end_hunk_26
begin_hunk_27_@_ZN6iguana9base_implIN9pb_sample8MonstersELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.ary = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ary, ptr noundef nonnull @.str.77)
          to label %.invoke11648 unwind label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.arz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ary) #28
  br label %.body.i.i

.lr.ph3968:                                       ; preds = %.preheader1069, %bb.ko
  %indvars.iv7768 = phi i64 [ %indvars.iv.next7769, %bb.ko ], [ 0, %.preheader1069 ] ; 3 uses
  %.1.i.i61.i.i3966 = phi i64 [ %i.asg, %bb.ko ], [ 0, %.preheader1069 ] ; 2 uses
  %.170.i.i60.i.i3965 = phi ptr [ %i.asc, %bb.ko ], [ %i.apw, %.preheader1069 ] ; 2 uses
  %i.asa = load i8, ptr %.170.i.i60.i.i3965, align 1, !tbaa !94 ; 3 uses
  %i.asb = icmp slt i8 %i.asa, 0
  %i.asc = getelementptr inbounds nuw i8, ptr %.170.i.i60.i.i3965, i64 1 ; 3 uses
  br i1 %i.asb, label %bb.ko, label %.critedge.i.i64.i.i

bb.ko:                                            ; preds = %.lr.ph3968
  %i.asd = and i8 %i.asa, 127
  %i.ase = zext nneg i8 %i.asd to i64
  %i.asf = shl i64 %i.ase, %indvars.iv7768
  %i.asg = or i64 %i.asf, %.1.i.i61.i.i3966
  %indvars.iv.next7769 = add nuw nsw i64 %indvars.iv7768, 7
  %.not.i.i63.i.i = icmp eq ptr %i.asc, %i.and
  br i1 %.not.i.i63.i.i, label %.preheader1069._crit_edge, label %.lr.ph3968, !llvm.loop !46

.preheader1069._crit_edge:                        ; preds = %.preheader1069, %bb.ko
  %i.ash = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ash, ptr noundef nonnull @.str.78)
          to label %.invoke11648 unwind label %bb.kp

bb.kp:                                            ; preds = %.preheader1069._crit_edge
  %i.asi = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ash) #28
  br label %.body.i.i

.critedge.i.i64.i.i:                              ; preds = %.lr.ph3968
  %i.asj = zext nneg i8 %i.asa to i64
  %i.ask = shl i64 %i.asj, %indvars.iv7768
  %i.asl = or i64 %i.ask, %.1.i.i61.i.i3966
  br label %bb.kq

bb.kq:                                            ; preds = %.critedge.i.i64.i.i, %bb.kl, %bb.kk, %bb.kj, %bb.ki, %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd
  %.271.i.i65.i.i = phi ptr [ %i.asc, %.critedge.i.i64.i.i ], [ %i.arv, %bb.kl ], [ %i.aqh, %bb.kd ], [ %i.aqo, %bb.ke ], [ %i.aqv, %bb.kf ], [ %i.arc, %bb.kg ], [ %i.arj, %bb.kh ], [ %i.arm, %bb.ki ], [ %i.arp, %bb.kj ], [ %i.ars, %bb.kk ]
  %.2.i.i66.i.i = phi i64 [ %i.asl, %.critedge.i.i64.i.i ], [ %i.arh, %bb.kl ], [ %i.aqm, %bb.kd ], [ %i.aqt, %bb.ke ], [ %i.ara, %bb.kf ], [ %i.arh, %bb.kg ], [ %i.arh, %bb.kh ], [ %i.arh, %bb.ki ], [ %i.arh, %bb.kj ], [ %i.arh, %bb.kk ]
  %i.asm = ptrtoint ptr %.271.i.i65.i.i to i64
  %i.asn = sub i64 %i.asm, %i.aqb
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i: ; preds = %bb.kb, %bb.kq
  %.18 = phi i64 [ 1, %bb.kb ], [ %i.asn, %bb.kq ]
  %.072.i.i68.i.i = phi i64 [ %i.aqa, %bb.kb ], [ %.2.i.i66.i.i, %bb.kq ]
  %i.aso = trunc i64 %.072.i.i68.i.i to i32       ; 2 uses
  %i.asp = and i32 %i.aso, 7
  %i.asq = lshr i32 %i.aso, 3                     ; 2 uses
  store i32 %i.asq, ptr %i.e, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i.thread882

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i.thread882: ; preds = %thread-pre-split876, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i
  %.pr905 = phi i32 [ %i.asq, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i ], [ %.pr891, %thread-pre-split876 ] ; 2 uses
  %.2812889 = phi i32 [ %i.asp, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i ], [ %.1811, %thread-pre-split876 ] ; 2 uses
  %.3822888 = phi i64 [ %.18, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i ], [ %.2821, %thread-pre-split876 ] ; 6 uses
  %.sroa.02.0.copyload.i71.i.i890 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 120), align 8, !tbaa !249
  %.not.i72.i.i = icmp eq i32 %.pr905, 4
  br i1 %.not.i72.i.i, label %bb.kr, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i.thread896

bb.kr:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i.thread882
  %i.asr = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.ass = icmp ugt i64 %.3822888, %i.asr
  br i1 %i.ass, label %.invoke11646, label %.noexc93.i

.noexc93.i:                                       ; preds = %bb.kr
  %i.ast = sub nuw i64 %i.asr, %.3822888          ; 3 uses
  %i.asu = load ptr, ptr %i.cn, align 8, !tbaa !439 ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 %.3822888 ; 14 uses
  store i64 %i.ast, ptr %17, align 8, !tbaa !249
  store ptr %i.asv, ptr %i.cn, align 8, !tbaa !363
  %.not4.i74.i.i = icmp eq i32 %.2812889, 2
  br i1 %.not4.i74.i.i, label %bb.ku, label %bb.ks, !prof !257

bb.ks:                                            ; preds = %.noexc93.i
  %i.asw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.asw, ptr noundef nonnull @.str.79)
          to label %.invoke11648 unwind label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.asx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.asw) #28
  br label %.body.i.i

bb.ku:                                            ; preds = %.noexc93.i
  %i.asy = getelementptr inbounds nuw i8, ptr %19, i64 %.sroa.02.0.copyload.i71.i.i890 ; 7 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asu, i64 %i.asr
  %i.ata = load i8, ptr %i.asv, align 1, !tbaa !94 ; 3 uses
  %i.atb = icmp sgt i8 %i.ata, -1
  br i1 %i.atb, label %bb.kv, label %bb.kw

bb.kv:                                            ; preds = %bb.ku
  %i.atc = zext nneg i8 %i.ata to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i.i

bb.kw:                                            ; preds = %bb.ku
  %i.atd = ptrtoint ptr %i.asv to i64
  %i.ate = icmp ugt i64 %i.ast, 9
  br i1 %i.ate, label %bb.kx, label %.preheader1068, !prof !257

.preheader1068:                                   ; preds = %bb.kw
  %.not.i.i.i78.i.i3970 = icmp samesign eq i64 %.3822888, %i.asr
  br i1 %.not.i.i.i78.i.i3970, label %.preheader1068._crit_edge, label %.lr.ph3974

bb.kx:                                            ; preds = %bb.kw
  %i.atf = and i8 %i.ata, 127
  %i.atg = zext nneg i8 %i.atf to i64
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asv, i64 1
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asv, i64 2 ; 2 uses
  %i.atj = load i8, ptr %i.ath, align 1, !tbaa !94 ; 2 uses
  %i.atk = sext i8 %i.atj to i64
  %i.atl = shl nsw i64 %i.atk, 7
  %i.atm = and i64 %i.atl, 16256
  %i.atn = or disjoint i64 %i.atm, %i.atg         ; 2 uses
  %i.ato = icmp sgt i8 %i.atj, -1
  br i1 %i.ato, label %bb.lk, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.atp = getelementptr inbounds nuw i8, ptr %i.asv, i64 3 ; 2 uses
  %i.atq = load i8, ptr %i.ati, align 1, !tbaa !94 ; 2 uses
  %i.atr = sext i8 %i.atq to i64
  %i.ats = shl nsw i64 %i.atr, 14
  %i.att = and i64 %i.ats, 2080768
  %i.atu = or disjoint i64 %i.att, %i.atn         ; 2 uses
  %i.atv = icmp sgt i8 %i.atq, -1
  br i1 %i.atv, label %bb.lk, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.atw = getelementptr inbounds nuw i8, ptr %i.asv, i64 4 ; 2 uses
  %i.atx = load i8, ptr %i.atp, align 1, !tbaa !94 ; 2 uses
  %i.aty = sext i8 %i.atx to i64
  %i.atz = shl nsw i64 %i.aty, 21
  %i.aua = and i64 %i.atz, 266338304
  %i.aub = or disjoint i64 %i.aua, %i.atu         ; 2 uses
  %i.auc = icmp sgt i8 %i.atx, -1
  br i1 %i.auc, label %bb.lk, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aud = getelementptr inbounds nuw i8, ptr %i.asv, i64 5 ; 2 uses
  %i.aue = load i8, ptr %i.atw, align 1, !tbaa !94 ; 2 uses
  %i.auf = sext i8 %i.aue to i64
  %i.aug = shl nsw i64 %i.auf, 28
  %i.auh = and i64 %i.aug, 34091302912
  %i.aui = or disjoint i64 %i.auh, %i.aub         ; 2 uses
  %i.auj = icmp sgt i8 %i.aue, -1
  br i1 %i.auj, label %bb.lk, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.auk = getelementptr inbounds nuw i8, ptr %i.asv, i64 6 ; 2 uses
  %i.aul = load i8, ptr %i.aud, align 1, !tbaa !94 ; 2 uses
  %i.aum = sext i8 %i.aul to i64
  %i.aun = shl nsw i64 %i.aum, 35
  %i.auo = and i64 %i.aun, 4363686772736
  %i.aup = or disjoint i64 %i.auo, %i.aui         ; 2 uses
  %i.auq = icmp sgt i8 %i.aul, -1
  br i1 %i.auq, label %bb.lk, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.aur = getelementptr inbounds nuw i8, ptr %i.asv, i64 7 ; 2 uses
  %i.aus = load i8, ptr %i.auk, align 1, !tbaa !94 ; 2 uses
  %i.aut = sext i8 %i.aus to i64
  %i.auu = shl nsw i64 %i.aut, 42
  %i.auv = and i64 %i.auu, 558551906910208
  %i.auw = or i64 %i.auv, %i.aup                  ; 2 uses
  %i.aux = icmp sgt i8 %i.aus, -1
  br i1 %i.aux, label %bb.lk, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.auy = getelementptr inbounds nuw i8, ptr %i.asv, i64 8 ; 2 uses
  %i.auz = load i8, ptr %i.aur, align 1, !tbaa !94 ; 2 uses
  %i.ava = sext i8 %i.auz to i64
  %i.avb = shl nsw i64 %i.ava, 49
  %i.avc = and i64 %i.avb, 71494644084506624
  %i.avd = or i64 %i.avc, %i.auw                  ; 2 uses
  %i.ave = icmp sgt i8 %i.auz, -1
  br i1 %i.ave, label %bb.lk, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.avf = getelementptr inbounds nuw i8, ptr %i.asv, i64 9 ; 2 uses
  %i.avg = load i8, ptr %i.auy, align 1, !tbaa !94 ; 2 uses
  %i.avh = sext i8 %i.avg to i64
  %i.avi = shl nsw i64 %i.avh, 56
  %i.avj = and i64 %i.avi, 9151314442816847872
  %i.avk = or i64 %i.avj, %i.avd                  ; 2 uses
  %i.avl = icmp sgt i8 %i.avg, -1
  br i1 %i.avl, label %bb.lk, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.avm = getelementptr inbounds nuw i8, ptr %i.asv, i64 10
  %i.avn = load i8, ptr %i.avf, align 1, !tbaa !94 ; 2 uses
  %i.avo = zext i8 %i.avn to i64
  %i.avp = shl i64 %i.avo, 63
  %i.avq = or i64 %i.avp, %i.avk
  %i.avr = icmp sgt i8 %i.avn, -1
  br i1 %i.avr, label %bb.lk, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  %i.avs = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.avs, ptr noundef nonnull @.str.77)
          to label %.invoke11648 unwind label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.avt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.avs) #28
  br label %.body.i.i

.lr.ph3974:                                       ; preds = %.preheader1068, %bb.li
  %indvars.iv7771 = phi i64 [ %indvars.iv.next7772, %bb.li ], [ 0, %.preheader1068 ] ; 3 uses
  %.1.i.i.i76.i.i3972 = phi i64 [ %i.awa, %bb.li ], [ 0, %.preheader1068 ] ; 2 uses
  %.170.i.i.i75.i.i3971 = phi ptr [ %i.avw, %bb.li ], [ %i.asv, %.preheader1068 ] ; 2 uses
  %i.avu = load i8, ptr %.170.i.i.i75.i.i3971, align 1, !tbaa !94 ; 3 uses
  %i.avv = icmp slt i8 %i.avu, 0
  %i.avw = getelementptr inbounds nuw i8, ptr %.170.i.i.i75.i.i3971, i64 1 ; 3 uses
  br i1 %i.avv, label %bb.li, label %.critedge.i.i.i79.i.i

bb.li:                                            ; preds = %.lr.ph3974
  %i.avx = and i8 %i.avu, 127
  %i.avy = zext nneg i8 %i.avx to i64
  %i.avz = shl i64 %i.avy, %indvars.iv7771
  %i.awa = or i64 %i.avz, %.1.i.i.i76.i.i3972
  %indvars.iv.next7772 = add nuw nsw i64 %indvars.iv7771, 7
  %.not.i.i.i78.i.i = icmp eq ptr %i.avw, %i.asz
  br i1 %.not.i.i.i78.i.i, label %.preheader1068._crit_edge, label %.lr.ph3974, !llvm.loop !46

.preheader1068._crit_edge:                        ; preds = %.preheader1068, %bb.li
  %i.awb = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.awb, ptr noundef nonnull @.str.78)
          to label %.invoke11648 unwind label %bb.lj

bb.lj:                                            ; preds = %.preheader1068._crit_edge
  %i.awc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.awb) #28
  br label %.body.i.i

.critedge.i.i.i79.i.i:                            ; preds = %.lr.ph3974
  %i.awd = zext nneg i8 %i.avu to i64
  %i.awe = shl i64 %i.awd, %indvars.iv7771
  %i.awf = or i64 %i.awe, %.1.i.i.i76.i.i3972
  br label %bb.lk

bb.lk:                                            ; preds = %.critedge.i.i.i79.i.i, %bb.lf, %bb.le, %bb.ld, %bb.lc, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kx
  %.271.i.i.i80.i.i = phi ptr [ %i.avw, %.critedge.i.i.i79.i.i ], [ %i.avm, %bb.lf ], [ %i.ati, %bb.kx ], [ %i.atp, %bb.ky ], [ %i.atw, %bb.kz ], [ %i.aud, %bb.la ], [ %i.auk, %bb.lb ], [ %i.aur, %bb.lc ], [ %i.auy, %bb.ld ], [ %i.avf, %bb.le ]
  %.2.i.i.i81.i.i = phi i64 [ %i.awf, %.critedge.i.i.i79.i.i ], [ %i.avq, %bb.lf ], [ %i.atn, %bb.kx ], [ %i.atu, %bb.ky ], [ %i.aub, %bb.kz ], [ %i.aui, %bb.la ], [ %i.aup, %bb.lb ], [ %i.auw, %bb.lc ], [ %i.avd, %bb.ld ], [ %i.avk, %bb.le ]
  %i.awg = ptrtoint ptr %.271.i.i.i80.i.i to i64
  %i.awh = sub i64 %i.awg, %i.atd
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i.i: ; preds = %bb.lk, %bb.kv
  %.0672 = phi i64 [ 1, %bb.kv ], [ %i.awh, %bb.lk ] ; 2 uses
  %.072.i.i.i82.i.i = phi i64 [ %i.atc, %bb.kv ], [ %.2.i.i.i81.i.i, %bb.lk ] ; 7 uses
  %i.awi = add i64 %.072.i.i.i82.i.i, %.0672      ; 6 uses
  %i.awj = icmp ult i64 %i.ast, %i.awi
  br i1 %i.awj, label %bb.ll, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i.i, !prof !169

bb.ll:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i.i
  %i.awk = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.awk, ptr noundef nonnull @.str.89)
          to label %.invoke11648 unwind label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.awl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.awk) #28
  br label %.body.i.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i.i.i
  %i.awm = load ptr, ptr %i.asy, align 8, !tbaa !95 ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %i.asy, i64 16 ; 2 uses
  %i.awo = icmp eq ptr %i.awm, %i.awn
  br i1 %i.awo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i.i
  %i.awp = load i64, ptr %i.awn, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.awq = phi i64 [ %i.awp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i.i.i ]
  %i.awr = icmp ugt i64 %.072.i.i.i82.i.i, %i.awq
  br i1 %i.awr, label %bb.ln, label %.noexc98.i

bb.ln:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.asy, i64 noundef %.072.i.i.i82.i.i)
          to label %.noexc90 unwind label %.loopexit.split-lp1042.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc90:                                         ; preds = %bb.ln
  %.pre.i = load ptr, ptr %i.asy, align 8, !tbaa !95
  br label %.noexc98.i

.noexc98.i:                                       ; preds = %.noexc90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.aws = phi ptr [ %.pre.i, %.noexc90 ], [ %i.awm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.awt = getelementptr inbounds nuw i8, ptr %i.asy, i64 8
  store i64 %.072.i.i.i82.i.i, ptr %i.awt, align 8, !tbaa !93
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aws, i64 %.072.i.i.i82.i.i
  store i8 0, ptr %i.awu, align 1, !tbaa !94
  %i.awv = load ptr, ptr %i.asy, align 8, !tbaa !95
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 %.072.i.i.i82.i.i
  store i8 0, ptr %i.aww, align 1, !tbaa !94
  %i.awx = load ptr, ptr %i.asy, align 8, !tbaa !95
  %i.awy = load ptr, ptr %i.cn, align 8, !tbaa !439
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 %.0672
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awx, ptr align 1 %i.awz, i64 %.072.i.i.i82.i.i, i1 false)
  %i.axa = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.axb = icmp ugt i64 %i.awi, %i.axa
  br i1 %i.axb, label %.invoke11646, label %.noexc99.i

.noexc99.i:                                       ; preds = %.noexc98.i
  %i.axc = sub nuw i64 %i.axa, %i.awi             ; 2 uses
  %i.axd = load ptr, ptr %i.cn, align 8, !tbaa !439 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.awi ; 14 uses
  store i64 %i.axc, ptr %17, align 8, !tbaa !249
  store ptr %i.axe, ptr %i.cn, align 8, !tbaa !363
  %i.axf = icmp eq i64 %i.axa, %i.awi
  br i1 %i.axf, label %.critedge.i18.i.i, label %bb.lo

bb.lo:                                            ; preds = %.noexc99.i
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.axa
  %i.axh = load i8, ptr %i.axe, align 1, !tbaa !94 ; 3 uses
  %i.axi = icmp sgt i8 %i.axh, -1
  br i1 %i.axi, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.axj = zext nneg i8 %i.axh to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i

bb.lq:                                            ; preds = %bb.lo
  %i.axk = ptrtoint ptr %i.axe to i64
  %i.axl = icmp ugt i64 %i.axc, 9
  br i1 %i.axl, label %bb.lr, label %.lr.ph3980, !prof !257

bb.lr:                                            ; preds = %bb.lq
  %i.axm = and i8 %i.axh, 127
  %i.axn = zext nneg i8 %i.axm to i64
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axe, i64 1
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axe, i64 2 ; 2 uses
  %i.axq = load i8, ptr %i.axo, align 1, !tbaa !94 ; 2 uses
  %i.axr = sext i8 %i.axq to i64
  %i.axs = shl nsw i64 %i.axr, 7
  %i.axt = and i64 %i.axs, 16256
  %i.axu = or disjoint i64 %i.axt, %i.axn         ; 2 uses
  %i.axv = icmp sgt i8 %i.axq, -1
  br i1 %i.axv, label %bb.me, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axe, i64 3 ; 2 uses
  %i.axx = load i8, ptr %i.axp, align 1, !tbaa !94 ; 2 uses
  %i.axy = sext i8 %i.axx to i64
  %i.axz = shl nsw i64 %i.axy, 14
  %i.aya = and i64 %i.axz, 2080768
  %i.ayb = or disjoint i64 %i.aya, %i.axu         ; 2 uses
  %i.ayc = icmp sgt i8 %i.axx, -1
  br i1 %i.ayc, label %bb.me, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axe, i64 4 ; 2 uses
  %i.aye = load i8, ptr %i.axw, align 1, !tbaa !94 ; 2 uses
  %i.ayf = sext i8 %i.aye to i64
  %i.ayg = shl nsw i64 %i.ayf, 21
  %i.ayh = and i64 %i.ayg, 266338304
  %i.ayi = or disjoint i64 %i.ayh, %i.ayb         ; 2 uses
  %i.ayj = icmp sgt i8 %i.aye, -1
  br i1 %i.ayj, label %bb.me, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axe, i64 5 ; 2 uses
  %i.ayl = load i8, ptr %i.ayd, align 1, !tbaa !94 ; 2 uses
  %i.aym = sext i8 %i.ayl to i64
  %i.ayn = shl nsw i64 %i.aym, 28
  %i.ayo = and i64 %i.ayn, 34091302912
  %i.ayp = or disjoint i64 %i.ayo, %i.ayi         ; 6 uses
  %i.ayq = icmp sgt i8 %i.ayl, -1
  br i1 %i.ayq, label %bb.me, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axe, i64 6 ; 2 uses
  %i.ays = load i8, ptr %i.ayk, align 1, !tbaa !94
  %i.ayt = icmp sgt i8 %i.ays, -1
  br i1 %i.ayt, label %bb.me, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axe, i64 7 ; 2 uses
  %i.ayv = load i8, ptr %i.ayr, align 1, !tbaa !94
  %i.ayw = icmp sgt i8 %i.ayv, -1
  br i1 %i.ayw, label %bb.me, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axe, i64 8 ; 2 uses
  %i.ayy = load i8, ptr %i.ayu, align 1, !tbaa !94
  %i.ayz = icmp sgt i8 %i.ayy, -1
  br i1 %i.ayz, label %bb.me, label %bb.ly
end_hunk_27
begin_hunk_28_@_ZN6iguana9base_implIN9pb_sample8MonstersELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.azg = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.azg, ptr noundef nonnull @.str.77)
          to label %.invoke11648 unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.azh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.azg) #28
  br label %.body.i.i

.lr.ph3980:                                       ; preds = %bb.lq, %bb.mc
  %indvars.iv7774 = phi i64 [ %indvars.iv.next7775, %bb.mc ], [ 0, %bb.lq ] ; 3 uses
  %.1.i.i85.i.i3978 = phi i64 [ %i.azo, %bb.mc ], [ 0, %bb.lq ] ; 2 uses
  %.170.i.i84.i.i3977 = phi ptr [ %i.azk, %bb.mc ], [ %i.axe, %bb.lq ] ; 2 uses
  %i.azi = load i8, ptr %.170.i.i84.i.i3977, align 1, !tbaa !94 ; 3 uses
  %i.azj = icmp slt i8 %i.azi, 0
  %i.azk = getelementptr inbounds nuw i8, ptr %.170.i.i84.i.i3977, i64 1 ; 3 uses
  br i1 %i.azj, label %bb.mc, label %.critedge.i.i88.i.i

bb.mc:                                            ; preds = %.lr.ph3980
  %i.azl = and i8 %i.azi, 127
  %i.azm = zext nneg i8 %i.azl to i64
  %i.azn = shl i64 %i.azm, %indvars.iv7774
  %i.azo = or i64 %i.azn, %.1.i.i85.i.i3978
  %indvars.iv.next7775 = add nuw nsw i64 %indvars.iv7774, 7
  %.not.i.i87.i.i = icmp eq ptr %i.azk, %i.axg
  br i1 %.not.i.i87.i.i, label %.preheader1067._crit_edge, label %.lr.ph3980, !llvm.loop !46

.preheader1067._crit_edge:                        ; preds = %bb.mc
  %i.azp = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.azp, ptr noundef nonnull @.str.78)
          to label %.invoke11648 unwind label %bb.md

bb.md:                                            ; preds = %.preheader1067._crit_edge
  %i.azq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.azp) #28
  br label %.body.i.i

.critedge.i.i88.i.i:                              ; preds = %.lr.ph3980
  %i.azr = zext nneg i8 %i.azi to i64
  %i.azs = shl i64 %i.azr, %indvars.iv7774
  %i.azt = or i64 %i.azs, %.1.i.i85.i.i3978
  br label %bb.me

bb.me:                                            ; preds = %.critedge.i.i88.i.i, %bb.lz, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr
  %.271.i.i89.i.i = phi ptr [ %i.azk, %.critedge.i.i88.i.i ], [ %i.azd, %bb.lz ], [ %i.axp, %bb.lr ], [ %i.axw, %bb.ls ], [ %i.ayd, %bb.lt ], [ %i.ayk, %bb.lu ], [ %i.ayr, %bb.lv ], [ %i.ayu, %bb.lw ], [ %i.ayx, %bb.lx ], [ %i.aza, %bb.ly ]
  %.2.i.i90.i.i = phi i64 [ %i.azt, %.critedge.i.i88.i.i ], [ %i.ayp, %bb.lz ], [ %i.axu, %bb.lr ], [ %i.ayb, %bb.ls ], [ %i.ayi, %bb.lt ], [ %i.ayp, %bb.lu ], [ %i.ayp, %bb.lv ], [ %i.ayp, %bb.lw ], [ %i.ayp, %bb.lx ], [ %i.ayp, %bb.ly ]
  %i.azu = ptrtoint ptr %.271.i.i89.i.i to i64
  %i.azv = sub i64 %i.azu, %i.axk
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i: ; preds = %bb.lp, %bb.me
  %.17 = phi i64 [ 1, %bb.lp ], [ %i.azv, %bb.me ]
  %.072.i.i92.i.i = phi i64 [ %i.axj, %bb.lp ], [ %.2.i.i90.i.i, %bb.me ]
  %i.azw = trunc i64 %.072.i.i92.i.i to i32       ; 2 uses
  %i.azx = and i32 %i.azw, 7
  %i.azy = lshr i32 %i.azw, 3                     ; 2 uses
  store i32 %i.azy, ptr %i.e, align 4, !tbaa !164
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i.thread896

_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i.thread896: ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i.thread882, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i
  %.pr919 = phi i32 [ %i.azy, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i ], [ %.pr905, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i.thread882 ] ; 2 uses
  %.3813903 = phi i32 [ %i.azx, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i ], [ %.2812889, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i.thread882 ] ; 2 uses
  %.4823902 = phi i64 [ %.17, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i ], [ %.3822888, %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm2EEEEDaS3_.exit.i.i.thread882 ] ; 6 uses
  %.sroa.02.0.copyload.i95.i.i904 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 96), align 8, !tbaa !249
  %.not.i96.i.i = icmp eq i32 %.pr919, 5
  br i1 %.not.i96.i.i, label %bb.mf, label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i.i.thread910

bb.mf:                                            ; preds = %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm3EEEEDaS3_.exit.i.i.thread896
  %i.azz = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.baa = icmp ugt i64 %.4823902, %i.azz
  br i1 %i.baa, label %.invoke11646, label %.noexc102.i

.noexc102.i:                                      ; preds = %bb.mf
  %i.bab = sub nuw i64 %i.azz, %.4823902          ; 3 uses
  %i.bac = load ptr, ptr %i.cn, align 8, !tbaa !439 ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 %.4823902 ; 14 uses
  store i64 %i.bab, ptr %17, align 8, !tbaa !249
  store ptr %i.bad, ptr %i.cn, align 8, !tbaa !363
  %.not4.i98.i.i = icmp eq i32 %.3813903, 2
  br i1 %.not4.i98.i.i, label %bb.mi, label %bb.mg, !prof !257

bb.mg:                                            ; preds = %.noexc102.i
  %i.bae = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bae, ptr noundef nonnull @.str.79)
          to label %.invoke11648 unwind label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.baf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bae) #28
  br label %.body.i.i

bb.mi:                                            ; preds = %.noexc102.i
  %i.bag = getelementptr inbounds nuw i8, ptr %19, i64 %.sroa.02.0.copyload.i95.i.i904 ; 7 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bac, i64 %i.azz
  %i.bai = load i8, ptr %i.bad, align 1, !tbaa !94 ; 3 uses
  %i.baj = icmp sgt i8 %i.bai, -1
  br i1 %i.baj, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  %i.bak = zext nneg i8 %i.bai to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i.i

bb.mk:                                            ; preds = %bb.mi
  %i.bal = ptrtoint ptr %i.bad to i64
  %i.bam = icmp ugt i64 %i.bab, 9
  br i1 %i.bam, label %bb.ml, label %.preheader1066, !prof !257

.preheader1066:                                   ; preds = %bb.mk
  %.not.i.i.i102.i.i3982 = icmp samesign eq i64 %.4823902, %i.azz
  br i1 %.not.i.i.i102.i.i3982, label %.preheader1066._crit_edge, label %.lr.ph3986

bb.ml:                                            ; preds = %bb.mk
  %i.ban = and i8 %i.bai, 127
  %i.bao = zext nneg i8 %i.ban to i64
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bad, i64 1
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bad, i64 2 ; 2 uses
  %i.bar = load i8, ptr %i.bap, align 1, !tbaa !94 ; 2 uses
  %i.bas = sext i8 %i.bar to i64
  %i.bat = shl nsw i64 %i.bas, 7
  %i.bau = and i64 %i.bat, 16256
  %i.bav = or disjoint i64 %i.bau, %i.bao         ; 2 uses
  %i.baw = icmp sgt i8 %i.bar, -1
  br i1 %i.baw, label %bb.my, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bad, i64 3 ; 2 uses
  %i.bay = load i8, ptr %i.baq, align 1, !tbaa !94 ; 2 uses
  %i.baz = sext i8 %i.bay to i64
  %i.bba = shl nsw i64 %i.baz, 14
  %i.bbb = and i64 %i.bba, 2080768
  %i.bbc = or disjoint i64 %i.bbb, %i.bav         ; 2 uses
  %i.bbd = icmp sgt i8 %i.bay, -1
  br i1 %i.bbd, label %bb.my, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bad, i64 4 ; 2 uses
  %i.bbf = load i8, ptr %i.bax, align 1, !tbaa !94 ; 2 uses
  %i.bbg = sext i8 %i.bbf to i64
  %i.bbh = shl nsw i64 %i.bbg, 21
  %i.bbi = and i64 %i.bbh, 266338304
  %i.bbj = or disjoint i64 %i.bbi, %i.bbc         ; 2 uses
  %i.bbk = icmp sgt i8 %i.bbf, -1
  br i1 %i.bbk, label %bb.my, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bad, i64 5 ; 2 uses
  %i.bbm = load i8, ptr %i.bbe, align 1, !tbaa !94 ; 2 uses
  %i.bbn = sext i8 %i.bbm to i64
  %i.bbo = shl nsw i64 %i.bbn, 28
  %i.bbp = and i64 %i.bbo, 34091302912
  %i.bbq = or disjoint i64 %i.bbp, %i.bbj         ; 2 uses
  %i.bbr = icmp sgt i8 %i.bbm, -1
  br i1 %i.bbr, label %bb.my, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bad, i64 6 ; 2 uses
  %i.bbt = load i8, ptr %i.bbl, align 1, !tbaa !94 ; 2 uses
  %i.bbu = sext i8 %i.bbt to i64
  %i.bbv = shl nsw i64 %i.bbu, 35
  %i.bbw = and i64 %i.bbv, 4363686772736
  %i.bbx = or disjoint i64 %i.bbw, %i.bbq         ; 2 uses
  %i.bby = icmp sgt i8 %i.bbt, -1
  br i1 %i.bby, label %bb.my, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bad, i64 7 ; 2 uses
  %i.bca = load i8, ptr %i.bbs, align 1, !tbaa !94 ; 2 uses
  %i.bcb = sext i8 %i.bca to i64
  %i.bcc = shl nsw i64 %i.bcb, 42
  %i.bcd = and i64 %i.bcc, 558551906910208
  %i.bce = or i64 %i.bcd, %i.bbx                  ; 2 uses
  %i.bcf = icmp sgt i8 %i.bca, -1
  br i1 %i.bcf, label %bb.my, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bad, i64 8 ; 2 uses
  %i.bch = load i8, ptr %i.bbz, align 1, !tbaa !94 ; 2 uses
  %i.bci = sext i8 %i.bch to i64
  %i.bcj = shl nsw i64 %i.bci, 49
  %i.bck = and i64 %i.bcj, 71494644084506624
  %i.bcl = or i64 %i.bck, %i.bce                  ; 2 uses
  %i.bcm = icmp sgt i8 %i.bch, -1
  br i1 %i.bcm, label %bb.my, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bad, i64 9 ; 2 uses
  %i.bco = load i8, ptr %i.bcg, align 1, !tbaa !94 ; 2 uses
  %i.bcp = sext i8 %i.bco to i64
  %i.bcq = shl nsw i64 %i.bcp, 56
  %i.bcr = and i64 %i.bcq, 9151314442816847872
  %i.bcs = or i64 %i.bcr, %i.bcl                  ; 2 uses
  %i.bct = icmp sgt i8 %i.bco, -1
  br i1 %i.bct, label %bb.my, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bad, i64 10
  %i.bcv = load i8, ptr %i.bcn, align 1, !tbaa !94 ; 2 uses
  %i.bcw = zext i8 %i.bcv to i64
  %i.bcx = shl i64 %i.bcw, 63
  %i.bcy = or i64 %i.bcx, %i.bcs
  %i.bcz = icmp sgt i8 %i.bcv, -1
  br i1 %i.bcz, label %bb.my, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bda = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bda, ptr noundef nonnull @.str.77)
          to label %.invoke11648 unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bdb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bda) #28
  br label %.body.i.i

.lr.ph3986:                                       ; preds = %.preheader1066, %bb.mw
  %indvars.iv7777 = phi i64 [ %indvars.iv.next7778, %bb.mw ], [ 0, %.preheader1066 ] ; 3 uses
  %.1.i.i.i100.i.i3984 = phi i64 [ %i.bdi, %bb.mw ], [ 0, %.preheader1066 ] ; 2 uses
  %.170.i.i.i99.i.i3983 = phi ptr [ %i.bde, %bb.mw ], [ %i.bad, %.preheader1066 ] ; 2 uses
  %i.bdc = load i8, ptr %.170.i.i.i99.i.i3983, align 1, !tbaa !94 ; 3 uses
  %i.bdd = icmp slt i8 %i.bdc, 0
  %i.bde = getelementptr inbounds nuw i8, ptr %.170.i.i.i99.i.i3983, i64 1 ; 3 uses
  br i1 %i.bdd, label %bb.mw, label %.critedge.i.i.i103.i.i

bb.mw:                                            ; preds = %.lr.ph3986
  %i.bdf = and i8 %i.bdc, 127
  %i.bdg = zext nneg i8 %i.bdf to i64
  %i.bdh = shl i64 %i.bdg, %indvars.iv7777
  %i.bdi = or i64 %i.bdh, %.1.i.i.i100.i.i3984
  %indvars.iv.next7778 = add nuw nsw i64 %indvars.iv7777, 7
  %.not.i.i.i102.i.i = icmp eq ptr %i.bde, %i.bah
  br i1 %.not.i.i.i102.i.i, label %.preheader1066._crit_edge, label %.lr.ph3986, !llvm.loop !46

.preheader1066._crit_edge:                        ; preds = %.preheader1066, %bb.mw
  %i.bdj = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bdj, ptr noundef nonnull @.str.78)
          to label %.invoke11648 unwind label %bb.mx

bb.mx:                                            ; preds = %.preheader1066._crit_edge
  %i.bdk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bdj) #28
  br label %.body.i.i

.critedge.i.i.i103.i.i:                           ; preds = %.lr.ph3986
  %i.bdl = zext nneg i8 %i.bdc to i64
  %i.bdm = shl i64 %i.bdl, %indvars.iv7777
  %i.bdn = or i64 %i.bdm, %.1.i.i.i100.i.i3984
  br label %bb.my

bb.my:                                            ; preds = %.critedge.i.i.i103.i.i, %bb.mt, %bb.ms, %bb.mr, %bb.mq, %bb.mp, %bb.mo, %bb.mn, %bb.mm, %bb.ml
  %.271.i.i.i104.i.i = phi ptr [ %i.bde, %.critedge.i.i.i103.i.i ], [ %i.bcu, %bb.mt ], [ %i.baq, %bb.ml ], [ %i.bax, %bb.mm ], [ %i.bbe, %bb.mn ], [ %i.bbl, %bb.mo ], [ %i.bbs, %bb.mp ], [ %i.bbz, %bb.mq ], [ %i.bcg, %bb.mr ], [ %i.bcn, %bb.ms ]
  %.2.i.i.i105.i.i = phi i64 [ %i.bdn, %.critedge.i.i.i103.i.i ], [ %i.bcy, %bb.mt ], [ %i.bav, %bb.ml ], [ %i.bbc, %bb.mm ], [ %i.bbj, %bb.mn ], [ %i.bbq, %bb.mo ], [ %i.bbx, %bb.mp ], [ %i.bce, %bb.mq ], [ %i.bcl, %bb.mr ], [ %i.bcs, %bb.ms ]
  %i.bdo = ptrtoint ptr %.271.i.i.i104.i.i to i64
  %i.bdp = sub i64 %i.bdo, %i.bal
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i.i: ; preds = %bb.my, %bb.mj
  %.0673 = phi i64 [ 1, %bb.mj ], [ %i.bdp, %bb.my ] ; 2 uses
  %.072.i.i.i107.i.i = phi i64 [ %i.bak, %bb.mj ], [ %.2.i.i.i105.i.i, %bb.my ] ; 7 uses
  %i.bdq = add i64 %.072.i.i.i107.i.i, %.0673     ; 6 uses
  %i.bdr = icmp ult i64 %i.bab, %i.bdq
  br i1 %i.bdr, label %bb.mz, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i.i, !prof !169

bb.mz:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i.i
  %i.bds = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bds, ptr noundef nonnull @.str.89)
          to label %.invoke11648 unwind label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.bdt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bds) #28
  br label %.body.i.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i106.i.i
  %i.bdu = load ptr, ptr %i.bag, align 8, !tbaa !95 ; 2 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bag, i64 16 ; 2 uses
  %i.bdw = icmp eq ptr %i.bdu, %i.bdv
  br i1 %i.bdw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i.i
  %i.bdx = load i64, ptr %i.bdv, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  %i.bdy = phi i64 [ %i.bdx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i108.i.i ]
  %i.bdz = icmp ugt i64 %.072.i.i.i107.i.i, %i.bdy
  br i1 %i.bdz, label %bb.nb, label %.noexc107.i

bb.nb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bag, i64 noundef %.072.i.i.i107.i.i)
          to label %.noexc105 unwind label %.loopexit.split-lp1042.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.nb
  %.pre.i103 = load ptr, ptr %i.bag, align 8, !tbaa !95
  br label %.noexc107.i

.noexc107.i:                                      ; preds = %.noexc105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102
  %i.bea = phi ptr [ %.pre.i103, %.noexc105 ], [ %i.bdu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i102 ]
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bag, i64 8
  store i64 %.072.i.i.i107.i.i, ptr %i.beb, align 8, !tbaa !93
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bea, i64 %.072.i.i.i107.i.i
  store i8 0, ptr %i.bec, align 1, !tbaa !94
  %i.bed = load ptr, ptr %i.bag, align 8, !tbaa !95
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 %.072.i.i.i107.i.i
  store i8 0, ptr %i.bee, align 1, !tbaa !94
  %i.bef = load ptr, ptr %i.bag, align 8, !tbaa !95
  %i.beg = load ptr, ptr %i.cn, align 8, !tbaa !439
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 %.0673
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bef, ptr align 1 %i.beh, i64 %.072.i.i.i107.i.i, i1 false)
  %i.bei = load i64, ptr %17, align 8, !tbaa !438 ; 5 uses
  %i.bej = icmp ugt i64 %i.bdq, %i.bei
  br i1 %i.bej, label %.invoke11646, label %.noexc108.i

.noexc108.i:                                      ; preds = %.noexc107.i
  %i.bek = sub nuw i64 %i.bei, %i.bdq             ; 2 uses
  %i.bel = load ptr, ptr %i.cn, align 8, !tbaa !439 ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.bdq ; 14 uses
  store i64 %i.bek, ptr %17, align 8, !tbaa !249
  store ptr %i.bem, ptr %i.cn, align 8, !tbaa !363
  %i.ben = icmp eq i64 %i.bei, %i.bdq
  br i1 %i.ben, label %.critedge.i18.i.i, label %bb.nc

bb.nc:                                            ; preds = %.noexc108.i
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bel, i64 %i.bei
  %i.bep = load i8, ptr %i.bem, align 1, !tbaa !94 ; 3 uses
  %i.beq = icmp sgt i8 %i.bep, -1
  br i1 %i.beq, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %bb.nc
  %i.ber = zext nneg i8 %i.bep to i64
  br label %_ZZN6iguana7from_pbIN9pb_sample7MonsterEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEENKUlS3_E_clISt17integral_constantImLm4EEEEDaS3_.exit.i.i

bb.ne:                                            ; preds = %bb.nc
  %i.bes = ptrtoint ptr %i.bem to i64
  %i.bet = icmp ugt i64 %i.bek, 9
  br i1 %i.bet, label %bb.nf, label %.lr.ph3992, !prof !257

bb.nf:                                            ; preds = %bb.ne
  %i.beu = and i8 %i.bep, 127
  %i.bev = zext nneg i8 %i.beu to i64
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bem, i64 1
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bem, i64 2 ; 2 uses
  %i.bey = load i8, ptr %i.bew, align 1, !tbaa !94 ; 2 uses
  %i.bez = sext i8 %i.bey to i64
  %i.bfa = shl nsw i64 %i.bez, 7
  %i.bfb = and i64 %i.bfa, 16256
  %i.bfc = or disjoint i64 %i.bfb, %i.bev         ; 2 uses
  %i.bfd = icmp sgt i8 %i.bey, -1
  br i1 %i.bfd, label %bb.ns, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bem, i64 3 ; 2 uses
  %i.bff = load i8, ptr %i.bex, align 1, !tbaa !94 ; 2 uses
  %i.bfg = sext i8 %i.bff to i64
  %i.bfh = shl nsw i64 %i.bfg, 14
  %i.bfi = and i64 %i.bfh, 2080768
  %i.bfj = or disjoint i64 %i.bfi, %i.bfc         ; 2 uses
  %i.bfk = icmp sgt i8 %i.bff, -1
  br i1 %i.bfk, label %bb.ns, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bem, i64 4 ; 2 uses
  %i.bfm = load i8, ptr %i.bfe, align 1, !tbaa !94 ; 2 uses
  %i.bfn = sext i8 %i.bfm to i64
  %i.bfo = shl nsw i64 %i.bfn, 21
  %i.bfp = and i64 %i.bfo, 266338304
  %i.bfq = or disjoint i64 %i.bfp, %i.bfj         ; 2 uses
  %i.bfr = icmp sgt i8 %i.bfm, -1
  br i1 %i.bfr, label %bb.ns, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bem, i64 5 ; 2 uses
  %i.bft = load i8, ptr %i.bfl, align 1, !tbaa !94 ; 2 uses
  %i.bfu = sext i8 %i.bft to i64
  %i.bfv = shl nsw i64 %i.bfu, 28
  %i.bfw = and i64 %i.bfv, 34091302912
  %i.bfx = or disjoint i64 %i.bfw, %i.bfq         ; 6 uses
  %i.bfy = icmp sgt i8 %i.bft, -1
  br i1 %i.bfy, label %bb.ns, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bem, i64 6 ; 2 uses
  %i.bga = load i8, ptr %i.bfs, align 1, !tbaa !94
  %i.bgb = icmp sgt i8 %i.bga, -1
  br i1 %i.bgb, label %bb.ns, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bem, i64 7 ; 2 uses
  %i.bgd = load i8, ptr %i.bfz, align 1, !tbaa !94
  %i.bge = icmp sgt i8 %i.bgd, -1
  br i1 %i.bge, label %bb.ns, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bem, i64 8 ; 2 uses
  %i.bgg = load i8, ptr %i.bgc, align 1, !tbaa !94
  %i.bgh = icmp sgt i8 %i.bgg, -1
  br i1 %i.bgh, label %bb.ns, label %bb.nm
end_hunk_28
begin_hunk_29_@_ZN6iguana9base_implIN9pb_sample8MonstersELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.bsj = load i8, ptr %.170.i12.i334.i.i4019, align 1, !tbaa !94 ; 3 uses
  %i.bsk = icmp slt i8 %i.bsj, 0
  %i.bsl = getelementptr inbounds nuw i8, ptr %.170.i12.i334.i.i4019, i64 1 ; 3 uses
  br i1 %i.bsk, label %bb.qs, label %.critedge.i16.i338.i.i

bb.qs:                                            ; preds = %.lr.ph4022
  %i.bsm = and i8 %i.bsj, 127
  %i.bsn = zext nneg i8 %i.bsm to i64
  %i.bso = shl i64 %i.bsn, %indvars.iv7792
  %i.bsp = or i64 %i.bso, %.1.i13.i335.i.i4020
  %indvars.iv.next7793 = add nuw nsw i64 %indvars.iv7792, 7
  %.not.i15.i337.i.i = icmp eq ptr %i.bsl, %i.bqh
  br i1 %.not.i15.i337.i.i, label %.preheader1037._crit_edge, label %.lr.ph4022, !llvm.loop !46

.preheader1037._crit_edge:                        ; preds = %bb.qs
  %i.bsq = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bsq, ptr noundef nonnull @.str.78)
          to label %.invoke11638 unwind label %bb.qt

bb.qt:                                            ; preds = %.preheader1037._crit_edge
  %i.bsr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bsq) #28
  br label %.body.i.i.i

.critedge.i16.i338.i.i:                           ; preds = %.lr.ph4022
  %i.bss = zext nneg i8 %i.bsj to i64
  %i.bst = shl i64 %i.bss, %indvars.iv7792
  %i.bsu = or i64 %i.bst, %.1.i13.i335.i.i4020
  br label %bb.qu

bb.qu:                                            ; preds = %.critedge.i16.i338.i.i, %bb.qp, %bb.qo, %bb.qn, %bb.qm, %bb.ql, %bb.qk, %bb.qj, %bb.qi, %bb.qh
  %.271.i17.i339.i.i = phi ptr [ %i.bsl, %.critedge.i16.i338.i.i ], [ %i.bse, %bb.qp ], [ %i.bqq, %bb.qh ], [ %i.bqx, %bb.qi ], [ %i.bre, %bb.qj ], [ %i.brl, %bb.qk ], [ %i.brs, %bb.ql ], [ %i.brv, %bb.qm ], [ %i.bry, %bb.qn ], [ %i.bsb, %bb.qo ]
  %.2.i18.i340.i.i = phi i64 [ %i.bsu, %.critedge.i16.i338.i.i ], [ %i.brq, %bb.qp ], [ %i.bqv, %bb.qh ], [ %i.brc, %bb.qi ], [ %i.brj, %bb.qj ], [ %i.brq, %bb.qk ], [ %i.brq, %bb.ql ], [ %i.brq, %bb.qm ], [ %i.brq, %bb.qn ], [ %i.brq, %bb.qo ]
  %i.bsv = ptrtoint ptr %.271.i17.i339.i.i to i64
  %i.bsw = sub i64 %i.bsv, %i.bql
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i.i: ; preds = %bb.qu, %bb.qf
  %.0773 = phi i64 [ 1, %bb.qf ], [ %i.bsw, %bb.qu ] ; 6 uses
  %.072.i19.i342.i.i = phi i64 [ %i.bqk, %bb.qf ], [ %.2.i18.i340.i.i, %bb.qu ]
  %i.bsx = trunc i64 %.072.i19.i342.i.i to i32    ; 2 uses
  %i.bsy = and i32 %i.bsx, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bsz = lshr i32 %i.bsx, 3
  store i32 %i.bsz, ptr %i.b, align 4, !tbaa !164
  %i.bta = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.btb = icmp eq i8 %i.bta, 0
  br i1 %i.btb, label %bb.qv, label %bb.qy, !prof !173

bb.qv:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i.i
  %i.btc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i356.i.i = icmp eq i32 %i.btc, 0
  br i1 %.not.i356.i.i, label %bb.qy, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.qx unwind label %bb.tz

bb.qx:                                            ; preds = %bb.qw
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.qy

bb.qy:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i341.i.i, %bb.qv, %bb.qx
  %.sroa.02.0.copyload.i397.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.btd = load i32, ptr %i.b, align 4, !tbaa !164 ; 2 uses
  %.not.i398.i.i = icmp eq i32 %i.btd, 1
  %.pre7877.pre = load i64, ptr %10, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i398.i.i, label %bb.qz, label %bb.sn

bb.qz:                                            ; preds = %bb.qy
  %i.bte = icmp ugt i64 %.0773, %.pre7877.pre
  br i1 %i.bte, label %.invoke, label %.noexc423.i.i

.noexc423.i.i:                                    ; preds = %bb.qz
  %i.btf = sub nuw i64 %.pre7877.pre, %.0773      ; 3 uses
  %i.btg = load ptr, ptr %i.cw, align 8, !tbaa !439 ; 2 uses
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btg, i64 %.0773 ; 14 uses
  store i64 %i.btf, ptr %10, align 8, !tbaa !249
  store ptr %i.bth, ptr %i.cw, align 8, !tbaa !363
  %.not4.i400.i.i = icmp eq i32 %i.bsy, 2
  br i1 %.not4.i400.i.i, label %bb.rc, label %bb.ra, !prof !257

bb.ra:                                            ; preds = %.noexc423.i.i
  %i.bti = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bti, ptr noundef nonnull @.str.79)
          to label %.invoke11638 unwind label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.btj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bti) #28
  br label %.body.i.i.i

bb.rc:                                            ; preds = %.noexc423.i.i
  %i.btk = getelementptr inbounds nuw i8, ptr %14, i64 %.sroa.02.0.copyload.i397.i.i ; 7 uses
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btg, i64 %.pre7877.pre
  %i.btm = load i8, ptr %i.bth, align 1, !tbaa !94 ; 3 uses
  %i.btn = icmp sgt i8 %i.btm, -1
  br i1 %i.btn, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %bb.rc
  %i.bto = zext nneg i8 %i.btm to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i.i

bb.re:                                            ; preds = %bb.rc
  %i.btp = ptrtoint ptr %i.bth to i64
  %i.btq = icmp ugt i64 %i.btf, 9
  br i1 %i.btq, label %bb.rf, label %.preheader1036, !prof !257

.preheader1036:                                   ; preds = %bb.re
  %.not.i.i.i404.i.i4030 = icmp samesign eq i64 %.0773, %.pre7877.pre
  br i1 %.not.i.i.i404.i.i4030, label %.preheader1036._crit_edge, label %.lr.ph4034

bb.rf:                                            ; preds = %bb.re
  %i.btr = and i8 %i.btm, 127
  %i.bts = zext nneg i8 %i.btr to i64
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bth, i64 1
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bth, i64 2 ; 2 uses
  %i.btv = load i8, ptr %i.btt, align 1, !tbaa !94 ; 2 uses
  %i.btw = sext i8 %i.btv to i64
  %i.btx = shl nsw i64 %i.btw, 7
  %i.bty = and i64 %i.btx, 16256
  %i.btz = or disjoint i64 %i.bty, %i.bts         ; 2 uses
  %i.bua = icmp sgt i8 %i.btv, -1
  br i1 %i.bua, label %bb.rs, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bth, i64 3 ; 2 uses
  %i.buc = load i8, ptr %i.btu, align 1, !tbaa !94 ; 2 uses
  %i.bud = sext i8 %i.buc to i64
  %i.bue = shl nsw i64 %i.bud, 14
  %i.buf = and i64 %i.bue, 2080768
  %i.bug = or disjoint i64 %i.buf, %i.btz         ; 2 uses
  %i.buh = icmp sgt i8 %i.buc, -1
  br i1 %i.buh, label %bb.rs, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bui = getelementptr inbounds nuw i8, ptr %i.bth, i64 4 ; 2 uses
  %i.buj = load i8, ptr %i.bub, align 1, !tbaa !94 ; 2 uses
  %i.buk = sext i8 %i.buj to i64
  %i.bul = shl nsw i64 %i.buk, 21
  %i.bum = and i64 %i.bul, 266338304
  %i.bun = or disjoint i64 %i.bum, %i.bug         ; 2 uses
  %i.buo = icmp sgt i8 %i.buj, -1
  br i1 %i.buo, label %bb.rs, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bth, i64 5 ; 2 uses
  %i.buq = load i8, ptr %i.bui, align 1, !tbaa !94 ; 2 uses
  %i.bur = sext i8 %i.buq to i64
  %i.bus = shl nsw i64 %i.bur, 28
  %i.but = and i64 %i.bus, 34091302912
  %i.buu = or disjoint i64 %i.but, %i.bun         ; 2 uses
  %i.buv = icmp sgt i8 %i.buq, -1
  br i1 %i.buv, label %bb.rs, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.buw = getelementptr inbounds nuw i8, ptr %i.bth, i64 6 ; 2 uses
  %i.bux = load i8, ptr %i.bup, align 1, !tbaa !94 ; 2 uses
  %i.buy = sext i8 %i.bux to i64
  %i.buz = shl nsw i64 %i.buy, 35
  %i.bva = and i64 %i.buz, 4363686772736
  %i.bvb = or disjoint i64 %i.bva, %i.buu         ; 2 uses
  %i.bvc = icmp sgt i8 %i.bux, -1
  br i1 %i.bvc, label %bb.rs, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bth, i64 7 ; 2 uses
  %i.bve = load i8, ptr %i.buw, align 1, !tbaa !94 ; 2 uses
  %i.bvf = sext i8 %i.bve to i64
  %i.bvg = shl nsw i64 %i.bvf, 42
  %i.bvh = and i64 %i.bvg, 558551906910208
  %i.bvi = or i64 %i.bvh, %i.bvb                  ; 2 uses
  %i.bvj = icmp sgt i8 %i.bve, -1
  br i1 %i.bvj, label %bb.rs, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bth, i64 8 ; 2 uses
  %i.bvl = load i8, ptr %i.bvd, align 1, !tbaa !94 ; 2 uses
  %i.bvm = sext i8 %i.bvl to i64
  %i.bvn = shl nsw i64 %i.bvm, 49
  %i.bvo = and i64 %i.bvn, 71494644084506624
  %i.bvp = or i64 %i.bvo, %i.bvi                  ; 2 uses
  %i.bvq = icmp sgt i8 %i.bvl, -1
  br i1 %i.bvq, label %bb.rs, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bvr = getelementptr inbounds nuw i8, ptr %i.bth, i64 9 ; 2 uses
  %i.bvs = load i8, ptr %i.bvk, align 1, !tbaa !94 ; 2 uses
  %i.bvt = sext i8 %i.bvs to i64
  %i.bvu = shl nsw i64 %i.bvt, 56
  %i.bvv = and i64 %i.bvu, 9151314442816847872
  %i.bvw = or i64 %i.bvv, %i.bvp                  ; 2 uses
  %i.bvx = icmp sgt i8 %i.bvs, -1
  br i1 %i.bvx, label %bb.rs, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bth, i64 10
  %i.bvz = load i8, ptr %i.bvr, align 1, !tbaa !94 ; 2 uses
  %i.bwa = zext i8 %i.bvz to i64
  %i.bwb = shl i64 %i.bwa, 63
  %i.bwc = or i64 %i.bwb, %i.bvw
  %i.bwd = icmp sgt i8 %i.bvz, -1
  br i1 %i.bwd, label %bb.rs, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.bwe = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bwe, ptr noundef nonnull @.str.77)
          to label %.invoke11638 unwind label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.bwf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bwe) #28
  br label %.body.i.i.i

.lr.ph4034:                                       ; preds = %.preheader1036, %bb.rq
  %indvars.iv7795 = phi i64 [ %indvars.iv.next7796, %bb.rq ], [ 0, %.preheader1036 ] ; 3 uses
  %.1.i.i.i402.i.i4032 = phi i64 [ %i.bwm, %bb.rq ], [ 0, %.preheader1036 ] ; 2 uses
  %.170.i.i.i401.i.i4031 = phi ptr [ %i.bwi, %bb.rq ], [ %i.bth, %.preheader1036 ] ; 2 uses
  %i.bwg = load i8, ptr %.170.i.i.i401.i.i4031, align 1, !tbaa !94 ; 3 uses
  %i.bwh = icmp slt i8 %i.bwg, 0
  %i.bwi = getelementptr inbounds nuw i8, ptr %.170.i.i.i401.i.i4031, i64 1 ; 3 uses
  br i1 %i.bwh, label %bb.rq, label %.critedge.i.i.i405.i.i

bb.rq:                                            ; preds = %.lr.ph4034
  %i.bwj = and i8 %i.bwg, 127
  %i.bwk = zext nneg i8 %i.bwj to i64
  %i.bwl = shl i64 %i.bwk, %indvars.iv7795
  %i.bwm = or i64 %i.bwl, %.1.i.i.i402.i.i4032
  %indvars.iv.next7796 = add nuw nsw i64 %indvars.iv7795, 7
  %.not.i.i.i404.i.i = icmp eq ptr %i.bwi, %i.btl
  br i1 %.not.i.i.i404.i.i, label %.preheader1036._crit_edge, label %.lr.ph4034, !llvm.loop !46

.preheader1036._crit_edge:                        ; preds = %.preheader1036, %bb.rq
  %i.bwn = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bwn, ptr noundef nonnull @.str.78)
          to label %.invoke11638 unwind label %bb.rr

bb.rr:                                            ; preds = %.preheader1036._crit_edge
  %i.bwo = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bwn) #28
  br label %.body.i.i.i

.critedge.i.i.i405.i.i:                           ; preds = %.lr.ph4034
  %i.bwp = zext nneg i8 %i.bwg to i64
  %i.bwq = shl i64 %i.bwp, %indvars.iv7795
  %i.bwr = or i64 %i.bwq, %.1.i.i.i402.i.i4032
  br label %bb.rs

bb.rs:                                            ; preds = %.critedge.i.i.i405.i.i, %bb.rn, %bb.rm, %bb.rl, %bb.rk, %bb.rj, %bb.ri, %bb.rh, %bb.rg, %bb.rf
  %.271.i.i.i406.i.i = phi ptr [ %i.bwi, %.critedge.i.i.i405.i.i ], [ %i.bvy, %bb.rn ], [ %i.btu, %bb.rf ], [ %i.bub, %bb.rg ], [ %i.bui, %bb.rh ], [ %i.bup, %bb.ri ], [ %i.buw, %bb.rj ], [ %i.bvd, %bb.rk ], [ %i.bvk, %bb.rl ], [ %i.bvr, %bb.rm ]
  %.2.i.i.i407.i.i = phi i64 [ %i.bwr, %.critedge.i.i.i405.i.i ], [ %i.bwc, %bb.rn ], [ %i.btz, %bb.rf ], [ %i.bug, %bb.rg ], [ %i.bun, %bb.rh ], [ %i.buu, %bb.ri ], [ %i.bvb, %bb.rj ], [ %i.bvi, %bb.rk ], [ %i.bvp, %bb.rl ], [ %i.bvw, %bb.rm ]
  %i.bws = ptrtoint ptr %.271.i.i.i406.i.i to i64
  %i.bwt = sub i64 %i.bws, %i.btp
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i.i: ; preds = %bb.rs, %bb.rd
  %.0680 = phi i64 [ 1, %bb.rd ], [ %i.bwt, %bb.rs ] ; 2 uses
  %.072.i.i.i409.i.i = phi i64 [ %i.bto, %bb.rd ], [ %.2.i.i.i407.i.i, %bb.rs ] ; 7 uses
  %i.bwu = add i64 %.072.i.i.i409.i.i, %.0680     ; 6 uses
  %i.bwv = icmp ult i64 %i.btf, %i.bwu
  br i1 %i.bwv, label %bb.rt, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i.i, !prof !169

bb.rt:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i.i
  %i.bww = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bww, ptr noundef nonnull @.str.89)
          to label %.invoke11638 unwind label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.bwx = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bww) #28
  br label %.body.i.i.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i408.i.i
  %i.bwy = load ptr, ptr %i.btk, align 8, !tbaa !95 ; 2 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.btk, i64 16 ; 2 uses
  %i.bxa = icmp eq ptr %i.bwy, %i.bwz
  br i1 %i.bxa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i.i
  %i.bxb = load i64, ptr %i.bwz, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  %i.bxc = phi i64 [ %i.bxb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i410.i.i ]
  %i.bxd = icmp ugt i64 %.072.i.i.i409.i.i, %i.bxc
  br i1 %i.bxd, label %bb.rv, label %.noexc430.i.i

bb.rv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.btk, i64 noundef %.072.i.i.i409.i.i)
          to label %.noexc145 unwind label %.loopexit.split-lp1029.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc145:                                        ; preds = %bb.rv
  %.pre.i143 = load ptr, ptr %i.btk, align 8, !tbaa !95
  br label %.noexc430.i.i

.noexc430.i.i:                                    ; preds = %.noexc145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142
  %i.bxe = phi ptr [ %.pre.i143, %.noexc145 ], [ %i.bwy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i142 ]
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.btk, i64 8
  store i64 %.072.i.i.i409.i.i, ptr %i.bxf, align 8, !tbaa !93
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxe, i64 %.072.i.i.i409.i.i
  store i8 0, ptr %i.bxg, align 1, !tbaa !94
  %i.bxh = load ptr, ptr %i.btk, align 8, !tbaa !95
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 %.072.i.i.i409.i.i
  store i8 0, ptr %i.bxi, align 1, !tbaa !94
  %i.bxj = load ptr, ptr %i.btk, align 8, !tbaa !95
  %i.bxk = load ptr, ptr %i.cw, align 8, !tbaa !439
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.bxk, i64 %.0680
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bxj, ptr align 1 %i.bxl, i64 %.072.i.i.i409.i.i, i1 false)
  %i.bxm = load i64, ptr %10, align 8, !tbaa !438 ; 5 uses
  %i.bxn = icmp ugt i64 %i.bwu, %i.bxm
  br i1 %i.bxn, label %.invoke, label %.noexc431.i.i

.noexc431.i.i:                                    ; preds = %.noexc430.i.i
  %i.bxo = sub nuw i64 %i.bxm, %i.bwu             ; 3 uses
  %i.bxp = load ptr, ptr %i.cw, align 8, !tbaa !439 ; 2 uses
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxp, i64 %i.bwu ; 14 uses
  store i64 %i.bxo, ptr %10, align 8, !tbaa !249
  store ptr %i.bxq, ptr %i.cw, align 8, !tbaa !363
  %i.bxr = icmp eq i64 %i.bxm, %i.bwu
  br i1 %i.bxr, label %.critedge.i353.i.i, label %bb.rw

bb.rw:                                            ; preds = %.noexc431.i.i
  %i.bxs = getelementptr inbounds nuw i8, ptr %i.bxp, i64 %i.bxm
  %i.bxt = load i8, ptr %i.bxq, align 1, !tbaa !94 ; 3 uses
  %i.bxu = icmp sgt i8 %i.bxt, -1
  br i1 %i.bxu, label %bb.rx, label %bb.ry

bb.rx:                                            ; preds = %bb.rw
  %i.bxv = zext nneg i8 %i.bxt to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i419.i.i

bb.ry:                                            ; preds = %bb.rw
  %i.bxw = ptrtoint ptr %i.bxq to i64
  %i.bxx = icmp ugt i64 %i.bxo, 9
  br i1 %i.bxx, label %bb.rz, label %.lr.ph4046, !prof !257

bb.rz:                                            ; preds = %bb.ry
  %i.bxy = and i8 %i.bxt, 127
  %i.bxz = zext nneg i8 %i.bxy to i64
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bxq, i64 1
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxq, i64 2 ; 2 uses
  %i.byc = load i8, ptr %i.bya, align 1, !tbaa !94 ; 2 uses
  %i.byd = sext i8 %i.byc to i64
  %i.bye = shl nsw i64 %i.byd, 7
  %i.byf = and i64 %i.bye, 16256
  %i.byg = or disjoint i64 %i.byf, %i.bxz         ; 2 uses
  %i.byh = icmp sgt i8 %i.byc, -1
  br i1 %i.byh, label %bb.sm, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bxq, i64 3 ; 2 uses
  %i.byj = load i8, ptr %i.byb, align 1, !tbaa !94 ; 2 uses
  %i.byk = sext i8 %i.byj to i64
  %i.byl = shl nsw i64 %i.byk, 14
  %i.bym = and i64 %i.byl, 2080768
  %i.byn = or disjoint i64 %i.bym, %i.byg         ; 2 uses
  %i.byo = icmp sgt i8 %i.byj, -1
  br i1 %i.byo, label %bb.sm, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.byp = getelementptr inbounds nuw i8, ptr %i.bxq, i64 4 ; 2 uses
  %i.byq = load i8, ptr %i.byi, align 1, !tbaa !94 ; 2 uses
  %i.byr = sext i8 %i.byq to i64
  %i.bys = shl nsw i64 %i.byr, 21
  %i.byt = and i64 %i.bys, 266338304
  %i.byu = or disjoint i64 %i.byt, %i.byn         ; 2 uses
  %i.byv = icmp sgt i8 %i.byq, -1
  br i1 %i.byv, label %bb.sm, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.byw = getelementptr inbounds nuw i8, ptr %i.bxq, i64 5 ; 2 uses
  %i.byx = load i8, ptr %i.byp, align 1, !tbaa !94 ; 2 uses
  %i.byy = sext i8 %i.byx to i64
  %i.byz = shl nsw i64 %i.byy, 28
  %i.bza = and i64 %i.byz, 34091302912
  %i.bzb = or disjoint i64 %i.bza, %i.byu         ; 6 uses
  %i.bzc = icmp sgt i8 %i.byx, -1
  br i1 %i.bzc, label %bb.sm, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bxq, i64 6 ; 2 uses
  %i.bze = load i8, ptr %i.byw, align 1, !tbaa !94
  %i.bzf = icmp sgt i8 %i.bze, -1
  br i1 %i.bzf, label %bb.sm, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bxq, i64 7 ; 2 uses
  %i.bzh = load i8, ptr %i.bzd, align 1, !tbaa !94
  %i.bzi = icmp sgt i8 %i.bzh, -1
  br i1 %i.bzi, label %bb.sm, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bxq, i64 8 ; 2 uses
  %i.bzk = load i8, ptr %i.bzg, align 1, !tbaa !94
  %i.bzl = icmp sgt i8 %i.bzk, -1
  br i1 %i.bzl, label %bb.sm, label %bb.sg
end_hunk_29
begin_hunk_30_@_ZN6iguana9base_implIN9pb_sample8MonstersELh8EE7from_pbESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.cwe = load i8, ptr %.170.i12.i310.i.i4130, align 1, !tbaa !94 ; 3 uses
  %i.cwf = icmp slt i8 %i.cwe, 0
  %i.cwg = getelementptr inbounds nuw i8, ptr %.170.i12.i310.i.i4130, i64 1 ; 3 uses
  br i1 %i.cwf, label %bb.xx, label %.critedge.i16.i314.i.i

bb.xx:                                            ; preds = %.lr.ph4133
  %i.cwh = and i8 %i.cwe, 127
  %i.cwi = zext nneg i8 %i.cwh to i64
  %i.cwj = shl i64 %i.cwi, %indvars.iv7819
  %i.cwk = or i64 %i.cwj, %.1.i13.i311.i.i4131
  %indvars.iv.next7820 = add nuw nsw i64 %indvars.iv7819, 7
  %.not.i15.i313.i.i = icmp eq ptr %i.cwg, %i.cuc
  br i1 %.not.i15.i313.i.i, label %.preheader1057._crit_edge, label %.lr.ph4133, !llvm.loop !46

.preheader1057._crit_edge:                        ; preds = %bb.xx
  %i.cwl = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cwl, ptr noundef nonnull @.str.78)
          to label %.invoke11648 unwind label %bb.xy

bb.xy:                                            ; preds = %.preheader1057._crit_edge
  %i.cwm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cwl) #28
  br label %.body.i.i

.critedge.i16.i314.i.i:                           ; preds = %.lr.ph4133
  %i.cwn = zext nneg i8 %i.cwe to i64
  %i.cwo = shl i64 %i.cwn, %indvars.iv7819
  %i.cwp = or i64 %i.cwo, %.1.i13.i311.i.i4131
  br label %bb.xz

bb.xz:                                            ; preds = %.critedge.i16.i314.i.i, %bb.xu, %bb.xt, %bb.xs, %bb.xr, %bb.xq, %bb.xp, %bb.xo, %bb.xn, %bb.xm
  %.271.i17.i315.i.i = phi ptr [ %i.cwg, %.critedge.i16.i314.i.i ], [ %i.cvz, %bb.xu ], [ %i.cul, %bb.xm ], [ %i.cus, %bb.xn ], [ %i.cuz, %bb.xo ], [ %i.cvg, %bb.xp ], [ %i.cvn, %bb.xq ], [ %i.cvq, %bb.xr ], [ %i.cvt, %bb.xs ], [ %i.cvw, %bb.xt ]
  %.2.i18.i316.i.i = phi i64 [ %i.cwp, %.critedge.i16.i314.i.i ], [ %i.cvl, %bb.xu ], [ %i.cuq, %bb.xm ], [ %i.cux, %bb.xn ], [ %i.cve, %bb.xo ], [ %i.cvl, %bb.xp ], [ %i.cvl, %bb.xq ], [ %i.cvl, %bb.xr ], [ %i.cvl, %bb.xs ], [ %i.cvl, %bb.xt ]
  %i.cwq = ptrtoint ptr %.271.i17.i315.i.i to i64
  %i.cwr = sub i64 %i.cwq, %i.cug
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i.i: ; preds = %bb.xz, %bb.xk
  %.0785 = phi i64 [ 1, %bb.xk ], [ %i.cwr, %bb.xz ] ; 6 uses
  %.072.i19.i318.i.i = phi i64 [ %i.cuf, %bb.xk ], [ %.2.i18.i316.i.i, %bb.xz ]
  %i.cws = trunc i64 %.072.i19.i318.i.i to i32    ; 2 uses
  %i.cwt = and i32 %i.cws, 7                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.cwu = lshr i32 %i.cws, 3
  store i32 %i.cwu, ptr %i.c, align 4, !tbaa !164
  %i.cwv = load atomic i8, ptr @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11 acquire, align 8
  %i.cww = icmp eq i8 %i.cwv, 0
  br i1 %i.cww, label %bb.ya, label %bb.yd, !prof !173

bb.ya:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i.i
  %i.cwx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  %.not.i332.i.i = icmp eq i32 %i.cwx, 0
  br i1 %.not.i332.i.i, label %bb.yd, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  invoke void @_ZN6iguana6detail20get_pb_members_tupleIRN9pb_sample6WeaponEEEDaOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.953") align 8 @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, ptr noundef nonnull align 8 dereferenceable(52) %i.crd)
          to label %bb.yc unwind label %bb.abe

bb.yc:                                            ; preds = %bb.yb
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11) #28
  br label %bb.yd

bb.yd:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit21.i317.i.i, %bb.ya, %bb.yc
  %.sroa.02.0.copyload.i371.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6iguana7from_pbIN9pb_sample6WeaponEEEvRT_St17basic_string_viewIcSt11char_traitsIcEEE2tpB5cxx11, i64 24), align 8, !tbaa !249
  %i.cwy = load i32, ptr %i.c, align 4, !tbaa !164 ; 2 uses
  %.not.i372.i.i = icmp eq i32 %i.cwy, 1
  %.pre7881.pre = load i64, ptr %12, align 8, !tbaa !438 ; 6 uses
  br i1 %.not.i372.i.i, label %bb.ye, label %bb.zs

bb.ye:                                            ; preds = %bb.yd
  %i.cwz = icmp ugt i64 %.0785, %.pre7881.pre
  br i1 %i.cwz, label %.invoke11646, label %.noexc132.i

.noexc132.i:                                      ; preds = %bb.ye
  %i.cxa = sub nuw i64 %.pre7881.pre, %.0785      ; 3 uses
  %i.cxb = load ptr, ptr %i.da, align 8, !tbaa !439 ; 2 uses
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cxb, i64 %.0785 ; 14 uses
  store i64 %i.cxa, ptr %12, align 8, !tbaa !249
  store ptr %i.cxc, ptr %i.da, align 8, !tbaa !363
  %.not4.i374.i.i = icmp eq i32 %i.cwt, 2
  br i1 %.not4.i374.i.i, label %bb.yh, label %bb.yf, !prof !257

bb.yf:                                            ; preds = %.noexc132.i
  %i.cxd = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cxd, ptr noundef nonnull @.str.79)
          to label %.invoke11648 unwind label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.cxe = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cxd) #28
  br label %.body.i.i

bb.yh:                                            ; preds = %.noexc132.i
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.crd, i64 %.sroa.02.0.copyload.i371.i.i ; 7 uses
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cxb, i64 %.pre7881.pre
  %i.cxh = load i8, ptr %i.cxc, align 1, !tbaa !94 ; 3 uses
  %i.cxi = icmp sgt i8 %i.cxh, -1
  br i1 %i.cxi, label %bb.yi, label %bb.yj

bb.yi:                                            ; preds = %bb.yh
  %i.cxj = zext nneg i8 %i.cxh to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i.i

bb.yj:                                            ; preds = %bb.yh
  %i.cxk = ptrtoint ptr %i.cxc to i64
  %i.cxl = icmp ugt i64 %i.cxa, 9
  br i1 %i.cxl, label %bb.yk, label %.preheader1056, !prof !257

.preheader1056:                                   ; preds = %bb.yj
  %.not.i.i.i378.i.i4135 = icmp samesign eq i64 %.0785, %.pre7881.pre
  br i1 %.not.i.i.i378.i.i4135, label %.preheader1056._crit_edge, label %.lr.ph4139

bb.yk:                                            ; preds = %bb.yj
  %i.cxm = and i8 %i.cxh, 127
  %i.cxn = zext nneg i8 %i.cxm to i64
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxc, i64 1
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cxc, i64 2 ; 2 uses
  %i.cxq = load i8, ptr %i.cxo, align 1, !tbaa !94 ; 2 uses
  %i.cxr = sext i8 %i.cxq to i64
  %i.cxs = shl nsw i64 %i.cxr, 7
  %i.cxt = and i64 %i.cxs, 16256
  %i.cxu = or disjoint i64 %i.cxt, %i.cxn         ; 2 uses
  %i.cxv = icmp sgt i8 %i.cxq, -1
  br i1 %i.cxv, label %bb.yx, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cxc, i64 3 ; 2 uses
  %i.cxx = load i8, ptr %i.cxp, align 1, !tbaa !94 ; 2 uses
  %i.cxy = sext i8 %i.cxx to i64
  %i.cxz = shl nsw i64 %i.cxy, 14
  %i.cya = and i64 %i.cxz, 2080768
  %i.cyb = or disjoint i64 %i.cya, %i.cxu         ; 2 uses
  %i.cyc = icmp sgt i8 %i.cxx, -1
  br i1 %i.cyc, label %bb.yx, label %bb.ym

bb.ym:                                            ; preds = %bb.yl
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 4 ; 2 uses
  %i.cye = load i8, ptr %i.cxw, align 1, !tbaa !94 ; 2 uses
  %i.cyf = sext i8 %i.cye to i64
  %i.cyg = shl nsw i64 %i.cyf, 21
  %i.cyh = and i64 %i.cyg, 266338304
  %i.cyi = or disjoint i64 %i.cyh, %i.cyb         ; 2 uses
  %i.cyj = icmp sgt i8 %i.cye, -1
  br i1 %i.cyj, label %bb.yx, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cxc, i64 5 ; 2 uses
  %i.cyl = load i8, ptr %i.cyd, align 1, !tbaa !94 ; 2 uses
  %i.cym = sext i8 %i.cyl to i64
  %i.cyn = shl nsw i64 %i.cym, 28
  %i.cyo = and i64 %i.cyn, 34091302912
  %i.cyp = or disjoint i64 %i.cyo, %i.cyi         ; 2 uses
  %i.cyq = icmp sgt i8 %i.cyl, -1
  br i1 %i.cyq, label %bb.yx, label %bb.yo

bb.yo:                                            ; preds = %bb.yn
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cxc, i64 6 ; 2 uses
  %i.cys = load i8, ptr %i.cyk, align 1, !tbaa !94 ; 2 uses
  %i.cyt = sext i8 %i.cys to i64
  %i.cyu = shl nsw i64 %i.cyt, 35
  %i.cyv = and i64 %i.cyu, 4363686772736
  %i.cyw = or disjoint i64 %i.cyv, %i.cyp         ; 2 uses
  %i.cyx = icmp sgt i8 %i.cys, -1
  br i1 %i.cyx, label %bb.yx, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cxc, i64 7 ; 2 uses
  %i.cyz = load i8, ptr %i.cyr, align 1, !tbaa !94 ; 2 uses
  %i.cza = sext i8 %i.cyz to i64
  %i.czb = shl nsw i64 %i.cza, 42
  %i.czc = and i64 %i.czb, 558551906910208
  %i.czd = or i64 %i.czc, %i.cyw                  ; 2 uses
  %i.cze = icmp sgt i8 %i.cyz, -1
  br i1 %i.cze, label %bb.yx, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cxc, i64 8 ; 2 uses
  %i.czg = load i8, ptr %i.cyy, align 1, !tbaa !94 ; 2 uses
  %i.czh = sext i8 %i.czg to i64
  %i.czi = shl nsw i64 %i.czh, 49
  %i.czj = and i64 %i.czi, 71494644084506624
  %i.czk = or i64 %i.czj, %i.czd                  ; 2 uses
  %i.czl = icmp sgt i8 %i.czg, -1
  br i1 %i.czl, label %bb.yx, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.czm = getelementptr inbounds nuw i8, ptr %i.cxc, i64 9 ; 2 uses
  %i.czn = load i8, ptr %i.czf, align 1, !tbaa !94 ; 2 uses
  %i.czo = sext i8 %i.czn to i64
  %i.czp = shl nsw i64 %i.czo, 56
  %i.czq = and i64 %i.czp, 9151314442816847872
  %i.czr = or i64 %i.czq, %i.czk                  ; 2 uses
  %i.czs = icmp sgt i8 %i.czn, -1
  br i1 %i.czs, label %bb.yx, label %bb.ys

bb.ys:                                            ; preds = %bb.yr
  %i.czt = getelementptr inbounds nuw i8, ptr %i.cxc, i64 10
  %i.czu = load i8, ptr %i.czm, align 1, !tbaa !94 ; 2 uses
  %i.czv = zext i8 %i.czu to i64
  %i.czw = shl i64 %i.czv, 63
  %i.czx = or i64 %i.czw, %i.czr
  %i.czy = icmp sgt i8 %i.czu, -1
  br i1 %i.czy, label %bb.yx, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.czz = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.czz, ptr noundef nonnull @.str.77)
          to label %.invoke11648 unwind label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.daa = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.czz) #28
  br label %.body.i.i

.lr.ph4139:                                       ; preds = %.preheader1056, %bb.yv
  %indvars.iv7822 = phi i64 [ %indvars.iv.next7823, %bb.yv ], [ 0, %.preheader1056 ] ; 3 uses
  %.1.i.i.i376.i.i4137 = phi i64 [ %i.dah, %bb.yv ], [ 0, %.preheader1056 ] ; 2 uses
  %.170.i.i.i375.i.i4136 = phi ptr [ %i.dad, %bb.yv ], [ %i.cxc, %.preheader1056 ] ; 2 uses
  %i.dab = load i8, ptr %.170.i.i.i375.i.i4136, align 1, !tbaa !94 ; 3 uses
  %i.dac = icmp slt i8 %i.dab, 0
  %i.dad = getelementptr inbounds nuw i8, ptr %.170.i.i.i375.i.i4136, i64 1 ; 3 uses
  br i1 %i.dac, label %bb.yv, label %.critedge.i.i.i379.i.i

bb.yv:                                            ; preds = %.lr.ph4139
  %i.dae = and i8 %i.dab, 127
  %i.daf = zext nneg i8 %i.dae to i64
  %i.dag = shl i64 %i.daf, %indvars.iv7822
  %i.dah = or i64 %i.dag, %.1.i.i.i376.i.i4137
  %indvars.iv.next7823 = add nuw nsw i64 %indvars.iv7822, 7
  %.not.i.i.i378.i.i = icmp eq ptr %i.dad, %i.cxg
  br i1 %.not.i.i.i378.i.i, label %.preheader1056._crit_edge, label %.lr.ph4139, !llvm.loop !46

.preheader1056._crit_edge:                        ; preds = %.preheader1056, %bb.yv
  %i.dai = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dai, ptr noundef nonnull @.str.78)
          to label %.invoke11648 unwind label %bb.yw

bb.yw:                                            ; preds = %.preheader1056._crit_edge
  %i.daj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dai) #28
  br label %.body.i.i

.critedge.i.i.i379.i.i:                           ; preds = %.lr.ph4139
  %i.dak = zext nneg i8 %i.dab to i64
  %i.dal = shl i64 %i.dak, %indvars.iv7822
  %i.dam = or i64 %i.dal, %.1.i.i.i376.i.i4137
  br label %bb.yx

bb.yx:                                            ; preds = %.critedge.i.i.i379.i.i, %bb.ys, %bb.yr, %bb.yq, %bb.yp, %bb.yo, %bb.yn, %bb.ym, %bb.yl, %bb.yk
  %.271.i.i.i380.i.i = phi ptr [ %i.dad, %.critedge.i.i.i379.i.i ], [ %i.czt, %bb.ys ], [ %i.cxp, %bb.yk ], [ %i.cxw, %bb.yl ], [ %i.cyd, %bb.ym ], [ %i.cyk, %bb.yn ], [ %i.cyr, %bb.yo ], [ %i.cyy, %bb.yp ], [ %i.czf, %bb.yq ], [ %i.czm, %bb.yr ]
  %.2.i.i.i381.i.i = phi i64 [ %i.dam, %.critedge.i.i.i379.i.i ], [ %i.czx, %bb.ys ], [ %i.cxu, %bb.yk ], [ %i.cyb, %bb.yl ], [ %i.cyi, %bb.ym ], [ %i.cyp, %bb.yn ], [ %i.cyw, %bb.yo ], [ %i.czd, %bb.yp ], [ %i.czk, %bb.yq ], [ %i.czr, %bb.yr ]
  %i.dan = ptrtoint ptr %.271.i.i.i380.i.i to i64
  %i.dao = sub i64 %i.dan, %i.cxk
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i.i

_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i.i: ; preds = %bb.yx, %bb.yi
  %.0679 = phi i64 [ 1, %bb.yi ], [ %i.dao, %bb.yx ] ; 2 uses
  %.072.i.i.i383.i.i = phi i64 [ %i.cxj, %bb.yi ], [ %.2.i.i.i381.i.i, %bb.yx ] ; 7 uses
  %i.dap = add i64 %.072.i.i.i383.i.i, %.0679     ; 6 uses
  %i.daq = icmp ult i64 %i.cxa, %i.dap
  br i1 %i.daq, label %bb.yy, label %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i.i, !prof !169

bb.yy:                                            ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i.i
  %i.dar = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dar, ptr noundef nonnull @.str.89)
          to label %.invoke11648 unwind label %bb.yz

bb.yz:                                            ; preds = %bb.yy
  %i.das = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dar) #28
  br label %.body.i.i

_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i.i: ; preds = %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i.i382.i.i
  %i.dat = load ptr, ptr %i.cxf, align 8, !tbaa !95 ; 2 uses
  %i.dau = getelementptr inbounds nuw i8, ptr %i.cxf, i64 16 ; 2 uses
  %i.dav = icmp eq ptr %i.dat, %i.dau
  br i1 %i.dav, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i.i
  %i.daw = load i64, ptr %i.dau, align 8, !tbaa !94
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i204: ; preds = %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203
  %i.dax = phi i64 [ %i.daw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ 15, %_ZN6iguana6detail12from_pb_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_RSt17basic_string_viewIcS5_Ej.exit.i384.i.i ]
  %i.day = icmp ugt i64 %.072.i.i.i383.i.i, %i.dax
  br i1 %i.day, label %bb.za, label %.noexc137.i

bb.za:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i204
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.cxf, i64 noundef %.072.i.i.i383.i.i)
          to label %.noexc207 unwind label %.loopexit.split-lp1042.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc207:                                        ; preds = %bb.za
  %.pre.i205 = load ptr, ptr %i.cxf, align 8, !tbaa !95
  br label %.noexc137.i

.noexc137.i:                                      ; preds = %.noexc207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i204
  %i.daz = phi ptr [ %.pre.i205, %.noexc207 ], [ %i.dat, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i204 ]
  %i.dba = getelementptr inbounds nuw i8, ptr %i.cxf, i64 8
  store i64 %.072.i.i.i383.i.i, ptr %i.dba, align 8, !tbaa !93
  %i.dbb = getelementptr inbounds nuw i8, ptr %i.daz, i64 %.072.i.i.i383.i.i
  store i8 0, ptr %i.dbb, align 1, !tbaa !94
  %i.dbc = load ptr, ptr %i.cxf, align 8, !tbaa !95
  %i.dbd = getelementptr inbounds nuw i8, ptr %i.dbc, i64 %.072.i.i.i383.i.i
  store i8 0, ptr %i.dbd, align 1, !tbaa !94
  %i.dbe = load ptr, ptr %i.cxf, align 8, !tbaa !95
  %i.dbf = load ptr, ptr %i.da, align 8, !tbaa !439
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dbf, i64 %.0679
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dbe, ptr align 1 %i.dbg, i64 %.072.i.i.i383.i.i, i1 false)
  %i.dbh = load i64, ptr %12, align 8, !tbaa !438 ; 5 uses
  %i.dbi = icmp ugt i64 %i.dap, %i.dbh
  br i1 %i.dbi, label %.invoke11646, label %.noexc138.i

.noexc138.i:                                      ; preds = %.noexc137.i
  %i.dbj = sub nuw i64 %i.dbh, %i.dap             ; 3 uses
  %i.dbk = load ptr, ptr %i.da, align 8, !tbaa !439 ; 2 uses
  %i.dbl = getelementptr inbounds nuw i8, ptr %i.dbk, i64 %i.dap ; 14 uses
  store i64 %i.dbj, ptr %12, align 8, !tbaa !249
  store ptr %i.dbl, ptr %i.da, align 8, !tbaa !363
  %i.dbm = icmp eq i64 %i.dbh, %i.dap
  br i1 %i.dbm, label %.critedge.i329.i.i, label %bb.zb

bb.zb:                                            ; preds = %.noexc138.i
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbk, i64 %i.dbh
  %i.dbo = load i8, ptr %i.dbl, align 1, !tbaa !94 ; 3 uses
  %i.dbp = icmp sgt i8 %i.dbo, -1
  br i1 %i.dbp, label %bb.zc, label %bb.zd

bb.zc:                                            ; preds = %bb.zb
  %i.dbq = zext nneg i8 %i.dbo to i64
  br label %_ZN6iguana6detail13decode_varintISt17basic_string_viewIcSt11char_traitsIcEEEEmRT_Rm.exit.i393.i.i

bb.zd:                                            ; preds = %bb.zb
  %i.dbr = ptrtoint ptr %i.dbl to i64
  %i.dbs = icmp ugt i64 %i.dbj, 9
  br i1 %i.dbs, label %bb.ze, label %.lr.ph4145, !prof !257

bb.ze:                                            ; preds = %bb.zd
  %i.dbt = and i8 %i.dbo, 127
  %i.dbu = zext nneg i8 %i.dbt to i64
  %i.dbv = getelementptr inbounds nuw i8, ptr %i.dbl, i64 1
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.dbl, i64 2 ; 2 uses
  %i.dbx = load i8, ptr %i.dbv, align 1, !tbaa !94 ; 2 uses
  %i.dby = sext i8 %i.dbx to i64
  %i.dbz = shl nsw i64 %i.dby, 7
  %i.dca = and i64 %i.dbz, 16256
  %i.dcb = or disjoint i64 %i.dca, %i.dbu         ; 2 uses
  %i.dcc = icmp sgt i8 %i.dbx, -1
  br i1 %i.dcc, label %bb.zr, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dbl, i64 3 ; 2 uses
  %i.dce = load i8, ptr %i.dbw, align 1, !tbaa !94 ; 2 uses
  %i.dcf = sext i8 %i.dce to i64
  %i.dcg = shl nsw i64 %i.dcf, 14
  %i.dch = and i64 %i.dcg, 2080768
  %i.dci = or disjoint i64 %i.dch, %i.dcb         ; 2 uses
  %i.dcj = icmp sgt i8 %i.dce, -1
  br i1 %i.dcj, label %bb.zr, label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dbl, i64 4 ; 2 uses
  %i.dcl = load i8, ptr %i.dcd, align 1, !tbaa !94 ; 2 uses
  %i.dcm = sext i8 %i.dcl to i64
  %i.dcn = shl nsw i64 %i.dcm, 21
  %i.dco = and i64 %i.dcn, 266338304
  %i.dcp = or disjoint i64 %i.dco, %i.dci         ; 2 uses
  %i.dcq = icmp sgt i8 %i.dcl, -1
  br i1 %i.dcq, label %bb.zr, label %bb.zh

bb.zh:                                            ; preds = %bb.zg
  %i.dcr = getelementptr inbounds nuw i8, ptr %i.dbl, i64 5 ; 2 uses
  %i.dcs = load i8, ptr %i.dck, align 1, !tbaa !94 ; 2 uses
  %i.dct = sext i8 %i.dcs to i64
  %i.dcu = shl nsw i64 %i.dct, 28
  %i.dcv = and i64 %i.dcu, 34091302912
  %i.dcw = or disjoint i64 %i.dcv, %i.dcp         ; 6 uses
  %i.dcx = icmp sgt i8 %i.dcs, -1
  br i1 %i.dcx, label %bb.zr, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.dcy = getelementptr inbounds nuw i8, ptr %i.dbl, i64 6 ; 2 uses
  %i.dcz = load i8, ptr %i.dcr, align 1, !tbaa !94
  %i.dda = icmp sgt i8 %i.dcz, -1
  br i1 %i.dda, label %bb.zr, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dbl, i64 7 ; 2 uses
  %i.ddc = load i8, ptr %i.dcy, align 1, !tbaa !94
  %i.ddd = icmp sgt i8 %i.ddc, -1
  br i1 %i.ddd, label %bb.zr, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  %i.dde = getelementptr inbounds nuw i8, ptr %i.dbl, i64 8 ; 2 uses
  %i.ddf = load i8, ptr %i.ddb, align 1, !tbaa !94
  %i.ddg = icmp sgt i8 %i.ddf, -1
  br i1 %i.ddg, label %bb.zr, label %bb.zl
end_hunk_30
