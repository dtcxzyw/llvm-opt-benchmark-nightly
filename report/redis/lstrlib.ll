begin_hunk_0_@match:bb.a

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.o = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.n, ptr noundef nonnull @.str.21) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
end_hunk_0
begin_hunk_1_@match:bb.a
  store i64 -2, ptr %i.r, align 8, !tbaa !33
  %i.s = add nsw i32 %i.l, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !30
  %i.t = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.k) ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %start_capture.exit

end_hunk_1
begin_hunk_2_@match:bb.a

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.aa = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.z, ptr noundef nonnull @.str.21) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_2
begin_hunk_3_@match:bb.a
  store i64 -1, ptr %i.ad, align 8, !tbaa !33
  %i.ae = add nsw i32 %i.x, 1
  store i32 %i.ae, ptr %i.c, align 8, !tbaa !30
  %i.af = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.h) ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %start_capture.exit

end_hunk_3
begin_hunk_4_@match:bb.a

bb.m:                                             ; preds = %bb.n
  %i.an = icmp sgt i32 %i.at, 0
  br i1 %i.an, label %bb.n, label %._crit_edge, !llvm.loop !44

bb.n:                                             ; preds = %.lr.ph526, %bb.m
  %indvars.iv.i525 = phi i64 [ %i.am, %.lr.ph526 ], [ %i.ao, %bb.m ]
end_hunk_4
begin_hunk_5_@match:bb.a
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !33
  %i.as = icmp eq i64 %i.ar, -1
  %i.at = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.as, label %capture_to_close.exit, label %bb.m, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.m, %bb.l
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !26
end_hunk_5
begin_hunk_6_@match:bb.a
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !33
  %i.bd = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.aj) ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.o, label %start_capture.exit

end_hunk_6
begin_hunk_7_@match:bb.a
  %.1.i = phi i32 [ %i.by, %bb.v ], [ %spec.select.i, %bb.w ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.cc, %i.bt
  br i1 %exitcond.not.i, label %start_capture.exit, label %.lr.ph.i, !llvm.loop !45

bb.y:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %.02029.i, i64 2
end_hunk_7
begin_hunk_8_@match:bb.a
  %.2.i = phi ptr [ %i.cz, %bb.ah ], [ %spec.select17.i, %bb.ai ] ; 3 uses
  %i.dd = load i8, ptr %.2.i, align 1, !tbaa !10  ; 2 uses
  %.not16.i = icmp eq i8 %i.dd, 93
  br i1 %.not16.i, label %bb.ak, label %bb.af, !llvm.loop !46

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
end_hunk_8
begin_hunk_9_@match:bb.a
  %.2.i99 = phi ptr [ %i.du, %bb.an ], [ %i.dz, %bb.ar ], [ %i.dz, %bb.aq ], [ %i.dr, %bb.as ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.2.i99, i64 1 ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %i.dl
  br i1 %i.eg, label %.lr.ph.i98, label %matchbracketclass.exit, !llvm.loop !47

matchbracketclass.exit:                           ; preds = %bb.an, %bb.ar, %bb.as, %bb.at
  %.022.in.i = phi i1 [ %not..i, %bb.an ], [ %i.dn, %bb.at ], [ %not..i, %bb.ar ], [ %not..i, %bb.as ]
end_hunk_9
begin_hunk_10_@match:bb.a
  %.2.i108 = phi ptr [ %i.em, %bb.av ], [ %i.er, %bb.az ], [ %i.er, %bb.ay ], [ %i.ej, %bb.ba ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.2.i108, i64 1 ; 2 uses
  %i.ew = icmp ult ptr %i.ev, %i.dl
  br i1 %i.ew, label %.lr.ph.i106, label %matchbracketclass.exit112, !llvm.loop !47

matchbracketclass.exit112:                        ; preds = %bb.av, %bb.az, %bb.ba, %bb.bb
  %.022.in.i103 = phi i1 [ %not..i, %bb.av ], [ %i.dn, %bb.bb ], [ %not..i, %bb.az ], [ %not..i, %bb.ba ]
end_hunk_10
begin_hunk_11_@match:bb.a
  %.2.i118 = phi ptr [ %i.gv, %bb.br ], [ %spec.select17.i122, %bb.bs ] ; 3 uses
  %i.gz = load i8, ptr %.2.i118, align 1, !tbaa !10 ; 2 uses
  %.not16.i119 = icmp eq i8 %i.gz, 93
  br i1 %.not16.i119, label %bb.bu, label %bb.bp, !llvm.loop !46

bb.bu:                                            ; preds = %bb.bt
  %i.ha = getelementptr inbounds nuw i8, ptr %.2.i118, i64 1
end_hunk_11
begin_hunk_12_@match:bb.a
  %.2.i.i = phi ptr [ %i.ht, %bb.by ], [ %i.hy, %bb.cc ], [ %i.hy, %bb.cb ], [ %i.hq, %bb.cd ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 1 ; 2 uses
  %i.id = icmp ult ptr %i.ic, %i.hl
  br i1 %i.id, label %.lr.ph.i.i, label %singlematch.exit, !llvm.loop !47

bb.cf:                                            ; preds = %bb.bv
  %i.ie = icmp eq i8 %i.he, %i.hg
end_hunk_12
begin_hunk_13_@match:bb.a

.preheader217:                                    ; preds = %singlematch.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %.015.i120, i64 1 ; 2 uses
  %i.ii = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %.075.ph.ph, ptr noundef nonnull %i.ih) ; 2 uses
  %.not.i141266 = icmp eq ptr %i.ii, null
  br i1 %.not.i141266, label %.lr.ph, label %start_capture.exit

end_hunk_13
begin_hunk_14_@match:bb.a
  %.2.i.i154 = phi ptr [ %i.je, %bb.cm ], [ %i.jj, %bb.cq ], [ %i.jj, %bb.cp ], [ %i.jb, %bb.cr ] ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.2.i.i154, i64 1 ; 2 uses
  %i.jo = icmp ult ptr %i.jn, %i.il
  br i1 %i.jo, label %.lr.ph.i.i152, label %matchbracketclass.exit.i147.loopexit, !llvm.loop !47

matchbracketclass.exit.i147.loopexit:             ; preds = %bb.cm, %bb.cq, %bb.cr, %bb.cs
  %.022.in.i.i148.ph = phi i1 [ %not..i.i146, %bb.cm ], [ %not..i.i146, %bb.cr ], [ %not..i.i146, %bb.cq ], [ %i.iy, %bb.cs ]
end_hunk_14
begin_hunk_15_@match:bb.a
singlematch.exit158.thread:                       ; preds = %matchbracketclass.exit.i147.loopexit, %bb.ck, %bb.ct, %bb.cj, %singlematch.exit158
  %i.jp = add nuw i64 %.018.i275, 1               ; 2 uses
  %exitcond355.not = icmp eq i64 %i.jp, %i.im
  br i1 %exitcond355.not, label %.critedge.i, label %bb.cj, !llvm.loop !48

.critedge.i:                                      ; preds = %singlematch.exit158.thread, %singlematch.exit158, %bb.ct, %bb.ck, %matchbracketclass.exit.i147.loopexit, %.preheader
  %.018.i.lcssa = phi i64 [ 0, %.preheader ], [ %.018.i275, %matchbracketclass.exit.i147.loopexit ], [ %.018.i275, %bb.ck ], [ %.018.i275, %bb.ct ], [ %.018.i275, %singlematch.exit158 ], [ %i.im, %singlematch.exit158.thread ] ; 2 uses
end_hunk_15
begin_hunk_16_@match:bb.a
bb.cu:                                            ; preds = %.lr.ph532
  %i.js = add nsw i64 %.119.i127531, -1
  %i.jt = icmp sgt i64 %.119.i127531, 0
  br i1 %i.jt, label %.lr.ph532, label %start_capture.exit, !llvm.loop !49

.lr.ph532:                                        ; preds = %.critedge.i, %bb.cu
  %.119.i127531 = phi i64 [ %i.js, %bb.cu ], [ %.018.i.lcssa, %.critedge.i ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.075.ph.ph, i64 %.119.i127531
  %i.jv = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef %i.ju, ptr noundef nonnull %i.jq) ; 2 uses
  %.not23.i = icmp eq ptr %i.jv, null
  br i1 %.not23.i, label %bb.cu, label %.start_capture.exit.loopexit_crit_edge, !llvm.loop !49

bb.cv:                                            ; preds = %singlematch.exit
  %.lcssa328330 = ptrtoint ptr %i.hc to i64
end_hunk_16
begin_hunk_17_@match:bb.a
  %.2.i.i168 = phi ptr [ %i.kq, %bb.da ], [ %i.kv, %bb.de ], [ %i.kv, %bb.dd ], [ %i.kn, %bb.df ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.2.i.i168, i64 1 ; 2 uses
  %i.la = icmp ult ptr %i.kz, %i.jz
  br i1 %i.la, label %.lr.ph.i.i166, label %matchbracketclass.exit.i161.loopexit, !llvm.loop !47

matchbracketclass.exit.i161.loopexit:             ; preds = %bb.da, %bb.de, %bb.df, %bb.dg
  %.022.in.i.i162.ph = phi i1 [ %not..i.i160, %bb.da ], [ %not..i.i160, %bb.df ], [ %not..i.i160, %bb.de ], [ %i.kk, %bb.dg ]
end_hunk_17
begin_hunk_18_@match:bb.a
singlematch.exit172.thread:                       ; preds = %matchbracketclass.exit.i161.loopexit, %bb.cy, %bb.dh, %bb.cx, %singlematch.exit172
  %i.lb = add nuw i64 %.018.i131271, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.lb, %i.kb
  br i1 %exitcond.not, label %.critedge.i132, label %bb.cx, !llvm.loop !48

.critedge.i132:                                   ; preds = %singlematch.exit172.thread, %singlematch.exit172, %bb.dh, %bb.cy, %matchbracketclass.exit.i161.loopexit, %bb.cw
  %.018.i131.lcssa = phi i64 [ 0, %bb.cw ], [ %.018.i131271, %matchbracketclass.exit.i161.loopexit ], [ %.018.i131271, %bb.cy ], [ %.018.i131271, %bb.dh ], [ %.018.i131271, %singlematch.exit172 ], [ %i.kb, %singlematch.exit172.thread ] ; 2 uses
end_hunk_18
begin_hunk_19_@match:bb.a
bb.di:                                            ; preds = %.lr.ph528
  %i.le = add nsw i64 %.119.i133527, -1
  %i.lf = icmp sgt i64 %.119.i133527, 0
  br i1 %i.lf, label %.lr.ph528, label %start_capture.exit, !llvm.loop !49

.lr.ph528:                                        ; preds = %.critedge.i132, %bb.di
  %.119.i133527 = phi i64 [ %i.le, %bb.di ], [ %.018.i131.lcssa, %.critedge.i132 ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.119.i133527
  %i.lh = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.lc) ; 2 uses
  %.not23.i136 = icmp eq ptr %i.lh, null
  br i1 %.not23.i136, label %bb.di, label %.start_capture.exit.loopexit475_crit_edge, !llvm.loop !49

bb.dj:                                            ; preds = %.lr.ph, %singlematch.exit186.thread
  %.013.i267 = phi ptr [ %.075.ph.ph, %.lr.ph ], [ %i.mj, %singlematch.exit186.thread ] ; 3 uses
end_hunk_19
begin_hunk_20_@match:bb.a
  %.2.i.i182 = phi ptr [ %i.ly, %bb.dn ], [ %i.md, %bb.dr ], [ %i.md, %bb.dq ], [ %i.lv, %bb.ds ] ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.2.i.i182, i64 1 ; 2 uses
  %i.mi = icmp ult ptr %i.mh, %i.ij
  br i1 %i.mi, label %.lr.ph.i.i180, label %matchbracketclass.exit.i175.loopexit, !llvm.loop !47

matchbracketclass.exit.i175.loopexit:             ; preds = %bb.dn, %bb.dr, %bb.ds, %bb.dt
  %.022.in.i.i176.ph = phi i1 [ %not..i.i174, %bb.dn ], [ %not..i.i174, %bb.ds ], [ %not..i.i174, %bb.dr ], [ %i.ls, %bb.dt ]
end_hunk_20
begin_hunk_21_@match:bb.a

singlematch.exit186.thread:                       ; preds = %matchbracketclass.exit.i175.loopexit, %bb.dl, %bb.du, %bb.dk, %singlematch.exit186
  %i.mj = getelementptr inbounds nuw i8, ptr %.013.i267, i64 1 ; 2 uses
  %i.mk = tail call fastcc ptr @match(ptr noundef nonnull %0, ptr noundef nonnull %i.mj, ptr noundef nonnull %i.ih) ; 2 uses
  %.not.i141 = icmp eq ptr %i.mk, null
  br i1 %.not.i141, label %bb.dj, label %start_capture.exit

end_hunk_21
begin_hunk_22_@match:bb.a
  br label %.outer.outer.backedge

.start_capture.exit.loopexit_crit_edge:           ; preds = %.lr.ph532
  br label %start_capture.exit, !llvm.loop !49

.start_capture.exit.loopexit475_crit_edge:        ; preds = %.lr.ph528
  br label %start_capture.exit, !llvm.loop !49

start_capture.exit:                               ; preds = %bb.ch, %bb.dv, %bb.bh, %check_capture.exit.i, %bb.u, %bb.t, %bb.am, %matchbracketclass.exit, %matchbracketclass.exit112, %bb.b, %bb.x, %singlematch.exit186.thread, %singlematch.exit186, %bb.dj, %bb.du, %bb.dl, %matchbracketclass.exit.i175.loopexit, %bb.di, %bb.cu, %.critedge.i132, %.start_capture.exit.loopexit475_crit_edge, %.critedge.i, %.start_capture.exit.loopexit_crit_edge, %.preheader217, %bb.cv, %bb.o, %capture_to_close.exit, %bb.k, %bb.j, %bb.g, %bb.f, %bb.bk
  %.4 = phi ptr [ null, %matchbracketclass.exit112 ], [ null, %bb.di ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.cu ], [ %i.gi, %bb.bk ], [ %i.ii, %.preheader217 ], [ null, %bb.cv ], [ %i.t, %bb.f ], [ %i.af, %bb.j ], [ %i.bd, %capture_to_close.exit ], [ null, %bb.o ], [ null, %matchbracketclass.exit.i175.loopexit ], [ null, %bb.x ], [ null, %.critedge.i ], [ %i.jv, %.start_capture.exit.loopexit_crit_edge ], [ %i.lh, %.start_capture.exit.loopexit475_crit_edge ], [ null, %.critedge.i132 ], [ null, %bb.dl ], [ null, %bb.du ], [ null, %bb.dj ], [ null, %singlematch.exit186 ], [ %i.mk, %singlematch.exit186.thread ], [ %.075.ph.ph, %bb.b ], [ null, %bb.am ], [ null, %matchbracketclass.exit ], [ %i.io, %bb.ch ], [ null, %bb.dv ], [ null, %bb.bh ], [ null, %check_capture.exit.i ], [ null, %bb.u ], [ null, %bb.t ]
end_hunk_22
begin_hunk_23_@gmatch_aux:bb.a
push_onecapture.exit:                             ; preds = %bb.i, %bb.l, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.w
  br i1 %exitcond.not.i, label %push_captures.exit.thread29, label %.lr.ph.i, !llvm.loop !50

push_captures.exit.thread:                        ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %.02436, i64 1 ; 2 uses
  %i.bh = load ptr, ptr %i.g, align 8, !tbaa !29
  %.not = icmp ugt ptr %i.bg, %i.bh
  br i1 %.not, label %push_captures.exit.thread29, label %bb.b, !llvm.loop !52

push_captures.exit.thread29:                      ; preds = %push_captures.exit.thread, %push_onecapture.exit, %push_onecapture.exit.peel, %bb.a, %bb.c
  %.2 = phi i32 [ %i.q, %bb.c ], [ 0, %bb.a ], [ 1, %push_onecapture.exit.peel ], [ %spec.select.i, %push_onecapture.exit ], [ 0, %push_captures.exit.thread ]
end_hunk_23
begin_hunk_24_@llvm.umin.i64
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.peeled.count", i32 1}
!52 = distinct !{!52, !12}
end_hunk_24
