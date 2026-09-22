Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_picker_fifo?download=true
inline.NumInlined: 847
inline.NumDeleted: 402
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb20FIFOCompactionPicker21PickIntraL0CompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEPNS_9LogBufferE:bb.a
  %i.dm = load ptr, ptr %7, align 8, !tbaa !213   ; 3 uses
  %i.dn = load ptr, ptr %i.cf, align 8, !tbaa !284 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.dm, %i.dn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ec, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i ], [ %i.dm, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !286
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.du) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ae, %.lr.ph.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !268 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !267
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #27
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i: ; preds = %bb.af, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.ec, %i.dn
  br i1 %.not.i.i.i60, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit
  %i.ed = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.dm, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i
  %i.ee = load ptr, ptr %i.ce, align 8, !tbaa !281
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.eh) #27
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, %bb.ag
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i62, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !286
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i: ; preds = %bb.ah, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !268 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !267
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #27
  br label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit

_ZN7rocksdb20CompactionInputFilesD2Ev.exit:       ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ao

bb.aj:                                            ; preds = %bb.k, %bb.j
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ak:                                            ; preds = %bb.m
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.al:                                            ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.ck
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.am
  %i.fc = load i64, ptr %i.ck, align 8, !tbaa !20
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.fe = load ptr, ptr %9, align 8, !tbaa !268   ; 3 uses
  %.not.i.i.i67 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i67, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit68, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !267
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit68

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.an
  call void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  br label %.body53

.body53:                                          ; preds = %bb.ab, %.body76, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit68
  %.pn.pn = phi { ptr, i32 } [ %i.ez, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit68 ], [ %eh.lpad-body77, %.body76 ], [ %eh.lpad-body77, %bb.ab ]
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #25
  br label %.body

.body:                                            ; preds = %.body53, %bb.al, %bb.u, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.ey, %bb.al ], [ %i.bw, %bb.u ], [ %.pn.pn, %.body53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 12032) #27
  br label %bb.ar

bb.ao:                                            ; preds = %bb.l, %_ZN7rocksdb20CompactionInputFilesD2Ev.exit
  %.0 = phi ptr [ %i.af, %_ZN7rocksdb20CompactionInputFilesD2Ev.exit ], [ null, %bb.l ]
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i69, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i70, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !286
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i70

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i70: ; preds = %bb.ap, %bb.ao
  %i.fr = load ptr, ptr %i.w, align 8, !tbaa !268 ; 3 uses
  %.not.i.i.i1.i71 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i1.i71, label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit73, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i70
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !267
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fr to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fw) #27
  br label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit73

_ZN7rocksdb20CompactionInputFilesD2Ev.exit73:     ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i70, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.as

bb.ar:                                            ; preds = %bb.ak, %.body, %bb.aj
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ew, %bb.aj ], [ %.pn.pn.pn, %.body ], [ %i.ex, %bb.ak ]
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.as:                                            ; preds = %bb.h, %_ZN7rocksdb20CompactionInputFilesD2Ev.exit73, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.u, %bb.h ], [ %.0, %_ZN7rocksdb20CompactionInputFilesD2Ev.exit73 ], [ null, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb20FIFOCompactionPicker31PickRatioBasedIntraL0CompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEPNS_9LogBufferE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.rocksdb::CompactionInputFiles", align 8 ; 9 uses
  %7 = alloca %"class.std::vector.154", align 8   ; 10 uses
  %8 = alloca [1 x %"struct.rocksdb::CompactionInputFiles"], align 8 ; 14 uses
  %9 = alloca %"class.std::vector.59", align 8    ; 6 uses
  %10 = alloca %"class.std::optional", align 8    ; 2 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load i32, ptr %i.a, align 16, !tbaa !278 ; 2 uses
  %.not308 = icmp sgt i32 %i.b, 1
  br i1 %.not308, label %.lr.ph, label %.critedge145

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 2712
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !110  ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  %i.k = load ptr, ptr %1, align 8, !tbaa !19
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  tail call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.k, i32 noundef %i.j, i64 noundef %i.o)
  br label %.critedge147

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge145, label %bb.b, !llvm.loop !370

.critedge145:                                     ; preds = %bb.d, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !210
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %.critedge147

bb.e:                                             ; preds = %.critedge145
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 2712
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !108  ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !295  ; 2 uses
  %i.w = icmp slt i32 %i.v, 2
  br i1 %i.w, label %.critedge147, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = zext nneg i32 %i.v to i64                ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !266  ; 3 uses
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !268 ; 7 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = icmp ult i64 %i.ae, %i.x
  br i1 %i.af, label %.critedge147, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !296 ; 2 uses
  %.not127 = icmp eq i64 %i.ah, 0
  br i1 %.not127, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq ptr %i.aa, %i.z
  br i1 %i.ai, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %iter.check

iter.check:                                       ; preds = %bb.h
  %i.aj = add i64 %i.ab, -8
  %i.ak = sub i64 %i.aj, %i.ac                    ; 3 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check452 = icmp ult i64 %i.ak, 120
  br i1 %min.iters.check452, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %i.am, 12
  %n.vec = and i64 %i.am, 4611686018427387888     ; 4 uses
  %i.ao = shl i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %i.aa, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi453 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi454 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi455 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %i.aq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.aq ; 4 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 32
  %i.as = getelementptr i8, ptr %next.gep, i64 64
  %i.at = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !112
  %wide.load456 = load <4 x ptr>, ptr %i.ar, align 8, !tbaa !112
  %wide.load457 = load <4 x ptr>, ptr %i.as, align 8, !tbaa !112
  %wide.load458 = load <4 x ptr>, ptr %i.at, align 8, !tbaa !112
  %wide.gep = getelementptr inbounds nuw i8, <4 x ptr> %wide.load, i64 24
  %wide.gep459 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load456, i64 24
  %wide.gep460 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load457, i64 24
  %wide.gep461 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load458, i64 24
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !126
  %wide.masked.gather462 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep459, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !126
  %wide.masked.gather463 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep460, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !126
  %wide.masked.gather464 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep461, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !126
  %i.au = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.av = add <4 x i64> %wide.masked.gather462, %vec.phi453 ; 2 uses
  %i.aw = add <4 x i64> %wide.masked.gather463, %vec.phi454 ; 2 uses
  %i.ax = add <4 x i64> %wide.masked.gather464, %vec.phi455 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.av, %i.au
  %bin.rdx465 = add <4 x i64> %i.aw, %bin.rdx
  %bin.rdx466 = add <4 x i64> %i.ax, %bin.rdx465
  %i.az = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx466) ; 3 uses
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.az, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec467 = and i64 %i.am, 4611686018427387900  ; 3 uses
  %i.ba = shl i64 %n.vec467, 3
  %i.bb = getelementptr i8, ptr %i.aa, i64 %i.ba
  %i.bc = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index468 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next474, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi469 = phi <4 x i64> [ %i.bc, %vec.epilog.ph ], [ %i.be, %vec.epilog.vector.body ]
  %i.bd = shl i64 %index468, 3
  %next.gep470 = getelementptr i8, ptr %i.aa, i64 %i.bd
  %wide.load471 = load <4 x ptr>, ptr %next.gep470, align 8, !tbaa !112
  %wide.gep472 = getelementptr inbounds nuw i8, <4 x ptr> %wide.load471, i64 24
  %wide.masked.gather473 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep472, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !126
  %i.be = add <4 x i64> %wide.masked.gather473, %vec.phi469 ; 2 uses
  %index.next474 = add nuw i64 %index468, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next474, %n.vec467
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !372

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bg = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.be) ; 2 uses
  %cmp.n475 = icmp eq i64 %i.am, %n.vec467
  br i1 %cmp.n475, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.ph = phi i64 [ 0, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  %.sroa.01.04.i.ph = phi ptr [ %i.aa, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05.i = phi i64 [ %i.bk, %.lr.ph.i ], [ %.05.i.ph, %.lr.ph.i.preheader ]
  %.sroa.01.04.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.sroa.01.04.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bh = load ptr, ptr %.sroa.01.04.i, align 8, !tbaa !112
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !126
  %i.bk = add i64 %i.bj, %.05.i                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 8 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.z
  br i1 %i.bm, label %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, label %.lr.ph.i, !llvm.loop !373

_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.h
  %.0.lcssa.i = phi i64 [ 0, %bb.h ], [ %i.bg, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bk, %.lr.ph.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 2776
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !271, !noalias !380 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 2784
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !271, !noalias !380 ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit, %.lr.ph.i151
  %.01421.i = phi i64 [ %i.bv, %.lr.ph.i151 ], [ 0, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit ]
  %.sroa.016.019.i = phi ptr [ %i.bw, %.lr.ph.i151 ], [ %i.bo, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit ] ; 2 uses
  %i.bs = load ptr, ptr %.sroa.016.019.i, align 8, !tbaa !274, !noalias !380
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !277, !noalias !380
  %i.bu = tail call noundef i64 @_ZNK7rocksdb22SharedBlobFileMetaData15GetBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bt), !noalias !380
  %i.bv = add i64 %i.bu, %.01421.i                ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.016.019.i, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bq
  br i1 %i.bx, label %_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit, label %.lr.ph.i151

_ZNK7rocksdb18VersionStorageInfo12GetBlobStatsEv.exit: ; preds = %.lr.ph.i151, %_ZN7rocksdb12_GLOBAL__N_117GetTotalFilesSizeERKSt6vectorIPNS_12FileMetaDataESaIS3_EE.exit
end_hunk_0
begin_hunk_1_@_ZN7rocksdb20FIFOCompactionPicker31PickRatioBasedIntraL0CompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsEPNS_18VersionStorageInfoEPNS_9LogBufferE:bb.a
.loopexit.split-lp274:                            ; preds = %bb.m
  %lpad.loopexit.split-lp276 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197

bb.p:                                             ; preds = %._crit_edge
  %.not.i153 = icmp eq ptr %.sroa.0224.3, %.sroa.22.3
  br i1 %.not.i153, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %.0, ptr %.sroa.13.2, align 8, !tbaa !209
  %i.df = getelementptr inbounds nuw i8, ptr %.pn270, i64 16
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit162

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154: ; preds = %bb.j, %bb.p
  %.sroa.0224.0.lcssa396403 = phi ptr [ %.sroa.0224.3, %bb.p ], [ null, %bb.j ] ; 4 uses
  %i.dg = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157 unwind label %bb.s ; 4 uses

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154
  store i64 %.0, ptr %i.dg, align 8, !tbaa !209
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 4 uses
  %.not.i17.i.i158 = icmp eq ptr %.sroa.0224.0.lcssa396403, null
  br i1 %.not.i17.i.i158, label %_ZNSt6vectorImSaImEE9push_backERKm.exit162, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0224.0.lcssa396403, i64 noundef 0) #27
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit162

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i154
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit197

_ZNSt6vectorImSaImEE9push_backERKm.exit162:       ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157, %bb.r, %bb.q, %._crit_edge
  %.sroa.0224.1 = phi ptr [ %.sroa.0224.3, %._crit_edge ], [ %.sroa.0224.3, %bb.q ], [ %i.dg, %bb.r ], [ %i.dg, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157 ] ; 11 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.2, %._crit_edge ], [ %i.df, %bb.q ], [ %i.dh, %bb.r ], [ %i.dh, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157 ] ; 4 uses
  %.sroa.22.1 = phi ptr [ %.sroa.22.3, %._crit_edge ], [ %.sroa.22.3, %bb.q ], [ %i.dh, %bb.r ], [ %i.dh, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i157 ] ; 4 uses
  %i.dj = icmp ne ptr %.sroa.0224.1, %.sroa.13.1
  %.sroa.0.010.i.i = getelementptr inbounds i8, ptr %.sroa.13.1, i64 -8 ; 2 uses
  %.not11.i.i = icmp ult ptr %.sroa.0224.1, %.sroa.0.010.i.i
  %or.cond.i.i = select i1 %i.dj, i1 %.not11.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit162, %.lr.ph.i.i
  %.sroa.0.013.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit162 ] ; 3 uses
  %.sroa.07.012.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %.sroa.0224.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit162 ] ; 3 uses
  %i.dk = load i64, ptr %.sroa.07.012.i.i, align 8, !tbaa !209
  %i.dl = load i64, ptr %.sroa.0.013.i.i, align 8, !tbaa !209
  store i64 %i.dl, ptr %.sroa.07.012.i.i, align 8, !tbaa !209
  store i64 %i.dk, ptr %.sroa.0.013.i.i, align 8, !tbaa !209
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i, i64 -8 ; 2 uses
  %.not.i.i = icmp ult ptr %i.dm, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, !llvm.loop !377

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit162
  %i.dn = icmp eq ptr %.sroa.0224.1, %.sroa.13.1
  br i1 %i.dn, label %.loopexit272, label %.lr.ph327

.lr.ph327:                                        ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit, %.thread266
  %.sroa.0219.0326 = phi ptr [ %i.js, %.thread266 ], [ %.sroa.0224.1, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit ] ; 2 uses
  %i.do = load i64, ptr %.sroa.0219.0326, align 8, !tbaa !209 ; 7 uses
  %i.dp = load ptr, ptr %i.y, align 8, !tbaa !266 ; 2 uses
  %i.dq = load ptr, ptr %i.t, align 8, !tbaa !268 ; 2 uses
  %.not131322 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not131322, label %.thread266, label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph327
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.ds, %i.dr
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = shl i64 %i.do, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph325, %.backedge
  %.0101323 = phi i64 [ %i.du, %.lr.ph325 ], [ %.0101.be, %.backedge ] ; 2 uses
  %i.dw = add i64 %.0101323, -1                   ; 3 uses
  %i.dx = load ptr, ptr %i.t, align 8, !tbaa !268 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !112 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !126
  %.not132 = icmp ult i64 %i.eb, %i.do
  br i1 %.not132, label %bb.u, label %.backedge

bb.u:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 188
  %i.ed = load i8, ptr %i.ec, align 4, !tbaa !289, !range !290, !noundef !144
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %.backedge, label %.preheader

.backedge:                                        ; preds = %bb.bb, %bb.ba, %bb.t, %bb.u
  %.0101.be = phi i64 [ %i.dw, %bb.t ], [ %i.dw, %bb.u ], [ %.099.lcssa, %bb.ba ], [ %.099.lcssa, %bb.bb ] ; 2 uses
  %.not131 = icmp eq i64 %.0101.be, 0
  br i1 %.not131, label %.thread266, label %bb.t, !llvm.loop !378

.preheader:                                       ; preds = %bb.u, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit
  %i.ef = phi ptr [ %i.fg, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %i.dx, %bb.u ] ; 2 uses
  %.099321 = phi i64 [ %i.eg, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.0101323, %bb.u ] ; 4 uses
  %.0100320 = phi i64 [ %i.fl, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ 0, %bb.u ] ; 6 uses
  %.sroa.16.0319 = phi ptr [ %.sroa.16.3, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.u ] ; 6 uses
  %.sroa.11.0318 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.u ] ; 6 uses
  %.sroa.0207.0317 = phi ptr [ %.sroa.0207.3, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ null, %bb.u ] ; 10 uses
  %i.eg = add i64 %.099321, -1                    ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !112 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !126 ; 2 uses
  %i.el = icmp ult i64 %i.ek, %i.do
  br i1 %i.el, label %bb.v, label %.critedge

bb.v:                                             ; preds = %.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 188
  %i.en = load i8, ptr %i.em, align 4, !tbaa !289, !range !290, !noundef !144
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not134 = icmp uge i64 %.0100320, %i.do
  %i.ep = add i64 %i.ek, %.0100320
  %i.eq = icmp ugt i64 %i.ep, %i.dv
  %or.cond329 = and i1 %.not134, %i.eq
  br i1 %or.cond329, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not.i163 = icmp eq ptr %.sroa.11.0318, %.sroa.16.0319
  br i1 %.not.i163, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.ei, ptr %.sroa.11.0318, align 8, !tbaa !112
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.z:                                             ; preds = %bb.x
  %i.er = ptrtoint ptr %.sroa.16.0319 to i64
  %i.es = ptrtoint ptr %.sroa.0207.0317 to i64
  %i.et = sub i64 %i.er, %i.es                    ; 7 uses
  %i.eu = icmp eq i64 %i.et, 9223372036854775800
  br i1 %i.eu, label %bb.aa, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #24
          to label %.noexc167 unwind label %.loopexit.split-lp

.noexc167:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.ev = ashr exact i64 %i.et, 3                 ; 3 uses
  %.sroa.speculated.i.i.i164 = tail call i64 @llvm.umax.i64(i64 %i.ev, i64 1)
  %i.ew = add nsw i64 %.sroa.speculated.i.i.i164, %i.ev ; 2 uses
  %i.ex = icmp ult i64 %i.ew, %i.ev
  %i.ey = tail call i64 @llvm.umin.i64(i64 %i.ew, i64 1152921504606846975)
  %i.ez = select i1 %i.ex, i64 1152921504606846975, i64 %i.ey ; 3 uses
  %.not.i.i.i165 = icmp ne i64 %i.ez, 0
  tail call void @llvm.assume(i1 %.not.i.i.i165)
  %i.fa = shl nuw nsw i64 %i.ez, 3
  %i.fb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fa) #26
          to label %.noexc168 unwind label %.loopexit271 ; 4 uses

.noexc168:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 %i.et ; 2 uses
  %i.fd = load ptr, ptr %i.eh, align 8, !tbaa !112
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !112
  %i.fe = icmp sgt i64 %i.et, 0
  br i1 %i.fe, label %bb.ab, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.ab:                                            ; preds = %.noexc168
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr align 8 %.sroa.0207.0317, i64 %i.et, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.ab, %.noexc168
  %.not.i17.i.i166 = icmp eq ptr %.sroa.0207.0317, null
  br i1 %.not.i17.i.i166, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0207.0317, i64 noundef %i.et) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ez
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !268
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.y
  %i.fg = phi ptr [ %.pre, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.ef, %bb.y ] ; 2 uses
  %.sroa.0207.3 = phi ptr [ %i.fb, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.0207.0317, %bb.y ] ; 2 uses
  %.pn269 = phi ptr [ %i.fc, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.11.0318, %bb.y ]
  %.sroa.16.3 = phi ptr [ %i.ff, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.16.0319, %bb.y ] ; 2 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.pn269, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.eg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !112
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !126
  %i.fl = add i64 %i.fk, %.0100320                ; 2 uses
  %.not133 = icmp eq i64 %i.eg, 0
  br i1 %.not133, label %.critedge, label %.preheader, !llvm.loop !379

.critedge:                                        ; preds = %bb.w, %.preheader, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit, %bb.v
  %i.fm = phi ptr [ %.sroa.0207.0317, %.preheader ], [ %.sroa.0207.3, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.0207.0317, %bb.w ], [ %.sroa.0207.0317, %bb.v ] ; 7 uses
  %i.fn = phi ptr [ %.sroa.11.0318, %.preheader ], [ %.sroa.11.1, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.11.0318, %bb.w ], [ %.sroa.11.0318, %bb.v ] ; 2 uses
  %i.fo = phi ptr [ %.sroa.16.0319, %.preheader ], [ %.sroa.16.3, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.sroa.16.0319, %bb.w ], [ %.sroa.16.0319, %bb.v ] ; 3 uses
  %.0100.lcssa = phi i64 [ %.0100320, %.preheader ], [ %i.fl, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.0100320, %bb.w ], [ %.0100320, %bb.v ] ; 2 uses
  %.099.lcssa = phi i64 [ %.099321, %.preheader ], [ 0, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ], [ %.099321, %bb.w ], [ %.099321, %bb.v ] ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.fr = sub i64 %i.fp, %i.fq                    ; 6 uses
  %i.fs = icmp ult i64 %i.fr, 9
  %.not135 = icmp ult i64 %.0100.lcssa, %i.do
  %or.cond = select i1 %i.fs, i1 true, i1 %.not135
  br i1 %or.cond, label %bb.ba, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSEOS4_.exit: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, i8 0, i64 24, i1 false)
  store i32 0, ptr %6, align 8, !tbaa !224
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.fm, ptr %i.ft, align 8, !tbaa !268
  store ptr %i.fn, ptr %i.fv, align 8, !tbaa !266
  store ptr %i.fo, ptr %i.fw, align 8, !tbaa !267
  %i.fx = load ptr, ptr %1, align 8, !tbaa !19
  %i.fy = ashr exact i64 %i.fr, 3
  invoke void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %5, ptr noundef nonnull @.str.54, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), ptr noundef %i.fx, i64 noundef %i.fy, i64 noundef %.0100.lcssa, i64 noundef %i.do, i64 noundef %.0)
          to label %bb.ad unwind label %bb.av

bb.ad:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSEOS4_.exit
  %i.fz = invoke noalias noundef nonnull dereferenceable(12032) ptr @_Znwm(i64 noundef 12032) #26
          to label %bb.ae unwind label %bb.aw     ; 3 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !143, !nonnull !144, !align !145
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store i32 0, ptr %8, align 8, !tbaa !224
  %i.gc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i8 0, i64 24, i1 false)
  %12 = icmp ugt i64 %i.fr, 9223372036854775800
  br i1 %12, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i.i, !prof !16

.noexc.i.i.i:                                     ; preds = %bb.ae
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc170 unwind label %bb.ax

.noexc170:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #26
          to label %bb.af unwind label %bb.ax     ; 4 uses

bb.af:                                            ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !268
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !266
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fr ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !267
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gd, ptr align 8 %i.fm, i64 %i.fr, i1 false)
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !266
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %14 = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc203 unwind label %bb.al ; 5 uses

.noexc203:                                        ; preds = %bb.af
  store ptr %14, ptr %7, align 8, !tbaa !213
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !281
  invoke void @_ZN7rocksdb20CompactionInputFilesC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.ag

_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc203
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.gh, ptr %i.gj, align 8, !tbaa !284
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 506
  %i.gl = load i8, ptr %i.gk, align 2, !tbaa !292
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store i8 0, ptr %i.gn, align 8, !tbaa !283
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.go, ptr %11, align 8, !tbaa !15
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.gp, align 8, !tbaa !21
  store i8 0, ptr %i.go, align 8, !tbaa !20
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 4072
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !24
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !26
  invoke void @_ZN7rocksdb10CompactionC1EPNS_18VersionStorageInfoERKNS_16ImmutableOptionsERKNS_16MutableCFOptionsERKNS_16MutableDBOptionsESt6vectorINS_20CompactionInputFilesESaISD_EEimmjNS_15CompressionTypeENS_18CompressionOptionsENS_11TemperatureEjSC_IPNS_12FileMetaDataESaISK_EESt8optionalImEPKNS_15SnapshotCheckerENS_16CompactionReasonERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdbNS_27BlobGarbageCollectionPolicyEd(ptr noundef nonnull align 16 dereferenceable(12020) %i.fz, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(875) %i.gb, ptr noundef nonnull align 8 dereferenceable(736) %2, ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef nonnull align 8 %7, i32 noundef 0, i64 noundef %i.do, i64 noundef 0, i32 noundef 0, i8 noundef zeroext %i.gl, ptr noundef nonnull byval(%"struct.rocksdb::CompressionOptions") align 8 %i.gm, i8 noundef zeroext 0, i32 noundef 0, ptr noundef nonnull align 8 %9, ptr noundef nonnull byval(%"class.std::optional") align 8 %10, ptr noundef null, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(32) %11, double noundef %i.gs, i1 noundef zeroext true, i32 noundef 2, double noundef -1.000000e+00)
          to label %bb.an unwind label %bb.ay

bb.ag:                                            ; preds = %.noexc203
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  %i.gv = call ptr @__cxa_begin_catch(ptr %i.gu) #25 ; 0 uses
  invoke void @_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesEEvT_S3_(ptr noundef nonnull %14, ptr noundef nonnull %14)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_rethrow() #24
          to label %bb.ak unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body204 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gx = landingpad { ptr, i32 }
          catch ptr null
  %i.gy = extractvalue { ptr, i32 } %i.gx, 0
  call void @__clang_call_terminate(ptr %i.gy) #28
  unreachable

bb.ak:                                            ; preds = %bb.ah
  unreachable

bb.al:                                            ; preds = %bb.af
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body204

.body204:                                         ; preds = %bb.ai, %bb.al
  %eh.lpad-body205 = phi { ptr, i32 } [ %i.gz, %bb.al ], [ %i.gw, %bb.ai ] ; 2 uses
  %i.ha = load ptr, ptr %7, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i172 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i172, label %.body173, label %bb.am

bb.am:                                            ; preds = %.body204
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !281
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #27
  br label %.body173

bb.an:                                            ; preds = %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.hg = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.go
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.hi = load i64, ptr %i.go, align 8, !tbaa !20
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.hk = load ptr, ptr %9, align 8, !tbaa !268   ; 3 uses
  %.not.i.i.i179 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !267
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ao
  %i.hq = load ptr, ptr %7, align 8, !tbaa !213   ; 3 uses
  %i.hr = load ptr, ptr %i.gj, align 8, !tbaa !284 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.hq, %i.hr
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ig, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i ], [ %i.hq, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !286
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ap, %.lr.ph.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !268 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ib = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !267
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = ptrtoint ptr %i.ia to i64
  %i.if = sub i64 %i.id, %i.ie
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef %i.if) #27
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i: ; preds = %bb.aq, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.ig, %i.hr
  br i1 %.not.i.i.i180, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit
  %i.ih = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.hq, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i
  %i.ii = load ptr, ptr %i.gi, align 8, !tbaa !281
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.il) #27
  br label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit.i, %bb.ar
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i.i182 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i182, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !286
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i: ; preds = %bb.as, %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !268 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i
  %i.iv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !267
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iz) #27
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185: ; preds = %bb.at, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.not.i.i.i1.i186 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i1.i186, label %bb.be, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i185
  %i.ja = ptrtoint ptr %i.fo to i64
  %i.jb = sub i64 %i.ja, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.jb) #27
  br label %bb.be

bb.av:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EEaSEOS4_.exit
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.thread260

bb.aw:                                            ; preds = %bb.ad
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.thread260

bb.ax:                                            ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %_ZSt10_ConstructIN7rocksdb20CompactionInputFilesEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  %i.jg = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.go
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.ay
  %i.ji = load i64, ptr %i.go, align 8, !tbaa !20
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.jk = load ptr, ptr %9, align 8, !tbaa !268   ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193, label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.jl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !267
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %i.jk to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.jp) #27
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %bb.az
  call void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #25
  br label %.body173

.body173:                                         ; preds = %bb.am, %.body204, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193
  %.pn.pn = phi { ptr, i32 } [ %i.jf, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit193 ], [ %eh.lpad-body205, %.body204 ], [ %eh.lpad-body205, %bb.am ]
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #25
  br label %.body

.body:                                            ; preds = %.body173, %bb.ax
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body173 ], [ %i.je, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
end_hunk_1
