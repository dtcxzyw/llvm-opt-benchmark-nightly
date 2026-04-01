begin_hunk_0

bb.i:                                             ; preds = %bb.h
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !1260
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.am = call fastcc i32 @walkExprTree(ptr noundef nonnull %i.x, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %5) ; 0 uses
  %i.an = load i32, ptr %i.af, align 8, !tbaa !1203
  %i.ao = load ptr, ptr %5, align 8, !tbaa !1255
end_hunk_0
begin_hunk_1
  %i.ar = sub nsw i32 %i.aq, %i.an
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !1260
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !1261
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.j, label %bb.k

end_hunk_1
begin_hunk_2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ay = load i8, ptr %i.al, align 1, !tbaa !1262
  %.not.i143 = icmp eq i8 %i.ay, 0
  br i1 %.not.i143, label %sqlite3ExprResolveNames.exit, label %bb.l

end_hunk_2
begin_hunk_3

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !1260
  %i.fr = load i8, ptr %i.ey, align 1, !tbaa !1262
  store i8 0, ptr %i.ey, align 1, !tbaa !1262
  %i.fs = call fastcc i32 @walkExprTree(ptr noundef nonnull %i.fi, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %5) ; 0 uses
  %i.ft = load i32, ptr %i.fk, align 8, !tbaa !1203
  %i.fu = load ptr, ptr %5, align 8, !tbaa !1255
end_hunk_3
begin_hunk_4
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !1260
  %i.fx = sub nsw i32 %i.fw, %i.ft
  store i32 %i.fx, ptr %i.fv, align 8, !tbaa !1260
  %i.fy = load i32, ptr %i.ez, align 4, !tbaa !1261
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %bb.ae, label %bb.af

end_hunk_4
begin_hunk_5
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gd = load i8, ptr %i.ey, align 1, !tbaa !1262
  %.not.i494 = icmp eq i8 %i.gd, 0
  br i1 %.not.i494, label %bb.ah, label %bb.ag

end_hunk_5
begin_hunk_6
  br i1 %.not21.i, label %sqlite3ExprResolveNames.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.ey, align 1, !tbaa !1262
  br label %sqlite3ExprResolveNames.exit

sqlite3ExprResolveNames.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag
end_hunk_6
begin_hunk_7
bb.d:                                             ; preds = %bb.b
  store i32 %i.g, ptr %i.e, align 8, !tbaa !1260
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1262
  store i8 0, ptr %i.i, align 1, !tbaa !1262
  %i.k = tail call fastcc i32 @walkExprTree(ptr noundef nonnull %1, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %0) ; 0 uses
  %i.l = load i32, ptr %i.b, align 8, !tbaa !1203
  %i.m = load ptr, ptr %0, align 8, !tbaa !1255
end_hunk_7
begin_hunk_8
  %i.p = sub nsw i32 %i.o, %i.l
  store i32 %i.p, ptr %i.n, align 8, !tbaa !1260
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1261
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

end_hunk_8
begin_hunk_9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = load i8, ptr %i.i, align 1, !tbaa !1262
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.g

end_hunk_9
begin_hunk_10
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.i, align 1, !tbaa !1262
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
end_hunk_10
begin_hunk_11
  store i32 %.sink.i, ptr %i.bh, align 8, !tbaa !246
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.304, ptr noundef nonnull %i.ar)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !1261
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !1261
  br label %bb.u

bb.u:                                             ; preds = %sqlite3AuthCheck.exit, %bb.t
end_hunk_11
begin_hunk_12
.thread151:                                       ; preds = %bb.v
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.305, i32 noundef %i.ak, ptr noundef %i.ah)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !1261
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !1261
  br label %.critedge

.thread167:                                       ; preds = %bb.l
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.306, i32 noundef %i.ak, ptr noundef %i.ah)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !1261
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !1261
  br label %.critedge

bb.w:                                             ; preds = %sqlite3AuthCheck.exit.thread, %bb.v
end_hunk_12
begin_hunk_13
bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.307, i32 noundef %i.ak, ptr noundef %i.ah)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1261
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !1261
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
end_hunk_13
begin_hunk_14
bb.z:                                             ; preds = %bb.y
  store i8 -106, ptr %1, align 8, !tbaa !1200
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.bw, align 1, !tbaa !1262
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bx, align 8, !tbaa !1416
  br label %.critedge
end_hunk_14
begin_hunk_15
  %.not120155 = phi i1 [ true, %.thread151 ], [ true, %bb.y ], [ false, %bb.z ], [ true, %.thread167 ]
  %.1100154 = phi i32 [ 0, %.thread151 ], [ 0, %bb.y ], [ 1, %bb.z ], [ 0, %.thread167 ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !1261
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = icmp sgt i32 %i.y, 0
  %i.cc = and i1 %i.ca, %i.cb
end_hunk_15
begin_hunk_16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1101
  %i.ci = tail call fastcc i32 @walkExprTree(ptr noundef %i.ch, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %0) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i32, ptr %i.by, align 4, !tbaa !1261
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = icmp samesign ult i64 %indvars.iv.next, %i.ce
  %i.cm = select i1 %i.ck, i1 %i.cl, i1 false
end_hunk_16
begin_hunk_17

bb.da:                                            ; preds = %bb.cy, %bb.cz, %bb.cw
  %i.vs = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !1261
  %i.vu = add nsw i32 %i.vt, 1
  store i32 %i.vu, ptr %i.vs, align 4, !tbaa !1261
  br label %.thread800

.thread800:                                       ; preds = %.thread505, %sqlite3IsRowid.exit.thread, %bb.da, %bb.cv
end_hunk_17
begin_hunk_18
  %i.w = sub nsw i32 %i.v, %i.s
  store i32 %i.w, ptr %i.u, align 8, !tbaa !1260
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1261
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.h

end_hunk_18
begin_hunk_19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = load i8, ptr %i.q, align 1, !tbaa !1262 ; 2 uses
  %.not.i = icmp eq i8 %i.ad, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %.pre119 = load i16, ptr %.phi.trans.insert, align 2, !tbaa !1223 ; 2 uses
end_hunk_19
begin_hunk_20
bb.k:                                             ; preds = %bb.j
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !1260
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 33 ; 3 uses
  store i8 0, ptr %i.as, align 1, !tbaa !1262
  %i.at = call fastcc i32 @walkExprTree(ptr noundef nonnull %i.ak, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %3) ; 0 uses
  %i.au = load i32, ptr %i.am, align 8, !tbaa !1203
  %i.av = load ptr, ptr %3, align 8, !tbaa !1255  ; 2 uses
end_hunk_20
begin_hunk_21
  %i.ay = sub nsw i32 %i.ax, %i.au
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !1260
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !1261
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.m

end_hunk_21
begin_hunk_22
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = load i8, ptr %i.as, align 1, !tbaa !1262 ; 2 uses
  %.not.i110 = icmp eq i8 %i.bf, 0
  br i1 %.not.i110, label %bb.o, label %bb.n

end_hunk_22
begin_hunk_23
  br i1 %.not21.i, label %sqlite3ExprResolveNames.exit111, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.as, align 1, !tbaa !1262
  br label %sqlite3ExprResolveNames.exit111

sqlite3ExprResolveNames.exit111:                  ; preds = %bb.n, %bb.o, %bb.p
end_hunk_23
begin_hunk_24

bb.s:                                             ; preds = %bb.r
  store i32 %i.ck, ptr %i.ci, align 8, !tbaa !1260
  store i8 0, ptr %i.bx, align 1, !tbaa !1262
  %i.cm = call fastcc i32 @walkExprTree(ptr noundef nonnull %i.ce, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %3) ; 0 uses
  %i.cn = load i32, ptr %i.cg, align 8, !tbaa !1203
  %i.co = load ptr, ptr %3, align 8, !tbaa !1255  ; 2 uses
end_hunk_24
begin_hunk_25
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !1260
  %i.cr = sub nsw i32 %i.cq, %i.cn
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !1260
  %i.cs = load i32, ptr %i.by, align 4, !tbaa !1261
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %bb.t, label %bb.u

end_hunk_25
begin_hunk_26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cx = load i8, ptr %i.bx, align 1, !tbaa !1262 ; 2 uses
  %.not.i76 = icmp eq i8 %i.cx, 0
  br i1 %.not.i76, label %bb.w, label %bb.v

end_hunk_26
begin_hunk_27
  br i1 %.not21.i79, label %sqlite3ExprResolveNames.exit80, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.bx, align 1, !tbaa !1262
  br label %sqlite3ExprResolveNames.exit80

sqlite3ExprResolveNames.exit80:                   ; preds = %bb.v, %bb.w, %bb.x
end_hunk_27
begin_hunk_28
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !1260
  %i.cx = sub nsw i32 %i.cw, %i.ct
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !1260
  %i.cy = load i32, ptr %i.cq, align 4, !tbaa !1261
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.u, label %bb.v

end_hunk_28
begin_hunk_29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dd = load i8, ptr %i.cr, align 1, !tbaa !1262 ; 2 uses
  %.not.i50 = icmp eq i8 %i.dd, 0
  br i1 %.not.i50, label %sqlite3ExprResolveNames.exit, label %bb.w

end_hunk_29
begin_hunk_30

bb.ah:                                            ; preds = %bb.ag
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !1260
  %i.fw = load i8, ptr %i.q, align 1, !tbaa !1262
  store i8 0, ptr %i.q, align 1, !tbaa !1262
  %i.fx = call fastcc i32 @walkExprTree(ptr noundef nonnull %i.fm, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %16) ; 0 uses
  %i.fy = load i32, ptr %i.fp, align 8, !tbaa !1203
  %i.fz = load ptr, ptr %16, align 8, !tbaa !1255
end_hunk_30
begin_hunk_31
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !1260
  %i.gc = sub nsw i32 %i.gb, %i.fy
  store i32 %i.gc, ptr %i.ga, align 8, !tbaa !1260
  %i.gd = load i32, ptr %i.r, align 4, !tbaa !1261
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %bb.ai, label %bb.aj

end_hunk_31
begin_hunk_32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gi = load i8, ptr %i.q, align 1, !tbaa !1262
  %.not.i89 = icmp eq i8 %i.gi, 0
  br i1 %.not.i89, label %bb.al, label %bb.ak

end_hunk_32
begin_hunk_33
  br i1 %.not21.i, label %sqlite3ExprResolveNames.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i8 1, ptr %i.q, align 1, !tbaa !1262
  br label %sqlite3ExprResolveNames.exit

sqlite3ExprResolveNames.exit:                     ; preds = %bb.ak, %bb.al, %bb.am
end_hunk_33
begin_hunk_34
bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %i.f, align 8, !tbaa !1260
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 4 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !1262
  store i8 0, ptr %i.j, align 1, !tbaa !1262
  %i.l = tail call fastcc i32 @walkExprTree(ptr noundef nonnull %1, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %0) ; 0 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !1203
  %i.n = load ptr, ptr %0, align 8, !tbaa !1255
end_hunk_34
begin_hunk_35
  %i.q = sub nsw i32 %i.p, %i.m
  store i32 %i.q, ptr %i.o, align 8, !tbaa !1260
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1261
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

end_hunk_35
begin_hunk_36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load i8, ptr %i.j, align 1, !tbaa !1262
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.h, label %bb.g

end_hunk_36
begin_hunk_37
  br i1 %.not21.i, label %sqlite3ExprResolveNames.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.j, align 1, !tbaa !1262
  br label %sqlite3ExprResolveNames.exit

sqlite3ExprResolveNames.exit:                     ; preds = %bb.g, %bb.h, %bb.i
end_hunk_37
begin_hunk_38
!1258 = !{!1256, !79, i64 8}
!1259 = !{!1256, !6, i64 34}
!1260 = !{!241, !5, i64 344}
!1261 = !{!1256, !5, i64 28}
!1262 = !{!1256, !6, i64 33}
!1263 = !{!1264, !6, i64 0}
!1264 = !{!"SelectDest", !6, i64 0, !6, i64 1, !5, i64 4, !5, i64 8}
!1265 = !{!1264, !5, i64 4}
end_hunk_38
