Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cfileio?download=true
inline.NumInlined: 40
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ffifile2:bb.a
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0658 = phi ptr [ %spec.select916, %bb.bw ], [ %spec.select, %bb.bv ] ; 2 uses
  %i.bf = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0658, i32 noundef 40) #29 ; 4 uses
  %i.bg = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0658, i32 noundef 91) #29 ; 6 uses
  %.not839 = icmp eq ptr %i.bf, null
  br i1 %.not839, label %.loopexit998, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.bh = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bf, i32 noundef 41) #29 ; 2 uses
  %.not1092 = icmp eq ptr %i.bh, null
  br i1 %.not1092, label %.loopexit998, label %.preheader997

.preheader997:                                    ; preds = %bb.by, %bb.ca
  %.06641033 = phi ptr [ %i.bm, %bb.ca ], [ %i.bh, %bb.by ]
  %.16711032 = phi ptr [ %i.bl, %bb.ca ], [ %i.bf, %bb.by ] ; 3 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.preheader997, %bb.bz
  %.1665 = phi ptr [ %i.bi, %bb.bz ], [ %.06641033, %.preheader997 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.1665, i64 1 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !17
  switch i8 %i.bj, label %bb.ca [
    i8 32, label %bb.bz
    i8 0, label %.loopexit998
    i8 91, label %.loopexit998
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.bk = getelementptr inbounds nuw i8, ptr %.16711032, i64 1
  %i.bl = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bk, i32 noundef 40) #29 ; 3 uses
  %i.bm = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bi, i32 noundef 41) #29 ; 2 uses
  %i.bn = icmp ne ptr %i.bm, null
  %i.bo = icmp ne ptr %i.bl, null
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.preheader997, label %.loopexit998, !llvm.loop !89

.loopexit998:                                     ; preds = %bb.ca, %bb.bz, %bb.bz, %bb.by, %bb.bx
  %.2672 = phi ptr [ %i.bf, %bb.by ], [ null, %bb.bx ], [ %.16711032, %bb.bz ], [ %.16711032, %bb.bz ], [ %i.bl, %bb.ca ] ; 5 uses
  %i.bq = icmp eq ptr %.2672, %i.bg
  br i1 %i.bq, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.loopexit998
  %i.br = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %.0676924) #28 ; 0 uses
  br label %bb.cm

bb.cc:                                            ; preds = %.loopexit998
  %.not840 = icmp eq ptr %i.bg, null
  br i1 %.not840, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.not841 = icmp ne ptr %.2672, null
  %i.bs = icmp ult ptr %.2672, %i.bg
  %or.cond911 = select i1 %.not841, i1 %i.bs, i1 false
  br i1 %or.cond911, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.bt = ptrtoint ptr %.2672 to i64
  %i.bu = ptrtoint ptr %.0676924 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull %.0676924, i64 noundef %i.bv) #28 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.2672, i64 1 ; 3 uses
  %i.by = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bx, i32 noundef 41) #29 ; 3 uses
  %.not842 = icmp eq ptr %i.by, null
  br i1 %.not842, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  tail call void @free(ptr noundef nonnull %i.m) #28
  store i32 125, ptr %10, align 4, !tbaa !14
  br label %bb.ig

bb.cg:                                            ; preds = %bb.ce
  br i1 %.not799, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 1024
  br i1 %i.cc, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  tail call void @free(ptr noundef nonnull %i.m) #28
  store i32 125, ptr %10, align 4, !tbaa !14
  br label %bb.ig

bb.cj:                                            ; preds = %bb.ch
  %i.cd = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull %i.bx, i64 noundef %i.cb) #28 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cg
  %i.ce = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.by, i32 noundef 91) #29
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cd
  %i.cf = ptrtoint ptr %i.bg to i64
  %i.cg = ptrtoint ptr %.0676924 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull %.0676924, i64 noundef %i.ch) #28 ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl, %bb.cb
  %.1667 = phi ptr [ %i.bg, %bb.cb ], [ %i.ce, %bb.ck ], [ %i.bg, %bb.cl ] ; 27 uses
  %i.cj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #29 ; 2 uses
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = icmp sgt i32 %i.ck, 1
  br i1 %i.cl, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.cm
  %i.cm = and i64 %i.cj, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cn
  %indvars.iv = phi i64 [ %i.cm, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.cn ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  %i.cp = icmp eq i8 %i.co, 32
  br i1 %i.cp, label %bb.cn, label %.critedge

bb.cn:                                            ; preds = %.lr.ph
  store i8 0, ptr %i.cn, align 1, !tbaa !17
  %i.cq = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.cq, label %.lr.ph, label %.critedge, !llvm.loop !90

.critedge:                                        ; preds = %.lr.ph, %bb.cn, %bb.cm
  br i1 %.not799, label %.critedge2, label %bb.co

bb.co:                                            ; preds = %.critedge
  %i.cr = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #29 ; 2 uses
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %.lr.ph1035.preheader, label %.critedge2

.lr.ph1035.preheader:                             ; preds = %bb.co
  %i.cu = and i64 %i.cr, 2147483647
  br label %.lr.ph1035

.lr.ph1035:                                       ; preds = %.lr.ph1035.preheader, %bb.cp
  %indvars.iv1130 = phi i64 [ %i.cu, %.lr.ph1035.preheader ], [ %indvars.iv.next1131, %bb.cp ] ; 2 uses
  %indvars.iv.next1131 = add nsw i64 %indvars.iv1130, -1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next1131 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  %i.cx = icmp eq i8 %i.cw, 32
  br i1 %i.cx, label %bb.cp, label %.critedge2

bb.cp:                                            ; preds = %.lr.ph1035
  store i8 0, ptr %i.cv, align 1, !tbaa !17
  %i.cy = icmp samesign ugt i64 %indvars.iv1130, 2
  br i1 %i.cy, label %.lr.ph1035, label %.critedge2, !llvm.loop !91

.critedge2:                                       ; preds = %bb.cp, %.lr.ph1035, %bb.co, %.critedge
  %i.cz = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) @.str.359) #29 ; 2 uses
  %.not843 = icmp eq ptr %i.cz, null
  br i1 %.not843, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %.critedge2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i8, ptr %i.da, align 1, !tbaa !17
  %i.dc = icmp eq i8 %i.db, 0
  %or.cond27 = and i1 %i.e, %i.dc
  br i1 %or.cond27, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.298, i64 11, i1 false) #28
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %.critedge2
  %i.dd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #29 ; 2 uses
  %i.de = trunc i64 %i.dd to i32                  ; 6 uses
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  %i.dg = icmp sgt i32 %i.de, 0                   ; 2 uses
  br i1 %i.dg, label %.lr.ph1038.preheader, label %.thread930

.lr.ph1038.preheader:                             ; preds = %bb.cs
  %i.dh = and i64 %i.dd, 2147483647
  br label %.lr.ph1038

.lr.ph1038:                                       ; preds = %.lr.ph1038.preheader, %bb.ct
  %indvars.iv1133 = phi i64 [ %i.dh, %.lr.ph1038.preheader ], [ %indvars.iv.next1134, %bb.ct ] ; 2 uses
  %.06961037 = phi i32 [ %i.df, %.lr.ph1038.preheader ], [ %i.dm, %bb.ct ] ; 6 uses
  %i.di = zext nneg i32 %.06961037 to i64         ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.dl = icmp eq i8 %i.dk, 43
  br i1 %i.dl, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph1038
  %i.dm = add nsw i32 %.06961037, -1
  %i.dn = icmp sgt i32 %.06961037, 0
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -1
  br i1 %i.dn, label %.lr.ph1038, label %.thread930, !llvm.loop !92

bb.cu:                                            ; preds = %.lr.ph1038
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.di
  %.not981 = icmp eq i32 %.06961037, 0
  br i1 %.not981, label %.thread930, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.dp = sub nsw i32 %i.de, %.06961037           ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 7
  br i1 %i.dq, label %bb.cw, label %.thread930

bb.cw:                                            ; preds = %bb.cv
  %i.dr = add nuw nsw i32 %.06961037, 1           ; 3 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ds
  %i.du = icmp slt i32 %i.dr, %i.de
  br i1 %i.du, label %.lr.ph1040, label %._crit_edge

.lr.ph1040:                                       ; preds = %bb.cw
  %i.dv = tail call ptr @__ctype_b_loc() #32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !68
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph1040, %bb.cy
  %indvars.iv1136 = phi i64 [ %indvars.iv1133, %.lr.ph1040 ], [ %indvars.iv.next1137, %bb.cy ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv1136
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !17
  %i.dz = sext i8 %i.dy to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !70
  %i.ec = and i16 %i.eb, 2048
  %.not844 = icmp eq i16 %i.ec, 0
  br i1 %.not844, label %._crit_edge.loopexit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %indvars.iv.next1137 = add nuw nsw i64 %indvars.iv1136, 1 ; 2 uses
  %i.ed = trunc nuw i64 %indvars.iv.next1137 to i32
  %i.ee = icmp slt i32 %i.ed, %i.de
  br i1 %i.ee, label %bb.cx, label %._crit_edge.thread, !llvm.loop !93

._crit_edge.loopexit:                             ; preds = %bb.cx
  %i.ef = trunc nuw i64 %indvars.iv1136 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.cw
  %.1697.lcssa = phi i32 [ %i.dr, %bb.cw ], [ %i.ef, %._crit_edge.loopexit ]
  %i.eg = icmp eq i32 %.1697.lcssa, %i.de
  br i1 %i.eg, label %._crit_edge.thread, label %.thread930

._crit_edge.thread:                               ; preds = %bb.cy, %._crit_edge
  br i1 %.not800, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.thread
  %11 = sext i32 %i.dp to i64
  %i.eh = tail call ptr @strncpy(ptr noundef nonnull %4, ptr noundef nonnull %i.dt, i64 noundef %11) #28 ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %._crit_edge.thread
  store i8 0, ptr %i.do, align 1, !tbaa !17
  br label %.thread930

.thread930:                                       ; preds = %bb.ct, %bb.cs, %._crit_edge, %bb.da, %bb.cv, %bb.cu
  %.not846 = phi i1 [ false, %bb.da ], [ true, %._crit_edge ], [ true, %bb.cv ], [ true, %bb.cu ], [ true, %bb.cs ], [ true, %bb.ct ]
  br i1 %.not799, label %.loopexit996, label %bb.db

bb.db:                                            ; preds = %.thread930
  %i.ei = load i8, ptr %3, align 1, !tbaa !17
  %i.ej = icmp eq i8 %i.ei, 42
  %or.cond1091 = and i1 %i.ej, %i.dg
  br i1 %or.cond1091, label %.lr.ph1046, label %.loopexit996

.lr.ph1046:                                       ; preds = %bb.db, %.lr.ph1046
  %.26981045 = phi i32 [ %i.ep, %.lr.ph1046 ], [ %i.df, %bb.db ] ; 3 uses
  %i.ek = zext nneg i32 %.26981045 to i64         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !17
  %i.en = icmp eq i8 %i.em, 47
  %i.eo = icmp eq i32 %.26981045, 0
  %or.cond = or i1 %i.eo, %i.en
  %i.ep = add nsw i32 %.26981045, -1
  br i1 %or.cond, label %bb.dc, label %.lr.ph1046, !llvm.loop !94

bb.dc:                                            ; preds = %.lr.ph1046
  %i.eq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ek
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %i.es = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #29
  %i.et = icmp ugt i64 %i.es, 1024
  br i1 %i.et, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  tail call void @free(ptr noundef nonnull %i.m) #28
  store i32 125, ptr %10, align 4, !tbaa !14
  br label %bb.ig

bb.de:                                            ; preds = %bb.dc
  %i.eu = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %i.er) #28 ; 0 uses
  br label %.loopexit996

.loopexit996:                                     ; preds = %bb.de, %bb.db, %.thread930
  br i1 %.not, label %bb.di, label %bb.df

bb.df:                                            ; preds = %.loopexit996
  %i.ev = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #29
  %i.ew = icmp ugt i64 %i.ev, 1024
  br i1 %i.ew, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  tail call void @free(ptr noundef nonnull %i.m) #28
  store i32 125, ptr %10, align 4, !tbaa !14
  br label %bb.ig

bb.dh:                                            ; preds = %bb.df
  %i.ex = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %i.m) #28 ; 0 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.loopexit996
  %.not845 = icmp eq ptr %.1667, null
  br i1 %.not845, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  tail call void @free(ptr noundef nonnull %i.m) #28
  %i.ey = load i32, ptr %10, align 4, !tbaa !14
  br label %bb.ig

bb.dk:                                            ; preds = %bb.di
  br i1 %.not846, label %bb.dl, label %.critedge914

bb.dl:                                            ; preds = %bb.dk
  %i.ez = getelementptr inbounds nuw i8, ptr %.1667, i64 1 ; 6 uses
  %i.fa = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ez, i32 noundef 93) #29 ; 4 uses
  %.not847 = icmp eq ptr %i.fa, null
  br i1 %.not847, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  tail call void @ffpmsg(ptr noundef nonnull @.str.360) #28
  tail call void @free(ptr noundef nonnull %i.m) #28
  store i32 125, ptr %10, align 4, !tbaa !14
  br label %bb.ig

bb.dn:                                            ; preds = %bb.dl
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !17
  switch i8 %i.fb, label %.preheader [
    i8 98, label %bb.do
    i8 66, label %bb.do
    i8 105, label %bb.do
    i8 73, label %bb.do
    i8 106, label %bb.do
    i8 74, label %bb.do
    i8 100, label %bb.do
    i8 68, label %bb.do
    i8 114, label %bb.do
    i8 82, label %bb.do
    i8 102, label %bb.do
    i8 70, label %bb.do
    i8 117, label %bb.do
    i8 85, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn
  %i.fc = getelementptr inbounds nuw i8, ptr %.1667, i64 2 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !17  ; 2 uses
  %i.fe = add i8 %i.fd, -66                       ; 2 uses
  %i.ff = tail call i8 @llvm.fshl.i8(i8 %i.fe, i8 %i.fe, i8 7)
  switch i8 %i.ff, label %bb.dq [
    i8 16, label %bb.dp
    i8 0, label %bb.dp
    i8 21, label %bb.dp
    i8 5, label %bb.dp
  ]

bb.dp:                                            ; preds = %bb.do, %bb.do, %bb.do, %bb.do
  %i.fg = getelementptr inbounds nuw i8, ptr %.1667, i64 3 ; 2 uses
  %.pre = load i8, ptr %i.fg, align 1, !tbaa !17
  br label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.dp
  %i.fh = phi i8 [ %.pre, %bb.dp ], [ %i.fd, %bb.do ]
  %.1677 = phi ptr [ %i.fg, %bb.dp ], [ %i.fc, %bb.do ]
  %i.fi = tail call ptr @__ctype_b_loc() #32
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !68 ; 2 uses
  %i.fk = sext i8 %i.fh to i64
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !70
  %i.fn = and i16 %i.fm, 2048
  %.not848 = icmp eq i16 %i.fn, 0
  br i1 %.not848, label %.preheader, label %.preheader994

.preheader:                                       ; preds = %bb.dr, %bb.dn, %bb.dq
  br label %bb.ej

.preheader994:                                    ; preds = %bb.dq, %.preheader994
  %.2678 = phi ptr [ %i.ft, %.preheader994 ], [ %.1677, %bb.dq ] ; 2 uses
  %i.fo = load i8, ptr %.2678, align 1, !tbaa !17 ; 2 uses
  %i.fp = sext i8 %i.fo to i64
  %i.fq = getelementptr inbounds [2 x i8], ptr %i.fj, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !70
  %i.fs = and i16 %i.fr, 2048
  %.not849 = icmp eq i16 %i.fs, 0
  %i.ft = getelementptr inbounds nuw i8, ptr %.2678, i64 1
  br i1 %.not849, label %bb.dr, label %.preheader994, !llvm.loop !95

bb.dr:                                            ; preds = %.preheader994
  switch i8 %i.fo, label %.preheader [
    i8 44, label %bb.ds
    i8 58, label %bb.ds
    i8 93, label %bb.ds
  ]

bb.ds:                                            ; preds = %bb.dr, %bb.dr, %bb.dr
  br i1 %i.e, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.fu = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.87) #29
  %.not861 = icmp eq ptr %i.fu, null
  br i1 %.not861, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(12) @.str.361, i64 12, i1 false) #28
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.300, i64 11, i1 false) #28
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %bb.ds
  br i1 %.not, label %bb.eb, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.fv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.fw = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1667) #29
  %i.fx = add i64 %i.fw, %i.fv
  %i.fy = icmp ugt i64 %i.fx, 1024
  br i1 %i.fy, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  tail call void @free(ptr noundef nonnull %i.m) #28
  store i32 125, ptr %10, align 4, !tbaa !14
  br label %bb.ig

bb.dz:                                            ; preds = %bb.dx
  %i.fz = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %.1667) #28 ; 0 uses
  %i.ga = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 93) #29 ; 2 uses
  %.not862 = icmp eq ptr %i.ga, null
  br i1 %.not862, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 0, ptr %i.gb, align 1, !tbaa !17
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dz, %bb.ea, %bb.dw
  br i1 %.not800, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
end_hunk_0
begin_hunk_1_@ffrtnm:bb.a
  br i1 %.not135, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %strlen136 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr137 = getelementptr inbounds i8, ptr %i.a, i64 %strlen136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %endptr137, ptr noundef nonnull align 1 dereferenceable(7) @.str.289, i64 7, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.ab = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.355, i64 noundef 6) #29
  %.not138 = icmp eq i32 %i.ab, 0
  br i1 %.not138, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %strlen139 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.a)
  %endptr140 = getelementptr inbounds i8, ptr %i.a, i64 %strlen139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %endptr140, ptr noundef nonnull align 1 dereferenceable(9) @.str.328, i64 9, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ad = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.356, i64 noundef 5) #29
  %.not141 = icmp eq i32 %i.ad, 0
  %spec.select.idx = select i1 %.not141, i64 5, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.f, %bb.l, %bb.p, %bb.t, %bb.r, %bb.n, %bb.j, %bb.c
  %.0108 = phi ptr [ %i.g, %bb.c ], [ %i.s, %bb.j ], [ %spec.select, %bb.u ], [ %i.j, %bb.f ], [ %i.ac, %bb.t ], [ %i.aa, %bb.r ], [ %i.y, %bb.p ], [ %i.w, %bb.n ], [ %i.u, %bb.l ] ; 9 uses
  %i.ae = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0108, i32 noundef 40) #29 ; 4 uses
  %i.af = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0108, i32 noundef 91) #29 ; 4 uses
  %.not144 = icmp eq ptr %i.ae, null
  br i1 %.not144, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ag = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ae, i32 noundef 41) #29 ; 2 uses
  %.not173 = icmp eq ptr %i.ag, null
  br i1 %.not173, label %.loopexit, label %.preheader156

.preheader156:                                    ; preds = %bb.w, %bb.y
  %.0163 = phi ptr [ %i.al, %bb.y ], [ %i.ag, %bb.w ]
  %.1107162 = phi ptr [ %i.ak, %bb.y ], [ %i.ae, %bb.w ] ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.preheader156, %bb.x
  %.1 = phi ptr [ %i.ah, %bb.x ], [ %.0163, %.preheader156 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  switch i8 %i.ai, label %bb.y [
    i8 32, label %bb.x
    i8 0, label %.loopexit
    i8 91, label %.loopexit
  ]

bb.y:                                             ; preds = %bb.x
  %i.aj = getelementptr inbounds nuw i8, ptr %.1107162, i64 1
  %i.ak = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.aj, i32 noundef 40) #29 ; 3 uses
  %i.al = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ah, i32 noundef 41) #29 ; 2 uses
  %i.am = icmp ne ptr %i.al, null
  %i.an = icmp ne ptr %i.ak, null
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.preheader156, label %.loopexit, !llvm.loop !176

.loopexit:                                        ; preds = %bb.y, %bb.x, %bb.x, %bb.w, %bb.v
  %.2 = phi ptr [ %i.ae, %bb.w ], [ null, %bb.v ], [ %.1107162, %bb.x ], [ %.1107162, %bb.x ], [ %i.ak, %bb.y ] ; 7 uses
  %i.ap = icmp eq ptr %.2, %i.af
  br i1 %i.ap, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.loopexit
  %i.aq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0108) #29
  %i.ar = icmp ugt i64 %i.aq, 1024
  br i1 %i.ar, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.ay

bb.ab:                                            ; preds = %bb.z
  %i.as = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %.0108) #28 ; 0 uses
  br label %bb.ap

bb.ac:                                            ; preds = %.loopexit
  %.not145 = icmp eq ptr %i.af, null
  br i1 %.not145, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.at = ptrtoint ptr %.2 to i64
  %i.au = ptrtoint ptr %.0108 to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 1024
  br i1 %i.aw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.ay

bb.af:                                            ; preds = %bb.ad
  %i.ax = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull %.0108, i64 noundef %i.av) #28 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.az = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ay, i32 noundef 41) #29
  %.not146 = icmp eq ptr %i.az, null
  br i1 %.not146, label %bb.ag, label %bb.ap

bb.ag:                                            ; preds = %bb.af
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.ay

bb.ah:                                            ; preds = %bb.ac
  %.not147 = icmp ne ptr %.2, null
  %i.ba = icmp ult ptr %.2, %i.af
  %or.cond = select i1 %.not147, i1 %i.ba, i1 false
  %i.bb = ptrtoint ptr %.0108 to i64              ; 2 uses
  br i1 %or.cond, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.bc = ptrtoint ptr %.2 to i64
  %i.bd = sub i64 %i.bc, %i.bb                    ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1024
  br i1 %i.be, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.ay

bb.ak:                                            ; preds = %bb.ai
  %i.bf = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull %.0108, i64 noundef %i.bd) #28 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.bh = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.bg, i32 noundef 41) #29
  %.not148 = icmp eq ptr %i.bh, null
  br i1 %.not148, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.ay

bb.am:                                            ; preds = %bb.ah
  %i.bi = ptrtoint ptr %i.af to i64
  %i.bj = sub i64 %i.bi, %i.bb                    ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 1024
  br i1 %i.bk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.ay

bb.ao:                                            ; preds = %bb.am
  %i.bl = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull %.0108, i64 noundef %i.bj) #28 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.af, %bb.ak, %bb.ao, %bb.ab
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29 ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ap
  %i.bp = and i64 %i.bm, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.aq
  %indvars.iv = phi i64 [ %i.bp, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.aq ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = icmp eq i8 %i.br, 32
  br i1 %i.bs, label %bb.aq, label %._crit_edge

bb.aq:                                            ; preds = %.lr.ph
  store i8 0, ptr %i.bq, align 1, !tbaa !17
  %i.bt = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.bt, label %.lr.ph, label %._crit_edge, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.aq, %.lr.ph, %bb.ap
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29 ; 3 uses
  %i.bv = trunc i64 %i.bu to i32                  ; 4 uses
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.lr.ph221, label %.thread

.lr.ph221:                                        ; preds = %._crit_edge
  %i.by = and i64 %i.bu, 2147483647
  br label %bb.as

bb.ar:                                            ; preds = %bb.as
  %i.bz = icmp sgt i32 %i.cf, 0
  br i1 %i.bz, label %bb.as, label %.thread, !llvm.loop !178

bb.as:                                            ; preds = %.lr.ph221, %bb.ar
  %i.ca = phi i32 [ %i.bw, %.lr.ph221 ], [ %i.cf, %bb.ar ] ; 2 uses
  %indvars.iv180220 = phi i64 [ %i.by, %.lr.ph221 ], [ %i.cb, %bb.ar ] ; 3 uses
  %i.cb = add nsw i64 %indvars.iv180220, -1       ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = icmp eq i8 %i.cd, 43
  %i.cf = trunc i64 %i.cb to i32                  ; 3 uses
  br i1 %i.ce, label %bb.at, label %bb.ar, !llvm.loop !178

bb.at:                                            ; preds = %bb.as
  %i.cg = icmp ne i64 %indvars.iv180220, 1
  %i.ch = sub nsw i32 %i.bv, %i.cf
  %i.ci = icmp slt i32 %i.ch, 5
  %or.cond151 = select i1 %i.cg, i1 %i.ci, i1 false
  br i1 %or.cond151, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.at
  %i.cj = icmp slt i32 %i.ca, %i.bv
  br i1 %i.cj, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %.preheader
  %i.ck = tail call ptr @__ctype_b_loc() #32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !68
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph168, %bb.av
  %indvars.iv185 = phi i64 [ %indvars.iv180220, %.lr.ph168 ], [ %indvars.iv.next186, %bb.av ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv185
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.co = sext i8 %i.cn to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.cl, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !70
  %i.cr = and i16 %i.cq, 2048
  %.not149 = icmp eq i16 %i.cr, 0
  br i1 %.not149, label %._crit_edge169.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %i.cs = trunc nuw i64 %indvars.iv.next186 to i32
  %i.ct = icmp slt i32 %i.cs, %i.bv
  br i1 %i.ct, label %bb.au, label %._crit_edge169.thread, !llvm.loop !179

._crit_edge169.loopexit:                          ; preds = %bb.au
  %i.cu = trunc nuw i64 %indvars.iv185 to i32
  br label %._crit_edge169

._crit_edge169:                                   ; preds = %._crit_edge169.loopexit, %.preheader
  %.2111.lcssa = phi i32 [ %i.ca, %.preheader ], [ %i.cu, %._crit_edge169.loopexit ]
  %i.cv = icmp eq i32 %.2111.lcssa, %i.bv
  br i1 %i.cv, label %._crit_edge169.thread, label %.thread

._crit_edge169.thread:                            ; preds = %bb.av, %._crit_edge169
  %i.cw = and i64 %i.cb, 4294967295
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cw
  store i8 0, ptr %i.cx, align 1, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %bb.ar, %._crit_edge, %._crit_edge169, %._crit_edge169.thread, %bb.at
  %i.cy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #29
  %i.cz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29
  %i.da = add i64 %i.cz, %i.cy
  %i.db = icmp ugt i64 %i.da, 1024
  br i1 %i.db, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.ay

bb.ax:                                            ; preds = %.thread
  %i.dc = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.a) #28 ; 0 uses
  %i.dd = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.b) #28 ; 0 uses
  %i.de = load i32, ptr %2, align 4, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %bb.a, %bb.ax, %bb.aw, %bb.an, %bb.al, %bb.aj, %bb.ag, %bb.ae, %bb.aa, %bb.i
  %.0112 = phi i32 [ 125, %bb.i ], [ 125, %bb.aa ], [ 125, %bb.aw ], [ %i.de, %bb.ax ], [ 125, %bb.aj ], [ 125, %bb.al ], [ 125, %bb.an ], [ 125, %bb.ae ], [ 125, %bb.ag ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %.0112
}

declare i32 @file_openfile(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @file_is_compressed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare void @ffupch(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ffextn(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [20 x i8], align 16               ; 5 uses
  %i.c = alloca [1025 x i8], align 16             ; 7 uses
  %i.d = alloca [1025 x i8], align 16             ; 3 uses
  %i.e = alloca [1025 x i8], align 16             ; 5 uses
  %i.f = alloca [1025 x i8], align 16             ; 4 uses
  %i.g = alloca [1025 x i8], align 16             ; 3 uses
  %i.h = alloca [1025 x i8], align 16             ; 4 uses
  %i.i = alloca [1025 x i8], align 16             ; 3 uses
  %i.j = alloca [71 x i8], align 16               ; 4 uses
  %i.k = alloca [1025 x i8], align 16             ; 3 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 3 uses
  %i.n = alloca i32, align 4                      ; 3 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28
  store i32 0, ptr %i.o, align 4, !tbaa !14
  %i.p = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call i32 @ffifile2(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) ; 0 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i8, ptr %i.h, align 16, !tbaa !17
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %1, align 4, !tbaa !14
  %i.v = load i32, ptr %2, align 4, !tbaa !14
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.e, align 16, !tbaa !17
  %.not32 = icmp eq i8 %i.w, 0
  br i1 %.not32, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = call i32 @ffexts(ptr noundef nonnull %i.e, ptr noundef nonnull %i.l, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %2) ; 0 uses
  %i.y = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.j, align 16, !tbaa !17
  %.not33 = icmp eq i8 %i.aa, 0
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %1, align 4, !tbaa !14
  %i.ab = load i32, ptr %2, align 4, !tbaa !14
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %i.f, align 16, !tbaa !17
  %.not34 = icmp eq i8 %i.ac, 0
  br i1 %.not34, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.b, align 16
  %i.ae = xor i64 %i.ad, 3400000489577018483
  %i.af = getelementptr i8, ptr %i.b, i64 8
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or i64 %i.ae, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %.not35 = icmp eq i32 %i.ak, 0
  br i1 %.not35, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.c, align 16, !tbaa !17
  %i.al = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %0, i64 noundef 1024) #28 ; 0 uses
  %i.am = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 93) #29 ; 2 uses
  %.not36 = icmp eq ptr %i.am, null
  br i1 %.not36, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 125, ptr %2, align 4, !tbaa !14
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 0, ptr %i.an, align 1, !tbaa !17
end_hunk_1
