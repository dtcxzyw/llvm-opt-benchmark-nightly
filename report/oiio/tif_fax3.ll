inline.NumInlined: 37
inline.NumDeleted: 6
begin_hunk_0_@Fax3Encode1DRow:bb.a
  br i1 %i.s, label %find0span.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i32 %i.c, %.1.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %bb.f

end_hunk_0
begin_hunk_1_@Fax3Encode1DRow:bb.a
  %.061.i = phi ptr [ %i.u, %bb.e ], [ %i.f, %bb.c ] ; 12 uses
  %.053.i = phi i32 [ %i.t, %bb.e ], [ %i.c, %bb.c ] ; 12 uses
  %.2.i = phi i32 [ %.1.i, %bb.e ], [ 0, %bb.c ]  ; 11 uses
  %3 = icmp sgt i32 %.053.i, 127
  br i1 %3, label %.preheader80.i, label %.thread.i

.preheader80.i:                                   ; preds = %bb.f
end_hunk_1
begin_hunk_2_@Fax3Encode1DRow:bb.a
  br i1 %i.do, label %find1span.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dp = sub nsw i32 %i.cy, %.1.i56
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  br label %bb.x

end_hunk_2
begin_hunk_3_@Fax3Encode1DRow:bb.a
  %.061.i57 = phi ptr [ %i.dq, %bb.w ], [ %i.db, %bb.u ] ; 12 uses
  %.053.i58 = phi i32 [ %i.dp, %bb.w ], [ %i.cy, %bb.u ] ; 12 uses
  %.2.i59 = phi i32 [ %.1.i56, %bb.w ], [ 0, %bb.u ] ; 11 uses
  %4 = icmp sgt i32 %.053.i58, 127
  br i1 %4, label %.preheader80.i77, label %.thread.i60

.preheader80.i77:                                 ; preds = %bb.x
end_hunk_3
begin_hunk_4_@Fax3Encode2DRow:bb.a
  br i1 %i.fr, label %find1span.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fs = sub nsw i32 %i.fc, %.1.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  br label %bb.ag

end_hunk_4
begin_hunk_5_@Fax3Encode2DRow:bb.a
  %.061.i = phi ptr [ %i.ft, %bb.af ], [ %i.ff, %bb.ad ] ; 12 uses
  %.053.i = phi i32 [ %i.fs, %bb.af ], [ %i.fc, %bb.ad ] ; 12 uses
  %.2.i = phi i32 [ %.1.i, %bb.af ], [ 0, %bb.ad ] ; 11 uses
  %4 = icmp sgt i32 %.053.i, 127
  br i1 %4, label %.preheader80.i194, label %.thread.i177

.preheader80.i194:                                ; preds = %bb.ag
end_hunk_5
begin_hunk_6_@Fax3Encode2DRow:bb.a
  br i1 %i.jf, label %find1span.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jg = sub nsw i32 %i.fc, %.1.i215
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  br label %bb.ax

end_hunk_6
begin_hunk_7_@Fax3Encode2DRow:bb.a
  %.061.i216 = phi ptr [ %i.jh, %bb.aw ], [ %i.ff, %bb.au ] ; 12 uses
  %.053.i217 = phi i32 [ %i.jg, %bb.aw ], [ %i.fc, %bb.au ] ; 12 uses
  %.2.i218 = phi i32 [ %.1.i215, %bb.aw ], [ 0, %bb.au ] ; 11 uses
  %5 = icmp sgt i32 %.053.i217, 127
  br i1 %5, label %.preheader80.i236, label %.thread.i219

.preheader80.i236:                                ; preds = %bb.ax
end_hunk_7
begin_hunk_8_@Fax3Encode2DRow:bb.a
  br i1 %i.nr, label %find1span.exit297, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ns = sub nsw i32 %i.nc, %.1.i258
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  br label %bb.bt

end_hunk_8
begin_hunk_9_@Fax3Encode2DRow:bb.a
  %.061.i259 = phi ptr [ %i.nt, %bb.bs ], [ %i.nf, %bb.bq ] ; 12 uses
  %.053.i260 = phi i32 [ %i.ns, %bb.bs ], [ %i.nc, %bb.bq ] ; 12 uses
  %.2.i261 = phi i32 [ %.1.i258, %bb.bs ], [ 0, %bb.bq ] ; 11 uses
  %6 = icmp sgt i32 %.053.i260, 127
  br i1 %6, label %.preheader80.i279, label %.thread.i262

.preheader80.i279:                                ; preds = %bb.bt
end_hunk_9
begin_hunk_10_@Fax3Encode2DRow:bb.a
  br i1 %i.rf, label %find1span.exit297, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rg = sub nsw i32 %i.nc, %.1.i301
  %i.rh = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  br label %bb.ck

end_hunk_10
begin_hunk_11_@Fax3Encode2DRow:bb.a
  %.061.i302 = phi ptr [ %i.rh, %bb.cj ], [ %i.nf, %bb.ch ] ; 12 uses
  %.053.i303 = phi i32 [ %i.rg, %bb.cj ], [ %i.nc, %bb.ch ] ; 12 uses
  %.2.i304 = phi i32 [ %.1.i301, %bb.cj ], [ 0, %bb.ch ] ; 11 uses
  %7 = icmp sgt i32 %.053.i303, 127
  br i1 %7, label %.preheader80.i322, label %.thread.i305

.preheader80.i322:                                ; preds = %bb.ck
end_hunk_11
begin_hunk_12_@Fax3Encode2DRow:bb.a
  br i1 %i.wq, label %find1span.exit383.thread606, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.wr = sub nsw i32 %i.wb, %.1.i344
  %i.ws = getelementptr inbounds nuw i8, ptr %i.we, i64 1
  br label %bb.dl

end_hunk_12
begin_hunk_13_@Fax3Encode2DRow:bb.a
  %.061.i345 = phi ptr [ %i.ws, %bb.dk ], [ %i.we, %bb.di ] ; 12 uses
  %.053.i346 = phi i32 [ %i.wr, %bb.dk ], [ %i.wb, %bb.di ] ; 12 uses
  %.2.i347 = phi i32 [ %.1.i344, %bb.dk ], [ 0, %bb.di ] ; 11 uses
  %8 = icmp sgt i32 %.053.i346, 127
  br i1 %8, label %.preheader80.i365, label %.thread.i348

.preheader80.i365:                                ; preds = %bb.dl
end_hunk_13
begin_hunk_14_@Fax3Encode2DRow:bb.a
  br i1 %i.aae, label %find1span.exit383.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aaf = sub nsw i32 %i.wb, %.1.i387
  %i.aag = getelementptr inbounds nuw i8, ptr %i.we, i64 1
  br label %bb.ec

end_hunk_14
begin_hunk_15_@Fax3Encode2DRow:bb.a
  %.061.i388 = phi ptr [ %i.aag, %bb.eb ], [ %i.we, %bb.dz ] ; 12 uses
  %.053.i389 = phi i32 [ %i.aaf, %bb.eb ], [ %i.wb, %bb.dz ] ; 12 uses
  %.2.i390 = phi i32 [ %.1.i387, %bb.eb ], [ 0, %bb.dz ] ; 11 uses
  %9 = icmp sgt i32 %.053.i389, 127
  br i1 %9, label %.preheader80.i408, label %.thread.i391

.preheader80.i408:                                ; preds = %bb.ec
end_hunk_15
begin_hunk_16_@Fax3Encode2DRow:bb.a
  br i1 %i.adz, label %find1span.exit469.thread, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aea = sub nsw i32 %.pre-phi, %.1.i430
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adn, i64 1
  br label %bb.es

end_hunk_16
begin_hunk_17_@Fax3Encode2DRow:bb.a
  %.061.i431 = phi ptr [ %i.aeb, %bb.er ], [ %i.adn, %bb.ep ] ; 12 uses
  %.053.i432 = phi i32 [ %i.aea, %bb.er ], [ %.pre-phi, %bb.ep ] ; 12 uses
  %.2.i433 = phi i32 [ %.1.i430, %bb.er ], [ 0, %bb.ep ] ; 11 uses
  %10 = icmp sgt i32 %.053.i432, 127
  br i1 %10, label %.preheader80.i451, label %.thread.i434

.preheader80.i451:                                ; preds = %bb.es
end_hunk_17
begin_hunk_18_@Fax3Encode2DRow:bb.a
  br i1 %i.ahq, label %find1span.exit469.thread610, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ahr = sub nsw i32 %.pre-phi1074, %.1.i473
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahe, i64 1
  br label %bb.fi

end_hunk_18
begin_hunk_19_@Fax3Encode2DRow:bb.a
  %.061.i474 = phi ptr [ %i.ahs, %bb.fh ], [ %i.ahe, %bb.ff ] ; 12 uses
  %.053.i475 = phi i32 [ %i.ahr, %bb.fh ], [ %.pre-phi1074, %bb.ff ] ; 12 uses
  %.2.i476 = phi i32 [ %.1.i473, %bb.fh ], [ 0, %bb.ff ] ; 11 uses
  %11 = icmp sgt i32 %.053.i475, 127
  br i1 %11, label %.preheader80.i494, label %.thread.i477

.preheader80.i494:                                ; preds = %bb.fi
end_hunk_19
begin_hunk_20_@Fax3Encode2DRow:bb.a
  br i1 %i.alr, label %find1span.exit555, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.als = sub nsw i32 %i.alb, %.1.i516
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ale, i64 1
  br label %bb.fz

end_hunk_20
begin_hunk_21_@Fax3Encode2DRow:bb.a
  %.061.i517 = phi ptr [ %i.alt, %bb.fy ], [ %i.ale, %bb.fw ] ; 12 uses
  %.053.i518 = phi i32 [ %i.als, %bb.fy ], [ %i.alb, %bb.fw ] ; 12 uses
  %.2.i519 = phi i32 [ %.1.i516, %bb.fy ], [ 0, %bb.fw ] ; 11 uses
  %12 = icmp sgt i32 %.053.i518, 127
  br i1 %12, label %.preheader80.i537, label %.thread.i520

.preheader80.i537:                                ; preds = %bb.fz
end_hunk_21
begin_hunk_22_@Fax3Encode2DRow:bb.a
  br i1 %i.apn, label %find1span.exit555, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.apo = sub nsw i32 %i.aox, %.1.i559
  %i.app = getelementptr inbounds nuw i8, ptr %i.apa, i64 1
  br label %bb.gq

end_hunk_22
begin_hunk_23_@Fax3Encode2DRow:bb.a
  %.061.i560 = phi ptr [ %i.app, %bb.gp ], [ %i.apa, %bb.gn ] ; 12 uses
  %.053.i561 = phi i32 [ %i.apo, %bb.gp ], [ %i.aox, %bb.gn ] ; 12 uses
  %.2.i562 = phi i32 [ %.1.i559, %bb.gp ], [ 0, %bb.gn ] ; 11 uses
  %13 = icmp sgt i32 %.053.i561, 127
  br i1 %13, label %.preheader80.i580, label %.thread.i563

.preheader80.i580:                                ; preds = %bb.gq
end_hunk_23
