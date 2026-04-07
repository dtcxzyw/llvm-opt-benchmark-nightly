inline.NumInlined: 25
inline.NumDeleted: 9
begin_hunk_0_@performEvictions:bb.a
bb.q:                                             ; preds = %evictionTimeLimitUs.exit, %bb.p
  %.0110 = phi i64 [ %i.ag, %bb.p ], [ 0, %evictionTimeLimitUs.exit ]
  %i.ah = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.ai = call i64 %i.ah() #14, !inline_history !103 ; 2 uses
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7080), align 8, !tbaa !104
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.preheader236, label %bb.r, !prof !100

end_hunk_0
begin_hunk_1_@performEvictions:bb.a

.preheader234:                                    ; preds = %bb.t, %.loopexit233
  %.1125254 = phi i32 [ %.0124255, %bb.t ], [ %.5, %.loopexit233 ]
  %i.at = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph250, label %.thread222

end_hunk_1
begin_hunk_2_@performEvictions:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit ], [ 0, %.preheader234 ] ; 2 uses
  %.0114249 = phi i64 [ %.3117, %.loopexit ], [ 0, %.preheader234 ] ; 3 uses
  %.0118248 = phi i64 [ %.1119, %.loopexit ], [ 0, %.preheader234 ] ; 2 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.aw = getelementptr inbounds nuw [96 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.ay = and i32 %i.ax, 4
  %.not172 = icmp eq i32 %i.ay, 0
  %.0113.in.idx = select i1 %.not172, i64 8, i64 0
  %.0113.in = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.0113.in.idx
  %.0113 = load ptr, ptr %.0113.in, align 8, !tbaa !107 ; 3 uses
  %i.az = call i64 @kvstoreSize(ptr noundef %.0113) #14 ; 3 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.loopexit, label %bb.u
end_hunk_2
begin_hunk_3_@performEvictions:bb.a
bb.v:                                             ; preds = %.lr.ph335
  %i.bd = add nsw i32 %.0107333, -1               ; 2 uses
  %.not173 = icmp eq i32 %i.bd, 0
  br i1 %.not173, label %.loopexit, label %.lr.ph335, !llvm.loop !108

.lr.ph335:                                        ; preds = %bb.u, %bb.v
  %.0107333 = phi i32 [ %i.bd, %bb.v ], [ %i.bc, %bb.u ]
end_hunk_3
begin_hunk_4_@performEvictions:bb.a
  %i.bk = mul nsw i64 %i.bj, 10
  %i.bl = icmp ult i64 %i.az, %i.bk
  %or.cond176 = select i1 %.not174, i1 true, i1 %i.bl
  br i1 %or.cond176, label %..loopexit.loopexit_crit_edge, label %bb.v, !llvm.loop !108

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph335
  br label %.loopexit, !llvm.loop !108

.loopexit:                                        ; preds = %bb.v, %bb.u, %..loopexit.loopexit_crit_edge, %.lr.ph250
  %.1119 = phi i64 [ %.0118248, %.lr.ph250 ], [ %i.bb, %bb.u ], [ %i.bb, %..loopexit.loopexit_crit_edge ], [ %i.bb, %bb.v ] ; 2 uses
  %.3117 = phi i64 [ %.0114249, %.lr.ph250 ], [ %.0114249, %bb.u ], [ %i.bh, %..loopexit.loopexit_crit_edge ], [ %i.bh, %bb.v ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph250, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %.loopexit
  %i.bp = icmp eq i64 %.1119, 0
end_hunk_4
begin_hunk_5_@performEvictions:bb.a
  %i.cc = getelementptr inbounds [96 x i8], ptr %i.ca, i64 %i.cb
  %.0106.in.idx = select i1 %.not158, i64 8, i64 0
  %.0106.in = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0106.in.idx
  %.0106 = load ptr, ptr %.0106.in, align 8, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !67
  %i.cf = call ptr @kvstoreDictFind(ptr noundef %.0106, i32 noundef %i.ce, ptr noundef nonnull %i.bu) #14 ; 2 uses
end_hunk_5
begin_hunk_6_@performEvictions:bb.a
  %.3127 = phi i32 [ %.2126253, %.preheader ], [ %i.bx, %bb.y ] ; 2 uses
  %indvars.iv.next275 = add nsw i64 %indvars.iv274, -1
  %.not295 = icmp eq i64 %indvars.iv274, 0
  br i1 %.not295, label %.loopexit233, label %.preheader, !llvm.loop !110

.loopexit233:                                     ; preds = %.thread, %bb.z
  %.5134 = phi ptr [ %i.ck, %bb.z ], [ null, %.thread ] ; 2 uses
end_hunk_6
begin_hunk_7_@performEvictions:bb.a
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph, label %.thread222

end_hunk_7
begin_hunk_8_@performEvictions:bb.a
  %i.cq = add i32 %i.cp, 1                        ; 2 uses
  store i32 %i.cq, ptr @performEvictions.next_db, align 4, !tbaa !9
  %i.cr = urem i32 %i.cq, %i.co                   ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [96 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !55
  %i.cw = icmp eq i32 %i.cv, 1540
  %.0105.in.idx = select i1 %i.cw, i64 0, i64 8
  %.0105.in = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.0105.in.idx
  %.0105 = load ptr, ptr %.0105.in, align 8, !tbaa !107 ; 2 uses
  %i.cx = call i32 @kvstoreGetFairRandomDictIndex(ptr noundef %.0105, ptr noundef nonnull @randomEvictionShouldSkipDictIndex, i32 noundef 16, i32 noundef 0) #14 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, -1
  br i1 %i.cy, label %bb.ad, label %bb.ac
end_hunk_8
begin_hunk_9_@performEvictions:bb.a

bb.ad:                                            ; preds = %.lr.ph, %bb.ac
  %i.da = add nuw nsw i32 %.1140245, 1            ; 2 uses
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !105 ; 2 uses
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph, label %.thread222, !llvm.loop !111

bb.ae:                                            ; preds = %bb.ac
  %i.dd = call ptr @dictGetKey(ptr noundef nonnull %i.cz) #14
end_hunk_9
begin_hunk_10_@performEvictions:bb.a
  %.9212 = phi i32 [ %.5, %.thread207.loopexit ], [ %i.cr, %bb.ae ]
  %.9138211 = phi ptr [ %.5134, %.thread207.loopexit ], [ %i.de, %bb.ae ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !106
  %i.dg = getelementptr inbounds [96 x i8], ptr %i.df, i64 %.pre-phi
  call void @enterExecutionUnit(i32 noundef 1, i64 noundef 0) #14
  %i.dh = getelementptr i8, ptr %.9138211, i64 -1
end_hunk_10
begin_hunk_11_@performEvictions:bb.a
  call void @decrRefCount(ptr noundef %i.dw) #14
  call void @exitExecutionUnit() #14
  call void @postExecutionUnitOperations() #14
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !112
  %i.dy = add nsw i64 %i.dx, %.0103256            ; 2 uses
  %i.dz = add nuw nsw i32 %.0101257, 1            ; 2 uses
  %i.ea = and i32 %i.dz, 15
end_hunk_11
begin_hunk_12_@performEvictions:bb.a
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ec = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8360), align 8, !tbaa !113
  %.not163 = icmp eq i32 %i.ec, 0
  br i1 %.not163, label %bb.ao, label %bb.an

end_hunk_12
begin_hunk_13_@performEvictions:bb.a

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ef = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.eg = call i64 %i.ef() #14, !inline_history !114
  %i.eh = sub i64 %i.eg, %i.ai
  %i.ei = icmp ugt i64 %i.eh, %.0.i184
  br i1 %i.ei, label %bb.ap, label %bb.ar
end_hunk_13
begin_hunk_14_@performEvictions:bb.a
bb.aq:                                            ; preds = %bb.ap
  store i1 true, ptr @isEvictionProcRunning, align 4
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !78
  %i.ek = call i64 @aeCreateTimeEvent(ptr noundef %i.ej, i64 noundef 0, ptr noundef nonnull @evictionTimeProc, ptr noundef null, ptr noundef null) #14, !inline_history !115 ; 0 uses
  br label %.thread220

.thread220:                                       ; preds = %bb.an, %bb.ap, %bb.aq
end_hunk_14
begin_hunk_15_@performEvictions:bb.a

bb.au:                                            ; preds = %.lr.ph261, %bb.aw
  %i.et = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.eu = call i64 %i.et() #14, !inline_history !114
  %i.ev = sub i64 %i.eu, %i.ai
  %i.ew = icmp ult i64 %i.ev, %.0.i184
  br i1 %i.ew, label %bb.av, label %.critedge
end_hunk_15
begin_hunk_16_@performEvictions:bb.a
  %i.ez = call i32 @usleep(i32 noundef %i.es) #14 ; 0 uses
  %i.fa = call i64 @bioPendingJobsOfType(i32 noundef 2) #14
  %.not165 = icmp eq i64 %i.fa, 0
  br i1 %.not165, label %.critedge, label %bb.au, !llvm.loop !116

.critedge:                                        ; preds = %bb.au, %bb.aw, %bb.av, %bb.at
  %.1121 = phi i32 [ 2, %bb.at ], [ 0, %bb.av ], [ 2, %bb.aw ], [ 2, %bb.au ] ; 3 uses
end_hunk_16
begin_hunk_17_@performEvictions:bb.a

.thread224:                                       ; preds = %bb.g, %.thread307
  %.3123228 = phi i32 [ %.2122306313, %.thread307 ], [ 2, %bb.g ] ; 2 uses
  %i.fh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2640), align 8, !tbaa !117
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.thread224
  %i.fj = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.fk = call i64 %i.fj() #14, !inline_history !103
  br label %.sink.split

.thread229:                                       ; preds = %bb.f, %.thread307
end_hunk_17
begin_hunk_18_@performEvictions:bb.a

bb.bd:                                            ; preds = %.thread229
  %i.fm = load ptr, ptr @getMonotonicUs, align 8, !tbaa !102
  %i.fn = call i64 %i.fm() #14, !inline_history !114
  %i.fo = sub i64 %i.fn, %i.fl
  %i.fp = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2632), align 8, !tbaa !118
  %i.fq = add i64 %i.fo, %i.fp
  store i64 %i.fq, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2632), align 8, !tbaa !118
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bd, %bb.bc
end_hunk_18
begin_hunk_19_@llvm.memset.p0.i64
!100 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!101 = !{!14, !24, i64 8384}
!102 = !{!17, !17, i64 0}
!103 = distinct !{null}
!104 = !{!14, !10, i64 7080}
!105 = !{!14, !10, i64 6516}
!106 = !{!14, !20, i64 64}
!107 = !{!42, !42, i64 0}
!108 = distinct !{!108, !69}
!109 = distinct !{!109, !69}
!110 = distinct !{!110, !69}
!111 = distinct !{!111, !69}
!112 = !{!24, !24, i64 0}
!113 = !{!14, !10, i64 8360}
!114 = distinct !{null}
!115 = !{ptr @startEvictionTimeProc}
!116 = distinct !{!116, !69}
!117 = !{!14, !15, i64 2640}
!118 = !{!14, !24, i64 2632}
end_hunk_19
