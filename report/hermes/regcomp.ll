inline.NumInlined: 141
inline.NumDeleted: 30
begin_hunk_0_@p_ere:bb.a
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 67 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 96 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 34 uses
end_hunk_0
begin_hunk_1_@p_ere:bb.a
  br label %p_ere_exp.exit.thread

p_ere_exp.exit.thread:                            ; preds = %bb.fi, %bb.fh
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %p_ere_exp.exit..critedge.loopexit_crit_edge

p_ere_exp.exit:                                   ; preds = %doemit.exit162, %bb.cv, %bb.cw, %bb.cx, %doemit.exit126, %bb.fe, %bb.ff, %bb.fg
end_hunk_1
begin_hunk_2_@p_ere:bb.a

seterr.exit.i.i:                                  ; preds = %bb.fr
  store i32 12, ptr %i.d, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %doemit.exit

bb.fs:                                            ; preds = %bb.fr
end_hunk_2
begin_hunk_3_@p_ere:bb.a
  br label %seterr.exit12.i.i

seterr.exit12.i.i:                                ; preds = %bb.fu, %bb.ft
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %doemit.exit

bb.fv:                                            ; preds = %bb.fs
end_hunk_3
begin_hunk_4_@p_ere:bb.a

seterr.exit.i.i56:                                ; preds = %bb.fy
  store i32 12, ptr %i.d, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %enlarge.exit.i54

bb.fz:                                            ; preds = %bb.fy
end_hunk_4
begin_hunk_5_@p_ere:bb.a
  br label %seterr.exit12.i.i55

seterr.exit12.i.i55:                              ; preds = %bb.gb, %bb.ga
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  %.pre233 = load ptr, ptr %i.g, align 8, !tbaa !16
  br label %enlarge.exit.i54

end_hunk_5
begin_hunk_6_@p_bre:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 36 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 39 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 6 uses
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.k
end_hunk_6
begin_hunk_7_@p_bre:bb.a

seterr.exit.i.i118:                               ; preds = %bb.w
  store i32 12, ptr %i.ap, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i116

bb.x:                                             ; preds = %bb.w
end_hunk_7
begin_hunk_8_@p_bre:bb.a
  br label %seterr.exit12.i.i117

seterr.exit12.i.i117:                             ; preds = %bb.z, %bb.y
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i116

bb.aa:                                            ; preds = %bb.x
end_hunk_8
begin_hunk_9_@p_bre:bb.a
  br label %seterr.exit112

seterr.exit112:                                   ; preds = %bb.ac, %bb.ad
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %doemit.exit119

bb.ae:                                            ; preds = %bb.q
end_hunk_9
begin_hunk_10_@p_bre:bb.a

seterr.exit.i.i110:                               ; preds = %bb.aj
  store i32 12, ptr %i.ap, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i108

bb.ak:                                            ; preds = %bb.aj
end_hunk_10
begin_hunk_11_@p_bre:bb.a
  br label %seterr.exit12.i.i109

seterr.exit12.i.i109:                             ; preds = %bb.am, %bb.al
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i108

bb.an:                                            ; preds = %bb.ak
end_hunk_11
begin_hunk_12_@p_bre:bb.a

seterr.exit.i.i103:                               ; preds = %bb.ax
  store i32 12, ptr %i.ap, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i101

bb.ay:                                            ; preds = %bb.ax
end_hunk_12
begin_hunk_13_@p_bre:bb.a
  br label %seterr.exit12.i.i102

seterr.exit12.i.i102:                             ; preds = %bb.ba, %bb.az
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i101

bb.bb:                                            ; preds = %bb.ay
end_hunk_13
begin_hunk_14_@p_bre:bb.a
  br label %seterr.exit97

seterr.exit97:                                    ; preds = %bb.bg, %bb.bh
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %doemit.exit119

bb.bi:                                            ; preds = %bb.q, %bb.q
end_hunk_14
begin_hunk_15_@p_bre:bb.a
  br label %seterr.exit96

seterr.exit96:                                    ; preds = %bb.bi, %bb.bj
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %doemit.exit119

bb.bk:                                            ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
end_hunk_15
begin_hunk_16_@p_bre:bb.a

seterr.exit.i.i94:                                ; preds = %bb.bo
  store i32 12, ptr %i.ap, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i92

bb.bp:                                            ; preds = %bb.bo
end_hunk_16
begin_hunk_17_@p_bre:bb.a
  br label %seterr.exit12.i.i93

seterr.exit12.i.i93:                              ; preds = %bb.br, %bb.bq
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i92

bb.bs:                                            ; preds = %bb.bp
end_hunk_17
begin_hunk_18_@p_bre:bb.a
  br label %seterr.exit.i.i88

seterr.exit.i.i88:                                ; preds = %bb.bw, %bb.bv
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i86

bb.bx:                                            ; preds = %bb.bu
end_hunk_18
begin_hunk_19_@p_bre:bb.a
  br label %seterr.exit12.i.i87

seterr.exit12.i.i87:                              ; preds = %bb.bz, %bb.by
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i86

bb.ca:                                            ; preds = %bb.bx
end_hunk_19
begin_hunk_20_@p_bre:bb.a

seterr.exit.i.i83:                                ; preds = %bb.cd
  store i32 12, ptr %i.ap, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i81

bb.ce:                                            ; preds = %bb.cd
end_hunk_20
begin_hunk_21_@p_bre:bb.a
  br label %seterr.exit12.i.i82

seterr.exit12.i.i82:                              ; preds = %bb.cg, %bb.cf
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i81

bb.ch:                                            ; preds = %bb.ce
end_hunk_21
begin_hunk_22_@p_bre:bb.a
  br label %seterr.exit77

seterr.exit77:                                    ; preds = %bb.ci, %bb.cj
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %doemit.exit84

doemit.exit84:                                    ; preds = %enlarge.exit.i81, %dupl.exit, %seterr.exit77
end_hunk_22
begin_hunk_23_@p_bre:bb.a
  br label %seterr.exit76

seterr.exit76:                                    ; preds = %bb.cl, %bb.cm
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %bb.cn

bb.cn:                                            ; preds = %seterr.exit76, %bb.ck, %bb.q
end_hunk_23
begin_hunk_24_@p_bre:bb.a

seterr.exit.i.i74:                                ; preds = %bb.cs
  store i32 12, ptr %i.ap, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i72

bb.ct:                                            ; preds = %bb.cs
end_hunk_24
begin_hunk_25_@p_bre:bb.a
  br label %seterr.exit12.i.i73

seterr.exit12.i.i73:                              ; preds = %bb.cv, %bb.cu
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i72

bb.cw:                                            ; preds = %bb.ct
end_hunk_25
begin_hunk_26_@p_bre:bb.a

seterr.exit.i.i67:                                ; preds = %bb.cz
  store i32 12, ptr %i.ap, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i65

bb.da:                                            ; preds = %bb.cz
end_hunk_26
begin_hunk_27_@p_bre:bb.a
  br label %seterr.exit12.i.i66

seterr.exit12.i.i66:                              ; preds = %bb.dc, %bb.db
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %enlarge.exit.i65

bb.dd:                                            ; preds = %bb.da
end_hunk_27
begin_hunk_28_@p_bre:bb.a
  br label %seterr.exit.i

seterr.exit.i:                                    ; preds = %bb.dn, %.critedge.thread.i
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %p_count.exit

p_count.exit:                                     ; preds = %.critedge.i46, %seterr.exit.i
end_hunk_28
begin_hunk_29_@p_bre:bb.a
.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.do, %.critedge.thread.i48
  %.013.lcssa26.i51219.ph = phi i32 [ %.013.lcssa.ph.i57, %bb.do ], [ %.013.lcssa25.i49, %.critedge.thread.i48 ], [ %.013.lcssa26.i51219.ph.ph, %.sink.split.sink.split ]
  %.0127.i.ph = phi i32 [ %.013.lcssa.ph.i, %bb.do ], [ %.013.lcssa25.i49, %.critedge.thread.i48 ], [ %.0127.i.ph.ph, %.sink.split.sink.split ]
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %bb.dp

bb.dp:                                            ; preds = %.sink.split, %p_count.exit, %bb.dl, %bb.dk, %bb.dj, %p_count.exit61
end_hunk_29
begin_hunk_30_@p_bre:bb.a
  br label %seterr.exit43

seterr.exit43:                                    ; preds = %seterr.exit43.sink.split, %.critedge.i, %.critedge.i.thread
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.e, align 8, !tbaa !19
  br label %doemit.exit68

bb.dw:                                            ; preds = %doemit.exit119, %bb.df, %bb.de
end_hunk_30
begin_hunk_31_@p_bracket:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 24 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.t
end_hunk_31
begin_hunk_32_@p_bracket:bb.a
  br label %seterr.exit95.i

seterr.exit95.i:                                  ; preds = %bb.ap, %bb.ao
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %bb.aq

bb.aq:                                            ; preds = %seterr.exit95.i, %bb.an
end_hunk_32
begin_hunk_33_@p_bracket:bb.a
  br label %.thread.i145

.thread.i145:                                     ; preds = %bb.as, %bb.ar
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %.critedge.i.i

bb.at:                                            ; preds = %bb.aq
end_hunk_33
begin_hunk_34_@p_bracket:bb.a
  br label %seterr.exit.i.i146

seterr.exit.i.i146:                               ; preds = %bb.bi, %bb.bh
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %p_b_cclass.exit.i

bb.bj:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %.critedge.i.i
end_hunk_34
begin_hunk_35_@p_bracket:bb.a
  br label %seterr.exit99.i

seterr.exit99.i:                                  ; preds = %bb.bw, %bb.bv
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %bb.bx

bb.bx:                                            ; preds = %seterr.exit99.i, %bb.bu
end_hunk_35
begin_hunk_36_@p_bracket:bb.a
  br label %seterr.exit.i.i101.i

seterr.exit.i.i101.i:                             ; preds = %seterr.exit.i.i101.i.sink.split, %bb.by, %.critedge.i.i.i
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %p_b_eclass.exit.i

bb.cc:                                            ; preds = %bb.cb
end_hunk_36
begin_hunk_37_@p_bracket:bb.a
  br label %seterr.exit35.i.i.i

seterr.exit35.i.i.i:                              ; preds = %bb.ck, %bb.cj
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.c, align 8, !tbaa !19
  br label %p_b_eclass.exit.i

p_b_eclass.exit.i:                                ; preds = %seterr.exit35.i.i.i, %bb.ci, %bb.cf, %seterr.exit.i.i101.i
end_hunk_37
begin_hunk_38_@repeat:bb.a
.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 27 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 18 uses
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !30
  br label %.lr.ph

end_hunk_38
begin_hunk_39_@repeat:bb.a

seterr.exit.i.i101:                               ; preds = %bb.w
  store i32 12, ptr %i.b, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %doemit.exit102

bb.x:                                             ; preds = %bb.w
end_hunk_39
begin_hunk_40_@repeat:bb.a
  br label %seterr.exit12.i.i100

seterr.exit12.i.i100:                             ; preds = %bb.z, %bb.y
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %doemit.exit102

bb.aa:                                            ; preds = %bb.x
end_hunk_40
begin_hunk_41_@repeat:bb.a

seterr.exit.i.i110:                               ; preds = %bb.ad
  store i32 12, ptr %i.b, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %doemit.exit120.sink.split

bb.ae:                                            ; preds = %bb.ad
end_hunk_41
begin_hunk_42_@repeat:bb.a
  br label %seterr.exit12.i.i109

seterr.exit12.i.i109:                             ; preds = %bb.ag, %bb.af
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  %.pre238 = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %doemit.exit120.sink.split

end_hunk_42
begin_hunk_43_@repeat:bb.a

seterr.exit.i.i119:                               ; preds = %bb.aj
  store i32 12, ptr %i.b, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %doemit.exit120.sink.split

bb.ak:                                            ; preds = %bb.aj
end_hunk_43
begin_hunk_44_@repeat:bb.a
  br label %seterr.exit12.i.i118

seterr.exit12.i.i118:                             ; preds = %bb.am, %bb.al
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  %.pre241 = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %doemit.exit120.sink.split

end_hunk_44
begin_hunk_45_@repeat:bb.a
  br label %seterr.exit.i.i124

seterr.exit.i.i124:                               ; preds = %bb.ar, %bb.aq
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %enlarge.exit.i122

bb.as:                                            ; preds = %bb.ap
end_hunk_45
begin_hunk_46_@repeat:bb.a
  br label %seterr.exit12.i.i123

seterr.exit12.i.i123:                             ; preds = %bb.au, %bb.at
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %enlarge.exit.i122

bb.av:                                            ; preds = %bb.as
end_hunk_46
begin_hunk_47_@repeat:bb.a

seterr.exit.i.i135:                               ; preds = %bb.be
  store i32 12, ptr %i.b, align 8, !tbaa !20
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %enlarge.exit.i133

bb.bf:                                            ; preds = %bb.be
end_hunk_47
begin_hunk_48_@repeat:bb.a
  br label %seterr.exit12.i.i134

seterr.exit12.i.i134:                             ; preds = %bb.bh, %bb.bg
  store ptr @nuls, ptr %0, align 8, !tbaa !18
  store ptr @nuls, ptr %i.f, align 8, !tbaa !19
  br label %enlarge.exit.i133

bb.bi:                                            ; preds = %bb.bf
end_hunk_48
