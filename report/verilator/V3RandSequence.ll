Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3RandSequence?download=true
inline.NumInlined: 3363
inline.NumDeleted: 1190
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN19RandSequenceVisitor15newProdRandJoinEP9AstRSProdP13AstRSProdList:bb.a
  br label %.thread1717

bb.ls:                                            ; preds = %.noexc987, %bb.kl
  %i.ala = landingpad { ptr, i32 }
          cleanup
  br label %.body989

.body989:                                         ; preds = %bb.km, %bb.ls
  %eh.lpad-body990 = phi { ptr, i32 } [ %i.ala, %bb.ls ], [ %i.ahu, %bb.km ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ahs, i64 noundef 208) #23
  br label %.thread1717

bb.lt:                                            ; preds = %_ZN7AstRandC2EP8FileLineNS_10SRandomU32E.exit996, %bb.kn
  %i.alb = landingpad { ptr, i32 }
          cleanup
  br label %.thread1673

bb.lu:                                            ; preds = %.noexc994, %bb.ko
  %i.alc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ahw, i64 noundef 160) #23
  br label %.thread1673

bb.lv:                                            ; preds = %bb.kq
  %lpad.thr_comm.split-lp1665 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aid, i64 noundef 232) #23
  br label %.thread1673

bb.lw:                                            ; preds = %.noexc1000, %bb.kr, %.noexc999
  %lpad.thr_comm.split-lp1684 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.thread1673

.thread1673:                                      ; preds = %bb.lu, %bb.lt, %bb.lv, %bb.lw
  %.pn5221678 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1684, %bb.lw ], [ %i.alc, %bb.lu ], [ %i.alb, %bb.lt ], [ %lpad.thr_comm.split-lp1665, %bb.lv ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ahv, i64 noundef 160) #23
  br label %.thread1717

bb.lx:                                            ; preds = %.noexc1004, %_ZN9AstModDivC2EP8FileLineP11AstNodeExprS3_.exit, %.noexc1005
  %lpad.thr_comm.split-lp1700 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.thread1717

.thread1717:                                      ; preds = %bb.lx, %.thread1673, %bb.lr, %.body989
  %.pn522.pn1695 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1700, %bb.lx ], [ %eh.lpad-body990, %.body989 ], [ %i.akz, %bb.lr ], [ %.pn5221678, %.thread1673 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ahr, i64 noundef 160) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.thread1713

bb.ly:                                            ; preds = %bb.kj
  %i.ald = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.thread1713

bb.lz:                                            ; preds = %bb.ki
  %i.ale = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ahq, i64 noundef 232) #23
  br label %.thread1713

.thread1724:                                      ; preds = %.noexc1013, %_ZN6AstAddC2EP8FileLineP11AstNodeExprS3_.exit1007, %.noexc1014
  %lpad.thr_comm1722 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %.thread1713

bb.ma:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1016
  %lpad.thr_comm.split-lp1723 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.uf

.thread1713:                                      ; preds = %bb.lq, %bb.ly, %bb.lz, %.thread1724, %.thread1717
  %.pn522.pn.pn.pn1716 = phi { ptr, i32 } [ %.pn522.pn1695, %.thread1717 ], [ %lpad.thr_comm1722, %.thread1724 ], [ %i.aky, %bb.lq ], [ %i.ald, %bb.ly ], [ %i.ale, %bb.lz ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ahp, i64 noundef 152) #23
  br label %bb.uf

bb.mb:                                            ; preds = %bb.kv
  %i.alf = landingpad { ptr, i32 }
          cleanup
  br label %.thread1740

bb.mc:                                            ; preds = %.noexc1022, %bb.ky
  %i.alg = landingpad { ptr, i32 }
          cleanup
  br label %.thread1727

.thread1727:                                      ; preds = %bb.mc, %bb.la
  %eh.lpad-body1025 = phi { ptr, i32 } [ %i.alg, %bb.mc ], [ %i.ajg, %bb.la ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aiz, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.thread1740

bb.md:                                            ; preds = %bb.kw
  %lpad.thr_comm.split-lp1734 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aiy, i64 noundef 232) #23
  br label %.thread1740

.thread1748:                                      ; preds = %.noexc1031, %_ZN8AstConstC2EP8FileLineNS_8BitFalseE.exit, %bb.kx, %.noexc1032
  %lpad.thr_comm1746 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %.thread1740

bb.me:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1034
  %lpad.thr_comm.split-lp1747 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  br label %bb.uf

.thread1740:                                      ; preds = %.thread1727, %bb.mb, %bb.md, %.thread1748
  %.pn527.pn1743 = phi { ptr, i32 } [ %lpad.thr_comm1746, %.thread1748 ], [ %eh.lpad-body1025, %.thread1727 ], [ %i.alf, %bb.mb ], [ %lpad.thr_comm.split-lp1734, %bb.md ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aix, i64 noundef 152) #23
  br label %bb.uf

bb.mf:                                            ; preds = %bb.ld, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1044, %_ZN5AstIf9addThenspEP7AstNode.exit1037
  %i.alh = landingpad { ptr, i32 }
          cleanup
  br label %bb.uf

bb.mg:                                            ; preds = %.noexc.i1039
  %i.ali = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059

bb.mh:                                            ; preds = %.noexc1040
  %i.alj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alk = load ptr, ptr %39, align 8, !tbaa !10  ; 2 uses
  %i.all = icmp eq ptr %i.alk, %i.ajo
  br i1 %i.all, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057: ; preds = %bb.mh
  %i.alm = load i64, ptr %i.ajo, align 8, !tbaa !17
  %i.aln = add i64 %i.alm, 1
  call void @_ZdlPvm(ptr noundef %i.alk, i64 noundef %i.aln) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1059: ; preds = %bb.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057, %bb.mg
  %.pn530 = phi { ptr, i32 } [ %i.ali, %bb.mg ], [ %i.alj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1057 ], [ %i.alj, %bb.mh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ajn, i64 noundef 280) #23
  br label %bb.uf

bb.mi:                                            ; preds = %bb.le
  %i.alo = landingpad { ptr, i32 }
          cleanup
  br label %.thread1767

.thread1771:                                      ; preds = %bb.lh
  %lpad.thr_comm.split-lp1754 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.akf, i64 noundef 232) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %.thread1767

bb.mj:                                            ; preds = %bb.lg
  %i.alp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %.thread1767

bb.mk:                                            ; preds = %bb.lf
  %i.alq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ake, i64 noundef 232) #23
  br label %.thread1767

.thread1778:                                      ; preds = %.noexc1050, %bb.li, %.noexc1051
  %lpad.thr_comm1776 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %.thread1767

bb.ml:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1053
  %lpad.thr_comm.split-lp1777 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  br label %bb.uf

.thread1767:                                      ; preds = %bb.mi, %bb.mj, %bb.mk, %.thread1778, %.thread1771
  %.pn532.pn1770 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1754, %.thread1771 ], [ %lpad.thr_comm1776, %.thread1778 ], [ %i.alo, %bb.mi ], [ %i.alp, %bb.mj ], [ %i.alq, %bb.mk ]
  call void @_ZdlPvm(ptr noundef nonnull %i.akd, i64 noundef 152) #23
  br label %bb.uf

bb.mm:                                            ; preds = %.lr.ph3420, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201
  %.23613419 = phi i32 [ -1, %.lr.ph3420 ], [ %66, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201 ]
  %.sroa.01329.03418 = phi ptr [ %i.akm, %.lr.ph3420 ], [ %.sroa.01329.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201 ] ; 2 uses
  %.sroa.111333.03417 = phi ptr [ %i.akp, %.lr.ph3420 ], [ %.sroa.111333.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201 ] ; 2 uses
  %.sroa.141334.03416 = phi ptr [ %i.ako, %.lr.ph3420 ], [ %.sroa.141334.1, %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  %i.alr = load ptr, ptr %.sroa.01329.03418, align 8, !tbaa !389
  store ptr %i.alr, ptr %i.i, align 8, !tbaa !389
  %66 = add nsw i32 %.23613419, 1                 ; 2 uses
  %i.als = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.mn unwind label %bb.ns     ; 10 uses

bb.mn:                                            ; preds = %bb.mm
  %i.alt = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.mo unwind label %bb.nt     ; 3 uses

bb.mo:                                            ; preds = %bb.mn
  %i.alu = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.mp unwind label %bb.nu     ; 7 uses

bb.mp:                                            ; preds = %bb.mo
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.alu, i16 121, ptr noundef %i.lb)
          to label %.noexc1060 unwind label %bb.nv

.noexc1060:                                       ; preds = %bb.mp
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.alu, align 8, !tbaa !67
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.alv, ptr noundef nonnull align 8 dereferenceable(208) %i.alu, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc1061 unwind label %bb.nv

.noexc1061:                                       ; preds = %.noexc1060
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.alu)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1064 unwind label %bb.mq

bb.mq:                                            ; preds = %.noexc1061
  %i.alw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.alv) #22
  br label %.body1062

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1064: ; preds = %.noexc1061
  %i.alx = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.mr unwind label %bb.nu     ; 3 uses

bb.mr:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1064
  %67 = zext nneg i32 %66 to i64                  ; 10 uses
  %i.aly = load ptr, ptr %i.akq, align 8, !tbaa !499, !noalias !512 ; 2 uses
  %i.alz = load ptr, ptr %i.akr, align 8, !tbaa !503, !noalias !512
  %i.ama = load ptr, ptr %i.aks, align 8, !tbaa !504, !noalias !512
  %i.amb = ptrtoint ptr %i.aly to i64
  %i.amc = ptrtoint ptr %i.alz to i64
  %i.amd = sub i64 %i.amb, %i.amc
  %i.ame = ashr exact i64 %i.amd, 3
  %i.amf = add nsw i64 %i.ame, %67                ; 5 uses
  %i.amg = icmp sgt i64 %i.amf, -1
  br i1 %i.amg, label %bb.ms, label %bb.mv

bb.ms:                                            ; preds = %bb.mr
  %i.amh = icmp samesign ult i64 %i.amf, 64
  br i1 %i.amh, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %bb.ms
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.aly, i64 %67
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066

bb.mu:                                            ; preds = %bb.ms
  %i.amj = lshr i64 %i.amf, 6
  br label %bb.mw

bb.mv:                                            ; preds = %bb.mr
  %i.amk = ashr i64 %i.amf, 6
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %i.aml = phi i64 [ %i.amj, %bb.mu ], [ %i.amk, %bb.mv ] ; 2 uses
  %i.amm = getelementptr inbounds [8 x i8], ptr %i.ama, i64 %i.aml
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !505, !noalias !512
  %i.amo = shl nsw i64 %i.aml, 6
  %i.amp = sub nsw i64 %i.amf, %i.amo
  %i.amq = getelementptr inbounds [8 x i8], ptr %i.amn, i64 %i.amp
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066:        ; preds = %bb.mt, %bb.mw
  %storemerge.i.i.i.i1065 = phi ptr [ %i.amq, %bb.mw ], [ %i.ami, %bb.mt ]
  %i.amr = load ptr, ptr %storemerge.i.i.i.i1065, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  store i8 0, ptr %42, align 1, !tbaa !136
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.alx, ptr noundef %i.lb, ptr noundef %i.amr, ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.mx unwind label %bb.nw

bb.mx:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1066
  invoke void @_ZN6AstNeqC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.alt, ptr noundef %i.lb, ptr noundef nonnull %i.alu, ptr noundef nonnull %i.alx)
          to label %bb.my unwind label %bb.nx

bb.my:                                            ; preds = %bb.mx
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.als, i16 481, ptr noundef %i.lb)
          to label %.noexc1067 unwind label %.thread1798

.noexc1067:                                       ; preds = %bb.my
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.als, align 8, !tbaa !67
  %i.ams = getelementptr inbounds nuw i8, ptr %i.als, i64 152
  store i8 0, ptr %i.ams, align 8, !tbaa !178
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.als, ptr noundef nonnull %i.alt)
          to label %bb.mz unwind label %.thread1798

bb.mz:                                            ; preds = %.noexc1067
  %i.amt = getelementptr inbounds nuw i8, ptr %i.als, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.als, align 8, !tbaa !67
  store <4 x i8> zeroinitializer, ptr %i.amt, align 1, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.zv, ptr noundef nonnull %i.als)
          to label %_ZN12AstJumpBlock9addStmtspEP7AstNode.exit1072 unwind label %bb.ns

_ZN12AstJumpBlock9addStmtspEP7AstNode.exit1072:   ; preds = %bb.mz
  %i.amu = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %bb.na unwind label %bb.ns     ; 8 uses

bb.na:                                            ; preds = %_ZN12AstJumpBlock9addStmtspEP7AstNode.exit1072
  %i.amv = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.nb unwind label %bb.nz     ; 4 uses

bb.nb:                                            ; preds = %bb.na
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  store i8 1, ptr %43, align 1, !tbaa !136
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.amv, ptr noundef %i.lb, ptr noundef nonnull %i.ajn, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.nc unwind label %bb.oe

bb.nc:                                            ; preds = %bb.nb
  %i.amw = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.nd unwind label %bb.od     ; 9 uses

bb.nd:                                            ; preds = %bb.nc
  %i.amx = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ne unwind label %bb.oa     ; 4 uses

bb.ne:                                            ; preds = %bb.nd
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  store i8 0, ptr %44, align 1, !tbaa !136
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.amx, ptr noundef %i.lb, ptr noundef nonnull %i.ajn, ptr noundef nonnull align 1 dereferenceable(1) %44)
          to label %bb.nf unwind label %bb.oc

bb.nf:                                            ; preds = %bb.ne
  %i.amy = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.ng unwind label %.thread1826 ; 7 uses

bb.ng:                                            ; preds = %bb.nf
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.amy, i16 121, ptr noundef %i.lb)
          to label %.noexc1073 unwind label %bb.ob

.noexc1073:                                       ; preds = %bb.ng
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.amy, align 8, !tbaa !67
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.amz, ptr noundef nonnull align 8 dereferenceable(208) %i.amy, i32 noundef 32, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc1074 unwind label %bb.ob

.noexc1074:                                       ; preds = %.noexc1073
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.amy)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1077 unwind label %bb.nh

bb.nh:                                            ; preds = %.noexc1074
  %i.ana = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.amz) #22
  br label %.thread1801

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1077: ; preds = %.noexc1074
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.amw, i16 253, ptr noundef %i.lb)
          to label %.noexc1080 unwind label %.thread1826

.noexc1080:                                       ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1077
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.amw, align 8, !tbaa !67
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amw, i64 152
  store i64 0, ptr %i.anb, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.amw, ptr noundef nonnull %i.amx)
          to label %.noexc1081 unwind label %.thread1826

.noexc1081:                                       ; preds = %.noexc1080
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.amw, ptr noundef nonnull %i.amy)
          to label %.noexc1082 unwind label %.thread1826

.noexc1082:                                       ; preds = %.noexc1081
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstSub, i64 16), ptr %i.amw, align 8, !tbaa !67
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amx, i64 72
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !139 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amw, i64 72 ; 2 uses
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !139
  %.not.i.i.i1079 = icmp eq ptr %i.anf, %i.and
  br i1 %.not.i.i.i1079, label %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.ni

bb.ni:                                            ; preds = %.noexc1082
  store ptr %i.and, ptr %i.ane, align 8, !tbaa !139
  %i.ang = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  %i.anh = add i64 %i.ang, 1
  store i64 %i.anh, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  br label %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit

_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit:    ; preds = %bb.ni, %.noexc1082
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.amu, i16 466, ptr noundef %i.lb)
          to label %.noexc1088 unwind label %.thread1849

.noexc1088:                                       ; preds = %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.amu, align 8, !tbaa !67
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.amu, ptr noundef nonnull %i.amw)
          to label %.noexc1089 unwind label %.thread1849

.noexc1089:                                       ; preds = %.noexc1088
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.amu, ptr noundef nonnull %i.amv)
          to label %.noexc1090 unwind label %.thread1849

.noexc1090:                                       ; preds = %.noexc1089
  %i.ani = getelementptr inbounds nuw i8, ptr %i.amv, i64 72
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !139 ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amu, i64 72 ; 2 uses
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !139
  %.not.i.i8.i.i1084 = icmp eq ptr %i.anl, %i.anj
  br i1 %.not.i.i8.i.i1084, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091, label %bb.nj

bb.nj:                                            ; preds = %.noexc1090
  store ptr %i.anj, ptr %i.ank, align 8, !tbaa !139
  %i.anm = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  %i.ann = add i64 %i.anm, 1
  store i64 %i.ann, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091: ; preds = %.noexc1090, %bb.nj
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.amu, align 8, !tbaa !67
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.als, ptr noundef nonnull %i.amu)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1094 unwind label %bb.of

_ZN5AstIf9addThenspEP7AstNode.exit1094:           ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.ano = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.nk unwind label %bb.og     ; 12 uses

bb.nk:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1094
  %i.anp = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.nl unwind label %bb.oh     ; 3 uses

bb.nl:                                            ; preds = %bb.nk
  %i.anq = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.nm unwind label %bb.oi     ; 7 uses

bb.nm:                                            ; preds = %bb.nl
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.anq, i16 121, ptr noundef %i.lb)
          to label %.noexc1095 unwind label %bb.oj

.noexc1095:                                       ; preds = %bb.nm
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.anq, align 8, !tbaa !67
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.anr, ptr noundef nonnull align 8 dereferenceable(208) %i.anq, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc1096 unwind label %bb.oj

.noexc1096:                                       ; preds = %.noexc1095
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.anq)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1099 unwind label %bb.nn

bb.nn:                                            ; preds = %.noexc1096
  %i.ans = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.anr) #22
  br label %.body1097

end_hunk_0
begin_hunk_1_@_ZN19RandSequenceVisitor15newProdRandJoinEP9AstRSProdP13AstRSProdList:bb.a
  %lpad.thr_comm.split-lp1797 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.thread1790

.thread1790:                                      ; preds = %.body1062, %bb.nu, %bb.nw, %bb.nx
  %.pn5571793 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1797, %bb.nx ], [ %eh.lpad-body1063, %.body1062 ], [ %i.apn, %bb.nu ], [ %lpad.thr_comm.split-lp1784, %bb.nw ]
  call void @_ZdlPvm(ptr noundef nonnull %i.alt, i64 noundef 160) #23
  br label %bb.ny

bb.ny:                                            ; preds = %.thread1798, %bb.nt, %.thread1790
  %.pn557.pn = phi { ptr, i32 } [ %.pn5571793, %.thread1790 ], [ %lpad.thr_comm1796, %.thread1798 ], [ %i.apm, %bb.nt ]
  call void @_ZdlPvm(ptr noundef nonnull %i.als, i64 noundef 160) #23
  br label %bb.rw

bb.nz:                                            ; preds = %bb.na
  %i.app = landingpad { ptr, i32 }
          cleanup
  br label %.thread1838

bb.oa:                                            ; preds = %bb.nd
  %i.apq = landingpad { ptr, i32 }
          cleanup
  br label %.thread1842

bb.ob:                                            ; preds = %.noexc1073, %bb.ng
  %i.apr = landingpad { ptr, i32 }
          cleanup
  br label %.thread1801

.thread1801:                                      ; preds = %bb.ob, %bb.nh
  %eh.lpad-body1076 = phi { ptr, i32 } [ %i.apr, %bb.ob ], [ %i.ana, %bb.nh ]
  call void @_ZdlPvm(ptr noundef nonnull %i.amy, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.thread1842

bb.oc:                                            ; preds = %bb.ne
  %lpad.thr_comm.split-lp1809 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.amx, i64 noundef 232) #23
  br label %.thread1842

.thread1826:                                      ; preds = %.noexc1080, %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1077, %bb.nf, %.noexc1081
  %lpad.thr_comm1824 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.thread1842

.thread1842:                                      ; preds = %.thread1826, %bb.oc, %bb.oa, %.thread1801
  %.pn560.pn1820 = phi { ptr, i32 } [ %lpad.thr_comm1824, %.thread1826 ], [ %eh.lpad-body1076, %.thread1801 ], [ %i.apq, %bb.oa ], [ %lpad.thr_comm.split-lp1809, %bb.oc ]
  call void @_ZdlPvm(ptr noundef nonnull %i.amw, i64 noundef 160) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %.thread1838

bb.od:                                            ; preds = %bb.nc
  %i.aps = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %.thread1838

bb.oe:                                            ; preds = %bb.nb
  %i.apt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.amv, i64 noundef 232) #23
  br label %.thread1838

.thread1849:                                      ; preds = %.noexc1089, %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit, %.noexc1088
  %lpad.thr_comm1847 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %.thread1838

bb.of:                                            ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1091
  %lpad.thr_comm.split-lp1848 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  br label %bb.rw

.thread1838:                                      ; preds = %bb.nz, %bb.od, %bb.oe, %.thread1849, %.thread1842
  %.pn560.pn.pn.pn1841 = phi { ptr, i32 } [ %.pn560.pn1820, %.thread1842 ], [ %lpad.thr_comm1847, %.thread1849 ], [ %i.app, %bb.nz ], [ %i.aps, %bb.od ], [ %i.apt, %bb.oe ]
  call void @_ZdlPvm(ptr noundef nonnull %i.amu, i64 noundef 152) #23
  br label %bb.rw

bb.og:                                            ; preds = %bb.nr, %_ZN5AstIf9addThenspEP7AstNode.exit1094
  %i.apu = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

bb.oh:                                            ; preds = %bb.nk
  %i.apv = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.oi:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1099, %bb.nl
  %i.apw = landingpad { ptr, i32 }
          cleanup
  br label %.thread1861

bb.oj:                                            ; preds = %.noexc1095, %bb.nm
  %i.apx = landingpad { ptr, i32 }
          cleanup
  br label %.body1097

.body1097:                                        ; preds = %bb.nn, %bb.oj
  %eh.lpad-body1098 = phi { ptr, i32 } [ %i.apx, %bb.oj ], [ %i.ans, %bb.nn ]
  call void @_ZdlPvm(ptr noundef nonnull %i.anq, i64 noundef 208) #23
  br label %.thread1861

bb.ok:                                            ; preds = %bb.no
  %lpad.thr_comm.split-lp1855 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ant, i64 noundef 232) #23
  br label %.thread1861

.thread1869:                                      ; preds = %bb.nq, %.noexc1100
  %lpad.thr_comm1867 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %bb.om

bb.ol:                                            ; preds = %bb.np
  %lpad.thr_comm.split-lp1868 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %.thread1861

.thread1861:                                      ; preds = %.body1097, %bb.oi, %bb.ok, %bb.ol
  %.pn5651864 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp1868, %bb.ol ], [ %eh.lpad-body1098, %.body1097 ], [ %i.apw, %bb.oi ], [ %lpad.thr_comm.split-lp1855, %bb.ok ]
  call void @_ZdlPvm(ptr noundef nonnull %i.anp, i64 noundef 160) #23
  br label %bb.om

bb.om:                                            ; preds = %.thread1869, %bb.oh, %.thread1861
  %.pn565.pn = phi { ptr, i32 } [ %.pn5651864, %.thread1861 ], [ %lpad.thr_comm1867, %.thread1869 ], [ %i.apv, %bb.oh ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ano, i64 noundef 160) #23
  br label %bb.rw

bb.on:                                            ; preds = %bb.rd, %_ZN5AstIf9addThenspEP7AstNode.exit1105, %_ZN5AstIf9addThenspEP7AstNode.exit1195, %_ZN5AstIf9addThenspEP7AstNode.exit1164, %._crit_edge3414
  %i.apy = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

bb.oo:                                            ; preds = %_ZNSt13unordered_mapIP13AstRSProdItemSt5dequeIP11AstNodeStmtSaIS4_EESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S6_EEEixERSC_.exit1107
  %i.apz = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

.lr.ph3413:                                       ; preds = %.lr.ph3413.preheader, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137
  %.02623412 = phi i32 [ %i.asa, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137 ], [ %i.apj, %.lr.ph3413.preheader ] ; 2 uses
  %.sroa.01322.03411 = phi ptr [ %.sroa.01322.1, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137 ], [ %i.aol, %.lr.ph3413.preheader ] ; 2 uses
  %.sroa.11.03410 = phi ptr [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137 ], [ %i.aor, %.lr.ph3413.preheader ] ; 2 uses
  %.sroa.14.03409 = phi ptr [ %.sroa.14.1, %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137 ], [ %i.aop, %.lr.ph3413.preheader ] ; 2 uses
  %i.aqa = load ptr, ptr %.sroa.01322.03411, align 8, !tbaa !419
  %i.aqb = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.op unwind label %bb.pi     ; 9 uses

bb.op:                                            ; preds = %.lr.ph3413
  %i.aqc = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.oq unwind label %bb.pj     ; 12 uses

bb.oq:                                            ; preds = %bb.op
  %i.aqd = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.or unwind label %bb.pk     ; 8 uses

bb.or:                                            ; preds = %bb.oq
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.aqd, i16 121, ptr noundef %i.lb)
          to label %.noexc1111 unwind label %bb.pl

.noexc1111:                                       ; preds = %bb.or
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.aqd, align 8, !tbaa !67
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.aqe, ptr noundef nonnull align 8 dereferenceable(208) %i.aqd, i32 noundef 32, i32 noundef %.02623412, i1 noundef zeroext true)
          to label %.noexc1112 unwind label %bb.pl

.noexc1112:                                       ; preds = %.noexc1111
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.aqd)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1115 unwind label %bb.os

bb.os:                                            ; preds = %.noexc1112
  %i.aqf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.aqe) #22
  br label %.body1113

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1115: ; preds = %.noexc1112
  %i.aqg = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.ot unwind label %bb.pk     ; 4 uses

bb.ot:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1115
  %i.aqh = load ptr, ptr %i.akq, align 8, !tbaa !499, !noalias !521 ; 2 uses
  %i.aqi = load ptr, ptr %i.akr, align 8, !tbaa !503, !noalias !521
  %i.aqj = load ptr, ptr %i.aks, align 8, !tbaa !504, !noalias !521
  %i.aqk = ptrtoint ptr %i.aqh to i64
  %i.aql = ptrtoint ptr %i.aqi to i64
  %i.aqm = sub i64 %i.aqk, %i.aql
  %i.aqn = ashr exact i64 %i.aqm, 3
  %i.aqo = add nsw i64 %i.aqn, %67                ; 5 uses
  %i.aqp = icmp sgt i64 %i.aqo, -1
  br i1 %i.aqp, label %bb.ou, label %bb.ox

bb.ou:                                            ; preds = %bb.ot
  %i.aqq = icmp samesign ult i64 %i.aqo, 64
  br i1 %i.aqq, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  %i.aqr = getelementptr inbounds nuw [8 x i8], ptr %i.aqh, i64 %67
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117

bb.ow:                                            ; preds = %bb.ou
  %i.aqs = lshr i64 %i.aqo, 6
  br label %bb.oy

bb.ox:                                            ; preds = %bb.ot
  %i.aqt = ashr i64 %i.aqo, 6
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow
  %i.aqu = phi i64 [ %i.aqs, %bb.ow ], [ %i.aqt, %bb.ox ] ; 2 uses
  %i.aqv = getelementptr inbounds [8 x i8], ptr %i.aqj, i64 %i.aqu
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !505, !noalias !521
  %i.aqx = shl nsw i64 %i.aqu, 6
  %i.aqy = sub nsw i64 %i.aqo, %i.aqx
  %i.aqz = getelementptr inbounds [8 x i8], ptr %i.aqw, i64 %i.aqy
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117:        ; preds = %bb.ov, %bb.oy
  %storemerge.i.i.i.i1116 = phi ptr [ %i.aqz, %bb.oy ], [ %i.aqr, %bb.ov ]
  %i.ara = load ptr, ptr %storemerge.i.i.i.i1116, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  store i8 0, ptr %46, align 1, !tbaa !136
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.aqg, ptr noundef %i.lb, ptr noundef %i.ara, ptr noundef nonnull align 1 dereferenceable(1) %46)
          to label %bb.oz unwind label %bb.pm

bb.oz:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.aqc, i16 256, ptr noundef %i.lb)
          to label %.noexc1121 unwind label %.thread1892

.noexc1121:                                       ; preds = %bb.oz
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.aqc, align 8, !tbaa !67
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqc, i64 152
  store i64 0, ptr %i.arb, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aqc, ptr noundef nonnull %i.aqd)
          to label %.noexc1122 unwind label %.thread1892

.noexc1122:                                       ; preds = %.noexc1121
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aqc, ptr noundef nonnull %i.aqg)
          to label %.noexc1123 unwind label %.thread1892

.noexc1123:                                       ; preds = %.noexc1122
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV5AstEq, i64 16), ptr %i.aqc, align 8, !tbaa !67
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqd, i64 72
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !139 ; 3 uses
  %.not.i1118 = icmp eq ptr %i.ard, null
  br i1 %.not.i1118, label %.noexc11.i, label %bb.pa

bb.pa:                                            ; preds = %.noexc1123
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqg, i64 72 ; 2 uses
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !139
  %.not9.i = icmp eq ptr %i.arf, null
  br i1 %.not9.i, label %.noexc11.i, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.arg = load ptr, ptr %i.ard, align 8, !tbaa !67
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 432
  %i.ari = load ptr, ptr %i.arh, align 8
  %i.arj = invoke noundef zeroext i1 %i.ari(ptr noundef nonnull align 8 dereferenceable(162) %i.ard)
          to label %.noexc1124 unwind label %.thread1892, !inline_history !524

.noexc1124:                                       ; preds = %bb.pb
  br i1 %i.arj, label %.noexc11.i, label %bb.pc

bb.pc:                                            ; preds = %.noexc1124
  %i.ark = load ptr, ptr %i.are, align 8, !tbaa !139 ; 2 uses
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !67
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 432
  %i.arn = load ptr, ptr %i.arm, align 8
  %i.aro = invoke noundef zeroext i1 %i.arn(ptr noundef nonnull align 8 dereferenceable(162) %i.ark)
          to label %.noexc1125 unwind label %.thread1892, !inline_history !524

.noexc1125:                                       ; preds = %bb.pc
  br i1 %i.aro, label %.noexc11.i, label %.noexc.i1119

.noexc.i1119:                                     ; preds = %.noexc1125
  %i.arp = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.aqc, i8 1)
          to label %.noexc1126 unwind label %.thread1892 ; 2 uses

.noexc1126:                                       ; preds = %.noexc.i1119
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqc, i64 72 ; 2 uses
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !139
  %.not.i.i.i1120 = icmp eq ptr %i.arr, %i.arp
  br i1 %.not.i.i.i1120, label %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.pd

bb.pd:                                            ; preds = %.noexc1126
  store ptr %i.arp, ptr %i.arq, align 8, !tbaa !139
  br label %_ZN7AstNode11dtypeSetBitEv.exit.sink.split.i

.noexc11.i:                                       ; preds = %.noexc1125, %.noexc1124, %bb.pa, %.noexc1123
  %i.ars = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.aqc, i8 8)
          to label %.noexc1127 unwind label %.thread1892 ; 2 uses

.noexc1127:                                       ; preds = %.noexc11.i
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqc, i64 72 ; 2 uses
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !139
  %.not.i.i10.i = icmp eq ptr %i.aru, %i.ars
  br i1 %.not.i.i10.i, label %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit, label %bb.pe

bb.pe:                                            ; preds = %.noexc1127
  store ptr %i.ars, ptr %i.art, align 8, !tbaa !139
  br label %_ZN7AstNode11dtypeSetBitEv.exit.sink.split.i

_ZN7AstNode11dtypeSetBitEv.exit.sink.split.i:     ; preds = %bb.pe, %bb.pd
  %i.arv = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  %i.arw = add i64 %i.arv, 1
  store i64 %i.arw, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  br label %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit

_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit:     ; preds = %_ZN7AstNode11dtypeSetBitEv.exit.sink.split.i, %.noexc1127, %.noexc1126
  %i.arx = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.aqa, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN11AstNodeStmt9cloneTreeEbb.exit unwind label %.thread1905 ; 2 uses

_ZN11AstNodeStmt9cloneTreeEbb.exit:               ; preds = %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.aqb, i16 481, ptr noundef %i.lb)
          to label %.noexc1130 unwind label %.thread1905

.noexc1130:                                       ; preds = %_ZN11AstNodeStmt9cloneTreeEbb.exit
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.aqb, align 8, !tbaa !67
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqb, i64 152
  store i8 0, ptr %i.ary, align 8, !tbaa !178
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aqb, ptr noundef nonnull %i.aqc)
          to label %.noexc1131 unwind label %.thread1905

.noexc1131:                                       ; preds = %.noexc1130
  %.not.i.i.i.i1129 = icmp eq ptr %i.arx, null
  br i1 %.not.i.i.i.i1129, label %bb.pg, label %bb.pf

bb.pf:                                            ; preds = %.noexc1131
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aqb, ptr noundef nonnull %i.arx)
          to label %bb.pg unwind label %.thread1905

bb.pg:                                            ; preds = %.noexc1131, %bb.pf
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aqb, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.aqb, align 8, !tbaa !67
  store <4 x i8> zeroinitializer, ptr %i.arz, align 1, !tbaa !181
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ano, ptr noundef nonnull %i.aqb)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1136 unwind label %bb.pn

_ZN5AstIf9addThenspEP7AstNode.exit1136:           ; preds = %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  %i.asa = add i32 %.02623412, -1
  %i.asb = getelementptr inbounds nuw i8, ptr %.sroa.01322.03411, i64 8 ; 2 uses
  %i.asc = icmp eq ptr %i.asb, %.sroa.11.03410
  br i1 %i.asc, label %bb.ph, label %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137

bb.ph:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1136
  %i.asd = getelementptr inbounds nuw i8, ptr %.sroa.14.03409, i64 8 ; 2 uses
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !428 ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 512
  br label %_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137

_ZNSt15_Deque_iteratorIP11AstNodeStmtRS1_PS1_EppEv.exit1137: ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1136, %bb.ph
  %.sroa.14.1 = phi ptr [ %i.asd, %bb.ph ], [ %.sroa.14.03409, %_ZN5AstIf9addThenspEP7AstNode.exit1136 ]
  %.sroa.11.1 = phi ptr [ %i.asf, %bb.ph ], [ %.sroa.11.03410, %_ZN5AstIf9addThenspEP7AstNode.exit1136 ]
  %.sroa.01322.1 = phi ptr [ %i.ase, %bb.ph ], [ %i.asb, %_ZN5AstIf9addThenspEP7AstNode.exit1136 ] ; 2 uses
  %.not2036 = icmp eq ptr %.sroa.01322.1, %i.aon
  br i1 %.not2036, label %._crit_edge3414, label %.lr.ph3413

bb.pi:                                            ; preds = %.lr.ph3413
  %i.asg = landingpad { ptr, i32 }
          cleanup
  br label %bb.rw

bb.pj:                                            ; preds = %bb.op
  %i.ash = landingpad { ptr, i32 }
          cleanup
  br label %.thread1897

bb.pk:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1115, %bb.oq
  %i.asi = landingpad { ptr, i32 }
          cleanup
  br label %.thread1882

bb.pl:                                            ; preds = %.noexc1111, %bb.or
  %i.asj = landingpad { ptr, i32 }
          cleanup
  br label %.body1113

.body1113:                                        ; preds = %bb.os, %bb.pl
  %eh.lpad-body1114 = phi { ptr, i32 } [ %i.asj, %bb.pl ], [ %i.aqf, %bb.os ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aqd, i64 noundef 208) #23
  br label %.thread1882

bb.pm:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1117
  %lpad.thr_comm.split-lp1875 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.aqg, i64 noundef 232) #23
  br label %.thread1882

.thread1892:                                      ; preds = %.noexc.i1119, %bb.pc, %bb.pb, %.noexc1122, %.noexc1121, %bb.oz, %.noexc11.i
  %lpad.thr_comm1890 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %.thread1882

.thread1882:                                      ; preds = %.body1113, %bb.pk, %bb.pm, %.thread1892
  %.pn5791886 = phi { ptr, i32 } [ %lpad.thr_comm1890, %.thread1892 ], [ %eh.lpad-body1114, %.body1113 ], [ %i.asi, %bb.pk ], [ %lpad.thr_comm.split-lp1875, %bb.pm ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aqc, i64 noundef 160) #23
  br label %.thread1897

.thread1905:                                      ; preds = %bb.pf, %_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_.exit, %_ZN11AstNodeStmt9cloneTreeEbb.exit, %.noexc1130
  %lpad.thr_comm1903 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %.thread1897

bb.pn:                                            ; preds = %bb.pg
  %lpad.thr_comm.split-lp1904 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %bb.rw

.thread1897:                                      ; preds = %bb.pj, %.thread1882, %.thread1905
  %.pn579.pn1900 = phi { ptr, i32 } [ %lpad.thr_comm1903, %.thread1905 ], [ %i.ash, %bb.pj ], [ %.pn5791886, %.thread1882 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aqb, i64 noundef 160) #23
  br label %bb.rw

bb.po:                                            ; preds = %._crit_edge3414
  %i.ask = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.pp unwind label %bb.rf     ; 4 uses

bb.pp:                                            ; preds = %bb.po
  %i.asl = load ptr, ptr %i.akq, align 8, !tbaa !499, !noalias !525 ; 2 uses
  %i.asm = load ptr, ptr %i.akr, align 8, !tbaa !503, !noalias !525
  %i.asn = load ptr, ptr %i.aks, align 8, !tbaa !504, !noalias !525
  %i.aso = ptrtoint ptr %i.asl to i64
  %i.asp = ptrtoint ptr %i.asm to i64
  %i.asq = sub i64 %i.aso, %i.asp
  %i.asr = ashr exact i64 %i.asq, 3
  %i.ass = add nsw i64 %i.asr, %67                ; 5 uses
  %i.ast = icmp sgt i64 %i.ass, -1
  br i1 %i.ast, label %bb.pq, label %bb.pt

bb.pq:                                            ; preds = %bb.pp
  %i.asu = icmp samesign ult i64 %i.ass, 64
  br i1 %i.asu, label %bb.pr, label %bb.ps

bb.pr:                                            ; preds = %bb.pq
  %i.asv = getelementptr inbounds nuw [8 x i8], ptr %i.asl, i64 %67
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1139

bb.ps:                                            ; preds = %bb.pq
  %i.asw = lshr i64 %i.ass, 6
  br label %bb.pu

bb.pt:                                            ; preds = %bb.pp
  %i.asx = ashr i64 %i.ass, 6
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps
  %i.asy = phi i64 [ %i.asw, %bb.ps ], [ %i.asx, %bb.pt ] ; 2 uses
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.asn, i64 %i.asy
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !505, !noalias !525
  %i.atb = shl nsw i64 %i.asy, 6
  %i.atc = sub nsw i64 %i.ass, %i.atb
  %i.atd = getelementptr inbounds [8 x i8], ptr %i.ata, i64 %i.atc
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1139

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1139:        ; preds = %bb.pr, %bb.pu
  %storemerge.i.i.i.i1138 = phi ptr [ %i.atd, %bb.pu ], [ %i.asv, %bb.pr ]
  %i.ate = load ptr, ptr %storemerge.i.i.i.i1138, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  store i8 1, ptr %47, align 1, !tbaa !136
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.ask, ptr noundef %i.lb, ptr noundef %i.ate, ptr noundef nonnull align 1 dereferenceable(1) %47)
          to label %bb.pv unwind label %bb.rk

bb.pv:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1139
  %i.atf = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.pw unwind label %bb.rj     ; 9 uses

bb.pw:                                            ; preds = %bb.pv
  %i.atg = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.px unwind label %bb.rg     ; 4 uses

bb.px:                                            ; preds = %bb.pw
  %i.ath = load ptr, ptr %i.akq, align 8, !tbaa !499, !noalias !528 ; 2 uses
  %i.ati = load ptr, ptr %i.akr, align 8, !tbaa !503, !noalias !528
  %i.atj = load ptr, ptr %i.aks, align 8, !tbaa !504, !noalias !528
  %i.atk = ptrtoint ptr %i.ath to i64
  %i.atl = ptrtoint ptr %i.ati to i64
  %i.atm = sub i64 %i.atk, %i.atl
  %i.atn = ashr exact i64 %i.atm, 3
  %i.ato = add nsw i64 %i.atn, %67                ; 5 uses
  %i.atp = icmp sgt i64 %i.ato, -1
  br i1 %i.atp, label %bb.py, label %bb.qb

bb.py:                                            ; preds = %bb.px
  %i.atq = icmp samesign ult i64 %i.ato, 64
  br i1 %i.atq, label %bb.pz, label %bb.qa

bb.pz:                                            ; preds = %bb.py
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %67
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141

bb.qa:                                            ; preds = %bb.py
  %i.ats = lshr i64 %i.ato, 6
  br label %bb.qc

bb.qb:                                            ; preds = %bb.px
  %i.att = ashr i64 %i.ato, 6
  br label %bb.qc

bb.qc:                                            ; preds = %bb.qb, %bb.qa
  %i.atu = phi i64 [ %i.ats, %bb.qa ], [ %i.att, %bb.qb ] ; 2 uses
  %i.atv = getelementptr inbounds [8 x i8], ptr %i.atj, i64 %i.atu
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !505, !noalias !528
  %i.atx = shl nsw i64 %i.atu, 6
  %i.aty = sub nsw i64 %i.ato, %i.atx
  %i.atz = getelementptr inbounds [8 x i8], ptr %i.atw, i64 %i.aty
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141:        ; preds = %bb.pz, %bb.qc
  %storemerge.i.i.i.i1140 = phi ptr [ %i.atz, %bb.qc ], [ %i.atr, %bb.pz ]
  %i.aua = load ptr, ptr %storemerge.i.i.i.i1140, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  store i8 0, ptr %48, align 1, !tbaa !136
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.atg, ptr noundef %i.lb, ptr noundef %i.aua, ptr noundef nonnull align 1 dereferenceable(1) %48)
          to label %bb.qd unwind label %bb.ri

bb.qd:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141
  %i.aub = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.qe unwind label %.thread1933 ; 7 uses

bb.qe:                                            ; preds = %bb.qd
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.aub, i16 121, ptr noundef %i.lb)
          to label %.noexc1142 unwind label %bb.rh

.noexc1142:                                       ; preds = %bb.qe
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.aub, align 8, !tbaa !67
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aub, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.auc, ptr noundef nonnull align 8 dereferenceable(208) %i.aub, i32 noundef 32, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc1143 unwind label %bb.rh

.noexc1143:                                       ; preds = %.noexc1142
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.aub)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1146 unwind label %bb.qf

bb.qf:                                            ; preds = %.noexc1143
  %i.aud = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.auc) #22
  br label %.thread1908

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1146: ; preds = %.noexc1143
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.atf, i16 253, ptr noundef %i.lb)
          to label %.noexc1149 unwind label %.thread1933

.noexc1149:                                       ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1146
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV11AstNodeBiop, i64 16), ptr %i.atf, align 8, !tbaa !67
  %i.aue = getelementptr inbounds nuw i8, ptr %i.atf, i64 152
  store i64 0, ptr %i.aue, align 8
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.atf, ptr noundef nonnull %i.atg)
          to label %.noexc1150 unwind label %.thread1933

.noexc1150:                                       ; preds = %.noexc1149
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.atf, ptr noundef nonnull %i.aub)
          to label %.noexc1151 unwind label %.thread1933

.noexc1151:                                       ; preds = %.noexc1150
  store ptr getelementptr inbounds nuw inrange(-16, 448) (i8, ptr @_ZTV6AstSub, i64 16), ptr %i.atf, align 8, !tbaa !67
  %i.auf = getelementptr inbounds nuw i8, ptr %i.atg, i64 72
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !139 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.atf, i64 72 ; 2 uses
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !139
  %.not.i.i.i1148 = icmp eq ptr %i.aui, %i.aug
  br i1 %.not.i.i.i1148, label %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit1152, label %bb.qg

bb.qg:                                            ; preds = %.noexc1151
  store ptr %i.aug, ptr %i.auh, align 8, !tbaa !139
  %i.auj = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  %i.auk = add i64 %i.auj, 1
  store i64 %i.auk, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  br label %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit1152

_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit1152: ; preds = %bb.qg, %.noexc1151
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.apk, i16 466, ptr noundef %i.lb)
          to label %.noexc1158 unwind label %.thread1956

.noexc1158:                                       ; preds = %_ZN6AstSubC2EP8FileLineP11AstNodeExprS3_.exit1152
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.apk, align 8, !tbaa !67
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.apk, ptr noundef nonnull %i.atf)
          to label %.noexc1159 unwind label %.thread1956

.noexc1159:                                       ; preds = %.noexc1158
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.apk, ptr noundef nonnull %i.ask)
          to label %.noexc1160 unwind label %.thread1956

.noexc1160:                                       ; preds = %.noexc1159
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ask, i64 72
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !139 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.apk, i64 72 ; 2 uses
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !139
  %.not.i.i8.i.i1154 = icmp eq ptr %i.auo, %i.aum
  br i1 %.not.i.i8.i.i1154, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1161, label %bb.qh

bb.qh:                                            ; preds = %.noexc1160
  store ptr %i.aum, ptr %i.aun, align 8, !tbaa !139
  %i.aup = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  %i.auq = add i64 %i.aup, 1
  store i64 %i.auq, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1161

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1161: ; preds = %.noexc1160, %bb.qh
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.apk, align 8, !tbaa !67
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ano, ptr noundef nonnull %i.apk)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1164 unwind label %bb.rl

_ZN5AstIf9addThenspEP7AstNode.exit1164:           ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1161
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  %i.aur = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.qi unwind label %bb.on     ; 9 uses

bb.qi:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1164
  %i.aus = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.qj unwind label %bb.rm     ; 3 uses

bb.qj:                                            ; preds = %bb.qi
  %i.aut = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.qk unwind label %bb.rn     ; 7 uses

bb.qk:                                            ; preds = %bb.qj
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.aut, i16 121, ptr noundef %i.lb)
          to label %.noexc1165 unwind label %bb.ro

.noexc1165:                                       ; preds = %bb.qk
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.aut, align 8, !tbaa !67
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.auu, ptr noundef nonnull align 8 dereferenceable(208) %i.aut, i32 noundef 32, i32 noundef 0, i1 noundef zeroext true)
          to label %.noexc1166 unwind label %bb.ro

.noexc1166:                                       ; preds = %.noexc1165
  invoke void @_ZN8AstConst14initWithNumberEv(ptr noundef nonnull align 8 dereferenceable(208) %i.aut)
          to label %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1169 unwind label %bb.ql

bb.ql:                                            ; preds = %.noexc1166
  %i.auv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.auu) #22
  br label %.body1167

_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1169: ; preds = %.noexc1166
  %i.auw = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.qm unwind label %bb.rn     ; 3 uses

bb.qm:                                            ; preds = %_ZN8AstConstC2EP8FileLineNS_12WidthedValueEij.exit1169
  %i.aux = load ptr, ptr %i.akq, align 8, !tbaa !499, !noalias !531 ; 2 uses
  %i.auy = load ptr, ptr %i.akr, align 8, !tbaa !503, !noalias !531
  %i.auz = load ptr, ptr %i.aks, align 8, !tbaa !504, !noalias !531
  %i.ava = ptrtoint ptr %i.aux to i64
  %i.avb = ptrtoint ptr %i.auy to i64
  %i.avc = sub i64 %i.ava, %i.avb
  %i.avd = ashr exact i64 %i.avc, 3
  %i.ave = add nsw i64 %i.avd, %67                ; 5 uses
  %i.avf = icmp sgt i64 %i.ave, -1
  br i1 %i.avf, label %bb.qn, label %bb.qq

bb.qn:                                            ; preds = %bb.qm
  %i.avg = icmp samesign ult i64 %i.ave, 64
  br i1 %i.avg, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  %i.avh = getelementptr inbounds nuw [8 x i8], ptr %i.aux, i64 %67
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1171

bb.qp:                                            ; preds = %bb.qn
  %i.avi = lshr i64 %i.ave, 6
  br label %bb.qr

bb.qq:                                            ; preds = %bb.qm
  %i.avj = ashr i64 %i.ave, 6
  br label %bb.qr

bb.qr:                                            ; preds = %bb.qq, %bb.qp
  %i.avk = phi i64 [ %i.avi, %bb.qp ], [ %i.avj, %bb.qq ] ; 2 uses
  %i.avl = getelementptr inbounds [8 x i8], ptr %i.auz, i64 %i.avk
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !505, !noalias !531
  %i.avn = shl nsw i64 %i.avk, 6
  %i.avo = sub nsw i64 %i.ave, %i.avn
  %i.avp = getelementptr inbounds [8 x i8], ptr %i.avm, i64 %i.avo
  br label %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1171

_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1171:        ; preds = %bb.qo, %bb.qr
  %storemerge.i.i.i.i1170 = phi ptr [ %i.avp, %bb.qr ], [ %i.avh, %bb.qo ]
  %i.avq = load ptr, ptr %storemerge.i.i.i.i1170, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  store i8 0, ptr %49, align 1, !tbaa !136
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.auw, ptr noundef %i.lb, ptr noundef %i.avq, ptr noundef nonnull align 1 dereferenceable(1) %49)
          to label %bb.qs unwind label %bb.rs

bb.qs:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1171
  invoke void @_ZN5AstEqC2EP8FileLineP11AstNodeExprS3_(ptr noundef nonnull align 8 dereferenceable(160) %i.aus, ptr noundef %i.lb, ptr noundef nonnull %i.aut, ptr noundef nonnull %i.auw)
          to label %bb.qt unwind label %.thread2013

.thread2013:                                      ; preds = %bb.qs
  %lpad.thr_comm19962015 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  br label %.thread2003

bb.qt:                                            ; preds = %bb.qs
  %i.avr = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %bb.qu unwind label %bb.rt     ; 8 uses

bb.qu:                                            ; preds = %bb.qt
  %i.avs = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #27
          to label %bb.qv unwind label %bb.rp     ; 4 uses

bb.qv:                                            ; preds = %bb.qu
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  store i8 1, ptr %50, align 1, !tbaa !136
  invoke void @_ZN9AstVarRefC2EP8FileLineP6AstVarRK7VAccess(ptr noundef nonnull align 8 dereferenceable(232) %i.avs, ptr noundef %i.lb, ptr noundef nonnull %i.lc, ptr noundef nonnull align 1 dereferenceable(1) %50)
          to label %bb.qw unwind label %bb.rr

bb.qw:                                            ; preds = %bb.qv
  %i.avt = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #27
          to label %bb.qx unwind label %.thread1984 ; 8 uses

bb.qx:                                            ; preds = %bb.qw
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(208) %i.avt, i16 121, ptr noundef %i.lb)
          to label %.noexc1174 unwind label %bb.rq

.noexc1174:                                       ; preds = %bb.qx
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV8AstConst, i64 16), ptr %i.avt, align 8, !tbaa !67
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 152 ; 2 uses
  invoke void @_ZN8V3NumberC2EP7AstNodeijb(ptr noundef nonnull align 8 dereferenceable(56) %i.avu, ptr noundef nonnull align 8 dereferenceable(208) %i.avt, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true)
          to label %.noexc1175 unwind label %bb.rq

.noexc1175:                                       ; preds = %.noexc1174
  %i.avv = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(208) %i.avt, i8 1)
          to label %.noexc.i1172 unwind label %bb.qz ; 2 uses

.noexc.i1172:                                     ; preds = %.noexc1175
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avt, i64 72 ; 2 uses
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !139
  %.not.i.i.i1173 = icmp eq ptr %i.avx, %i.avv
  br i1 %.not.i.i.i1173, label %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit1178, label %bb.qy

bb.qy:                                            ; preds = %.noexc.i1172
  store ptr %i.avv, ptr %i.avw, align 8, !tbaa !139
  %i.avy = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  %i.avz = add i64 %i.avy, 1
  store i64 %i.avz, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  br label %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit1178

bb.qz:                                            ; preds = %.noexc1175
  %i.awa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8V3NumberD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.avu) #22
  br label %.thread1959

_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit1178:  ; preds = %bb.qy, %.noexc.i1172
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.avr, i16 466, ptr noundef %i.lb)
          to label %.noexc1184 unwind label %.thread1984

.noexc1184:                                       ; preds = %_ZN8AstConstC2EP8FileLineNS_7BitTrueEb.exit1178
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.avr, align 8, !tbaa !67
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.avr, ptr noundef nonnull %i.avt)
          to label %.noexc1185 unwind label %.thread1984

.noexc1185:                                       ; preds = %.noexc1184
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.avr, ptr noundef nonnull %i.avs)
          to label %.noexc1186 unwind label %.thread1984

.noexc1186:                                       ; preds = %.noexc1185
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avs, i64 72
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !139 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avr, i64 72 ; 2 uses
  %i.awe = load ptr, ptr %i.awd, align 8, !tbaa !139
  %.not.i.i8.i.i1180 = icmp eq ptr %i.awe, %i.awc
  br i1 %.not.i.i8.i.i1180, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1187, label %bb.ra

bb.ra:                                            ; preds = %.noexc1186
  store ptr %i.awc, ptr %i.awd, align 8, !tbaa !139
  %i.awf = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  %i.awg = add i64 %i.awf, 1
  store i64 %i.awg, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !99
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1187

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1187: ; preds = %.noexc1186, %bb.ra
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.avr, align 8, !tbaa !67
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.aur, i16 481, ptr noundef %i.lb)
          to label %.noexc1189 unwind label %.thread2028

.noexc1189:                                       ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit1187
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstNodeIf, i64 16), ptr %i.aur, align 8, !tbaa !67
  %i.awh = getelementptr inbounds nuw i8, ptr %i.aur, i64 152
  store i8 0, ptr %i.awh, align 8, !tbaa !178
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aur, ptr noundef nonnull %i.aus)
          to label %.noexc1190 unwind label %.thread2028

.noexc1190:                                       ; preds = %.noexc1189
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.aur, ptr noundef nonnull %i.avr)
          to label %bb.rb unwind label %.thread2028

bb.rb:                                            ; preds = %.noexc1190
  %i.awi = getelementptr inbounds nuw i8, ptr %i.aur, i64 153
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV5AstIf, i64 16), ptr %i.aur, align 8, !tbaa !67
  store <4 x i8> zeroinitializer, ptr %i.awi, align 1, !tbaa !181
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ano, ptr noundef nonnull %i.aur)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1195 unwind label %bb.ru

_ZN5AstIf9addThenspEP7AstNode.exit1195:           ; preds = %bb.rb
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  %i.awj = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #27
          to label %bb.rc unwind label %bb.on     ; 5 uses

bb.rc:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1195
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.awj, i16 434, ptr noundef %i.lb)
          to label %bb.rd unwind label %bb.rv

bb.rd:                                            ; preds = %bb.rc
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV9AstJumpGo, i64 16), ptr %i.awj, align 8, !tbaa !67
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 152
  store ptr %i.zv, ptr %i.awk, align 8, !tbaa !140
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.ano, ptr noundef nonnull %i.awj)
          to label %_ZN5AstIf9addThenspEP7AstNode.exit1200 unwind label %bb.on

_ZN5AstIf9addThenspEP7AstNode.exit1200:           ; preds = %bb.rd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  %i.awl = getelementptr inbounds nuw i8, ptr %.sroa.01329.03418, i64 8 ; 2 uses
  %i.awm = icmp eq ptr %i.awl, %.sroa.111333.03417
  br i1 %i.awm, label %bb.re, label %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201

bb.re:                                            ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1200
  %i.awn = getelementptr inbounds nuw i8, ptr %.sroa.141334.03416, i64 8 ; 2 uses
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !444 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 512
  br label %_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201

_ZNSt15_Deque_iteratorIP13AstRSProdItemRS1_PS1_EppEv.exit1201: ; preds = %_ZN5AstIf9addThenspEP7AstNode.exit1200, %bb.re
  %.sroa.141334.1 = phi ptr [ %i.awn, %bb.re ], [ %.sroa.141334.03416, %_ZN5AstIf9addThenspEP7AstNode.exit1200 ]
  %.sroa.111333.1 = phi ptr [ %i.awp, %bb.re ], [ %.sroa.111333.03417, %_ZN5AstIf9addThenspEP7AstNode.exit1200 ]
  %.sroa.01329.1 = phi ptr [ %i.awo, %bb.re ], [ %i.awl, %_ZN5AstIf9addThenspEP7AstNode.exit1200 ] ; 2 uses
  %.not2035 = icmp eq ptr %.sroa.01329.1, %i.akn
  br i1 %.not2035, label %._crit_edge3421, label %bb.mm

bb.rf:                                            ; preds = %bb.po
  %i.awq = landingpad { ptr, i32 }
          cleanup
  br label %.thread1945

bb.rg:                                            ; preds = %bb.pw
  %i.awr = landingpad { ptr, i32 }
          cleanup
  br label %.thread1949

bb.rh:                                            ; preds = %.noexc1142, %bb.qe
  %i.aws = landingpad { ptr, i32 }
          cleanup
  br label %.thread1908

.thread1908:                                      ; preds = %bb.rh, %bb.qf
  %eh.lpad-body1145 = phi { ptr, i32 } [ %i.aws, %bb.rh ], [ %i.aud, %bb.qf ]
  call void @_ZdlPvm(ptr noundef nonnull %i.aub, i64 noundef 208) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  br label %.thread1949

bb.ri:                                            ; preds = %_ZNSt5dequeIP6AstVarSaIS1_EEixEm.exit1141
  %lpad.thr_comm.split-lp1916 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
end_hunk_1
