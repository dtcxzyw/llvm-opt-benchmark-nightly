Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_picker?download=true
inline.NumInlined: 1888
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7rocksdb16CompactionPicker29PickCompactionForCompactRangeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEiiRKNS_19CompactRangeOptionsEPKNS_11InternalKeyESM_PPSK_PbmS8_S8_:bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc.i unwind label %bb.cw

.noexc.i:                                         ; preds = %.noexc.i.i6.i
  unreachable

_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.cv
  %i.qp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qk) #31
          to label %.noexc7.i unwind label %bb.cw ; 4 uses

.noexc7.i:                                        ; preds = %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.qp, ptr %i.qd, align 8, !tbaa !393
  %i.qq = getelementptr inbounds nuw i8, ptr %24, i64 40 ; 2 uses
  store ptr %i.qp, ptr %i.qq, align 8, !tbaa !466
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qk
  %i.qs = getelementptr inbounds nuw i8, ptr %24, i64 48
  store ptr %i.qr, ptr %i.qs, align 8, !tbaa !394
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc7.i, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.qu, %.lr.ph.i.i.i.i.i.i ], [ %i.qp, %.noexc7.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.qt, %.lr.ph.i.i.i.i.i.i ], [ %i.qh, %.noexc7.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !467
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qv = icmp eq ptr %i.qt, %i.qg
  br i1 %i.qv, label %.loopexit438, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !468

bb.cw:                                            ; preds = %_ZNSt15__new_allocatorIN7rocksdb28AtomicCompactionUnitBoundaryEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i6.i
  %i.qw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qx = load ptr, ptr %i.pj, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i.i317 = icmp eq ptr %i.qx, null
  br i1 %.not.i.i.i.i317, label %.body, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.qy = load ptr, ptr %i.qa, align 8, !tbaa !53
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qx to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qx, i64 noundef %i.rb) #29
  br label %.body

.loopexit438:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc7.i.thread
  %i.rc = phi ptr [ %i.ql, %.noexc7.i.thread ], [ %i.qq, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc7.i.thread ], [ %i.qu, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.rc, align 8, !tbaa !466
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.rd = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #31
          to label %.noexc402 unwind label %.body403.thread ; 5 uses

.noexc402:                                        ; preds = %.loopexit438
  store ptr %i.rd, ptr %23, align 16, !tbaa !391
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 56 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.re, ptr %i.rf, align 16, !tbaa !396
  invoke void @_ZN7rocksdb20CompactionInputFilesC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %i.rd, ptr noundef nonnull align 8 dereferenceable(56) %24)
          to label %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.cy

_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc402
  %i.rg = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 6 uses
  store ptr %i.re, ptr %i.rg, align 8, !tbaa !392
  %i.rh = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !393 ; 3 uses
  %.not.i.i.i.i323 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i.i.i323, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, label %bb.de

bb.cy:                                            ; preds = %.noexc402
  %i.rj = landingpad { ptr, i32 }
          catch ptr null
  %i.rk = extractvalue { ptr, i32 } %i.rj, 0
  %i.rl = call ptr @__cxa_begin_catch(ptr %i.rk) #33 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesEEvT_S3_(ptr noundef nonnull %i.rd, ptr noundef nonnull %i.rd)
          to label %bb.cz unwind label %bb.da

bb.cz:                                            ; preds = %bb.cy
  invoke void @__cxa_rethrow() #30
          to label %bb.dc unwind label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.rm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body403 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rn = landingpad { ptr, i32 }
          catch ptr null
  %i.ro = extractvalue { ptr, i32 } %i.rn, 0
  call void @__clang_call_terminate(ptr %i.ro) #32
  unreachable

bb.dc:                                            ; preds = %bb.cz
  unreachable

.body403.thread:                                  ; preds = %.loopexit438
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %.body321

.body403:                                         ; preds = %bb.da
  %.pr = load ptr, ptr %23, align 16, !tbaa !391  ; 3 uses
  %.not.i.i.i320 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i320, label %.body321, label %bb.dd

bb.dd:                                            ; preds = %.body403
  %i.rq = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.rr = load ptr, ptr %i.rq, align 16, !tbaa !396
  %i.rs = ptrtoint ptr %i.rr to i64
  %i.rt = ptrtoint ptr %.pr to i64
  %i.ru = sub i64 %i.rs, %i.rt
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ru) #29
  br label %.body321

bb.de:                                            ; preds = %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.rv = getelementptr inbounds nuw i8, ptr %24, i64 48
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !394
  %i.rx = ptrtoint ptr %i.rw to i64
  %i.ry = ptrtoint ptr %i.ri to i64
  %i.rz = sub i64 %i.rx, %i.ry
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.rz) #29
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i: ; preds = %bb.de, %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i
  %i.sc = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !53
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = ptrtoint ptr %i.sb to i64
  %i.sg = sub i64 %i.se, %i.sf
  call void @_ZdlPvm(ptr noundef nonnull %i.sb, i64 noundef %i.sg) #29
  br label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit

_ZN7rocksdb20CompactionInputFilesD2Ev.exit:       ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  %i.sh = load ptr, ptr %i.pb, align 8, !tbaa !369
  %i.si = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !369
  %i.sk = icmp eq ptr %i.sh, %i.sj
  %.pre538 = load ptr, ptr %i.rg, align 8, !tbaa !392 ; 4 uses
  br i1 %i.sk, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZN7rocksdb20CompactionInputFilesD2Ev.exit
  %i.sl = load ptr, ptr %i.rf, align 16, !tbaa !396
  %.not.i325 = icmp eq ptr %.pre538, %i.sl
  br i1 %.not.i325, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN7rocksdb20CompactionInputFilesC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %.pre538, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %.noexc326 unwind label %bb.dk

.noexc326:                                        ; preds = %bb.dh
  %i.sm = load ptr, ptr %i.rg, align 8, !tbaa !392
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 56 ; 2 uses
  store ptr %i.sn, ptr %i.rg, align 8, !tbaa !392
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit

bb.di:                                            ; preds = %bb.dg
  invoke void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr %.pre538, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %._ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit_crit_edge unwind label %bb.dk

._ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit_crit_edge: ; preds = %bb.di
  %.pre537 = load ptr, ptr %i.rg, align 8, !tbaa !392
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit

bb.dj:                                            ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body321:                                         ; preds = %.body403.thread, %.body403, %bb.dd
  %eh.lpad-body404665 = phi { ptr, i32 } [ %i.rp, %.body403.thread ], [ %i.rm, %.body403 ], [ %i.rm, %bb.dd ]
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %24) #33
  br label %.body

.body:                                            ; preds = %.body321, %bb.dj, %bb.cx, %bb.cw
  %.pn244 = phi { ptr, i32 } [ %i.qw, %bb.cw ], [ %i.so, %bb.dj ], [ %i.qw, %bb.cx ], [ %eh.lpad-body404665, %.body321 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  br label %bb.es

bb.dk:                                            ; preds = %bb.di, %bb.dh, %bb.dm, %.critedge279
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit: ; preds = %._ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit_crit_edge, %.noexc326, %_ZN7rocksdb20CompactionInputFilesD2Ev.exit
  %i.sq = phi ptr [ %.pre537, %._ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit_crit_edge ], [ %i.sn, %.noexc326 ], [ %.pre538, %_ZN7rocksdb20CompactionInputFilesD2Ev.exit ] ; 2 uses
  %i.sr = load ptr, ptr %23, align 16, !tbaa !391 ; 3 uses
  %.not246498.not = icmp eq ptr %i.sq, %i.sr
  br i1 %.not246498.not, label %.critedge279, label %.lr.ph500.preheader

.lr.ph500.preheader:                              ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit
  %i.ss = ptrtoint ptr %i.sq to i64
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = sub i64 %i.ss, %i.st
  %i.sv = sdiv i64 %i.su, 56
  %umax = call i64 @llvm.umax.i64(i64 %i.sv, i64 1)
  br label %.lr.ph500

.lr.ph500:                                        ; preds = %.lr.ph500.preheader, %.loopexit437
  %.0499 = phi i64 [ %i.tl, %.loopexit437 ], [ 0, %.lr.ph500.preheader ] ; 2 uses
  %i.sw = getelementptr inbounds nuw [56 x i8], ptr %i.sr, i64 %.0499 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !16 ; 2 uses
  %i.ta = load ptr, ptr %i.sx, align 8, !tbaa !20 ; 3 uses
  %.not.i328 = icmp eq ptr %i.sz, %i.ta
  br i1 %.not.i328, label %.loopexit437, label %.lr.ph.preheader.i329

.lr.ph.preheader.i329:                            ; preds = %.lr.ph500
  %i.tb = ptrtoint ptr %i.sz to i64
  %i.tc = ptrtoint ptr %i.ta to i64
  %i.td = sub i64 %i.tb, %i.tc
  %i.te = ashr exact i64 %i.td, 3
  br label %.lr.ph.i330

bb.dl:                                            ; preds = %.lr.ph.i330
  %i.tf = add nuw i64 %.069.i331, 1               ; 2 uses
  %exitcond.not.i332 = icmp eq i64 %i.tf, %i.te
  br i1 %exitcond.not.i332, label %.loopexit437, label %.lr.ph.i330, !llvm.loop !375

.lr.ph.i330:                                      ; preds = %bb.dl, %.lr.ph.preheader.i329
  %.069.i331 = phi i64 [ %i.tf, %bb.dl ], [ 0, %.lr.ph.preheader.i329 ] ; 2 uses
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %.069.i331
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !21
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 188
  %i.tj = load i8, ptr %i.ti, align 4, !tbaa !23, !range !38, !noundef !39
  %i.tk = trunc nuw i8 %i.tj to i1
  br i1 %i.tk, label %_ZN7rocksdb16CompactionPicker20AreFilesInCompactionERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit334, label %bb.dl

_ZN7rocksdb16CompactionPicker20AreFilesInCompactionERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit334: ; preds = %.lr.ph.i330
  store i8 1, ptr %11, align 1, !tbaa !438
  br label %bb.en

.loopexit437:                                     ; preds = %bb.dl, %.lr.ph500
  %i.tl = add nuw i64 %.0499, 1                   ; 2 uses
  %exitcond528.not = icmp eq i64 %i.tl, %umax
  br i1 %exitcond528.not, label %.critedge279, label %.lr.ph500, !llvm.loop !469

.critedge279:                                     ; preds = %.loopexit437, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE9push_backERKS1_.exit
  %i.tm = load ptr, ptr %i.gg, align 8, !tbaa !346, !nonnull !39, !align !347
  %i.tn = invoke noundef i32 @_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii(ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(875) %i.tm, i32 noundef %5, i32 noundef %.0175)
          to label %bb.dm unwind label %bb.dk

bb.dm:                                            ; preds = %.critedge279
  %i.to = invoke noundef zeroext i1 @_ZNK7rocksdb16CompactionPicker31FilesRangeOverlapWithCompactionERKSt6vectorINS_20CompactionInputFilesESaIS2_EEii(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %23, i32 noundef %.0175, i32 noundef %i.tn)
          to label %bb.dn unwind label %bb.dk

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.to, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %11, align 1, !tbaa !438
  br label %bb.en

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  invoke void @_ZN7rocksdb16CompactionPicker15GetGrandparentsEPNS_18VersionStorageInfoERKNS_20CompactionInputFilesES5_PSt6vectorIPNS_12FileMetaDataESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull %25)
          to label %bb.dq unwind label %bb.eg

bb.dq:                                            ; preds = %bb.dp
  %i.tp = invoke noalias noundef nonnull dereferenceable(12032) ptr @_Znwm(i64 noundef 12032) #31
          to label %bb.dr unwind label %bb.eh     ; 4 uses

bb.dr:                                            ; preds = %bb.dq
  %i.tq = load ptr, ptr %i.gg, align 8, !tbaa !346, !nonnull !39, !align !347 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ts = load <2 x ptr>, ptr %23, align 16, !tbaa !372
  store <2 x ptr> %i.ts, ptr %26, align 16, !tbaa !372
  %i.tt = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.tu = load ptr, ptr %i.rf, align 16, !tbaa !396
  store ptr %i.tu, ptr %i.tt, align 16, !tbaa !396
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tq, i64 600
  %i.tw = load i8, ptr %i.tv, align 8, !tbaa !348
  %i.tx = getelementptr inbounds nuw i8, ptr %4, i64 2800 ; 2 uses
  %i.ty = load i32, ptr %i.tx, align 16, !tbaa !383
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tq, i64 748
  %i.ua = load i8, ptr %i.tz, align 4, !tbaa !470, !range !38, !noundef !39
  %i.ub = trunc nuw i8 %i.ua to i1
  %i.uc = invoke noundef i64 @_ZN7rocksdb19MaxFileSizeForLevelERKNS_16MutableCFOptionsEiNS_15CompactionStyleEib(ptr noundef nonnull align 8 dereferenceable(736) %2, i32 noundef %.0175, i8 noundef signext %i.tw, i32 noundef %i.ty, i1 noundef zeroext %i.ub)
          to label %bb.ds unwind label %bb.ei

bb.ds:                                            ; preds = %bb.dr
  %i.ud = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !385
  %i.uf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !440
  %i.uh = load i32, ptr %i.tx, align 16, !tbaa !383
  %i.ui = getelementptr inbounds nuw i8, ptr %2, i64 507
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !55  ; 2 uses
  %.not.i335 = icmp eq i8 %i.uj, -1
  br i1 %.not.i335, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.uk = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !95
  %i.um = add nsw i32 %i.ul, -1
  %.not12.i336 = icmp slt i32 %.0175, %i.um
  br i1 %.not12.i336, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.un = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !167 ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !167 ; 2 uses
  %i.ur = icmp eq ptr %i.uo, %i.uq
  br i1 %i.ur, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.us = icmp eq i32 %.0175, 0
  %i.ut = add i32 %.0175, 1
  %i.uu = sub i32 %i.ut, %i.uh
  %i.uv = select i1 %i.us, i32 0, i32 %i.uu
  %i.uw = ptrtoint ptr %i.uq to i64
  %i.ux = ptrtoint ptr %i.uo to i64
  %i.uy = sub i64 %i.uw, %i.ux
  %i.uz = trunc i64 %i.uy to i32
  %i.va = add nsw i32 %i.uz, -1
  %.sroa.speculated15.i338 = call i32 @llvm.smin.i32(i32 %i.va, i32 %i.uv)
  %.sroa.speculated.i339 = call i32 @llvm.smax.i32(i32 %.sroa.speculated15.i338, i32 0)
  %i.vb = zext nneg i32 %.sroa.speculated.i339 to i64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uo, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !168
  br label %bb.dx

bb.dw:                                            ; preds = %bb.du
  %i.ve = getelementptr inbounds nuw i8, ptr %2, i64 506
  %i.vf = load i8, ptr %i.ve, align 2, !tbaa !169
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dt, %bb.dv, %bb.dw
  %.0.i337 = phi i8 [ %i.uj, %bb.dt ], [ %i.vf, %bb.dw ], [ %i.vd, %bb.dv ]
  %i.vg = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !95, !noalias !471
  %i.vi = add nsw i32 %i.vh, -1
  %.not.i341 = icmp sge i32 %.0175, %i.vi
  %i.vj = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.vk = load i8, ptr %i.vj, align 8, !range !38, !noalias !471
  %i.vl = trunc nuw i8 %i.vk to i1
  %or.cond.i342 = select i1 %.not.i341, i1 %i.vl, i1 false
  %..i343 = select i1 %or.cond.i342, i64 568, i64 512
  %i.vm = getelementptr inbounds nuw i8, ptr %2, i64 %..i343
  %i.vn = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !448
  %i.vp = load <2 x ptr>, ptr %25, align 16, !tbaa !369
  store <2 x ptr> %i.vp, ptr %27, align 16, !tbaa !369
  %i.vq = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.vs = load ptr, ptr %i.vr, align 16, !tbaa !53
  store ptr %i.vs, ptr %i.vq, align 16, !tbaa !53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %i.vt = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i8 0, ptr %i.vt, align 8, !tbaa !449
  %i.vu = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !450
  %i.vw = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !451
  invoke void @_ZN7rocksdb10CompactionC1EPNS_18VersionStorageInfoERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsESt6vectorINS_20CompactionInputFilesESaISD_EEimmjNS_15CompressionTypeENS_18CompressionOptionsENS_11TemperatureEjSC_IPNS_12FileMetaDataESaISK_EESt8optionalImEPKNS_15SnapshotCheckerENS_16CompactionReasonERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdbNS_27BlobGarbageCollectionPolicyEd(ptr noundef nonnull align 16 dereferenceable(12020) %i.tp, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(875) %i.tq, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 %26, i32 noundef %.0175, i64 noundef %i.uc, i64 noundef %i.ue, i32 noundef %i.ug, i8 noundef zeroext %.0.i337, ptr noundef nonnull byval(%"struct.rocksdb::CompressionOptions") align 8 %i.vm, i8 noundef zeroext 0, i32 noundef %i.vo, ptr noundef nonnull align 8 %27, ptr noundef nonnull byval(%"class.std::optional") align 8 %28, ptr noundef null, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(32) %13, double noundef -1.000000e+00, i1 noundef zeroext true, i32 noundef %i.vv, double noundef %i.vx)
          to label %bb.dy unwind label %bb.ej

bb.dy:                                            ; preds = %bb.dx
  %i.vy = load ptr, ptr %27, align 16, !tbaa !20  ; 3 uses
  %.not.i.i.i344 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i.i344, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit345, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.vz = load ptr, ptr %i.vq, align 16, !tbaa !53
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = ptrtoint ptr %i.vy to i64
  %i.wc = sub i64 %i.wa, %i.wb
  call void @_ZdlPvm(ptr noundef nonnull %i.vy, i64 noundef %i.wc) #29
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit345

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit345: ; preds = %bb.dy, %bb.dz
  %i.wd = load ptr, ptr %26, align 16, !tbaa !391 ; 3 uses
  %i.we = load ptr, ptr %i.tr, align 8, !tbaa !392 ; 2 uses
  %.not4.i.i.i346 = icmp eq ptr %i.wd, %i.we
  br i1 %.not4.i.i.i346, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i356, label %.lr.ph.i.i.i347

.lr.ph.i.i.i347:                                  ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit345, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i352
  %.05.i.i.i348 = phi ptr [ %i.wt, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i352 ], [ %i.wd, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit345 ] ; 5 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.05.i.i.i348, i64 32
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !393 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i349 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i349, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i350, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i.i.i347
  %i.wh = getelementptr inbounds nuw i8, ptr %.05.i.i.i348, i64 48
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !394
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = ptrtoint ptr %i.wg to i64
  %i.wl = sub i64 %i.wj, %i.wk
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef %i.wl) #29
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i350

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i350: ; preds = %bb.ea, %.lr.ph.i.i.i347
  %i.wm = getelementptr inbounds nuw i8, ptr %.05.i.i.i348, i64 8
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !20 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i351 = icmp eq ptr %i.wn, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i351, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i352, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i350
  %i.wo = getelementptr inbounds nuw i8, ptr %.05.i.i.i348, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !53
  %i.wq = ptrtoint ptr %i.wp to i64
  %i.wr = ptrtoint ptr %i.wn to i64
  %i.ws = sub i64 %i.wq, %i.wr
  call void @_ZdlPvm(ptr noundef nonnull %i.wn, i64 noundef %i.ws) #29
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i352

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i352: ; preds = %bb.eb, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i350
  %i.wt = getelementptr inbounds nuw i8, ptr %.05.i.i.i348, i64 56 ; 2 uses
  %.not.i.i.i353 = icmp eq ptr %i.wt, %i.we
  br i1 %.not.i.i.i353, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i354, label %.lr.ph.i.i.i347, !llvm.loop !395

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i354: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i352
  %.pr.i355 = load ptr, ptr %26, align 16, !tbaa !391
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i356

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i356: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i354, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit345
  %i.wu = phi ptr [ %.pr.i355, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i354 ], [ %i.wd, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit345 ] ; 3 uses
  %.not.i.i1.i357 = icmp eq ptr %i.wu, null
  br i1 %.not.i.i1.i357, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit359, label %bb.ec

bb.ec:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i356
  %i.wv = load ptr, ptr %i.tt, align 16, !tbaa !396
  %i.ww = ptrtoint ptr %i.wv to i64
  %i.wx = ptrtoint ptr %i.wu to i64
  %i.wy = sub i64 %i.ww, %i.wx
  call void @_ZdlPvm(ptr noundef nonnull %i.wu, i64 noundef %i.wy) #29
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit359

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit359: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i356, %bb.ec
  invoke void @_ZN7rocksdb16CompactionPicker18RegisterCompactionEPNS_10CompactionE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull %i.tp)
          to label %bb.ed unwind label %bb.eh
end_hunk_0
