Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/cmdline?download=true
inline.NumInlined: 1346
inline.NumDeleted: 496
begin_hunk_0_@_ZN5boost15program_options6detail7cmdline3runEv:bb.a
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = sdiv exact i64 %i.ou, 96
  %i.ow = icmp ugt i64 %i.ov, %i.op
  br i1 %i.ow, label %bb.cp, label %.critedge

bb.cp:                                            ; preds = %bb.co
  %i.ox = getelementptr inbounds nuw [96 x i8], ptr %i.or, i64 %i.op ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !28
  %i.pa = icmp eq i64 %i.oz, 0
  br i1 %i.pa, label %bb.cw, label %.critedge

bb.cq:                                            ; preds = %bb.cb
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cc
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #25
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn165 = phi { ptr, i32 } [ %i.pc, %bb.cr ], [ %i.pb, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ef

bb.ct:                                            ; preds = %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.ch
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #25
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn167 = phi { ptr, i32 } [ %i.pe, %bb.cu ], [ %i.pd, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ef

bb.cw:                                            ; preds = %bb.cp
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !73
  %i.ph = icmp eq i32 %i.pg, 2147483647
  br i1 %i.ph, label %.critedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ox, i64 40
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !51 ; 3 uses
  %i.pk = load ptr, ptr %i.oa, align 8, !tbaa !52 ; 8 uses
  %i.pl = load ptr, ptr %i.ol, align 8, !tbaa !54
  %.not.i261 = icmp eq ptr %i.pk, %i.pl
  br i1 %.not.i261, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 16 ; 3 uses
  store ptr %i.pm, ptr %i.pk, align 8, !tbaa !22
  %i.pn = load ptr, ptr %i.pj, align 8, !tbaa !26 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.pp, ptr %i.b, align 8, !tbaa !24
  %i.pq = icmp ugt i64 %i.pp, 15
  br i1 %i.pq, label %.noexc.i.i264, label %._crit_edge.i.i.i262

.noexc.i.i264:                                    ; preds = %bb.cy
  %i.pr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.pk, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc265 unwind label %bb.dh ; 2 uses

.noexc265:                                        ; preds = %.noexc.i.i264
  store ptr %i.pr, ptr %i.pk, align 8, !tbaa !26
  %i.ps = load i64, ptr %i.b, align 8, !tbaa !24
  store i64 %i.ps, ptr %i.pm, align 8, !tbaa !27
  br label %._crit_edge.i.i.i262

._crit_edge.i.i.i262:                             ; preds = %.noexc265, %bb.cy
  %i.pt = phi ptr [ %i.pr, %.noexc265 ], [ %i.pm, %bb.cy ] ; 2 uses
  switch i64 %i.pp, label %bb.da [
    i64 1, label %bb.cz
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i263
  ]

bb.cz:                                            ; preds = %._crit_edge.i.i.i262
  %i.pu = load i8, ptr %i.pn, align 1, !tbaa !27
  store i8 %i.pu, ptr %i.pt, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i263

bb.da:                                            ; preds = %._crit_edge.i.i.i262
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pt, ptr align 1 %i.pn, i64 %i.pp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i263: ; preds = %bb.da, %bb.cz, %._crit_edge.i.i.i262
  %i.pv = load i64, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store i64 %i.pv, ptr %i.pw, align 8, !tbaa !28
  %i.px = load ptr, ptr %i.pk, align 8, !tbaa !26
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %i.pv
  store i8 0, ptr %i.py, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.pz = load ptr, ptr %i.oa, align 8, !tbaa !52
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 32
  store ptr %i.qa, ptr %i.oa, align 8, !tbaa !52
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit267

bb.db:                                            ; preds = %bb.cx
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.nz, ptr %i.pk, ptr noundef nonnull align 8 dereferenceable(32) %i.pj)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit267 unwind label %bb.dh

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit267: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i263, %bb.db
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ox, i64 64
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !51 ; 3 uses
  %i.qd = load ptr, ptr %i.om, align 8, !tbaa !52 ; 8 uses
  %i.qe = load ptr, ptr %i.on, align 8, !tbaa !54
  %.not.i268 = icmp eq ptr %i.qd, %i.qe
  br i1 %.not.i268, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit267
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 16 ; 3 uses
  store ptr %i.qf, ptr %i.qd, align 8, !tbaa !22
  %i.qg = load ptr, ptr %i.qc, align 8, !tbaa !26 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.qi, ptr %i.a, align 8, !tbaa !24
  %i.qj = icmp ugt i64 %i.qi, 15
  br i1 %i.qj, label %.noexc.i.i271, label %._crit_edge.i.i.i269

.noexc.i.i271:                                    ; preds = %bb.dc
  %i.qk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.qd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc272 unwind label %bb.dh ; 2 uses

.noexc272:                                        ; preds = %.noexc.i.i271
  store ptr %i.qk, ptr %i.qd, align 8, !tbaa !26
  %i.ql = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.ql, ptr %i.qf, align 8, !tbaa !27
  br label %._crit_edge.i.i.i269

._crit_edge.i.i.i269:                             ; preds = %.noexc272, %bb.dc
  %i.qm = phi ptr [ %i.qk, %.noexc272 ], [ %i.qf, %bb.dc ] ; 2 uses
  switch i64 %i.qi, label %bb.de [
    i64 1, label %bb.dd
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i270
  ]

bb.dd:                                            ; preds = %._crit_edge.i.i.i269
  %i.qn = load i8, ptr %i.qg, align 1, !tbaa !27
  store i8 %i.qn, ptr %i.qm, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i270

bb.de:                                            ; preds = %._crit_edge.i.i.i269
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qm, ptr align 1 %i.qg, i64 %i.qi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i270: ; preds = %bb.de, %bb.dd, %._crit_edge.i.i.i269
  %i.qo = load i64, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  store i64 %i.qo, ptr %i.qp, align 8, !tbaa !28
  %i.qq = load ptr, ptr %i.qd, align 8, !tbaa !26
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qo
  store i8 0, ptr %i.qr, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.qs = load ptr, ptr %i.om, align 8, !tbaa !52
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  store ptr %i.qt, ptr %i.om, align 8, !tbaa !52
  br label %bb.dg

bb.df:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit267
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.oo, ptr %i.qd, ptr noundef nonnull align 8 dereferenceable(32) %i.qc)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i270
  %i.qu = add nsw i32 %.094388, -1                ; 2 uses
  %.not169 = icmp eq i32 %i.qu, 0
  br i1 %.not169, label %.critedge, label %bb.co, !llvm.loop !135

bb.dh:                                            ; preds = %bb.df, %.noexc.i.i271, %bb.db, %.noexc.i.i264
  %i.qv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

.critedge:                                        ; preds = %bb.dg, %bb.co, %bb.cw, %bb.cp, %bb.cn, %bb.bt, %bb.cm, %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit260, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit256
  %.3 = phi i32 [ %.095400, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EE9push_backERKS3_.exit256 ], [ %.095400, %bb.bt ], [ %.095400, %_ZN5boost10shared_ptrIKNS_15program_options14value_semanticEED2Ev.exit260 ], [ %.095400, %bb.cm ], [ %.095400, %bb.cn ], [ %.093390, %bb.dg ], [ %.093.in389, %bb.co ], [ %.093.in389, %bb.cw ], [ %.093.in389, %bb.cp ]
  %i.qw = add i32 %.3, 1                          ; 2 uses
  %i.qx = zext i32 %i.qw to i64                   ; 2 uses
  %i.qy = load ptr, ptr %i.km, align 8, !tbaa !69 ; 2 uses
  %i.qz = load ptr, ptr %0, align 8, !tbaa !70    ; 3 uses
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = sdiv exact i64 %i.rc, 96
  %i.re = icmp ugt i64 %i.rd, %i.qx
  br i1 %i.re, label %bb.bo, label %._crit_edge403.loopexit, !llvm.loop !136

._crit_edge411:                                   ; preds = %bb.dj
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !59
  %.not157 = icmp eq ptr %i.rg, null
  br i1 %.not157, label %.loopexit, label %.lr.ph414

.lr.ph410:                                        ; preds = %._crit_edge403, %bb.dj
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.dj ], [ 0, %._crit_edge403 ] ; 2 uses
  %.091407 = phi i32 [ %.192, %bb.dj ], [ 0, %._crit_edge403 ] ; 3 uses
  %i.rh = getelementptr inbounds nuw [96 x i8], ptr %i.kv, i64 %indvars.iv ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !28
  %i.rk = icmp eq i64 %i.rj, 0
  br i1 %i.rk, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %.lr.ph410
  %i.rl = add nsw i32 %.091407, 1
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  store i32 %.091407, ptr %i.rm, align 8, !tbaa !73
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph410, %bb.di
  %.192 = phi i32 [ %i.rl, %bb.di ], [ %.091407, %.lr.ph410 ]
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.rn = and i64 %indvars.iv.next, 4294967295
  %i.ro = icmp ugt i64 %i.ld, %i.rn
  br i1 %i.ro, label %.lr.ph410, label %._crit_edge411, !llvm.loop !137

.lr.ph414:                                        ; preds = %._crit_edge411, %bb.dv
  %i.rp = phi ptr [ %i.sd, %bb.dv ], [ %i.kv, %._crit_edge411 ] ; 2 uses
  %i.rq = phi ptr [ %i.se, %bb.dv ], [ %i.ku, %._crit_edge411 ]
  %i.rr = phi i64 [ %i.sg, %bb.dv ], [ 0, %._crit_edge411 ]
  %.088413 = phi i32 [ %i.sf, %bb.dv ], [ 0, %._crit_edge411 ]
  %.089412 = phi i32 [ %.1, %bb.dv ], [ 0, %._crit_edge411 ] ; 4 uses
  %i.rs = getelementptr inbounds nuw [96 x i8], ptr %i.rp, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 32
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !73
  %.not159 = icmp eq i32 %i.ru, -1
  br i1 %.not159, label %bb.dv, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph414
  %i.rv = load ptr, ptr %i.rf, align 8, !tbaa !59
  %i.rw = invoke noundef i32 @_ZNK5boost15program_options30positional_options_description15max_total_countEv(ptr noundef nonnull align 8 dereferenceable(56) %i.rv)
          to label %bb.dl unwind label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %.not160 = icmp ult i32 %.089412, %i.rw
  br i1 %.not160, label %bb.dt, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  invoke void @_ZN5boost15program_options33too_many_positional_options_errorC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.dn unwind label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN5boost15throw_exceptionINS_15program_options33too_many_positional_options_errorEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %bb.dn
  unreachable

bb.dp:                                            ; preds = %bb.du, %bb.dt, %bb.dk
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dq:                                            ; preds = %bb.dm
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dn
  %i.rz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt11logic_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #25
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn161 = phi { ptr, i32 } [ %i.rz, %bb.dr ], [ %i.ry, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.ef

bb.dt:                                            ; preds = %bb.dl
  %i.sa = load ptr, ptr %i.rf, align 8, !tbaa !59
  %i.sb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5boost15program_options30positional_options_description17name_for_positionB5cxx11Ej(ptr noundef nonnull align 8 dereferenceable(56) %i.sa, i32 noundef %.089412)
          to label %bb.du unwind label %bb.dp

bb.du:                                            ; preds = %bb.dt
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.rs, ptr noundef nonnull align 8 dereferenceable(32) %i.sb)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.dp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.du
  %i.sc = add nuw i32 %.089412, 1
  %.pre461 = load ptr, ptr %i.ks, align 8, !tbaa !69
  %.pre462 = load ptr, ptr %0, align 8, !tbaa !70
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %.lr.ph414
  %i.sd = phi ptr [ %.pre462, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.rp, %.lr.ph414 ] ; 4 uses
  %i.se = phi ptr [ %.pre461, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %i.rq, %.lr.ph414 ] ; 3 uses
  %.1 = phi i32 [ %i.sc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ %.089412, %.lr.ph414 ]
  %i.sf = add i32 %.088413, 1                     ; 2 uses
  %i.sg = zext i32 %i.sf to i64                   ; 2 uses
  %i.sh = ptrtoint ptr %i.se to i64
  %i.si = ptrtoint ptr %i.sd to i64
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = sdiv exact i64 %i.sj, 96                ; 2 uses
  %i.sl = icmp ugt i64 %i.sk, %i.sg
  br i1 %i.sl, label %.lr.ph414, label %.loopexit.loopexit, !llvm.loop !138

.loopexit.loopexit:                               ; preds = %bb.dv
  %i.sm = icmp eq ptr %i.se, %i.sd
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge411
  %.pre-phi465 = phi i64 [ %i.sk, %.loopexit.loopexit ], [ %i.ld, %._crit_edge411 ]
  %i.sn = phi ptr [ %i.sd, %.loopexit.loopexit ], [ %i.kv, %._crit_edge411 ]
  %.not425 = phi i1 [ %i.sm, %.loopexit.loopexit ], [ false, %._crit_edge411 ]
  br i1 %.not425, label %._crit_edge418, label %.lr.ph417.preheader

.lr.ph417.preheader:                              ; preds = %.loopexit
  %i.so = load i32, ptr %i.t, align 8, !tbaa !44
  br label %.lr.ph417

._crit_edge418:                                   ; preds = %bb.ee, %._crit_edge403, %.loopexit
  %i.sp = load ptr, ptr %13, align 8, !tbaa !70   ; 3 uses
  %i.sq = load ptr, ptr %i.ky, align 8, !tbaa !69 ; 2 uses
  %.not4.i.i.i276 = icmp eq ptr %i.sp, %i.sq
  br i1 %.not4.i.i.i276, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i282, label %.lr.ph.i.i.i277

.lr.ph.i.i.i277:                                  ; preds = %._crit_edge418, %.lr.ph.i.i.i277
  %.05.i.i.i278 = phi ptr [ %i.sr, %.lr.ph.i.i.i277 ], [ %i.sp, %._crit_edge418 ] ; 2 uses
  call void @_ZN5boost15program_options12basic_optionIcED2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %.05.i.i.i278) #25
  %i.sr = getelementptr inbounds nuw i8, ptr %.05.i.i.i278, i64 96 ; 2 uses
  %.not.i.i.i279 = icmp eq ptr %i.sr, %i.sq
  br i1 %.not.i.i.i279, label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i280, label %.lr.ph.i.i.i277, !llvm.loop !3

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i280: ; preds = %.lr.ph.i.i.i277
  %.pr.i281 = load ptr, ptr %13, align 8, !tbaa !70
  br label %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i282

_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i282: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i280, %._crit_edge418
  %i.ss = phi ptr [ %.pr.i281, %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i280 ], [ %i.sp, %._crit_edge418 ] ; 3 uses
  %.not.i.i1.i283 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i1.i283, label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit284, label %bb.dw

bb.dw:                                            ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i282
  %i.st = load ptr, ptr %i.kz, align 8, !tbaa !71
  %i.su = ptrtoint ptr %i.st to i64
  %i.sv = ptrtoint ptr %i.ss to i64
  %i.sw = sub i64 %i.su, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.sw) #28
  br label %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit284

_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit284: ; preds = %_ZSt8_DestroyIPN5boost15program_options12basic_optionIcEES3_EvT_S5_RSaIT0_E.exit.i282, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.sx = load ptr, ptr %3, align 8, !tbaa !65    ; 3 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !64 ; 2 uses
  %.not4.i.i.i285 = icmp eq ptr %i.sx, %i.sz
  br i1 %.not4.i.i.i285, label %_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exit.i, label %.lr.ph.i.i.i286

.lr.ph.i.i.i286:                                  ; preds = %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit284, %_ZSt8_DestroyIN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEEvPT_.exit.i.i.i
  %.05.i.i.i287 = phi ptr [ %i.th, %_ZSt8_DestroyIN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEEvPT_.exit.i.i.i ], [ %i.sx, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit284 ] ; 3 uses
  %i.ta = load ptr, ptr %.05.i.i.i287, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ta, null
  %i.tb = ptrtoint ptr %i.ta to i64
  %i.tc = trunc i64 %i.tb to i1
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.tc
  br i1 %or.cond.i.i.i.i.i, label %_ZSt8_DestroyIN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEEvPT_.exit.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i286
  %i.td = load ptr, ptr %i.ta, align 8, !tbaa !48 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEEvPT_.exit.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.te = getelementptr inbounds nuw i8, ptr %.05.i.i.i287, i64 8 ; 2 uses
  invoke void %i.td(ptr noundef nonnull align 8 dereferenceable(24) %i.te, ptr noundef nonnull align 8 dereferenceable(24) %i.te, i32 noundef 2)
          to label %_ZSt8_DestroyIN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEEvPT_.exit.i.i.i unwind label %bb.dz, !inline_history !0

bb.dz:                                            ; preds = %bb.dy
  %i.tf = landingpad { ptr, i32 }
          catch ptr null
  %i.tg = extractvalue { ptr, i32 } %i.tf, 0
  call void @__clang_call_terminate(ptr %i.tg) #27
  unreachable

_ZSt8_DestroyIN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEEvPT_.exit.i.i.i: ; preds = %bb.dy, %bb.dx, %.lr.ph.i.i.i286
  %i.th = getelementptr inbounds nuw i8, ptr %.05.i.i.i287, i64 32 ; 2 uses
  %.not.i.i.i288 = icmp eq ptr %i.th, %i.sz
  br i1 %.not.i.i.i288, label %_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i286, !llvm.loop !6

_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEEvPT_.exit.i.i.i
  %.pr.i289 = load ptr, ptr %3, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit284
  %i.ti = phi ptr [ %.pr.i289, %_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exitthread-pre-split.i ], [ %i.sx, %_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev.exit284 ] ; 3 uses
  %.not.i.i1.i290 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i1.i290, label %_ZNSt6vectorIN5boost10function_nIS_INS0_15program_options12basic_optionIcEESaIS4_EEJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEESaISG_EED2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exit.i
  %i.tj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !80
  %i.tl = ptrtoint ptr %i.tk to i64
  %i.tm = ptrtoint ptr %i.ti to i64
  %i.tn = sub i64 %i.tl, %i.tm
  call void @_ZdlPvm(ptr noundef nonnull %i.ti, i64 noundef %i.tn) #28
  br label %_ZNSt6vectorIN5boost10function_nIS_INS0_15program_options12basic_optionIcEESaIS4_EEJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEESaISG_EED2Ev.exit

_ZNSt6vectorIN5boost10function_nIS_INS0_15program_options12basic_optionIcEESaIS4_EEJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEESaISG_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost10function_nISt6vectorINS0_15program_options12basic_optionIcEESaIS5_EEJRS2_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEESH_EvT_SJ_RSaIT0_E.exit.i, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

.lr.ph417:                                        ; preds = %.lr.ph417.preheader, %bb.ee
  %indvars.iv444 = phi i64 [ %indvars.iv.next445, %bb.ee ], [ 0, %.lr.ph417.preheader ] ; 2 uses
  %i.to = getelementptr inbounds nuw [96 x i8], ptr %i.sn, i64 %indvars.iv444 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !28 ; 2 uses
  %i.tr = icmp ugt i64 %i.tq, 2
  br i1 %i.tr, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %.lr.ph417
  %i.ts = icmp eq i64 %i.tq, 2
  br i1 %i.ts, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.tt = load ptr, ptr %i.to, align 8, !tbaa !26
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !27
  %.not158 = icmp eq i8 %i.tu, 45
  br i1 %.not158, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  br label %bb.ee

bb.ee:                                            ; preds = %.lr.ph417, %bb.ec, %bb.ed
  %.sink603 = phi i32 [ 11, %bb.ed ], [ 10, %bb.ec ], [ 10, %.lr.ph417 ]
  %i.tv = getelementptr inbounds nuw i8, ptr %i.to, i64 89
  %i.tw = lshr i32 %i.so, %.sink603
  %i.tx = trunc i32 %i.tw to i8
  %i.ty = and i8 %i.tx, 1
  store i8 %i.ty, ptr %i.tv, align 1, !tbaa !142
  %indvars.iv.next445 = add i64 %indvars.iv444, 1 ; 2 uses
  %i.tz = and i64 %indvars.iv.next445, 4294967295
  %i.ua = icmp ugt i64 %.pre-phi465, %i.tz
  br i1 %i.ua, label %.lr.ph417, label %._crit_edge418, !llvm.loop !139

bb.ef:                                            ; preds = %bb.dp, %bb.ds, %bb.br, %bb.cs, %bb.dh, %bb.cv, %bb.ca, %bb.bu
  %.merged181 = phi { ptr, i32 } [ %.pn167, %bb.cv ], [ %i.lp, %bb.br ], [ %i.mn, %bb.ca ], [ %i.ma, %bb.bu ], [ %.pn165, %bb.cs ], [ %i.qv, %bb.dh ], [ %.pn161, %bb.ds ], [ %i.rx, %bb.dp ]
  call void @_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.eg

bb.eg:                                            ; preds = %.body, %bb.bn, %bb.ef
  %.merged180 = phi { ptr, i32 } [ %.merged181, %bb.ef ], [ %.pn177, %bb.bn ], [ %.pn173.pn, %.body ]
  call void @_ZNSt6vectorIN5boost15program_options12basic_optionIcEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #25
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.al, %bb.af, %bb.z, %bb.t, %bb.n, %bb.h, %bb.c
  %.merged = phi { ptr, i32 } [ %.merged180, %bb.eg ], [ %i.dk, %bb.al ], [ %i.bt, %bb.af ], [ %i.bg, %bb.z ], [ %i.at, %bb.t ], [ %i.ag, %bb.n ], [ %i.s, %bb.h ], [ %i.f, %bb.c ]
  call void @_ZNSt6vectorIN5boost10function_nIS_INS0_15program_options12basic_optionIcEESaIS4_EEJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEEESaISG_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.merged

bb.ei:                                            ; preds = %bb.ca
  %i.ub = landingpad { ptr, i32 }
          catch ptr null
  %i.uc = extractvalue { ptr, i32 } %i.ub, 0
  call void @__clang_call_terminate(ptr %i.uc) #27
  unreachable

bb.ej:                                            ; preds = %bb.bz
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5boost15program_options6detail7cmdline24handle_additional_parserERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.20") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.boost::bad_function_call", align 8 ; 6 uses
  %4 = alloca %"struct.std::pair", align 8        ; 13 uses
  %5 = alloca %"class.boost::program_options::basic_option", align 8 ; 20 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31, !noalias !146 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !146
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.25)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost17bad_function_callE, i64 16), ptr %3, align 8, !tbaa !57, !noalias !146
  invoke void @_ZN5boost15throw_exceptionINS_17bad_function_callEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %3) #26
          to label %bb.c unwind label %bb.d, !noalias !146

bb.c:                                             ; preds = %.noexc
  unreachable

bb.d:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25, !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !146
  br label %.body

bb.e:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !51
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = and i64 %i.f, -2
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147, !noalias !146
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
end_hunk_0
