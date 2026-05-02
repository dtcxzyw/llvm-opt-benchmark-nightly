inline.NumInlined: 2666
inline.NumDeleted: 831
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  br label %bb.gh

bb.gh:                                            ; preds = %.lr.ph, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174
  %i.yn = phi i8 [ %i.wo, %.lr.ph ], [ %7, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit174 ] ; 2 uses
  %.val11.i110 = load i32, ptr %i.cj, align 4     ; 3 uses
  switch i32 %.val11.i110, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE4NextEv.exit203.thread [
    i32 93, label %bb.hj
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  %i.aad = load ptr, ptr %i.aac, align 8          ; 2 uses
  %.not.i.i176 = icmp eq ptr %i.aad, null
  br i1 %.not.i.i176, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a, label %1

1:                                                ; preds = %bb.gv
  %2 = getelementptr inbounds nuw i8, ptr %i.aad, i64 48
  %3 = load i64, ptr %2, align 8
  %4 = icmp ne i64 %3, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a

bb.gw:                                            ; preds = %bb.gu
  %i.aae = load ptr, ptr %i.zu, align 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 13
  %i.aan = load i8, ptr %i.aam, align 1, !range !5, !noundef !6
  %i.aao = trunc nuw i8 %i.aan to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a

bb.gy:                                            ; preds = %bb.gu
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit177.a: ; preds = %bb.gu, %bb.gu, %bb.gv, %1, %bb.gw, %bb.gx
  %.0.i175 = phi i1 [ %i.aao, %bb.gx ], [ false, %bb.gw ], [ false, %bb.gu ], [ false, %bb.gu ], [ false, %bb.gv ], [ %4, %1 ]
  %5 = icmp ne i8 %i.yn, 0
  %6 = and i1 %5, %.0.i175
  %7 = zext i1 %6 to i8                           ; 2 uses
  store i8 %7, ptr %i.k, align 1
  %.val13.i116 = load ptr, ptr %i.ck, align 8     ; 3 uses
  %i.aap = load i32, ptr %i.wz, align 4           ; 2 uses
  %i.aaq = load i32, ptr %i.wy, align 8           ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256: ; preds = %bb.jb, %bb.jb, %bb.jc, %bb.jd, %bb.je, %bb.jf
  %.0.i254 = phi i1 [ %i.aic, %bb.jf ], [ false, %bb.je ], [ false, %bb.jb ], [ false, %bb.jb ], [ false, %bb.jc ], [ %i.ahr, %bb.jd ]
  %i.aid = load i8, ptr %i.f, align 1, !range !5, !noundef !6
  %8 = zext i1 %.0.i254 to i8
  %9 = or i8 %i.aid, %8                           ; 2 uses
  store i8 %9, ptr %i.f, align 1
  %i.aie = getelementptr inbounds nuw i8, ptr %i.afe, i64 12
  %i.aif = load i32, ptr %i.aie, align 4
  %i.aig = icmp eq i32 %i.aif, 0
end_hunk_3
begin_hunk_4_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256._crit_edge: ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256
  %i.aij = icmp ne i64 %i.aii, 0
  %i.aik = zext i1 %i.aij to i8
  br label %bb.ji

bb.jh:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256
end_hunk_4
begin_hunk_5_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a

bb.ji:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256._crit_edge, %bb.jh
  %i.aim = phi i8 [ %i.aik, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit256._crit_edge ], [ 1, %bb.jh ]
  %10 = or i8 %i.aim, %9
  store i8 %10, ptr %i.f, align 1
  %i.ain = load ptr, ptr %i.e, align 8            ; 6 uses
  %.val38.i = load ptr, ptr %i.ck, align 8        ; 3 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.val38.i, i64 24
end_hunk_5
begin_hunk_6_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
._crit_edge434:                                   ; preds = %bb.kk
  %.pre439 = load i8, ptr %i.f, align 1, !range !5
  %i.ang = icmp ne i64 %i.anf, 0
  %11 = zext i1 %i.ang to i8
  br label %bb.km

bb.kl:                                            ; preds = %bb.kk
  %i.anh = icmp eq i64 %i.anf, 0
  %.pre440 = load i8, ptr %i.f, align 1, !range !5 ; 2 uses
  br i1 %i.anh, label %._crit_edge437, label %bb.km

bb.km:                                            ; preds = %._crit_edge434, %bb.kl
  %i.ani = phi i8 [ %.pre439, %._crit_edge434 ], [ %.pre440, %bb.kl ]
  %12 = phi i8 [ %11, %._crit_edge434 ], [ 1, %bb.kl ]
  %13 = or i8 %12, %i.ani                         ; 2 uses
  store i8 %13, ptr %i.f, align 1
  %i.anj = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
end_hunk_6
begin_hunk_7_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %._crit_edge437

._crit_edge437:                                   ; preds = %bb.kl, %bb.km
  %14 = phi i8 [ %13, %bb.km ], [ %.pre440, %bb.kl ]
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !59
  %i.anl = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %15 = trunc nuw i8 %i.anl to i1                 ; 2 uses
  %i.anm = trunc nuw i8 %14 to i1
  %or.cond.i120 = select i1 %15, i1 %i.anm, i1 false
  br i1 %or.cond.i120, label %bb.kn, label %bb.kp

bb.kn:                                            ; preds = %._crit_edge437
end_hunk_7
begin_hunk_8_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  br i1 %i.anv, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.anw = call noundef ptr @_ZN2v88internal24RegExpClassSetExpression5EmptyEPNS0_4ZoneEb(ptr noundef %.val29.i, i1 noundef zeroext %15) #20, !inline_history !59
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplIhE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.kr:                                            ; preds = %bb.kp
end_hunk_8
begin_hunk_9_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  br i1 %i.uc, label %.lr.ph, label %.critedge.i76

.lr.ph:                                           ; preds = %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143
  %i.ud = phi i8 [ %7, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit143 ], [ %i.sh, %_ZN2v88internal8ZoneListIPNS0_10RegExpTreeEE3AddERKS3_PNS0_4ZoneE.exit176 ] ; 2 uses
  %.val11.i81 = load i32, ptr %i.ae, align 4      ; 3 uses
  switch i32 %.val11.i81, label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE4NextEv.exit169.thread [
    i32 93, label %bb.fr
end_hunk_9
begin_hunk_10_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8            ; 2 uses
  %.not.i.i145 = icmp eq ptr %i.vk, null
  br i1 %.not.i.i145, label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a, label %1

1:                                                ; preds = %bb.fd
  %2 = getelementptr inbounds nuw i8, ptr %i.vk, i64 48
  %3 = load i64, ptr %2, align 8
  %4 = icmp ne i64 %3, 0
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a

bb.fe:                                            ; preds = %bb.fc
  %i.vl = load ptr, ptr %i.vb, align 8
end_hunk_10
begin_hunk_11_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 13
  %i.vu = load i8, ptr %i.vt, align 1, !range !5, !noundef !6
  %i.vv = trunc nuw i8 %i.vu to i1
  br label %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a

bb.fg:                                            ; preds = %bb.fc
  unreachable

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit146.a: ; preds = %bb.fc, %bb.fc, %bb.fd, %1, %bb.fe, %bb.ff
  %.0.i144 = phi i1 [ %i.vv, %bb.ff ], [ false, %bb.fe ], [ false, %bb.fc ], [ false, %bb.fc ], [ false, %bb.fd ], [ %4, %1 ]
  %5 = icmp ne i8 %i.ud, 0
  %6 = and i1 %5, %.0.i144
  %7 = zext i1 %6 to i8                           ; 2 uses
  store i8 %7, ptr %i.k, align 1
  %.val13.i87 = load ptr, ptr %i.ag, align 8      ; 3 uses
  %i.vw = load i32, ptr %i.ss, align 4            ; 2 uses
  %i.vx = load i32, ptr %i.sr, align 8            ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222: ; preds = %bb.hd, %bb.hd, %bb.he, %bb.hf, %bb.hg, %bb.hh
  %.0.i220 = phi i1 [ %i.adi, %bb.hh ], [ false, %bb.hg ], [ false, %bb.hd ], [ false, %bb.hd ], [ false, %bb.he ], [ %i.acx, %bb.hf ]
  %i.adj = load i8, ptr %i.f, align 1, !range !5, !noundef !6
  %8 = zext i1 %.0.i220 to i8
  %9 = or i8 %i.adj, %8                           ; 2 uses
  store i8 %9, ptr %i.f, align 1
  %i.adk = getelementptr inbounds nuw i8, ptr %i.aan, i64 12
  %i.adl = load i32, ptr %i.adk, align 4
  %i.adm = icmp eq i32 %i.adl, 0
end_hunk_12
begin_hunk_13_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a

_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222._crit_edge: ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222
  %i.adp = icmp ne i64 %i.ado, 0
  %i.adq = zext i1 %i.adp to i8
  br label %bb.hk

bb.hj:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222
end_hunk_13
begin_hunk_14_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a

bb.hk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222._crit_edge, %bb.hj
  %i.ads = phi i8 [ %i.adq, %_ZN2v88internal12_GLOBAL__N_112_GLOBAL__N_117MayContainStringsENS1_19ClassSetOperandTypeEPNS0_10RegExpTreeE.exit222._crit_edge ], [ 1, %bb.hj ]
  %10 = or i8 %i.ads, %9
  store i8 %10, ptr %i.f, align 1
  %i.adt = load ptr, ptr %i.e, align 8            ; 6 uses
  %.val38.i = load ptr, ptr %i.ag, align 8        ; 3 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %.val38.i, i64 24
end_hunk_14
begin_hunk_15_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
._crit_edge392:                                   ; preds = %bb.im
  %.pre397 = load i8, ptr %i.f, align 1, !range !5
  %i.aio = icmp ne i64 %i.ain, 0
  %11 = zext i1 %i.aio to i8
  br label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.aip = icmp eq i64 %i.ain, 0
  %.pre398 = load i8, ptr %i.f, align 1, !range !5 ; 2 uses
  br i1 %i.aip, label %._crit_edge395, label %bb.io

bb.io:                                            ; preds = %._crit_edge392, %bb.in
  %i.aiq = phi i8 [ %.pre397, %._crit_edge392 ], [ %.pre398, %bb.in ]
  %12 = phi i8 [ %11, %._crit_edge392 ], [ 1, %bb.in ]
  %13 = or i8 %12, %i.aiq                         ; 2 uses
  store i8 %13, ptr %i.f, align 1
  %i.air = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
end_hunk_15
begin_hunk_16_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %._crit_edge395

._crit_edge395:                                   ; preds = %bb.in, %bb.io
  %14 = phi i8 [ %13, %bb.io ], [ %.pre398, %bb.in ]
  call fastcc void @_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !111
  %i.ait = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %15 = trunc nuw i8 %i.ait to i1                 ; 2 uses
  %i.aiu = trunc nuw i8 %14 to i1
  %or.cond.i91 = select i1 %15, i1 %i.aiu, i1 false
  br i1 %or.cond.i91, label %bb.ip, label %bb.ir

bb.ip:                                            ; preds = %._crit_edge395
end_hunk_16
begin_hunk_17_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE19ParseCharacterClassEPKNS1_13RegExpBuilderE:bb.a
  br i1 %i.ajf, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.ajg = call noundef ptr @_ZN2v88internal24RegExpClassSetExpression5EmptyEPNS0_4ZoneEb(ptr noundef %.val29.i, i1 noundef zeroext %15) #20, !inline_history !111
  br label %_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ParseClassUnionEPKNS1_13RegExpBuilderEbPNS0_10RegExpTreeENS1_19ClassSetOperandTypeEPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_7ZoneMapINS_4base6VectorIKjEES8_NS0_24CharacterClassStringLessEEEj.exit

bb.it:                                            ; preds = %bb.ir
end_hunk_17
begin_hunk_18_@_ZN2v88internal12_GLOBAL__N_116RegExpParserImplItE15ScanForCapturesENS1_18InClassEscapeStateE:bb.a
  %.val28 = load i32, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.val29 = load i32, ptr %i.c, align 4           ; 3 uses
  %2 = icmp ne i32 %1, 0
  %.not36 = icmp eq i32 %.val27, 2097152          ; 2 uses
  %or.cond = select i1 %2, i1 true, i1 %.not36
  br i1 %or.cond, label %.loopexit33, label %.lr.ph
end_hunk_18
