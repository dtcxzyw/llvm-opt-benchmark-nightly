inline.NumInlined: 851
inline.NumDeleted: 406
begin_hunk_0_@_ZN6Assimp7Blender9DNAParser5ParseEv:bb.a
bb.cw:                                            ; preds = %bb.cs
  invoke void @_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mi, ptr %i.no, ptr noundef nonnull align 8 dereferenceable(100) %7)
          to label %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE9push_backEOS2_.exit unwind label %bb.dd

_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZN6Assimp7Blender5FieldC2EOS1_.exit.i.i, %bb.cw
  %i.om = load ptr, ptr %i.kh, align 8            ; 2 uses
  %i.on = icmp eq ptr %i.om, %i.ki
  br i1 %i.on, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE9push_backEOS2_.exit
  %i.oo = load i64, ptr %i.ki, align 8
  %i.op = add i64 %i.oo, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.op) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE9push_backEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.oq = load ptr, ptr %7, align 8               ; 2 uses
  %i.or = icmp eq ptr %i.oq, %i.kf
  br i1 %i.or, label %_ZN6Assimp7Blender5FieldD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.os = load i64, ptr %i.kf, align 8
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ot) #23
  br label %_ZN6Assimp7Blender5FieldD2Ev.exit

_ZN6Assimp7Blender5FieldD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.ou = load ptr, ptr %i.mk, align 8            ; 9 uses
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 -104 ; 15 uses
  %i.ow = getelementptr inbounds i8, ptr %i.ou, i64 -32
  store i64 %.0103373, ptr %i.ow, align 8
  %i.ox = load i16, ptr %i.e, align 2
  %i.oy = zext i16 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = getelementptr inbounds i8, ptr %i.ou, i64 -72
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.pb, ptr noundef nonnull align 8 dereferenceable(32) %i.pa)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit247 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit247: ; preds = %_ZN6Assimp7Blender5FieldD2Ev.exit
  %i.pc = load i16, ptr %i.e, align 2
  %i.pd = zext i16 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [40 x i8], ptr %i.nf, i64 %i.pd
  %i.pf = load i64, ptr %i.pe, align 8
  %i.pg = getelementptr inbounds i8, ptr %i.ou, i64 -40 ; 5 uses
  store i64 %i.pf, ptr %i.pg, align 8
  %i.ph = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 2 ; 2 uses
  %i.pj = load ptr, ptr %i.v, align 8
  %i.pk = icmp ugt ptr %i.pi, %i.pj
  br i1 %i.pk, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit247
  %i.pl = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, ptr noundef nonnull @.str.29)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  invoke void @__cxa_throw(ptr nonnull %i.pl, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %.noexc253 unwind label %.loopexit.split-lp

.noexc253:                                        ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cx
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.pl) #20
  br label %.body242

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit247
  %i.pn = load i16, ptr %i.ph, align 1            ; 2 uses
  %.sroa.6.0.extract.shift.i.i248 = lshr i16 %i.pn, 8 ; 2 uses
  %i.po = load i8, ptr %i.ab, align 8, !range !5, !noundef !3
  %i.pp = trunc nuw i8 %i.po to i1                ; 2 uses
  store ptr %i.pi, ptr %i.s, align 8
  %i.pq = and i16 %i.pn, 255                      ; 2 uses
  %.sroa.6.0.insert.ext.i.i249 = select i1 %i.pp, i16 %.sroa.6.0.extract.shift.i.i248, i16 %i.pq
  %.sroa.6.0.insert.shift.i.i250 = shl nuw i16 %.sroa.6.0.insert.ext.i.i249, 8
  %.sroa.02.0.insert.ext.i.i251 = select i1 %i.pp, i16 %i.pq, i16 %.sroa.6.0.extract.shift.i.i248
  %.sroa.02.0.insert.insert.i.i252 = or disjoint i16 %.sroa.6.0.insert.shift.i.i250, %.sroa.02.0.insert.ext.i.i251 ; 2 uses
  store i16 %.sroa.02.0.insert.insert.i.i252, ptr %i.e, align 2
  %i.pr = zext i16 %.sroa.02.0.insert.insert.i.i252 to i64 ; 2 uses
  %i.ps = load ptr, ptr %i.bt, align 8
  %i.pt = load ptr, ptr %4, align 8               ; 2 uses
  %i.pu = ptrtoint ptr %i.ps to i64
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = sub i64 %i.pu, %i.pv
  %i.px = ashr exact i64 %i.pw, 5                 ; 2 uses
  %.not116 = icmp ugt i64 %i.px, %i.pr
  br i1 %.not116, label %bb.dg, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.py = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store i64 %i.px, ptr %i.g, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA51_KcRtRA18_S1_mRA10_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.py, ptr noundef nonnull align 1 dereferenceable(51) @.str.14, ptr noundef nonnull align 2 dereferenceable(2) %i.e, ptr noundef nonnull align 1 dereferenceable(18) @.str.11, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.12)
          to label %bb.dc unwind label %bb.df

bb.dc:                                            ; preds = %bb.db
  invoke void @__cxa_throw(ptr nonnull %i.py, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.et unwind label %bb.de

bb.dd:                                            ; preds = %bb.cw
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp7Blender5FieldD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.body242

.loopexit:                                        ; preds = %_ZN6Assimp7Blender5FieldD2Ev.exit, %bb.dg, %.critedge.i, %.noexc274
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body242

.loopexit.split-lp:                               ; preds = %bb.cy
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body242

bb.de:                                            ; preds = %bb.dc
  %i.qa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %.body242

bb.df:                                            ; preds = %bb.db
  %i.qb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @__cxa_free_exception(ptr nonnull %i.py) #20
  br label %.body242

bb.dg:                                            ; preds = %bb.da
  %i.qc = getelementptr inbounds nuw [32 x i8], ptr %i.pt, i64 %i.pr
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ov, ptr noundef nonnull align 8 dereferenceable(32) %i.qc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit258 unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit258: ; preds = %bb.dg
  %i.qd = getelementptr inbounds i8, ptr %i.ou, i64 -8 ; 4 uses
  store i32 0, ptr %i.qd, align 8
  %i.qe = load ptr, ptr %i.ov, align 8            ; 2 uses
  %i.qf = load i8, ptr %i.qe, align 1
  %i.qg = icmp eq i8 %i.qf, 42
  br i1 %i.qg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit258
  %i.qh = load ptr, ptr %0, align 8, !nonnull !3, !align !4
  %i.qi = load i8, ptr %i.qh, align 8, !range !5, !noundef !3
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = select i1 %i.qj, i64 8, i64 4
  store i64 %i.qk, ptr %i.pg, align 8
  store i32 1, ptr %i.qd, align 8
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit258
  %i.ql = getelementptr inbounds i8, ptr %i.ou, i64 -96 ; 6 uses
  %i.qm = load i64, ptr %i.ql, align 8, !noalias !13
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qm
  %i.qo = getelementptr inbounds i8, ptr %i.qn, i64 -1
  %i.qp = load i8, ptr %i.qo, align 1
  %i.qq = icmp eq i8 %i.qp, 93
  br i1 %i.qq, label %bb.dj, label %bb.eb

bb.dj:                                            ; preds = %bb.di
  %i.qr = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ov, i8 noundef signext 91, i64 noundef 0) #20 ; 2 uses
  %i.qs = icmp eq i64 %i.qr, -1
  br i1 %i.qs, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %bb.dj
  %i.qt = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA51_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.qt, ptr noundef nonnull align 1 dereferenceable(51) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %i.ov)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  invoke void @__cxa_throw(ptr nonnull %i.qt, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.et unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.qt) #20
  br label %.body242

bb.dn:                                            ; preds = %bb.dl
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %.body242

bb.do:                                            ; preds = %bb.dj
  %i.qw = load i32, ptr %i.qd, align 8
  %i.qx = or i32 %i.qw, 2
  store i32 %i.qx, ptr %i.qd, align 8
  %i.qy = getelementptr inbounds i8, ptr %i.ou, i64 -24 ; 3 uses
  %i.qz = getelementptr inbounds i8, ptr %i.ou, i64 -16 ; 3 uses
  store i64 1, ptr %i.qz, align 8
  store i64 1, ptr %i.qy, align 8
  %i.ra = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ov, i8 noundef signext 91, i64 noundef 0) #20 ; 2 uses
  %i.rb = icmp eq i64 %i.ra, -1
  %.pre400 = load ptr, ptr %i.ov, align 8         ; 2 uses
  br i1 %i.rb, label %_ZN6Assimp7Blender3DNA16ExtractArraySizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.rc = add nuw i64 %i.ra, 1                    ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.pre400, i64 %i.rc ; 2 uses
  %i.re = load i8, ptr %i.rd, align 1             ; 2 uses
  %i.rf = add i8 %i.re, -58
  %or.cond11.i.i = icmp ult i8 %i.rf, -10
  br i1 %or.cond11.i.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.dp, %.lr.ph.i.i
  %i.rg = phi i8 [ %i.rl, %.lr.ph.i.i ], [ %i.re, %bb.dp ]
  %.013.i.i = phi i32 [ %i.rj, %.lr.ph.i.i ], [ 0, %bb.dp ]
  %.0812.i.i = phi ptr [ %i.rk, %.lr.ph.i.i ], [ %i.rd, %bb.dp ]
  %i.rh = mul i32 %.013.i.i, 10
  %narrow.i.i = add nsw i8 %i.rg, -48
  %i.ri = zext nneg i8 %narrow.i.i to i32
  %i.rj = add i32 %i.rh, %i.ri                    ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.0812.i.i, i64 1 ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1             ; 2 uses
  %i.rm = add i8 %i.rl, -58
  %or.cond.i.i = icmp ult i8 %i.rm, -10
  br i1 %or.cond.i.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !16

_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit.i:     ; preds = %.lr.ph.i.i
  %i.rn = zext i32 %i.rj to i64
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit.i

_ZN6Assimp9strtoul10EPKcPS1_.exit.i:              ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit.i, %bb.dp
  %.0.lcssa.i.i = phi i64 [ 0, %bb.dp ], [ %i.rn, %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit.i ]
  store i64 %.0.lcssa.i.i, ptr %i.qy, align 8
  %i.ro = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ov, i8 noundef signext 91, i64 noundef %i.rc) #20 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, -1
  %.pre399 = load ptr, ptr %i.ov, align 8         ; 3 uses
  br i1 %i.rp, label %_ZN6Assimp7Blender3DNA16ExtractArraySizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.i
  %i.rq = getelementptr inbounds nuw i8, ptr %.pre399, i64 %i.ro
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 1 ; 2 uses
  %i.rs = load i8, ptr %i.rr, align 1             ; 2 uses
  %i.rt = add i8 %i.rs, -58
  %or.cond11.i12.i = icmp ult i8 %i.rt, -10
  br i1 %or.cond11.i12.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit20.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %bb.dq, %.lr.ph.i13.i
  %i.ru = phi i8 [ %i.rz, %.lr.ph.i13.i ], [ %i.rs, %bb.dq ]
  %.013.i14.i = phi i32 [ %i.rx, %.lr.ph.i13.i ], [ 0, %bb.dq ]
  %.0812.i15.i = phi ptr [ %i.ry, %.lr.ph.i13.i ], [ %i.rr, %bb.dq ]
  %i.rv = mul i32 %.013.i14.i, 10
  %narrow.i16.i = add nsw i8 %i.ru, -48
  %i.rw = zext nneg i8 %narrow.i16.i to i32
  %i.rx = add i32 %i.rv, %i.rw                    ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.0812.i15.i, i64 1 ; 2 uses
  %i.rz = load i8, ptr %i.ry, align 1             ; 2 uses
  %i.sa = add i8 %i.rz, -58
  %or.cond.i17.i = icmp ult i8 %i.sa, -10
  br i1 %or.cond.i17.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit20.loopexit.i, label %.lr.ph.i13.i, !llvm.loop !16

_ZN6Assimp9strtoul10EPKcPS1_.exit20.loopexit.i:   ; preds = %.lr.ph.i13.i
  %i.sb = zext i32 %i.rx to i64
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit20.i

_ZN6Assimp9strtoul10EPKcPS1_.exit20.i:            ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit20.loopexit.i, %bb.dq
  %.0.lcssa.i19.i = phi i64 [ 0, %bb.dq ], [ %i.sb, %_ZN6Assimp9strtoul10EPKcPS1_.exit20.loopexit.i ]
  store i64 %.0.lcssa.i19.i, ptr %i.qz, align 8
  br label %_ZN6Assimp7Blender3DNA16ExtractArraySizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit

_ZN6Assimp7Blender3DNA16ExtractArraySizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit: ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit20.i, %_ZN6Assimp9strtoul10EPKcPS1_.exit.i, %bb.do
  %i.sc = phi ptr [ %.pre399, %_ZN6Assimp9strtoul10EPKcPS1_.exit20.i ], [ %.pre399, %_ZN6Assimp9strtoul10EPKcPS1_.exit.i ], [ %.pre400, %bb.do ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.sd = load i64, ptr %i.ql, align 8, !noalias !17
  store ptr %i.kl, ptr %8, align 8, !alias.scope !17
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.qr, i64 %i.sd) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !17
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !noalias !17
  %i.se = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.se, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZN6Assimp7Blender3DNA16ExtractArraySizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit
  %i.sf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc259 unwind label %bb.ea ; 2 uses

.noexc259:                                        ; preds = %.noexc10.i.i
  store ptr %i.sf, ptr %8, align 8, !alias.scope !17
  %i.sg = load i64, ptr %i.a, align 8, !noalias !17
  store i64 %i.sg, ptr %i.kl, align 8, !alias.scope !17
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc259, %_ZN6Assimp7Blender3DNA16ExtractArraySizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit
  %i.sh = phi ptr [ %i.sf, %.noexc259 ], [ %i.kl, %_ZN6Assimp7Blender3DNA16ExtractArraySizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm.exit ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.ds [
    i64 1, label %bb.dr
    i64 0, label %bb.dt
  ]

bb.dr:                                            ; preds = %._crit_edge.i.i.i
  %i.si = load i8, ptr %i.sc, align 1
  store i8 %i.si, ptr %i.sh, align 1
  br label %bb.dt

bb.ds:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sh, ptr align 1 %i.sc, i64 %spec.select.i.i.i, i1 false)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr, %._crit_edge.i.i.i
  %i.sj = load i64, ptr %i.a, align 8, !noalias !17 ; 2 uses
  store i64 %i.sj, ptr %i.km, align 8, !alias.scope !17
  %i.sk = load ptr, ptr %8, align 8, !alias.scope !17
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sj
  store i8 0, ptr %i.sl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !17
  %i.sm = load ptr, ptr %i.ov, align 8            ; 6 uses
  %i.sn = getelementptr inbounds i8, ptr %i.ou, i64 -88 ; 4 uses
  %i.so = icmp eq ptr %i.sm, %i.sn
  %i.sp = load ptr, ptr %8, align 8               ; 6 uses
  %i.sq = icmp eq ptr %i.sp, %i.kl                ; 2 uses
  br i1 %i.so, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.dt
  br i1 %i.sq, label %bb.du, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.dt
  br i1 %i.sq, label %bb.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.du:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.sr = load i64, ptr %i.km, align 8            ; 3 uses
  %i.ss = icmp ult i64 %i.sr, 16
  call void @llvm.assume(i1 %i.ss)
  %.not21.i = icmp eq ptr %8, %i.ov
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.dv, !prof !20

bb.dv:                                            ; preds = %bb.du
  switch i64 %i.sr, label %bb.dx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.dw
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.st = load i8, ptr %i.sp, align 1
  store i8 %i.st, ptr %i.sm, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.dx:                                            ; preds = %bb.dv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sm, ptr align 1 %i.sp, i64 %i.sr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.dx, %bb.dw, %bb.dv
  %i.su = load i64, ptr %i.km, align 8            ; 2 uses
  store i64 %i.su, ptr %i.ql, align 8
  %i.sv = load ptr, ptr %i.ov, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.su
  store i8 0, ptr %i.sw, align 1
  %.pre.i = load ptr, ptr %8, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.sp, ptr %i.ov, align 8
  %i.sx = load i64, ptr %i.km, align 8
  store i64 %i.sx, ptr %i.ql, align 8
  %i.sy = load i64, ptr %i.kl, align 8
  store i64 %i.sy, ptr %i.sn, align 8
  br label %bb.dz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.sz = load i64, ptr %i.sn, align 8
  store ptr %i.sp, ptr %i.ov, align 8
  %i.ta = load i64, ptr %i.km, align 8
  store i64 %i.ta, ptr %i.ql, align 8
  %i.tb = load i64, ptr %i.kl, align 8
  store i64 %i.tb, ptr %i.sn, align 8
  %.not.i = icmp eq ptr %i.sm, null
  br i1 %.not.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.sm, ptr %8, align 8
  store i64 %i.sz, ptr %i.kl, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.dz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.kl, ptr %8, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.dy, %bb.dz
  %i.tc = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.sm, %bb.dy ], [ %i.kl, %bb.dz ], [ %i.sp, %bb.du ]
  store i64 0, ptr %i.km, align 8
  store i8 0, ptr %i.tc, align 1
  %i.td = load ptr, ptr %8, align 8               ; 2 uses
  %i.te = icmp eq ptr %i.td, %i.kl
  br i1 %i.te, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.tf = load i64, ptr %i.kl, align 8
  %i.tg = add i64 %i.tf, 1
  call void @_ZdlPvm(ptr noundef %i.td, i64 noundef %i.tg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.th = load i64, ptr %i.qy, align 8
  %i.ti = load i64, ptr %i.qz, align 8
  %i.tj = mul i64 %i.ti, %i.th
  %i.tk = load i64, ptr %i.pg, align 8
  %i.tl = mul i64 %i.tj, %i.tk
  store i64 %i.tl, ptr %i.pg, align 8
  br label %bb.eb

bb.ea:                                            ; preds = %.noexc10.i.i
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %.body242

bb.eb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.di
  %i.tn = load ptr, ptr %i.mk, align 8
  %i.to = load ptr, ptr %i.mi, align 8
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = ptrtoint ptr %i.to to i64
  %i.tr = sub i64 %i.tp, %i.tq
  %i.ts = sdiv exact i64 %i.tr, 104
  %i.tt = load ptr, ptr %i.mn, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.tt, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.eb
  %i.tu = load i64, ptr %i.ql, align 8            ; 4 uses
  %i.tv = load ptr, ptr %i.ov, align 8            ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.tt, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.mo, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ]
  %i.tw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.tx = load i64, ptr %i.tw, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.tu, i64 %i.tx) ; 2 uses
  %i.ty = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ty, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.ec
  %i.tz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = call i32 @memcmp(ptr noundef %i.ua, ptr noundef %i.tv, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ub, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.ec
  %i.uc = sub i64 %i.tx, %i.tu
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.uc, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ub, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ud = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.ud, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 7 uses
  %.1.in.v.i.i.i.i = select i1 %i.ud, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i260 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i260, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i, label %bb.ec, !llvm.loop !21

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.ue = icmp eq ptr %.19.i.i.i.i, %i.mo
  br i1 %i.ue, label %.critedge.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i
  %i.uf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ug = load i64, ptr %i.uf, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ug, i64 %i.tu) ; 2 uses
  %i.uh = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.uh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.ed
  %i.ui = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.uj = load ptr, ptr %i.ui, align 8
  %i.uk = call i32 @memcmp(ptr noundef %i.tv, ptr noundef %i.uj, i64 noundef %.sroa.speculated.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i4.i = icmp eq i32 %i.uk, 0
  br i1 %.not.i.i.i4.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.ed
  %i.ul = sub i64 %i.tu, %i.ug
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ul, i64 -2147483648)
  %.08.i.i.i.i.i261 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i261 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.uk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.um = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.um, label %.critedge.i, label %bb.ej

.critedge.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i, %bb.eb
  %.08.lcssa.i.i.i12.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEE11lower_boundERS9_.exit.i ], [ %i.mo, %bb.eb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.ov, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.mm, ptr %1, align 8
  %i.un = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22
          to label %.noexc274 unwind label %.loopexit ; 8 uses

.noexc274:                                        ; preds = %.critedge.i
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.mm, ptr noundef nonnull %i.un, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc275 unwind label %.loopexit

.noexc275:                                        ; preds = %.noexc274
  store ptr %i.un, ptr %i.kn, align 8
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 32 ; 3 uses
  %i.up = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %i.mm, ptr %.08.lcssa.i.i.i12.i, ptr noundef nonnull align 8 dereferenceable(32) %i.uo)
          to label %bb.ee unwind label %bb.eh     ; 2 uses

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE7reserveEm:bb.a
  store ptr %i.af, ptr %i.ac, align 8, !alias.scope !36, !noalias !33
  store i64 0, ptr %i.an, align 8, !alias.scope !36, !noalias !33
  store i8 0, ptr %i.af, align 8, !alias.scope !36, !noalias !33
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ap, ptr noundef nonnull align 8 dereferenceable(36) %i.aq, i64 36, i1 false), !alias.scope !38
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %.not.i.i.i = icmp eq ptr %i.ar, %i.k
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !39

_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit, %_ZNSt12_Vector_baseIN6Assimp7Blender5FieldESaIS2_EE11_M_allocateEm.exit
  %i.at = phi ptr [ %.pre, %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit ], [ %i.d, %_ZNSt12_Vector_baseIN6Assimp7Blender5FieldESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.at, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN6Assimp7Blender5FieldESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #23
  br label %_ZNSt12_Vector_baseIN6Assimp7Blender5FieldESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp7Blender5FieldESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp7Blender5FieldESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ay, ptr %i.j, align 8
  %i.az = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %1
  store ptr %i.az, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN6Assimp7Blender5FieldESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA51_KcRtRA18_S1_mRA10_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(51) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(10) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %6)
  invoke void @_ZN15DeadlyErrorBaseC2IJRtRA18_KcmRA10_S2_ERA51_S2_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 1 dereferenceable(51) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(10) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %6, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %6, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #20
  resume { ptr, i32 } %i.o
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Blender5FieldD2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA51_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(51) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA51_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(51) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp7Blender3DNA16ExtractArraySizeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 1, ptr %i.a, align 8
  store i64 1, ptr %1, align 8
  %i.b = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 91, i64 noundef 0) #20 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i64 %i.b, 1                      ; 2 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 2 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = add i8 %i.g, -58
  %or.cond11.i = icmp ult i8 %i.h, -10
  br i1 %or.cond11.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.i = phi i8 [ %i.n, %.lr.ph.i ], [ %i.g, %bb.b ]
  %.013.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %.0812.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.f, %bb.b ]
  %i.j = mul i32 %.013.i, 10
  %narrow.i = add nsw i8 %i.i, -48
  %i.k = zext nneg i8 %narrow.i to i32
  %i.l = add i32 %i.j, %i.k                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0812.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %i.o = add i8 %i.n, -58
  %or.cond.i = icmp ult i8 %i.o, -10
  br i1 %or.cond.i, label %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !16

_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit:       ; preds = %.lr.ph.i
  %i.p = zext i32 %i.l to i64
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit

_ZN6Assimp9strtoul10EPKcPS1_.exit:                ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit, %bb.b
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.p, %_ZN6Assimp9strtoul10EPKcPS1_.exit.loopexit ]
  store i64 %.0.lcssa.i, ptr %1, align 8
  %i.q = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 91, i64 noundef %i.d) #20 ; 2 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = add i8 %i.v, -58
  %or.cond11.i12 = icmp ult i8 %i.w, -10
  br i1 %or.cond11.i12, label %_ZN6Assimp9strtoul10EPKcPS1_.exit20, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.c, %.lr.ph.i13
  %i.x = phi i8 [ %i.ac, %.lr.ph.i13 ], [ %i.v, %bb.c ]
  %.013.i14 = phi i32 [ %i.aa, %.lr.ph.i13 ], [ 0, %bb.c ]
  %.0812.i15 = phi ptr [ %i.ab, %.lr.ph.i13 ], [ %i.u, %bb.c ]
  %i.y = mul i32 %.013.i14, 10
  %narrow.i16 = add nsw i8 %i.x, -48
  %i.z = zext nneg i8 %narrow.i16 to i32
  %i.aa = add i32 %i.y, %i.z                      ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0812.i15, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = add i8 %i.ac, -58
  %or.cond.i17 = icmp ult i8 %i.ad, -10
  br i1 %or.cond.i17, label %_ZN6Assimp9strtoul10EPKcPS1_.exit20.loopexit, label %.lr.ph.i13, !llvm.loop !16

_ZN6Assimp9strtoul10EPKcPS1_.exit20.loopexit:     ; preds = %.lr.ph.i13
  %i.ae = zext i32 %i.aa to i64
  br label %_ZN6Assimp9strtoul10EPKcPS1_.exit20

_ZN6Assimp9strtoul10EPKcPS1_.exit20:              ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit20.loopexit, %bb.c
  %.0.lcssa.i19 = phi i64 [ 0, %bb.c ], [ %i.ae, %_ZN6Assimp9strtoul10EPKcPS1_.exit20.loopexit ]
  store i64 %.0.lcssa.i19, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp9strtoul10EPKcPS1_.exit, %bb.a, %_ZN6Assimp9strtoul10EPKcPS1_.exit20
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5debugIJRA17_KcmRA26_S2_RmRA8_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %1) #20
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %7, ptr noundef nonnull align 1 dereferenceable(17) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA17_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7) #20
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA17_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJRA26_KcRmRA8_S2_EmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSB_SC_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(26) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA17_cEERKT_.exit
  %i.d = load ptr, ptr %6, align 8
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %6, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %7, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %7, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #20
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA17_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %6, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp7Blender3DNA22AddPrimitiveStructuresEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.Assimp::Blender::Structure", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.Assimp::Blender::Structure", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.Assimp::Blender::Structure", align 8 ; 16 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.Assimp::Blender::Structure", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.Assimp::Blender::Structure", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 15 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.f, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.f, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.h, align 1
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmSt4lessIS5_ESaISt4pairIKS5_mEEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 120
  store i64 %i.m, ptr %i.i, align 8
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.f
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.p = load i64, ptr %i.f, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.r, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.u, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 -1, ptr %i.z, align 8
  %i.aa = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EE9push_backEOS2_.exit unwind label %bb.g ; 0 uses

_ZNSt6vectorIN6Assimp7Blender9StructureESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6Assimp7Blender9StructureD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.ab = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -120
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -112
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef 0, i64 noundef %i.ae, ptr noundef nonnull @.str.19, i64 noundef 3) ; 0 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  store i64 4, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger13formatMessageIJERA8_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #20
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #20
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned long>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %0, ptr %5, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.e, ptr %i.b, align 8
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.b, align 8
  %i.m = load i64, ptr %i.g, align 8
  store i64 %i.m, ptr %i.e, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.n, ptr %i.q, align 8
  store ptr %i.g, ptr %i.d, align 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.g, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.r, align 8
  store ptr %i.a, ptr %i.o, align 8
  %i.s = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 5 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.t, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.q, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.x) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.b, align 8
  %i.ae = tail call i32 @memcmp(ptr noundef %i.ad, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.af = sub i64 %i.x, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.af, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.ag = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.ah = phi i1 [ %i.ag, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ah, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.ai, align 8
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %i.al

bb.h:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.ao = load i64, ptr %i.e, align 8
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.t, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %.sroa.0.011
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{}
!4 = !{i64 8}
!5 = !{i8 0, i8 2}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv: argument 0"}
!15 = distinct !{!15, !"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6rbeginEv"}
!16 = distinct !{!16, !9}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!19 = distinct !{!19, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!27 = distinct !{!27, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_"}
!28 = !{!29}
!29 = distinct !{!29, !27, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!30 = !{!26, !29}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!35 = distinct !{!35, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_"}
!36 = !{!37}
!37 = distinct !{!37, !35, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!38 = !{!34, !37}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{ptr @_ZNSt12__shared_ptrIN6Assimp7Blender8ElemBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!42 = distinct !{null, null}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_: argument 0"}
!45 = distinct !{!45, !"_ZSt16forward_as_tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt5tupleIJDpOT_EES9_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!48 = distinct !{!48, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!51 = distinct !{!51, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!54 = distinct !{!54, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!55 = !{!53, !50, !47}
!56 = distinct !{!56, !9}
!57 = distinct !{null}
!58 = distinct !{!58, !9}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!61 = distinct !{!61, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_"}
!62 = !{!63}
!63 = distinct !{!63, !61, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!64 = !{!60, !63}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!67 = distinct !{!67, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_"}
!68 = !{!69}
!69 = distinct !{!69, !67, !"_ZSt19__relocate_object_aIN6Assimp7Blender9StructureES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!70 = !{!66, !69}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!73 = distinct !{!73, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_"}
!74 = !{!75}
!75 = distinct !{!75, !73, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!76 = !{!72, !75}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!79 = distinct !{!79, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_"}
!80 = !{!81}
!81 = distinct !{!81, !79, !"_ZSt19__relocate_object_aIN6Assimp7Blender5FieldES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!82 = !{!78, !81}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!85 = distinct !{!85, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!88 = distinct !{!88, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!91 = distinct !{!91, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!94 = distinct !{!94, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!95 = !{!93, !90, !87, !84}
end_hunk_2
