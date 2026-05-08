inline.NumInlined: 135
inline.NumDeleted: 30
begin_hunk_0_@p_ere:bb.a
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 59 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 70 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3
end_hunk_0
begin_hunk_1_@p_ere:bb.a
  br label %p_ere_exp.exit.thread

p_ere_exp.exit.thread:                            ; preds = %bb.dx, %bb.dw
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %p_ere_exp.exit..critedge.loopexit_crit_edge

p_ere_exp.exit:                                   ; preds = %doemit.exit133, %bb.bp, %bb.bq, %bb.br, %doemit.exit118, %bb.dt, %bb.du, %bb.dv
end_hunk_1
begin_hunk_2_@p_ere:bb.a
  br label %seterr.exit.i.i

seterr.exit.i.i:                                  ; preds = %bb.ei, %bb.eh
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %doemit.exit

bb.ej:                                            ; preds = %bb.eg
end_hunk_2
begin_hunk_3_@p_ere:bb.a
  br label %seterr.exit.i.i55

seterr.exit.i.i55:                                ; preds = %bb.eo, %bb.en
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  %.pre199 = load ptr, ptr %i.h, align 8, !tbaa !17
  br label %enlarge.exit.i54

end_hunk_3
begin_hunk_4_@p_bre:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 36 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 29 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.j
end_hunk_4
begin_hunk_5_@p_bre:bb.a
  br label %seterr.exit.i.i109

seterr.exit.i.i109:                               ; preds = %bb.x, %bb.w
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i108

bb.y:                                             ; preds = %bb.v
end_hunk_5
begin_hunk_6_@p_bre:bb.a
  br label %seterr.exit104

seterr.exit104:                                   ; preds = %bb.aa, %bb.ab
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %doemit.exit110

bb.ac:                                            ; preds = %bb.p
end_hunk_6
begin_hunk_7_@p_bre:bb.a
  br label %seterr.exit.i.i102

seterr.exit.i.i102:                               ; preds = %bb.aj, %bb.ai
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i101

bb.ak:                                            ; preds = %bb.ah
end_hunk_7
begin_hunk_8_@p_bre:bb.a
  br label %seterr.exit.i.i96

seterr.exit.i.i96:                                ; preds = %bb.aw, %bb.av
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i95

bb.ax:                                            ; preds = %bb.au
end_hunk_8
begin_hunk_9_@p_bre:bb.a
  br label %seterr.exit91

seterr.exit91:                                    ; preds = %bb.bc, %bb.bd
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %doemit.exit110

bb.be:                                            ; preds = %bb.p, %bb.p
end_hunk_9
begin_hunk_10_@p_bre:bb.a
  br label %seterr.exit90

seterr.exit90:                                    ; preds = %bb.be, %bb.bf
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %doemit.exit110

bb.bg:                                            ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
end_hunk_10
begin_hunk_11_@p_bre:bb.a
  br label %seterr.exit.i.i88

seterr.exit.i.i88:                                ; preds = %bb.bm, %bb.bl
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i87

bb.bn:                                            ; preds = %bb.bk
end_hunk_11
begin_hunk_12_@p_bre:bb.a
  br label %seterr.exit.i.i83

seterr.exit.i.i83:                                ; preds = %bb.br, %bb.bq
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  %.pre124 = load ptr, ptr %i.ar, align 8, !tbaa !17
  br label %enlarge.exit.i82

end_hunk_12
begin_hunk_13_@p_bre:bb.a
  br label %seterr.exit.i.i79

seterr.exit.i.i79:                                ; preds = %bb.bx, %bb.bw
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i78

bb.by:                                            ; preds = %bb.bv
end_hunk_13
begin_hunk_14_@p_bre:bb.a
  br label %seterr.exit74

seterr.exit74:                                    ; preds = %bb.bz, %bb.ca
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %doemit.exit80

doemit.exit80:                                    ; preds = %enlarge.exit.i78, %dupl.exit, %seterr.exit74
end_hunk_14
begin_hunk_15_@p_bre:bb.a
  br label %seterr.exit73

seterr.exit73:                                    ; preds = %bb.cc, %bb.cd
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %bb.ce

bb.ce:                                            ; preds = %seterr.exit73, %bb.cb, %bb.p
end_hunk_15
begin_hunk_16_@p_bre:bb.a
  br label %seterr.exit.i.i71

seterr.exit.i.i71:                                ; preds = %bb.cl, %bb.ck
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i70

bb.cm:                                            ; preds = %bb.cj
end_hunk_16
begin_hunk_17_@p_bre:bb.a
  br label %seterr.exit.i.i65

seterr.exit.i.i65:                                ; preds = %bb.cr, %bb.cq
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i64

bb.cs:                                            ; preds = %bb.cp
end_hunk_17
begin_hunk_18_@p_bre:bb.a
  br label %seterr.exit.i

seterr.exit.i:                                    ; preds = %bb.dc, %.critedge.thread.i
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %p_count.exit

p_count.exit:                                     ; preds = %.critedge.i45, %seterr.exit.i
end_hunk_18
begin_hunk_19_@p_bre:bb.a
.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.dd, %.critedge.thread.i47
  %.013.lcssa26.i50211.ph = phi i32 [ %.013.lcssa.ph.i56, %bb.dd ], [ %.013.lcssa25.i48, %.critedge.thread.i47 ], [ %.013.lcssa26.i50211.ph.ph, %.sink.split.sink.split ]
  %.0127.i.ph = phi i32 [ %.013.lcssa.ph.i, %bb.dd ], [ %.013.lcssa25.i48, %.critedge.thread.i47 ], [ %.0127.i.ph.ph, %.sink.split.sink.split ]
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %bb.de

bb.de:                                            ; preds = %.sink.split, %p_count.exit, %bb.da, %bb.cz, %bb.cy, %p_count.exit60
end_hunk_19
begin_hunk_20_@p_bre:bb.a
  br label %seterr.exit42

seterr.exit42:                                    ; preds = %seterr.exit42.sink.split, %.critedge.i, %.critedge.i.thread
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %doemit.exit66

bb.dl:                                            ; preds = %doemit.exit110, %bb.cu, %bb.ct
end_hunk_20
begin_hunk_21_@p_bracket:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 20 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.r
end_hunk_21
begin_hunk_22_@p_bracket:bb.a
  br label %seterr.exit95.i

seterr.exit95.i:                                  ; preds = %bb.am, %bb.al
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %seterr.exit95.i, %bb.ak
end_hunk_22
begin_hunk_23_@p_bracket:bb.a
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ap, %bb.ao
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %.critedge.i.i

bb.aq:                                            ; preds = %bb.an
end_hunk_23
begin_hunk_24_@p_bracket:bb.a
  br label %seterr.exit.i.i144

seterr.exit.i.i144:                               ; preds = %bb.bf, %bb.be
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %p_b_cclass.exit.i

bb.bg:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %.critedge.i.i
end_hunk_24
begin_hunk_25_@p_bracket:bb.a
  br label %seterr.exit99.i

seterr.exit99.i:                                  ; preds = %bb.bw, %bb.bv
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %bb.bx

bb.bx:                                            ; preds = %seterr.exit99.i, %bb.bu
end_hunk_25
begin_hunk_26_@p_bracket:bb.a
  br label %seterr.exit.i.i101.i

seterr.exit.i.i101.i:                             ; preds = %seterr.exit.i.i101.i.sink.split, %bb.by, %.critedge.i.i.i
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %p_b_eclass.exit.i

bb.cc:                                            ; preds = %bb.cb
end_hunk_26
begin_hunk_27_@p_bracket:bb.a
  br label %seterr.exit35.i.i.i

seterr.exit35.i.i.i:                              ; preds = %bb.ck, %bb.cj
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %p_b_eclass.exit.i

p_b_eclass.exit.i:                                ; preds = %seterr.exit35.i.i.i, %bb.ci, %bb.cf, %seterr.exit.i.i101.i
end_hunk_27
begin_hunk_28_@repeat:bb.a
.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 27 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !31
  br label %.lr.ph

end_hunk_28
begin_hunk_29_@repeat:bb.a
  br label %seterr.exit.i.i98

seterr.exit.i.i98:                                ; preds = %bb.w, %bb.v
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.f, align 8, !tbaa !20
  br label %doemit.exit99

bb.x:                                             ; preds = %bb.u
end_hunk_29
begin_hunk_30_@repeat:bb.a
  br label %doemit.exit107.thread291

doemit.exit107.thread291:                         ; preds = %bb.ab, %bb.ac
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.f, align 8, !tbaa !20
  %.pre233 = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %doemit.exit115.sink.split

end_hunk_30
begin_hunk_31_@repeat:bb.a
  br label %seterr.exit.i.i114

seterr.exit.i.i114:                               ; preds = %bb.ah, %bb.ag
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.f, align 8, !tbaa !20
  %.pre236 = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %doemit.exit115.sink.split

end_hunk_31
begin_hunk_32_@repeat:bb.a
  br label %seterr.exit.i.i118

seterr.exit.i.i118:                               ; preds = %bb.am, %bb.al
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.f, align 8, !tbaa !20
  %.pre240 = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %enlarge.exit.i117

end_hunk_32
begin_hunk_33_@repeat:bb.a
  br label %seterr.exit.i.i127

seterr.exit.i.i127:                               ; preds = %bb.ax, %bb.aw
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.f, align 8, !tbaa !20
  %.pre229 = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %enlarge.exit.i126

end_hunk_33
