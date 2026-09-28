Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tiff?download=true
inline.NumInlined: 40
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6LibRaw14parse_tiff_ifdEx:bb.a
  %i.cbp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(5) @.str.39) #15
  %.not1071 = icmp eq i32 %i.cbp, 0
  br i1 %.not1071, label %bb.lz, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.cbq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(6) @.str.40) #15
  %.not1072 = icmp eq i32 %i.cbq, 0
  br i1 %.not1072, label %bb.lz, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.cbr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(5) @.str.41) #15
  %.not1073 = icmp eq i32 %i.cbr, 0
  br i1 %.not1073, label %bb.lz, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.cbs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(5) @.str.42) #15
  %.not1074 = icmp eq i32 %i.cbs, 0
  br i1 %.not1074, label %bb.lz, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.cbt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(9) @.str.43) #15
  %.not1075 = icmp eq i32 %i.cbt, 0
  br i1 %.not1075, label %bb.lz, label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.cbu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(6) @.str.44) #15
  %.not1076 = icmp eq i32 %i.cbu, 0
  br i1 %.not1076, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.cbv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(6) @.str.45) #15
  %.not1077 = icmp eq i32 %i.cbv, 0
  br i1 %.not1077, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %.loopexit1205, %bb.ly, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj, %bb.li, %bb.lh, %bb.lg, %bb.lf, %bb.le
  br label %bb.ma

bb.ma:                                            ; preds = %bb.lz, %bb.ly
  %.not1079 = phi i1 [ false, %bb.lz ], [ true, %bb.ly ] ; 2 uses
  %i.cbw = add i32 %i.cas, -3                     ; 4 uses
  %i.cbx = icmp sgt i32 %i.cbw, 0
  br i1 %i.cbx, label %.lr.ph1359, label %.loopexit1203

.lr.ph1359:                                       ; preds = %bb.ma
  %wide.trip.count1686 = zext nneg i32 %i.cbw to i64 ; 3 uses
  br label %bb.mb

bb.mb:                                            ; preds = %.lr.ph1359, %bb.my
  %indvars.iv1688 = phi i64 [ -15, %.lr.ph1359 ], [ %indvars.iv.next1689, %bb.my ] ; 2 uses
  %indvars.iv1683 = phi i64 [ 0, %.lr.ph1359 ], [ %indvars.iv.next1684, %bb.my ] ; 4 uses
  %i.cby = getelementptr inbounds nuw [2 x i8], ptr %i.bzz, i64 %indvars.iv1683 ; 4 uses
  %i.cbz = load i16, ptr %i.cby, align 2, !tbaa !93
  %i.cca = zext i16 %i.cbz to i32
  %i.ccb = icmp eq i32 %i.bzd, %i.cca
  br i1 %i.ccb, label %bb.mc, label %bb.my

bb.mc:                                            ; preds = %bb.mb
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cby, i64 2
  %i.ccd = load i16, ptr %i.ccc, align 2, !tbaa !93
  %i.cce = zext i16 %i.ccd to i32
  %i.ccf = icmp eq i32 %i.bze, %i.cce
  br i1 %i.ccf, label %bb.md, label %bb.my

bb.md:                                            ; preds = %bb.mc
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.cby, i64 4
  %i.cch = load i16, ptr %i.ccg, align 2, !tbaa !93
  %i.cci = zext i16 %i.cch to i32
  %i.ccj = icmp eq i32 %i.bzf, %i.cci
  br i1 %i.ccj, label %bb.me, label %bb.my

bb.me:                                            ; preds = %bb.md
  %i.cck = icmp samesign ugt i64 %indvars.iv1683, 14
  br i1 %i.cck, label %bb.mf, label %.loopexit1202

bb.mf:                                            ; preds = %bb.me
  %i.ccl = getelementptr i8, ptr %i.cby, i64 -30
  %i.ccm = load i16, ptr %i.ccl, align 2, !tbaa !93
  %i.ccn = zext i16 %i.ccm to i32
  %.not1078 = icmp eq i32 %i.bzd, %i.ccn
  br i1 %.not1078, label %bb.mg, label %bb.my

bb.mg:                                            ; preds = %bb.mf
  %i.cco = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !264
  %i.ccp = icmp sgt i32 %i.cco, 0
  br i1 %i.ccp, label %_ZNK21libraw_static_table_tixEj.exit.lr.ph, label %.loopexit1202

_ZNK21libraw_static_table_tixEj.exit.lr.ph:       ; preds = %bb.mg
  %i.ccq = load ptr, ptr @_ZN6LibRaw13Fuji_wb_list1E, align 8, !tbaa !265 ; 5 uses
  %.not6.i1138 = icmp eq ptr %i.ccq, null         ; 3 uses
  br label %_ZNK21libraw_static_table_tixEj.exit

_ZNK21libraw_static_table_tixEj.exit:             ; preds = %_ZNK21libraw_static_table_tixEj.exit.lr.ph, %_ZNK21libraw_static_table_tixEj.exit1148
  %indvars.iv1694 = phi i64 [ 0, %_ZNK21libraw_static_table_tixEj.exit.lr.ph ], [ %indvars.iv.next1695, %_ZNK21libraw_static_table_tixEj.exit1148 ] ; 5 uses
  %indvars.iv1692 = phi i64 [ %indvars.iv1688, %_ZNK21libraw_static_table_tixEj.exit.lr.ph ], [ %indvars.iv.next1693, %_ZNK21libraw_static_table_tixEj.exit1148 ] ; 2 uses
  %i.ccr = getelementptr inbounds [2 x i8], ptr %i.bzz, i64 %indvars.iv1692 ; 3 uses
  %i.ccs = load i16, ptr %i.ccr, align 2, !tbaa !93
  %i.cct = zext i16 %i.ccs to i32                 ; 2 uses
  %i.ccu = getelementptr inbounds nuw [4 x i8], ptr %i.ccq, i64 %indvars.iv1694 ; 4 uses
  %i.ccv = load i32, ptr %i.ccu, align 4, !tbaa !74
  %i.ccw = sext i32 %i.ccv to i64
  %i.ccx = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.ccw
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccx, i64 12
  store i32 %i.cct, ptr %i.ccy, align 4, !tbaa !74
  %i.ccz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !264 ; 2 uses
  %i.cda = zext i32 %i.ccz to i64
  %i.cdb = icmp samesign ult i64 %indvars.iv1694, %i.cda
  br i1 %i.cdb, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %i.cdc = load i32, ptr %i.ccu, align 4, !tbaa !74
  br label %_ZNK21libraw_static_table_tixEj.exit1140

bb.mi:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit
  %.not.i1137 = icmp eq i32 %i.ccz, 0
  %brmerge = or i1 %.not.i1137, %.not6.i1138
  br i1 %brmerge, label %_ZNK21libraw_static_table_tixEj.exit1140, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.cdd = load i32, ptr %i.ccq, align 4, !tbaa !74
  br label %_ZNK21libraw_static_table_tixEj.exit1140

_ZNK21libraw_static_table_tixEj.exit1140:         ; preds = %bb.mi, %bb.mh, %bb.mj
  %.0.i1139 = phi i32 [ %i.cdc, %bb.mh ], [ %i.cdd, %bb.mj ], [ 0, %bb.mi ]
  %i.cde = sext i32 %.0.i1139 to i64
  %i.cdf = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.cde
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdf, i64 4
  store i32 %i.cct, ptr %i.cdg, align 4, !tbaa !74
  %i.cdh = getelementptr i8, ptr %i.ccr, i64 2
  %i.cdi = load i16, ptr %i.cdh, align 2, !tbaa !93
  %i.cdj = zext i16 %i.cdi to i32
  %i.cdk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !264 ; 2 uses
  %i.cdl = zext i32 %i.cdk to i64
  %i.cdm = icmp samesign ult i64 %indvars.iv1694, %i.cdl
  br i1 %i.cdm, label %bb.mk, label %bb.ml

bb.mk:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit1140
  %i.cdn = load i32, ptr %i.ccu, align 4, !tbaa !74
  br label %_ZNK21libraw_static_table_tixEj.exit1144

bb.ml:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit1140
  %.not.i1141 = icmp eq i32 %i.cdk, 0
  %brmerge1472 = or i1 %.not.i1141, %.not6.i1138
  br i1 %brmerge1472, label %_ZNK21libraw_static_table_tixEj.exit1144, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.cdo = load i32, ptr %i.ccq, align 4, !tbaa !74
  br label %_ZNK21libraw_static_table_tixEj.exit1144

_ZNK21libraw_static_table_tixEj.exit1144:         ; preds = %bb.ml, %bb.mk, %bb.mm
  %.0.i1143 = phi i32 [ %i.cdn, %bb.mk ], [ %i.cdo, %bb.mm ], [ 0, %bb.ml ]
  %i.cdp = sext i32 %.0.i1143 to i64
  %i.cdq = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.cdp
  store i32 %i.cdj, ptr %i.cdq, align 8, !tbaa !74
  %i.cdr = getelementptr i8, ptr %i.ccr, i64 4
  %i.cds = load i16, ptr %i.cdr, align 2, !tbaa !93
  %i.cdt = zext i16 %i.cds to i32
  %i.cdu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !264 ; 2 uses
  %i.cdv = zext i32 %i.cdu to i64
  %i.cdw = icmp samesign ult i64 %indvars.iv1694, %i.cdv
  br i1 %i.cdw, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit1144
  %i.cdx = load i32, ptr %i.ccu, align 4, !tbaa !74
  br label %_ZNK21libraw_static_table_tixEj.exit1148

bb.mo:                                            ; preds = %_ZNK21libraw_static_table_tixEj.exit1144
  %.not.i1145 = icmp eq i32 %i.cdu, 0
  %brmerge1473 = or i1 %.not.i1145, %.not6.i1138
  br i1 %brmerge1473, label %_ZNK21libraw_static_table_tixEj.exit1148, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.cdy = load i32, ptr %i.ccq, align 4, !tbaa !74
  br label %_ZNK21libraw_static_table_tixEj.exit1148

_ZNK21libraw_static_table_tixEj.exit1148:         ; preds = %bb.mo, %bb.mn, %bb.mp
  %.0.i1147 = phi i32 [ %i.cdx, %bb.mn ], [ %i.cdy, %bb.mp ], [ 0, %bb.mo ]
  %i.cdz = sext i32 %.0.i1147 to i64
  %i.cea = getelementptr inbounds [16 x i8], ptr %i.bc, i64 %i.cdz
  %i.ceb = getelementptr inbounds nuw i8, ptr %i.cea, i64 8
  store i32 %i.cdt, ptr %i.ceb, align 8, !tbaa !74
  %indvars.iv.next1695 = add nuw nsw i64 %indvars.iv1694, 1 ; 2 uses
  %indvars.iv.next1693 = add nuw nsw i64 %indvars.iv1692, 3
  %i.cec = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw13Fuji_wb_list1E, i64 8), align 8, !tbaa !264
  %i.ced = sext i32 %i.cec to i64
  %i.cee = icmp slt i64 %indvars.iv.next1695, %i.ced
  br i1 %i.cee, label %_ZNK21libraw_static_table_tixEj.exit, label %.loopexit1202.loopexit, !llvm.loop !160

.loopexit1202.loopexit:                           ; preds = %_ZNK21libraw_static_table_tixEj.exit1148
  %.pre1844 = load i32, ptr %i.dy, align 8, !tbaa !259
  %.pre1858 = add i32 %.pre1844, -3               ; 2 uses
  %.pre1859 = zext i32 %.pre1858 to i64
  br label %.loopexit1202

.loopexit1202:                                    ; preds = %bb.me, %.loopexit1202.loopexit, %bb.mg
  %.pre-phi1860 = phi i64 [ %wide.trip.count1686, %bb.mg ], [ %.pre1859, %.loopexit1202.loopexit ], [ %wide.trip.count1686, %bb.me ]
  %.pre-phi = phi i32 [ %i.cbw, %bb.mg ], [ %.pre1858, %.loopexit1202.loopexit ], [ %i.cbw, %bb.me ] ; 2 uses
  %.085513571531 = trunc i64 %indvars.iv1683 to i32 ; 2 uses
  %i.cef = add nuw nsw i32 %.085513571531, 24
  %spec.select1129 = select i1 %.not1079, i32 %.085513571531, i32 %i.cef ; 2 uses
  %i.ceg = add i32 %spec.select1129, 96           ; 2 uses
  %3 = zext i32 %i.ceg to i64                     ; 2 uses
  %4 = getelementptr inbounds nuw [2 x i8], ptr %i.bzz, i64 %3
  %5 = sext i32 %i.ceg to i64
  %6 = add nuw i32 %spec.select1129, 108
  %7 = zext i32 %6 to i64
  br label %bb.mq

bb.mq:                                            ; preds = %.loopexit1202, %bb.mx
  %indvars.iv1702 = phi i64 [ %5, %.loopexit1202 ], [ %indvars.iv.next1703, %bb.mx ] ; 2 uses
  %indvars.iv1699 = phi i64 [ %3, %.loopexit1202 ], [ %indvars.iv.next1700, %bb.mx ] ; 5 uses
  %i.ceh = icmp samesign ugt i64 %indvars.iv1699, %.pre-phi1860
  br i1 %i.ceh, label %.critedge66, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.cei = getelementptr inbounds nuw [2 x i8], ptr %i.bzz, i64 %indvars.iv1699
  %i.cej = load i16, ptr %i.cei, align 2, !tbaa !93
  %i.cek = load i16, ptr %4, align 2, !tbaa !93
  %.not1080 = icmp eq i16 %i.cej, %i.cek
  br i1 %.not1080, label %bb.mx, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.cel = trunc nuw i64 %indvars.iv1699 to i32
  %spec.select1130.v = select i1 %.not1079, i32 -93, i32 -102 ; 2 uses
  %spec.select1130 = add nsw i32 %spec.select1130.v, %i.cel
  %i.cem = icmp ult i32 %spec.select1130, %.pre-phi
  br i1 %i.cem, label %.lr.ph1366, label %.critedge66

.lr.ph1366:                                       ; preds = %bb.ms
  %i.cen = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN6LibRaw9FujiCCT_KE, i64 8), align 8, !tbaa !264 ; 2 uses
  %.not.i1149 = icmp eq i32 %i.cen, 0
  %i.ceo = load ptr, ptr @_ZN6LibRaw9FujiCCT_KE, align 8 ; 3 uses
  %.not6.i1150 = icmp eq ptr %i.ceo, null
  %i.cep = sext i32 %spec.select1130.v to i64
  %i.ceq = add nsw i64 %indvars.iv1702, %i.cep
  %i.cer = zext i32 %i.cen to i64
  %brmerge1474 = select i1 %.not.i1149, i1 true, i1 %.not6.i1150
  br label %bb.mt

bb.mt:                                            ; preds = %.lr.ph1366, %_ZNK21libraw_static_table_tixEj.exit1152
  %indvars.iv1707 = phi i64 [ 0, %.lr.ph1366 ], [ %indvars.iv.next1708, %_ZNK21libraw_static_table_tixEj.exit1152 ] ; 5 uses
  %indvars.iv1705 = phi i64 [ %i.ceq, %.lr.ph1366 ], [ %indvars.iv.next1706, %_ZNK21libraw_static_table_tixEj.exit1152 ] ; 2 uses
  %i.ces = icmp samesign ult i64 %indvars.iv1707, %i.cer
  br i1 %i.ces, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  %i.cet = getelementptr inbounds nuw [4 x i8], ptr %i.ceo, i64 %indvars.iv1707
  %i.ceu = load i32, ptr %i.cet, align 4, !tbaa !74
  br label %_ZNK21libraw_static_table_tixEj.exit1152

bb.mv:                                            ; preds = %bb.mt
  br i1 %brmerge1474, label %_ZNK21libraw_static_table_tixEj.exit1152, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.cev = load i32, ptr %i.ceo, align 4, !tbaa !74
  br label %_ZNK21libraw_static_table_tixEj.exit1152

_ZNK21libraw_static_table_tixEj.exit1152:         ; preds = %bb.mv, %bb.mu, %bb.mw
  %.0.i1151 = phi i32 [ %i.ceu, %bb.mu ], [ %i.cev, %bb.mw ], [ 0, %bb.mv ]
  %i.cew = sitofp i32 %.0.i1151 to float
  %i.cex = getelementptr inbounds nuw [20 x i8], ptr %i.ed, i64 %indvars.iv1707 ; 2 uses
  store float %i.cew, ptr %i.cex, align 4, !tbaa !213
  %i.cey = getelementptr [2 x i8], ptr %i.bzz, i64 %indvars.iv1705
  %i.cez = getelementptr inbounds nuw i8, ptr %i.cex, i64 4
  %i.cfa = load <3 x i16>, ptr %i.cey, align 2, !tbaa !93
  %i.cfb = shufflevector <3 x i16> %i.cfa, <3 x i16> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0>
  %i.cfc = uitofp <4 x i16> %i.cfb to <4 x float>
  store <4 x float> %i.cfc, ptr %i.cez, align 4, !tbaa !213
  %indvars.iv.next1708 = add nuw nsw i64 %indvars.iv1707, 1
  %indvars.iv.next1706 = add nsw i64 %indvars.iv1705, 3 ; 2 uses
  %i.cfd = icmp samesign ult i64 %indvars.iv1707, 30
  %i.cfe = trunc nsw i64 %indvars.iv.next1706 to i32
  %i.cff = icmp ugt i32 %.pre-phi, %i.cfe
  %or.cond1162 = select i1 %i.cfd, i1 %i.cff, i1 false
  br i1 %or.cond1162, label %bb.mt, label %.critedge66, !llvm.loop !161

bb.mx:                                            ; preds = %bb.mr
  %indvars.iv.next1700 = add nuw nsw i64 %indvars.iv1699, 3
  %i.cfg = icmp samesign ult i64 %indvars.iv1699, %7
  %indvars.iv.next1703 = add nsw i64 %indvars.iv1702, 3
  br i1 %i.cfg, label %bb.mq, label %.critedge66, !llvm.loop !162

.critedge66:                                      ; preds = %bb.mq, %bb.mx, %_ZNK21libraw_static_table_tixEj.exit1152, %bb.ms
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bzz)
  br label %.loopexit1203

bb.my:                                            ; preds = %bb.mb, %bb.mc, %bb.md, %bb.mf
  %indvars.iv.next1684 = add nuw nsw i64 %indvars.iv1683, 1 ; 2 uses
  %exitcond1687.not = icmp eq i64 %indvars.iv.next1684, %wide.trip.count1686
  %indvars.iv.next1689 = add nsw i64 %indvars.iv1688, 1
  br i1 %exitcond1687.not, label %.loopexit1203, label %bb.mb, !llvm.loop !163

.loopexit1203:                                    ; preds = %bb.my, %bb.ma, %.critedge66, %.preheader1206, %bb.la, %bb.kz
  %i.cfh = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.cfi = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cfj = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.cfk = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 2 uses
  %i.cfl = icmp ult i32 %i.cfk, 256
  br i1 %i.cfl, label %.preheader1200, label %.thread1155

.preheader1200:                                   ; preds = %.loopexit1203
  %i.cfm = zext nneg i32 %i.cfk to i64
  %i.cfn = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.cfm ; 4 uses
  %i.cfo = getelementptr inbounds nuw i8, ptr %i.cfn, i64 4
  store i32 %i.cfh, ptr %i.cfo, align 4, !tbaa !74
  store i32 %i.cfi, ptr %i.cfn, align 8, !tbaa !74
  %i.cfp = getelementptr inbounds nuw i8, ptr %i.cfn, i64 8
  store i32 %i.cfj, ptr %i.cfp, align 8, !tbaa !74
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfn, i64 12
  store i32 %i.cfh, ptr %i.cfq, align 4, !tbaa !74
  br label %.thread1155

bb.mz:                                            ; preds = %bb.es
  %i.cfr = load i32, ptr %i.dx, align 4, !tbaa !258
  %.not1053 = icmp eq i32 %i.cfr, 4096
  br i1 %.not1053, label %.thread1155, label %.preheader1207.preheader

.preheader1207.preheader:                         ; preds = %bb.mz
  %i.cfs = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cft = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cfs)
  store i32 %i.cft, ptr %i.gm, align 4, !tbaa !74
  %i.cfu = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cfv = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cfu)
  store i32 %i.cfv, ptr %i.bn, align 8, !tbaa !74
  %i.cfw = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cfx = call noundef i32 @_ZN6LibRaw6getintEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cfw)
  store i32 %i.cfx, ptr %i.gn, align 8, !tbaa !74
  %i.cfy = load i32, ptr %i.bp, align 4, !tbaa !74
  store i32 %i.cfy, ptr %i.bo, align 4, !tbaa !74
  br label %.thread1155

bb.na:                                            ; preds = %bb.es
  %i.cfz = load i32, ptr %i.c, align 4, !tbaa !74
  %i.cga = call i32 @llvm.umin.i32(i32 %i.cfz, i32 64)
  %i.cgb = zext nneg i32 %i.cga to i64
  %i.cgc = load ptr, ptr %i.r, align 8, !tbaa !71
  %i.cgd = call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.dw, i64 noundef %i.cgb, ptr noundef %i.cgc) ; 0 uses
  br label %.thread1155

bb.nb:                                            ; preds = %bb.es
  %i.cge = load i32, ptr %i.c, align 4, !tbaa !74 ; 2 uses
  %i.cgf = uitofp i32 %i.cge to float
  %sqrt = call float @llvm.sqrt.f32(float %i.cgf) ; 2 uses
  %i.cgg = fcmp olt float %sqrt, 6.400000e+01
  %spec.select11631165 = select i1 %i.cgg, float %sqrt, float 6.400000e+01
  %spec.select1163 = fptosi float %spec.select11631165 to i32 ; 2 uses
  store i32 %spec.select1163, ptr %i.dt, align 4, !tbaa !74
  store i32 %spec.select1163, ptr %i.du, align 8, !tbaa !74
  br label %bb.nc

bb.nc:                                            ; preds = %._crit_edge1840, %bb.nb
  %i.cgh = phi i32 [ %.pre, %._crit_edge1840 ], [ %i.cge, %bb.nb ] ; 9 uses
  %i.cgi = sext i32 %.08611430 to i64
  %i.cgj = getelementptr inbounds [33472 x i8], ptr %i.au, i64 %i.cgi ; 20 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cgj, i64 24
  %i.cgl = load i32, ptr %i.cgk, align 8, !tbaa !90 ; 3 uses
  %i.cgm = icmp sgt i32 %i.cgl, 1                 ; 2 uses
  %i.cgn = icmp eq i32 %i.cgl, %i.cgh
  %or.cond1132 = select i1 %i.cgm, i1 %i.cgn, i1 false
  br i1 %or.cond1132, label %bb.nd, label %bb.nf

bb.nd:                                            ; preds = %bb.nc
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgj, i64 488 ; 2 uses
  %i.cgp = load i32, ptr %i.cgo, align 8, !tbaa !255
  %i.cgq = or i32 %i.cgp, 32
  store i32 %i.cgq, ptr %i.cgo, align 8, !tbaa !255
  %i.cgr = icmp sgt i32 %i.cgh, 0
  br i1 %i.cgr, label %.lr.ph1348, label %._crit_edge1349

.lr.ph1348:                                       ; preds = %bb.nd
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgj, i64 16912
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgj, i64 492
  br label %bb.ne

bb.ne:                                            ; preds = %.lr.ph1348, %bb.ne
  %indvars.iv1666 = phi i64 [ 0, %.lr.ph1348 ], [ %indvars.iv.next1667, %bb.ne ] ; 5 uses
  %i.cgu = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cgv = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cgu)
  %i.cgw = fptrunc double %i.cgv to float         ; 2 uses
  %i.cgx = getelementptr inbounds nuw [4 x i8], ptr %i.cgs, i64 %indvars.iv1666
  store float %i.cgw, ptr %i.cgx, align 4, !tbaa !213
  %i.cgy = fadd float %i.cgw, 5.000000e-01
  %i.cgz = fptoui float %i.cgy to i32             ; 2 uses
  %i.cha = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv1666
  store i32 %i.cgz, ptr %i.cha, align 4, !tbaa !74
  %i.chb = getelementptr inbounds nuw [4 x i8], ptr %i.cgt, i64 %indvars.iv1666
  store i32 %i.cgz, ptr %i.chb, align 4, !tbaa !74
  %indvars.iv.next1667 = add nuw nsw i64 %indvars.iv1666, 1 ; 2 uses
  %i.chc = icmp samesign ult i64 %indvars.iv1666, 3
  %i.chd = load i32, ptr %i.c, align 4            ; 2 uses
  %i.che = sext i32 %i.chd to i64
  %i.chf = icmp slt i64 %indvars.iv.next1667, %i.che
  %i.chg = select i1 %i.chc, i1 %i.chf, i1 false
  br i1 %i.chg, label %bb.ne, label %._crit_edge1349, !llvm.loop !164

._crit_edge1349:                                  ; preds = %bb.ne, %bb.nd
  %.lcssa1239 = phi i32 [ %i.cgh, %bb.nd ], [ %i.chd, %bb.ne ]
  %i.chh = getelementptr inbounds nuw i8, ptr %i.cgj, i64 16904
  store i32 %.lcssa1239, ptr %i.chh, align 8, !tbaa !74
  %i.chi = getelementptr inbounds nuw i8, ptr %i.cgj, i64 33328
  store float 0.000000e+00, ptr %i.chi, align 8, !tbaa !266
  store i32 0, ptr %i.dj, align 8, !tbaa !217
  %i.chj = getelementptr inbounds nuw i8, ptr %i.cgj, i64 16908
  store i32 0, ptr %i.chj, align 4, !tbaa !267
  br label %.thread1155

bb.nf:                                            ; preds = %bb.nc
  %.pre1841 = load i32, ptr %i.du, align 8, !tbaa !74 ; 3 uses
  %.pre1842 = load i32, ptr %i.dt, align 4, !tbaa !74 ; 3 uses
  br i1 %i.cgm, label %bb.ng, label %bb.nj

bb.ng:                                            ; preds = %bb.nf
  %i.chk = mul i32 %.pre1841, %i.cgl
  %i.chl = mul i32 %i.chk, %.pre1842
  %i.chm = icmp eq i32 %i.chl, %i.cgh
  br i1 %i.chm, label %bb.nh, label %bb.nj

bb.nh:                                            ; preds = %bb.ng
  %i.chn = getelementptr inbounds nuw i8, ptr %i.cgj, i64 488 ; 2 uses
  %i.cho = load i32, ptr %i.chn, align 8, !tbaa !255
  %i.chp = or i32 %i.cho, 32
  store i32 %i.chp, ptr %i.chn, align 8, !tbaa !255
  store i32 %i.cgh, ptr %i.dv, align 4, !tbaa !74
  %i.chq = getelementptr inbounds nuw i8, ptr %i.cgj, i64 492
  %i.chr = getelementptr inbounds nuw i8, ptr %i.cgj, i64 16904
  store i32 %i.cgh, ptr %i.chr, align 8, !tbaa !74
  %i.chs = icmp sgt i32 %i.cgh, 0
  br i1 %i.chs, label %.lr.ph1345, label %.thread1155

.lr.ph1345:                                       ; preds = %bb.nh
  %i.cht = getelementptr inbounds nuw i8, ptr %i.cgj, i64 16912
  br label %bb.ni

bb.ni:                                            ; preds = %.lr.ph1345, %bb.ni
  %indvars.iv1663 = phi i64 [ 0, %.lr.ph1345 ], [ %indvars.iv.next1664, %bb.ni ] ; 3 uses
  %i.chu = load i32, ptr %i.b, align 4, !tbaa !74
  %i.chv = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.chu)
  %i.chw = fptrunc double %i.chv to float         ; 2 uses
  %i.chx = add nuw nsw i64 %indvars.iv1663, 6     ; 3 uses
  %i.chy = getelementptr inbounds nuw [4 x i8], ptr %i.cht, i64 %i.chx
  store float %i.chw, ptr %i.chy, align 4, !tbaa !213
  %i.chz = fadd float %i.chw, 5.000000e-01
  %i.cia = fptoui float %i.chz to i32             ; 2 uses
  %i.cib = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.chx
  store i32 %i.cia, ptr %i.cib, align 4, !tbaa !74
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.chq, i64 %i.chx
  store i32 %i.cia, ptr %i.cic, align 4, !tbaa !74
  %indvars.iv.next1664 = add nuw nsw i64 %indvars.iv1663, 1 ; 2 uses
  %i.cid = load i32, ptr %i.c, align 4, !tbaa !74
  %i.cie = sext i32 %i.cid to i64
  %i.cif = icmp slt i64 %indvars.iv.next1664, %i.cie
  %i.cig = icmp samesign ult i64 %indvars.iv1663, 4096
  %i.cih = select i1 %i.cif, i1 %i.cig, i1 false
  br i1 %i.cih, label %bb.ni, label %.thread1155, !llvm.loop !165

bb.nj:                                            ; preds = %bb.ng, %bb.nf
  %i.cii = mul i32 %.pre1842, %.pre1841           ; 3 uses
  %i.cij = icmp ult i32 %i.cii, 2
  %i.cik = icmp eq i32 %i.cgh, 1
  %or.cond68 = select i1 %i.cij, i1 %i.cik, i1 false
  br i1 %or.cond68, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.cil = getelementptr inbounds nuw i8, ptr %i.cgj, i64 488 ; 2 uses
  %i.cim = load i32, ptr %i.cil, align 8, !tbaa !255
  %i.cin = or i32 %i.cim, 32
  store i32 %i.cin, ptr %i.cil, align 8, !tbaa !255
  %i.cio = load i32, ptr %i.b, align 4, !tbaa !74
  %i.cip = call noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.cio)
  %i.ciq = fptrunc double %i.cip to float         ; 2 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %i.cgj, i64 33328
  store float %i.ciq, ptr %i.cir, align 8, !tbaa !266
  %i.cis = fptoui float %i.ciq to i32             ; 2 uses
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cgj, i64 16908
  store i32 %i.cis, ptr %i.cit, align 4, !tbaa !267
  store i32 %i.cis, ptr %i.dj, align 8, !tbaa !217
  br label %.thread1155

bb.nl:                                            ; preds = %bb.nj
end_hunk_0
