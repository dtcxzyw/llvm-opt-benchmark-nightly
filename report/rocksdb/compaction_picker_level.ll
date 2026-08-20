inline.NumInlined: 1110
inline.NumDeleted: 510
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb20CompactionInputFilesC2ERKS0_:bb.a
_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.as
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !298
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !293
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #25
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit, %bb.c
  ret void
}

declare noundef i32 @_ZN7rocksdb10Compaction21EvaluateProximalLevelEPKNS_18VersionStorageInfoERKNS_16MutableCFOptionsERKNS_16ImmutableOptionsEii(ptr noundef, ptr noundef nonnull align 8 dereferenceable(736), ptr noundef nonnull align 8 dereferenceable(875), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !302    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !304  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.r, %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !298
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !206  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !293
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i

_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !305

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7rocksdb20CompactionInputFilesEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !302
  br label %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.s = phi ptr [ %.pr, %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !303
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25
  br label %_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb20CompactionInputFilesES1_EvT_S3_RSaIT0_E.exit, %bb.d
  ret void
}

declare void @_ZNK7rocksdb16CompactionPicker8GetRangeERKNS_20CompactionInputFilesEPNS_11InternalKeyES5_(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZNK7rocksdb18VersionStorageInfo20GetOverlappingInputsEiPKNS_11InternalKeyES3_PSt6vectorIPNS_12FileMetaDataESaIS6_EEiPibPKS5_PPS1_(ptr noundef nonnull align 16 dereferenceable(4288), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7rocksdb12_GLOBAL__N_122LevelCompactionBuilder25TryExtendNonL0TrivialMoveEib(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rocksdb::CompactionInputFiles", align 8 ; 11 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !206  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp eq i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !260, !nonnull !53, !align !54 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !360  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !360  ; 2 uses
  %i.p = icmp eq ptr %i.m, %i.o
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp eq i64 %i.s, 40
  %or.cond = or i1 %i.p, %i.t
  br i1 %or.cond, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !209, !nonnull !53, !align !54 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 664
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !328
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 672
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !328
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !139
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 2712
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !208
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [24 x i8], ptr %i.ag, i64 %i.ah ; 7 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !234 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !286 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, i8 0, i64 48, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !204
  store i32 %i.ao, ptr %3, align 8, !tbaa !290
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %.04784 = add nsw i32 %1, 1                     ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !207
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !206 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = lshr exact i64 %i.au, 3
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp slt i32 %.04784, %i.aw
  br i1 %i.ax, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.be = sext i32 %.04784 to i64
  %i.bf = sext i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit
  %i.bg = phi ptr [ %i.d, %.lr.ph ], [ %i.ed, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ]
  %indvars.iv.a = phi i64 [ %i.bf, %.lr.ph ], [ %indvars.iv.next104, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.be, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %8 = phi ptr [ %i.ar, %.lr.ph ], [ %i.ef, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ]
  %.04885 = phi i64 [ %i.al, %.lr.ph ], [ %i.df, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ult i64 %i.bk, 32
  br i1 %i.bl, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !234 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 188
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !236, !range !249, !noundef !53
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.bs = load i32, ptr %i.an, align 4, !tbaa !204
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 80 ; 2 uses
  invoke void @_ZNK7rocksdb18VersionStorageInfo20GetOverlappingInputsEiPKNS_11InternalKeyES3_PSt6vectorIPNS_12FileMetaDataESaIS6_EEiPibPKS5_PPS1_(ptr noundef nonnull align 16 dereferenceable(4288) %i.br, i32 noundef %i.bs, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.am, i32 noundef -1, ptr noundef null, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr %i.am, align 8, !tbaa !252
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !252
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.i, label %.critedge

.loopexit:                                        ; preds = %bb.g, %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %i.ap, align 8, !tbaa !207
  %i.by = load ptr, ptr %i.ai, align 8, !tbaa !206
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = shl i64 %i.cb, 29
  %sext = add i64 %i.cc, -4294967296
  %i.cd = ashr i64 %sext, 32
  %i.ce = icmp slt i64 %indvars.iv, %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  br i1 %i.ce, label %bb.j, label %.critedge3

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %i.ba, align 8, !tbaa !82
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !338
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !343 ; 2 uses
  %i.ck = load ptr, ptr %i.bt, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !289
  %i.cn = add i64 %i.cm, -8
  store ptr %i.ck, ptr %4, align 8
  store i64 %i.cn, ptr %i.bb, align 8
  %i.co = load ptr, ptr %i.ai, align 8, !tbaa !206
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %indvars.iv.a
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !234 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !289
  %i.cw = add i64 %i.cv, -8
  store ptr %i.ct, ptr %5, align 8
  store i64 %i.cw, ptr %i.bc, align 8
  %i.cx = load ptr, ptr %i.cj, align 8, !tbaa !344
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 232
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = invoke noundef i32 %i.cz(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit unwind label %bb.k, !inline_history !361

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit: ; preds = %bb.j
  %i.db = icmp eq i32 %i.da, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br i1 %i.db, label %.critedge, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ah

.critedge3:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.l

bb.l:                                             ; preds = %.critedge3, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !286
  %i.df = add i64 %i.de, %.04885                  ; 4 uses
  %i.dg = load ptr, ptr %i.u, align 8, !tbaa !209, !nonnull !53, !align !54
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 152
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !250
  %i.dj = icmp ugt i64 %i.df, %i.di
  br i1 %i.dj, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %i.c, align 8, !tbaa !207 ; 4 uses
  %i.dl = load ptr, ptr %i.bd, align 8, !tbaa !293
  %.not.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.bn, ptr %i.dk, align 8, !tbaa !234
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  store ptr %i.dm, ptr %i.c, align 8, !tbaa !207
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.o:                                             ; preds = %bb.m
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !206 ; 4 uses
  %i.do = ptrtoint ptr %i.dk to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 6 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.p, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.41) #28
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #29
          to label %.noexc68 unwind label %.loopexit ; 4 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 2 uses
  store ptr %i.bn, ptr %i.dz, align 8, !tbaa !234
  %i.ea = icmp sgt i64 %i.dq, 0
  br i1 %i.ea, label %bb.q, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.q:                                             ; preds = %.noexc68
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr align 8 %i.dn, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.q, %.noexc68
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dq) #25
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.dy, ptr %i.b, align 8, !tbaa !206
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !207
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ec, ptr %i.bd, align 8, !tbaa !293
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.n
  %i.ed = phi ptr [ %i.eb, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.dm, %bb.n ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ee = load ptr, ptr %i.ap, align 8, !tbaa !207
  %i.ef = load ptr, ptr %i.ai, align 8, !tbaa !206 ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %sext116 = shl i64 %i.ei, 29
  %i.ej = ashr i64 %sext116, 32
  %i.ek = icmp slt i64 %indvars.iv.next, %i.ej
  %indvars.iv.next104 = add nsw i64 %indvars.iv.a, 1
  br i1 %i.ek, label %bb.e, label %.critedge, !llvm.loop !362

.critedge:                                        ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit, %bb.e, %bb.f, %bb.h, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit, %bb.l, %bb.d
  %.250 = phi i64 [ %i.al, %bb.d ], [ %.04885, %bb.f ], [ %.04885, %bb.e ], [ %i.df, %bb.l ], [ %.04885, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit ], [ %.04885, %bb.h ], [ %i.df, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit ]
  %i.el = icmp slt i32 %1, 1
  %or.cond118.not = or i1 %i.el, %2
  br i1 %or.cond118.not, label %.critedge5, label %.lr.ph101

.lr.ph101:                                        ; preds = %.critedge
  %i.em = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.er = zext nneg i32 %1 to i64
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph101, %bb.ac
  %indvars.iv104 = phi i64 [ %i.er, %.lr.ph101 ], [ %indvars.iv.next105, %bb.ac ] ; 4 uses
  %.35198 = phi i64 [ %.250, %.lr.ph101 ], [ %i.go, %bb.ac ]
  %indvars.iv.next105 = add nsw i64 %indvars.iv104, -1 ; 2 uses
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.et = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = icmp ult i64 %i.ew, 32
  br i1 %i.ex, label %bb.t, label %.critedge5

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ey = load ptr, ptr %i.ai, align 8, !tbaa !206
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next105
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !234 ; 3 uses
  store ptr %i.fa, ptr %i.a, align 8, !tbaa !234
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 188
  %i.fc = load i8, ptr %i.fb, align 4, !tbaa !236, !range !249, !noundef !53
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %.critedge5.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fe = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.ff = load i32, ptr %i.an, align 4, !tbaa !204
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  invoke void @_ZNK7rocksdb18VersionStorageInfo20GetOverlappingInputsEiPKNS_11InternalKeyES3_PSt6vectorIPNS_12FileMetaDataESaIS6_EEiPibPKS5_PPS1_(ptr noundef nonnull align 16 dereferenceable(4288) %i.fe, i32 noundef %i.ff, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.em, ptr noundef nonnull %i.am, i32 noundef -1, ptr noundef null, i1 noundef zeroext true, ptr noundef null, ptr noundef null)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fh = load ptr, ptr %i.am, align 8, !tbaa !252
  %i.fi = load ptr, ptr %i.en, align 8, !tbaa !252
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %bb.x, label %.critedge5.critedge

bb.w:                                             ; preds = %bb.u
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  %.not = icmp eq i64 %indvars.iv104, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  br i1 %.not, label %.critedge7, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fl = load ptr, ptr %i.eo, align 8, !tbaa !82
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 120
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !338
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !343 ; 2 uses
  %i.fq = load ptr, ptr %i.a, align 8, !tbaa !234 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !9
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 56
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !289
  %i.fv = add i64 %i.fu, -8
  store ptr %i.fs, ptr %6, align 8
  store i64 %i.fv, ptr %i.ep, align 8
  %i.fw = load ptr, ptr %i.ai, align 8, !tbaa !206
  %i.fx = getelementptr [8 x i8], ptr %i.fw, i64 %indvars.iv104
  %i.fy = getelementptr i8, ptr %i.fx, i64 -16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !234 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !9
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 88
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !289
  %i.ge = add i64 %i.gd, -8
  store ptr %i.gb, ptr %7, align 8
  store i64 %i.ge, ptr %i.eq, align 8
  %i.gf = load ptr, ptr %i.fp, align 8, !tbaa !344
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 232
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = invoke noundef i32 %i.gh(ptr noundef nonnull align 8 dereferenceable(48) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %6, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true)
          to label %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit74 unwind label %bb.z, !inline_history !361

_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit74: ; preds = %bb.y
  %i.gj = icmp eq i32 %i.gi, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %i.gj, label %.critedge5.critedge, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ae

.critedge7:                                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.aa

bb.aa:                                            ; preds = %.critedge7, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit74
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !234
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !286
  %i.go = add i64 %i.gn, %.35198                  ; 2 uses
  %i.gp = load ptr, ptr %i.u, align 8, !tbaa !209, !nonnull !53, !align !54
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 152
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !250
  %i.gs = icmp ugt i64 %i.go, %i.gr
  br i1 %i.gs, label %.critedge5.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gt = load ptr, ptr %i.b, align 8, !tbaa !252
  %i.gu = invoke ptr @_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EERS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ac unwind label %bb.ad     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gv = icmp samesign ugt i64 %indvars.iv104, 1
  br i1 %i.gv, label %bb.s, label %.critedge5, !llvm.loop !363

bb.ad:                                            ; preds = %bb.ab
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z, %bb.w
  %.pn62 = phi { ptr, i32 } [ %i.gw, %bb.ad ], [ %i.gk, %bb.z ], [ %i.fk, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ah

.critedge5.critedge:                              ; preds = %bb.aa, %_ZNK7rocksdb10Comparator23CompareWithoutTimestampERKNS_5SliceES3_.exit74, %bb.v, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.critedge5

.critedge5:                                       ; preds = %bb.s, %bb.ac, %.critedge5.critedge, %.critedge
  %i.gx = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.gy = load ptr, ptr %i.b, align 8, !tbaa !206
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = icmp ugt i64 %i.hb, 8
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !297 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %.critedge5
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !298
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.he to i64
  %i.hj = sub i64 %i.hh, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef %i.hj) #25
  br label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i: ; preds = %bb.af, %.critedge5
  %i.hk = load ptr, ptr %i.am, align 8, !tbaa !206 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !293
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hk to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #25
  br label %_ZN7rocksdb20CompactionInputFilesD2Ev.exit

_ZN7rocksdb20CompactionInputFilesD2Ev.exit:       ; preds = %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ai

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.k, %bb.ae
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %bb.ae ], [ %i.dc, %bb.k ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN7rocksdb20CompactionInputFilesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn62.pn

bb.ai:                                            ; preds = %bb.b, %bb.a, %bb.c, %_ZN7rocksdb20CompactionInputFilesD2Ev.exit
  %.0 = phi i1 [ %i.hc, %_ZN7rocksdb20CompactionInputFilesD2Ev.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef i64 @_ZN7rocksdb21MultiplyCheckOverflowEmd(i64 noundef, double noundef) local_unnamed_addr #4

end_hunk_0
