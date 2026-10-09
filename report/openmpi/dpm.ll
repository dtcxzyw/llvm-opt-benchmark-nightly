Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/dpm?download=true
inline.NumInlined: 424
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ompi_dpm_connect_accept:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %bb.fr

bb.fr:                                            ; preds = %opal_obj_run_destructors.exit620, %bb.em
  %i.akm = load volatile i32, ptr %i.gc, align 8, !tbaa !68
  %i.akn = icmp eq i32 %i.akm, 1
  br i1 %i.akn, label %.preheader733, label %opal_list_remove_first.exit622.thread

.preheader733:                                    ; preds = %bb.fr
  %i.ako = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.akp = load volatile i64, ptr %i.ako, align 8, !tbaa !77
  %i.akq = icmp eq i64 %i.akp, 0
  br i1 %i.akq, label %opal_list_remove_first.exit622.thread, label %.lr.ph812

.lr.ph812:                                        ; preds = %.preheader733, %bb.fv
  %i.akr = load volatile i64, ptr %i.ako, align 8, !tbaa !77
  %i.aks = add i64 %i.akr, -1
  store volatile i64 %i.aks, ptr %i.ako, align 8, !tbaa !77
  %i.akt = load volatile ptr, ptr %i.aer, align 8, !tbaa !78 ; 6 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 24
  %i.akv = load volatile ptr, ptr %i.aku, align 8, !tbaa !74
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akt, i64 16 ; 2 uses
  %i.akx = load volatile ptr, ptr %i.akw, align 8, !tbaa !75
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 24
  store volatile ptr %i.akv, ptr %i.aky, align 8, !tbaa !74
  %i.akz = load volatile ptr, ptr %i.akw, align 8, !tbaa !75
  store volatile ptr %i.akz, ptr %i.aer, align 8, !tbaa !78
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akt, i64 8 ; 4 uses
  %i.alb = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.alc = trunc nuw i8 %i.alb to i1
  br i1 %i.alc, label %bb.fs, label %bb.ft, !prof !59

bb.fs:                                            ; preds = %.lr.ph812
  %i.ald = atomicrmw volatile add ptr %i.ala, i32 -1 monotonic, align 4
  %i.ale = add i32 %i.ald, -1
  br label %opal_thread_add_fetch_32.exit624

bb.ft:                                            ; preds = %.lr.ph812
  %i.alf = load volatile i32, ptr %i.ala, align 8, !tbaa !13
  %i.alg = add nsw i32 %i.alf, -1
  store volatile i32 %i.alg, ptr %i.ala, align 8, !tbaa !13
  %i.alh = load volatile i32, ptr %i.ala, align 8, !tbaa !13
  br label %opal_thread_add_fetch_32.exit624

opal_thread_add_fetch_32.exit624:                 ; preds = %bb.fs, %bb.ft
  %.0.i623 = phi i32 [ %i.ale, %bb.fs ], [ %i.alh, %bb.ft ]
  %i.ali = icmp eq i32 %.0.i623, 0
  br i1 %i.ali, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %opal_thread_add_fetch_32.exit624
  %i.alj = load ptr, ptr %i.akt, align 8, !tbaa !67
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 48
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !79 ; 2 uses
  %i.alm = load ptr, ptr %i.all, align 8, !tbaa !70 ; 2 uses
  %.not6.i625 = icmp eq ptr %i.alm, null
  br i1 %.not6.i625, label %opal_obj_run_destructors.exit629, label %.lr.ph.i626

.lr.ph.i626:                                      ; preds = %bb.fu, %.lr.ph.i626
  %i.aln = phi ptr [ %i.alp, %.lr.ph.i626 ], [ %i.alm, %bb.fu ]
  %.07.i627 = phi ptr [ %i.alo, %.lr.ph.i626 ], [ %i.all, %bb.fu ]
  call void %i.aln(ptr noundef nonnull %i.akt) #22, !inline_history !3
  %i.alo = getelementptr inbounds nuw i8, ptr %.07.i627, i64 8 ; 2 uses
  %i.alp = load ptr, ptr %i.alo, align 8, !tbaa !70 ; 2 uses
  %.not.i628 = icmp eq ptr %i.alp, null
  br i1 %.not.i628, label %opal_obj_run_destructors.exit629, label %.lr.ph.i626, !llvm.loop !4

opal_obj_run_destructors.exit629:                 ; preds = %.lr.ph.i626, %bb.fu
  call void @free(ptr noundef nonnull %i.akt) #22
  br label %bb.fv

bb.fv:                                            ; preds = %opal_obj_run_destructors.exit629, %opal_thread_add_fetch_32.exit624
  %i.alq = load volatile i64, ptr %i.ako, align 8, !tbaa !77
  %i.alr = icmp eq i64 %i.alq, 0
  br i1 %i.alr, label %opal_list_remove_first.exit622.thread, label %.lr.ph812, !llvm.loop !108

opal_list_remove_first.exit622.thread:            ; preds = %bb.fv, %.preheader733, %bb.fr
  %i.als = load ptr, ptr %6, align 8, !tbaa !67
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 48
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !79 ; 2 uses
  %i.alv = load ptr, ptr %i.alu, align 8, !tbaa !70 ; 2 uses
  %.not6.i630 = icmp eq ptr %i.alv, null
  br i1 %.not6.i630, label %opal_obj_run_destructors.exit634, label %.lr.ph.i631

.lr.ph.i631:                                      ; preds = %opal_list_remove_first.exit622.thread, %.lr.ph.i631
  %i.alw = phi ptr [ %i.aly, %.lr.ph.i631 ], [ %i.alv, %opal_list_remove_first.exit622.thread ]
  %.07.i632 = phi ptr [ %i.alx, %.lr.ph.i631 ], [ %i.alu, %opal_list_remove_first.exit622.thread ]
  call void %i.alw(ptr noundef nonnull %6) #22, !inline_history !3
  %i.alx = getelementptr inbounds nuw i8, ptr %.07.i632, i64 8 ; 2 uses
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !70 ; 2 uses
  %.not.i633 = icmp eq ptr %i.aly, null
  br i1 %.not.i633, label %opal_obj_run_destructors.exit634, label %.lr.ph.i631, !llvm.loop !4

opal_obj_run_destructors.exit634:                 ; preds = %.lr.ph.i631, %opal_list_remove_first.exit622.thread
  %i.alz = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 9 uses
  %i.ama = load volatile i64, ptr %i.alz, align 8, !tbaa !77
  %i.amb = trunc i64 %i.ama to i32                ; 2 uses
  %i.amc = call ptr @ompi_group_allocate(ptr noundef null, i32 noundef %i.amb) #22 ; 7 uses
  %i.amd = icmp eq ptr %i.amc, null
  br i1 %i.amd, label %bb.fw, label %bb.gc

bb.fw:                                            ; preds = %opal_obj_run_destructors.exit634
  %i.ame = load volatile i32, ptr %i.gk, align 8, !tbaa !68
  %i.amf = icmp eq i32 %i.ame, 1
  br i1 %i.amf, label %.preheader, label %opal_list_remove_first.exit636.thread

.preheader:                                       ; preds = %bb.fw
  %i.amg = load volatile i64, ptr %i.alz, align 8, !tbaa !77
  %i.amh = icmp eq i64 %i.amg, 0
  br i1 %i.amh, label %opal_list_remove_first.exit636.thread, label %.lr.ph820

.lr.ph820:                                        ; preds = %.preheader
  %i.ami = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  br label %bb.fx

bb.fx:                                            ; preds = %.lr.ph820, %bb.gb
  %i.amj = load volatile i64, ptr %i.alz, align 8, !tbaa !77
  %i.amk = add i64 %i.amj, -1
  store volatile i64 %i.amk, ptr %i.alz, align 8, !tbaa !77
  %i.aml = load volatile ptr, ptr %i.ami, align 8, !tbaa !78 ; 6 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 24
  %i.amn = load volatile ptr, ptr %i.amm, align 8, !tbaa !74
  %i.amo = getelementptr inbounds nuw i8, ptr %i.aml, i64 16 ; 2 uses
  %i.amp = load volatile ptr, ptr %i.amo, align 8, !tbaa !75
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 24
  store volatile ptr %i.amn, ptr %i.amq, align 8, !tbaa !74
  %i.amr = load volatile ptr, ptr %i.amo, align 8, !tbaa !75
  store volatile ptr %i.amr, ptr %i.ami, align 8, !tbaa !78
  %i.ams = getelementptr inbounds nuw i8, ptr %i.aml, i64 8 ; 4 uses
  %i.amt = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.amu = trunc nuw i8 %i.amt to i1
  br i1 %i.amu, label %bb.fy, label %bb.fz, !prof !59

bb.fy:                                            ; preds = %bb.fx
  %i.amv = atomicrmw volatile add ptr %i.ams, i32 -1 monotonic, align 4
  %i.amw = add i32 %i.amv, -1
  br label %opal_thread_add_fetch_32.exit638

bb.fz:                                            ; preds = %bb.fx
  %i.amx = load volatile i32, ptr %i.ams, align 8, !tbaa !13
  %i.amy = add nsw i32 %i.amx, -1
  store volatile i32 %i.amy, ptr %i.ams, align 8, !tbaa !13
  %i.amz = load volatile i32, ptr %i.ams, align 8, !tbaa !13
  br label %opal_thread_add_fetch_32.exit638

opal_thread_add_fetch_32.exit638:                 ; preds = %bb.fy, %bb.fz
  %.0.i637 = phi i32 [ %i.amw, %bb.fy ], [ %i.amz, %bb.fz ]
  %i.ana = icmp eq i32 %.0.i637, 0
  br i1 %i.ana, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %opal_thread_add_fetch_32.exit638
  %i.anb = load ptr, ptr %i.aml, align 8, !tbaa !67
  %i.anc = getelementptr inbounds nuw i8, ptr %i.anb, i64 48
  %i.and = load ptr, ptr %i.anc, align 8, !tbaa !79 ; 2 uses
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !70 ; 2 uses
  %.not6.i639 = icmp eq ptr %i.ane, null
  br i1 %.not6.i639, label %opal_obj_run_destructors.exit643, label %.lr.ph.i640

.lr.ph.i640:                                      ; preds = %bb.ga, %.lr.ph.i640
  %i.anf = phi ptr [ %i.anh, %.lr.ph.i640 ], [ %i.ane, %bb.ga ]
  %.07.i641 = phi ptr [ %i.ang, %.lr.ph.i640 ], [ %i.and, %bb.ga ]
  call void %i.anf(ptr noundef nonnull %i.aml) #22, !inline_history !3
  %i.ang = getelementptr inbounds nuw i8, ptr %.07.i641, i64 8 ; 2 uses
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !70 ; 2 uses
  %.not.i642 = icmp eq ptr %i.anh, null
  br i1 %.not.i642, label %opal_obj_run_destructors.exit643, label %.lr.ph.i640, !llvm.loop !4

opal_obj_run_destructors.exit643:                 ; preds = %.lr.ph.i640, %bb.ga
  call void @free(ptr noundef nonnull %i.aml) #22
  br label %bb.gb

bb.gb:                                            ; preds = %opal_obj_run_destructors.exit643, %opal_thread_add_fetch_32.exit638
  %i.ani = load volatile i64, ptr %i.alz, align 8, !tbaa !77
  %i.anj = icmp eq i64 %i.ani, 0
  br i1 %i.anj, label %opal_list_remove_first.exit636.thread, label %bb.fx, !llvm.loop !109

opal_list_remove_first.exit636.thread:            ; preds = %bb.gb, %.preheader, %bb.fw
  %i.ank = load ptr, ptr %8, align 8, !tbaa !67
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 48
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !79 ; 2 uses
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !70 ; 2 uses
  %.not6.i644 = icmp eq ptr %i.ann, null
  br i1 %.not6.i644, label %opal_obj_run_destructors.exit445.thread, label %.lr.ph.i645

.lr.ph.i645:                                      ; preds = %opal_list_remove_first.exit636.thread, %.lr.ph.i645
  %i.ano = phi ptr [ %i.anq, %.lr.ph.i645 ], [ %i.ann, %opal_list_remove_first.exit636.thread ]
  %.07.i646 = phi ptr [ %i.anp, %.lr.ph.i645 ], [ %i.anm, %opal_list_remove_first.exit636.thread ]
  call void %i.ano(ptr noundef nonnull %8) #22, !inline_history !3
  %i.anp = getelementptr inbounds nuw i8, ptr %.07.i646, i64 8 ; 2 uses
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !70 ; 2 uses
  %.not.i647 = icmp eq ptr %i.anq, null
  br i1 %.not.i647, label %opal_obj_run_destructors.exit445.thread, label %.lr.ph.i645, !llvm.loop !4

bb.gc:                                            ; preds = %opal_obj_run_destructors.exit634
  %i.anr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.ant = load volatile ptr, ptr %i.ans, align 8, !tbaa !78 ; 2 uses
  %.not366813 = icmp eq ptr %i.ant, %i.anr
  br i1 %.not366813, label %._crit_edge818, label %.lr.ph817

.lr.ph817:                                        ; preds = %bb.gc
  %i.anu = getelementptr inbounds nuw i8, ptr %i.amc, i64 32 ; 2 uses
  %i.anv = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.anw = trunc nuw i8 %i.anv to i1
  %.pre859 = load ptr, ptr %i.anu, align 8, !tbaa !56
  br label %bb.gd

bb.gd:                                            ; preds = %.lr.ph817, %opal_thread_add_fetch_32.exit650
  %18 = phi ptr [ %.pre859, %.lr.ph817 ], [ %19, %opal_thread_add_fetch_32.exit650 ] ; 2 uses
  %indvars.iv842 = phi i64 [ 0, %.lr.ph817 ], [ %indvars.iv.next843, %opal_thread_add_fetch_32.exit650 ] ; 2 uses
  %.1274815 = phi ptr [ %i.ant, %.lr.ph817 ], [ %i.aog, %opal_thread_add_fetch_32.exit650 ] ; 2 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %.1274815, i64 40
  %i.any = load ptr, ptr %i.anx, align 8, !tbaa !123 ; 2 uses
  %indvars.iv.next843 = add nuw nsw i64 %indvars.iv842, 1
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv842
  store ptr %i.any, ptr %i.anz, align 8, !tbaa !58
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.any, i64 8 ; 4 uses
  br i1 %i.anw, label %bb.ge, label %bb.gf, !prof !59

bb.ge:                                            ; preds = %bb.gd
  %i.aob = atomicrmw volatile add ptr %i.aoa, i32 1 monotonic, align 4 ; 0 uses
  %.pre858 = load ptr, ptr %i.anu, align 8, !tbaa !56
  br label %opal_thread_add_fetch_32.exit650

bb.gf:                                            ; preds = %bb.gd
  %i.aoc = load volatile i32, ptr %i.aoa, align 4, !tbaa !13
  %i.aod = add nsw i32 %i.aoc, 1
  store volatile i32 %i.aod, ptr %i.aoa, align 4, !tbaa !13
  %i.aoe = load volatile i32, ptr %i.aoa, align 4, !tbaa !13 ; 0 uses
  br label %opal_thread_add_fetch_32.exit650

opal_thread_add_fetch_32.exit650:                 ; preds = %bb.ge, %bb.gf
  %19 = phi ptr [ %.pre858, %bb.ge ], [ %18, %bb.gf ]
  %i.aof = getelementptr inbounds nuw i8, ptr %.1274815, i64 16
  %i.aog = load volatile ptr, ptr %i.aof, align 8, !tbaa !75 ; 2 uses
  %.not366 = icmp eq ptr %i.aog, %i.anr
  br i1 %.not366, label %._crit_edge818, label %bb.gd, !llvm.loop !110

._crit_edge818:                                   ; preds = %opal_thread_add_fetch_32.exit650, %bb.gc
  %i.aoh = load volatile i32, ptr %i.gk, align 8, !tbaa !68
  %i.aoi = icmp eq i32 %i.aoh, 1
  br i1 %i.aoi, label %.preheader732, label %opal_list_remove_first.exit652.thread

.preheader732:                                    ; preds = %._crit_edge818
  %i.aoj = load volatile i64, ptr %i.alz, align 8, !tbaa !77
  %i.aok = icmp eq i64 %i.aoj, 0
  br i1 %i.aok, label %opal_list_remove_first.exit652.thread, label %.lr.ph819

.lr.ph819:                                        ; preds = %.preheader732, %bb.gj
  %i.aol = load volatile i64, ptr %i.alz, align 8, !tbaa !77
  %i.aom = add i64 %i.aol, -1
  store volatile i64 %i.aom, ptr %i.alz, align 8, !tbaa !77
  %i.aon = load volatile ptr, ptr %i.ans, align 8, !tbaa !78 ; 6 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 24
  %i.aop = load volatile ptr, ptr %i.aoo, align 8, !tbaa !74
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aon, i64 16 ; 2 uses
  %i.aor = load volatile ptr, ptr %i.aoq, align 8, !tbaa !75
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 24
  store volatile ptr %i.aop, ptr %i.aos, align 8, !tbaa !74
  %i.aot = load volatile ptr, ptr %i.aoq, align 8, !tbaa !75
  store volatile ptr %i.aot, ptr %i.ans, align 8, !tbaa !78
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aon, i64 8 ; 4 uses
  %i.aov = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.aow = trunc nuw i8 %i.aov to i1
  br i1 %i.aow, label %bb.gg, label %bb.gh, !prof !59

bb.gg:                                            ; preds = %.lr.ph819
  %i.aox = atomicrmw volatile add ptr %i.aou, i32 -1 monotonic, align 4
  %i.aoy = add i32 %i.aox, -1
  br label %opal_thread_add_fetch_32.exit654

bb.gh:                                            ; preds = %.lr.ph819
  %i.aoz = load volatile i32, ptr %i.aou, align 8, !tbaa !13
  %i.apa = add nsw i32 %i.aoz, -1
  store volatile i32 %i.apa, ptr %i.aou, align 8, !tbaa !13
  %i.apb = load volatile i32, ptr %i.aou, align 8, !tbaa !13
  br label %opal_thread_add_fetch_32.exit654

opal_thread_add_fetch_32.exit654:                 ; preds = %bb.gg, %bb.gh
  %.0.i653 = phi i32 [ %i.aoy, %bb.gg ], [ %i.apb, %bb.gh ]
  %i.apc = icmp eq i32 %.0.i653, 0
  br i1 %i.apc, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %opal_thread_add_fetch_32.exit654
  %i.apd = load ptr, ptr %i.aon, align 8, !tbaa !67
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 48
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !79 ; 2 uses
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !70 ; 2 uses
  %.not6.i655 = icmp eq ptr %i.apg, null
  br i1 %.not6.i655, label %opal_obj_run_destructors.exit659, label %.lr.ph.i656

.lr.ph.i656:                                      ; preds = %bb.gi, %.lr.ph.i656
  %i.aph = phi ptr [ %i.apj, %.lr.ph.i656 ], [ %i.apg, %bb.gi ]
  %.07.i657 = phi ptr [ %i.api, %.lr.ph.i656 ], [ %i.apf, %bb.gi ]
  call void %i.aph(ptr noundef nonnull %i.aon) #22, !inline_history !3
  %i.api = getelementptr inbounds nuw i8, ptr %.07.i657, i64 8 ; 2 uses
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !70 ; 2 uses
  %.not.i658 = icmp eq ptr %i.apj, null
  br i1 %.not.i658, label %opal_obj_run_destructors.exit659, label %.lr.ph.i656, !llvm.loop !4

opal_obj_run_destructors.exit659:                 ; preds = %.lr.ph.i656, %bb.gi
  call void @free(ptr noundef nonnull %i.aon) #22
  br label %bb.gj

bb.gj:                                            ; preds = %opal_obj_run_destructors.exit659, %opal_thread_add_fetch_32.exit654
  %i.apk = load volatile i64, ptr %i.alz, align 8, !tbaa !77
  %i.apl = icmp eq i64 %i.apk, 0
  br i1 %i.apl, label %opal_list_remove_first.exit652.thread, label %.lr.ph819, !llvm.loop !111

opal_list_remove_first.exit652.thread:            ; preds = %bb.gj, %.preheader732, %._crit_edge818
  %i.apm = load ptr, ptr %8, align 8, !tbaa !67
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 48
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !79 ; 2 uses
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !70 ; 2 uses
  %.not6.i660 = icmp eq ptr %i.app, null
  br i1 %.not6.i660, label %opal_obj_run_destructors.exit664, label %.lr.ph.i661

.lr.ph.i661:                                      ; preds = %opal_list_remove_first.exit652.thread, %.lr.ph.i661
  %i.apq = phi ptr [ %i.aps, %.lr.ph.i661 ], [ %i.app, %opal_list_remove_first.exit652.thread ]
  %.07.i662 = phi ptr [ %i.apr, %.lr.ph.i661 ], [ %i.apo, %opal_list_remove_first.exit652.thread ]
  call void %i.apq(ptr noundef nonnull %8) #22, !inline_history !3
  %i.apr = getelementptr inbounds nuw i8, ptr %.07.i662, i64 8 ; 2 uses
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !70 ; 2 uses
  %.not.i663 = icmp eq ptr %i.aps, null
  br i1 %.not.i663, label %opal_obj_run_destructors.exit664, label %.lr.ph.i661, !llvm.loop !4

opal_obj_run_destructors.exit664:                 ; preds = %.lr.ph.i661, %opal_list_remove_first.exit652.thread
  %i.apt = load i32, ptr %i.p, align 8, !tbaa !48
  %i.apu = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !81
  %i.apw = call i32 @ompi_comm_set(ptr noundef nonnull %i.h, ptr noundef nonnull %0, i32 noundef %i.apt, ptr noundef null, i32 noundef %i.amb, ptr noundef null, ptr noundef null, ptr noundef %i.apv, ptr noundef %i.o, ptr noundef nonnull %i.amc, i32 noundef 0) #22 ; 2 uses
  %.not368 = icmp eq i32 %i.apw, 0
  br i1 %.not368, label %bb.gk, label %opal_obj_run_destructors.exit445.thread

bb.gk:                                            ; preds = %opal_obj_run_destructors.exit664
  %i.apx = getelementptr inbounds nuw i8, ptr %i.amc, i64 8 ; 4 uses
  %i.apy = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.apz = trunc nuw i8 %i.apy to i1
  br i1 %i.apz, label %bb.gl, label %bb.gm, !prof !59

bb.gl:                                            ; preds = %bb.gk
  %i.aqa = atomicrmw volatile add ptr %i.apx, i32 -1 monotonic, align 4
  %i.aqb = add i32 %i.aqa, -1
  br label %opal_thread_add_fetch_32.exit666

bb.gm:                                            ; preds = %bb.gk
  %i.aqc = load volatile i32, ptr %i.apx, align 4, !tbaa !13
  %i.aqd = add nsw i32 %i.aqc, -1
  store volatile i32 %i.aqd, ptr %i.apx, align 4, !tbaa !13
  %i.aqe = load volatile i32, ptr %i.apx, align 4, !tbaa !13
  br label %opal_thread_add_fetch_32.exit666

opal_thread_add_fetch_32.exit666:                 ; preds = %bb.gl, %bb.gm
  %.0.i665 = phi i32 [ %i.aqb, %bb.gl ], [ %i.aqe, %bb.gm ]
  %i.aqf = icmp eq i32 %.0.i665, 0
  br i1 %i.aqf, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %opal_thread_add_fetch_32.exit666
  %i.aqg = load ptr, ptr %i.amc, align 8, !tbaa !67
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 48
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !79 ; 2 uses
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !70 ; 2 uses
  %.not6.i667 = icmp eq ptr %i.aqj, null
  br i1 %.not6.i667, label %opal_obj_run_destructors.exit671, label %.lr.ph.i668

.lr.ph.i668:                                      ; preds = %bb.gn, %.lr.ph.i668
  %i.aqk = phi ptr [ %i.aqm, %.lr.ph.i668 ], [ %i.aqj, %bb.gn ]
  %.07.i669 = phi ptr [ %i.aql, %.lr.ph.i668 ], [ %i.aqi, %bb.gn ]
  call void %i.aqk(ptr noundef nonnull %i.amc) #22, !inline_history !3
  %i.aql = getelementptr inbounds nuw i8, ptr %.07.i669, i64 8 ; 2 uses
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !70 ; 2 uses
  %.not.i670 = icmp eq ptr %i.aqm, null
  br i1 %.not.i670, label %opal_obj_run_destructors.exit671, label %.lr.ph.i668, !llvm.loop !4

opal_obj_run_destructors.exit671:                 ; preds = %.lr.ph.i668, %bb.gn
  call void @free(ptr noundef nonnull %i.amc) #22
  br label %bb.go

bb.go:                                            ; preds = %opal_obj_run_destructors.exit671, %opal_thread_add_fetch_32.exit666
  %i.aqn = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.aqo = call i32 @ompi_comm_nextcid(ptr noundef %i.aqn, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %2, i1 noundef zeroext %3, i32 noundef 256) #22 ; 2 uses
  %.not369 = icmp eq i32 %i.aqo, 0
  br i1 %.not369, label %bb.gp, label %opal_obj_run_destructors.exit445.thread

bb.gp:                                            ; preds = %bb.go
  %i.aqp = call i32 @ompi_comm_activate(ptr noundef nonnull %i.h, ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %2, i1 noundef zeroext %3, i32 noundef 256) #22
  br label %opal_obj_run_destructors.exit445

opal_obj_run_destructors.exit445:                 ; preds = %.lr.ph.i540, %.lr.ph.i484, %.lr.ph.i596, %opal_obj_run_destructors.exit620.thread, %opal_list_remove_first.exit587.thread, %opal_list_remove_first.exit531.thread, %opal_list_remove_first.exit475.thread, %bb.ag, %bb.gp
  %.2285 = phi i32 [ %i.nf, %opal_list_remove_first.exit475.thread ], [ %i.th, %opal_list_remove_first.exit531.thread ], [ %i.dq, %bb.ag ], [ %i.aqp, %bb.gp ], [ %i.aiy, %opal_obj_run_destructors.exit620.thread ], [ %i.abm, %opal_list_remove_first.exit587.thread ], [ %i.nf, %.lr.ph.i484 ], [ %i.abm, %.lr.ph.i596 ], [ %i.th, %.lr.ph.i540 ] ; 2 uses
  %.not384 = icmp eq i32 %.2285, 0
  br i1 %.not384, label %opal_obj_run_destructors.exit445._crit_edge, label %opal_obj_run_destructors.exit445.thread

opal_obj_run_destructors.exit445._crit_edge:      ; preds = %opal_obj_run_destructors.exit445
  %.pre859.a = load ptr, ptr %i.h, align 8, !tbaa !19
  br label %bb.gu

opal_obj_run_destructors.exit445.thread:          ; preds = %.lr.ph.i442, %.lr.ph.i645, %opal_list_remove_first.exit636.thread, %opal_list_remove_first.exit433.thread, %bb.go, %opal_obj_run_destructors.exit664, %bb.ai, %bb.ak, %bb.q, %bb.af, %opal_obj_run_destructors.exit445
  %.2285730 = phi i32 [ %.2285, %opal_obj_run_destructors.exit445 ], [ %i.dp, %bb.af ], [ -2, %opal_list_remove_first.exit636.thread ], [ -5, %opal_list_remove_first.exit433.thread ], [ %i.aqo, %bb.go ], [ %i.apw, %opal_obj_run_destructors.exit664 ], [ -2, %.lr.ph.i645 ], [ -2, %bb.ai ], [ %i.ea, %bb.ak ], [ -13, %bb.q ], [ -5, %.lr.ph.i442 ] ; 3 uses
  %i.aqq = load ptr, ptr %i.h, align 8, !tbaa !19 ; 7 uses
  %i.aqr = icmp ne ptr %i.aqq, @ompi_mpi_comm_null
  %i.aqs = icmp ne ptr %i.aqq, null
  %or.cond5 = and i1 %i.aqr, %i.aqs
  br i1 %or.cond5, label %bb.gq, label %bb.gu

bb.gq:                                            ; preds = %opal_obj_run_destructors.exit445.thread
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8 ; 4 uses
  %i.aqu = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.aqv = trunc nuw i8 %i.aqu to i1
  br i1 %i.aqv, label %bb.gr, label %bb.gs, !prof !59

bb.gr:                                            ; preds = %bb.gq
  %i.aqw = atomicrmw volatile add ptr %i.aqt, i32 -1 monotonic, align 4
  %i.aqx = add i32 %i.aqw, -1
  br label %opal_thread_add_fetch_32.exit673

bb.gs:                                            ; preds = %bb.gq
  %i.aqy = load volatile i32, ptr %i.aqt, align 4, !tbaa !13
  %i.aqz = add nsw i32 %i.aqy, -1
  store volatile i32 %i.aqz, ptr %i.aqt, align 4, !tbaa !13
  %i.ara = load volatile i32, ptr %i.aqt, align 4, !tbaa !13
  br label %opal_thread_add_fetch_32.exit673

opal_thread_add_fetch_32.exit673:                 ; preds = %bb.gr, %bb.gs
  %.0.i672 = phi i32 [ %i.aqx, %bb.gr ], [ %i.ara, %bb.gs ]
  %i.arb = icmp eq i32 %.0.i672, 0
  br i1 %i.arb, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %opal_thread_add_fetch_32.exit673
  %i.arc = load ptr, ptr %i.aqq, align 8, !tbaa !67
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 48
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !79 ; 2 uses
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !70 ; 2 uses
end_hunk_0
