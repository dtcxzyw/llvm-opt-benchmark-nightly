Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaWriteVer?download=true
inline.NumInlined: 517
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Cba_ManWriteVerilogNtk:bb.a
  br i1 %.not9.i10.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = tail call ptr @realloc(ptr noundef nonnull %.pre8.i, i64 noundef %i.dn) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.dn) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab
  %i.dq = phi ptr [ %i.dk, %bb.ac ], [ %i.dj, %bb.ab ], [ %i.do, %bb.af ], [ %i.dp, %bb.ag ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i.i, %bb.af ], [ %spec.select.i.i, %bb.ag ]
  store ptr %i.dq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i, ptr %i.b, align 8, !tbaa !24
  %.pre9.i = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %Vec_StrGrow.exit11.sink.split.i.i, %bb.ad, %.Vec_StrPush.exit_crit_edge.i
  %i.dr = phi i32 [ %i.de, %.Vec_StrPush.exit_crit_edge.i ], [ %i.de, %bb.ad ], [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ds = phi ptr [ %.pre.i, %.Vec_StrPush.exit_crit_edge.i ], [ %.pre8.i, %bb.ad ], [ %i.dq, %Vec_StrGrow.exit11.sink.split.i.i ]
  %i.dt = add nsw i32 %i.dr, 1
  store i32 %i.dt, ptr %i.da, align 4, !tbaa !23
  %i.du = sext i32 %i.dr to i64
  %i.dv = getelementptr inbounds i8, ptr %i.ds, i64 %i.du
  store i8 %i.dd, ptr %i.dv, align 1, !tbaa !20
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 7
  br i1 %exitcond.not.i, label %Vec_StrPrintStr.exit, label %bb.y, !llvm.loop !2

Vec_StrPrintStr.exit:                             ; preds = %Vec_StrPush.exit.i
  %.val948 = load ptr, ptr %0, align 8, !tbaa !46
  %i.dw = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %.val949 = load i32, ptr %i.dw, align 4, !tbaa !94
  %i.dx = getelementptr i8, ptr %.val948, i64 16
  %.val948.val = load ptr, ptr %i.dx, align 8, !tbaa !48
  %i.dy = tail call ptr @Abc_NamStr(ptr noundef %.val948.val, i32 noundef %.val949) #17 ; 2 uses
  %i.dz = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dy) #20 ; 2 uses
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.i1016, label %Vec_StrPrintStr.exit1032

.lr.ph.i1016:                                     ; preds = %Vec_StrPrintStr.exit
  %wide.trip.count.i1017 = and i64 %i.dz, 2147483647
  br label %bb.ah

bb.ah:                                            ; preds = %Vec_StrPush.exit.i1021, %.lr.ph.i1016
  %indvars.iv.i1018 = phi i64 [ 0, %.lr.ph.i1016 ], [ %indvars.iv.next.i1022, %Vec_StrPush.exit.i1021 ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %indvars.iv.i1018
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !20
  %i.ee = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.ef = load i32, ptr %i.b, align 8, !tbaa !24
  %i.eg = icmp eq i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ai, label %.Vec_StrPush.exit_crit_edge.i1019

.Vec_StrPush.exit_crit_edge.i1019:                ; preds = %bb.ah
  %.pre.i1020 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1021

bb.ai:                                            ; preds = %bb.ah
  %i.eh = icmp slt i32 %i.ee, 16
  br i1 %i.eh, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ei = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1031 = icmp eq ptr %i.ei, null
  br i1 %.not9.i.i.i1031, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ej = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ei, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1028

bb.al:                                            ; preds = %bb.aj
  %i.ek = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1028

bb.am:                                            ; preds = %bb.ai
  %i.el = icmp samesign ult i32 %i.ee, 1073741823
  %i.em = shl nuw nsw i32 %i.ee, 1
  %spec.select.i.i1024 = select i1 %i.el, i32 %i.em, i32 2147483647 ; 4 uses
  %.not.i9.i.i1025 = icmp samesign ult i32 %i.ee, %spec.select.i.i1024
  %.pre8.i1026 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1025, label %bb.an, label %Vec_StrPush.exit.i1021

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i.i1027 = icmp eq ptr %.pre8.i1026, null
  %i.en = zext nneg i32 %spec.select.i.i1024 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1027, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1026, i64 noundef %i.en) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1028

bb.ap:                                            ; preds = %bb.an
  %i.ep = tail call noalias ptr @malloc(i64 noundef %i.en) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1028

Vec_StrGrow.exit11.sink.split.i.i1028:            ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak
  %i.eq = phi ptr [ %i.ek, %bb.al ], [ %i.ej, %bb.ak ], [ %i.eo, %bb.ao ], [ %i.ep, %bb.ap ] ; 2 uses
  %spec.select.sink.i.i1029 = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i.i1024, %bb.ao ], [ %spec.select.i.i1024, %bb.ap ]
  store ptr %i.eq, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1029, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1030 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1021

Vec_StrPush.exit.i1021:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1028, %bb.am, %.Vec_StrPush.exit_crit_edge.i1019
  %i.er = phi i32 [ %i.ee, %.Vec_StrPush.exit_crit_edge.i1019 ], [ %i.ee, %bb.am ], [ %.pre9.i1030, %Vec_StrGrow.exit11.sink.split.i.i1028 ] ; 2 uses
  %i.es = phi ptr [ %.pre.i1020, %.Vec_StrPush.exit_crit_edge.i1019 ], [ %.pre8.i1026, %bb.am ], [ %i.eq, %Vec_StrGrow.exit11.sink.split.i.i1028 ]
  %i.et = add nsw i32 %i.er, 1
  store i32 %i.et, ptr %i.da, align 4, !tbaa !23
  %i.eu = sext i32 %i.er to i64
  %i.ev = getelementptr inbounds i8, ptr %i.es, i64 %i.eu
  store i8 %i.ed, ptr %i.ev, align 1, !tbaa !20
  %indvars.iv.next.i1022 = add nuw nsw i64 %indvars.iv.i1018, 1 ; 2 uses
  %exitcond.not.i1023 = icmp eq i64 %indvars.iv.next.i1022, %wide.trip.count.i1017
  br i1 %exitcond.not.i1023, label %Vec_StrPrintStr.exit1032, label %bb.ah, !llvm.loop !2

Vec_StrPrintStr.exit1032:                         ; preds = %Vec_StrPush.exit.i1021, %Vec_StrPrintStr.exit
  %i.ew = select i1 %i.j, ptr @.str.73, ptr @.str.74
  %i.ex = select i1 %i.j, i64 7, i64 3
  br label %bb.aq

bb.aq:                                            ; preds = %Vec_StrPush.exit.i1038, %Vec_StrPrintStr.exit1032
  %indvars.iv.i1035 = phi i64 [ 0, %Vec_StrPrintStr.exit1032 ], [ %indvars.iv.next.i1039, %Vec_StrPush.exit.i1038 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.i1035
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !20
  %i.fa = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.fb = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fc = icmp eq i32 %i.fa, %i.fb
  br i1 %i.fc, label %bb.ar, label %.Vec_StrPush.exit_crit_edge.i1036

.Vec_StrPush.exit_crit_edge.i1036:                ; preds = %bb.aq
  %.pre.i1037 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1038

bb.ar:                                            ; preds = %bb.aq
  %i.fd = icmp slt i32 %i.fa, 16
  br i1 %i.fd, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.fe = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1048 = icmp eq ptr %i.fe, null
  br i1 %.not9.i.i.i1048, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.fe, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1045

bb.au:                                            ; preds = %bb.as
  %i.fg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1045

bb.av:                                            ; preds = %bb.ar
  %i.fh = icmp samesign ult i32 %i.fa, 1073741823
  %i.fi = shl nuw nsw i32 %i.fa, 1
  %spec.select.i.i1041 = select i1 %i.fh, i32 %i.fi, i32 2147483647 ; 4 uses
  %.not.i9.i.i1042 = icmp samesign ult i32 %i.fa, %spec.select.i.i1041
  %.pre8.i1043 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1042, label %bb.aw, label %Vec_StrPush.exit.i1038

bb.aw:                                            ; preds = %bb.av
  %.not9.i10.i.i1044 = icmp eq ptr %.pre8.i1043, null
  %i.fj = zext nneg i32 %spec.select.i.i1041 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1044, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1043, i64 noundef %i.fj) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1045

bb.ay:                                            ; preds = %bb.aw
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fj) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1045

Vec_StrGrow.exit11.sink.split.i.i1045:            ; preds = %bb.ay, %bb.ax, %bb.au, %bb.at
  %i.fm = phi ptr [ %i.fg, %bb.au ], [ %i.ff, %bb.at ], [ %i.fk, %bb.ax ], [ %i.fl, %bb.ay ] ; 2 uses
  %spec.select.sink.i.i1046 = phi i32 [ 16, %bb.au ], [ 16, %bb.at ], [ %spec.select.i.i1041, %bb.ax ], [ %spec.select.i.i1041, %bb.ay ]
  store ptr %i.fm, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1046, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1047 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1038

Vec_StrPush.exit.i1038:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1045, %bb.av, %.Vec_StrPush.exit_crit_edge.i1036
  %i.fn = phi i32 [ %i.fa, %.Vec_StrPush.exit_crit_edge.i1036 ], [ %i.fa, %bb.av ], [ %.pre9.i1047, %Vec_StrGrow.exit11.sink.split.i.i1045 ] ; 2 uses
  %i.fo = phi ptr [ %.pre.i1037, %.Vec_StrPush.exit_crit_edge.i1036 ], [ %.pre8.i1043, %bb.av ], [ %i.fm, %Vec_StrGrow.exit11.sink.split.i.i1045 ]
  %i.fp = add nsw i32 %i.fn, 1
  store i32 %i.fp, ptr %i.da, align 4, !tbaa !23
  %i.fq = sext i32 %i.fn to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fo, i64 %i.fq
  store i8 %i.ez, ptr %i.fr, align 1, !tbaa !20
  %indvars.iv.next.i1039 = add nuw nsw i64 %indvars.iv.i1035, 1 ; 2 uses
  %exitcond.not.i1040 = icmp eq i64 %indvars.iv.next.i1039, %i.ex
  br i1 %exitcond.not.i1040, label %Vec_StrPrintStr.exit1049, label %bb.aq, !llvm.loop !2

Vec_StrPrintStr.exit1049:                         ; preds = %Vec_StrPush.exit.i1038
  %i.fs = getelementptr i8, ptr %0, i64 60        ; 4 uses
  %.val9513016 = load i32, ptr %i.fs, align 4, !tbaa !26
  %i.ft = icmp sgt i32 %.val9513016, 0
  br i1 %i.ft, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_StrPrintStr.exit1049
  %.val846 = load i32, ptr %i.da, align 4, !tbaa !23 ; 2 uses
  %i.fu = getelementptr i8, ptr %0, i64 64
  br label %bb.az

thread-pre-split:                                 ; preds = %Vec_StrPrintStr.exit1100
  %.val845.pre3116.pr = load i32, ptr %i.da, align 4, !tbaa !23
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split, %.lr.ph
  %.val845.pre3116 = phi i32 [ %.val845.pre3116.pr, %thread-pre-split ], [ %.val846, %.lr.ph ] ; 8 uses
  %indvars.iv3074 = phi i64 [ %indvars.iv.next3075, %thread-pre-split ], [ 0, %.lr.ph ] ; 3 uses
  %.07733017 = phi i32 [ %.1774, %thread-pre-split ], [ %.val846, %.lr.ph ] ; 2 uses
  %.val953 = load ptr, ptr %i.fu, align 8, !tbaa !27
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.val953, i64 %indvars.iv3074
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !28
  %.not831 = icmp eq i64 %indvars.iv3074, 0
  br i1 %.not831, label %Vec_StrPrintStr.exit1066, label %.lr.ph.i1050.preheader

.lr.ph.i1050.preheader:                           ; preds = %bb.az
  %i.fx = load i32, ptr %i.b, align 8, !tbaa !24
  %i.fy = icmp eq i32 %.val845.pre3116, %i.fx
  br i1 %i.fy, label %bb.ba, label %.Vec_StrPush.exit_crit_edge.i1053

.Vec_StrPush.exit_crit_edge.i1053:                ; preds = %.lr.ph.i1050.preheader
  %.pre.i1054 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1055

bb.ba:                                            ; preds = %.lr.ph.i1050.preheader
  %i.fz = icmp slt i32 %.val845.pre3116, 16
  br i1 %i.fz, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.ga = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1065 = icmp eq ptr %i.ga, null
  br i1 %.not9.i.i.i1065, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ga, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1062

bb.bd:                                            ; preds = %bb.bb
  %i.gc = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1062

bb.be:                                            ; preds = %bb.ba
  %i.gd = icmp samesign ult i32 %.val845.pre3116, 1073741823
  %i.ge = shl nuw nsw i32 %.val845.pre3116, 1
  %spec.select.i.i1058 = select i1 %i.gd, i32 %i.ge, i32 2147483647 ; 4 uses
  %.not.i9.i.i1059 = icmp samesign ult i32 %.val845.pre3116, %spec.select.i.i1058
  %.pre8.i1060 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1059, label %bb.bf, label %Vec_StrPush.exit.i1055

bb.bf:                                            ; preds = %bb.be
  %.not9.i10.i.i1061 = icmp eq ptr %.pre8.i1060, null
  %i.gf = zext nneg i32 %spec.select.i.i1058 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1061, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gg = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1060, i64 noundef %i.gf) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1062

bb.bh:                                            ; preds = %bb.bf
  %i.gh = tail call noalias ptr @malloc(i64 noundef %i.gf) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1062

Vec_StrGrow.exit11.sink.split.i.i1062:            ; preds = %bb.bh, %bb.bg, %bb.bd, %bb.bc
  %i.gi = phi ptr [ %i.gc, %bb.bd ], [ %i.gb, %bb.bc ], [ %i.gg, %bb.bg ], [ %i.gh, %bb.bh ] ; 2 uses
  %spec.select.sink.i.i1063 = phi i32 [ 16, %bb.bd ], [ 16, %bb.bc ], [ %spec.select.i.i1058, %bb.bg ], [ %spec.select.i.i1058, %bb.bh ]
  store ptr %i.gi, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1063, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1064 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1055

Vec_StrPush.exit.i1055:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1062, %bb.be, %.Vec_StrPush.exit_crit_edge.i1053
  %i.gj = phi i32 [ %.val845.pre3116, %.Vec_StrPush.exit_crit_edge.i1053 ], [ %.val845.pre3116, %bb.be ], [ %.pre9.i1064, %Vec_StrGrow.exit11.sink.split.i.i1062 ] ; 2 uses
  %i.gk = phi ptr [ %.pre.i1054, %.Vec_StrPush.exit_crit_edge.i1053 ], [ %.pre8.i1060, %bb.be ], [ %i.gi, %Vec_StrGrow.exit11.sink.split.i.i1062 ]
  %i.gl = add nsw i32 %i.gj, 1
  store i32 %i.gl, ptr %i.da, align 4, !tbaa !23
  %i.gm = sext i32 %i.gj to i64
  %i.gn = getelementptr inbounds i8, ptr %i.gk, i64 %i.gm
  store i8 44, ptr %i.gn, align 1, !tbaa !20
  %i.go = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.gp = load i32, ptr %i.b, align 8, !tbaa !24
  %i.gq = icmp eq i32 %i.go, %i.gp
  br i1 %i.gq, label %bb.bi, label %.Vec_StrPush.exit_crit_edge.i1053.1

.Vec_StrPush.exit_crit_edge.i1053.1:              ; preds = %Vec_StrPush.exit.i1055
  %.pre.i1054.1 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1055.1

bb.bi:                                            ; preds = %Vec_StrPush.exit.i1055
  %i.gr = icmp slt i32 %i.go, 16
  br i1 %i.gr, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gs = icmp samesign ult i32 %i.go, 1073741823
  %i.gt = shl nuw nsw i32 %i.go, 1
  %spec.select.i.i1058.1 = select i1 %i.gs, i32 %i.gt, i32 2147483647 ; 4 uses
  %.not.i9.i.i1059.1 = icmp samesign ult i32 %i.go, %spec.select.i.i1058.1
  %.pre8.i1060.1 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1059.1, label %bb.bk, label %Vec_StrPush.exit.i1055.1

bb.bk:                                            ; preds = %bb.bj
  %.not9.i10.i.i1061.1 = icmp eq ptr %.pre8.i1060.1, null
  %i.gu = zext nneg i32 %spec.select.i.i1058.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1061.1, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gv = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1060.1, i64 noundef %i.gu) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1062.1

bb.bm:                                            ; preds = %bb.bk
  %i.gw = tail call noalias ptr @malloc(i64 noundef %i.gu) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1062.1

bb.bn:                                            ; preds = %bb.bi
  %i.gx = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1065.1 = icmp eq ptr %i.gx, null
  br i1 %.not9.i.i.i1065.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gy = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1062.1

bb.bp:                                            ; preds = %bb.bn
  %i.gz = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1062.1

Vec_StrGrow.exit11.sink.split.i.i1062.1:          ; preds = %bb.bp, %bb.bo, %bb.bm, %bb.bl
  %i.ha = phi ptr [ %i.gz, %bb.bp ], [ %i.gy, %bb.bo ], [ %i.gv, %bb.bl ], [ %i.gw, %bb.bm ] ; 2 uses
  %spec.select.sink.i.i1063.1 = phi i32 [ 16, %bb.bp ], [ 16, %bb.bo ], [ %spec.select.i.i1058.1, %bb.bl ], [ %spec.select.i.i1058.1, %bb.bm ]
  store ptr %i.ha, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1063.1, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1064.1 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1055.1

Vec_StrPush.exit.i1055.1:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1062.1, %bb.bj, %.Vec_StrPush.exit_crit_edge.i1053.1
  %i.hb = phi i32 [ %i.go, %.Vec_StrPush.exit_crit_edge.i1053.1 ], [ %i.go, %bb.bj ], [ %.pre9.i1064.1, %Vec_StrGrow.exit11.sink.split.i.i1062.1 ] ; 2 uses
  %i.hc = phi ptr [ %.pre.i1054.1, %.Vec_StrPush.exit_crit_edge.i1053.1 ], [ %.pre8.i1060.1, %bb.bj ], [ %i.ha, %Vec_StrGrow.exit11.sink.split.i.i1062.1 ]
  %i.hd = add nsw i32 %i.hb, 1
  store i32 %i.hd, ptr %i.da, align 4, !tbaa !23
  %i.he = sext i32 %i.hb to i64
  %i.hf = getelementptr inbounds i8, ptr %i.hc, i64 %i.he
  store i8 32, ptr %i.hf, align 1, !tbaa !20
  %.val845.pre = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPrintStr.exit1066

Vec_StrPrintStr.exit1066:                         ; preds = %Vec_StrPush.exit.i1055.1, %bb.az
  %i.hg = phi i32 [ %.val845.pre, %Vec_StrPush.exit.i1055.1 ], [ %.val845.pre3116, %bb.az ] ; 9 uses
  %i.hh = add nsw i32 %.07733017, 70
  %i.hi = icmp sgt i32 %i.hg, %i.hh
  br i1 %i.hi, label %.lr.ph.i1067.preheader, label %Vec_StrPrintStr.exit1083

.lr.ph.i1067.preheader:                           ; preds = %Vec_StrPrintStr.exit1066
  %i.hj = load i32, ptr %i.b, align 8, !tbaa !24
  %i.hk = icmp eq i32 %i.hg, %i.hj
  br i1 %i.hk, label %bb.bq, label %.Vec_StrPush.exit_crit_edge.i1070

.Vec_StrPush.exit_crit_edge.i1070:                ; preds = %.lr.ph.i1067.preheader
  %.pre.i1071 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1072

bb.bq:                                            ; preds = %.lr.ph.i1067.preheader
  %i.hl = icmp slt i32 %i.hg, 16
  br i1 %i.hl, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.hm = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1082 = icmp eq ptr %i.hm, null
  br i1 %.not9.i.i.i1082, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hn = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.hm, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1079

bb.bt:                                            ; preds = %bb.br
  %i.ho = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1079

bb.bu:                                            ; preds = %bb.bq
  %i.hp = icmp samesign ult i32 %i.hg, 1073741823
  %i.hq = shl nuw nsw i32 %i.hg, 1
  %spec.select.i.i1075 = select i1 %i.hp, i32 %i.hq, i32 2147483647 ; 4 uses
  %.not.i9.i.i1076 = icmp samesign ult i32 %i.hg, %spec.select.i.i1075
  %.pre8.i1077 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1076, label %bb.bv, label %Vec_StrPush.exit.i1072

bb.bv:                                            ; preds = %bb.bu
  %.not9.i10.i.i1078 = icmp eq ptr %.pre8.i1077, null
  %i.hr = zext nneg i32 %spec.select.i.i1075 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1078, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hs = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1077, i64 noundef %i.hr) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1079

bb.bx:                                            ; preds = %bb.bv
  %i.ht = tail call noalias ptr @malloc(i64 noundef %i.hr) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1079

Vec_StrGrow.exit11.sink.split.i.i1079:            ; preds = %bb.bx, %bb.bw, %bb.bt, %bb.bs
  %i.hu = phi ptr [ %i.ho, %bb.bt ], [ %i.hn, %bb.bs ], [ %i.hs, %bb.bw ], [ %i.ht, %bb.bx ] ; 2 uses
  %spec.select.sink.i.i1080 = phi i32 [ 16, %bb.bt ], [ 16, %bb.bs ], [ %spec.select.i.i1075, %bb.bw ], [ %spec.select.i.i1075, %bb.bx ]
  store ptr %i.hu, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1080, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1081 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1072

Vec_StrPush.exit.i1072:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1079, %bb.bu, %.Vec_StrPush.exit_crit_edge.i1070
  %i.hv = phi i32 [ %i.hg, %.Vec_StrPush.exit_crit_edge.i1070 ], [ %i.hg, %bb.bu ], [ %.pre9.i1081, %Vec_StrGrow.exit11.sink.split.i.i1079 ] ; 2 uses
  %i.hw = phi ptr [ %.pre.i1071, %.Vec_StrPush.exit_crit_edge.i1070 ], [ %.pre8.i1077, %bb.bu ], [ %i.hu, %Vec_StrGrow.exit11.sink.split.i.i1079 ]
  %i.hx = add nsw i32 %i.hv, 1
  store i32 %i.hx, ptr %i.da, align 4, !tbaa !23
  %i.hy = sext i32 %i.hv to i64
  %i.hz = getelementptr inbounds i8, ptr %i.hw, i64 %i.hy
  store i8 10, ptr %i.hz, align 1, !tbaa !20
end_hunk_0
begin_hunk_1_@Cba_ManWriteVerilogNtk:bb.a
  %spec.select.i.i1075.3 = select i1 %i.jo, i32 %i.jp, i32 2147483647 ; 4 uses
  %.not.i9.i.i1076.3 = icmp samesign ult i32 %i.jk, %spec.select.i.i1075.3
  %.pre8.i1077.3 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1076.3, label %bb.cq, label %Vec_StrPush.exit.i1072.3

bb.cq:                                            ; preds = %bb.cp
  %.not9.i10.i.i1078.3 = icmp eq ptr %.pre8.i1077.3, null
  %i.jq = zext nneg i32 %spec.select.i.i1075.3 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1078.3, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jr = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1077.3, i64 noundef %i.jq) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1079.3

bb.cs:                                            ; preds = %bb.cq
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jq) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1079.3

bb.ct:                                            ; preds = %bb.co
  %i.jt = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1082.3 = icmp eq ptr %i.jt, null
  br i1 %.not9.i.i.i1082.3, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ju = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.jt, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1079.3

bb.cv:                                            ; preds = %bb.ct
  %i.jv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1079.3

Vec_StrGrow.exit11.sink.split.i.i1079.3:          ; preds = %bb.cv, %bb.cu, %bb.cs, %bb.cr
  %i.jw = phi ptr [ %i.jv, %bb.cv ], [ %i.ju, %bb.cu ], [ %i.jr, %bb.cr ], [ %i.js, %bb.cs ] ; 2 uses
  %spec.select.sink.i.i1080.3 = phi i32 [ 16, %bb.cv ], [ 16, %bb.cu ], [ %spec.select.i.i1075.3, %bb.cr ], [ %spec.select.i.i1075.3, %bb.cs ]
  store ptr %i.jw, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1080.3, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1081.3 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1072.3

Vec_StrPush.exit.i1072.3:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1079.3, %bb.cp, %.Vec_StrPush.exit_crit_edge.i1070.3
  %i.jx = phi i32 [ %i.jk, %.Vec_StrPush.exit_crit_edge.i1070.3 ], [ %i.jk, %bb.cp ], [ %.pre9.i1081.3, %Vec_StrGrow.exit11.sink.split.i.i1079.3 ] ; 2 uses
  %i.jy = phi ptr [ %.pre.i1071.3, %.Vec_StrPush.exit_crit_edge.i1070.3 ], [ %.pre8.i1077.3, %bb.cp ], [ %i.jw, %Vec_StrGrow.exit11.sink.split.i.i1079.3 ]
  %i.jz = add nsw i32 %i.jx, 1
  store i32 %i.jz, ptr %i.da, align 4, !tbaa !23
  %i.ka = sext i32 %i.jx to i64
  %i.kb = getelementptr inbounds i8, ptr %i.jy, i64 %i.ka
  store i8 32, ptr %i.kb, align 1, !tbaa !20
  %i.kc = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.kd = load i32, ptr %i.b, align 8, !tbaa !24
  %i.ke = icmp eq i32 %i.kc, %i.kd
  br i1 %i.ke, label %bb.cw, label %.Vec_StrPush.exit_crit_edge.i1070.4

.Vec_StrPush.exit_crit_edge.i1070.4:              ; preds = %Vec_StrPush.exit.i1072.3
  %.pre.i1071.4 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1072.4

bb.cw:                                            ; preds = %Vec_StrPush.exit.i1072.3
  %i.kf = icmp slt i32 %i.kc, 16
  br i1 %i.kf, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.kg = icmp samesign ult i32 %i.kc, 1073741823
  %i.kh = shl nuw nsw i32 %i.kc, 1
  %spec.select.i.i1075.4 = select i1 %i.kg, i32 %i.kh, i32 2147483647 ; 4 uses
  %.not.i9.i.i1076.4 = icmp samesign ult i32 %i.kc, %spec.select.i.i1075.4
  %.pre8.i1077.4 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1076.4, label %bb.cy, label %Vec_StrPush.exit.i1072.4

bb.cy:                                            ; preds = %bb.cx
  %.not9.i10.i.i1078.4 = icmp eq ptr %.pre8.i1077.4, null
  %i.ki = zext nneg i32 %spec.select.i.i1075.4 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1078.4, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.kj = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1077.4, i64 noundef %i.ki) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1079.4

bb.da:                                            ; preds = %bb.cy
  %i.kk = tail call noalias ptr @malloc(i64 noundef %i.ki) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1079.4

bb.db:                                            ; preds = %bb.cw
  %i.kl = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1082.4 = icmp eq ptr %i.kl, null
  br i1 %.not9.i.i.i1082.4, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.km = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.kl, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1079.4

bb.dd:                                            ; preds = %bb.db
  %i.kn = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1079.4

Vec_StrGrow.exit11.sink.split.i.i1079.4:          ; preds = %bb.dd, %bb.dc, %bb.da, %bb.cz
  %i.ko = phi ptr [ %i.kn, %bb.dd ], [ %i.km, %bb.dc ], [ %i.kj, %bb.cz ], [ %i.kk, %bb.da ] ; 2 uses
  %spec.select.sink.i.i1080.4 = phi i32 [ 16, %bb.dd ], [ 16, %bb.dc ], [ %spec.select.i.i1075.4, %bb.cz ], [ %spec.select.i.i1075.4, %bb.da ]
  store ptr %i.ko, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1080.4, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1081.4 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1072.4

Vec_StrPush.exit.i1072.4:                         ; preds = %Vec_StrGrow.exit11.sink.split.i.i1079.4, %bb.cx, %.Vec_StrPush.exit_crit_edge.i1070.4
  %i.kp = phi i32 [ %i.kc, %.Vec_StrPush.exit_crit_edge.i1070.4 ], [ %i.kc, %bb.cx ], [ %.pre9.i1081.4, %Vec_StrGrow.exit11.sink.split.i.i1079.4 ] ; 2 uses
  %i.kq = phi ptr [ %.pre.i1071.4, %.Vec_StrPush.exit_crit_edge.i1070.4 ], [ %.pre8.i1077.4, %bb.cx ], [ %i.ko, %Vec_StrGrow.exit11.sink.split.i.i1079.4 ]
  %i.kr = add nsw i32 %i.kp, 1
  store i32 %i.kr, ptr %i.da, align 4, !tbaa !23
  %i.ks = sext i32 %i.kp to i64
  %i.kt = getelementptr inbounds i8, ptr %i.kq, i64 %i.ks
  store i8 32, ptr %i.kt, align 1, !tbaa !20
  br label %Vec_StrPrintStr.exit1083

Vec_StrPrintStr.exit1083:                         ; preds = %Vec_StrPush.exit.i1072.4, %Vec_StrPrintStr.exit1066
  %.1774 = phi i32 [ %.07733017, %Vec_StrPrintStr.exit1066 ], [ %i.hg, %Vec_StrPush.exit.i1072.4 ]
  %i.ku = tail call ptr @Cba_ObjGetName(ptr noundef nonnull %0, i32 noundef %i.fw) ; 2 uses
  %i.kv = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ku) #20 ; 2 uses
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = icmp sgt i32 %i.kw, 0
  br i1 %i.kx, label %.lr.ph.i1084, label %Vec_StrPrintStr.exit1100

.lr.ph.i1084:                                     ; preds = %Vec_StrPrintStr.exit1083
  %wide.trip.count.i1085 = and i64 %i.kv, 2147483647
  br label %bb.de

bb.de:                                            ; preds = %Vec_StrPush.exit.i1089, %.lr.ph.i1084
  %indvars.iv.i1086 = phi i64 [ 0, %.lr.ph.i1084 ], [ %indvars.iv.next.i1090, %Vec_StrPush.exit.i1089 ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 %indvars.iv.i1086
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !20
  %i.la = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.lb = load i32, ptr %i.b, align 8, !tbaa !24
  %i.lc = icmp eq i32 %i.la, %i.lb
  br i1 %i.lc, label %bb.df, label %.Vec_StrPush.exit_crit_edge.i1087

.Vec_StrPush.exit_crit_edge.i1087:                ; preds = %bb.de
  %.pre.i1088 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1089

bb.df:                                            ; preds = %bb.de
  %i.ld = icmp slt i32 %i.la, 16
  br i1 %i.ld, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.le = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1099 = icmp eq ptr %i.le, null
  br i1 %.not9.i.i.i1099, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.lf = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.le, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1096

bb.di:                                            ; preds = %bb.dg
  %i.lg = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1096

bb.dj:                                            ; preds = %bb.df
  %i.lh = icmp samesign ult i32 %i.la, 1073741823
  %i.li = shl nuw nsw i32 %i.la, 1
  %spec.select.i.i1092 = select i1 %i.lh, i32 %i.li, i32 2147483647 ; 4 uses
  %.not.i9.i.i1093 = icmp samesign ult i32 %i.la, %spec.select.i.i1092
  %.pre8.i1094 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1093, label %bb.dk, label %Vec_StrPush.exit.i1089

bb.dk:                                            ; preds = %bb.dj
  %.not9.i10.i.i1095 = icmp eq ptr %.pre8.i1094, null
  %i.lj = zext nneg i32 %spec.select.i.i1092 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1095, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.lk = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1094, i64 noundef %i.lj) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1096

bb.dm:                                            ; preds = %bb.dk
  %i.ll = tail call noalias ptr @malloc(i64 noundef %i.lj) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1096

Vec_StrGrow.exit11.sink.split.i.i1096:            ; preds = %bb.dm, %bb.dl, %bb.di, %bb.dh
  %i.lm = phi ptr [ %i.lg, %bb.di ], [ %i.lf, %bb.dh ], [ %i.lk, %bb.dl ], [ %i.ll, %bb.dm ] ; 2 uses
  %spec.select.sink.i.i1097 = phi i32 [ 16, %bb.di ], [ 16, %bb.dh ], [ %spec.select.i.i1092, %bb.dl ], [ %spec.select.i.i1092, %bb.dm ]
  store ptr %i.lm, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1097, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1098 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1089

Vec_StrPush.exit.i1089:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1096, %bb.dj, %.Vec_StrPush.exit_crit_edge.i1087
  %i.ln = phi i32 [ %i.la, %.Vec_StrPush.exit_crit_edge.i1087 ], [ %i.la, %bb.dj ], [ %.pre9.i1098, %Vec_StrGrow.exit11.sink.split.i.i1096 ] ; 2 uses
  %i.lo = phi ptr [ %.pre.i1088, %.Vec_StrPush.exit_crit_edge.i1087 ], [ %.pre8.i1094, %bb.dj ], [ %i.lm, %Vec_StrGrow.exit11.sink.split.i.i1096 ]
  %i.lp = add nsw i32 %i.ln, 1
  store i32 %i.lp, ptr %i.da, align 4, !tbaa !23
  %i.lq = sext i32 %i.ln to i64
  %i.lr = getelementptr inbounds i8, ptr %i.lo, i64 %i.lq
  store i8 %i.kz, ptr %i.lr, align 1, !tbaa !20
  %indvars.iv.next.i1090 = add nuw nsw i64 %indvars.iv.i1086, 1 ; 2 uses
  %exitcond.not.i1091 = icmp eq i64 %indvars.iv.next.i1090, %wide.trip.count.i1085
  br i1 %exitcond.not.i1091, label %Vec_StrPrintStr.exit1100, label %bb.de, !llvm.loop !2

Vec_StrPrintStr.exit1100:                         ; preds = %Vec_StrPush.exit.i1089, %Vec_StrPrintStr.exit1083
  %indvars.iv.next3075 = add nuw nsw i64 %indvars.iv3074, 1 ; 2 uses
  %.val951 = load i32, ptr %i.fs, align 4, !tbaa !26
  %i.ls = sext i32 %.val951 to i64
  %i.lt = icmp slt i64 %indvars.iv.next3075, %i.ls
  br i1 %i.lt, label %thread-pre-split, label %.critedge2, !llvm.loop !72

.critedge2:                                       ; preds = %Vec_StrPrintStr.exit1100, %Vec_StrPrintStr.exit1049
  %i.lu = select i1 %i.j, ptr @.str.76, ptr @.str.77
  %i.lv = select i1 %i.j, i64 5, i64 3
  br label %bb.dn

bb.dn:                                            ; preds = %Vec_StrPush.exit.i1106, %.critedge2
  %indvars.iv.i1103 = phi i64 [ 0, %.critedge2 ], [ %indvars.iv.next.i1107, %Vec_StrPush.exit.i1106 ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 %indvars.iv.i1103
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !20
  %i.ly = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.lz = load i32, ptr %i.b, align 8, !tbaa !24
  %i.ma = icmp eq i32 %i.ly, %i.lz
  br i1 %i.ma, label %bb.do, label %.Vec_StrPush.exit_crit_edge.i1104

.Vec_StrPush.exit_crit_edge.i1104:                ; preds = %bb.dn
  %.pre.i1105 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1106

bb.do:                                            ; preds = %bb.dn
  %i.mb = icmp slt i32 %i.ly, 16
  br i1 %i.mb, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.mc = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1116 = icmp eq ptr %i.mc, null
  br i1 %.not9.i.i.i1116, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.md = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.mc, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1113

bb.dr:                                            ; preds = %bb.dp
  %i.me = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1113

bb.ds:                                            ; preds = %bb.do
  %i.mf = icmp samesign ult i32 %i.ly, 1073741823
  %i.mg = shl nuw nsw i32 %i.ly, 1
  %spec.select.i.i1109 = select i1 %i.mf, i32 %i.mg, i32 2147483647 ; 4 uses
  %.not.i9.i.i1110 = icmp samesign ult i32 %i.ly, %spec.select.i.i1109
  %.pre8.i1111 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1110, label %bb.dt, label %Vec_StrPush.exit.i1106

bb.dt:                                            ; preds = %bb.ds
  %.not9.i10.i.i1112 = icmp eq ptr %.pre8.i1111, null
  %i.mh = zext nneg i32 %spec.select.i.i1109 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1112, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.mi = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1111, i64 noundef %i.mh) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1113

bb.dv:                                            ; preds = %bb.dt
  %i.mj = tail call noalias ptr @malloc(i64 noundef %i.mh) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1113

Vec_StrGrow.exit11.sink.split.i.i1113:            ; preds = %bb.dv, %bb.du, %bb.dr, %bb.dq
  %i.mk = phi ptr [ %i.me, %bb.dr ], [ %i.md, %bb.dq ], [ %i.mi, %bb.du ], [ %i.mj, %bb.dv ] ; 2 uses
  %spec.select.sink.i.i1114 = phi i32 [ 16, %bb.dr ], [ 16, %bb.dq ], [ %spec.select.i.i1109, %bb.du ], [ %spec.select.i.i1109, %bb.dv ]
  store ptr %i.mk, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1114, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1115 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1106

Vec_StrPush.exit.i1106:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1113, %bb.ds, %.Vec_StrPush.exit_crit_edge.i1104
  %i.ml = phi i32 [ %i.ly, %.Vec_StrPush.exit_crit_edge.i1104 ], [ %i.ly, %bb.ds ], [ %.pre9.i1115, %Vec_StrGrow.exit11.sink.split.i.i1113 ] ; 2 uses
  %i.mm = phi ptr [ %.pre.i1105, %.Vec_StrPush.exit_crit_edge.i1104 ], [ %.pre8.i1111, %bb.ds ], [ %i.mk, %Vec_StrGrow.exit11.sink.split.i.i1113 ]
  %i.mn = add nsw i32 %i.ml, 1
  store i32 %i.mn, ptr %i.da, align 4, !tbaa !23
  %i.mo = sext i32 %i.ml to i64
  %i.mp = getelementptr inbounds i8, ptr %i.mm, i64 %i.mo
  store i8 %i.lx, ptr %i.mp, align 1, !tbaa !20
  %indvars.iv.next.i1107 = add nuw nsw i64 %indvars.iv.i1103, 1 ; 2 uses
  %exitcond.not.i1108 = icmp eq i64 %indvars.iv.next.i1107, %i.lv
  br i1 %exitcond.not.i1108, label %Vec_StrPrintStr.exit1117, label %bb.dn, !llvm.loop !2

Vec_StrPrintStr.exit1117:                         ; preds = %Vec_StrPush.exit.i1106
  %i.mq = load ptr, ptr %0, align 8, !tbaa !46
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1584
  %.not.i = icmp eq i32 %i.d, 0                   ; 3 uses
  br i1 %.not.i, label %Cba_ManWriteLineFile.exit, label %bb.dw

bb.dw:                                            ; preds = %Vec_StrPrintStr.exit1117
  %i.ms = tail call fastcc i32 @Cba_ObjAttrValue(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.d) ; 2 uses
  %.not14.i = icmp eq i32 %i.ms, 0
  br i1 %.not14.i, label %Cba_ManWriteLineFile.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mt = tail call fastcc i32 @Cba_ObjAttrValue(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.f)
  %.val.i = load ptr, ptr %0, align 8, !tbaa !46
  %i.mu = getelementptr i8, ptr %.val.i, i64 16
  %.val.val.i = load ptr, ptr %i.mu, align 8, !tbaa !48
  %i.mv = tail call ptr @Abc_NamStr(ptr noundef %.val.val.i, i32 noundef %i.ms) #17
  %i.mw = tail call ptr (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.mr, ptr noundef nonnull @.str.69, ptr noundef %i.mv, i32 noundef %i.mt) ; 0 uses
  br label %Cba_ManWriteLineFile.exit

Cba_ManWriteLineFile.exit:                        ; preds = %Vec_StrPrintStr.exit1117, %bb.dw, %bb.dx
  %i.mx = select i1 %i.j, ptr @.str.78, ptr @.str.79
  %i.my = select i1 %i.j, i64 1, i64 2
  br label %bb.dy

bb.dy:                                            ; preds = %Vec_StrPush.exit.i1123, %Cba_ManWriteLineFile.exit
  %indvars.iv.i1120 = phi i64 [ 0, %Cba_ManWriteLineFile.exit ], [ %indvars.iv.next.i1124, %Vec_StrPush.exit.i1123 ] ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.i1120
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !20
  %i.nb = load i32, ptr %i.da, align 4, !tbaa !23 ; 7 uses
  %i.nc = load i32, ptr %i.b, align 8, !tbaa !24
  %i.nd = icmp eq i32 %i.nb, %i.nc
  br i1 %i.nd, label %bb.dz, label %.Vec_StrPush.exit_crit_edge.i1121

.Vec_StrPush.exit_crit_edge.i1121:                ; preds = %bb.dy
  %.pre.i1122 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1123

bb.dz:                                            ; preds = %bb.dy
  %i.ne = icmp slt i32 %i.nb, 16
  br i1 %i.ne, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.nf = load ptr, ptr %i.db, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i.i1133 = icmp eq ptr %i.nf, null
  br i1 %.not9.i.i.i1133, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ng = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.nf, i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1130

bb.ec:                                            ; preds = %bb.ea
  %i.nh = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1130

bb.ed:                                            ; preds = %bb.dz
  %i.ni = icmp samesign ult i32 %i.nb, 1073741823
  %i.nj = shl nuw nsw i32 %i.nb, 1
  %spec.select.i.i1126 = select i1 %i.ni, i32 %i.nj, i32 2147483647 ; 4 uses
  %.not.i9.i.i1127 = icmp samesign ult i32 %i.nb, %spec.select.i.i1126
  %.pre8.i1128 = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i.i1127, label %bb.ee, label %Vec_StrPush.exit.i1123

bb.ee:                                            ; preds = %bb.ed
  %.not9.i10.i.i1129 = icmp eq ptr %.pre8.i1128, null
  %i.nk = zext nneg i32 %spec.select.i.i1126 to i64 ; 2 uses
  br i1 %.not9.i10.i.i1129, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.nl = tail call ptr @realloc(ptr noundef nonnull %.pre8.i1128, i64 noundef %i.nk) #18
  br label %Vec_StrGrow.exit11.sink.split.i.i1130

bb.eg:                                            ; preds = %bb.ee
  %i.nm = tail call noalias ptr @malloc(i64 noundef %i.nk) #19
  br label %Vec_StrGrow.exit11.sink.split.i.i1130

Vec_StrGrow.exit11.sink.split.i.i1130:            ; preds = %bb.eg, %bb.ef, %bb.ec, %bb.eb
  %i.nn = phi ptr [ %i.nh, %bb.ec ], [ %i.ng, %bb.eb ], [ %i.nl, %bb.ef ], [ %i.nm, %bb.eg ] ; 2 uses
  %spec.select.sink.i.i1131 = phi i32 [ 16, %bb.ec ], [ 16, %bb.eb ], [ %spec.select.i.i1126, %bb.ef ], [ %spec.select.i.i1126, %bb.eg ]
  store ptr %i.nn, ptr %i.db, align 8, !tbaa !25
  store i32 %spec.select.sink.i.i1131, ptr %i.b, align 8, !tbaa !24
  %.pre9.i1132 = load i32, ptr %i.da, align 4, !tbaa !23
  br label %Vec_StrPush.exit.i1123

Vec_StrPush.exit.i1123:                           ; preds = %Vec_StrGrow.exit11.sink.split.i.i1130, %bb.ed, %.Vec_StrPush.exit_crit_edge.i1121
  %i.no = phi i32 [ %i.nb, %.Vec_StrPush.exit_crit_edge.i1121 ], [ %i.nb, %bb.ed ], [ %.pre9.i1132, %Vec_StrGrow.exit11.sink.split.i.i1130 ] ; 2 uses
  %i.np = phi ptr [ %.pre.i1122, %.Vec_StrPush.exit_crit_edge.i1121 ], [ %.pre8.i1128, %bb.ed ], [ %i.nn, %Vec_StrGrow.exit11.sink.split.i.i1130 ]
  %i.nq = add nsw i32 %i.no, 1
  store i32 %i.nq, ptr %i.da, align 4, !tbaa !23
  %i.nr = sext i32 %i.no to i64
  %i.ns = getelementptr inbounds i8, ptr %i.np, i64 %i.nr
  store i8 %i.na, ptr %i.ns, align 1, !tbaa !20
  %indvars.iv.next.i1124 = add nuw nsw i64 %indvars.iv.i1120, 1 ; 2 uses
  %exitcond.not.i1125 = icmp eq i64 %indvars.iv.next.i1124, %i.my
  br i1 %exitcond.not.i1125, label %Vec_StrPrintStr.exit1134.preheader, label %bb.dy, !llvm.loop !2

Vec_StrPrintStr.exit1134.preheader:               ; preds = %Vec_StrPush.exit.i1123
  %.val9503019 = load i32, ptr %i.fs, align 4, !tbaa !26
  %i.nt = icmp sgt i32 %.val9503019, 0
  br i1 %i.nt, label %.lr.ph.i1135.lr.ph, label %.lr.ph.i1192

.lr.ph.i1135.lr.ph:                               ; preds = %Vec_StrPrintStr.exit1134.preheader
  %i.nu = getelementptr i8, ptr %0, i64 64
  %i.nv = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.nw = getelementptr i8, ptr %0, i64 112
  %i.nx = getelementptr i8, ptr %0, i64 144
  %i.ny = getelementptr i8, ptr %0, i64 128
  br label %.lr.ph.i1135

.lr.ph.i1135:                                     ; preds = %.lr.ph.i1135.lr.ph, %Vec_StrPush.exit
  %indvars.iv3077 = phi i64 [ 0, %.lr.ph.i1135.lr.ph ], [ %indvars.iv.next3078, %Vec_StrPush.exit ] ; 2 uses
  %.val952 = load ptr, ptr %i.nu, align 8, !tbaa !27
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.val952, i64 %indvars.iv3077
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !28 ; 4 uses
  %.val843 = load i32, ptr %i.da, align 4, !tbaa !23 ; 8 uses
  %i.ob = load i32, ptr %i.b, align 8, !tbaa !24
  %i.oc = icmp eq i32 %.val843, %i.ob
  br i1 %i.oc, label %bb.eh, label %.Vec_StrPush.exit_crit_edge.i1138

.Vec_StrPush.exit_crit_edge.i1138:                ; preds = %.lr.ph.i1135
  %.pre.i1139 = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %Vec_StrPush.exit.i1140

end_hunk_1
