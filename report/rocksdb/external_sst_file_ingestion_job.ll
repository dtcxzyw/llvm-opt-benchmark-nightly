Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/external_sst_file_ingestion_job?download=true
inline.NumInlined: 4284
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7rocksdb27ExternalSstFileIngestionJob40CreateEquivalentFileIngestingCompactionsEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hf) #29
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ar
  %i.hg = load ptr, ptr %4, align 8, !tbaa !676   ; 3 uses
  %i.hh = load ptr, ptr %i.t, align 8, !tbaa !685 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hg, %i.hh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hw, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i ], [ %i.hg, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !680 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !682
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = ptrtoint ptr %i.hj to i64
  %i.ho = sub i64 %i.hm, %i.hn
  call void @_ZdlPvm(ptr noundef nonnull %i.hj, i64 noundef %i.ho) #29
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.as, %.lr.ph.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !670 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !669
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hv) #29
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i: ; preds = %bb.at, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.hw, %i.hh
  br i1 %.not.i.i.i62, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !676
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit
  %i.hx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hg, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i
  %i.hy = load ptr, ptr %i.s, align 8, !tbaa !677
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #29
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, %bb.au
  %i.ic = load ptr, ptr %i.af, align 8, !tbaa !680 ; 3 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i64, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.id = load ptr, ptr %i.ag, align 8, !tbaa !682
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ic to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ig) #29
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i: ; preds = %bb.av, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.ih = load ptr, ptr %i.ah, align 8, !tbaa !670 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i
  %i.ii = load ptr, ptr %i.ai, align 8, !tbaa !669
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.il) #29
  br label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit

_ZN7rocksdb20CompactionInputFilesD2Ev.exit:       ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.im = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.084.0168) #31 ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.b
  br i1 %i.in, label %._crit_edge171, label %bb.v

bb.ax:                                            ; preds = %bb.v
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.thread:                                          ; preds = %bb.w
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.ay:                                            ; preds = %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit101:                                     ; preds = %._crit_edge.i.i, %_ZNKSt6vectorIPN7rocksdb10CompactionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.ph = phi i1 [ true, %._crit_edge.i.i ], [ false, %_ZNKSt6vectorIPN7rocksdb10CompactionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp102:                            ; preds = %bb.ao
  %lpad.loopexit.split-lp104 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.split-lp102, %.loopexit101
  %.0 = phi i1 [ %.0.ph, %.loopexit101 ], [ false, %.loopexit.split-lp102 ] ; 2 uses
  %lpad.phi105 = phi { ptr, i32 } [ %lpad.loopexit103, %.loopexit101 ], [ %lpad.loopexit.split-lp104, %.loopexit.split-lp102 ] ; 2 uses
  %i.ir = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.v
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.az
  %i.it = load i64, ptr %i.v, align 8, !tbaa !45
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.iv = load ptr, ptr %6, align 8, !tbaa !670   ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i68, label %.body, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.iw = load ptr, ptr %i.aa, align 8, !tbaa !669
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.iz) #29
  br label %.body

.body.thread:                                     ; preds = %.body72, %bb.ak
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #27
  br label %.sink.split

.body:                                            ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.ba
  %.pn.pn = phi { ptr, i32 } [ %i.iq, %bb.ay ], [ %lpad.phi105, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %lpad.phi105, %bb.ba ] ; 2 uses
  %.2 = phi i1 [ true, %bb.ay ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.0, %bb.ba ]
  call void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #27
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br i1 %.2, label %bb.bb, label %bb.bc

.sink.split:                                      ; preds = %.thread, %.body.thread
  %.pn.pn.pn.pn95.ph = phi { ptr, i32 } [ %eh.lpad-body73, %.body.thread ], [ %i.ip, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %.body
  %.pn.pn.pn.pn95 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %.pn.pn.pn.pn95.ph, %.sink.split ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef 12032) #29
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ax, %bb.bb, %.body, %bb.t
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.t ], [ %.pn.pn.pn.pn95, %bb.bb ], [ %.pn.pn, %.body ], [ %i.io, %bb.ax ]
  call void @_ZNSt3mapIiN7rocksdb20CompactionInputFilesESt4lessIiESaISt4pairIKiS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb27ExternalSstFileIngestionJob31CheckLevelForIngestedBehindFileEPNS_16IngestedFileInfoE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17528) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !194  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !673  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1832
  %i.f = load i32, ptr %i.e, align 8, !tbaa !568
  %i.g = add i32 %i.f, -1                         ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge21, label %.split

_ZN7rocksdb27ExternalSstFileIngestionJob22IngestedFileFitInLevelEPKNS_16IngestedFileInfoEi.exit.preheader: ; preds = %.split
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !194
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 1832
  %.pre29 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !568 ; 2 uses
  %.pre30 = add i32 %.pre29, -1
  %9 = icmp sgt i32 %.pre29, 1
  %10 = zext i32 %.pre30 to i64
  br i1 %9, label %.lr.ph, label %.critedge21

.lr.ph:                                           ; preds = %_ZN7rocksdb27ExternalSstFileIngestionJob22IngestedFileFitInLevelEPKNS_16IngestedFileInfoEi.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 2776
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !633
  br label %bb.c

.split:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44
  store ptr %i.m, ptr %3, align 8, !tbaa !385
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  store i64 %i.p, ptr %i.n, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  store ptr %i.r, ptr %4, align 8, !tbaa !385
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.u = load i64, ptr %i.t, align 8, !tbaa !46
  store i64 %i.u, ptr %i.s, align 8, !tbaa !386
  %i.v = call noundef zeroext i1 @_ZN7rocksdb18VersionStorageInfo14OverlapInLevelEiPKNS_5SliceES3_(ptr noundef nonnull align 16 dereferenceable(4288) %i.k, i32 noundef %i.g, ptr noundef nonnull %3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %i.v, label %bb.b, label %_ZN7rocksdb27ExternalSstFileIngestionJob22IngestedFileFitInLevelEPKNS_16IngestedFileInfoEi.exit.preheader

bb.b:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr @.str.121, ptr %5, align 8, !tbaa !385
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 61, ptr %i.w, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr @.str, ptr %6, align 8, !tbaa !385
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !386
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %.critedge19
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge19 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !634  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !634 ; 2 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %.critedge19, label %.critedge

bb.d:                                             ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 8 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.ab
  br i1 %i.ae, label %.critedge19, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %.sroa.022.025 = phi ptr [ %i.ad, %bb.d ], [ %i.z, %bb.c ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.022.025, align 8, !tbaa !635
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !919
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.e, label %bb.d

.critedge19:                                      ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %10
  br i1 %exitcond.not, label %.critedge21, label %bb.c, !llvm.loop !916

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  store ptr @.str.122, ptr %7, align 8, !tbaa !385
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 121, ptr %i.ai, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store ptr @.str, ptr %8, align 8, !tbaa !385
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !386
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.f

.critedge21:                                      ; preds = %.critedge19, %bb.a, %_ZN7rocksdb27ExternalSstFileIngestionJob22IngestedFileFitInLevelEPKNS_16IngestedFileInfoEi.exit.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 1088
  store i32 %i.g, ptr %i.ak, align 8, !tbaa !520
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !48, !alias.scope !920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !920
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.critedge21, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb27ExternalSstFileIngestionJob34AssignLevelAndSeqnoForIngestedFileEPNS_12SuperVersionEbNS_15CompactionStyleEmPNS_16IngestedFileInfoEPmSt8optionalIiE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 initializes((0, 6), (8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17528) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3, i8 noundef signext %4, i64 noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) initializes((0, 8)) %7, i64 %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Arena", align 16  ; 8 uses
  %15 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 23 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %19 = alloca %"struct.rocksdb::FileOptions", align 8 ; 28 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %24 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %25 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %26 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %27 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %28 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %.sroa.0.0.extract.trunc = trunc i64 %8 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  store i64 0, ptr %7, align 8, !tbaa !411
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !400
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !409
  %i.g = and i64 %8, 4294967296
  %.not155 = icmp eq i64 %i.g, 0
  %i.h = and i64 %8, 8589934591
  %or.cond152 = icmp eq i64 %i.h, 4294967296
  %i.i = icmp eq i8 %4, 2
  %spec.select154 = or i1 %i.i, %or.cond152       ; 3 uses
  br i1 %3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9874
  %i.k = load i8, ptr %i.j, align 2, !tbaa !383, !range !174, !noundef !175
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNRSt8optionalIiE5valueEv.exit91, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 17448
  %i.n = load i8, ptr %i.m, align 8, !tbaa !398, !range !174, !noundef !175
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = or i1 %spec.select154, %i.o
  br i1 %or.cond, label %bb.d, label %_ZNRSt8optionalIiE5valueEv.exit91

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.p = add i64 %5, 1
  store i64 %i.p, ptr %7, align 8, !tbaa !411
  br i1 %spec.select154, label %bb.e, label %_ZNRSt8optionalIiE5valueEv.exit91

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 1088
  store i32 0, ptr %i.q, align 8, !tbaa !520
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 9873
  %i.s = load i8, ptr %i.r, align 1, !tbaa !477, !range !174, !noundef !175
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !194
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1832
  %i.x = load i32, ptr %i.w, align 8, !tbaa !568
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %_ZN7rocksdb6Status8TryAgainERKNS_5SliceES3_.exit, label %.critedge

_ZN7rocksdb6Status8TryAgainERKNS_5SliceES3_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  store ptr @.str.117, ptr %12, align 8, !tbaa !385
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 107, ptr %i.z, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store ptr @.str, ptr %13, align 8, !tbaa !385
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !386
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13, i8 noundef zeroext 0)
  %.not.i = icmp eq ptr %0, %11
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %_ZN7rocksdb6Status8TryAgainERKNS_5SliceES3_.exit
  %i.ab = load <4 x i8>, ptr %11, align 8, !tbaa !45
  store <4 x i8> %i.ab, ptr %0, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !177, !range !174, !noundef !175
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ad, ptr %i.ae, align 4, !tbaa !187
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 5
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !188
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !189
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !189
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb6Status8TryAgainERKNS_5SliceES3_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.pre172 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !189 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre172, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre172) #29
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.critedge

_ZNRSt8optionalIiE5valueEv.exit91:                ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @_ZN7rocksdb5ArenaC1EmPNS_12AllocTrackerEm(ptr noundef nonnull align 16 dereferenceable(2288) %14, i64 noundef 4096, ptr noundef null, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %15, i8 0, i64 44, i1 false)
  store i32 4, ptr %i.ak, align 4, !tbaa !492
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i64 -1, ptr %i.al, align 8, !tbaa !493
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i8 0, ptr %i.am, align 8, !tbaa !494
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 76
  store i8 1, ptr %i.ao, align 4, !tbaa !495
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 120 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %15, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.ap, i8 0, i64 39, i1 false)
  store i8 1, ptr %i.ar, align 8, !tbaa !496
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 153
  store i8 0, ptr %i.as, align 1, !tbaa !497
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 154
  store i8 0, ptr %i.at, align 2, !tbaa !498
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store i8 -1, ptr %i.av, align 8, !tbaa !499
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 184
  store ptr null, ptr %i.aw, align 8, !tbaa !500
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 9875
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !527, !range !174, !noundef !175
  %i.az = insertelement <4 x i8> <i8 1, i8 poison, i8 0, i8 0>, i8 %i.ay, i64 1
  store <4 x i8> %i.az, ptr %i.an, align 8, !tbaa !177
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 113
  store i8 1, ptr %i.ba, align 1, !tbaa !922
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !194 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1832
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !568 ; 2 uses
  %spec.select = select i1 %.not155, i32 %i.be, i32 %.sroa.0.0.extract.trunc
  %.048 = select i1 %spec.select154, i32 0, i32 %spec.select ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 9874
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !383, !range !174, !noundef !175
  %i.bh = trunc nuw i8 %i.bg to i1
  %spec.select153 = select i1 %i.bh, i32 %i.be, i32 %.048 ; 2 uses
  %i.bi = icmp sgt i32 %spec.select153, 0
  br i1 %i.bi, label %.lr.ph, label %.thread140

.lr.ph:                                           ; preds = %_ZNRSt8optionalIiE5valueEv.exit91
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
end_hunk_0
