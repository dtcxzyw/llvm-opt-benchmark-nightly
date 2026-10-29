Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/client?download=true
inline.NumInlined: 45
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@client_test:bb.a
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
  %.not558 = icmp eq i32 %.04951689, 0            ; 2 uses
  br i1 %i.en, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %mygetopt_long.exit.thread651
  %spec.select = select i1 %.not558, i32 3, i32 -2
  br label %.thread

bb.dh:                                            ; preds = %mygetopt_long.exit.thread651
  br i1 %.not558, label %bb.dk, label %bb.di

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
  %i.eq = icmp ne i32 %.04831701, 0               ; 2 uses
  %or.cond15 = and i1 %i.ep, %i.eq
  %or.cond15.not = xor i1 %or.cond15, true
  %.b550 = load i1, ptr @quieter, align 4
  %or.cond81 = select i1 %or.cond15.not, i1 true, i1 %.b550
  br i1 %or.cond81, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.39, i64 51, i64 1, ptr %i.er) #25 ; 0 uses
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
  %.044910552900 = phi i32 [ %.044910552901, %.thread ], [ %.04491727, %bb.dl ], [ %.04491727, %bb.dk ] ; 2 uses
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
  %.048913922852 = phi i32 [ %.048913922853, %.thread ], [ %.04891695, %bb.dl ], [ %.04891695, %bb.dk ]
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
  %i.es = phi i1 [ %i.eo, %.thread ], [ true, %bb.dl ], [ %i.eq, %bb.dk ] ; 2 uses
  %.2512659 = phi i32 [ %.2512.ph, %.thread ], [ %.05101675, %bb.dl ], [ %.05101675, %bb.dk ] ; 6 uses
  %.not559 = icmp eq i32 %.04298452930, 0
  br i1 %.not559, label %bb.ds, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.et = and i32 %.2512659, -2
  %or.cond17 = icmp eq i32 %i.et, -98
  br i1 %or.cond17, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %.b555 = load i1, ptr @quieter, align 4
  br i1 %.b555, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite560 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 96, i64 1, ptr %i.eu) #25 ; 0 uses
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
  %i.ev = tail call ptr %.0523(ptr noundef null) #21, !callees !53
  %i.ew = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.ev) #21 ; 45 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.45) #26
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %.not562 = icmp eq i8 %.04217612942, 0
  br i1 %.not562, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ey = tail call i32 @wolfSSL_CTX_load_system_CA_certs(ptr noundef nonnull %i.ew) #21
  %.not563 = icmp eq i32 %i.ey, 1
  br i1 %.not563, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.46) #26
  unreachable

bb.ec:                                            ; preds = %bb.ea, %bb.dz
  %.not564 = icmp eq i32 %.050815822825, -99
  br i1 %.not564, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ez = tail call i32 @wolfSSL_CTX_SetMinVersion(ptr noundef nonnull %i.ew, i32 noundef %.050815822825) #21
  %.not565 = icmp eq i32 %i.ez, 1
  br i1 %.not565, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.47) #26
  unreachable

bb.ef:                                            ; preds = %bb.ed, %bb.ec
  %i.fa = icmp ne i32 %.048513502858, 0           ; 2 uses
  br i1 %i.fa, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  tail call void @wolfSSL_CTX_SetIOSend(ptr noundef nonnull %i.ew, ptr noundef nonnull @SimulateWantWriteIOSendCb) #21
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.fb = icmp eq ptr %.046512232876, null
  %i.fc = icmp ne i32 %.046312022879, 0
  %or.cond21 = or i1 %i.fb, %i.fc                 ; 2 uses
  br i1 %or.cond21, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.fd = tail call i32 @wolfSSL_CTX_set_cipher_list(ptr noundef nonnull %i.ew, ptr noundef nonnull %.046512232876) #21
  %.not566 = icmp eq i32 %i.fd, 1
  br i1 %.not566, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.48) #26
  unreachable

bb.ek:                                            ; preds = %bb.ei, %bb.eh
  %.not567 = icmp eq i32 %.046912652870, 0
  br i1 %.not567, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.fe = tail call i32 @wolfSSL_CTX_set_group_messages(ptr noundef nonnull %i.ew) #21 ; 0 uses
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.ff = trunc i32 %.046712442873 to i16
  %i.fg = tail call i32 @wolfSSL_CTX_SetMinDhKey_Sz(ptr noundef nonnull %i.ew, i16 noundef zeroext %i.ff) #21
  %.not568 = icmp eq i32 %i.fg, 1
  br i1 %.not568, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.49) #26
  unreachable

bb.eo:                                            ; preds = %bb.em
  %9 = icmp ne i32 %.050615612828, 0              ; 3 uses
  %i.fh = icmp eq i32 %.047112862867, 0
  %i.fi = or i1 %9, %i.fh                         ; 2 uses
  %i.fj = icmp ne i32 %.04237822939, 0            ; 3 uses
  %or.cond25 = or i1 %i.fi, %i.fj
  br i1 %or.cond25, label %.critedge, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.fk = tail call i32 @wolfSSL_CTX_use_certificate_chain_file_format(ptr noundef nonnull %i.ew, ptr noundef %.045711392888, i32 noundef %.07192948) #21
  %.not570.a = icmp eq i32 %i.fk, 1
  br i1 %.not570.a, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.50) #26
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.fl = tail call i32 @wolfSSL_CTX_use_PrivateKey_file(ptr noundef nonnull %i.ew, ptr noundef %.045511182891, i32 noundef %.07192948) #21
  %.not571 = icmp eq i32 %i.fl, 1
  br i1 %.not571, label %.critedge, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.51) #26
  unreachable

.critedge:                                        ; preds = %bb.eo, %bb.er
  %.not2736 = xor i1 %9, true
  %i.fm = icmp ne i32 %.044910552900, 0
  %10 = or i32 %.050615612828, %.044910552900
  %or.cond33 = icmp ne i32 %10, 0
  %11 = load i32, ptr %i.o, align 4
  %12 = icmp eq i32 %11, 1
  %or.cond36 = select i1 %or.cond33, i1 true, i1 %12
  %.not573.a = icmp eq i32 %.048913922852, 0      ; 3 uses
  %or.cond680 = or i1 %or.cond36, %.not573.a
  br i1 %or.cond680, label %.thread660, label %bb.et

bb.et:                                            ; preds = %.critedge
  %i.fn = tail call i32 @wolfSSL_CTX_load_verify_locations_ex(ptr noundef nonnull %i.ew, ptr noundef %.045911602885, ptr noundef null, i32 noundef 0) #21
  %.not574.a = icmp eq i32 %i.fn, 1
  br i1 %.not574.a, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.52) #26
  unreachable

bb.ev:                                            ; preds = %bb.et
  %.not683 = icmp eq i32 %.046111812882, 0
  br i1 %.not683, label %bb.ew, label %.thread660

bb.ew:                                            ; preds = %bb.ev
  %i.fo = tail call i32 @wolfSSL_CTX_load_verify_locations_ex(ptr noundef nonnull %i.ew, ptr noundef nonnull @.str.53, ptr noundef null, i32 noundef 0) #21
  %.not575.a = icmp eq i32 %i.fo, 1
  br i1 %.not575.a, label %.thread660, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.54) #26
  unreachable

.thread660:                                       ; preds = %bb.ev, %bb.ew, %.critedge
  %i.fp = load i32, ptr %i.o, align 4             ; 2 uses
  %i.fq = add i32 %i.fp, -1
  %i.fr = icmp ult i32 %i.fq, 2
  %or.cond44 = select i1 %i.fm, i1 true, i1 %i.fr
  br i1 %or.cond44, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.thread660
  tail call void @wolfSSL_CTX_set_verify(ptr noundef nonnull %i.ew, i32 noundef 1, ptr noundef nonnull @myVerify) #21
  br label %bb.fd

bb.ez:                                            ; preds = %.thread660
  %or.cond50 = and i1 %.not573.a, %.not2736
  br i1 %or.cond50, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  tail call void @wolfSSL_CTX_set_verify(ptr noundef nonnull %i.ew, i32 noundef 0, ptr noundef null) #21
  br label %bb.fd

bb.fb:                                            ; preds = %bb.ez
  %13 = icmp ne i32 %i.fp, 3
  %or.cond57 = select i1 %9, i1 true, i1 %13
  br i1 %or.cond57, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @wolfSSL_CTX_set_verify(ptr noundef nonnull %i.ew, i32 noundef 1, ptr noundef nonnull @myVerify) #21
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fa, %bb.fb, %bb.fc, %bb.ey
  %.not576.a = icmp eq ptr %.044510132906, null
  br i1 %.not576.a, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.fs = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.044510132906) #22
  %i.ft = trunc i64 %i.fs to i16
  %i.fu = tail call i32 @wolfSSL_CTX_UseSNI(ptr noundef nonnull %i.ew, i8 noundef zeroext 0, ptr noundef nonnull %.044510132906, i16 noundef zeroext %i.ft) #21
  %.not577.a = icmp eq i32 %i.fu, 1
  br i1 %.not577.a, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.55) #26
  unreachable

bb.fg:                                            ; preds = %bb.fe, %bb.fd
  %.not578.a = icmp eq i8 %.04439922909, 0
  br i1 %.not578.a, label %bb.fj, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.fv = tail call i32 @wolfSSL_CTX_DisableExtendedMasterSecret(ptr noundef nonnull %i.ew) #21
  %.not579.a = icmp eq i32 %i.fv, 1
  br i1 %.not579.a, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.56) #26
  unreachable

bb.fj:                                            ; preds = %bb.fh, %bb.fg
  %.not580.a = icmp eq i32 %.044710342903, 0
  br i1 %.not580.a, label %.critedge632, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.fw = tail call i32 @wolfSSL_CTX_UseSupportedCurve(ptr noundef nonnull %i.ew, i16 noundef zeroext 24) #21
  %.not581.a = icmp eq i32 %i.fw, 1
  br i1 %.not581.a, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.57) #26
  unreachable

bb.fm:                                            ; preds = %bb.fk
  %i.fx = tail call i32 @wolfSSL_CTX_UseSupportedCurve(ptr noundef nonnull %i.ew, i16 noundef zeroext 23) #21
  %.not582.a = icmp eq i32 %i.fx, 1
  br i1 %.not582.a, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.58) #26
  unreachable

bb.fo:                                            ; preds = %bb.fm
  %i.fy = tail call i32 @wolfSSL_CTX_UseSupportedCurve(ptr noundef nonnull %i.ew, i16 noundef zeroext 256) #21
  %.not583.a = icmp eq i32 %i.fy, 1
  br i1 %.not583.a, label %.critedge632, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.59) #26
  unreachable

.critedge632:                                     ; preds = %bb.fj, %bb.fo
  %.not584.a = icmp eq i32 %.04379292918, 0
  br i1 %.not584.a, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %.critedge632
  %i.fz = tail call i32 @wolfSSL_CTX_no_dhe_psk(ptr noundef nonnull %i.ew) #21 ; 0 uses
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.critedge632
  %.not585.a = icmp eq i32 %.04359082921, 0
  br i1 %.not585.a, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ga = tail call i32 @wolfSSL_CTX_only_dhe_psk(ptr noundef nonnull %i.ew) #21 ; 0 uses
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.not586.a = icmp eq i32 %.050215192834, 0
  br i1 %.not586.a, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  tail call fastcc void @ClientBenchmarkConnections(ptr noundef %i.ew, ptr noundef %.051516452819, i16 noundef zeroext %.051716672815, i32 noundef %.049314342846, i32 noundef %.050215192834, i32 noundef %.048313282863, i32 noundef %.04298452930, ptr noundef %.04278242933, i32 noundef %.04419712912, i32 noundef %.04399502915, i32 noundef %.2512659)
  store i32 0, ptr %i.n, align 8, !tbaa !49
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.fv:                                            ; preds = %bb.ft
  %.not587.a = icmp eq i64 %.049714772840, 0
  br i1 %.not587.a, label %bb.fy, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.gb = tail call fastcc i32 @ClientBenchmarkThroughput(ptr noundef %i.ew, ptr noundef %.051516452819, i16 noundef zeroext %.051716672815, i32 noundef %.049314342846, i32 noundef %.049914982837, i64 noundef %.049714772840, i32 noundef %.04298452930, ptr noundef %.04278242933, i32 noundef %.04258032936, i32 noundef %.2512659, i32 noundef %.04399502915)
  store i32 %i.gb, ptr %i.n, align 8, !tbaa !49
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  %i.gc = load i32, ptr %i.n, align 8, !tbaa !49
  %i.gd = icmp eq i32 %i.gc, 0
  %i.ge = icmp ne i32 %.04258032936, 0
  %or.cond59 = or i1 %i.gd, %i.ge
  br i1 %or.cond59, label %bb.kv, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @exit(i32 noundef 0) #23
  unreachable

bb.fy:                                            ; preds = %bb.fv
  %i.gf = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.ew) #21 ; 37 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.60) #26
  unreachable

bb.ga:                                            ; preds = %bb.fy
  %.not2738 = xor i1 %i.fi, true
  %or.cond61 = and i1 %i.fj, %.not2738
  br i1 %or.cond61, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.gh = tail call i32 @wolfSSL_use_certificate_chain_file_format(ptr noundef nonnull %i.gf, ptr noundef %.045711392888, i32 noundef %.07192948) #21
  %.not588.a = icmp eq i32 %i.gh, 1
  br i1 %.not588.a, label %.thread662, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.50) #26
  unreachable

bb.gd:                                            ; preds = %bb.ga
  br i1 %i.fj, label %.thread662, label %bb.gf

.thread662:                                       ; preds = %bb.gb, %bb.gd
  %i.gi = tail call i32 @wolfSSL_use_PrivateKey_file(ptr noundef nonnull %i.gf, ptr noundef %.045511182891, i32 noundef %.07192948) #21
  %.not589.a = icmp eq i32 %i.gi, 1
  br i1 %.not589.a, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %.thread662
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.51) #26
  unreachable

bb.gf:                                            ; preds = %.thread662, %bb.gd
  %.not590.a = icmp eq i32 %.04419712912, 0
  %i.gj = add nsw i32 %.2512659, -4
  %or.cond63 = icmp ult i32 %i.gj, -7
  %or.cond633 = and i1 %.not590.a, %or.cond63
  br i1 %or.cond633, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  tail call fastcc void @SetKeyShare(ptr noundef %i.gf, i32 noundef %.04399502915, i32 noundef %.04298452930, ptr noundef %.04278242933, i32 noundef 0)
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gf
  %i.gk = tail call i32 @wolfSSL_NoKeyShares(ptr noundef nonnull %i.gf) #21 ; 0 uses
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  %.not591.a = icmp eq i32 %.04318662927, 0       ; 2 uses
  br i1 %.not591.a, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.gl = tail call i32 @wolfSSL_SetEnableDhKeyTest(ptr noundef nonnull %i.gf, i32 noundef 0) #21 ; 0 uses
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.not592.a = icmp eq i32 %.04197402945, 0
  br i1 %.not592.a, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.gm = tail call i32 @wolfSSL_AllowEncryptThenMac(ptr noundef nonnull %i.gf, i32 noundef 0) #21 ; 0 uses
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  call fastcc void @tcp_connect(ptr noundef %i.d, ptr noundef %.051516452819, i16 noundef zeroext %.051716672815, i32 noundef %.049314342846, ptr noundef %i.gf)
  %i.gn = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.go = tail call i32 @wolfSSL_set_fd(ptr noundef nonnull %i.gf, i32 noundef %i.gn) #21
  %.not593.a = icmp eq i32 %i.go, 1
  br i1 %.not593.a, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  tail call void @wolfSSL_free(ptr noundef nonnull %i.gf) #21
  %i.gp = tail call i32 @close(i32 noundef %i.gn) #21 ; 0 uses
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.ew) #21
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.61) #26
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.gq = icmp ne i32 %.049314342846, 0           ; 2 uses
  %or.cond83 = and i1 %i.fa, %i.gq                ; 2 uses
  br i1 %or.cond83, label %bb.gp, label %bb.gx

bb.gp:                                            ; preds = %bb.go
end_hunk_0
