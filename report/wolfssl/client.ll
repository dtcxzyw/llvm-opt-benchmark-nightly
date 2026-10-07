Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/client?download=true
inline.NumInlined: 45
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@client_test:bb.a

bb.bs:                                            ; preds = %mygetopt_long.exit.thread
  %i.de = load ptr, ptr @myoptarg, align 8, !tbaa !15
  br label %.lr.ph.backedge

bb.bt:                                            ; preds = %mygetopt_long.exit.thread
  %i.df = load ptr, ptr @myoptarg, align 8, !tbaa !15
  br label %.lr.ph.backedge

bb.bu:                                            ; preds = %mygetopt_long.exit.thread
  %i.dg = load ptr, ptr @myoptarg, align 8, !tbaa !15
  br label %.lr.ph.backedge

bb.bv:                                            ; preds = %mygetopt_long.exit.thread
  %i.dh = load ptr, ptr @myoptarg, align 8, !tbaa !15
  %i.di = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.dh, ptr noundef null, i32 noundef 10) #21, !inline_history !37
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = add i32 %i.dj, -16001
  %or.cond5 = icmp ult i32 %i.dk, -16000
  br i1 %or.cond5, label %bb.bw, label %.lr.ph.backedge

bb.bw:                                            ; preds = %bb.bv
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.bx:                                            ; preds = %mygetopt_long.exit.thread
  %i.dl = load ptr, ptr @myoptarg, align 8, !tbaa !15
  %i.dm = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.dl, ptr noundef null, i32 noundef 10) #21, !inline_history !37
  %i.dn = trunc i64 %i.dm to i32                  ; 2 uses
  %or.cond7 = icmp ugt i32 %i.dn, 1000000
  br i1 %or.cond7, label %bb.by, label %.lr.ph.backedge

bb.by:                                            ; preds = %bb.bx
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.bz:                                            ; preds = %mygetopt_long.exit.thread
  %i.do = load ptr, ptr @myoptarg, align 8, !tbaa !15
  %i.dp = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.do, ptr noundef null, i32 noundef 10) #21, !inline_history !38 ; 2 uses
  %myoptarg.promoted = load ptr, ptr @myoptarg, align 8, !tbaa !15
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cc, %bb.bz
  %i.dq = phi ptr [ %i.dv, %bb.cc ], [ %myoptarg.promoted, %bb.bz ] ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !16
  switch i8 %i.dr, label %bb.cc [
    i8 0, label %.loopexit
    i8 44, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ds, ptr noundef null, i32 noundef 10) #21, !inline_history !37
  %i.du = trunc i64 %i.dt to i32
  br label %.loopexit

bb.cc:                                            ; preds = %bb.ca
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 2 uses
  store ptr %i.dv, ptr @myoptarg, align 8, !tbaa !15
  br label %bb.ca, !llvm.loop !39

.loopexit:                                        ; preds = %bb.ca, %bb.cb
  %.1500 = phi i32 [ %i.du, %bb.cb ], [ %.04991685, %bb.ca ] ; 2 uses
  %i.dw = icmp eq i64 %i.dp, 0
  %i.dx = icmp slt i32 %.1500, 1
  %or.cond9 = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond9, label %bb.cd, label %.lr.ph.backedge

bb.cd:                                            ; preds = %.loopexit
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.ce:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cf:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cg:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.ch:                                            ; preds = %mygetopt_long.exit.thread
  %i.dy = tail call i32 @wolfSSL_GetObjectSize() #21 ; 0 uses
  br label %.lr.ph.backedge

bb.ci:                                            ; preds = %mygetopt_long.exit.thread
  %i.dz = load ptr, ptr @myoptarg, align 8, !tbaa !15 ; 2 uses
  %i.ea = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dz, ptr noundef nonnull dereferenceable(6) @.str.32) #22
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.cj, label %.lr.ph.backedge

bb.cj:                                            ; preds = %bb.ci
  %puts621 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.ck:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cl:                                            ; preds = %mygetopt_long.exit.thread
  %i.ec = load ptr, ptr @myoptarg, align 8, !tbaa !15 ; 2 uses
  %i.ed = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(5) @.str.34) #22
  %.not620 = icmp eq i32 %i.ed, 0
  br i1 %.not620, label %.lr.ph.backedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.cn:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.co:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cp:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cq:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cr:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cs:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.ct:                                            ; preds = %mygetopt_long.exit.thread
  %i.ee = load ptr, ptr @myoptarg, align 8, !tbaa !15
  %i.ef = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ee, ptr noundef null, i32 noundef 10) #21, !inline_history !37
  %i.eg = trunc i64 %i.ef to i32                  ; 2 uses
  %or.cond11 = icmp ugt i32 %i.eg, 1
  %spec.store.select79 = select i1 %or.cond11, i32 0, i32 %i.eg
  store i32 %spec.store.select79, ptr @lng_index, align 4, !tbaa !10
  br label %.lr.ph.backedge

bb.cu:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cv:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.cw:                                            ; preds = %mygetopt_long.exit.thread
  %i.eh = load ptr, ptr @myoptarg, align 8, !tbaa !15
  %i.ei = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.eh, ptr noundef null, i32 noundef 10) #21, !inline_history !37
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  %or.cond13 = icmp ugt i32 %i.ej, 4
  br i1 %or.cond13, label %bb.cx, label %.lr.ph.backedge

bb.cx:                                            ; preds = %bb.cw
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.cy:                                            ; preds = %mygetopt_long.exit.thread
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite619 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 38, i64 1, ptr %i.ek) #25 ; 0 uses
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.cz:                                            ; preds = %mygetopt_long.exit.thread
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite618 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 38, i64 1, ptr %i.el) #25 ; 0 uses
  tail call void @exit(i32 noundef 2) #24
  unreachable

bb.da:                                            ; preds = %mygetopt_long.exit.thread
  %i.em = load ptr, ptr @myoptarg, align 8, !tbaa !15
  br label %.lr.ph.backedge

bb.db:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.dc:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.dd:                                            ; preds = %mygetopt_long.exit.thread
  store i1 true, ptr @quieter, align 4
  br label %.lr.ph.backedge

bb.de:                                            ; preds = %mygetopt_long.exit.thread
  br label %.lr.ph.backedge

bb.df:                                            ; preds = %mygetopt_long.exit.thread
  tail call fastcc void @Usage()
  tail call void @exit(i32 noundef 2) #24
  unreachable

mygetopt_long.exit.thread651.sink.split:          ; preds = %.thread1.i, %bb.h, %bb.j
  %.sink = phi ptr [ %i.al, %bb.j ], [ %i.ad, %bb.h ], [ null, %.thread1.i ]
  store ptr %.sink, ptr @myoptarg, align 8, !tbaa !15
  br label %mygetopt_long.exit.thread651

mygetopt_long.exit.thread651:                     ; preds = %bb.p, %bb.v, %mygetopt_long.exit, %mygetopt_long.exit.thread651.sink.split, %bb.i
  store i32 0, ptr @myoptind, align 4, !tbaa !10
  %i.en = icmp eq i32 %.05101675, -99
  %.not558 = trunc nuw i32 %.04951689 to i1       ; 2 uses
  br i1 %i.en, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %mygetopt_long.exit.thread651
  %spec.select = select i1 %.not558, i32 -2, i32 3
  br label %.thread

bb.dh:                                            ; preds = %mygetopt_long.exit.thread651
  br i1 %.not558, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  switch i32 %.05101675, label %bb.dk [
    i32 3, label %.thread
    i32 4, label %bb.dj
    i32 2, label %switch.edge
  ]

bb.dj:                                            ; preds = %bb.di
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.38) #26
  unreachable

switch.edge:                                      ; preds = %bb.di
  br label %.thread

.thread:                                          ; preds = %bb.dg, %.thread2951, %bb.di, %switch.edge
  %.07192949 = phi i32 [ %.01759, %switch.edge ], [ %.01759, %bb.di ], [ %.01759, %bb.dg ], [ 1, %.thread2951 ]
  %.04197402946 = phi i32 [ %.04191757, %switch.edge ], [ %.04191757, %bb.di ], [ %.04191757, %bb.dg ], [ 0, %.thread2951 ]
  %.04217612943 = phi i8 [ %.04211755, %switch.edge ], [ %.04211755, %bb.di ], [ %.04211755, %bb.dg ], [ 0, %.thread2951 ]
  %.04237822940 = phi i32 [ %.04231753, %switch.edge ], [ %.04231753, %bb.di ], [ %.04231753, %bb.dg ], [ 0, %.thread2951 ]
  %.04258032937 = phi i32 [ %.04251751, %switch.edge ], [ %.04251751, %bb.di ], [ %.04251751, %bb.dg ], [ 0, %.thread2951 ]
  %.04278242934 = phi ptr [ %.04271749, %switch.edge ], [ %.04271749, %bb.di ], [ %.04271749, %bb.dg ], [ null, %.thread2951 ]
  %.04298452931 = phi i32 [ %.04291747, %switch.edge ], [ %.04291747, %bb.di ], [ %.04291747, %bb.dg ], [ 0, %.thread2951 ]
  %.04318662928 = phi i32 [ %.04311745, %switch.edge ], [ %.04311745, %bb.di ], [ %.04311745, %bb.dg ], [ 1, %.thread2951 ]
  %.04338872925 = phi i32 [ %.04331743, %switch.edge ], [ %.04331743, %bb.di ], [ %.04331743, %bb.dg ], [ 0, %.thread2951 ]
  %.04359082922 = phi i32 [ %.04351741, %switch.edge ], [ %.04351741, %bb.di ], [ %.04351741, %bb.dg ], [ 0, %.thread2951 ]
  %.04379292919 = phi i32 [ %.04371739, %switch.edge ], [ %.04371739, %bb.di ], [ %.04371739, %bb.dg ], [ 0, %.thread2951 ]
  %.04399502916 = phi i32 [ %.04391737, %switch.edge ], [ %.04391737, %bb.di ], [ %.04391737, %bb.dg ], [ 0, %.thread2951 ]
  %.04419712913 = phi i32 [ %.04411735, %switch.edge ], [ %.04411735, %bb.di ], [ %.04411735, %bb.dg ], [ 0, %.thread2951 ]
  %.04439922910 = phi i8 [ %.04431733, %switch.edge ], [ %.04431733, %bb.di ], [ %.04431733, %bb.dg ], [ 0, %.thread2951 ]
  %.044510132907 = phi ptr [ %.04451731, %switch.edge ], [ %.04451731, %bb.di ], [ %.04451731, %bb.dg ], [ null, %.thread2951 ]
  %.044710342904 = phi i32 [ %.04471729, %switch.edge ], [ %.04471729, %bb.di ], [ %.04471729, %bb.dg ], [ 0, %.thread2951 ]
  %.044910552901 = phi i32 [ %.04491727, %switch.edge ], [ %.04491727, %bb.di ], [ %.04491727, %bb.dg ], [ 0, %.thread2951 ]
  %.045110762898 = phi ptr [ %.04511725, %switch.edge ], [ %.04511725, %bb.di ], [ %.04511725, %bb.dg ], [ null, %.thread2951 ]
  %.045310972895 = phi i32 [ %.04531723, %switch.edge ], [ %.04531723, %bb.di ], [ %.04531723, %bb.dg ], [ 0, %.thread2951 ]
  %.045511182892 = phi ptr [ %.04551721, %switch.edge ], [ %.04551721, %bb.di ], [ %.04551721, %bb.dg ], [ @.str.16, %.thread2951 ]
  %.045711392889 = phi ptr [ %.04571719, %switch.edge ], [ %.04571719, %bb.di ], [ %.04571719, %bb.dg ], [ @.str.15, %.thread2951 ]
  %.045911602886 = phi ptr [ %.04591717, %switch.edge ], [ %.04591717, %bb.di ], [ %.04591717, %bb.dg ], [ @.str.14, %.thread2951 ]
  %.046111812883 = phi i32 [ %.04611715, %switch.edge ], [ %.04611715, %bb.di ], [ %.04611715, %bb.dg ], [ 0, %.thread2951 ]
  %.046312022880 = phi i32 [ %.04631713, %switch.edge ], [ %.04631713, %bb.di ], [ %.04631713, %bb.dg ], [ 0, %.thread2951 ]
  %.046512232877 = phi ptr [ %.04651711, %switch.edge ], [ %.04651711, %bb.di ], [ %.04651711, %bb.dg ], [ null, %.thread2951 ]
  %.046712442874 = phi i32 [ %.04671709, %switch.edge ], [ %.04671709, %bb.di ], [ %.04671709, %bb.dg ], [ 1024, %.thread2951 ]
  %.046912652871 = phi i32 [ %.04691707, %switch.edge ], [ %.04691707, %bb.di ], [ %.04691707, %bb.dg ], [ 0, %.thread2951 ]
  %.047112862868 = phi i32 [ %.04711705, %switch.edge ], [ %.04711705, %bb.di ], [ %.04711705, %bb.dg ], [ 1, %.thread2951 ]
  %.048113072865 = phi i32 [ %.04811703, %switch.edge ], [ %.04811703, %bb.di ], [ %.04811703, %bb.dg ], [ 0, %.thread2951 ]
  %.048313282861 = phi i32 [ %.04831701, %switch.edge ], [ %.04831701, %bb.di ], [ %.04831701, %bb.dg ], [ 0, %.thread2951 ] ; 2 uses
  %.048513502859 = phi i32 [ %.04851699, %switch.edge ], [ %.04851699, %bb.di ], [ %.04851699, %bb.dg ], [ 0, %.thread2951 ]
  %.048713712856 = phi i32 [ %.04871697, %switch.edge ], [ %.04871697, %bb.di ], [ %.04871697, %bb.dg ], [ 0, %.thread2951 ]
  %.048913922853 = phi i32 [ %.04891695, %switch.edge ], [ %.04891695, %bb.di ], [ %.04891695, %bb.dg ], [ 1, %.thread2951 ]
  %.049114132850 = phi i32 [ %.04911693, %switch.edge ], [ %.04911693, %bb.di ], [ %.04911693, %bb.dg ], [ 0, %.thread2951 ]
  %.049314342847 = phi i32 [ %.04931691, %switch.edge ], [ %.04931691, %bb.di ], [ %.04931691, %bb.dg ], [ 0, %.thread2951 ]
  %.049514552845 = phi i32 [ %.04951689, %switch.edge ], [ %.04951689, %bb.di ], [ %.04951689, %bb.dg ], [ 0, %.thread2951 ]
  %.049714772841 = phi i64 [ %.04971687, %switch.edge ], [ %.04971687, %bb.di ], [ %.04971687, %bb.dg ], [ 0, %.thread2951 ]
  %.049914982838 = phi i32 [ %.04991685, %switch.edge ], [ %.04991685, %bb.di ], [ %.04991685, %bb.dg ], [ 16384, %.thread2951 ]
  %.050215192835 = phi i32 [ %.05021683, %switch.edge ], [ %.05021683, %bb.di ], [ %.05021683, %bb.dg ], [ 0, %.thread2951 ]
  %.050415402832 = phi i32 [ %.05041681, %switch.edge ], [ %.05041681, %bb.di ], [ %.05041681, %bb.dg ], [ 0, %.thread2951 ]
  %.050615612829 = phi i32 [ %.05061679, %switch.edge ], [ %.05061679, %bb.di ], [ %.05061679, %bb.dg ], [ 0, %.thread2951 ]
  %.050815822826 = phi i32 [ %.05081677, %switch.edge ], [ %.05081677, %bb.di ], [ %.05081677, %bb.dg ], [ -99, %.thread2951 ]
  %.051316242823 = phi ptr [ %.05131673, %switch.edge ], [ %.05131673, %bb.di ], [ %.05131673, %bb.dg ], [ @.str.6, %.thread2951 ]
  %.051516452820 = phi ptr [ %.05151671, %switch.edge ], [ %.05151671, %bb.di ], [ %.05151671, %bb.dg ], [ @.str.5, %.thread2951 ]
  %.051716672816 = phi i16 [ %.05171669, %switch.edge ], [ %.05171669, %bb.di ], [ %.05171669, %bb.dg ], [ 11111, %.thread2951 ]
  %.2512.ph = phi i32 [ -1, %switch.edge ], [ -2, %bb.di ], [ %spec.select, %bb.dg ], [ 3, %.thread2951 ]
  %i.eo = icmp ne i32 %.048313282861, 0
  br label %bb.dm

bb.dk:                                            ; preds = %bb.di, %bb.dh
  %i.ep = icmp sgt i32 %.05101675, 3
  %9 = trunc nuw i32 %.04831701 to i1             ; 2 uses
  %or.cond15 = and i1 %i.ep, %9
  %or.cond15.not = xor i1 %or.cond15, true
  %.b550 = load i1, ptr @quieter, align 4
  %or.cond81 = select i1 %or.cond15.not, i1 true, i1 %.b550
  br i1 %or.cond81, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.39, i64 51, i64 1, ptr %i.eq) #25 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %.thread, %bb.dl, %bb.dk
  %.07192948 = phi i32 [ %.07192949, %.thread ], [ %.01759, %bb.dl ], [ %.01759, %bb.dk ] ; 4 uses
  %.04197402945 = phi i32 [ %.04197402946, %.thread ], [ %.04191757, %bb.dl ], [ %.04191757, %bb.dk ]
  %.04217612942 = phi i8 [ %.04217612943, %.thread ], [ %.04211755, %bb.dl ], [ %.04211755, %bb.dk ]
  %.04237822939 = phi i32 [ %.04237822940, %.thread ], [ %.04231753, %bb.dl ], [ %.04231753, %bb.dk ]
  %.04258032936 = phi i32 [ %.04258032937, %.thread ], [ %.04251751, %bb.dl ], [ %.04251751, %bb.dk ] ; 5 uses
  %.04278242933 = phi ptr [ %.04278242934, %.thread ], [ %.04271749, %bb.dl ], [ %.04271749, %bb.dk ] ; 3 uses
  %.04298452930 = phi i32 [ %.04298452931, %.thread ], [ %.04291747, %bb.dl ], [ %.04291747, %bb.dk ] ; 4 uses
  %.04318662927 = phi i32 [ %.04318662928, %.thread ], [ %.04311745, %bb.dl ], [ %.04311745, %bb.dk ]
  %.04338872924 = phi i32 [ %.04338872925, %.thread ], [ %.04331743, %bb.dl ], [ %.04331743, %bb.dk ]
  %.04359082921 = phi i32 [ %.04359082922, %.thread ], [ %.04351741, %bb.dl ], [ %.04351741, %bb.dk ]
  %.04379292918 = phi i32 [ %.04379292919, %.thread ], [ %.04371739, %bb.dl ], [ %.04371739, %bb.dk ]
  %.04399502915 = phi i32 [ %.04399502916, %.thread ], [ %.04391737, %bb.dl ], [ %.04391737, %bb.dk ] ; 3 uses
  %.04419712912 = phi i32 [ %.04419712913, %.thread ], [ %.04411735, %bb.dl ], [ %.04411735, %bb.dk ] ; 2 uses
  %.04439922909 = phi i8 [ %.04439922910, %.thread ], [ %.04431733, %bb.dl ], [ %.04431733, %bb.dk ]
  %.044510132906 = phi ptr [ %.044510132907, %.thread ], [ %.04451731, %bb.dl ], [ %.04451731, %bb.dk ] ; 3 uses
  %.044710342903 = phi i32 [ %.044710342904, %.thread ], [ %.04471729, %bb.dl ], [ %.04471729, %bb.dk ]
  %.044910552900 = phi i32 [ %.044910552901, %.thread ], [ %.04491727, %bb.dl ], [ %.04491727, %bb.dk ]
  %.045110762897 = phi ptr [ %.045110762898, %.thread ], [ %.04511725, %bb.dl ], [ %.04511725, %bb.dk ] ; 2 uses
  %.045310972894 = phi i32 [ %.045310972895, %.thread ], [ %.04531723, %bb.dl ], [ %.04531723, %bb.dk ]
  %.045511182891 = phi ptr [ %.045511182892, %.thread ], [ %.04551721, %bb.dl ], [ %.04551721, %bb.dk ] ; 2 uses
  %.045711392888 = phi ptr [ %.045711392889, %.thread ], [ %.04571719, %bb.dl ], [ %.04571719, %bb.dk ] ; 2 uses
  %.045911602885 = phi ptr [ %.045911602886, %.thread ], [ %.04591717, %bb.dl ], [ %.04591717, %bb.dk ]
  %.046111812882 = phi i32 [ %.046111812883, %.thread ], [ %.04611715, %bb.dl ], [ %.04611715, %bb.dk ]
  %.046312022879 = phi i32 [ %.046312022880, %.thread ], [ %.04631713, %bb.dl ], [ %.04631713, %bb.dk ]
  %.046512232876 = phi ptr [ %.046512232877, %.thread ], [ %.04651711, %bb.dl ], [ %.04651711, %bb.dk ] ; 6 uses
  %.046712442873 = phi i32 [ %.046712442874, %.thread ], [ %.04671709, %bb.dl ], [ %.04671709, %bb.dk ]
  %.046912652870 = phi i32 [ %.046912652871, %.thread ], [ %.04691707, %bb.dl ], [ %.04691707, %bb.dk ]
  %.047112862867 = phi i32 [ %.047112862868, %.thread ], [ %.04711705, %bb.dl ], [ %.04711705, %bb.dk ]
  %.048113072864 = phi i32 [ %.048113072865, %.thread ], [ %.04811703, %bb.dl ], [ %.04811703, %bb.dk ] ; 2 uses
  %.048313282863 = phi i32 [ %.048313282861, %.thread ], [ %.04831701, %bb.dl ], [ %.04831701, %bb.dk ]
  %.048513502858 = phi i32 [ %.048513502859, %.thread ], [ %.04851699, %bb.dl ], [ %.04851699, %bb.dk ]
  %.048713712855 = phi i32 [ %.048713712856, %.thread ], [ %.04871697, %bb.dl ], [ %.04871697, %bb.dk ]
  %.048913922852 = phi i32 [ %.048913922853, %.thread ], [ %.04891695, %bb.dl ], [ %.04891695, %bb.dk ] ; 2 uses
  %.049114132849 = phi i32 [ %.049114132850, %.thread ], [ %.04911693, %bb.dl ], [ %.04911693, %bb.dk ]
  %.049314342846 = phi i32 [ %.049314342847, %.thread ], [ %.04931691, %bb.dl ], [ %.04931691, %bb.dk ] ; 5 uses
  %.049514552844 = phi i32 [ %.049514552845, %.thread ], [ %.04951689, %bb.dl ], [ %.04951689, %bb.dk ]
  %.049714772840 = phi i64 [ %.049714772841, %.thread ], [ %.04971687, %bb.dl ], [ %.04971687, %bb.dk ] ; 2 uses
  %.049914982837 = phi i32 [ %.049914982838, %.thread ], [ %.04991685, %bb.dl ], [ %.04991685, %bb.dk ]
  %.050215192834 = phi i32 [ %.050215192835, %.thread ], [ %.05021683, %bb.dl ], [ %.05021683, %bb.dk ] ; 2 uses
  %.050415402831 = phi i32 [ %.050415402832, %.thread ], [ %.05041681, %bb.dl ], [ %.05041681, %bb.dk ] ; 2 uses
  %.050615612828 = phi i32 [ %.050615612829, %.thread ], [ %.05061679, %bb.dl ], [ %.05061679, %bb.dk ] ; 2 uses
  %.050815822825 = phi i32 [ %.050815822826, %.thread ], [ %.05081677, %bb.dl ], [ %.05081677, %bb.dk ] ; 2 uses
  %.051316242822 = phi ptr [ %.051316242823, %.thread ], [ %.05131673, %bb.dl ], [ %.05131673, %bb.dk ]
  %.051516452819 = phi ptr [ %.051516452820, %.thread ], [ %.05151671, %bb.dl ], [ %.05151671, %bb.dk ] ; 9 uses
  %.051716672815 = phi i16 [ %.051716672816, %.thread ], [ %.05171669, %bb.dl ], [ %.05171669, %bb.dk ] ; 8 uses
  %i.er = phi i1 [ %i.eo, %.thread ], [ true, %bb.dl ], [ %9, %bb.dk ] ; 2 uses
  %.2512659 = phi i32 [ %.2512.ph, %.thread ], [ %.05101675, %bb.dl ], [ %.05101675, %bb.dk ] ; 6 uses
  %.not559 = icmp eq i32 %.04298452930, 0
  br i1 %.not559, label %bb.ds, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.es = and i32 %.2512659, -2
  %or.cond17 = icmp eq i32 %i.es, -98
  br i1 %or.cond17, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %.b555 = load i1, ptr @quieter, align 4
  br i1 %.b555, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite560 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 96, i64 1, ptr %i.et) #25 ; 0 uses
  br label %bb.ds

bb.dq:                                            ; preds = %bb.dn
  switch i32 %.2512659, label %bb.dr [
    i32 4, label %bb.dt
    i32 -4, label %bb.dw
  ]

bb.dr:                                            ; preds = %bb.dq
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.41) #26
  unreachable

bb.ds:                                            ; preds = %bb.dp, %bb.do, %bb.dm
  switch i32 %.2512659, label %bb.dw [
    i32 3, label %bb.dx
    i32 4, label %bb.dt
    i32 -98, label %bb.du
  ]

bb.dt:                                            ; preds = %bb.dq, %bb.ds
  br label %bb.dx

bb.du:                                            ; preds = %bb.ds
  %.not561 = icmp eq i32 %.049514552844, 0
  br i1 %.not561, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.42) #26
  unreachable

bb.dw:                                            ; preds = %bb.dq, %bb.ds
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.43) #26
  unreachable

bb.dx:                                            ; preds = %bb.du, %bb.ds, %bb.dt
  %.0523 = phi ptr [ @wolfTLSv1_2_client_method_ex, %bb.ds ], [ @wolfTLSv1_3_client_method_ex, %bb.dt ], [ @wolfSSLv23_client_method_ex, %bb.du ]
  %i.eu = tail call ptr %.0523(ptr noundef null) #21, !callees !53
  %i.ev = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.eu) #21 ; 45 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.45) #26
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %.not562 = icmp eq i8 %.04217612942, 0
  br i1 %.not562, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ex = tail call i32 @wolfSSL_CTX_load_system_CA_certs(ptr noundef nonnull %i.ev) #21
  %.not563 = icmp eq i32 %i.ex, 1
  br i1 %.not563, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.46) #26
  unreachable

bb.ec:                                            ; preds = %bb.ea, %bb.dz
  %.not564 = icmp eq i32 %.050815822825, -99
  br i1 %.not564, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ey = tail call i32 @wolfSSL_CTX_SetMinVersion(ptr noundef nonnull %i.ev, i32 noundef %.050815822825) #21
  %.not565 = icmp eq i32 %i.ey, 1
  br i1 %.not565, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.47) #26
  unreachable

bb.ef:                                            ; preds = %bb.ed, %bb.ec
  %i.ez = icmp ne i32 %.048513502858, 0           ; 2 uses
  br i1 %i.ez, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  tail call void @wolfSSL_CTX_SetIOSend(ptr noundef nonnull %i.ev, ptr noundef nonnull @SimulateWantWriteIOSendCb) #21
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.fa = icmp eq ptr %.046512232876, null
  %i.fb = icmp ne i32 %.046312022879, 0
  %or.cond21 = or i1 %i.fa, %i.fb                 ; 2 uses
  br i1 %or.cond21, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.fc = tail call i32 @wolfSSL_CTX_set_cipher_list(ptr noundef nonnull %i.ev, ptr noundef nonnull %.046512232876) #21
  %.not566 = icmp eq i32 %i.fc, 1
  br i1 %.not566, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ev) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.48) #26
  unreachable

bb.ek:                                            ; preds = %bb.ei, %bb.eh
  %.not567 = icmp eq i32 %.046912652870, 0
  br i1 %.not567, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.fd = tail call i32 @wolfSSL_CTX_set_group_messages(ptr noundef nonnull %i.ev) #21 ; 0 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.fe = trunc i32 %.046712442873 to i16
  %i.ff = tail call i32 @wolfSSL_CTX_SetMinDhKey_Sz(ptr noundef nonnull %i.ev, i16 noundef zeroext %i.fe) #21
  %.not568 = icmp eq i32 %i.ff, 1
  br i1 %.not568, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.49) #26
  unreachable

bb.eo:                                            ; preds = %bb.em
  %.not569 = icmp eq i32 %.050615612828, 0        ; 3 uses
  %i.fg = icmp eq i32 %.047112862867, 0
  %not..not5692767 = xor i1 %.not569, true
  %i.fh = or i1 %i.fg, %not..not5692767           ; 2 uses
  %i.fi = icmp ne i32 %.04237822939, 0            ; 3 uses
  %or.cond25 = or i1 %i.fh, %i.fi
  br i1 %or.cond25, label %.critedge, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.fj = tail call i32 @wolfSSL_CTX_use_certificate_chain_file_format(ptr noundef nonnull %i.ev, ptr noundef %.045711392888, i32 noundef %.07192948) #21
  %.not570 = icmp eq i32 %i.fj, 1
  br i1 %.not570, label %bb.er, label %bb.eq
end_hunk_0
begin_hunk_1_@client_test:bb.a

bb.hh:                                            ; preds = %bb.hf
  %i.ik = load ptr, ptr getelementptr inbounds nuw (i8, ptr @starttlsCmd, i64 16), align 16, !tbaa !15 ; 2 uses
  %i.il = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ik) #22 ; 2 uses
  %i.im = call i32 @strncmp(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ik, i64 noundef %i.il) #22
  %.not8.i = icmp eq i32 %i.im, 0
  br i1 %.not8.i, label %bb.hi, label %bb.hk

bb.hi:                                            ; preds = %bb.hh
  %i.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.il
  %i.io = load i8, ptr %i.in, align 1, !tbaa !16
  %i.ip = icmp eq i8 %i.io, 45
  br i1 %i.ip, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %puts9.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.c) ; 0 uses
  %i.iq = load i32, ptr %i.d, align 4, !tbaa !10
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @starttlsCmd, i64 24), align 8, !tbaa !15 ; 2 uses
  %i.is = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ir) #22
  %i.it = call i64 @send(i32 noundef %i.iq, ptr noundef nonnull %i.ir, i64 noundef %i.is, i32 noundef 0) #21
  %i.iu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @starttlsCmd, i64 24), align 8, !tbaa !15
  %i.iv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iu) #22
  %sext10.i = shl i64 %i.iv, 32
  %i.iw = ashr exact i64 %sext10.i, 32
  %.not11.i = icmp eq i64 %i.it, %i.iw
  br i1 %.not11.i, label %bb.hm, label %bb.hl

bb.hk:                                            ; preds = %bb.hi, %bb.hh
  call fastcc void @err_sys(ptr noundef nonnull @.str.222) #26
  unreachable

bb.hl:                                            ; preds = %bb.hj
  call fastcc void @err_sys(ptr noundef nonnull @.str.224) #26
  unreachable

bb.hm:                                            ; preds = %bb.hj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.c, i8 0, i64 512, i1 false)
  %i.ix = load i32, ptr %i.d, align 4, !tbaa !10
  %i.iy = call i64 @recv(i32 noundef %i.ix, ptr noundef nonnull %i.c, i64 noundef 511, i32 noundef 0) #21
  %i.iz = icmp slt i64 %i.iy, 0
  br i1 %i.iz, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  call fastcc void @err_sys(ptr noundef nonnull @.str.221) #26
  unreachable

bb.ho:                                            ; preds = %bb.hm
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 511
  store i8 0, ptr %i.ja, align 1, !tbaa !16
  %i.jb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @starttlsCmd, i64 32), align 16, !tbaa !15 ; 2 uses
  %i.jc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jb) #22 ; 2 uses
  %i.jd = call i32 @strncmp(ptr noundef nonnull %i.c, ptr noundef nonnull %i.jb, i64 noundef %i.jc) #22
  %.not12.i = icmp eq i32 %i.jd, 0
  br i1 %.not12.i, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.je = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.jc
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !16
  %i.jg = icmp eq i8 %i.jf, 32
  br i1 %i.jg, label %StartTLS_Init.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  call fastcc void @err_sys(ptr noundef nonnull @.str.225) #26
  unreachable

StartTLS_Init.exit:                               ; preds = %bb.hp
  %puts13.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.hr

bb.hr:                                            ; preds = %StartTLS_Init.exit, %bb.gx
  %i.jh = icmp eq i32 %.049114132849, 0
  %or.cond65.not = or i1 %i.jh, %.not573
  br i1 %or.cond65.not, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ji = call i32 @wolfSSL_check_domain_name(ptr noundef nonnull %i.gi, ptr noundef %.051316242822) #21 ; 0 uses
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.not594 = icmp eq i32 %.048713712855, 0        ; 2 uses
  br i1 %.not594, label %.preheader686, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.jj = load i32, ptr %i.d, align 4, !tbaa !10
  %i.jk = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.jj, i32 noundef 3, i32 noundef 0) #21 ; 2 uses
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.226) #26
  unreachable

bb.hw:                                            ; preds = %bb.hu
  %i.jm = load i32, ptr %i.d, align 4, !tbaa !10
  %i.jn = or i32 %i.jk, 2048
  %i.jo = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.jm, i32 noundef 4, i32 noundef %i.jn) #21
  %i.jp = icmp slt i32 %i.jo, 0
  br i1 %i.jp, label %bb.hx, label %.critedge635

bb.hx:                                            ; preds = %bb.hw
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.227) #26
  unreachable

.preheader686:                                    ; preds = %bb.ht, %bb.hy
  %i.jq = call i32 @wolfSSL_connect(ptr noundef nonnull %i.gi) #21
  %.not595 = icmp eq i32 %i.jq, 1
  br i1 %.not595, label %.critedge635.thread, label %bb.hy

bb.hy:                                            ; preds = %.preheader686
  %i.jr = call i32 @wolfSSL_get_error(ptr noundef nonnull %i.gi, i32 noundef 0) #21
  %i.js = icmp eq i32 %i.jr, -108
  br i1 %i.js, label %.preheader686, label %.critedge635.thread665, !llvm.loop !40

.critedge635:                                     ; preds = %bb.hw
  %i.jt = call fastcc i32 @NonBlockingSSL_Connect(ptr noundef %i.gi)
  %.not596 = icmp eq i32 %i.jt, 1
  br i1 %.not596, label %.critedge635.thread, label %.critedge635.thread665

.critedge635.thread665:                           ; preds = %bb.hy, %.critedge635
  %i.ju = call i32 @wolfSSL_get_error(ptr noundef nonnull %i.gi, i32 noundef 0) #21 ; 3 uses
  %.b554 = load i1, ptr @quieter, align 4
  br i1 %.b554, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %.critedge635.thread665
  %i.jv = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.jw = sext i32 %i.ju to i64
  %i.jx = call ptr @wolfSSL_ERR_error_string(i64 noundef %i.jw, ptr noundef nonnull %i.g) #21
  %i.jy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jv, ptr noundef nonnull @.str.63, i32 noundef %i.ju, ptr noundef %i.jx) #28 ; 0 uses
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %.critedge635.thread665
  call void @wolfSSL_free(ptr noundef nonnull %i.gi) #21
  call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ev) #21
  %i.jz = load i32, ptr %i.d, align 4, !tbaa !10
  %i.ka = call i32 @close(i32 noundef %i.jz) #21  ; 0 uses
  %.not617 = icmp eq i32 %.04258032936, 0
  br i1 %.not617, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  call fastcc void @err_sys(ptr noundef nonnull @.str.64) #26
  unreachable

bb.ic:                                            ; preds = %bb.ia
  store i32 %i.ju, ptr %i.n, align 8, !tbaa !49
  br label %bb.kv

.critedge635.thread:                              ; preds = %.preheader686, %.critedge635
  %i.kb = load i32, ptr @lng_index, align 4, !tbaa !10
  call fastcc void @showPeerEx(ptr noundef %i.gi, i32 noundef %i.kb)
  br i1 %or.cond21, label %bb.iq, label %bb.id

bb.id:                                            ; preds = %.critedge635.thread
  %strchr = call ptr @strchr(ptr nonnull dereferenceable(1) %.046512232876, i32 58)
  %.not597 = icmp eq ptr %strchr, null
  br i1 %.not597, label %bb.ie, label %bb.iq

bb.ie:                                            ; preds = %bb.id
  %i.kc = call ptr @wolfSSL_get_current_cipher(ptr noundef nonnull %i.gi) #21 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  %.not598 = icmp eq ptr %i.kc, null
  br i1 %.not598, label %bb.ip, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.kd = call i32 @wolfSSL_get_cipher_suite_from_name(ptr noundef nonnull %.046512232876, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #21
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.ig, label %bb.ip

bb.ig:                                            ; preds = %bb.if
  %i.kf = call i32 @wolfSSL_CIPHER_get_id(ptr noundef nonnull %i.kc) #21 ; 2 uses
  %i.kg = lshr i32 %i.kf, 8
  %i.kh = trunc i32 %i.kg to i8                   ; 3 uses
  %i.ki = trunc i32 %i.kf to i8                   ; 3 uses
  %i.kj = call ptr @wolfSSL_get_cipher_name_from_suite(i8 noundef zeroext %i.kh, i8 noundef zeroext %i.ki) #21 ; 2 uses
  %i.kk = call ptr @wolfSSL_get_cipher_name_iana_from_suite(i8 noundef zeroext %i.kh, i8 noundef zeroext %i.ki) #21 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, null
  br i1 %i.kl, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %bb.ig
  call fastcc void @err_sys(ptr noundef nonnull @.str.66) #26
  unreachable

bb.ii:                                            ; preds = %bb.ig
  %i.km = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.046512232876, ptr noundef nonnull dereferenceable(1) %i.kj) #22
  %.not599 = icmp eq i32 %i.km, 0
  br i1 %.not599, label %bb.ip, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.kn = icmp eq ptr %i.kk, null
  br i1 %i.kn, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.ko = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.046512232876, ptr noundef nonnull dereferenceable(1) %i.kk) #22
  %.not600 = icmp eq i32 %i.ko, 0
  br i1 %.not600, label %bb.ip, label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.kp = load i32, ptr %i.j, align 4, !tbaa !10
  %.not601 = trunc i32 %i.kp to i1
  br i1 %.not601, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  call fastcc void @err_sys(ptr noundef nonnull @.str.67) #26
  unreachable

bb.in:                                            ; preds = %bb.il
  %i.kq = load i8, ptr %i.h, align 1, !tbaa !16
  %.not602 = icmp eq i8 %i.kq, %i.kh
  %i.kr = load i8, ptr %i.i, align 1
  %.not603 = icmp eq i8 %i.kr, %i.ki
  %or.cond637 = select i1 %.not602, i1 %.not603, i1 false
  br i1 %or.cond637, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  call fastcc void @err_sys(ptr noundef nonnull @.str.68) #26
  unreachable

bb.ip:                                            ; preds = %bb.ii, %bb.ik, %bb.in, %bb.if, %bb.ie
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.id, %.critedge635.thread
  %i.ks = icmp ne ptr %.045110762897, null
  %or.cond69 = and i1 %i.hq, %i.ks
  br i1 %or.cond69, label %bb.ir, label %bb.jd

bb.ir:                                            ; preds = %bb.iq
  %i.kt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.045110762897, ptr noundef nonnull dereferenceable(5) @.str.34) #22
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.is, label %bb.jc

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %puts.i642 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  br label %bb.it

bb.it:                                            ; preds = %bb.iu, %bb.is
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @starttlsCmd, i64 40), align 8, !tbaa !15 ; 2 uses
  %i.kw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kv) #22
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = call i32 @wolfSSL_write(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.kv, i32 noundef %i.kx) #21 ; 2 uses
  %i.kz = icmp slt i32 %i.ky, 0
  br i1 %i.kz, label %bb.iu, label %.critedge.i

bb.iu:                                            ; preds = %bb.it
  %i.la = call i32 @wolfSSL_get_error(ptr noundef nonnull %i.gi, i32 noundef 0) #21
  %i.lb = icmp eq i32 %i.la, -108
  br i1 %i.lb, label %bb.it, label %.critedge.i, !llvm.loop !41

.critedge.i:                                      ; preds = %bb.iu, %bb.it
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @starttlsCmd, i64 40), align 8, !tbaa !15
  %i.ld = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lc) #22
  %i.le = trunc i64 %i.ld to i32
  %.not.i643 = icmp eq i32 %i.ky, %i.le
  br i1 %.not.i643, label %.preheader.i, label %bb.iv

bb.iv:                                            ; preds = %.critedge.i
  call fastcc void @err_sys(ptr noundef nonnull @.str.248) #26
  unreachable

.preheader.i:                                     ; preds = %.critedge.i, %bb.iw
  %i.lf = call i32 @wolfSSL_read(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.b, i32 noundef 255) #21 ; 2 uses
  %i.lg = icmp slt i32 %i.lf, 0
  br i1 %i.lg, label %bb.iw, label %.critedge33.i

bb.iw:                                            ; preds = %.preheader.i
  %i.lh = call i32 @wolfSSL_get_error(ptr noundef nonnull %i.gi, i32 noundef 0) #21
  %i.li = icmp eq i32 %i.lh, -108
  br i1 %i.li, label %.preheader.i, label %.critedge32.i, !llvm.loop !42

.critedge32.i:                                    ; preds = %bb.iw
  call fastcc void @err_sys(ptr noundef nonnull @.str.249) #26
  unreachable

.critedge33.i:                                    ; preds = %.preheader.i
  %i.lj = zext nneg i32 %i.lf to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lj
  store i8 0, ptr %i.lk, align 1, !tbaa !16
  %puts29.i = call i32 @puts(ptr nonnull dereferenceable(1) %i.b) ; 0 uses
  %i.ll = call i32 @wolfSSL_shutdown(ptr noundef nonnull %i.gi) #21
  %i.lm = icmp ne i32 %.048113072864, 0
  %i.ln = icmp eq i32 %i.ll, 2
  %or.cond.i = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond.i, label %bb.ix, label %SMTP_Shutdown.exit

bb.ix:                                            ; preds = %.critedge33.i
  %i.lo = call i32 @wolfSSL_get_fd(ptr noundef nonnull %i.gi) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 2, ptr %6, align 8, !tbaa !34
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.lp, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !36
  %i.lq = srem i32 %i.lo, 64
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = shl nuw i64 1, %i.lr                    ; 3 uses
  %i.lt = sdiv i32 %i.lo, 64
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  %i.lv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lu ; 3 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !36
  %i.lx = or i64 %i.lw, %i.ls
  store i64 %i.lx, ptr %i.lv, align 8, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false), !tbaa !36
  %i.ly = add nsw i32 %i.lo, 1
  %i.lz = getelementptr inbounds [8 x i8], ptr %5, i64 %i.lu ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !36
  %i.mb = or i64 %i.ma, %i.ls
  store i64 %i.mb, ptr %i.lz, align 8, !tbaa !36
  %i.mc = call i32 @select(i32 noundef %i.ly, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %i.md = icmp sgt i32 %i.mc, 0
  br i1 %i.md, label %bb.iy, label %tcp_select.exit.thread.i

bb.iy:                                            ; preds = %bb.ix
  %i.me = load i64, ptr %i.lv, align 8, !tbaa !36
  %i.mf = and i64 %i.me, %i.ls
  %.not33.i.i.i = icmp eq i64 %i.mf, 0
  br i1 %.not33.i.i.i, label %tcp_select.exit.thread.i, label %bb.iz

tcp_select.exit.thread.i:                         ; preds = %bb.iy, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.mg = call i32 @wolfSSL_shutdown(ptr noundef nonnull %i.gi) #21
  %i.mh = icmp eq i32 %i.mg, 1
  br i1 %i.mh, label %.thread.i, label %bb.ja

.thread.i:                                        ; preds = %bb.iz
  %puts30.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  br label %SMTP_Shutdown.exit

bb.ja:                                            ; preds = %bb.iz, %tcp_select.exit.thread.i
  %.b.i = load i1, ptr @quieter, align 4
  br i1 %.b.i, label %SMTP_Shutdown.exit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.mi = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.73, i64 30, i64 1, ptr %i.mi) #25 ; 0 uses
  br label %SMTP_Shutdown.exit

SMTP_Shutdown.exit:                               ; preds = %.critedge33.i, %.thread.i, %bb.ja, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.jc

bb.jc:                                            ; preds = %SMTP_Shutdown.exit, %bb.ir
  call void @wolfSSL_free(ptr noundef nonnull %i.gi) #21
  %i.mj = load i32, ptr %i.d, align 4, !tbaa !10
  %i.mk = call i32 @close(i32 noundef %i.mj) #21  ; 0 uses
  call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ev) #21
  store i32 0, ptr %i.n, align 8, !tbaa !49
  br label %bb.kv

bb.jd:                                            ; preds = %bb.iq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %.not604 = icmp eq i32 %.050415402831, 0        ; 2 uses
  br i1 %.not604, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.e, ptr noundef nonnull align 16 dereferenceable(28) @kHttpGetMsg, i64 28, i1 false)
  br label %bb.jg

bb.jf:                                            ; preds = %bb.jd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %i.e, ptr noundef nonnull align 1 dereferenceable(14) @kHelloMsg, i64 14, i1 false)
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.je
  %.0519 = phi i32 [ 28, %bb.je ], [ 14, %bb.jf ] ; 3 uses
  %.not605 = icmp eq i32 %.04338872924, 0         ; 2 uses
  br i1 %.not605, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.ml = call i32 @wolfSSL_update_keys(ptr noundef nonnull %i.gi) #21 ; 0 uses
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %bb.jg
  %i.mm = call fastcc i32 @ClientWriteRead(ptr noundef %i.gi, ptr noundef %i.e, i32 noundef %.0519, ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.71, i32 noundef %.04258032936) ; 2 uses
  %i.mn = icmp ne i32 %.04258032936, 0
  %i.mo = icmp ne i32 %i.mm, 0
  %or.cond71 = select i1 %i.mn, i1 %i.mo, i1 false
  br i1 %or.cond71, label %bb.jj, label %bb.jk

bb.jj:                                            ; preds = %bb.ji
  store i32 %i.mm, ptr %i.n, align 8, !tbaa !49
  call void @wolfSSL_free(ptr noundef nonnull %i.gi) #21
  %i.mp = load i32, ptr %i.d, align 4, !tbaa !10
  %i.mq = call i32 @close(i32 noundef %i.mp) #21  ; 0 uses
  call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ev) #21
  br label %bb.kv

bb.jk:                                            ; preds = %bb.ji
end_hunk_1
begin_hunk_2_@ClientBenchmarkThroughput:bb.a
  %i.de = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #21
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.ai, label %current_time.exit141

bb.ai:                                            ; preds = %._crit_edge
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.195) #26
  unreachable

current_time.exit141:                             ; preds = %._crit_edge
  %i.dg = load i64, ptr %11, align 8, !tbaa !34
  %i.dh = sitofp i64 %i.dg to double
  %i.di = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.dj = sitofp i64 %i.di to double
  %i.dk = fdiv double %i.dj, 1.000000e+06
  %i.dl = fadd double %i.dk, %i.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.dm = fsub double %i.dl, %i.cr
  %i.dn = fadd double %.0110185, %i.dm
  br label %bb.aj

bb.aj:                                            ; preds = %tcp_select.exit.thread, %current_time.exit141
  %.1111 = phi double [ %i.dn, %current_time.exit141 ], [ %.0110185, %tcp_select.exit.thread ] ; 2 uses
  %.5 = phi i32 [ %.3.lcssa, %current_time.exit141 ], [ %.2149, %tcp_select.exit.thread ]
  %i.do = sext i32 %i.bc to i64                   ; 2 uses
  %bcmp = call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull %i.ae, i64 %i.do)
  %.not134 = icmp eq i32 %bcmp, 0
  br i1 %.not134, label %bb.o, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @wolfSSL_Free(ptr noundef nonnull %i.ad) #21
  call void @wolfSSL_Free(ptr noundef nonnull %i.ae) #21
  call fastcc void @err_sys(ptr noundef nonnull @.str.200) #26
  unreachable

.thread151:                                       ; preds = %bb.o, %bb.v
  %.0115181 = phi double [ %.0115184, %bb.v ], [ %i.cb, %bb.o ]
  %.0110173 = phi double [ %.0110185, %bb.v ], [ %.1111, %bb.o ]
  %.7 = phi i32 [ %i.bp, %bb.v ], [ %.5, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @wolfSSL_Free(ptr noundef nonnull %i.ad) #21
  call void @wolfSSL_Free(ptr noundef nonnull %i.ae) #21
  %i.dp = fmul double %i.ab, 1.000000e+03
  br label %bb.ar

bb.al:                                            ; preds = %bb.l
  call fastcc void @err_sys(ptr noundef nonnull @.str.201) #26
  unreachable

bb.am:                                            ; preds = %current_time.exit137
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.202) #26
  unreachable

bb.an:                                            ; preds = %bb.i
  %i.dq = tail call i32 @wolfSSL_get_error(ptr noundef nonnull %i.k, i32 noundef 0) #21 ; 3 uses
  %.b = load i1, ptr @quieter, align 4
  br i1 %.b, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ds = sext i32 %i.dq to i64
  %i.dt = tail call ptr @wolfSSL_ERR_error_string(i64 noundef %i.ds, ptr noundef null) #21
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.63, i32 noundef %i.dq, ptr noundef %i.dt) #28 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not131 = icmp eq i32 %8, 0
  br i1 %.not131, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.64) #26
  unreachable

bb.ar:                                            ; preds = %bb.ap, %.thread151
  %.0119 = phi double [ %i.dp, %.thread151 ], [ 0.000000e+00, %bb.ap ]
  %.3118 = phi double [ %.0115181, %.thread151 ], [ 0.000000e+00, %bb.ap ] ; 2 uses
  %.4114 = phi double [ %.0110173, %.thread151 ], [ 0.000000e+00, %bb.ap ] ; 2 uses
  %.8 = phi i32 [ %.7, %.thread151 ], [ %i.dq, %bb.ap ]
  %i.dv = call i32 @wolfSSL_shutdown(ptr noundef nonnull %i.k) #21 ; 0 uses
  call void @wolfSSL_free(ptr noundef nonnull %i.k) #21
  %i.dw = call i32 @close(i32 noundef %i.m) #21   ; 0 uses
  %.not136 = icmp eq i32 %8, 0
  br i1 %.not136, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dx = fmul double %.3118, 1.000000e+03
  %i.dy = uitofp i64 %5 to double
  %i.dz = fmul double %.4114, 1.000000e+03
  %i.ea = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = insertelement <2 x double> poison, double %.3118, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %.4114, i64 1
  %i.ee = fdiv <2 x double> %i.eb, %i.ed
  %i.ef = fmul <2 x double> %i.ee, splat (double f0x3F50000000000000)
  %i.eg = fmul <2 x double> %i.ef, splat (double f0x3F50000000000000) ; 2 uses
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = extractelement <2 x double> %i.eg, i64 1
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.203, i64 noundef %5, double noundef %.0119, double noundef %i.dx, double noundef %i.eh, double noundef %i.dz, double noundef %i.ei) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.0120 = phi i32 [ 0, %bb.as ], [ %.8, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0120
}

declare ptr @wolfSSL_new(ptr noundef) local_unnamed_addr #7

declare i32 @wolfSSL_use_certificate_chain_file_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @wolfSSL_use_PrivateKey_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @SetKeyShare(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = icmp eq i32 %1, 0
  switch i32 %1, label %bb.e [
    i32 2, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = tail call i32 @wolfSSL_UseKeyShare(ptr noundef nonnull %0, i16 noundef zeroext 23) #21
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 23, ptr %i.a, align 16, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.204) #26
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ]        ; 3 uses
  %or.cond3 = icmp ult i32 %1, 2
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 @wolfSSL_UseKeyShare(ptr noundef nonnull %0, i16 noundef zeroext 256) #21
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = add nuw nsw i32 %.1, 1
  %i.h = zext nneg i32 %.1 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  store i32 256, ptr %i.i, align 4, !tbaa !10
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.205) #26
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.e
  %.3 = phi i32 [ %i.g, %bb.g ], [ %.1, %bb.e ]   ; 3 uses
  %i.j = icmp eq i32 %1, 3
  %or.cond5 = or i1 %i.b, %i.j
  %i.k = icmp ne i32 %2, 0
  %or.cond15 = and i1 %or.cond5, %i.k
  br i1 %or.cond15, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(18) @.str.206) #22
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(19) @.str.207) #22
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.208) #26
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ 4587, %bb.j ], [ 4589, %bb.k ]  ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef nonnull %3) ; 0 uses
  %i.q = trunc nuw nsw i32 %.0 to i16
  %i.r = tail call i32 @wolfSSL_UseKeyShare(ptr noundef nonnull %0, i16 noundef zeroext %i.q) #21
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.t = zext nneg i32 %.3 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  store i32 %.0, ptr %i.u, align 4, !tbaa !10
  %i.v = add nuw nsw i32 %.3, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.210) #26
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.n
  %.5 = phi i32 [ %i.v, %bb.n ], [ %.3, %bb.i ]   ; 2 uses
  %5 = trunc nuw i32 %4 to i1
  %i.w = icmp ne i32 %.5, 0
  %or.cond7 = and i1 %i.w, %5
  br i1 %or.cond7, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.x = call i32 @wolfSSL_set_groups(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.5) #21
  %.not = icmp eq i32 %i.x, 1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @err_sys(ptr noundef nonnull @.str.212) #26
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i32 @wolfSSL_NoKeyShares(ptr noundef) local_unnamed_addr #7

declare i32 @wolfSSL_SetEnableDhKeyTest(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @wolfSSL_AllowEncryptThenMac(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @tcp_connect(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.sockaddr_in, align 4        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.c = zext i16 %2 to i32
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.213, ptr noundef %1, i32 noundef %i.c) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__ctype_b_loc() #27
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = load i8, ptr %1, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = and i16 %i.j, 1024
  %.not18.i = icmp eq i16 %i.k, 0
  br i1 %.not18.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @gethostbyname(ptr noundef nonnull %1) #21 ; 3 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.217) #26
  unreachable

bb.e:                                             ; preds = %bb.a
  store i16 2, ptr %5, align 4, !tbaa !26
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %rev.i.i, ptr %i.m, align 2, !tbaa !27
  br label %build_addr.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = sext i32 %i.s to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 1 %i.q, i64 %i.t, i1 false)
  store i16 2, ptr %5, align 4, !tbaa !26
  %rev.i22.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %rev.i22.i, ptr %i.u, align 2, !tbaa !27
  br label %build_addr.exit

bb.g:                                             ; preds = %bb.b
  store i16 2, ptr %5, align 4, !tbaa !26
  %rev.i2226.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %rev.i2226.i, ptr %i.v, align 2, !tbaa !27
  %i.w = tail call i32 @inet_addr(ptr noundef nonnull %1) #21
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !31
  br label %build_addr.exit

build_addr.exit:                                  ; preds = %bb.e, %bb.f, %bb.g
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.split, label %.thread.i

.split:                                           ; preds = %build_addr.exit
  %i.y = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #21 ; 2 uses
  store i32 %i.y, ptr %0, align 4, !tbaa !10
  %i.z = icmp slt i32 %i.y, -1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split
  tail call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.218) #26
  unreachable

bb.i:                                             ; preds = %.split
  %i.aa = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 1, ptr %i.a, align 4, !tbaa !10
  %i.ab = load i32, ptr %0, align 4, !tbaa !10
  %i.ac = call i32 @setsockopt(i32 noundef %i.ab, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 4) #21
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.219) #26
  unreachable

.thread.i:                                        ; preds = %build_addr.exit
  %i.ae = call i32 @wolfSSL_dtls_set_peer(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 16) #21 ; 0 uses
  %i.af = call i32 @socket(i32 noundef 2, i32 noundef 2, i32 noundef 17) #21 ; 2 uses
  store i32 %i.af, ptr %0, align 4, !tbaa !10
  %i.ag = icmp slt i32 %i.af, -1
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread.i
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.218) #26
  unreachable

bb.l:                                             ; preds = %.thread.i
  %i.ah = call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #21 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ai = load i32, ptr %0, align 4, !tbaa !10
  %i.aj = call i32 @connect(i32 noundef %i.ai, ptr noundef nonnull %5, i32 noundef 16) #21
  %.not14 = icmp eq i32 %i.aj, 0
  br i1 %.not14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @perror(ptr noundef nonnull @.str.214) #25
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.215) #26
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

declare i32 @wolfSSL_set_fd(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @wolfSSL_free(ptr noundef) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #7

declare void @wolfSSL_SetIOWriteCtx(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @udp_connect(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2) unnamed_addr #9 {
bb.a:
  %3 = alloca %struct.sockaddr_in, align 4        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__ctype_b_loc() #27
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = load i8, ptr %1, align 1, !tbaa !16
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !23
  %i.g = and i16 %i.f, 1024
  %.not18.i = icmp eq i16 %i.g, 0
  br i1 %.not18.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @gethostbyname(ptr noundef nonnull %1) #21 ; 3 uses
  %.not19.i = icmp eq ptr %i.h, null
  br i1 %.not19.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.217) #26
  unreachable

bb.e:                                             ; preds = %bb.a
  store i16 2, ptr %3, align 4, !tbaa !26
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %rev.i.i, ptr %i.i, align 2, !tbaa !27
  br label %build_addr.exit

bb.f:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !30
  %i.p = sext i32 %i.o to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %i.m, i64 %i.p, i1 false)
  store i16 2, ptr %3, align 4, !tbaa !26
end_hunk_2
