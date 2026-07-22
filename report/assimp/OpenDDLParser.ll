inline.NumInlined: 675
inline.NumDeleted: 297
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN10ODDLParser13OpenDDLParser11parseHeaderEPcS1_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i
  %i.ba = load i64, ptr %i.q, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i

common.resume:                                    ; preds = %bb.ba, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i ], [ %i.dd, %bb.w ], [ %.pn102.pn.pn.pn, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume

_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.not177 = icmp eq ptr %i.ak, null
  br i1 %.not177, label %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit
  %i.bc = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %.not.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ak, ptr %i.bc, align 8
  %i.bf = load ptr, ptr %i.ad, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.ad, align 8
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.ab, align 8            ; 4 uses
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 6 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.n, label %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #31 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  store ptr %i.ak, ptr %i.bt, align 8
  %i.bu = icmp sgt i64 %i.bk, 0
  br i1 %i.bu, label %bb.o, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr align 8 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #28
  br label %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.bs, ptr %i.ab, align 8
  store ptr %i.bv, ptr %i.ad, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  store ptr %i.bw, ptr %i.bd, align 8
  br label %bb.t

_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread: ; preds = %bb.c, %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.8, i64 noundef 37) ; 0 uses
  %i.by = load ptr, ptr @_ZSt4cerr, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 240
  %i.cd = load ptr, ptr %i.cc, align 8            ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.q:                                             ; preds = %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZN10ODDLParserL13createDDLNodeEPNS_4TextEPNS_13OpenDDLParserE.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i8, ptr %i.ce, align 8
  %.not.i1.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i1.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 67
  %i.ch = load i8, ptr %i.cg, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cd)
  %i.ci = load ptr, ptr %i.cd, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef signext i8 %i.ck(ptr noundef nonnull align 8 dereferenceable(570) %i.cd, i8 noundef signext 10), !inline_history !11
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.r, %bb.s
  %.0.i.i.i = phi i8 [ %i.ch, %bb.r ], [ %i.cl, %bb.s ]
  %i.cm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cm) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.l, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.co = phi i1 [ false, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ true, %bb.l ], [ true, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %.0.i155 = phi ptr [ null, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.ak, %bb.l ], [ %i.ak, %_ZNSt6vectorIPN10ODDLParser7DDLNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  call void @_ZN10ODDLParser4TextD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 24) #28
  %i.cp = icmp eq ptr %.0.lcssa.i, null
  %i.cq = icmp eq ptr %.0.lcssa.i, %2
  %or.cond.i = or i1 %i.cp, %i.cq
  br i1 %or.cond.i, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.cr = ptrtoint ptr %2 to i64
  %i.cs = ptrtoint ptr %.0.lcssa.i to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %scevgep.i.i = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ct ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge2.i.i, %.lr.ph.preheader.i.i
  %.010.i.i = phi ptr [ %i.cv, %.critedge2.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cu = load i8, ptr %.010.i.i, align 1         ; 2 uses
  switch i8 %i.cu, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i [
    i8 32, label %.critedge2.i.i
    i8 9, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 44, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.cv, %2
  br i1 %.not.i.i113, label %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i, label %.lr.ph.i.i, !llvm.loop !10

.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i: ; preds = %.critedge2.i.i
  %.pre.i = load i8, ptr %scevgep.i.i, align 1
  br label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i: ; preds = %.lr.ph.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i
  %i.cw = phi i8 [ %.pre.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %i.cu, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %.critedge2.i._ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit_crit_edge.i ], [ %.010.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cx = and i8 %i.cw, -2
  %switch.i = icmp eq i8 %i.cx, 36
  br i1 %switch.i, label %bb.u, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

bb.u:                                             ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8
  %i.cz = call noundef ptr @_ZN10ODDLParser13OpenDDLParser15parseIdentifierEPcS1_PPNS_4TextE(ptr noundef nonnull %i.cy, ptr noundef %2, ptr noundef nonnull %i.b) ; 2 uses
  %i.da = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not25.i = icmp eq ptr %i.da, null
  br i1 %.not25.i, label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162, label %bb.v

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.db = icmp eq i8 %i.cw, 37
  %spec.store.select.i = zext i1 %i.db to i32
  %i.dc = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 5 uses
  invoke void @_ZN10ODDLParser4NameC1ENS_8NameTypeEPNS_4TextE(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i32 noundef %spec.store.select.i, ptr noundef nonnull %i.da)
          to label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %common.resume

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br i1 %i.co, label %bb.x, label %bb.af

bb.x:                                             ; preds = %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8            ; 4 uses
  %.not92 = icmp eq ptr %i.dh, null
  br i1 %.not92, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %11, ptr %5, align 8
  %i.di = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dh) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.di, ptr %i.a, align 8
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.y
  %i.dk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc115 unwind label %bb.ad ; 2 uses

.noexc115:                                        ; preds = %.noexc.i
  store ptr %i.dk, ptr %5, align 8
  %i.dl = load i64, ptr %i.a, align 8
  store i64 %i.dl, ptr %11, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc115, %bb.y
  %i.dm = phi ptr [ %i.dk, %.noexc115 ], [ %11, %bb.y ] ; 2 uses
  switch i64 %i.di, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.dn = load i8, ptr %i.dh, align 1
  store i8 %i.dn, ptr %i.dm, align 1
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %i.dh, i64 %i.di, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.do = load i64, ptr %i.a, align 8             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.do, ptr %i.dp, align 8
  %i.dq = load ptr, ptr %5, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN10ODDLParser7DDLNode7setNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %.0.i155, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ds = load ptr, ptr %5, align 8               ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %11
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.du = load i64, ptr %11, align 8
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.af

bb.ad:                                            ; preds = %.noexc.i
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.ae:                                            ; preds = %bb.ab
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %5, align 8               ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %11
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.ae
  %i.ea = load i64, ptr %11, align 8
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.ad ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.dx, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ba

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit
  call void @_ZN10ODDLParser4NameD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dc) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 16) #28
  br label %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread

_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread: ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i, %bb.t, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162, %bb.af
  %.0.i114161168 = phi ptr [ %i.cz, %bb.af ], [ %i.cz, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread162 ], [ %.0.lcssa.i.i, %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit.i ], [ %.0.lcssa.i, %bb.t ] ; 5 uses
  %.not9.i119 = icmp eq ptr %.0.i114161168, %2
  br i1 %.not9.i119, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127, label %.lr.ph.preheader.i120

.lr.ph.preheader.i120:                            ; preds = %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread
  %i.ec = ptrtoint ptr %2 to i64
  %i.ed = ptrtoint ptr %.0.i114161168 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %scevgep.i121 = getelementptr i8, ptr %.0.i114161168, i64 %i.ee
  br label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %.critedge2.i124, %.lr.ph.preheader.i120
  %.010.i123 = phi ptr [ %i.eg, %.critedge2.i124 ], [ %.0.i114161168, %.lr.ph.preheader.i120 ] ; 3 uses
  %i.ef = load i8, ptr %.010.i123, align 1
  switch i8 %i.ef, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127 [
    i8 32, label %.critedge2.i124
    i8 9, label %.critedge2.i124
    i8 13, label %.critedge2.i124
    i8 10, label %.critedge2.i124
    i8 44, label %.critedge2.i124
  ]

.critedge2.i124:                                  ; preds = %.lr.ph.i122, %.lr.ph.i122, %.lr.ph.i122, %.lr.ph.i122, %.lr.ph.i122
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i123, i64 1 ; 2 uses
  %.not.i125 = icmp eq ptr %i.eg, %2
  br i1 %.not.i125, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127, label %.lr.ph.i122, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127: ; preds = %.lr.ph.i122, %.critedge2.i124, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread
  %.0.lcssa.i126 = phi ptr [ %.0.i114161168, %_ZN10ODDLParser13OpenDDLParser9parseNameEPcS1_PPNS_4NameE.exit.thread ], [ %scevgep.i121, %.critedge2.i124 ], [ %.010.i123, %.lr.ph.i122 ] ; 5 uses
  %.not94 = icmp eq ptr %.0.lcssa.i126, %2
  br i1 %.not94, label %.thread171, label %bb.ag

bb.ag:                                            ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit127
  %i.eh = load i8, ptr %.0.lcssa.i126, align 1
  %i.ei = icmp eq i8 %i.eh, 40
  br i1 %i.ei, label %bb.ah, label %.thread171

bb.ah:                                            ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i126, i64 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store ptr null, ptr %i.e, align 8
  %.not95181 = icmp eq ptr %i.ej, %2
  br i1 %.not95181, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread171

.lr.ph:                                           ; preds = %bb.ah
  %i.ek = ptrtoint ptr %2 to i64
  %i.el = load i8, ptr %i.ej, align 1
  %.not96248 = icmp eq i8 %i.el, 41
  br i1 %.not96248, label %._crit_edge, label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph, %bb.ay
  %.072182251 = phi ptr [ %.0.lcssa.i135, %bb.ay ], [ %i.ej, %.lr.ph ]
  %.056183250 = phi ptr [ %.2, %bb.ay ], [ null, %.lr.ph ] ; 4 uses
  %.054184249 = phi ptr [ %.155, %bb.ay ], [ null, %.lr.ph ] ; 3 uses
  %i.em = call noundef ptr @_ZN10ODDLParser13OpenDDLParser13parsePropertyEPcS1_PPNS_8PropertyE(ptr noundef nonnull %.072182251, ptr noundef %2, ptr noundef nonnull %i.e) ; 5 uses
  %.not9.i128 = icmp eq ptr %i.em, %2
  br i1 %.not9.i128, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136, label %.lr.ph.preheader.i129

.lr.ph.preheader.i129:                            ; preds = %.lr.ph252
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = sub i64 %i.ek, %i.en
  %scevgep.i130 = getelementptr i8, ptr %i.em, i64 %i.eo
  br label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %.critedge2.i133, %.lr.ph.preheader.i129
  %.010.i132 = phi ptr [ %i.eq, %.critedge2.i133 ], [ %i.em, %.lr.ph.preheader.i129 ] ; 3 uses
  %i.ep = load i8, ptr %.010.i132, align 1
  switch i8 %i.ep, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136 [
    i8 32, label %.critedge2.i133
    i8 9, label %.critedge2.i133
    i8 13, label %.critedge2.i133
    i8 10, label %.critedge2.i133
    i8 44, label %.critedge2.i133
  ]

.critedge2.i133:                                  ; preds = %.lr.ph.i131, %.lr.ph.i131, %.lr.ph.i131, %.lr.ph.i131, %.lr.ph.i131
  %i.eq = getelementptr inbounds nuw i8, ptr %.010.i132, i64 1 ; 2 uses
  %.not.i134 = icmp eq ptr %i.eq, %2
  br i1 %.not.i134, label %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136, label %.lr.ph.i131, !llvm.loop !10

_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136: ; preds = %.lr.ph.i131, %.critedge2.i133, %.lr.ph252
  %.0.lcssa.i135 = phi ptr [ %i.em, %.lr.ph252 ], [ %scevgep.i130, %.critedge2.i133 ], [ %.010.i132, %.lr.ph.i131 ] ; 7 uses
  %i.er = icmp eq ptr %.0.lcssa.i135, %2
  br i1 %i.er, label %._crit_edge, label %bb.ai

bb.ai:                                            ; preds = %_ZN10ODDLParser16lookForNextTokenIcEEPT_S2_S2_.exit136
  %i.es = load i8, ptr %.0.lcssa.i135, align 1    ; 2 uses
  switch i8 %i.es, label %bb.aj [
    i8 44, label %bb.av
    i8 41, label %bb.av
  ]

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPcvEET_S7_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %.0.lcssa.i135, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZNSt8functionIFvN10ODDLParser11LogSeverityERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_ZN10ODDLParserL20logInvalidTokenErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St8functionIFvNS_11LogSeverityES7_EE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %10)
          to label %.critedge111.critedge unwind label %bb.as

.critedge111.critedge:                            ; preds = %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not.i137 = icmp eq ptr %i.eu, null
  br i1 %.not.i137, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %.critedge111.critedge
  %i.ev = invoke noundef zeroext i1 %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.ao ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %.critedge111.critedge, %bb.an
  %i.ey = load ptr, ptr %8, align 8               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.fb = load i64, ptr %i.ez, align 8
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.fd = load ptr, ptr %6, align 8               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.fg = load i64, ptr %i.fe, align 8
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %.thread171

bb.ap:                                            ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.aq:                                            ; preds = %bb.ak
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

bb.ar:                                            ; preds = %bb.al
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit145

bb.as:                                            ; preds = %bb.am
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
end_hunk_0
