Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIMachineFunctionInfo?download=true
inline.NumInlined: 4047
inline.NumDeleted: 1796
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm21SIMachineFunctionInfo23allocateVGPRSpillToAGPRERNS_15MachineFunctionEib:bb.a
  store i16 %i.pz, ptr %i.qm, align 1
  %i.qn = load i64, ptr %i.gh, align 8, !tbaa !160
  %i.qo = add i64 %i.qn, 1
  store i64 %i.qo, ptr %i.gh, align 8, !tbaa !160
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit: ; preds = %bb.x, %bb.y
  %i.qp = load i16, ptr %.028.i.i.i, align 2, !tbaa !327
  %i.qq = zext i16 %i.qp to i32
  %i.qr = call { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240) %i.ar, i32 %i.qq) #24 ; 2 uses
  %i.qs = extractvalue { ptr, i64 } %i.qr, 0      ; 4 uses
  %i.qt = extractvalue { ptr, i64 } %i.qr, 1      ; 2 uses
  %.idx.i = shl i64 %i.qt, 1                      ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 %.idx.i
  %.not6.i = icmp eq i64 %i.qt, 0
  br i1 %.not6.i, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit
  %i.qv = load ptr, ptr %i.gg, align 8, !tbaa !21 ; 3 uses
  %i.qw = add i64 %.idx.i, -2                     ; 2 uses
  %i.qx = and i64 %i.qw, 2
  %lcmp.mod151.not.not = icmp eq i64 %i.qx, 0
  br i1 %lcmp.mod151.not.not, label %.prol.loopexit149.unr-lcssa, label %.prol.loopexit149

.prol.loopexit149.unr-lcssa:                      ; preds = %.lr.ph.i
  %i.qy = load i16, ptr %i.qs, align 2, !tbaa !327
  %i.qz = zext i16 %i.qy to i32                   ; 2 uses
  %i.ra = and i32 %i.qz, 63
  %i.rb = zext nneg i32 %i.ra to i64
  %i.rc = shl nuw i64 1, %i.rb
  %i.rd = lshr i32 %i.qz, 6
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.re ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !323
  %i.rh = or i64 %i.rc, %i.rg
  store i64 %i.rh, ptr %i.rf, align 8, !tbaa !323
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qs, i64 2
  br label %.prol.loopexit149

.prol.loopexit149:                                ; preds = %.prol.loopexit149.unr-lcssa, %.lr.ph.i
  %.sroa.03.07.i.unr = phi ptr [ %i.qs, %.lr.ph.i ], [ %i.ri, %.prol.loopexit149.unr-lcssa ]
  %i.rj = icmp eq i64 %i.qw, 0
  br i1 %i.rj, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit149, %.lr.ph.i.new
  %.sroa.03.07.i = phi ptr [ %i.sf, %.lr.ph.i.new ], [ %.sroa.03.07.i.unr, %.prol.loopexit149 ] ; 3 uses
  %i.rk = load i16, ptr %.sroa.03.07.i, align 2, !tbaa !327
  %i.rl = zext i16 %i.rk to i32                   ; 2 uses
  %i.rm = and i32 %i.rl, 63
  %i.rn = zext nneg i32 %i.rm to i64
  %i.ro = shl nuw i64 1, %i.rn
  %i.rp = lshr i32 %i.rl, 6
  %i.rq = zext nneg i32 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.rq ; 2 uses
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !323
  %i.rt = or i64 %i.ro, %i.rs
  store i64 %i.rt, ptr %i.rr, align 8, !tbaa !323
  %i.ru = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 2
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !327
  %i.rw = zext i16 %i.rv to i32                   ; 2 uses
  %i.rx = and i32 %i.rw, 63
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = shl nuw i64 1, %i.ry
  %i.sa = lshr i32 %i.rw, 6
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.sb ; 2 uses
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !323
  %i.se = or i64 %i.rz, %i.sd
  store i64 %i.se, ptr %i.sc, align 8, !tbaa !323
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  %.not.i66.1 = icmp eq ptr %i.sf, %i.qu
  br i1 %.not.i66.1, label %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, label %.lr.ph.i.new, !llvm.loop !511

_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit: ; preds = %.prol.loopexit149, %.lr.ph.i.new, %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit
  %i.sg = getelementptr inbounds nuw i8, ptr %.028.i.i.i, i64 2
  %i.sh = load i16, ptr %.028.i.i.i, align 2, !tbaa !327
  %i.si = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.si, i64 %indvars.iv.next
  store i16 %i.sh, ptr %i.sj, align 2, !tbaa !327
  %i.sk = icmp sgt i64 %indvars.iv, 1
  br i1 %i.sk, label %bb.l, label %.loopexit, !llvm.loop !661

.loopexit:                                        ; preds = %_ZN4llvm19MachineRegisterInfo10reserveRegENS_10MCRegisterEPKNS_18TargetRegisterInfoE.exit, %.preheader, %"_ZSt7find_ifIPKtZN4llvm21SIMachineFunctionInfo23allocateVGPRSpillToAGPRERNS2_15MachineFunctionEibE3$_0ET_S7_S7_T0_.exit.thread"
  %i.sl = load i8, ptr %i.as, align 8, !tbaa !588, !range !18, !noundef !19
  %i.sm = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.at
  br i1 %i.sn, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @free(ptr noundef %i.sm) #24
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %.loopexit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.b
  %.0.in = phi i8 [ %i.sl, %_ZN4llvm9BitVectorD2Ev.exit ], [ %i.n, %bb.b ]
  %.0 = trunc nuw i8 %.0.in to i1
  ret i1 %.0
}

declare noundef ptr @_ZNK4llvm14SIRegisterInfo20getCallPreservedMaskERKNS_15MachineFunctionEj(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(1065), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm21SIMachineFunctionInfo22removeDeadFrameIndicesERNS_16MachineFrameInfoEb(ptr noundef nonnull align 8 dereferenceable(1608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(728) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !554, !noalias !662 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !560, !noalias !662 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !561, !noalias !662 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !665, !noalias !662 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 2 uses
  %i.j = zext i32 %i.f to i64                     ; 5 uses
  %.idx214 = shl nuw nsw i64 %i.j, 5              ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.f, 0           ; 2 uses
  %or.cond = select i1 %i.i, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i64 %i.j, 31
  %i.l = lshr i64 %i.k, 5                         ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !309, !noalias !666 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %._crit_edge, label %.lr.ph243

.lr.ph.i.i.i:                                     ; preds = %.lr.ph243
  %i.p = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.l
  br i1 %i.q, label %._crit_edge, label %.lr.ph243, !llvm.loop !669

.lr.ph243:                                        ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.r = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !309, !noalias !666 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !669

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph243
  %i.v = shl i64 %i.r, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %._crit_edge.i.loopexit.i.i ]
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %i.x = shl nuw nsw i32 %i.w, 5
  %.idx = zext nneg i32 %i.x to i64
  %i.y = or disjoint i64 %.012.lcssa.i.i.i, %.idx ; 2 uses
  %.not106122 = icmp eq i64 %i.y, %.idx214
  br i1 %.not106122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !582
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !583
  %i.ad = add nuw nsw i64 %i.j, 31
  %i.ae = lshr i64 %i.ad, 5                       ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %.lr.ph.i.i.i, %bb.i, %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit, %.lr.ph.i.i28.preheader, %.lr.ph.i.i28, %.lr.ph.i.i.i.preheader, %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.af = shl i32 %i.h, 2
  %i.ag = icmp ult i32 %i.af, %i.f
  br i1 %i.ag, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ah = icmp ugt i32 %i.f, 64
  br i1 %i.ah, label %bb.e, label %.lr.ph7.preheader.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit

bb.f:                                             ; preds = %bb.c
  br i1 %.not.i.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.f, %bb.d
  %i.ai = add nuw nsw i64 %i.j, 31
  %i.aj = lshr i64 %i.ai, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !309 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.am = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.g

bb.g:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.al, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.an = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !544 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !541
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.g, !llvm.loop !670

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.aj
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i, label %.lr.ph7.i.i, !llvm.loop !671

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i: ; preds = %._crit_edge.i.i
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !561
  %i.ba = zext i32 %.pre.i to i64
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !560
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i, %bb.f
  %i.be = phi ptr [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i ], [ %i.d, %bb.f ]
  %i.bf = phi i64 [ %i.bd, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i ], [ 0, %bb.f ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 0, i64 %i.bf, i1 false)
  store i32 0, ptr %i.g, align 8, !tbaa !665
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit: ; preds = %._crit_edge, %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i
  br i1 %2, label %.critedge, label %bb.k

bb.i:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.y, %.lr.ph ], [ %i.cf, %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.098.0123 = getelementptr i8, ptr %i.b, i64 %.pn
  %i.bg = load i32, ptr %.sroa.098.0123, align 8, !tbaa !672
  %i.bh = add i32 %i.ab, %i.bg
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i64 -1, ptr %i.bk, align 8, !tbaa !584
  %i.bl = add i64 %.pn, 32
  %i.bm = ashr exact i64 %i.bl, 5                 ; 3 uses
  %.not.i.i = icmp ult i64 %i.bm, %i.j
  br i1 %.not.i.i, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.bn = lshr i64 %i.bm, 5                       ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !309
  %i.bq = trunc nuw i64 %i.bm to i32
  %i.br = and i32 %i.bq, 31
  %i.bs = shl nsw i32 -1, %i.br
  %i.bt = and i32 %i.bp, %i.bs                    ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i28.preheader, label %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit

.lr.ph.i.i28.preheader:                           ; preds = %bb.j
  %i.bv = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %i.ae
  br i1 %i.bw, label %._crit_edge, label %.lr.ph244

.lr.ph.i.i28:                                     ; preds = %.lr.ph244
  %i.bx = add i64 %i.bz, 1                        ; 2 uses
  %i.by = icmp eq i64 %i.bx, %i.ae
  br i1 %i.by, label %._crit_edge, label %.lr.ph244, !llvm.loop !669

.lr.ph244:                                        ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28
  %i.bz = phi i64 [ %i.bx, %.lr.ph.i.i28 ], [ %i.bv, %.lr.ph.i.i28.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !309 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i.i28, label %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit, !llvm.loop !669

_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit: ; preds = %.lr.ph244, %bb.j
  %.012.lcssa.i.i = phi i64 [ %i.bn, %bb.j ], [ %i.bz, %.lr.ph244 ]
  %.0.lcssa.i.i = phi i32 [ %i.bt, %bb.j ], [ %i.cb, %.lr.ph244 ]
  %i.cd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 10
  %i.ce = shl nuw nsw i32 %i.cd, 5
  %.idx215 = zext nneg i32 %i.ce to i64
  %i.cf = or disjoint i64 %.idx.i.i, %.idx215     ; 2 uses
  %.not106 = icmp eq i64 %i.cf, %.idx214
  br i1 %.not106, label %._crit_edge, label %bb.i

bb.k:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !554, !noalias !677 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !560, !noalias !677 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !561, !noalias !677 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !665, !noalias !677 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0                    ; 2 uses
  %i.cp = zext i32 %i.cl to i64                   ; 5 uses
  %.idx217 = shl nuw nsw i64 %i.cp, 5             ; 2 uses
  %.not.i.not.i.i29 = icmp eq i32 %i.cl, 0        ; 2 uses
  %or.cond104 = select i1 %i.co, i1 true, i1 %.not.i.not.i.i29
  br i1 %or.cond104, label %._crit_edge127, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cq = add nuw nsw i64 %i.cp, 31
  %i.cr = lshr i64 %i.cq, 5                       ; 2 uses
  %i.cs = load i32, ptr %i.cj, align 4, !tbaa !309, !noalias !680 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i35.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit38

.lr.ph.i.i.i35.preheader:                         ; preds = %bb.l
  %i.cu = icmp eq i64 %i.cr, 1
  br i1 %i.cu, label %._crit_edge127, label %.lr.ph245

.lr.ph.i.i.i35:                                   ; preds = %.lr.ph245
  %i.cv = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %i.cw = icmp eq i64 %i.cv, %i.cr
  br i1 %i.cw, label %._crit_edge127, label %.lr.ph245, !llvm.loop !669

.lr.ph245:                                        ; preds = %.lr.ph.i.i.i35.preheader, %.lr.ph.i.i.i35
  %i.cx = phi i64 [ %i.cv, %.lr.ph.i.i.i35 ], [ 1, %.lr.ph.i.i.i35.preheader ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !309, !noalias !680 ; 2 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i35, label %._crit_edge.i.loopexit.i.i37, !llvm.loop !669

._crit_edge.i.loopexit.i.i37:                     ; preds = %.lr.ph245
  %i.db = shl i64 %i.cx, 10
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit38

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit38: ; preds = %bb.l, %._crit_edge.i.loopexit.i.i37
  %.012.lcssa.i.i.i31 = phi i64 [ 0, %bb.l ], [ %i.db, %._crit_edge.i.loopexit.i.i37 ]
  %.0.lcssa.i.i.i32 = phi i32 [ %i.cs, %bb.l ], [ %i.cz, %._crit_edge.i.loopexit.i.i37 ]
  %i.dc = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i32, i1 true)
  %i.dd = shl nuw nsw i32 %i.dc, 5
  %.idx216 = zext nneg i32 %i.dd to i64
  %i.de = or disjoint i64 %.012.lcssa.i.i.i31, %.idx216 ; 2 uses
  %.not107124 = icmp eq i64 %i.de, %.idx217
  br i1 %.not107124, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit38
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !582
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !583
  %i.dj = add nuw nsw i64 %i.cp, 31
  %i.dk = lshr i64 %i.dj, 5                       ; 2 uses
  br label %bb.s

._crit_edge127:                                   ; preds = %.lr.ph.i.i.i35, %bb.s, %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit64, %.lr.ph.i.i62.preheader, %.lr.ph.i.i62, %.lr.ph.i.i.i35.preheader, %bb.k, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5beginEv.exit38
  br i1 %i.co, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit55, label %bb.m

bb.m:                                             ; preds = %._crit_edge127
  %i.dl = shl i32 %i.cn, 2
  %i.dm = icmp ult i32 %i.dl, %i.cl
  br i1 %i.dm, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dn = icmp ugt i32 %i.cl, 64
  br i1 %i.dn, label %bb.o, label %.lr.ph7.preheader.i.i39

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.cg)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit55

bb.p:                                             ; preds = %bb.m
  br i1 %.not.i.not.i.i29, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i54, label %.lr.ph7.preheader.i.i39

.lr.ph7.preheader.i.i39:                          ; preds = %bb.p, %bb.n
  %i.do = add nuw nsw i64 %i.cp, 31
  %i.dp = lshr i64 %i.do, 5
  br label %.lr.ph7.i.i40

.lr.ph7.i.i40:                                    ; preds = %._crit_edge.i.i49, %.lr.ph7.preheader.i.i39
  %indvars.iv.i.i41 = phi i64 [ 0, %.lr.ph7.preheader.i.i39 ], [ %indvars.iv.next.i.i50, %._crit_edge.i.i49 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i.i41
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !309 ; 2 uses
  %.not11.i2.i.i42 = icmp eq i32 %i.dr, 0
  br i1 %.not11.i2.i.i42, label %._crit_edge.i.i49, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %.lr.ph7.i.i40
  %indvars.iv.tr.i.i44 = trunc nuw i64 %indvars.iv.i.i41 to i32
  %i.ds = shl nuw i32 %indvars.iv.tr.i.i44, 5
  br label %bb.q

bb.q:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47, %.lr.ph.i.i43
  %.0.i3.i.i45 = phi i32 [ %i.dr, %.lr.ph.i.i43 ], [ %i.ef, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47 ] ; 3 uses
  %i.dt = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i45, i1 true)
  %i.du = or disjoint i32 %i.dt, %i.ds
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !544 ; 3 uses
  %.not.i.i.i.i.i.i46 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i.i.i46, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !541
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47: ; preds = %bb.r, %bb.q
  %i.ee = add i32 %.0.i3.i.i45, -1
  %i.ef = and i32 %i.ee, %.0.i3.i.i45             ; 2 uses
  %.not11.i.i.i48 = icmp eq i32 %i.ef, 0
  br i1 %.not11.i.i.i48, label %._crit_edge.i.i49, label %bb.q, !llvm.loop !670

._crit_edge.i.i49:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i47, %.lr.ph7.i.i40
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i41, 1 ; 2 uses
  %.not.i.i.i51 = icmp eq i64 %indvars.iv.next.i.i50, %i.dp
  br i1 %.not.i.i.i51, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i52, label %.lr.ph7.i.i40, !llvm.loop !671

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i52: ; preds = %._crit_edge.i.i49
  %.pre.i53 = load i32, ptr %i.ck, align 4, !tbaa !561
  %i.eg = zext i32 %.pre.i53 to i64
  %i.eh = add nuw nsw i64 %i.eg, 31
  %i.ei = lshr i64 %i.eh, 3
  %i.ej = and i64 %i.ei, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i54

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i54: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i52, %bb.p
  %i.ek = phi i64 [ %i.ej, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.loopexit.i52 ], [ 0, %bb.p ]
  %i.el = load ptr, ptr %i.ci, align 8, !tbaa !560
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.el, i8 0, i64 %i.ek, i1 false)
  store i32 0, ptr %i.cm, align 8, !tbaa !665
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit55

bb.s:                                             ; preds = %.lr.ph126, %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit64
  %.pn219 = phi i64 [ %i.de, %.lr.ph126 ], [ %i.fl, %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit64 ] ; 2 uses
  %.sroa.088.0125 = getelementptr i8, ptr %i.ch, i64 %.pn219
  %i.em = load i32, ptr %.sroa.088.0125, align 8, !tbaa !672
  %i.en = add i32 %i.dh, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [40 x i8], ptr %i.di, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 -1, ptr %i.eq, align 8, !tbaa !584
  %i.er = add i64 %.pn219, 32
  %i.es = ashr exact i64 %i.er, 5                 ; 3 uses
  %.not.i.i56 = icmp ult i64 %i.es, %i.cp
  br i1 %.not.i.i56, label %bb.t, label %._crit_edge127

bb.t:                                             ; preds = %bb.s
  %i.et = lshr i64 %i.es, 5                       ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !309
  %i.ew = trunc nuw i64 %i.es to i32
  %i.ex = and i32 %i.ew, 31
  %i.ey = shl nsw i32 -1, %i.ex
  %i.ez = and i32 %i.ev, %i.ey                    ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph.i.i62.preheader, label %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit64

.lr.ph.i.i62.preheader:                           ; preds = %bb.t
  %i.fb = add nuw nsw i64 %i.et, 1                ; 2 uses
  %i.fc = icmp eq i64 %i.fb, %i.dk
  br i1 %i.fc, label %._crit_edge127, label %.lr.ph246

.lr.ph.i.i62:                                     ; preds = %.lr.ph246
  %i.fd = add i64 %i.ff, 1                        ; 2 uses
  %i.fe = icmp eq i64 %i.fd, %i.dk
  br i1 %i.fe, label %._crit_edge127, label %.lr.ph246, !llvm.loop !669

.lr.ph246:                                        ; preds = %.lr.ph.i.i62.preheader, %.lr.ph.i.i62
  %i.ff = phi i64 [ %i.fd, %.lr.ph.i.i62 ], [ %i.fb, %.lr.ph.i.i62.preheader ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !309 ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i.i62, label %_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit64, !llvm.loop !669

_ZN4llvm16DenseMapIteratorIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EELb0EEppEv.exit64: ; preds = %.lr.ph246, %bb.t
  %.012.lcssa.i.i59 = phi i64 [ %i.et, %bb.t ], [ %i.ff, %.lr.ph246 ]
  %.0.lcssa.i.i60 = phi i32 [ %i.ez, %bb.t ], [ %i.fh, %.lr.ph246 ]
  %i.fj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i60, i1 true)
  %.idx.i.i61 = shl i64 %.012.lcssa.i.i59, 10
  %i.fk = shl nuw nsw i32 %i.fj, 5
  %.idx218 = zext nneg i32 %i.fk to i64
  %i.fl = or disjoint i64 %.idx.i.i61, %.idx218   ; 2 uses
  %.not107 = icmp eq i64 %i.fl, %.idx217
  br i1 %.not107, label %._crit_edge127, label %bb.s

.critedge:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !582 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !683
  %i.fr = load ptr, ptr %i.fo, align 8, !tbaa !583
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = sdiv exact i64 %i.fu, 40
  %i.fw = trunc i64 %i.fv to i32                  ; 2 uses
  %i.fx = sub i32 %i.fw, %i.fn
  %.not128 = icmp eq i32 %i.fw, 0
  br i1 %.not128, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit55, label %.lr.ph131

.lr.ph131:                                        ; preds = %.critedge
  %i.fy = sub i32 0, %i.fn
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 1312 ; 2 uses
  %.pre148 = load ptr, ptr %i.fz, align 8, !tbaa !21
  %.pre149 = load i32, ptr %i.ga, align 8, !tbaa !151
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph131, %bb.x
  %i.gb = phi i32 [ %.pre149, %.lr.ph131 ], [ %i.gh, %bb.x ]
  %i.gc = phi ptr [ %.pre148, %.lr.ph131 ], [ %i.gg, %bb.x ] ; 2 uses
  %.0130 = phi i32 [ %i.fy, %.lr.ph131 ], [ %i.gs, %bb.x ] ; 3 uses
  %.026129 = phi i1 [ false, %.lr.ph131 ], [ %.1, %bb.x ] ; 2 uses
  %i.gd = zext i32 %i.gb to i64
  %i.ge = getelementptr inbounds nuw [12 x i8], ptr %i.gc, i64 %i.gd
  %i.gf = tail call noundef ptr @_ZSt9__find_ifIPKSt4pairIN4llvm8RegisterENS1_31PrologEpilogSGPRSaveRestoreInfoEEN9__gnu_cxx5__ops10_Iter_predIZNKS1_21SIMachineFunctionInfo34checkIndexInPrologEpilogSGPRSpillsEiEUlRS5_E_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr noundef %i.gc, ptr noundef %i.ge, i32 %.0130)
  %i.gg = load ptr, ptr %i.fz, align 8, !tbaa !21 ; 2 uses
  %i.gh = load i32, ptr %i.ga, align 8, !tbaa !151 ; 2 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.gg, i64 %i.gi
  %.not108 = icmp eq ptr %i.gf, %i.gj
  br i1 %.not108, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.gk = load i32, ptr %i.fm, align 8, !tbaa !582
  %i.gl = add i32 %i.gk, %.0130
  %i.gm = zext i32 %i.gl to i64
  %i.gn = load ptr, ptr %i.fo, align 8, !tbaa !583
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 21 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !684
  %i.gr = icmp eq i8 %i.gq, 1
  br i1 %i.gr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.gp, align 1, !tbaa !684
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v
  %.1 = phi i1 [ %.026129, %bb.u ], [ true, %bb.w ], [ %.026129, %bb.v ] ; 2 uses
  %i.gs = add nsw i32 %.0130, 1                   ; 2 uses
  %.not = icmp eq i32 %i.gs, %i.fx
  br i1 %.not, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit55, label %bb.u, !llvm.loop !685

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit55: ; preds = %bb.x, %.critedge, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i54, %bb.o, %._crit_edge127
  %.2 = phi i1 [ false, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i54 ], [ false, %._crit_edge127 ], [ false, %bb.o ], [ false, %.critedge ], [ %.1, %bb.x ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !686, !noalias !687
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !690, !noalias !687 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 1388
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !691, !noalias !687 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !692, !noalias !687
  %i.hb = icmp eq i32 %i.ha, 0
  %i.hc = zext i32 %i.gy to i64                   ; 4 uses
  %.idx221 = mul nuw nsw i64 %i.hc, 104           ; 2 uses
  %.not.i.not.i.i65 = icmp eq i32 %i.gy, 0
  %or.cond105 = select i1 %i.hb, i1 true, i1 %.not.i.not.i.i65
  br i1 %or.cond105, label %._crit_edge135, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E5clearEv.exit55
  %i.hd = add nuw nsw i64 %i.hc, 31
  %i.he = lshr i64 %i.hd, 5                       ; 2 uses
  %i.hf = load i32, ptr %i.gw, align 4, !tbaa !309, !noalias !693 ; 2 uses
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.i.i.i70.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E5beginEv.exit

.lr.ph.i.i.i70.preheader:                         ; preds = %bb.y
  %i.hh = icmp eq i64 %i.he, 1
  br i1 %i.hh, label %._crit_edge135, label %.lr.ph247

.lr.ph.i.i.i70:                                   ; preds = %.lr.ph247
  %i.hi = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %i.hj = icmp eq i64 %i.hi, %i.he
  br i1 %i.hj, label %._crit_edge135, label %.lr.ph247, !llvm.loop !696

.lr.ph247:                                        ; preds = %.lr.ph.i.i.i70.preheader, %.lr.ph.i.i.i70
  %i.hk = phi i64 [ %i.hi, %.lr.ph.i.i.i70 ], [ 1, %.lr.ph.i.i.i70.preheader ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !309, !noalias !693 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.lr.ph.i.i.i70, label %._crit_edge.i.loopexit.i.i72, !llvm.loop !696
end_hunk_0
begin_hunk_1_@_ZN4llvm12SMDiagnosticaSEOS0_:bb.a
  %i.bb = load i64, ptr %i.aj, align 8, !tbaa !315
  store i64 %i.bb, ptr %i.ag, align 8, !tbaa !315
  %.not.i10 = icmp eq ptr %i.af, null
  br i1 %.not.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i9
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !768
  store i64 %i.ax, ptr %i.aj, align 8, !tbaa !315
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i9, %.thread.i15
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !768
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i12, %bb.l, %bb.m
  %i.bc = phi ptr [ %i.af, %bb.l ], [ %i.aj, %bb.m ], [ %i.ai, %bb.h ], [ %.pre.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i12 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.bd, align 8, !tbaa !752
  store i8 0, ptr %i.bc, align 1, !tbaa !315
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !768 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !768 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 6 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk                ; 2 uses
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16
  br i1 %i.bl, label %bb.n, label %.thread.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit16
  br i1 %i.bl, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i18

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i23
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !752 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  tail call void @llvm.assume(i1 %i.bo)
  %.not21.i20 = icmp eq ptr %1, %0
  br i1 %.not21.i20, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit25, label %bb.o, !prof !590

bb.o:                                             ; preds = %bb.n
  switch i64 %i.bn, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i21
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !315
  store i8 %i.bp, ptr %i.bg, align 1, !tbaa !315
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i21

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bj, i64 %i.bn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i21: ; preds = %bb.q, %bb.p, %bb.o
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !752 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !752
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !768
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !315
  %.pre.i22 = load ptr, ptr %i.bf, align 8, !tbaa !768
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit25

.thread.i24:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i23
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !768
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !752
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !752
  %i.bx = load i64, ptr %i.bk, align 8, !tbaa !315
  store i64 %i.bx, ptr %i.bh, align 8, !tbaa !315
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i18: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i17
  %i.by = load i64, ptr %i.bh, align 8, !tbaa !315
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !768
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !752
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !752
  %i.cc = load i64, ptr %i.bk, align 8, !tbaa !315
  store i64 %i.cc, ptr %i.bh, align 8, !tbaa !315
  %.not.i19 = icmp eq ptr %i.bg, null
  br i1 %.not.i19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i18
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !768
  store i64 %i.by, ptr %i.bk, align 8, !tbaa !315
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit25

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i18, %.thread.i24
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !768
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit25: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i21, %bb.r, %bb.s
  %i.cd = phi ptr [ %i.bg, %bb.r ], [ %i.bk, %bb.s ], [ %i.bj, %bb.n ], [ %.pre.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i21 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %i.ce, align 8, !tbaa !752
  store i8 0, ptr %i.cd, align 1, !tbaa !315
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !858 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !861
  %i.ck = load <2 x ptr>, ptr %i.cg, align 8, !tbaa !864
  store <2 x ptr> %i.ck, ptr %i.cf, align 8, !tbaa !864
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !861
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !861
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EEaSEOS3_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit25
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = ptrtoint ptr %i.ch to i64
  %i.cp = sub i64 %i.cn, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cp) #27
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EEaSEOS3_.exit

_ZNSt6vectorISt4pairIjjESaIS1_EEaSEOS3_.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit25, %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cs = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7SMFixItEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(208) %i.cq, ptr noundef nonnull align 8 dereferenceable(208) %i.cr) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm21SIMachineFunctionInfo11mayUseAGPRsERKNS_8FunctionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1608) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call i64 @_ZN4llvm6AMDGPU23getIntegerPairAttributeERKNS_8FunctionENS_9StringRefESt4pairIjjEb(ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nonnull @.str.2, i64 17, i64 -1, i1 noundef zeroext true) #24
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp ne i64 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21SIMachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1604) dereferenceable(1608) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm10IndexedMapIjNS_22VGPRBlock2IndexFunctorEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #24
  br label %_ZN4llvm10IndexedMapIjNS_22VGPRBlock2IndexFunctorEED2Ev.exit

_ZN4llvm10IndexedMapIjNS_22VGPRBlock2IndexFunctorEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4llvm11SmallVectorItLj32EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm10IndexedMapIjNS_22VGPRBlock2IndexFunctorEED2Ev.exit
  tail call void @free(ptr noundef %i.f) #24
  br label %_ZN4llvm11SmallVectorItLj32EED2Ev.exit

_ZN4llvm11SmallVectorItLj32EED2Ev.exit:           ; preds = %_ZN4llvm10IndexedMapIjNS_22VGPRBlock2IndexFunctorEED2Ev.exit, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !149  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvm11SmallVectorItLj32EED2Ev.exit1, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorItLj32EED2Ev.exit
  tail call void @free(ptr noundef %i.j) #24
  br label %_ZN4llvm11SmallVectorItLj32EED2Ev.exit1

_ZN4llvm11SmallVectorItLj32EED2Ev.exit1:          ; preds = %_ZN4llvm11SmallVectorItLj32EED2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1388 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !691  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZN4llvm11SmallVectorItLj32EED2Ev.exit1
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !686
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !690
  %i.t = zext i32 %i.o to i64
  %i.u = add nuw nsw i64 %i.t, 31
  %i.v = lshr i64 %i.u, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !309  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.x, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.y = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.e

bb.e:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.ai, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.z = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aa = or disjoint i32 %i.z, %i.y
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !149 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef %i.ae) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ah = add i32 %.0.i3.i.i, -1
  %i.ai = and i32 %i.ah, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.e, !llvm.loop !865

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.v
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !866

_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.n, align 4, !tbaa !691 ; 2 uses
  %i.aj = icmp eq i32 %.pr.i, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !686
  %i.al = zext i32 %.pr.i to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 104
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ak, i64 noundef %i.aq, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit

_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorItLj32EED2Ev.exit1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_31PrologEpilogSGPRSaveRestoreInfoEELj3EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit
  tail call void @free(ptr noundef %i.as) #24
  br label %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_31PrologEpilogSGPRSaveRestoreInfoEELj3EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_31PrologEpilogSGPRSaveRestoreInfoEELj3EED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_31PrologEpilogSGPRSaveRestoreInfoEELj3EED2Ev.exit
  tail call void @free(ptr noundef %i.ax) #24
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i: ; preds = %bb.i, %_ZN4llvm11SmallVectorISt4pairINS_8RegisterENS_31PrologEpilogSGPRSaveRestoreInfoEELj3EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1244
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !523 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj8EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj8EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i
  %i.bd = load ptr, ptr %i.av, align 8, !tbaa !516
  %i.be = zext i32 %i.bb to i64                   ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 31
  %i.bg = lshr i64 %i.bf, 5
  %i.bh = add nuw nsw i64 %i.bg, %i.be
  %i.bi = shl nuw nsw i64 %i.bh, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bi, i64 noundef 4) #24
  br label %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj8EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj8EED2Ev.exit

_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj8EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit.i, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj8EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj8EED2Ev.exit
  tail call void @free(ptr noundef %i.bk) #24
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm9SetVectorINS_8RegisterENS_11SmallVectorIS1_Lj8EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj8EED2Ev.exit, %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !21 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bj
  br i1 %i.bq, label %_ZN4llvm11SmallVectorISt4pairINS_8RegisterEiELj0EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  tail call void @free(ptr noundef %i.bp) #24
  br label %_ZN4llvm11SmallVectorISt4pairINS_8RegisterEiELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairINS_8RegisterEiELj0EED2Ev.exit.i: ; preds = %bb.l, %_ZN4llvm9BitVectorD2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !464 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_ZN4llvm9MapVectorINS_8RegisterEiNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_iELj0EEELj0EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairINS_8RegisterEiELj0EED2Ev.exit.i
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !453
  %i.bv = zext i32 %i.bs to i64                   ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 4) #24
  br label %_ZN4llvm9MapVectorINS_8RegisterEiNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_iELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorINS_8RegisterEiNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_iELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairINS_8RegisterEiELj0EED2Ev.exit.i, %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm9MapVectorINS_8RegisterEiNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_iELj0EEELj0EED2Ev.exit
  tail call void @free(ptr noundef %i.cc) #24
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit: ; preds = %_ZN4llvm9MapVectorINS_8RegisterEiNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_iELj0EEELj0EED2Ev.exit, %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !21 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit2, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit
  tail call void @free(ptr noundef %i.cg) #24
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit2

_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit2: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit, %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !561 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i3

.lr.ph7.preheader.i.i3:                           ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit2
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !554
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !560
  %i.cq = zext i32 %i.cl to i64
  %i.cr = add nuw nsw i64 %i.cq, 31
  %i.cs = lshr i64 %i.cr, 5
  br label %.lr.ph7.i.i4

.lr.ph7.i.i4:                                     ; preds = %._crit_edge.i.i11, %.lr.ph7.preheader.i.i3
  %indvars.iv.i.i5 = phi i64 [ 0, %.lr.ph7.preheader.i.i3 ], [ %indvars.iv.next.i.i12, %._crit_edge.i.i11 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i.i5
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !309 ; 2 uses
  %.not11.i2.i.i6 = icmp eq i32 %i.cu, 0
  br i1 %.not11.i2.i.i6, label %._crit_edge.i.i11, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %.lr.ph7.i.i4
  %indvars.iv.tr.i.i8 = trunc nuw i64 %indvars.iv.i.i5 to i32
  %i.cv = shl nuw i32 %indvars.iv.tr.i.i8, 5
  br label %bb.p

bb.p:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i7
  %.0.i3.i.i9 = phi i32 [ %i.cu, %.lr.ph.i.i7 ], [ %i.di, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.cw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i9, i1 true)
  %i.cx = or disjoint i32 %i.cw, %i.cv
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !544 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !541
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = sub i64 %i.de, %i.df
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.dg) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.q, %bb.p
  %i.dh = add i32 %.0.i3.i.i9, -1
  %i.di = and i32 %i.dh, %.0.i3.i.i9              ; 2 uses
  %.not11.i.i.i10 = icmp eq i32 %i.di, 0
  br i1 %.not11.i.i.i10, label %._crit_edge.i.i11, label %bb.p, !llvm.loop !670

._crit_edge.i.i11:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i4
  %indvars.iv.next.i.i12 = add nuw nsw i64 %indvars.iv.i.i5, 1 ; 2 uses
  %.not.i.i.i13 = icmp eq i64 %indvars.iv.next.i.i12, %i.cs
  br i1 %.not.i.i.i13, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i4, !llvm.loop !671

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i11
  %.pr.i14 = load i32, ptr %i.ck, align 4, !tbaa !561 ; 2 uses
  %i.dj = icmp eq i32 %.pr.i14, 0
  br i1 %i.dj, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i
  %i.dk = load ptr, ptr %i.cj, align 8, !tbaa !554
  %i.dl = zext i32 %.pr.i14 to i64                ; 2 uses
  %i.dm = shl nuw nsw i64 %i.dl, 5
  %i.dn = add nuw nsw i64 %i.dl, 31
  %i.do = lshr i64 %i.dn, 3
  %i.dp = and i64 %i.do, 1073741820
  %i.dq = add nuw nsw i64 %i.dp, %i.dm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dk, i64 noundef %i.dq, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit

_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_8RegisterELj2EED2Ev.exit2, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !561 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit30, label %.lr.ph7.preheader.i.i15

.lr.ph7.preheader.i.i15:                          ; preds = %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !554
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !560
  %i.dy = zext i32 %i.dt to i64
  %i.dz = add nuw nsw i64 %i.dy, 31
  %i.ea = lshr i64 %i.dz, 5
  br label %.lr.ph7.i.i16

.lr.ph7.i.i16:                                    ; preds = %._crit_edge.i.i25, %.lr.ph7.preheader.i.i15
  %indvars.iv.i.i17 = phi i64 [ 0, %.lr.ph7.preheader.i.i15 ], [ %indvars.iv.next.i.i26, %._crit_edge.i.i25 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i.i17
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !309 ; 2 uses
  %.not11.i2.i.i18 = icmp eq i32 %i.ec, 0
  br i1 %.not11.i2.i.i18, label %._crit_edge.i.i25, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph7.i.i16
  %indvars.iv.tr.i.i20 = trunc nuw i64 %indvars.iv.i.i17 to i32
  %i.ed = shl nuw i32 %indvars.iv.tr.i.i20, 5
  br label %bb.s

bb.s:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i23, %.lr.ph.i.i19
  %.0.i3.i.i21 = phi i32 [ %i.ec, %.lr.ph.i.i19 ], [ %i.eq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i23 ] ; 3 uses
  %i.ee = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i21, i1 true)
  %i.ef = or disjoint i32 %i.ee, %i.ed
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.dv, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !544 ; 3 uses
  %.not.i.i.i.i.i.i22 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i.i.i22, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i23, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !541
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i23

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i23: ; preds = %bb.t, %bb.s
  %i.ep = add i32 %.0.i3.i.i21, -1
  %i.eq = and i32 %i.ep, %.0.i3.i.i21             ; 2 uses
  %.not11.i.i.i24 = icmp eq i32 %i.eq, 0
  br i1 %.not11.i.i.i24, label %._crit_edge.i.i25, label %bb.s, !llvm.loop !670

._crit_edge.i.i25:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i23, %.lr.ph7.i.i16
  %indvars.iv.next.i.i26 = add nuw nsw i64 %indvars.iv.i.i17, 1 ; 2 uses
  %.not.i.i.i27 = icmp eq i64 %indvars.iv.next.i.i26, %i.ea
  br i1 %.not.i.i.i27, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i28, label %.lr.ph7.i.i16, !llvm.loop !671

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i28: ; preds = %._crit_edge.i.i25
  %.pr.i29 = load i32, ptr %i.ds, align 4, !tbaa !561 ; 2 uses
  %i.er = icmp eq i32 %.pr.i29, 0
  br i1 %i.er, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit30, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i28
  %i.es = load ptr, ptr %i.dr, align 8, !tbaa !554
  %i.et = zext i32 %.pr.i29 to i64                ; 2 uses
  %i.eu = shl nuw nsw i64 %i.et, 5
  %i.ev = add nuw nsw i64 %i.et, 31
  %i.ew = lshr i64 %i.ev, 3
  %i.ex = and i64 %i.ew, 1073741820
  %i.ey = add nuw nsw i64 %i.ex, %i.eu
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.es, i64 noundef %i.ey, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit30

_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit30: ; preds = %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i28, %bb.u
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !149 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZN4llvm10IndexedMapIhNS_20VirtReg2IndexFunctorEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit30
  tail call void @free(ptr noundef %i.fa) #24
  br label %_ZN4llvm10IndexedMapIhNS_20VirtReg2IndexFunctorEED2Ev.exit

_ZN4llvm10IndexedMapIhNS_20VirtReg2IndexFunctorEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit30, %bb.v
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !21 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm10IndexedMapIhNS_20VirtReg2IndexFunctorEED2Ev.exit
  tail call void @free(ptr noundef %i.fe) #24
  br label %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit

_ZN4llvm11SmallVectorIjLj12EED2Ev.exit:           ; preds = %_ZN4llvm10IndexedMapIhNS_20VirtReg2IndexFunctorEED2Ev.exit, %bb.w
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 792
  tail call void @_ZN4llvm17PseudoSourceValueD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fh) #24
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %i.fi) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25AMDGPUMachineFunctionInfoE, i64 16), ptr %0, align 8, !tbaa !8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load i32, ptr %i.fj, align 8
  %i.fl = and i32 %i.fk, 1
  %.not.i.i.i31 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i.i31, label %bb.x, label %_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev.exit

bb.x:                                             ; preds = %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !315 ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !315
  %i.fr = zext i32 %i.fn to i64                   ; 2 uses
  %i.fs = shl nuw nsw i64 %i.fr, 4
  %i.ft = add nuw nsw i64 %i.fr, 31
  %i.fu = lshr i64 %i.ft, 3
  %i.fv = and i64 %i.fu, 1073741820
  %i.fw = add nuw nsw i64 %i.fv, %i.fs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.fq, i64 noundef %i.fw, i64 noundef 8) #24, !inline_history !867
  br label %_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev.exit

_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev.exit:     ; preds = %_ZN4llvm11SmallVectorIjLj12EED2Ev.exit, %bb.x, %bb.y
  tail call void @_ZN4llvm19MachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(130) %0) #24, !inline_history !867
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21SIMachineFunctionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(1608) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm21SIMachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1604) dereferenceable(1608) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1608) #27
  ret void
}

declare void @_ZN4llvm19MachineRegisterInfo8Delegate6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn136_N4llvm21SIMachineFunctionInfoD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -136
  tail call void @_ZN4llvm21SIMachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1604) dereferenceable(1608) %i.a) #24
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZThn136_N4llvm21SIMachineFunctionInfoD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -136 ; 2 uses
  tail call void @_ZN4llvm21SIMachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1604) dereferenceable(1608) %i.a) #24
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(1608) %i.a, i64 noundef 1608) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4yaml21SIMachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1976) dereferenceable(1976) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !768  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm4yaml11StringValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !315
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #27
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit

_ZN4llvm4yaml11StringValueD2Ev.exit:              ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !768  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1872 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvm4yaml11StringValueD2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !315
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #27
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit3

_ZN4llvm4yaml11StringValueD2Ev.exit3:             ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !768  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1824 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvm4yaml11StringValueD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !315
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit6

_ZN4llvm4yaml11StringValueD2Ev.exit6:             ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1744 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !769, !range !18, !noundef !19
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.s, align 8, !tbaa !769
  br i1 %i.u, label %bb.b, label %_ZNSt14_Optional_baseIN4llvm4yaml14SIArgumentInfoELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @_ZN4llvm4yaml14SIArgumentInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(1368) dereferenceable(1376) %i.v) #24
  br label %_ZNSt14_Optional_baseIN4llvm4yaml14SIArgumentInfoELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm4yaml14SIArgumentInfoELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm4yaml11StringValueD2Ev.exit6, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !768  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm4yaml11StringValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %_ZNSt14_Optional_baseIN4llvm4yaml14SIArgumentInfoELb0ELb0EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !315
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZN4llvm4yaml11StringValueD2Ev.exit9

_ZN4llvm4yaml11StringValueD2Ev.exit9:             ; preds = %_ZNSt14_Optional_baseIN4llvm4yaml14SIArgumentInfoELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
end_hunk_1
begin_hunk_2_@_ZNK4llvm2cl3optIbLb1ENS0_6parserIbEEE16printOptionValueEmb:bb.a
  br i1 %2, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre2 = load i8, ptr %.pre, align 1, !tbaa !659, !range !18
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1, !tbaa !889, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.e = load i8, ptr %i.d, align 8, !range !18
  %i.f = load i8, ptr %.pre, align 1, !range !18  ; 2 uses
  %i.g = icmp eq i8 %i.e, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi i8 [ %.pre2, %._crit_edge ], [ %i.f, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.k = trunc nuw i8 %i.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i16, ptr %i.m, align 8
  store i16 %i.n, ptr %i.l, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr %3, align 8, !tbaa !8
  call void @_ZNK4llvm2cl6parserIbE15printOptionDiffERKNS0_6OptionEbNS0_11OptionValueIbEEm(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(120) %0, i1 noundef zeroext %i.k, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(16) %3, i64 noundef %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb1ENS0_6parserIbEEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.c = load i8, ptr %i.b, align 1, !tbaa !889, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i8, ptr %i.e, align 8, !range !18
  %.sink = select i1 %i.d, i8 %i.f, i8 0
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !869
  store i8 %.sink, ptr %i.g, align 1, !tbaa !659
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb1ENS0_6parserIbEEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZN4llvm2cl6Option13addOccurrenceEjNS_9StringRefES2_b(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, ptr, i64, ptr, i64, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare noundef zeroext i1 @_ZN4llvm2cl6parserIbE5parseERNS0_6OptionENS_9StringRefES5_Rb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(120), ptr, i64, ptr, i64, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

declare noundef i64 @_ZNK4llvm2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

declare void @_ZNK4llvm2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(120), i64 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm2cl6parserIbE15printOptionDiffERKNS0_6OptionEbNS0_11OptionValueIbEEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(120), i1 noundef zeroext, ptr nofree noundef align 8 dead_on_return dereferenceable(16), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !889, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !889, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = load i8, ptr %i.d, align 8, !range !18
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm34AMDGPUGWSResourcePseudoSourceValue11printCustomERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !890
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !891  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 11
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.18, i64 noundef 11) #24 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.d, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !891
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 11
  store ptr %i.k, ptr %i.c, align 8, !tbaa !891
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm17PseudoSourceValueD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm34AMDGPUGWSResourcePseudoSourceValueD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm17PseudoSourceValueD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm23AMDGPUPseudoSourceValue10isConstantEPKNS_16MachineFrameInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm34AMDGPUGWSResourcePseudoSourceValue9isAliasedEPKNS_16MachineFrameInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm34AMDGPUGWSResourcePseudoSourceValue8mayAliasEPKNS_16MachineFrameInfoE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN4llvm17PseudoSourceValueC2EjRKNS_13TargetMachineE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(1728)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(368) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !309  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.y) #24
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i5.i, -1
  %i.ac = and i32 %i.ab, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !892

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !893

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ad = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ae = and i32 %i.ad, 1
  %.not.i9 = icmp eq i32 %i.ae, 0
  br i1 %.not.i9, label %bb.d, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit
  %i.af = load i32, ptr %i.c, align 8, !tbaa !315 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !315
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 88
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #24
  store i32 0, ptr %i.c, align 8, !tbaa !315
  %.pre27 = load i32, ptr %0, align 8
  %.pre33 = and i32 %.pre27, 1
  br label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit, %bb.d, %bb.e
  %.pre-phi = phi i32 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit ], [ 0, %bb.d ], [ %.pre33, %bb.e ]
  store i32 %.pre-phi, ptr %0, align 8
  %i.ap = load i32, ptr %1, align 8
  %i.aq = and i32 %i.ap, 1
  %.not.i10 = icmp eq i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = select i1 %.not.i10, i32 %i.as, i32 4   ; 3 uses
  %i.au = icmp ult i32 %i.at, 5
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit
  store i32 1, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre29 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre30 = load i32, ptr %i.c, align 8
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre32 = load ptr, ptr %.phi.trans.insert31, align 8
  br label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit

bb.g:                                             ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit
  store i32 0, ptr %0, align 8
  %i.av = zext i32 %i.at to i64                   ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, 88               ; 2 uses
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  %i.bb = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ba, i64 noundef 8) #24 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !315
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.aw ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !315
  store i32 %i.at, ptr %i.c, align 8, !tbaa !315
  %.pre28 = load i32, ptr %0, align 8
  %i.bf = and i32 %.pre28, 1
  br label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit: ; preds = %bb.g, %bb.f
  %i.bg = phi ptr [ %i.bd, %bb.g ], [ %.pre32, %bb.f ]
  %i.bh = phi i32 [ %i.as, %bb.g ], [ %.pre30, %bb.f ]
  %i.bi = phi ptr [ %i.bb, %bb.g ], [ %.pre29, %bb.f ]
  %i.bj = phi i32 [ %i.bf, %bb.g ], [ 1, %bb.f ]  ; 2 uses
  %i.bk = load i32, ptr %1, align 8
  %i.bl = and i32 %i.bk, -2
  %i.bm = or disjoint i32 %i.bj, %i.bl
  store i32 %i.bm, ptr %0, align 8
  %.not.i.i.i11 = icmp eq i32 %i.bj, 0            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = select i1 %.not.i.i.i11, ptr %i.bi, ptr %i.bn ; 3 uses
  %i.bp = load i32, ptr %1, align 8
  %i.bq = and i32 %i.bp, 1
  %.not.i12 = icmp eq i32 %i.bq, 0                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = select i1 %.not.i12, ptr %i.bs, ptr %i.br ; 3 uses
  %i.bu = select i1 %.not.i.i.i11, i32 %i.bh, i32 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bw = select i1 %.not.i.i.i11, ptr %i.bg, ptr %i.bv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = select i1 %.not.i12, ptr %i.bz, ptr %i.bx
  %i.cb = zext i32 %i.bu to i64
  %i.cc = add nuw nsw i64 %i.cb, 31
  %i.cd = lshr i64 %i.cc, 5                       ; 4 uses
  %i.ce = shl nuw nsw i64 %i.cd, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bw, ptr align 4 %i.ca, i64 %i.ce, i1 false)
  %.not.i19 = icmp eq i64 %i.cd, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8copyFromERKSB_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit
  %i.cf = icmp eq ptr %i.bo, %i.bt
  %.fr = freeze i1 %i.cf
  br i1 %.fr, label %.lr.ph21.split.us, label %.lr.ph21.split

.lr.ph21.split.us:                                ; preds = %.lr.ph21, %._crit_edge.split.us.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %._crit_edge.split.us.us ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv24
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !309 ; 2 uses
  %.not11.i17.us = icmp eq i32 %i.ch, 0
  br i1 %.not11.i17.us, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit.us.us, %.lr.ph21.split.us
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.next25, %i.cd
  br i1 %.not.i.us, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8copyFromERKSB_EUljE_EEvPKjjT_.exit, label %.lr.ph21.split.us, !llvm.loop !894

.lr.ph.us:                                        ; preds = %.lr.ph21.split.us
  %indvars.iv24.tr = trunc nuw i64 %indvars.iv24 to i32
  %i.ci = shl nuw i32 %indvars.iv24.tr, 5
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit.us.us

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit.us.us: ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit.us.us, %.lr.ph.us
  %.0.i18.us.us = phi i32 [ %i.ch, %.lr.ph.us ], [ %i.cw, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit.us.us ] ; 3 uses
  %i.cj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18.us.us, i1 true)
  %i.ck = or disjoint i32 %i.cj, %i.ci
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [88 x i8], ptr %i.bo, i64 %i.cl ; 6 uses
  %i.cn = getelementptr inbounds nuw [88 x i8], ptr %i.bt, i64 %i.cl ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !309
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !309
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(80) %i.cq, i64 12, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  store i32 0, ptr %i.ct, align 8, !tbaa !151
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  store i32 12, ptr %i.cu, align 4, !tbaa !152
  %i.cv = add i32 %.0.i18.us.us, -1
  %i.cw = and i32 %i.cv, %.0.i18.us.us            ; 2 uses
  %.not11.i.us.us = icmp eq i32 %i.cw, 0
  br i1 %.not11.i.us.us, label %._crit_edge.split.us.us, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit.us.us, !llvm.loop !895

.lr.ph21.split:                                   ; preds = %.lr.ph21, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph21 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !309 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.cy, 0
  br i1 %.not11.i17, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21.split
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.cz = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.cy, %.lr.ph ], [ %i.dw, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.da = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.db = or disjoint i32 %i.da, %i.cz
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [88 x i8], ptr %i.bo, i64 %i.dc ; 6 uses
  %i.de = getelementptr inbounds nuw [88 x i8], ptr %i.bt, i64 %i.dc ; 4 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !309
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !309
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dg, ptr noundef nonnull align 8 dereferenceable(80) %i.dh, i64 12, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 40 ; 3 uses
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !21
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 2 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !151
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 36
  store i32 12, ptr %i.dm, align 4, !tbaa !152
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !151 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dp = icmp ugt i32 %i.do, 12
  br i1 %i.dp, label %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i.i.i, label %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i.i.i: ; preds = %bb.i
  %i.dq = zext i32 %i.do to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.di, ptr noundef nonnull %i.dk, i64 noundef %i.dq, i64 noundef 4) #24
  %.pre.i.i.i = load i32, ptr %i.dn, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.di, align 8, !tbaa !21
  br label %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i

_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i, %bb.i
  %i.dr = phi ptr [ %.pre.i.i, %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i ], [ %i.dk, %bb.i ]
  %i.ds = phi i32 [ %.pre.i.i.i, %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i ], [ %i.do, %bb.i ]
  %i.dt = zext i32 %i.ds to i64
  %i.du = load ptr, ptr %i.dj, align 8, !tbaa !21
  %gepdiff.i.i.i.i = shl nuw nsw i64 %i.dt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 4 %i.du, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i, %_ZSt4copyIPKN4llvm10MCRegisterEPS1_ET0_T_S6_S5_.exit30.i.i.i.i
  store i32 %i.do, ptr %i.dl, align 8, !tbaa !151
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit: ; preds = %bb.h, %.sink.split.i.i.i.i
  %i.dv = add i32 %.0.i18, -1
  %i.dw = and i32 %i.dv, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.dw, 0
  br i1 %.not11.i, label %._crit_edge.split, label %bb.h, !llvm.loop !895

._crit_edge.split:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8copyFromERKS8_ENKUljE_clEj.exit, %.lr.ph21.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.cd
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8copyFromERKSB_EUljE_EEvPKjjT_.exit, label %.lr.ph21.split, !llvm.loop !894

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8copyFromERKSB_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #18

declare { ptr, i64 } @_ZNK4llvm14MCRegisterInfo18getCachedAliasesOfENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(240), i32) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !151
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !151
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !151
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt9__find_ifIPKSt4pairIN4llvm8RegisterENS1_31PrologEpilogSGPRSaveRestoreInfoEEN9__gnu_cxx5__ops10_Iter_predIZNKS1_21SIMachineFunctionInfo34checkIndexInPrologEpilogSGPRSpillsEiEUlRS5_E_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, i32 %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 12
  %i.e = ashr i64 %i.d, 2                         ; 3 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = mul nuw nsw i64 %i.e, 48
  %scevgep = getelementptr i8, ptr %0, i64 %i.g   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.047 = phi i64 [ %i.ak, %bb.e ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.02946 = phi ptr [ %i.aj, %bb.e ], [ %0, %.lr.ph.preheader ] ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02946, i64 4
  %i.i = load i8, ptr %i.h, align 4, !tbaa !896
  %i.j = icmp eq i8 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %.02946, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, %2
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.02946, i64 16
  %i.p = load i8, ptr %i.o, align 4, !tbaa !896
  %i.q = icmp eq i8 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %.02946, i64 20
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, %2
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %.loopexit.split.loop.exit37, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.02946, i64 28
  %i.w = load i8, ptr %i.v, align 4, !tbaa !896
  %i.x = icmp eq i8 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %.02946, i64 32
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, %2
  %i.ab = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %i.ab, label %.loopexit.split.loop.exit39, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946, i64 40
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !896
  %i.ae = icmp eq i8 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %.02946, i64 44
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, %2
  %i.ai = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %i.ai, label %.loopexit.split.loop.exit41, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.02946, i64 48
  %i.ak = add nsw i64 %.047, -1
  %i.al = icmp sgt i64 %.047, 1
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !899

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %scevgep to i64
  %.pre52 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi53 = phi i64 [ %.pre52, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.am = sdiv exact i64 %.pre-phi53, 12
  switch i64 %i.am, label %bb.k [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 4
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !896
  %i.ap = icmp eq i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 8
  %i.ar = load i32, ptr %i.aq, align 4
end_hunk_2
begin_hunk_3_@_ZN4llvm15SmallVectorImplINS_7SMFixItEEaSEOS2_:bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !752
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !752
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !768
  store i64 0, ptr %i.en, align 8, !tbaa !752
  store i8 0, ptr %i.eg, align 8, !tbaa !315
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 48 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.eq, %i.dy
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.loopexit, label %.lr.ph.i.i.i.i.i71, !llvm.loop !947

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.loopexit: ; preds = %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre84 = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.loopexit, %_ZSt4moveIPN4llvm7SMFixItES2_ET0_T_S4_S3_.exit70
  %i.es = phi ptr [ %.pre84, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.loopexit ], [ %i.dv, %_ZSt4moveIPN4llvm7SMFixItES2_ET0_T_S4_S3_.exit70 ] ; 2 uses
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !151
  %i.et = load i32, ptr %i.x, align 8, !tbaa !151 ; 2 uses
  %.not4.i.i72 = icmp eq i32 %i.et, 0
  br i1 %.not4.i.i72, label %_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit82, label %.lr.ph.i.preheader.i73

.lr.ph.i.preheader.i73:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  %i.eu = zext i32 %i.et to i64
  %.idx.i74 = mul nuw nsw i64 %i.eu, 48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %.idx.i74
  br label %.lr.ph.i.i75

.lr.ph.i.i75:                                     ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i78, %.lr.ph.i.preheader.i73
  %.05.i.i76 = phi ptr [ %i.ew, %_ZN4llvm7SMFixItD2Ev.exit.i.i78 ], [ %i.ev, %.lr.ph.i.preheader.i73 ] ; 3 uses
  %i.ew = getelementptr inbounds i8, ptr %.05.i.i76, i64 -48 ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.05.i.i76, i64 -32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !768 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.05.i.i76, i64 -16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZN4llvm7SMFixItD2Ev.exit.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77: ; preds = %.lr.ph.i.i75
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !315
  %i.fc = add i64 %i.fb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #27
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i78

_ZN4llvm7SMFixItD2Ev.exit.i.i78:                  ; preds = %.lr.ph.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77
  %.not.i.i79 = icmp eq ptr %i.es, %i.ew
  br i1 %.not.i.i79, label %_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit82, label %.lr.ph.i.i75, !llvm.loop !857

_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit82: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i78, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  store i32 0, ptr %i.x, align 8, !tbaa !151
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit, %_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit82, %bb.a, %_ZN4llvm15SmallVectorImplINS_7SMFixItEE12assignRemoteEOS2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !151  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !786
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !751
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !768  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !752  ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.l, ptr %i.i, align 8, !tbaa !768
  %i.s = load i64, ptr %i.m, align 8, !tbaa !315
  store i64 %i.s, ptr %i.k, align 8, !tbaa !315
  br label %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !752
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !752
  store ptr %i.m, ptr %i.j, align 8, !tbaa !768
  store i64 0, ptr %i.t, align 8, !tbaa !752
  store i8 0, ptr %i.m, align 8, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !947

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !21  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !151 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.y = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.y, 48
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.aa, %_ZN4llvm7SMFixItD2Ev.exit.i.i ], [ %i.z, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !768 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN4llvm7SMFixItD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !315
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i

_ZN4llvm7SMFixItD2Ev.exit.i.i:                    ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.aa
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !857

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit.loopexit: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.ah = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i ] ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !323
  %i.aj = icmp eq ptr %i.ah, %i.b
  br i1 %i.aj, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE21takeAllocationForGrowEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit
  call void @free(ptr noundef %i.ah) #24
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE21takeAllocationForGrowEPS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE21takeAllocationForGrowEPS1_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !21
  %i.ak = trunc i64 %i.ai to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i.i = icmp eq i32 %i.b, 0               ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i.i, i32 %i.d, i32 4   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i.i, ptr %i.h, ptr %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = zext i32 %i.e to i64
  %i.o = add nuw nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !309  ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.s = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.r, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.y) #24
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i5.i, -1
  %i.ac = and i32 %i.ab, %.0.i5.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !892

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit.loopexit, label %.lr.ph9.i, !llvm.loop !893

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit.loopexit: ; preds = %._crit_edge.i
  %.pre = load i32, ptr %0, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit.loopexit, %bb.a
  %i.ad = phi i32 [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.d, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit
  %i.af = load i32, ptr %i.c, align 8, !tbaa !315 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !315
  %i.aj = zext i32 %i.af to i64                   ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 88
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #24
  br label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17deallocateBucketsEv.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E10destroyAllEv.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm19MachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(130) dereferenceable(130) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25AMDGPUMachineFunctionInfoE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !315  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !315
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #24
  br label %_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4llvm19MachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm25AMDGPUMachineFunctionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(130) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm25AMDGPUMachineFunctionInfoE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !315  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !315
  %i.i = zext i32 %i.e to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = add nuw nsw i64 %i.i, 31
  %i.l = lshr i64 %i.k, 3
  %i.m = and i64 %i.l, 1073741820
  %i.n = add nuw nsw i64 %i.m, %i.j
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.h, i64 noundef %i.n, i64 noundef 8) #24, !inline_history !867
  br label %_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev.exit

_ZN4llvm25AMDGPUMachineFunctionInfoD2Ev.exit:     ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4llvm19MachineFunctionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(130) %0) #24, !inline_history !867
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm19MachineFunctionInfo5cloneERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEERNS_15MachineFunctionERKNS_8DenseMapIPNS_17MachineBasicBlockES9_NS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_S9_EEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(1065) %2, ptr noundef nonnull align 1 %3) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !516, !noalias !948 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !522, !noalias !948 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !523, !noalias !948 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !309
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !466

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !309
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !467, !llvm.loop !953

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !53
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit, label %bb.c, !prof !340

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !954
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !515
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit, label %bb.d, !prof !340

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !954
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !522
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !516
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !309
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !309
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !515
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !309
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !309
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !516, !noalias !955 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !522, !noalias !955 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !523, !noalias !955 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !309
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !466

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !309
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !467, !llvm.loop !953

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !53
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !340

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !954
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.198", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !523
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 31                 ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = add nuw nsw i64 %i.t, %i.r
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 4) #24 ; 2 uses
  %i.x = shl nuw nsw i64 %i.r, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  store ptr %i.w, ptr %2, align 16, !tbaa !516
  store ptr %i.y, ptr %i.q, align 8, !tbaa !522
  store i32 0, ptr %i.p, align 16, !tbaa !515
  %i.z = lshr i64 %i.s, 3
  %i.aa = and i64 %i.z, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.aa, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ab = load <2 x ptr>, ptr %0, align 8, !tbaa !802
  %i.ac = load ptr, ptr %0, align 8, !tbaa !954
  %i.ad = load <2 x ptr>, ptr %2, align 16, !tbaa !802
  store <2 x ptr> %i.ad, ptr %0, align 8, !tbaa !802
  store <2 x ptr> %i.ab, ptr %2, align 16, !tbaa !802
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !309 ; 2 uses
  %i.ah = load <2 x i32>, ptr %i.ae, align 8, !tbaa !309
  %i.ai = load <2 x i32>, ptr %i.p, align 16, !tbaa !309
  store <2 x i32> %i.ai, ptr %i.ae, align 8, !tbaa !309
  store <2 x i32> %i.ah, ptr %i.p, align 16, !tbaa !309
  %i.aj = icmp eq i32 %i.ag, 0
  br i1 %i.aj, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ak = zext i32 %i.ag to i64                   ; 2 uses
  %i.al = add nuw nsw i64 %i.ak, 31
  %i.am = lshr i64 %i.al, 5
  %i.an = add nuw nsw i64 %i.am, %i.ak
  %i.ao = shl nuw nsw i64 %i.an, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ao, i64 noundef 4) #24
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !516    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !522
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !523  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !522  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !516
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !523
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !309  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.al, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !309
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !960

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !309
  %i.ah = shl nuw i32 1, %i.ab
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !309
  %i.aj = or i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !309
  %i.ak = add i32 %.0.i16, -1
  %i.al = and i32 %i.ak, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.al, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !961

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !962

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !523
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.am = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !515
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !515
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.ar = zext i32 %i.am to i64                   ; 2 uses
  %i.as = add nuw nsw i64 %i.ar, 31
  %i.at = lshr i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.at, %i.ar
  %i.av = shl nuw nsw i64 %i.au, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.av, i64 noundef 4) #24
  store i32 0, ptr %i.d, align 4, !tbaa !523
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #5

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN4llvm2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(34), ptr, i64, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #5

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #24
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !309
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !309
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !152
  store i32 0, ptr %i.j, align 8, !tbaa !151
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !151  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !151  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !963

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.s, ptr align 4 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.b, align 4, !tbaa !309
  store i32 %i.t, ptr %i.s, align 4, !tbaa !309
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !151
  store i32 0, ptr %i.m, align 8, !tbaa !151
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !152
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !151
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 4) #24
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !590

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.y, ptr align 4 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.b, align 4, !tbaa !309
  store i32 %i.z, ptr %i.y, align 4, !tbaa !309
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !151
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !21
  %.idx39 = shl nuw nsw i64 %.026, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 4 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !151
end_hunk_3
begin_hunk_4_@_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE:bb.a
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  store ptr %i.ab, ptr %i.ah, align 1
  %i.ai = load i32, ptr %i.w, align 8, !tbaa !151
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.w, align 8, !tbaa !151
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit: ; preds = %bb.f, %bb.g
  %i.ak = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.al, %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !339
  %i.ao = add i64 %i.c, %i.ak
  %i.ap = sub i64 0, %i.b
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %2
  store ptr %i.as, ptr %0, align 8, !tbaa !328
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit
  %.0 = phi ptr [ %i.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit ], [ %i.ar, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12StartNewSlabEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !151
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !151
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPvLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !151
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !151
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8copyFromERKSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !315  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !315
  %i.h = zext i32 %i.d to i64                     ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 4
  %i.j = add nuw nsw i64 %i.h, 31
  %i.k = lshr i64 %i.j, 3
  %i.l = and i64 %i.k, 1073741820
  %i.m = add nuw nsw i64 %i.l, %i.i
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.g, i64 noundef %i.m, i64 noundef 8) #24
  store i32 0, ptr %i.c, align 8, !tbaa !315
  %.pre = load i32, ptr %0, align 8
  %.pre20 = and i32 %.pre, 1
  br label %_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit

_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.pre-phi = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ %.pre20, %bb.c ]
  store i32 %.pre-phi, ptr %0, align 8
  %i.n = load i32, ptr %1, align 8
  %i.o = and i32 %i.n, 1
  %.not.i10 = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = select i1 %.not.i10, i32 %i.q, i32 4     ; 3 uses
  %i.s = icmp ult i32 %i.r, 5
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit
  store i32 1, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre17 = load i32, ptr %.phi.trans.insert16, align 8
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8
  br label %bb.f

bb.e:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKNS_11GlobalValueEjLj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17deallocateBucketsEv.exit
  store i32 0, ptr %0, align 8
  %i.t = zext i32 %i.r to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 4                  ; 2 uses
  %i.v = add nuw nsw i64 %i.t, 31
  %i.w = lshr i64 %i.v, 3
  %i.x = and i64 %i.w, 1073741820
  %i.y = add nuw nsw i64 %i.x, %i.u
  %i.z = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.y, i64 noundef 8) #24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !315
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.u ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !315
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.r, ptr %i.ad, align 8, !tbaa !315
  %.pre14 = load i32, ptr %0, align 8
  %i.ae = and i32 %.pre14, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ %.pre19, %bb.d ], [ %i.ab, %bb.e ]
  %i.ag = phi i32 [ %.pre17, %bb.d ], [ %i.q, %bb.e ]
  %i.ah = phi ptr [ %.pre15, %bb.d ], [ %i.z, %bb.e ]
  %i.ai = phi i32 [ 1, %bb.d ], [ %i.ae, %bb.e ]  ; 2 uses
  %i.aj = load i32, ptr %1, align 8
  %i.ak = and i32 %i.aj, -2
  %i.al = or disjoint i32 %i.ai, %i.ak
  store i32 %i.al, ptr %0, align 8
  %.not.i.i.i = icmp eq i32 %i.ai, 0              ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = select i1 %.not.i.i.i, ptr %i.ah, ptr %i.am
  %i.ao = load i32, ptr %1, align 8
  %i.ap = and i32 %i.ao, 1
  %.not.i11 = icmp eq i32 %i.ap, 0                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = select i1 %.not.i11, ptr %i.ar, ptr %i.aq
  %i.at = select i1 %.not.i.i.i, i32 %i.ag, i32 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = select i1 %.not.i.i.i, ptr %i.af, ptr %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = select i1 %.not.i11, ptr %i.ay, ptr %i.aw
  %i.ba = zext i32 %i.at to i64                   ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.av, ptr align 4 %i.az, i64 %i.bd, i1 false)
  %i.be = shl nuw nsw i64 %i.ba, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 8 %i.as, i64 %i.be, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !561  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !554
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !560
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !309  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !544  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !541
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.x = add i32 %.0.i3.i, -1
  %i.y = and i32 %i.x, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !670

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !671

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !561  ; 2 uses
  %i.z = icmp eq i32 %.pr, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !554
  %i.ab = zext i32 %.pr to i64                    ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 5
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #24
  store i32 0, ptr %i.a, align 4, !tbaa !561
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !665
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !561 ; 3 uses
  store i32 %i.aj, ptr %i.a, align 4, !tbaa !561
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE15allocateBucketsEj.exit, label %bb.e

_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit

bb.e:                                             ; preds = %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 5
  %i.am = add nuw nsw i64 %i.ak, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  %i.ap = add nuw nsw i64 %i.ao, %i.al
  %i.aq = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.ap, i64 noundef 8) #24 ; 3 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !561
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 5
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at ; 3 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !554
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !560
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !665
  store i32 %i.ax, ptr %i.ah, align 8, !tbaa !665
  %i.ay = load ptr, ptr %1, align 8, !tbaa !554
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !560
  %i.bb = add nuw nsw i64 %i.as, 31
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = shl nuw nsw i64 %i.bc, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.au, ptr align 4 %i.ba, i64 %i.bd, i1 false)
  %.not.i17 = icmp eq i64 %i.bc, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.e, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.e ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !309 ; 2 uses
  %.not11.i15 = icmp eq i32 %i.bf, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bg = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.bf, %.lr.ph ], [ %i.cw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.bh = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.bi = or disjoint i32 %i.bh, %i.bg
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.bj ; 4 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.ay, i64 %i.bj ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !309
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !309
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !538 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !544 ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bq, %i.br
  br i1 %.not.i.i.i.i.i9, label %_ZNSt12_Vector_baseIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EEC2EmRKS3_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = icmp ugt i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.h, label %_ZNSt15__new_allocatorIN4llvm14SIRegisterInfo10SpilledRegEE8allocateEmPKv.exit.i.i.i.i.i, !prof !590

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIN4llvm14SIRegisterInfo10SpilledRegEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #26
  br label %_ZNSt12_Vector_baseIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EEC2EmRKS3_.exit.i.i

_ZNSt12_Vector_baseIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EEC2EmRKS3_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvm14SIRegisterInfo10SpilledRegEE8allocateEmPKv.exit.i.i.i.i.i, %bb.f
  %i.bx = phi ptr [ %i.bw, %_ZNSt15__new_allocatorIN4llvm14SIRegisterInfo10SpilledRegEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.f ] ; 8 uses
  store ptr %i.bx, ptr %i.bn, align 8, !tbaa !544
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !538
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !541
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !580 ; 5 uses
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !580 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not7.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt12_Vector_baseIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EEC2EmRKS3_.exit.i.i
  %i.cd = ptrtoaddr ptr %i.cb to i64              ; 2 uses
  %i.ce = ptrtoaddr ptr %i.bx to i64
  %i.cf = ptrtoaddr ptr %i.cc to i64
  %i.cg = add i64 %i.cf, -8
  %i.ch = sub i64 %i.cg, %i.cd                    ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 24
  %i.ck = sub i64 %i.cd, %i.ce
  %diff.check = icmp ugt i64 %i.ck, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cj, 4611686018427387900     ; 3 uses
  %i.cl = shl i64 %n.vec, 3                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bx, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cb, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.co ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.cb, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 4
  %wide.load33 = load <2 x i64>, ptr %i.cp, align 4
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load33, ptr %i.cq, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !964

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit, label %.lr.ph.i.i.i.i.i.i.preheader35

.lr.ph.i.i.i.i.i.i.preheader35:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cm, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader35, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader35 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader35 ] ; 2 uses
  %i.cs = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 4
  store i64 %i.cs, ptr %.09.i.i.i.i.i.i, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, %i.cc
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !965

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EEC2EmRKS3_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bx, %_ZNSt12_Vector_baseIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EEC2EmRKS3_.exit.i.i ], [ %i.cm, %middle.block ], [ %i.cu, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.by, align 8, !tbaa !538
  %i.cv = add i32 %.0.i16, -1
  %i.cw = and i32 %i.cv, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.f, !llvm.loop !966

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.bc
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit, label %.lr.ph20, !llvm.loop !967

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8copyFromERKSF_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.e, %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8copyFromERKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !464  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.e, 31
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741820
  %i.j = add nuw nsw i64 %i.i, %i.f
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.d, i64 noundef %i.j, i64 noundef 4) #24
  store i32 0, ptr %i.a, align 4, !tbaa !464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !968
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !464  ; 3 uses
  store i32 %i.m, ptr %i.a, align 4, !tbaa !464
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit, label %bb.c

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE17deallocateBucketsEv.exit
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.n, 31
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 1073741820
  %i.s = add nuw nsw i64 %i.r, %i.o
  %i.t = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.s, i64 noundef 4) #24 ; 3 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !464
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !453
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !463
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !968
  store i32 %i.aa, ptr %i.k, align 8, !tbaa !968
  %i.ab = load ptr, ptr %1, align 8, !tbaa !453
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !463
  %i.ae = add nuw nsw i64 %i.v, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 4 %i.ab, i64 %i.w, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE15allocateBucketsEj.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !523  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !516
  %i.e = zext i32 %i.b to i64                     ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 31
  %i.g = lshr i64 %i.f, 5
  %i.h = add nuw nsw i64 %i.g, %i.e
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.d, i64 noundef %i.i, i64 noundef 4) #24
  store i32 0, ptr %i.a, align 4, !tbaa !523
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.j, align 8, !tbaa !515
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !523  ; 3 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !523
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit, label %bb.c

_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE17deallocateBucketsEv.exit
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  %i.p = add nuw nsw i64 %i.o, %i.m
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.q, i64 noundef 4) #24 ; 3 uses
  %i.s = load i32, ptr %i.a, align 4, !tbaa !523
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !516
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !522
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !515
  store i32 %i.y, ptr %i.j, align 8, !tbaa !515
  %i.z = load ptr, ptr %1, align 8, !tbaa !516
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !522
  %i.ac = add nuw nsw i64 %i.t, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr align 4 %i.ab, i64 %i.ae, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 4 %i.z, i64 %i.u, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE15allocateBucketsEj.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !691  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !686
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !690
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !309  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.v, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !149  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.r) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.u = add i32 %.0.i3.i, -1
  %i.v = and i32 %i.u, %.0.i3.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.v, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !865

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !866

_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !691  ; 2 uses
  %i.w = icmp eq i32 %.pr, 0
  br i1 %i.w, label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !686
  %i.y = zext i32 %.pr to i64                     ; 2 uses
  %i.z = mul nuw nsw i64 %i.y, 104
  %i.aa = add nuw nsw i64 %i.y, 31
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = and i64 %i.ab, 1073741820
  %i.ad = add nuw nsw i64 %i.ac, %i.z
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.x, i64 noundef %i.ad, i64 noundef 8) #24
  store i32 0, ptr %i.a, align 4, !tbaa !691
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !692
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !691 ; 3 uses
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !691
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE15allocateBucketsEj.exit, label %bb.e

_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit

bb.e:                                             ; preds = %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE17deallocateBucketsEv.exit
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = mul nuw nsw i64 %i.ah, 104
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  %i.an = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.am, i64 noundef 8) #24 ; 5 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !691
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 104
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq ; 4 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !686
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !690
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !692
  store i32 %i.au, ptr %i.ae, align 8, !tbaa !692
  %i.av = load ptr, ptr %1, align 8, !tbaa !686
  %.fr20 = freeze ptr %i.av                       ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !690
  %i.ay = add nuw nsw i64 %i.ap, 31
  %i.az = lshr i64 %i.ay, 5                       ; 4 uses
  %i.ba = shl nuw nsw i64 %i.az, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.ax, i64 %i.ba, i1 false)
  %.not.i16 = icmp eq i64 %i.az, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.e
  %i.bb = icmp eq ptr %i.an, %.fr20
  br i1 %i.bb, label %.lr.ph19.split.us, label %.lr.ph19.split

.lr.ph19.split.us:                                ; preds = %.lr.ph19, %._crit_edge.split.us.us
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %._crit_edge.split.us.us ], [ 0, %.lr.ph19 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv23
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !309 ; 2 uses
  %.not11.i14.us = icmp eq i32 %i.bd, 0
  br i1 %.not11.i14.us, label %._crit_edge.split.us.us, label %.lr.ph.us

._crit_edge.split.us.us:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit.us.us, %.lr.ph19.split.us
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %.not.i.us = icmp eq i64 %indvars.iv.next24, %i.az
  br i1 %.not.i.us, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19.split.us, !llvm.loop !969

.lr.ph.us:                                        ; preds = %.lr.ph19.split.us
  %indvars.iv23.tr = trunc nuw i64 %indvars.iv23 to i32
  %i.be = shl nuw i32 %indvars.iv23.tr, 5
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit.us.us

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit.us.us: ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit.us.us, %.lr.ph.us
  %.0.i15.us.us = phi i32 [ %i.bd, %.lr.ph.us ], [ %i.bt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit.us.us ] ; 3 uses
  %i.bf = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15.us.us, i1 true)
  %i.bg = or disjoint i32 %i.bf, %i.be
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [104 x i8], ptr %i.an, i64 %i.bh ; 6 uses
  %i.bj = getelementptr inbounds nuw [104 x i8], ptr %.fr20, i64 %i.bh ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !309
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !309
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !149
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 0, ptr %i.bn, align 8, !tbaa !160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 32, ptr %i.bo, align 8, !tbaa !161
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.br = load i16, ptr %i.bq, align 8
  store i16 %i.br, ptr %i.bp, align 8
  %i.bs = add i32 %.0.i15.us.us, -1
  %i.bt = and i32 %i.bs, %.0.i15.us.us            ; 2 uses
  %.not11.i.us.us = icmp eq i32 %i.bt, 0
  br i1 %.not11.i.us.us, label %._crit_edge.split.us.us, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit.us.us, !llvm.loop !970

.lr.ph19.split:                                   ; preds = %.lr.ph19, %._crit_edge.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph19 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !309 ; 2 uses
  %.not11.i14 = icmp eq i32 %i.bv, 0
  br i1 %.not11.i14, label %._crit_edge.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19.split
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bw = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.bv, %.lr.ph ], [ %i.cs, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.bx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.by = or disjoint i32 %i.bx, %i.bw
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [104 x i8], ptr %i.an, i64 %i.bz ; 6 uses
  %i.cb = getelementptr inbounds nuw [104 x i8], ptr %.fr20, i64 %i.bz ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !309
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !309
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 3 uses
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !149
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  store i64 0, ptr %i.cg, align 8, !tbaa !160
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  store i64 32, ptr %i.ch, align 8, !tbaa !161
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !160 ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ck = icmp ugt i64 %i.cj, 32
  br i1 %i.ck, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.g
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(90) %i.cd, ptr noundef nonnull %i.cf, i64 noundef %i.cj, i64 noundef 2) #24
  %.pre.i.i.i = load i64, ptr %i.ci, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i = icmp samesign eq i64 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.cd, align 8, !tbaa !149
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.g
  %i.cl = phi ptr [ %.pre.i.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.cf, %bb.g ]
  %i.cm = phi i64 [ %.pre.i.i.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.cj, %bb.g ]
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !149
  %gepdiff.i.i.i.i = shl nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 2 %i.cn, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit30.i.i.i.i
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !160
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit: ; preds = %bb.f, %.sink.split.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cb, i64 96
  %i.cq = load i16, ptr %i.cp, align 8
  store i16 %i.cq, ptr %i.co, align 8
  %i.cr = add i32 %.0.i15, -1
  %i.cs = and i32 %i.cr, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cs, 0
  br i1 %.not11.i, label %._crit_edge.split, label %bb.f, !llvm.loop !970

._crit_edge.split:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8copyFromERKS9_ENKUljE_clEj.exit, %.lr.ph19.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.az
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19.split, !llvm.loop !969

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8copyFromERKSC_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.e, %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E24lookupOrInsertIntoBucketIRKiJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !971 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !971 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !971 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !971
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !309    ; 2 uses
  %i.n = mul i32 %i.m, 37
  %.024.i = and i32 %i.n, %i.l                    ; 3 uses
  %i.o = zext i32 %.024.i to i64                  ; 2 uses
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i.i, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !309
  %i.t = and i32 %.024.i, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !466

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.w, %i.l                      ; 3 uses
  %i.x = zext i32 %.0.i to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i.i, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !309
  %i.ac = and i32 %.0.i, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !prof !467, !llvm.loop !976

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !309
  %i.ah = icmp eq i32 %i.m, %i.ag
  br i1 %i.ah, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E15LookupBucketForIiEEbRKT_RPS7_.exit, label %bb.c, !prof !340

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa29.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.y, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa29.sink.i.ph, ptr %i.a, align 8, !tbaa !977
  %i.ai = shl i32 %i.b, 1
  %i.aj = and i32 %i.ai, -4
  %i.ak = add i32 %i.aj, 4
  %i.al = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E22findBucketForInsertionIiEEPS7_RKT_SB_.exit, label %bb.d, !prof !340

bb.d:                                             ; preds = %.loopexit
  %i.am = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.am)
  %i.an = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E15LookupBucketForIiEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !977
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E22findBucketForInsertionIiEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E22findBucketForInsertionIiEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.ao = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.ap = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aq = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa29.sink.i.ph, %.loopexit ] ; 8 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.ap, ptr %i.j
  %i.as = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.d
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 88                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !309
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !309
  %i.be = load i32, ptr %0, align 8               ; 2 uses
  %i.bf = and i32 %i.be, -2
  %i.bg = add i32 %i.bf, 2
  %i.bh = and i32 %i.be, 1
  %i.bi = or disjoint i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bj = load i32, ptr %1, align 4, !tbaa !309
  store i32 %i.bj, ptr %i.aq, align 4, !tbaa !309
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bk, i8 0, i64 80, i1 false)
  store i32 -1, ptr %i.bl, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  store i32 12, ptr %i.bo, align 4, !tbaa !152
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E15LookupBucketForIiEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E15LookupBucketForIiEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E22findBucketForInsertionIiEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.aq, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E22findBucketForInsertionIiEEPS7_RKT_SB_.exit ], [ %i.af, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E22findBucketForInsertionIiEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E15LookupBucketForIiEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !noalias !979
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E15LookupBucketForIiEEbRKT_RPS7_:bb.a
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !309
  %i.s = and i32 %.024, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !466

bb.c:                                             ; preds = %.lr.ph
  %i.v = add nuw i32 %.025, 1
  %.0 = and i32 %i.v, %i.k                        ; 3 uses
  %i.w = zext i32 %.0 to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %.sink2.i.i, i64 %i.w ; 2 uses
  %i.y = lshr i64 %i.w, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !309
  %i.ab = and i32 %.0, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %.thread, !prof !467, !llvm.loop !976

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ae = phi ptr [ %i.x, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !309
  %i.ag = icmp eq i32 %i.l, %i.af                 ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !340

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !977
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.174", align 8 ; 14 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 360
  br label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEEC2EjNS_12DenseMapBaseIS7_iS1_S3_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 88                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !315
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !315
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !315
  br label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEEC2EjNS_12DenseMapBaseIS7_iS1_S3_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEEC2EjNS_12DenseMapBaseIS7_iS1_S3_S6_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(368) %0)
  %i.ad = load i32, ptr %2, align 8               ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE13maybeMoveFastEOS7_.exit.thread, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE13maybeMoveFastEOS7_.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE13maybeMoveFastEOS7_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEEC2EjNS_12DenseMapBaseIS7_iS1_S3_S6_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !984
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !315
  br label %bb.b

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE13maybeMoveFastEOS7_.exit: ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEEC2EjNS_12DenseMapBaseIS7_iS1_S3_S6_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE13maybeMoveFastEOS7_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE13maybeMoveFastEOS7_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 88               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !315
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !315
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !315
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 360
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(368) %2)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE13maybeMoveFastEOS7_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E24initWithExactBucketCountEj.exit
  call void @_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(368) dereferenceable(368) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(368) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i28 = icmp eq i64 %i.ab, 0
  br i1 %.not.i28, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !309 ; 2 uses
  %.not11.i26 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph31
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i27 = phi i32 [ %i.ad, %.lr.ph ], [ %i.by, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i27, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %i.ah ; 9 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !309 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !309
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %bb.d, !llvm.loop !985

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.u, i64 %i.al ; 7 uses
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !309
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(80) %i.aw, i64 12, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 40 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  store i32 0, ptr %i.az, align 8, !tbaa !151
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 36 ; 2 uses
  store i32 12, ptr %i.ba, align 4, !tbaa !152
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !151 ; 5 uses
  %.not.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.be = icmp eq ptr %i.au, %i.ai
  br i1 %i.be, label %_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZN4llvm15SmallVectorImplINS_10MCRegisterEE12assignRemoteEOS2_.exit.i

_ZN4llvm15SmallVectorImplINS_10MCRegisterEE12assignRemoteEOS2_.exit.i: ; preds = %bb.f
  store ptr %i.bf, ptr %i.ax, align 8, !tbaa !21
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !151
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !152
  store i32 %i.bj, ptr %i.ba, align 4, !tbaa !152
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !21
  store i32 0, ptr %i.bi, align 4, !tbaa !152
  br label %_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i.sink.split

bb.g:                                             ; preds = %bb.f
  %i.bk = icmp ugt i32 %i.bc, 12
  br i1 %i.bk, label %bb.h, label %_ZSt4moveIPN4llvm10MCRegisterES2_ET0_T_S4_S3_.exit34.i

bb.h:                                             ; preds = %bb.g
  %i.bl = zext i32 %i.bc to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull %i.ay, i64 noundef %i.bl, i64 noundef 4) #24
  br label %_ZSt4moveIPN4llvm10MCRegisterES2_ET0_T_S4_S3_.exit34.i

_ZSt4moveIPN4llvm10MCRegisterES2_ET0_T_S4_S3_.exit34.i: ; preds = %bb.g, %bb.h
  %i.bm = load i32, ptr %i.bb, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i15 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i15, label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt4moveIPN4llvm10MCRegisterES2_ET0_T_S4_S3_.exit34.i
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !21
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %i.bn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 4 %i.bo, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %bb.i, %_ZSt4moveIPN4llvm10MCRegisterES2_ET0_T_S4_S3_.exit34.i
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !151
  br label %_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i.sink.split

_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplINS_10MCRegisterEE12assignRemoteEOS2_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  store i32 0, ptr %i.bb, align 8, !tbaa !151
  br label %_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i

_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i: ; preds = %_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i.sink.split, %bb.e, %bb.d
  %i.bq = shl nuw i32 1, %i.ap
  %i.br = load i32, ptr %i.at, align 4, !tbaa !309
  %i.bs = or i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.at, align 4, !tbaa !309
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i
  tail call void @free(ptr noundef %i.bu) #24
  br label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %_ZN4llvm24KernArgPreloadDescriptorC2EOS0_.exit.i, %bb.j
  %i.bx = add i32 %.0.i27, -1
  %i.by = and i32 %i.bx, %.0.i27                  ; 2 uses
  %.not11.i = icmp eq i32 %i.by, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !986

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEEiS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph31, !llvm.loop !987

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre35 = load i32, ptr %0, align 8
  %.pre36 = and i32 %.pre35, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre36, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bz = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.ca = and i32 %i.bz, -2
  %i.cb = or disjoint i32 %.pre-phi, %i.ca
  store i32 %i.cb, ptr %0, align 8
  %i.cc = load i32, ptr %1, align 8               ; 3 uses
  %i.cd = and i32 %i.cc, 1
  %.not.i.i12 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i12, label %bb.k, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE4killEv.exit

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.ce = load i32, ptr %i.j, align 8, !tbaa !315 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE4killEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !315
  %i.ch = zext i32 %i.ce to i64                   ; 2 uses
  %i.ci = mul nuw nsw i64 %i.ch, 88
  %i.cj = add nuw nsw i64 %i.ch, 31
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = and i64 %i.ck, 1073741820
  %i.cm = add nuw nsw i64 %i.cl, %i.ci
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cg, i64 noundef %i.cm, i64 noundef 8) #24
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.k, %bb.l
  %i.cn = phi i32 [ %i.cc, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIiNS_24KernArgPreloadDescriptorELj4ENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEEEiS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit ], [ %i.cc, %bb.k ], [ %.pre.i, %bb.l ]
  %i.co = and i32 %i.cn, -2
  store i32 %i.co, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_10MCRegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !151
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !151
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !453, !noalias !988 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !463, !noalias !988 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !464, !noalias !988 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !994
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !968
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit, label %bb.d, !prof !340

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !994
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !463
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !453
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !309
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !309
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !968
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !309
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !309
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !309
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E22findBucketForInsertionIS2_EEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !453, !noalias !995 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !463, !noalias !995 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464, !noalias !995 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !53     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !309
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !466

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !309
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !467, !llvm.loop !993

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !53
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !340

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !994
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.191", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !464
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !453
  store ptr %i.y, ptr %i.q, align 8, !tbaa !463
  store i32 0, ptr %i.p, align 16, !tbaa !968
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !802
  %i.aa = load ptr, ptr %0, align 8, !tbaa !994
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !802
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !802
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !802
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !309 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !309
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !309
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !309
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !309
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #24
  br label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !453    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !463
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !464  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !463  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !453
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !464
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !309  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !309
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !1000

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !309
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !309
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !309
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !309
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !309
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1001

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !1002

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !464
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !968
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !968
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #24
  store i32 0, ptr %i.d, align 4, !tbaa !464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit

_ZN4llvm8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_8RegisterEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(8) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEiELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS2_EES9_IJOiEEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !498
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %3, align 8, !tbaa !503
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.b, align 4, !tbaa !309
  %i.f = load i32, ptr %i.d, align 4, !tbaa !309
  %.sroa.2.0.insert.ext = zext i32 %i.f to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.04.0.insert.ext = zext i32 %i.e to i64
  %.sroa.04.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.04.0.insert.ext ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !152
  %.not.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !340

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEiELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.04.0.insert.insert)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !151
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEiELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = zext i32 %i.h to i64
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  store i64 %.sroa.04.0.insert.insert, ptr %i.m, align 1
  %i.n = load i32, ptr %i.g, align 8, !tbaa !151
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.g, align 8, !tbaa !151
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEiELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEiELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.o, %bb.c ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  %i.r = zext i32 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  ret ptr %i.t
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_8RegisterEiELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !151
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #24
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !151
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !151
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E21eraseFromFilledBucketIZNSA_21eraseFromFilledBucketEPS8_EUlRS8_E_EEvSC_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !515
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !515
  %i.d = load ptr, ptr %0, align 8, !tbaa !516    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !522  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !523
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 2
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !309
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.x = phi i64 [ %i.al, %bb.c ], [ %i.q, %bb.a ]
  %i.y = phi i32 [ %i.ak, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.x
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !53  ; 2 uses
  %i.ab = mul i32 %i.aa, 37                       ; 2 uses
  %i.ac = sub i32 %.03337, %i.ab
  %i.ad = and i32 %i.ac, %i.i
  %i.ae = sub i32 %i.y, %i.ab
  %i.af = and i32 %i.ae, %i.i
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ah = zext i32 %.03337 to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ah
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !309
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.y, %bb.b ] ; 2 uses
  %i.aj = add i32 %i.y, 1
  %i.ak = and i32 %i.aj, %i.i                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !309
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E24lookupOrInsertIntoBucketIRKiJEEESt4pairIPSB_bEOT_DpOT0_:bb.a
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !466

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !309
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !467, !llvm.loop !1008

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !309
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_.exit, label %bb.c, !prof !340

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1009
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !665
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit, label %bb.d, !prof !340

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1009
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !560
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !554
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 5                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !309
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !309
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !665
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !309
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !309
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E22findBucketForInsertionIiEEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E15LookupBucketForIiEEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !554, !noalias !1010 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !560, !noalias !1010 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !561, !noalias !1010 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !309    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !309
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !466

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !309
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !467, !llvm.loop !1008

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !309
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !340

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1009
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.184", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !561
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !554
  store ptr %i.y, ptr %i.q, align 8, !tbaa !560
  store i32 0, ptr %i.p, align 16, !tbaa !665
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1009   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !503 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !802
  store ptr %i.z, ptr %2, align 16, !tbaa !1009
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !802
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !503
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !309 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !309
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !309
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !309
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !309
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !309 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !544 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !541
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ba = add i32 %.0.i3.i.i, -1
  %i.bb = and i32 %i.ba, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !670

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !671

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !561 ; 2 uses
  %i.bc = icmp eq i32 %.pr.i, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i
  %i.bd = load ptr, ptr %2, align 16, !tbaa !554
  %i.be = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit

_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !554
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !560
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !561  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !560  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !554
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !561
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !309  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.ar, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !309  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !309
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1015

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x ; 3 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !309
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !580
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !580
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !541
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !541
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  %i.an = shl nuw i32 1, %i.ab
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !309
  %i.ap = or i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.af, align 4, !tbaa !309
  %i.aq = add i32 %.0.i19, -1
  %i.ar = and i32 %i.aq, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ar, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1016

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1017

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !561
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.as = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !665
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.au, ptr %i.av, align 8, !tbaa !665
  %i.aw = icmp eq i32 %i.as, 0
  br i1 %i.aw, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.ax = load ptr, ptr %1, align 8, !tbaa !554
  %i.ay = zext i32 %i.as to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 5
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !561
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE4killEv.exit

_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS7_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS9_EEEEiS9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E21eraseFromFilledBucketIZNSD_21eraseFromFilledBucketEPSB_EUlRSB_E_EEvSF_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !541
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !665
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !665
  %i.k = load ptr, ptr %0, align 8, !tbaa !554    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !560  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !561
  %i.p = add i32 %i.o, -1                         ; 4 uses
  %i.q = ptrtoint ptr %1 to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 5
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = add i32 %i.u, 1
  %i.w = and i32 %i.v, %i.p                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !309
  %i.ab = and i32 %i.w, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit, %bb.c
  %.pn = phi i64 [ %i.ax, %bb.c ], [ %i.x, %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit ]
  %i.ae = phi i32 [ %i.aw, %bb.c ], [ %i.w, %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit ] ; 3 uses
  %.03339 = phi i32 [ %.2, %bb.c ], [ %i.u, %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.pn ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !309 ; 2 uses
  %i.ah = mul i32 %i.ag, 37                       ; 2 uses
  %i.ai = sub i32 %.03339, %i.ah
  %i.aj = and i32 %i.ai, %i.p
  %i.ak = sub i32 %i.ae, %i.ah
  %i.al = and i32 %i.ak, %i.p
  %i.am = icmp ult i32 %i.aj, %i.al
  br i1 %i.am, label %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit35, label %bb.c

_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit35: ; preds = %.lr.ph
  %i.an = zext i32 %.03339 to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.an ; 3 uses
  store i32 %i.ag, ptr %i.ao, align 4, !tbaa !309
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !580
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !580
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !541
  store ptr %i.au, ptr %i.as, align 8, !tbaa !541
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit35
  %.2 = phi i32 [ %.03339, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit35 ] ; 2 uses
  %i.av = add i32 %i.ae, 1
  %i.aw = and i32 %i.av, %i.p                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !309
  %i.bb = and i32 %i.aw, 31
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit
  %.033.lcssa = phi i32 [ %i.u, %_ZNSt6vectorIN4llvm14SIRegisterInfo10SpilledRegESaIS2_EED2Ev.exit ], [ %.2, %bb.c ] ; 2 uses
  %i.be = and i32 %.033.lcssa, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = xor i32 %i.bf, -1
  %i.bh = lshr i32 %.033.lcssa, 5
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !309
  %i.bl = and i32 %i.bk, %i.bg
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !309
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E24lookupOrInsertIntoBucketIRKiJEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !686, !noalias !1018 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !690, !noalias !1018 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !691, !noalias !1018 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !309    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E24lookupOrInsertIntoBucketIRKiJEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !309
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !467, !llvm.loop !1023

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !309
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E15LookupBucketForIiEEbRKT_RPS8_.exit, label %bb.c, !prof !340

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1024
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !692
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E22findBucketForInsertionIiEEPS8_RKT_SC_.exit, label %bb.d, !prof !340

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E15LookupBucketForIiEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1024
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !690
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !686
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E22findBucketForInsertionIiEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E22findBucketForInsertionIiEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 9 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 104               ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !309
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !309
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !692
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !309
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !309
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bd, i8 0, i64 72, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !149
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 0, ptr %i.bf, align 8, !tbaa !160
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 32, ptr %i.bg, align 8, !tbaa !161
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 97
  store i8 0, ptr %i.bh, align 1, !tbaa !1025
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E15LookupBucketForIiEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E15LookupBucketForIiEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E22findBucketForInsertionIiEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E22findBucketForInsertionIiEEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E22findBucketForInsertionIiEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E15LookupBucketForIiEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !686, !noalias !1026 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !690, !noalias !1026 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !691, !noalias !1026 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !309    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !309
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !466

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !309
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !467, !llvm.loop !1023

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !309
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !340

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1024
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.207", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !691
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 104                ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !686
  store ptr %i.y, ptr %i.q, align 8, !tbaa !690
  store i32 0, ptr %i.p, align 16, !tbaa !692
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1024   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !503 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !802
  store ptr %i.z, ptr %2, align 16, !tbaa !1024
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !802
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !503
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !309 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !309
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !309
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !309
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !309
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !309 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !149 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !865

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !866

_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !691 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !686
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = mul nuw nsw i64 %i.bb, 104
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit

_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !686
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !690
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !691  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !690  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !686
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !691
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !309  ; 2 uses
  %.not11.i19 = icmp eq i32 %i.p, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.p, %.lr.ph ], [ %i.bj, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %i.t ; 9 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !309  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !309
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !1031

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [104 x i8], ptr %i.h, i64 %i.x ; 7 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !309
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !149
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !160
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  store i64 32, ptr %i.ak, align 8, !tbaa !161
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !160 ; 6 uses
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm21SIMachineFunctionInfo15VGPRSpillToAGPRC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ao = icmp eq ptr %i.ag, %i.u
  br i1 %i.ao, label %_ZN4llvm21SIMachineFunctionInfo15VGPRSpillToAGPRC2EOS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !149 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN4llvm15SmallVectorImplItE12assignRemoteEOS1_.exit.i

_ZN4llvm15SmallVectorImplItE12assignRemoteEOS1_.exit.i: ; preds = %bb.f
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !149
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !160
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !161
  store i64 %i.at, ptr %i.ak, align 8, !tbaa !161
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %_ZN4llvm21SIMachineFunctionInfo15VGPRSpillToAGPRC2EOS1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.au = icmp ugt i64 %i.am, 32
  br i1 %i.au, label %_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i, label %_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i.thread

_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i:             ; preds = %bb.g
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(90) %i.ah, ptr noundef nonnull %i.ai, i64 noundef %i.am, i64 noundef 2) #24
  %.pre = load i64, ptr %i.al, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %.pre, 0
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE18uninitialized_moveIPtS3_EEvT_S4_T0_.exit.i, label %_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i.thread

_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i.thread:      ; preds = %bb.g, %_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i
  %i.av = phi i64 [ %.pre, %_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i ], [ %i.am, %bb.g ]
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !149
  %i.ax = load ptr, ptr %i.ah, align 8, !tbaa !149
  %gepdiff.i = shl nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 2 %i.aw, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE18uninitialized_moveIPtS3_EEvT_S4_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseItLb1EE18uninitialized_moveIPtS3_EEvT_S4_T0_.exit.i: ; preds = %_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i.thread, %_ZSt4moveIPtS0_ET0_T_S2_S1_.exit34.i
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !160
  store i64 0, ptr %i.al, align 8, !tbaa !160
  br label %_ZN4llvm21SIMachineFunctionInfo15VGPRSpillToAGPRC2EOS1_.exit.i

_ZN4llvm21SIMachineFunctionInfo15VGPRSpillToAGPRC2EOS1_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseItLb1EE18uninitialized_moveIPtS3_EEvT_S4_T0_.exit.i, %_ZN4llvm15SmallVectorImplItE12assignRemoteEOS1_.exit.i, %bb.e, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ba = load i16, ptr %i.az, align 8
  store i16 %i.ba, ptr %i.ay, align 8
  %i.bb = shl nuw i32 1, %i.ab
  %i.bc = load i32, ptr %i.af, align 4, !tbaa !309
  %i.bd = or i32 %i.bc, %i.bb
  store i32 %i.bd, ptr %i.af, align 4, !tbaa !309
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !149 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm21SIMachineFunctionInfo15VGPRSpillToAGPRC2EOS1_.exit.i
  tail call void @free(ptr noundef %i.bf) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %_ZN4llvm21SIMachineFunctionInfo15VGPRSpillToAGPRC2EOS1_.exit.i, %bb.h
  %i.bi = add i32 %.0.i20, -1
  %i.bj = and i32 %i.bi, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bj, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1032

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EEEEiS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !1033

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre28 = load i32, ptr %i.d, align 4, !tbaa !691
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bk = phi i32 [ %.pre28, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !692
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !692
  %i.bo = icmp eq i32 %i.bk, 0
  br i1 %i.bo, label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE4killEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bp = load ptr, ptr %1, align 8, !tbaa !686
  %i.bq = zext i32 %i.bk to i64                   ; 2 uses
  %i.br = mul nuw nsw i64 %i.bq, 104
  %i.bs = add nuw nsw i64 %i.bq, 31
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = and i64 %i.bt, 1073741820
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bp, i64 noundef %i.bv, i64 noundef 8) #24
  store i32 0, ptr %i.d, align 4, !tbaa !691
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE4killEv.exit

_ZN4llvm8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIiNS_21SIMachineFunctionInfo15VGPRSpillToAGPRENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.i
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520), i32, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !160
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.d, i64 noundef %i.c, i64 noundef 2) #24
  %i.e = load ptr, ptr %0, align 8, !tbaa !149
  %i.f = load i64, ptr %i.a, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.f
  store i16 %1, ptr %i.g, align 1
  %i.h = load i64, ptr %i.a, align 8, !tbaa !160
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.a, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !665  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64)
  br label %_ZNK4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 0, %bb.a ], [ %.sroa.speculated.i, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !561  ; 3 uses
  %.not = icmp eq i32 %.0.i, %i.h                 ; 2 uses
  %spec.select10.i = select i1 %.not, i32 0, i32 %.0.i
  %.sroa.39.0.insert.ext.i = zext i32 %spec.select10.i to i64 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %_ZNK4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !554
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !560
  %i.m = zext i32 %i.h to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !309  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.r = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.q, %.lr.ph.i ], [ %i.ae, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.s = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !544  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !541
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #27
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %bb.c
  %i.ad = add i32 %.0.i3.i, -1
  %i.ae = and i32 %i.ad, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.c, !llvm.loop !670

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !671

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i, %_ZNK4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE18planShrinkAndClearEv.exit
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !665
  %i.af = load i32, ptr %i.g, align 4, !tbaa !561 ; 2 uses
  %.not.i3 = icmp eq i32 %i.af, 0
  br i1 %.not.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !560
  %i.ai = zext i32 %i.af to i64
  %i.aj = add nuw nsw i64 %i.ai, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ah, i8 0, i64 %i.al, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E10destroyAllEv.exit
  %i.am = load i32, ptr %i.g, align 4, !tbaa !561 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %0, align 8, !tbaa !554
  %i.ap = zext i32 %i.am to i64                   ; 2 uses
  %i.aq = shl nuw nsw i64 %i.ap, 5
  %i.ar = add nuw nsw i64 %i.ap, 31
  %i.as = lshr i64 %i.ar, 3
  %i.at = and i64 %i.as, 1073741820
  %i.au = add nuw nsw i64 %i.at, %i.aq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ao, i64 noundef %i.au, i64 noundef 8) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit: ; preds = %bb.g, %bb.h
  store i32 %.0.i, ptr %i.g, align 4, !tbaa !561
  %.not.i4 = icmp eq i32 %.0.i, 0
  br i1 %.not.i4, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit
  %i.av = shl nuw nsw i64 %.sroa.39.0.insert.ext.i, 5
  %i.aw = add nuw nsw i64 %.sroa.39.0.insert.ext.i, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  %i.ba = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.az, i64 noundef 8) #24 ; 2 uses
  %i.bb = load i32, ptr %i.g, align 4, !tbaa !561 ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !554
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !560
  store i32 0, ptr %i.a, align 8, !tbaa !665
  %.not.i.i5 = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i5, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = add nuw nsw i64 %i.bc, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bi, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit

bb.k:                                             ; preds = %_ZN4llvm8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS3_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS5_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt6vectorINS_14SIRegisterInfo10SpilledRegESaIS4_EENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS6_EEEEiS6_S8_SB_E9initEmptyEv.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_SIMachineFunctionInfo.cpp() #7 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL15MFMAVGPRFormOpt, i32 noundef 0, i32 noundef 0) #24
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 120), align 8, !tbaa !869
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 137), align 1, !tbaa !889
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 128), align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb1ENS0_6parserIbEEEE, i64 16), ptr @_ZL15MFMAVGPRFormOpt, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 144), align 8, !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15MFMAVGPRFormOpt, ptr nonnull @.str, i64 21) #24
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 32), align 8, !tbaa !322
  store i64 98, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 40), align 8, !tbaa !323
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 120), align 8, !tbaa !869
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.c, align 1, !tbaa !911
  store ptr @.str.126, ptr %0, align 8, !tbaa !315
  store i8 3, ptr %i.b, align 8, !tbaa !908
  %i.d = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #24
  %i.e = call noundef zeroext i1 @_ZN4llvm2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15MFMAVGPRFormOpt, ptr noundef nonnull align 8 dereferenceable(34) %0, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(48) %i.d) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  %.pre.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 120), align 8, !tbaa !869
  br label %__cxx_global_var_init.exit

bb.c:                                             ; preds = %bb.a
  store ptr @_ZN4llvm21SIMachineFunctionInfo12MFMAVGPRFormE, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 120), align 8, !tbaa !869
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.b, %bb.c
  %i.f = phi ptr [ %.pre.i.i.i.i, %bb.b ], [ @_ZN4llvm21SIMachineFunctionInfo12MFMAVGPRFormE, %bb.c ]
  store i8 1, ptr %i.f, align 1, !tbaa !659
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 137), align 1, !tbaa !889
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 136), align 8, !tbaa !1034
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 10), align 2
  %i.h = and i16 %i.g, -97
  %i.i = or disjoint i16 %i.h, 32
  store i16 %i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL15MFMAVGPRFormOpt, i64 10), align 2
  call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL15MFMAVGPRFormOpt) #24
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb1ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL15MFMAVGPRFormOpt, ptr nonnull @__dso_handle) #24 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_8
