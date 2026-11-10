Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/sprintf?download=true
inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@BSD_vfprintf:bb.a
  %.12564.lcssa = phi i32 [ %i.aoq, %.preheader1056 ], [ %i.apf, %bb.jr ]
  %.44.lcssa = phi ptr [ %.43, %.preheader1056 ], [ %.45, %bb.jr ] ; 3 uses
  store ptr @BSD_vfprintf.zeroes, ptr %.44.lcssa, align 8, !tbaa !97
  %i.apj = zext nneg i32 %.12564.lcssa to i64     ; 2 uses
  %i.apk = getelementptr i8, ptr %.44.lcssa, i64 8
  store i64 %i.apj, ptr %i.apk, align 8, !tbaa !98
  %i.apl = add i64 %i.api, %i.apj                 ; 3 uses
  store i64 %i.apl, ptr %i.t, align 8, !tbaa !94
  %i.apm = getelementptr i8, ptr %.44.lcssa, i64 16
  %i.apn = add nsw i32 %i.aph, 1                  ; 2 uses
  store i32 %i.apn, ptr %i.u, align 8, !tbaa !182
  %i.apo = icmp sgt i32 %i.aph, 6
  br i1 %i.apo, label %bb.js, label %BSD__sprint.exit869.thread

bb.js:                                            ; preds = %._crit_edge1321
  %i.app = icmp eq i64 %i.apl, 0
  br i1 %i.app, label %BSD__sprint.exit869.thread, label %BSD__sprint.exit869

BSD__sprint.exit869:                              ; preds = %bb.js
  %i.apq = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.apr = call i32 %i.apq(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !158
  %.not690 = icmp eq i32 %i.apr, 0
  br i1 %.not690, label %BSD__sprint.exit869.thread, label %.thread1011

bb.jt:                                            ; preds = %bb.jg
  store ptr %.2551, ptr %.15, align 8, !tbaa !97
  %i.aps = getelementptr i8, ptr %.15, i64 8
  store i64 1, ptr %i.aps, align 8, !tbaa !98
  %i.apt = load i64, ptr %i.t, align 8, !tbaa !94
  %i.apu = add i64 %i.apt, 1                      ; 3 uses
  store i64 %i.apu, ptr %i.t, align 8, !tbaa !94
  %i.apv = getelementptr i8, ptr %.15, i64 16
  %i.apw = load i32, ptr %i.u, align 8, !tbaa !182
  %i.apx = add i32 %i.apw, 1                      ; 3 uses
  store i32 %i.apx, ptr %i.u, align 8, !tbaa !182
  %i.apy = icmp sgt i32 %i.apx, 7
  br i1 %i.apy, label %bb.ju, label %BSD__sprint.exit869.thread

bb.ju:                                            ; preds = %bb.jt
  %i.apz = icmp eq i64 %i.apu, 0
  br i1 %i.apz, label %BSD__sprint.exit869.thread, label %BSD__sprint.exit871

BSD__sprint.exit871:                              ; preds = %bb.ju
  %i.aqa = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.aqb = call i32 %i.aqa(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !158
  %.not684 = icmp eq i32 %i.aqb, 0
  br i1 %.not684, label %BSD__sprint.exit869.thread, label %.thread1011

BSD__sprint.exit869.thread:                       ; preds = %bb.ju, %bb.js, %BSD__sprint.exit871, %BSD__sprint.exit869, %bb.jt, %BSD__sprint.exit861.thread, %._crit_edge1321, %bb.jp
  %i.aqc = phi i32 [ %i.apx, %bb.jt ], [ %i.apn, %._crit_edge1321 ], [ %i.aon, %bb.jp ], [ %i.aon, %BSD__sprint.exit861.thread ], [ 0, %BSD__sprint.exit869 ], [ 0, %BSD__sprint.exit871 ], [ 0, %bb.js ], [ 0, %bb.ju ] ; 2 uses
  %i.aqd = phi i64 [ %i.apu, %bb.jt ], [ %i.apl, %._crit_edge1321 ], [ %i.aoo, %bb.jp ], [ %i.aoo, %BSD__sprint.exit861.thread ], [ 0, %BSD__sprint.exit869 ], [ 0, %BSD__sprint.exit871 ], [ 0, %bb.js ], [ 0, %bb.ju ]
  %.46 = phi ptr [ %i.apv, %bb.jt ], [ %i.apm, %._crit_edge1321 ], [ %.43, %bb.jp ], [ %.43, %BSD__sprint.exit861.thread ], [ %4, %BSD__sprint.exit869 ], [ %4, %BSD__sprint.exit871 ], [ %4, %bb.js ], [ %4, %bb.ju ] ; 3 uses
  store ptr %i.g, ptr %.46, align 8, !tbaa !97
  %i.aqe = sext i32 %.3512 to i64                 ; 2 uses
  %i.aqf = getelementptr i8, ptr %.46, i64 8
  store i64 %i.aqe, ptr %i.aqf, align 8, !tbaa !98
  %i.aqg = add i64 %i.aqd, %i.aqe                 ; 3 uses
  store i64 %i.aqg, ptr %i.t, align 8, !tbaa !94
  %i.aqh = getelementptr i8, ptr %.46, i64 16
  %i.aqi = add nsw i32 %i.aqc, 1                  ; 2 uses
  store i32 %i.aqi, ptr %i.u, align 8, !tbaa !182
  %i.aqj = icmp sgt i32 %i.aqc, 6
  br i1 %i.aqj, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %BSD__sprint.exit869.thread
  %i.aqk = icmp eq i64 %i.aqg, 0
  br i1 %i.aqk, label %.sink.split2023, label %BSD__sprint.exit873

BSD__sprint.exit873:                              ; preds = %bb.jv
  %i.aql = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.aqm = call i32 %i.aql(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !158
  store i64 0, ptr %i.t, align 8, !tbaa !94
  store i32 0, ptr %i.u, align 8, !tbaa !182
  %.not691 = icmp eq i32 %i.aqm, 0
  br i1 %.not691, label %bb.jw, label %.thread1011

.sink.split2023:                                  ; preds = %bb.jv, %bb.jf, %bb.iw, %bb.im, %bb.ia, %bb.hx, %bb.hr, %bb.hm, %bb.ha
  store i32 0, ptr %i.u, align 8, !tbaa !182
  br label %bb.jw

bb.jw:                                            ; preds = %.sink.split2023, %BSD__sprint.exit873, %BSD__sprint.exit857, %BSD__sprint.exit847, %BSD__sprint.exit839, %BSD__sprint.exit827, %BSD__sprint.exit825, %BSD__sprint.exit819, %BSD__sprint.exit817, %BSD__sprint.exit805, %BSD__sprint.exit815.thread, %BSD__sprint.exit869.thread, %bb.hu, %._crit_edge1351, %bb.hq, %bb.ij, %._crit_edge1345, %bb.ii, %bb.jb, %._crit_edge1333, %bb.jc, %bb.iu, %bb.iv, %bb.hz, %bb.gz
  %i.aqn = phi i32 [ %i.aqi, %BSD__sprint.exit869.thread ], [ %i.yl, %bb.gz ], [ 0, %BSD__sprint.exit805 ], [ %i.abl, %BSD__sprint.exit815.thread ], [ 0, %BSD__sprint.exit817 ], [ %i.aca, %bb.hq ], [ 0, %BSD__sprint.exit819 ], [ %i.adp, %._crit_edge1351 ], [ %i.acn, %bb.hu ], [ 0, %BSD__sprint.exit825 ], [ %i.aef, %bb.hz ], [ 0, %BSD__sprint.exit827 ], [ %i.aho, %._crit_edge1345 ], [ %i.agl, %bb.ij ], [ %i.agl, %bb.ii ], [ 0, %BSD__sprint.exit839 ], [ %i.ajo, %bb.iv ], [ %i.ajj, %bb.iu ], [ 0, %BSD__sprint.exit847 ], [ %i.amf, %._crit_edge1333 ], [ %i.alc, %bb.jc ], [ %i.alc, %bb.jb ], [ 0, %BSD__sprint.exit857 ], [ 0, %BSD__sprint.exit873 ], [ 0, %.sink.split2023 ] ; 2 uses
  %i.aqo = phi i64 [ %i.aqg, %BSD__sprint.exit869.thread ], [ %i.yi, %bb.gz ], [ 0, %BSD__sprint.exit805 ], [ %i.abj, %BSD__sprint.exit815.thread ], [ 0, %BSD__sprint.exit817 ], [ %i.aby, %bb.hq ], [ 0, %BSD__sprint.exit819 ], [ %i.adn, %._crit_edge1351 ], [ %i.aco, %bb.hu ], [ 0, %BSD__sprint.exit825 ], [ %i.aec, %bb.hz ], [ 0, %BSD__sprint.exit827 ], [ %i.ahm, %._crit_edge1345 ], [ %i.agm, %bb.ij ], [ %i.agm, %bb.ii ], [ 0, %BSD__sprint.exit839 ], [ %i.ajm, %bb.iv ], [ %i.ajk, %bb.iu ], [ 0, %BSD__sprint.exit847 ], [ %i.amd, %._crit_edge1333 ], [ %i.ald, %bb.jc ], [ %i.ald, %bb.jb ], [ 0, %BSD__sprint.exit857 ], [ 0, %BSD__sprint.exit873 ], [ 0, %.sink.split2023 ] ; 4 uses
  %.47 = phi ptr [ %i.aqh, %BSD__sprint.exit869.thread ], [ %i.yj, %bb.gz ], [ %4, %BSD__sprint.exit805 ], [ %i.abk, %BSD__sprint.exit815.thread ], [ %4, %BSD__sprint.exit817 ], [ %i.abw, %bb.hq ], [ %4, %BSD__sprint.exit819 ], [ %i.ado, %._crit_edge1351 ], [ %.21, %bb.hu ], [ %4, %BSD__sprint.exit825 ], [ %i.aed, %bb.hz ], [ %4, %BSD__sprint.exit827 ], [ %i.ahn, %._crit_edge1345 ], [ %.28, %bb.ij ], [ %.28, %bb.ii ], [ %4, %BSD__sprint.exit839 ], [ %i.ajn, %bb.iv ], [ %.34, %bb.iu ], [ %4, %BSD__sprint.exit847 ], [ %i.ame, %._crit_edge1333 ], [ %.37, %bb.jc ], [ %.37, %bb.jb ], [ %4, %BSD__sprint.exit857 ], [ %4, %BSD__sprint.exit873 ], [ %4, %.sink.split2023 ] ; 2 uses
  %i.aqp = and i32 %.12, 4
  %.not726 = icmp eq i32 %i.aqp, 0
  %.pre1609 = sext i32 %.1524.ph to i64           ; 4 uses
  br i1 %.not726, label %thread-pre-split1034, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.aqq = sub i64 %.pre1609, %.1497              ; 4 uses
  %i.aqr = add i64 %i.aqq, 2147483648
  %.not728 = icmp ult i64 %i.aqr, 4294967296
  br i1 %.not728, label %bb.jy, label %.thread1011.sink.split

bb.jy:                                            ; preds = %bb.jx
  %i.aqs = icmp sgt i64 %i.aqq, 0
  br i1 %i.aqs, label %.preheader1045, label %thread-pre-split1034

.preheader1045:                                   ; preds = %bb.jy
  %i.aqt = trunc nsw i64 %i.aqq to i32            ; 2 uses
  %i.aqu = icmp ugt i64 %i.aqq, 16
  br i1 %i.aqu, label %.lr.ph1356, label %._crit_edge1357

.lr.ph1356:                                       ; preds = %.preheader1045, %bb.ka
  %i.aqv = phi i32 [ %i.arg, %bb.ka ], [ %i.aqn, %.preheader1045 ] ; 2 uses
  %i.aqw = phi i64 [ %i.arf, %bb.ka ], [ %i.aqo, %.preheader1045 ]
  %.481355 = phi ptr [ %.49, %bb.ka ], [ %.47, %.preheader1045 ] ; 3 uses
  %.135651354 = phi i32 [ %i.arh, %bb.ka ], [ %i.aqt, %.preheader1045 ] ; 2 uses
  store ptr @BSD_vfprintf.blanks, ptr %.481355, align 8, !tbaa !97
  %i.aqx = getelementptr i8, ptr %.481355, i64 8
  store i64 16, ptr %i.aqx, align 8, !tbaa !98
  %i.aqy = add i64 %i.aqw, 16                     ; 3 uses
  store i64 %i.aqy, ptr %i.t, align 8, !tbaa !94
  %i.aqz = getelementptr i8, ptr %.481355, i64 16
  %i.ara = add nsw i32 %i.aqv, 1                  ; 2 uses
  store i32 %i.ara, ptr %i.u, align 8, !tbaa !182
  %i.arb = icmp sgt i32 %i.aqv, 6
  br i1 %i.arb, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %.lr.ph1356
  %i.arc = icmp eq i64 %i.aqy, 0
  br i1 %i.arc, label %BSD__sprint.exit875.thread, label %BSD__sprint.exit875

BSD__sprint.exit875.thread:                       ; preds = %bb.jz
  store i32 0, ptr %i.u, align 8, !tbaa !182
  br label %bb.ka

BSD__sprint.exit875:                              ; preds = %bb.jz
  %i.ard = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.are = call i32 %i.ard(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !158
  store i64 0, ptr %i.t, align 8, !tbaa !94
  store i32 0, ptr %i.u, align 8, !tbaa !182
  %.not732 = icmp eq i32 %i.are, 0
  br i1 %.not732, label %bb.ka, label %.thread1011

bb.ka:                                            ; preds = %BSD__sprint.exit875.thread, %BSD__sprint.exit875, %.lr.ph1356
  %i.arf = phi i64 [ %i.aqy, %.lr.ph1356 ], [ 0, %BSD__sprint.exit875 ], [ 0, %BSD__sprint.exit875.thread ] ; 2 uses
  %i.arg = phi i32 [ %i.ara, %.lr.ph1356 ], [ 0, %BSD__sprint.exit875 ], [ 0, %BSD__sprint.exit875.thread ] ; 2 uses
  %.49 = phi ptr [ %i.aqz, %.lr.ph1356 ], [ %4, %BSD__sprint.exit875 ], [ %4, %BSD__sprint.exit875.thread ] ; 2 uses
  %i.arh = add nsw i32 %.135651354, -16           ; 2 uses
  %i.ari = icmp sgt i32 %.135651354, 32
  br i1 %i.ari, label %.lr.ph1356, label %._crit_edge1357, !llvm.loop !179

._crit_edge1357:                                  ; preds = %bb.ka, %.preheader1045
  %i.arj = phi i32 [ %i.aqn, %.preheader1045 ], [ %i.arg, %bb.ka ] ; 2 uses
  %i.ark = phi i64 [ %i.aqo, %.preheader1045 ], [ %i.arf, %bb.ka ]
  %.13565.lcssa = phi i32 [ %i.aqt, %.preheader1045 ], [ %i.arh, %bb.ka ]
  %.48.lcssa = phi ptr [ %.47, %.preheader1045 ], [ %.49, %bb.ka ] ; 2 uses
  store ptr @BSD_vfprintf.blanks, ptr %.48.lcssa, align 8, !tbaa !97
  %i.arl = zext nneg i32 %.13565.lcssa to i64     ; 2 uses
  %i.arm = getelementptr i8, ptr %.48.lcssa, i64 8
  store i64 %i.arl, ptr %i.arm, align 8, !tbaa !98
  %i.arn = add i64 %i.ark, %i.arl                 ; 3 uses
  store i64 %i.arn, ptr %i.t, align 8, !tbaa !94
  %i.aro = add nsw i32 %i.arj, 1
  store i32 %i.aro, ptr %i.u, align 8, !tbaa !182
  %i.arp = icmp sgt i32 %i.arj, 6
  br i1 %i.arp, label %bb.kb, label %thread-pre-split1034

bb.kb:                                            ; preds = %._crit_edge1357
  %i.arq = icmp eq i64 %i.arn, 0
  br i1 %i.arq, label %thread-pre-split1034.thread, label %BSD__sprint.exit877

thread-pre-split1034.thread:                      ; preds = %bb.kb
  %i.arr = call i64 @llvm.smax.i64(i64 %.1497, i64 %.pre1609)
  %i.ars = add i64 %i.arr, %.1527
  br label %bb.kc

BSD__sprint.exit877:                              ; preds = %bb.kb
  %i.art = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.aru = call i32 %i.art(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !158
  store i64 0, ptr %i.t, align 8, !tbaa !94
  %.not729 = icmp eq i32 %i.aru, 0
  br i1 %.not729, label %.thread1008, label %.thread1011

.thread1008:                                      ; preds = %BSD__sprint.exit877
  %i.arv = call i64 @llvm.smax.i64(i64 %.1497, i64 %.pre1609)
  %i.arw = add i64 %i.arv, %.1527
  br label %bb.kc

thread-pre-split1034:                             ; preds = %bb.jw, %bb.jy, %._crit_edge1357
  %.pr = phi i64 [ %i.arn, %._crit_edge1357 ], [ %i.aqo, %bb.jy ], [ %i.aqo, %bb.jw ]
  %i.arx = call i64 @llvm.smax.i64(i64 %.1497, i64 %.pre1609)
  %i.ary = add i64 %i.arx, %.1527                 ; 3 uses
  %.not730 = icmp eq i64 %.pr, 0
  br i1 %.not730, label %bb.kc, label %BSD__sprint.exit879

BSD__sprint.exit879:                              ; preds = %thread-pre-split1034
  %i.arz = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.asa = call i32 %i.arz(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !158
  store i64 0, ptr %i.t, align 8, !tbaa !94
  %.not731 = icmp eq i32 %i.asa, 0
  br i1 %.not731, label %bb.kc, label %.thread1011

bb.kc:                                            ; preds = %thread-pre-split1034.thread, %.thread1008, %BSD__sprint.exit879, %thread-pre-split1034
  %i.asb = phi i64 [ %i.arw, %.thread1008 ], [ %i.ary, %BSD__sprint.exit879 ], [ %i.ary, %thread-pre-split1034 ], [ %i.ars, %thread-pre-split1034.thread ]
  store i32 0, ptr %i.u, align 8, !tbaa !182
  br label %.outer2298

.loopexit:                                        ; preds = %._crit_edge, %bb.k
  %i.asc = load i64, ptr %i.t, align 8, !tbaa !94
  %.not736 = icmp eq i64 %i.asc, 0
  br i1 %.not736, label %.thread1011, label %BSD__sprint.exit881

BSD__sprint.exit881:                              ; preds = %.loopexit
  %i.asd = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.ase = call i32 %i.asd(ptr noundef nonnull %0, ptr noundef nonnull %3) #20, !inline_history !158 ; 0 uses
  br label %.thread1011

.thread1011.sink.split:                           ; preds = %bb.jx, %bb.gt, %bb.go, %bb.gc
  %i.asf = call ptr @rb_errno_ptr() #20
  store i32 12, ptr %i.asf, align 4, !tbaa !11
  br label %.thread1011

.thread1011:                                      ; preds = %BSD__sprint.exit, %BSD__sprint.exit879, %BSD__sprint.exit762, %BSD__sprint.exit869, %BSD__sprint.exit861, %BSD__sprint.exit871, %BSD__sprint.exit865, %BSD__sprint.exit859, %BSD__sprint.exit857, %BSD__sprint.exit853, %BSD__sprint.exit851, %BSD__sprint.exit849, %BSD__sprint.exit847, %BSD__sprint.exit845, %BSD__sprint.exit841, %BSD__sprint.exit839, %BSD__sprint.exit835, %BSD__sprint.exit833, %BSD__sprint.exit829, %BSD__sprint.exit827, %BSD__sprint.exit825, %BSD__sprint.exit821, %BSD__sprint.exit819, %BSD__sprint.exit817, %BSD__sprint.exit809, %BSD__sprint.exit815, %BSD__sprint.exit811, %BSD__sprint.exit807, %BSD__sprint.exit805, %BSD__sprint.exit877, %BSD__sprint.exit873, %BSD__sprint.exit803, %BSD__sprint.exit799, %BSD__sprint.exit795, %BSD__sprint.exit793, %BSD__sprint.exit791, %bb.ao, %BSD__sprint.exit789, %BSD__sprint.exit797, %BSD__sprint.exit801, %BSD__sprint.exit813, %BSD__sprint.exit863, %BSD__sprint.exit867, %BSD__sprint.exit843, %BSD__sprint.exit855, %BSD__sprint.exit831, %BSD__sprint.exit837, %BSD__sprint.exit823, %BSD__sprint.exit875, %BSD__sprint.exit881, %.thread1011.sink.split, %.loopexit
  %.25281021 = phi i64 [ %.1527, %BSD__sprint.exit863 ], [ %.1527, %.thread1011.sink.split ], [ %.1527, %.loopexit ], [ %.1527, %BSD__sprint.exit831 ], [ %.1527, %BSD__sprint.exit875 ], [ %.1527, %BSD__sprint.exit801 ], [ %.1527, %BSD__sprint.exit855 ], [ %.1527, %BSD__sprint.exit823 ], [ %.1527, %BSD__sprint.exit881 ], [ %.1527, %BSD__sprint.exit797 ], [ %.1527, %BSD__sprint.exit843 ], [ %.1527, %BSD__sprint.exit789 ], [ %.1527, %BSD__sprint.exit867 ], [ %.1527, %BSD__sprint.exit837 ], [ %.1527, %BSD__sprint.exit813 ], [ %.0526, %BSD__sprint.exit ], [ %.1527, %BSD__sprint.exit865 ], [ %.1527, %BSD__sprint.exit859 ], [ %.1527, %BSD__sprint.exit857 ], [ %.1527, %BSD__sprint.exit853 ], [ %.1527, %BSD__sprint.exit851 ], [ %.1527, %BSD__sprint.exit849 ], [ %.1527, %BSD__sprint.exit847 ], [ %.1527, %BSD__sprint.exit845 ], [ %.1527, %BSD__sprint.exit841 ], [ %.1527, %BSD__sprint.exit839 ], [ %.1527, %BSD__sprint.exit835 ], [ %.1527, %BSD__sprint.exit833 ], [ %.1527, %BSD__sprint.exit829 ], [ %.1527, %BSD__sprint.exit827 ], [ %.1527, %BSD__sprint.exit825 ], [ %.1527, %BSD__sprint.exit821 ], [ %.1527, %BSD__sprint.exit819 ], [ %.1527, %BSD__sprint.exit817 ], [ %.1527, %BSD__sprint.exit809 ], [ %.1527, %BSD__sprint.exit815 ], [ %.1527, %BSD__sprint.exit811 ], [ %.1527, %BSD__sprint.exit807 ], [ %.1527, %BSD__sprint.exit805 ], [ %.1527, %BSD__sprint.exit877 ], [ %.1527, %bb.ao ], [ %.1527, %BSD__sprint.exit873 ], [ %.1527, %BSD__sprint.exit803 ], [ %.1527, %BSD__sprint.exit799 ], [ %.1527, %BSD__sprint.exit795 ], [ %.1527, %BSD__sprint.exit793 ], [ %.1527, %BSD__sprint.exit791 ], [ %.1527, %BSD__sprint.exit861 ], [ %i.ary, %BSD__sprint.exit879 ], [ %.1527, %BSD__sprint.exit871 ], [ %.1527, %BSD__sprint.exit762 ], [ %.1527, %BSD__sprint.exit869 ]
  %i.asg = load i16, ptr %i.m, align 8, !tbaa !82
  %i.ash = and i16 %i.asg, 64
  %.not738 = icmp eq i16 %i.ash, 0
  %i.asi = select i1 %.not738, i64 %.25281021, i64 -1
  br label %bb.kd

bb.kd:                                            ; preds = %bb.b, %.thread1011
  %.0584 = phi i64 [ %i.asi, %.thread1011 ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  ret i64 %.0584
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @rb_errno_ptr() local_unnamed_addr #3

declare ptr @ruby_hdtoa(double noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ruby_dtoa(double noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ruby__sfvwrite(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 !guid !194 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 7 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !83
  %i.e = load i64, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.b, i64 24       ; 6 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ]
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !85
  %i.o = getelementptr i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !89
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.q = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !64
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.47) #19
  unreachable

bb.d:                                             ; preds = %RSTRING_PTR.exit
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !94   ; 4 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %i.s, 9223372036854775806
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !64
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @.str.48) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.w = and i64 %i.e, 3145728
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.0 = phi i64 [ %i.n, %bb.g ], [ %i.z, %bb.i ]  ; 4 uses
  %i.x = sub i64 %.0, %i.l
  %i.y = icmp sgt i64 %i.s, %i.x
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = shl i64 %.0, 1                           ; 2 uses
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.h, !llvm.loop !192

bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr @rb_eArgError, align 8, !tbaa !64
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.2) #19
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ac = tail call i64 @rb_str_resize(i64 noundef %i.c, i64 noundef %.0) #20 ; 0 uses
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !66  ; 2 uses
  %i.ae = and i64 %i.ad, -3145729
  %i.af = or disjoint i64 %i.ae, %i.w
  store i64 %i.af, ptr %i.b, align 8, !tbaa !66
  %i.ag = and i64 %i.ad, 8192
  %.not.i45 = icmp eq i64 %i.ag, 0
  br i1 %.not.i45, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !67
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %bb.k
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ %i.g, %bb.k ]
  store i64 %.0, ptr %i.m, align 8, !tbaa !85
  %i.aj = load ptr, ptr %1, align 8, !tbaa !95
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.l
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ruby_nonempty_memcpy.exit
  %.03953 = phi i64 [ %i.ap, %ruby_nonempty_memcpy.exit ], [ %i.s, %.lr.ph.preheader ]
  %.04052 = phi ptr [ %i.ao, %ruby_nonempty_memcpy.exit ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.04151 = phi ptr [ %i.aq, %ruby_nonempty_memcpy.exit ], [ %i.aj, %.lr.ph.preheader ] ; 3 uses
  %i.al = getelementptr i8, ptr %.04151, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !98 ; 4 uses
  %.not.i47 = icmp eq i64 %i.am, 0
  br i1 %.not.i47, label %ruby_nonempty_memcpy.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.an = load ptr, ptr %.04151, align 8, !tbaa !97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.04052, ptr noundef nonnull readonly align 1 %i.an, i64 noundef range(i64 1, 0) %i.am, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %.lr.ph, %bb.m
  %i.ao = getelementptr i8, ptr %.04052, i64 %i.am ; 3 uses
  %i.ap = sub i64 %.03953, %i.am                  ; 2 uses
  %i.aq = getelementptr i8, ptr %.04151, i64 16
  %i.ar = icmp sgt i64 %i.ap, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %ruby_nonempty_memcpy.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !66
  store ptr %i.ao, ptr %0, align 8, !tbaa !83
  %i.as = and i64 %.pre, 8192
  %.not.i48 = icmp eq i64 %i.as, 0
  br i1 %.not.i48, label %RSTRING_PTR.exit49, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !67
  br label %RSTRING_PTR.exit49

RSTRING_PTR.exit49:                               ; preds = %._crit_edge, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ %i.g, %._crit_edge ]
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @rb_str_set_len(i64 noundef %i.c, i64 noundef %i.ax) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %RSTRING_PTR.exit49
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @ruby__sfvextra(ptr nofree noundef captures(address) %0, i64 noundef %1, ptr nofree noundef captures(address) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 !guid !195 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %.not = icmp eq i64 %1, 8
  br i1 %.not, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 8, !tbaa !64     ; 8 uses
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !89
end_hunk_0
