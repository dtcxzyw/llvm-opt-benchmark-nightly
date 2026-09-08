Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/minimize?download=true
inline.NumInlined: 1769
inline.NumDeleted: 812
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN3gmx15LegacySimulator8do_lbfgsEv:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67, !nonnull !68, !align !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !79
  %i.p = icmp eq i32 %i.o, 0                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN7t_stateC1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %1)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 11 uses
  invoke void @_ZN3gmx12ForceBuffersC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %i.q)
          to label %bb.c unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit755, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.b ], [ %.pn595.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit755 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %1) #23
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !178
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !180  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !181, !nonnull !68, !align !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !184  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 1, ptr %i.ad, align 8, !tbaa !187
  %i.ae = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.103, i64 noundef 211)
          to label %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit unwind label %bb.d ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextEPKc.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !189
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.d, !inline_history !0

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit
  %i.ai = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ab
  br i1 %i.aj, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #32
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.e

bb.d:                                             ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ab
  br i1 %i.ao, label %_ZN3gmx14LogEntryWriterD2Ev.exit621, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i619: ; preds = %bb.d
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !19
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #32
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit621

_ZN3gmx14LogEntryWriterD2Ev.exit621:              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i619
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit755

bb.e:                                             ; preds = %bb.c, %_ZN3gmx14LogEntryWriterD2Ev.exit
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %.val = load ptr, ptr %i.as, align 8, !tbaa !391
  %.not984 = icmp eq ptr %.val, null
  br i1 %.not984, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(63) @.str.22, i8 noundef zeroext 2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 2061, ptr noundef nonnull @.str.104) #31
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn595 = phi { ptr, i32 } [ %i.au, %bb.j ], [ %i.at, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit755

bb.l:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %i.ar, align 8, !tbaa !656, !nonnull !68, !align !69
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !516
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(63) @.str.22, i8 noundef zeroext 2)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 2065, ptr noundef nonnull @.str.105) #31
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn593 = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.az, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit755

bb.s:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !202
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(63) @.str.22, i8 noundef zeroext 2)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 2071, ptr noundef nonnull @.str.106) #31
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn591 = phi { ptr, i32 } [ %i.be, %bb.x ], [ %i.bd, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit755

bb.z:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 9 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !190
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !321 ; 3 uses
  %i.bi = mul i32 %i.bh, 3                        ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 17 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 520
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !850 ; 8 uses
  %i.bn = sext i32 %i.bi to i64                   ; 11 uses
  %i.bo = icmp slt i32 %i.bh, 0
  br i1 %i.bo, label %bb.aa, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #31
          to label %.noexc622 unwind label %bb.ag

.noexc622:                                        ; preds = %bb.aa
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.z
  %.not.i.i.i.i = icmp eq i32 %i.bh, 0            ; 14 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bp = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #35
          to label %.noexc623 unwind label %bb.ag ; 4 uses

.noexc623:                                        ; preds = %bb.ab
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !333
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bn
  %19 = getelementptr i8, ptr %i.bq, i64 4
  %.idx.i.i.i.i.i.i.i.a = add nsw i64 %i.bp, -4
  call void @llvm.memset.p0.i64(ptr align 4 %19, i8 0, i64 %.idx.i.i.i.i.i.i.i.a, i1 false), !tbaa !333
  %20 = ptrtoint ptr %i.br to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit:               ; preds = %.noexc623, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.16.0 = phi i64 [ %20, %.noexc623 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0824.0 = phi ptr [ %i.bq, %.noexc623 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ] ; 67 uses
  %.sroa.0824.01713 = ptrtoaddr ptr %.sroa.0824.0 to i64
  %i.bs = sext i32 %i.bm to i64                   ; 8 uses
  %i.bt = icmp slt i32 %i.bm, 0
  br i1 %i.bt, label %bb.ac, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i624

bb.ac:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #31
          to label %.noexc630 unwind label %bb.ah

.noexc630:                                        ; preds = %bb.ac
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i624: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit
  %.not.i.i.i.i625 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i625, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i624
  %i.bu = shl nuw nsw i64 %i.bs, 2                ; 2 uses
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #35
          to label %.noexc631 unwind label %bb.ah ; 7 uses

.noexc631:                                        ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bs ; 4 uses
  store float 0.000000e+00, ptr %i.bv, align 4, !tbaa !333
  %i.bx = add nsw i64 %i.bs, -1                   ; 3 uses
  %i.by = icmp eq i64 %i.bx, 0                    ; 2 uses
  br i1 %i.by, label %bb.ae, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i626

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i626: ; preds = %.noexc631
  %i.bz = getelementptr i8, ptr %i.bv, i64 4
  %.idx.i.i.i.i.i.i.i627 = shl nuw nsw i64 %i.bx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %.idx.i.i.i.i.i.i.i627, i1 false), !tbaa !333
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc631, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i626
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #35
          to label %.noexc640 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit751.thread ; 6 uses

.noexc640:                                        ; preds = %bb.ae
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bs ; 3 uses
  store float 0.000000e+00, ptr %i.ca, align 4, !tbaa !333
  br i1 %i.by, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i635

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i635: ; preds = %.noexc640
  %i.cc = getelementptr i8, ptr %i.ca, i64 4
  %.idx.i.i.i.i.i.i.i636 = shl nuw nsw i64 %i.bx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cc, i8 0, i64 %.idx.i.i.i.i.i.i.i636, i1 false), !tbaa !333
  br label %.lr.ph.preheader.i.i.i.i.i

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i624
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.noexc640, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i635
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ch = mul nuw nsw i64 %i.bs, 24               ; 3 uses
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #35
          to label %bb.af unwind label %.thread952 ; 5 uses

bb.af:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.ci, ptr %6, align 8, !tbaa !659
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.bs
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ci, i8 0, i64 %i.ch, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ci, i64 %i.ch ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !660
  store ptr %scevgep.i.i.i.i.i, ptr %i.ck, align 8, !tbaa !661
  br label %.lr.ph

_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645: ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cm = mul nuw nsw i64 %i.bs, 24               ; 3 uses
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #35
          to label %bb.al unwind label %.thread1466 ; 5 uses

bb.ag:                                            ; preds = %bb.ab, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit755

bb.ah:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit753

_ZNSt6vectorIfSaIfEED2Ev.exit751.thread:          ; preds = %bb.ae
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hs

.thread952:                                       ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.lr.ph:                                           ; preds = %bb.af, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %.sroa.0802.01016 = phi ptr [ %i.dd, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %i.ci, %bb.af ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0802.01016, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !509 ; 2 uses
  %i.cu = load ptr, ptr %.sroa.0802.01016, align 8, !tbaa !505 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 2                 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, %i.bn
  br i1 %i.cz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph
  %i.da = sub nuw nsw i64 %i.bn, %i.cy
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0802.01016, i64 noundef %i.da)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %.thread1459

bb.aj:                                            ; preds = %.lr.ph
  %i.db = icmp ugt i64 %i.cy, %i.bn
  br i1 %i.db, label %bb.ak, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ak:                                            ; preds = %bb.aj
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.bn ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, %i.dc
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ak
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !509
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.ak, %bb.aj, %bb.ai
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0802.01016, i64 24 ; 2 uses
  %.not985 = icmp eq ptr %i.dd, %scevgep.i.i.i.i.i
  br i1 %.not985, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645, label %.lr.ph

.thread1459:                                      ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %.sink.split

bb.al:                                            ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645
  store ptr %i.cn, ptr %7, align 8, !tbaa !659
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.bs
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cn, i8 0, i64 %i.cm, i1 false)
  %scevgep.i.i.i.i.i648 = getelementptr i8, ptr %i.cn, i64 %i.cm ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.df, ptr %i.dh, align 8, !tbaa !660
  store ptr %scevgep.i.i.i.i.i648, ptr %i.dg, align 8, !tbaa !661
  br label %.lr.ph1019

._crit_edge:                                      ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit659, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread
  %i.di = phi ptr [ %i.cg, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread ], [ %i.dh, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ]
  %i.dj = phi ptr [ %i.cf, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread ], [ %i.dg, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ]
  %i.dk = phi ptr [ %i.cd, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread ], [ %i.cl, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ]
  %i.dl = phi ptr [ %i.ce, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread ], [ %i.ck, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ]
  %.sroa.0815.0881887139714171445 = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread ], [ %i.bv, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ] ; 9 uses
  %.sroa.12821.0859889137814191444 = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread ], [ %i.bw, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ] ; 2 uses
  %.sroa.12.0910135914211443 = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread ], [ %i.cb, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ] ; 2 uses
  %.sroa.0807.0931134014231442 = phi ptr [ null, %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645.thread ], [ %i.ca, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !192
  invoke void @_ZN3gmx25ObservablesReducerBuilder5buildEv(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ObservablesReducer") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %i.dn)
          to label %bb.aq unwind label %bb.bk

.thread1466:                                      ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i645
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  br label %.sink.split

.lr.ph1019:                                       ; preds = %bb.al, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659
  %.sroa.0797.01018 = phi ptr [ %i.ea, %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 ], [ %i.cn, %bb.al ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0797.01018, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !509 ; 2 uses
  %i.dr = load ptr, ptr %.sroa.0797.01018, align 8, !tbaa !505 ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2                 ; 3 uses
  %i.dw = icmp ult i64 %i.dv, %i.bn
  br i1 %i.dw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph1019
  %i.dx = sub nuw nsw i64 %i.bn, %i.dv
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0797.01018, i64 noundef %i.dx)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit659 unwind label %bb.ap

bb.an:                                            ; preds = %.lr.ph1019
  %i.dy = icmp ugt i64 %i.dv, %i.bn
  br i1 %i.dy, label %bb.ao, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit659

bb.ao:                                            ; preds = %bb.an
end_hunk_0
begin_hunk_1_@_ZN3gmx15LegacySimulator8do_lbfgsEv:bb.a
  %i.bnl = load ptr, ptr @stderr, align 8, !tbaa !236
  %i.bnm = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 504
  %i.bno = load float, ptr %i.bnn, align 8, !tbaa !237
  %i.bnp = trunc nuw i8 %.6 to i1                 ; 2 uses
  %sext = shl i64 %i.hq, 32
  %i.bnq = ashr exact i64 %sext, 32               ; 2 uses
  invoke fastcc void @_ZL15print_convergedP8_IO_FILEPKcflblPK8em_stated(ptr noundef %i.bnl, ptr noundef nonnull @.str.102, float noundef %i.bno, i64 noundef %i.bmo, i1 noundef zeroext %i.bnp, i64 noundef %i.bnq, ptr noundef nonnull %1, double noundef %i.bnk)
          to label %bb.gp unwind label %bb.gs

bb.gp:                                            ; preds = %bb.go
  %i.bnr = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.bns = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 504
  %i.bnu = load float, ptr %i.bnt, align 8, !tbaa !237
  invoke fastcc void @_ZL15print_convergedP8_IO_FILEPKcflblPK8em_stated(ptr noundef %i.bnr, ptr noundef nonnull @.str.102, float noundef %i.bnu, i64 noundef %i.bmo, i1 noundef zeroext %i.bnp, i64 noundef %i.bnq, ptr noundef nonnull %1, double noundef %i.bnk)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.bnv = load ptr, ptr %i.i, align 8, !tbaa !193
  %i.bnw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bnv, ptr noundef nonnull @.str.19, i32 noundef %.5479) #23 ; 0 uses
  br label %bb.gt

bb.gr:                                            ; preds = %bb.gt, %bb.gu, %bb.gm, %_Z11do_per_stepll.exit726
  %i.bnx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.gs:                                            ; preds = %bb.gp, %bb.go
  %i.bny = landingpad { ptr, i32 }
          cleanup
  br label %bb.hf

bb.gt:                                            ; preds = %bb.gq, %bb.gn
  %i.bnz = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.boa = load ptr, ptr %i.gs, align 8, !tbaa !210
  %i.bob = load ptr, ptr %i.fo, align 8, !tbaa !208
  %i.boc = getelementptr i8, ptr %i.bnz, i64 16
  %.val612 = load ptr, ptr %i.boc, align 8, !tbaa !391
  invoke fastcc void @_ZL9finish_emPK9t_commrecP10gmx_mdoutfP23gmx_walltime_accountingP13gmx_wallcycle(ptr %.val612, ptr noundef %i.fs, ptr noundef %i.boa, ptr noundef %i.bob)
          to label %bb.gu unwind label %bb.gr

bb.gu:                                            ; preds = %bb.gt
  %i.bod = load ptr, ptr %i.gs, align 8, !tbaa !210
  invoke void @_Z35walltime_accounting_set_nsteps_doneP23gmx_walltime_accountingl(ptr noundef %i.bod, i64 noundef %i.bmo)
          to label %bb.gv unwind label %bb.gr

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.val615 = load ptr, ptr %i.mp, align 8, !tbaa !496 ; 3 uses
  %.not.i.i.i.i727 = icmp eq ptr %.val615, null
  br i1 %.not.i.i.i.i727, label %_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.boe = getelementptr inbounds nuw i8, ptr %14, i64 192
  %.val616 = load ptr, ptr %i.boe, align 8
  %i.bof = ptrtoint ptr %.val616 to i64
  %i.bog = ptrtoint ptr %.val615 to i64
  %i.boh = sub i64 %i.bof, %i.bog
  call void @_ZdlPvm(ptr noundef nonnull %.val615, i64 noundef %i.boh) #32
  br label %_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit

_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit:      ; preds = %bb.gv, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.not.i.i728 = icmp eq ptr %.sroa.0785.0, null
  br i1 %.not.i.i728, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.gx

bb.gx:                                            ; preds = %_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit
  %i.boi = ptrtoint ptr %.sroa.17793.0 to i64
  %i.boj = ptrtoint ptr %.sroa.0785.0 to i64
  %i.bok = sub i64 %i.boi, %i.boj                 ; 2 uses
  %i.bol = ashr exact i64 %i.bok, 3
  %i.bom = sub nsw i64 0, %i.bol
  %i.bon = getelementptr inbounds [8 x i8], ptr %.sroa.17793.0, i64 %i.bom
  call void @_ZdlPvm(ptr noundef %i.bon, i64 noundef %i.bok) #32
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit, %bb.gx
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.gh) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.gf) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.gc) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.ga) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN3gmx12EnergyOutputD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN3gmx18ObservablesReducerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.boo = load ptr, ptr %7, align 8, !tbaa !659  ; 5 uses
  %i.bop = load ptr, ptr %i.dj, align 8, !tbaa !661 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.boo, %i.bop
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bow, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i ], [ %i.boo, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.boq = load ptr, ptr %.05.i.i.i, align 8, !tbaa !505 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.boq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %.lr.ph.i.i.i
  %i.bor = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !506
  %i.bot = ptrtoint ptr %i.bos to i64
  %i.bou = ptrtoint ptr %i.boq to i64
  %i.bov = sub i64 %i.bot, %i.bou
  call void @_ZdlPvm(ptr noundef nonnull %i.boq, i64 noundef %i.bov) #32
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i:  ; preds = %bb.gy, %.lr.ph.i.i.i
  %i.bow = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i729 = icmp eq ptr %i.bow, %i.bop
  br i1 %.not.i.i.i729, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %.not.i.i1.i = icmp eq ptr %i.boo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, label %bb.gz

bb.gz:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i
  %i.box = load ptr, ptr %i.di, align 8, !tbaa !660
  %i.boy = ptrtoint ptr %i.box to i64
  %i.boz = ptrtoint ptr %i.boo to i64
  %i.bpa = sub i64 %i.boy, %i.boz
  call void @_ZdlPvm(ptr noundef nonnull %i.boo, i64 noundef %i.bpa) #32
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bpb = load ptr, ptr %6, align 8, !tbaa !659  ; 5 uses
  %i.bpc = load ptr, ptr %i.dl, align 8, !tbaa !661 ; 2 uses
  %.not4.i.i.i730 = icmp eq ptr %i.bpb, %i.bpc
  br i1 %.not4.i.i.i730, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i738, label %.lr.ph.i.i.i731

.lr.ph.i.i.i731:                                  ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i734
  %.05.i.i.i732 = phi ptr [ %i.bpj, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i734 ], [ %i.bpb, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.bpd = load ptr, ptr %.05.i.i.i732, align 8, !tbaa !505 ; 3 uses
  %.not.i.i.i.i.i.i.i733 = icmp eq ptr %i.bpd, null
  br i1 %.not.i.i.i.i.i.i.i733, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i734, label %bb.ha

bb.ha:                                            ; preds = %.lr.ph.i.i.i731
  %i.bpe = getelementptr inbounds nuw i8, ptr %.05.i.i.i732, i64 16
  %i.bpf = load ptr, ptr %i.bpe, align 8, !tbaa !506
  %i.bpg = ptrtoint ptr %i.bpf to i64
  %i.bph = ptrtoint ptr %i.bpd to i64
  %i.bpi = sub i64 %i.bpg, %i.bph
  call void @_ZdlPvm(ptr noundef nonnull %i.bpd, i64 noundef %i.bpi) #32
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i734

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i734: ; preds = %bb.ha, %.lr.ph.i.i.i731
  %i.bpj = getelementptr inbounds nuw i8, ptr %.05.i.i.i732, i64 24 ; 2 uses
  %.not.i.i.i735 = icmp eq ptr %i.bpj, %i.bpc
  br i1 %.not.i.i.i735, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i738, label %.lr.ph.i.i.i731, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i738: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i.i734, %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit
  %.not.i.i1.i739 = icmp eq ptr %i.bpb, null
  br i1 %.not.i.i1.i739, label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit740, label %bb.hb

bb.hb:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i738
  %i.bpk = load ptr, ptr %i.dk, align 8, !tbaa !660
  %i.bpl = ptrtoint ptr %i.bpk to i64
  %i.bpm = ptrtoint ptr %i.bpb to i64
  %i.bpn = sub i64 %i.bpl, %i.bpm
  call void @_ZdlPvm(ptr noundef nonnull %i.bpb, i64 noundef %i.bpn) #32
  br label %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit740

_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit740:      ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit.i738, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i.i741 = icmp eq ptr %.sroa.0807.0931134014231442, null
  br i1 %.not.i.i.i741, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.hc

bb.hc:                                            ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit740
  %i.bpo = ptrtoint ptr %.sroa.12.0910135914211443 to i64
  %i.bpp = ptrtoint ptr %.sroa.0807.0931134014231442 to i64
  %i.bpq = sub i64 %i.bpo, %i.bpp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0807.0931134014231442, i64 noundef %i.bpq) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev.exit740, %bb.hc
  %.not.i.i.i742 = icmp eq ptr %.sroa.0815.0881887139714171445, null
  br i1 %.not.i.i.i742, label %_ZNSt6vectorIfSaIfEED2Ev.exit743, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.bpr = ptrtoint ptr %.sroa.12821.0859889137814191444 to i64
  %i.bps = ptrtoint ptr %.sroa.0815.0881887139714171445 to i64
  %i.bpt = sub i64 %i.bpr, %i.bps
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0815.0881887139714171445, i64 noundef %i.bpt) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit743

_ZNSt6vectorIfSaIfEED2Ev.exit743:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.hd
  %.not.i.i.i744 = icmp eq ptr %.sroa.0824.0, null
  br i1 %.not.i.i.i744, label %_ZNSt6vectorIfSaIfEED2Ev.exit745, label %bb.he

bb.he:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit743
  %i.bpu = ptrtoint ptr %.sroa.0824.0 to i64
  %i.bpv = sub i64 %.sroa.16.0, %i.bpu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0824.0, i64 noundef %i.bpv) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit745

_ZNSt6vectorIfSaIfEED2Ev.exit745:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit743, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.q) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.hf:                                            ; preds = %bb.gr, %bb.gs, %bb.fz, %bb.fx, %bb.ct, %bb.cs
  %.pn567.pn = phi { ptr, i32 } [ %i.na, %bb.cs ], [ %i.nb, %bb.ct ], [ %i.bnx, %bb.gr ], [ %i.bny, %bb.gs ], [ %.pn551.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.fx ], [ %i.blw, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.val613 = load ptr, ptr %i.mp, align 8, !tbaa !496 ; 3 uses
  %.not.i.i.i.i746 = icmp eq ptr %.val613, null
  br i1 %.not.i.i.i.i746, label %_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit747, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bpw = getelementptr inbounds nuw i8, ptr %14, i64 192
  %.val614 = load ptr, ptr %i.bpw, align 8
  %i.bpx = ptrtoint ptr %.val614 to i64
  %i.bpy = ptrtoint ptr %.val613 to i64
  %i.bpz = sub i64 %i.bpx, %i.bpy
  call void @_ZdlPvm(ptr noundef nonnull %.val613, i64 noundef %i.bpz) #32
  br label %_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit747

_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit747:   ; preds = %bb.hf, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.hh

bb.hh:                                            ; preds = %_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit747, %bb.cl
  %.pn570 = phi { ptr, i32 } [ %i.lo, %bb.cl ], [ %.pn567.pn, %_ZN12_GLOBAL__N_115EnergyEvaluatorD2Ev.exit747 ] ; 2 uses
  %.not.i.i748 = icmp eq ptr %.sroa.0785.0, null
  br i1 %.not.i.i748, label %.body, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bqa = ptrtoint ptr %.sroa.17793.0 to i64
  %i.bqb = ptrtoint ptr %.sroa.0785.0 to i64
  %i.bqc = sub i64 %i.bqa, %i.bqb                 ; 2 uses
  %i.bqd = ashr exact i64 %i.bqc, 3
  %i.bqe = sub nsw i64 0, %i.bqd
  %i.bqf = getelementptr inbounds [8 x i8], ptr %.sroa.17793.0, i64 %i.bqe
  call void @_ZdlPvm(ptr noundef %i.bqf, i64 noundef %i.bqc) #32
  br label %.body

.body:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i, %bb.hh, %bb.hi, %bb.bw
  %.pn570.pn.pn = phi { ptr, i32 } [ %i.iu, %bb.bw ], [ %i.hy, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i ], [ %.pn570, %bb.hi ], [ %.pn570, %bb.hh ]
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.gh) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %13) #23
  br label %bb.hj

bb.hj:                                            ; preds = %.body, %bb.bv, %bb.bu
  %.pn570.pn.pn.pn = phi { ptr, i32 } [ %.pn570.pn.pn, %.body ], [ %i.it, %bb.bv ], [ %i.is, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.gf) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %12) #23
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.bt, %bb.bs
  %.pn570.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn570.pn.pn.pn, %bb.hj ], [ %i.ir, %bb.bt ], [ %i.iq, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.gc) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %11) #23
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.br, %bb.bq
  %.pn570.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn570.pn.pn.pn.pn, %bb.hk ], [ %i.ip, %bb.br ], [ %i.io, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.ga) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %10) #23
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.bp, %bb.bo
  %.pn570.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn570.pn.pn.pn.pn.pn, %bb.hl ], [ %i.in, %bb.bp ], [ %i.im, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZN3gmx12EnergyOutputD1Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %9) #23
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.bn
  %.pn570.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn570.pn.pn.pn.pn.pn.pn, %bb.hm ], [ %i.il, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ho

bb.ho:                                            ; preds = %bb.bm, %bb.hn, %bb.bl
  %.pn570.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ij, %bb.bl ], [ %.pn570.pn.pn.pn.pn.pn.pn.pn, %bb.hn ], [ %i.ik, %bb.bm ]
  call void @_ZN3gmx18ObservablesReducerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.bk
  %.pn570.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn570.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ho ], [ %i.ii, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.hq

bb.hq:                                            ; preds = %bb.ap, %bb.hp
  %.sroa.0815.08818871400 = phi ptr [ %i.bv, %bb.ap ], [ %.sroa.0815.0881887139714171445, %bb.hp ] ; 2 uses
  %.sroa.12821.08598891381 = phi ptr [ %i.bw, %bb.ap ], [ %.sroa.12821.0859889137814191444, %bb.hp ] ; 2 uses
  %.sroa.12.09101362 = phi ptr [ %i.cb, %bb.ap ], [ %.sroa.12.0910135914211443, %bb.hp ]
  %.sroa.0807.09311343 = phi ptr [ %i.ca, %bb.ap ], [ %.sroa.0807.0931134014231442, %bb.hp ] ; 2 uses
  %.pn582 = phi { ptr, i32 } [ %i.eb, %bb.ap ], [ %.pn570.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hp ] ; 2 uses
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i.i750 = icmp eq ptr %.sroa.0807.09311343, null
  br i1 %.not.i.i.i750, label %_ZNSt6vectorIfSaIfEED2Ev.exit751, label %bb.hr

.sink.split:                                      ; preds = %.thread952, %.thread1459, %.thread1466
  %.pn585.pn965.ph = phi { ptr, i32 } [ %i.do, %.thread1466 ], [ %i.de, %.thread1459 ], [ %i.cr, %.thread952 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.hr

bb.hr:                                            ; preds = %.sink.split, %bb.hq
  %.pn585.pn965 = phi { ptr, i32 } [ %.pn582, %bb.hq ], [ %.pn585.pn965.ph, %.sink.split ]
  %.sroa.12821.0840963 = phi ptr [ %.sroa.12821.08598891381, %bb.hq ], [ %i.bw, %.sink.split ]
  %.sroa.0815.0862961 = phi ptr [ %.sroa.0815.08818871400, %bb.hq ], [ %i.bv, %.sink.split ]
  %.sroa.12.0891960 = phi ptr [ %.sroa.12.09101362, %bb.hq ], [ %i.cb, %.sink.split ]
  %.sroa.0807.0912959 = phi ptr [ %.sroa.0807.09311343, %bb.hq ], [ %i.ca, %.sink.split ] ; 2 uses
  %i.bqg = ptrtoint ptr %.sroa.12.0891960 to i64
  %i.bqh = ptrtoint ptr %.sroa.0807.0912959 to i64
  %i.bqi = sub i64 %i.bqg, %i.bqh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0807.0912959, i64 noundef %i.bqi) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit751

_ZNSt6vectorIfSaIfEED2Ev.exit751:                 ; preds = %bb.hr, %bb.hq
  %.sroa.0815.0861 = phi ptr [ %.sroa.0815.0862961, %bb.hr ], [ %.sroa.0815.08818871400, %bb.hq ] ; 2 uses
  %.sroa.12821.0839 = phi ptr [ %.sroa.12821.0840963, %bb.hr ], [ %.sroa.12821.08598891381, %bb.hq ]
  %.pn585.pn.pn = phi { ptr, i32 } [ %.pn585.pn965, %bb.hr ], [ %.pn582, %bb.hq ] ; 2 uses
  %.not.i.i.i752 = icmp eq ptr %.sroa.0815.0861, null
  br i1 %.not.i.i.i752, label %_ZNSt6vectorIfSaIfEED2Ev.exit753, label %bb.hs

bb.hs:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit751.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit751
  %.pn585.pn.pn973 = phi { ptr, i32 } [ %i.cq, %_ZNSt6vectorIfSaIfEED2Ev.exit751.thread ], [ %.pn585.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit751 ]
  %.sroa.12821.0839972 = phi ptr [ %i.bw, %_ZNSt6vectorIfSaIfEED2Ev.exit751.thread ], [ %.sroa.12821.0839, %_ZNSt6vectorIfSaIfEED2Ev.exit751 ]
  %.sroa.0815.0861971 = phi ptr [ %i.bv, %_ZNSt6vectorIfSaIfEED2Ev.exit751.thread ], [ %.sroa.0815.0861, %_ZNSt6vectorIfSaIfEED2Ev.exit751 ] ; 2 uses
  %i.bqj = ptrtoint ptr %.sroa.12821.0839972 to i64
  %i.bqk = ptrtoint ptr %.sroa.0815.0861971 to i64
  %i.bql = sub i64 %i.bqj, %i.bqk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0815.0861971, i64 noundef %i.bql) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit753

_ZNSt6vectorIfSaIfEED2Ev.exit753:                 ; preds = %bb.hs, %_ZNSt6vectorIfSaIfEED2Ev.exit751, %bb.ah
  %.pn585.pn.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.ah ], [ %.pn585.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit751 ], [ %.pn585.pn.pn973, %bb.hs ] ; 2 uses
  %.not.i.i.i754 = icmp eq ptr %.sroa.0824.0, null
  br i1 %.not.i.i.i754, label %_ZNSt6vectorIfSaIfEED2Ev.exit755, label %bb.ht

bb.ht:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit753
  %i.bqm = ptrtoint ptr %.sroa.0824.0 to i64
  %i.bqn = sub i64 %.sroa.16.0, %i.bqm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0824.0, i64 noundef %i.bqn) #32
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit755

_ZNSt6vectorIfSaIfEED2Ev.exit755:                 ; preds = %bb.ag, %_ZNSt6vectorIfSaIfEED2Ev.exit753, %bb.ht, %_ZN3gmx14LogEntryWriterD2Ev.exit621, %bb.y, %bb.r, %bb.k
  %.pn595.pn = phi { ptr, i32 } [ %.pn595, %bb.k ], [ %.pn593, %bb.r ], [ %.pn591, %bb.y ], [ %.pn585.pn.pn.pn, %bb.ht ], [ %i.am, %_ZN3gmx14LogEntryWriterD2Ev.exit621 ], [ %i.co, %bb.ag ], [ %.pn585.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit753 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN3gmx12ForceBuffersD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.q) #23
  call void @_ZN7t_stateD2Ev(ptr noundef nonnull align 8 dead_on_return(840) dereferenceable(1000) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !659    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !661  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !505 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !506
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #32
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !659
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !660
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #32
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !509  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !505    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !506
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !333
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !333
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !509
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #31
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #35 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !333
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !333
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !506
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #32
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !505
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !509
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !506
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(137) ptr @_ZN3gmx12ForceBuffersaSERKS0_(ptr noundef nonnull align 8 dereferenceable(137), ptr noundef nonnull align 8 dereferenceable(137)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx15LegacySimulator8do_steepEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(297) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [3 x [3 x float]], align 16       ; 5 uses
  %i.c = alloca [3 x [3 x float]], align 16       ; 5 uses
  %i.d = alloca [3 x float], align 4              ; 6 uses
  %1 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %2 = alloca %struct.em_state, align 8           ; 9 uses
  %3 = alloca %struct.em_state, align 8           ; 11 uses
  %4 = alloca %"class.gmx::ObservablesReducer", align 8 ; 8 uses
  %5 = alloca %"class.gmx::EnergyOutput", align 8 ; 8 uses
  %6 = alloca %"class.(anonymous namespace)::EnergyEvaluator", align 8 ; 21 uses
  %7 = alloca %"class.gmx::ArrayRefWithPadding.430", align 16 ; 3 uses
  %i.e = alloca [3 x [3 x float]], align 16       ; 5 uses
  %8 = alloca %"struct.gmx::PTCouplingArrays", align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !656, !nonnull !68, !align !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !79
  %i.l = icmp eq i32 %i.k, 0                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !178
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !180  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !181, !nonnull !68, !align !69
end_hunk_1
