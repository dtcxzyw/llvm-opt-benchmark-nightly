inline.NumInlined: 302
inline.NumDeleted: 51
begin_hunk_0_@readQueryFromClient:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  %i.z = phi ptr [ %i.y, %bb.i ], [ %i.x, %bb.h ] ; 6 uses
  %i.aa = phi i64 [ %.pre, %bb.i ], [ %i.u, %bb.h ]
  %i.ab = getelementptr i8, ptr %i.z, i64 -1
  %.val.i = load i8, ptr %i.ab, align 1, !tbaa !17 ; 2 uses
  %i.ac = and i8 %.val.i, 7
end_hunk_0
begin_hunk_1_@readQueryFromClient:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !124
  %.neg = sub i64 %i.ar, %.0.i
  %1 = add i64 %i.aa, %.neg
  %i.as = add i64 %1, 2                           ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  %spec.select = select i1 %i.at, i64 %i.as, i64 16384 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val, i64 8
end_hunk_1
begin_hunk_2_@_addReplyToBufferOrList:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !88 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.am = load i8, ptr %i.al, align 8, !tbaa !92
  %.not28.i = icmp eq i8 %i.am, 0
end_hunk_2
begin_hunk_3_@_addReplyToBufferOrList:bb.a
  br i1 %.not28.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add i64 %2, %i.an
  %i.ap = add i64 %i.ao, 9
  %i.aq = icmp ugt i64 %i.ap, %i.aj
  br i1 %i.aq, label %_addReplyPayloadToBuffer.exit, label %tryAddPayload.exit.i

end_hunk_3
begin_hunk_4_@_addReplyToBufferOrList:bb.a
  store i64 %2, ptr %i.at, align 1, !tbaa !158
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr readonly align 1 %1, i64 %2, i1 false)
  %3 = load i64, ptr %i.ak, align 8, !tbaa !20
  %4 = add i64 %2, %3
  %5 = add i64 %4, 9
  br label %bb.m

bb.l:                                             ; preds = %bb.j
end_hunk_4
begin_hunk_5_@_addReplyToBufferOrList:bb.a
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr readonly align 1 %1, i64 %i.ax, i1 false)
  %6 = load i64, ptr %i.ak, align 8, !tbaa !87
  %7 = add i64 %6, %i.ax
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %tryAddPayload.exit.i
  %.sink32.i = phi i64 [ %5, %tryAddPayload.exit.i ], [ %7, %bb.l ] ; 3 uses
  %.0.i37 = phi i64 [ %2, %tryAddPayload.exit.i ], [ %i.ax, %bb.l ] ; 2 uses
  store i64 %.sink32.i, ptr %i.ak, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !89
  %i.bd = icmp ult i64 %i.bc, %.sink32.i
  br i1 %i.bd, label %bb.n, label %_addReplyPayloadToBuffer.exit

bb.n:                                             ; preds = %bb.m
  store i64 %.sink32.i, ptr %i.bb, align 8, !tbaa !89
  br label %_addReplyPayloadToBuffer.exit

_addReplyPayloadToBuffer.exit:                    ; preds = %bb.i, %bb.k, %bb.m, %bb.n
end_hunk_5
begin_hunk_6_@_addReplyPayloadToList:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.e, align 8, !tbaa !20
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.k = add i64 %3, %i.j
  %i.l = add i64 %i.k, 9                          ; 2 uses
  %i.m = icmp ugt i64 %i.l, %i.i
  br i1 %i.m, label %bb.h, label %.thread78

end_hunk_6
begin_hunk_7_@addReplyBulk:bb.a
  %i.cf = zext i32 %i.cb to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !152
  %i.ci = add i64 %.0.i20, %i.cf
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = add i64 %i.cj, 2
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !152
  call void @reqresSaveClientReplyOffset(ptr noundef nonnull %0) #30
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
end_hunk_7
begin_hunk_8_@catClientInfoString:bb.a
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !131
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !131
  %2 = sub i64 %i.cg, %i.ci
  %3 = add i64 %2, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
end_hunk_8
begin_hunk_9_@processInlineBuffer:bb.a
  %i.dk = load i32, ptr %1, align 8, !tbaa !272
  %i.dl = add nsw i32 %i.dk, -1
  %i.dm = sext i32 %i.dl to i64
  %i.dn = add i64 %i.dj, %i.dm
  %i.do = add i64 %i.dn, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !316
  br label %bb.ae
end_hunk_9
begin_hunk_10_@processInputBuffer:bb.a
  %i.er = ptrtoint ptr %i.en to i64               ; 4 uses
  %i.es = ptrtoint ptr %i.em to i64
  %i.et = sub i64 %i.er, %i.es
  %1 = sub i64 %.0.i.i, %i.el
  %2 = add i64 %1, -2
  %i.eu = icmp sgt i64 %i.et, %2
  br i1 %i.eu, label %bb.cx, label %bb.au

end_hunk_10
begin_hunk_11_@processInputBuffer:bb.a
.thread.i:                                        ; preds = %authRequired.exit.i, %bb.ay
  %i.fl = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.fm = ptrtoint ptr %i.fl to i64
  %3 = sub i64 %i.er, %i.fm
  %4 = add i64 %3, 2
  store i64 %4, ptr %i.l, align 8, !tbaa !124
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.fn = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.fo = ptrtoint ptr %i.fn to i64
  %5 = sub i64 %i.er, %i.fo
  %6 = add i64 %5, 2
  store i64 %6, ptr %i.l, align 8, !tbaa !124
  %i.fp = icmp slt i64 %i.fd, 1
  br i1 %i.fp, label %processMultibulkBuffer.exit, label %bb.ba
end_hunk_11
begin_hunk_12_@processInputBuffer:bb.a

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.pr.i = phi i32 [ %i.fq, %bb.ba ], [ %.pr.pre.i, %bb.bb ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.0108, i64 24 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !316
  %7 = add i64 %i.fa, %i.gc
  %i.gd = add i64 %7, 3
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !316
  br label %bb.bd

end_hunk_12
begin_hunk_13_@processInputBuffer:bb.a
  %i.hj = ptrtoint ptr %i.hf to i64               ; 4 uses
  %i.hk = ptrtoint ptr %i.go to i64
  %i.hl = sub i64 %i.hj, %i.hk
  %8 = sub i64 %.0164240.i, %i.gn
  %9 = add i64 %8, -2
  %i.hm = icmp sgt i64 %i.hl, %9
  br i1 %i.hm, label %.loopexit.thread.i, label %bb.bo

end_hunk_13
begin_hunk_14_@processInputBuffer:bb.a
.thread219.i:                                     ; preds = %bb.br
  %i.ia = load ptr, ptr %i.k, align 8, !tbaa !123
  %i.ib = ptrtoint ptr %i.ia to i64
  %10 = sub i64 %i.hj, %i.ib
  %11 = add i64 %10, 2
  store i64 %11, ptr %i.l, align 8, !tbaa !124
  br label %bb.ch

end_hunk_14
begin_hunk_15_@processInputBuffer:bb.a
  %i.ka = phi i64 [ %i.ht, %.thread219.i ], [ %i.ht, %bb.bt ], [ %i.ht, %authRequired.exit202.thread.i ], [ %i.ji, %bb.cg ], [ %i.ji, %bb.cc ], [ %i.ji, %bb.cd ], [ %i.ji, %bb.ce ], [ %i.ji, %bb.cf ], [ %i.ji, %bb.cb ] ; 2 uses
  %.1165.i = phi i64 [ %.0164240.i, %.thread219.i ], [ %.0164240.i, %bb.bt ], [ %.0164240.i, %authRequired.exit202.thread.i ], [ %i.jz, %bb.cg ], [ %i.jo, %bb.cc ], [ %i.jr, %bb.cd ], [ %i.ju, %bb.ce ], [ %i.jx, %bb.cf ], [ 0, %bb.cb ]
  store i64 %i.ka, ptr %i.t, align 8, !tbaa !97
  %12 = load i64, ptr %i.gg, align 8, !tbaa !316
  %13 = add i64 %i.hq, %12
  %i.kb = add i64 %13, 3
  store i64 %i.kb, ptr %i.gg, align 8, !tbaa !316
  br label %bb.ck

end_hunk_15
begin_hunk_16_@processInputBuffer:bb.a
  %i.mv = load i64, ptr %i.v, align 8, !tbaa !201
  %i.mw = add i64 %i.mv, %i.ms
  store i64 %i.mw, ptr %i.v, align 8, !tbaa !201
  %14 = load i64, ptr %i.l, align 8, !tbaa !124
  %15 = add i64 %i.ms, %14
  %i.mx = add i64 %15, 2
  store i64 %i.mx, ptr %i.l, align 8, !tbaa !124
  br label %sdslen.exit211.i

end_hunk_16
begin_hunk_17_@getClientMemoryUsage:bb.a
  %i.u = load i64, ptr %i.t, align 8, !tbaa !131
  %i.v = sub nsw i64 %i.s, %i.u
  %i.w = shl i64 %i.v, 6
  %i.x = add i64 %i.m, %i.o
  %2 = sub i64 %i.x, %i.q
  %3 = add i64 %2, %i.w
  %i.y = add i64 %3, 64
  br label %getClientOutputBufferMemoryUsage.exit

bb.d:                                             ; preds = %bb.a
end_hunk_17
begin_hunk_18_@securityWarningCommand:bb.a
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i64 @time(ptr noundef null) #30 ; 2 uses
  %i.d = load i64, ptr @securityWarningCommand.logged_time, align 8, !tbaa !20
  %1 = sub i64 %i.c, %i.d
  %2 = add i64 %1, -61
  %i.e = icmp ult i64 %2, -121
  br i1 %i.e, label %bb.b, label %bb.h

end_hunk_18
begin_hunk_19_@rewriteClientCommandArgument:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.at = sext i32 %.079 to i64                   ; 5 uses
  %3 = sub i32 %i.ar, %1
  %4 = add i32 %3, -2                             ; 2 uses
  %i.au = zext i32 %4 to i64
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %4, 13
end_hunk_19
begin_hunk_20_@getClientOutputBufferMemoryUsage:bb.a
  %i.u = load i64, ptr %i.t, align 8, !tbaa !131
  %i.v = sub nsw i64 %i.s, %i.u
  %i.w = shl i64 %i.v, 6
  %i.x = add i64 %i.m, %i.o
  %1 = sub i64 %i.x, %i.q
  %2 = add i64 %1, %i.w
  %i.y = add i64 %2, 64
  br label %bb.e

bb.d:                                             ; preds = %bb.a
end_hunk_20
begin_hunk_21_@checkClientOutputBufferLimits:bb.a
  %i.u = load i64, ptr %i.t, align 8, !tbaa !131
  %i.v = sub nsw i64 %i.s, %i.u
  %i.w = shl i64 %i.v, 6
  %i.x = add i64 %i.m, %i.o
  %1 = sub i64 %i.x, %i.q
  %2 = add i64 %1, %i.w
  %i.y = add i64 %2, 64
  br label %getClientOutputBufferMemoryUsage.exit

bb.d:                                             ; preds = %bb.a
end_hunk_21
begin_hunk_22_@processSentDataInEncodedBuffer:bb.a
sdslen.exit.us:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0.i.us = phi i64 [ %i.v, %bb.e ], [ %i.ag, %bb.i ], [ %i.ae, %bb.h ], [ %i.ab, %bb.g ], [ %i.y, %bb.f ], [ 0, %bb.d ]
  %i.ah = load i64, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ai = add i64 %.0.i.us, %i.o
  %5 = sub i64 %i.ai, %i.ah
  %6 = add i64 %5, 2                              ; 2 uses
  %.not56.us = icmp slt i64 %i.g, %6
  br i1 %.not56.us, label %.thread, label %bb.j

end_hunk_22
begin_hunk_23_@processSentDataInEncodedBuffer:bb.a
sdslen.exit:                                      ; preds = %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  %.0.i = phi i64 [ %i.cl, %bb.w ], [ %i.ca, %bb.s ], [ %i.cd, %bb.t ], [ %i.cg, %bb.u ], [ %i.cj, %bb.v ], [ 0, %bb.r ]
  %i.cm = load i64, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.cn = add i64 %.0.i, %i.bt
  %7 = sub i64 %i.cn, %i.cm
  %8 = add i64 %7, 2                              ; 2 uses
  %.not56 = icmp slt i64 %i.bf, %8
  br i1 %.not56, label %.thread, label %bb.x

end_hunk_23
