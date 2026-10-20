Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_experimental?download=true
inline.NumInlined: 1739
inline.NumDeleted: 1046
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7rocksdb6DBImpl9PromoteL0EPNS_18ColumnFamilyHandleEi:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load i32, ptr %i.bt, align 16, !tbaa !582
  %.not = icmp slt i32 %3, %i.bu
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 984
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull @.str.42, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), i32 noundef %3)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7rocksdb10JobContext5CleanEv(ptr noundef nonnull align 8 dereferenceable(717) %11)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store ptr @.str.43, ptr %13, align 8, !tbaa !544
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 27, ptr %i.bw, align 8, !tbaa !545
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  store ptr @.str, ptr %14, align 8, !tbaa !544
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !545
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.k

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.h
  %.not.i = icmp eq ptr %0, %12
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  %i.by = load <4 x i8>, ptr %12, align 8, !tbaa !26
  store <4 x i8> %i.by, ptr %0, align 8, !tbaa !26
  store <4 x i8> zeroinitializer, ptr %12, align 8, !tbaa !26
  %i.bz = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !563, !range !376, !noundef !377
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ca, ptr %i.cb, align 4, !tbaa !592
  store i8 0, ptr %i.bz, align 4, !tbaa !592
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 5 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !593
  store i8 0, ptr %i.cc, align 1, !tbaa !593
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  store ptr null, ptr %i.cf, align 8, !tbaa !31
  %i.ch = load ptr, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  store ptr %i.cg, ptr %i.w, align 8, !tbaa !31
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #23
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit, %bb.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bp

bb.j:                                             ; preds = %bb.c
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.k:                                             ; preds = %bb.h
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit166

bb.l:                                             ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 64 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 2776 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !594 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !595 ; 2 uses
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !310 ; 3 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i.i.i, label %.noexc114, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cv = icmp ugt i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i, !prof !378

.noexc.i.i:                                       ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.m
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #27
          to label %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge unwind label %bb.u

_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge: ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %i.co, align 8, !tbaa !307 ; 3 uses
  %.pre258.a = load ptr, ptr %i.cp, align 8, !tbaa !307 ; 2 uses
  %.pre262.a = ptrtoint ptr %.pre258.a to i64
  %.pre263 = ptrtoint ptr %.pre to i64
  %i.cx = icmp eq ptr %.pre258.a, %.pre
  br label %.noexc114

.noexc114:                                        ; preds = %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge, %bb.l
  %.pre-phi264 = phi i64 [ %.pre263, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge ], [ %i.ct, %bb.l ]
  %.pre-phi = phi i64 [ %.pre262.a, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge ], [ %i.cs, %bb.l ]
  %i.cy = phi i1 [ %i.cx, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge ], [ true, %bb.l ] ; 2 uses
  %i.cz = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge ], [ %i.cr, %bb.l ] ; 2 uses
  %i.da = phi ptr [ %i.cw, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i..noexc114_crit_edge ], [ null, %bb.l ] ; 14 uses
  %i.db = sub i64 %.pre-phi, %.pre-phi264         ; 6 uses
  %i.dc = icmp sgt i64 %i.db, 8
  br i1 %i.dc, label %bb.n, label %bb.o, !prof !379

bb.n:                                             ; preds = %.noexc114
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.da, ptr align 8 %i.cz, i64 %i.db, i1 false)
  br label %bb.q

bb.o:                                             ; preds = %.noexc114
  %i.dd = icmp eq i64 %i.db, 8
  br i1 %i.dd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !312
  store ptr %i.de, ptr %i.da, align 8, !tbaa !312
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 %i.db ; 4 uses
  br i1 %i.cy, label %.lr.ph235, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = ashr exact i64 %i.db, 3                 ; 3 uses
  %i.dh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true)
  %i.di = shl nuw nsw i64 %i.dh, 1
  %i.dj = xor i64 %i.di, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_SH_T0_T1_"(ptr %i.da, ptr nonnull %i.df, i64 noundef %i.dj, ptr nonnull readonly %i.cm)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc115:                                        ; preds = %bb.r
  %i.dk = icmp sgt i64 %i.db, 128
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc115
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 128 ; 2 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_SH_T0_"(ptr %i.da, ptr nonnull %i.dl, ptr nonnull readonly %i.cm)
          to label %.lr.ph.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i.i.i:                                   ; preds = %bb.s, %.noexc117
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.dm, %.noexc117 ], [ %i.dl, %bb.s ] ; 2 uses
  invoke fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.07.i.i.i.i, ptr nonnull readonly %i.cm)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc117:                                        ; preds = %.lr.ph.i.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.df
  br i1 %i.dn, label %.lr.ph, label %.lr.ph.i.i.i.i, !llvm.loop !539

bb.t:                                             ; preds = %.noexc115
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7rocksdb12FileMetaDataESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl9PromoteL0EPNS2_18ColumnFamilyHandleEiE3$_0EEEvT_SH_T0_"(ptr %i.da, ptr nonnull %i.df, ptr nonnull readonly %i.cm)
          to label %.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.noexc117, %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not.i.i.i.i128 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  %i.dr = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %.not.i3.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  %i.ds = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.dt = load ptr, ptr %i.da, align 8, !tbaa !312 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 188
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !380, !range !376, !noundef !377
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %.loopexit, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193.peel

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193.peel: ; preds = %.lr.ph
  %exitcond.peel.not = icmp ult i64 %i.dg, 2
  br i1 %exitcond.peel.not, label %.lr.ph235, label %.peel.next

.lr.ph235:                                        ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193, %bb.q, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193.peel
  %i.dx = load ptr, ptr %i.cn, align 8, !tbaa !594
  br label %bb.ai

bb.u:                                             ; preds = %bb.f, %bb.g, %_ZN7rocksdb21InstrumentedMutexLockC2EPNS_17InstrumentedMutexE.exit, %_ZNSt15__new_allocatorIPN7rocksdb12FileMetaDataEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EED2Ev.exit166

.peel.next:                                       ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193.peel, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193
  %.068231 = phi i64 [ %i.gs, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193 ], [ 1, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193.peel ] ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.da, i64 %.068231 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !312 ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 188
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !380, !range !376, !noundef !377
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %.peel.next, %.lr.ph
  %.lcssa249 = phi ptr [ %i.dt, %.lr.ph ], [ %i.ea, %.peel.next ]
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.ef = getelementptr inbounds nuw i8, ptr %.lcssa249, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !381
  %i.eh = and i64 %i.eg, 4611686018427387903
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull @.str.44, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), i64 noundef %i.eh)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.loopexit
  invoke void @_ZN7rocksdb10JobContext5CleanEv(ptr noundef nonnull align 8 dereferenceable(717) %11)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  store ptr @.str.45, ptr %16, align 8, !tbaa !544
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 37, ptr %i.ei, align 8, !tbaa !545
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  store ptr @.str, ptr %17, align 8, !tbaa !544
  %i.ej = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.ej, align 8, !tbaa !545
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit120 unwind label %bb.y

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit120: ; preds = %bb.w
  %.not.i121 = icmp eq ptr %0, %15
  br i1 %.not.i121, label %_ZN7rocksdb6StatusaSEOS0_.exit124, label %bb.x

bb.x:                                             ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit120
  %i.ek = load <4 x i8>, ptr %15, align 8, !tbaa !26
  store <4 x i8> %i.ek, ptr %0, align 8, !tbaa !26
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !26
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.em = load i8, ptr %i.el, align 4, !tbaa !563, !range !376, !noundef !377
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.em, ptr %i.en, align 4, !tbaa !592
  store i8 0, ptr %i.el, align 4, !tbaa !592
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 5 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !26
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !593
  store i8 0, ptr %i.eo, align 1, !tbaa !593
  %i.er = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !31
  store ptr null, ptr %i.er, align 8, !tbaa !31
  %i.et = load ptr, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  store ptr %i.es, ptr %i.w, align 8, !tbaa !31
  %.not.i.i.i.i.i122 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i122, label %_ZN7rocksdb6StatusaSEOS0_.exit124, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i123

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i123: ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.et) #23
  br label %_ZN7rocksdb6StatusaSEOS0_.exit124

_ZN7rocksdb6StatusaSEOS0_.exit124:                ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit120, %bb.x, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i123
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !31 ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i125, label %_ZN7rocksdb6StatusD2Ev.exit127, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i126

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i126: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit124
  call void @_ZdaPv(ptr noundef nonnull %i.ev) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit127

_ZN7rocksdb6StatusD2Ev.exit127:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit124, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.thread214

bb.z:                                             ; preds = %.peel.next
  %i.ex = getelementptr i8, ptr %i.dz, i64 -8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !312 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !25 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !30 ; 2 uses
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !25 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.fh = add i64 %i.fd, -8
  store ptr %i.fb, ptr %4, align 8
  store i64 %i.fh, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.fi = add i64 %i.fg, -8
  store ptr %i.fe, ptr %5, align 8
  store i64 %i.fi, ptr %i.dq, align 8
  br i1 %.not.i.i.i.i128, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i unwind label %.loopexit.split-lp.thread

_ZTWN7rocksdb10perf_levelE.exit.i.i.i:            ; preds = %bb.aa, %bb.z
  %i.fj = load i8, ptr %i.dr, align 1, !tbaa !383
  %i.fk = icmp ugt i8 %i.fj, 1
  br i1 %i.fk, label %bb.ab, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i

bb.ab:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i
  br i1 %.not.i3.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZTHN7rocksdb12perf_contextE()
          to label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i unwind label %.loopexit.split-lp.thread

_ZTWN7rocksdb12perf_contextE.exit.i.i.i:          ; preds = %bb.ac, %bb.ab
  %i.fl = load i64, ptr %i.ds, align 8, !tbaa !385
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.ds, align 8, !tbaa !385
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i
  %i.fn = load ptr, ptr %i.do, align 8, !tbaa !386
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !28
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef i32 %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc131 unwind label %.loopexit.split-lp.thread, !inline_history !540 ; 2 uses

.noexc131:                                        ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.ad, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit

bb.ad:                                            ; preds = %.noexc131
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fd
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.fv, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fg
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -8
  %.0.copyload.i18.i.i = load i64, ptr %i.fx, align 1
  %i.fy = icmp ugt i64 %.0.copyload.i.i.i, %.0.copyload.i18.i.i
  br i1 %i.fy, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit: ; preds = %.noexc131
  %i.fz = icmp sgt i32 %i.fs, -1
  br i1 %i.fz, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread, label %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread: ; preds = %bb.ad, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit
  %.phi.trans.insert260 = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %.pre261 = load i64, ptr %.phi.trans.insert260, align 8, !tbaa !381
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.pre259 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !381
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 984
  %i.gb = and i64 %.pre259, 4611686018427387903
  %i.gc = and i64 %.pre261, 4611686018427387903
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull @.str.46, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), i64 noundef %i.gb, i64 noundef %i.gc)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread
  invoke void @_ZN7rocksdb10JobContext5CleanEv(ptr noundef nonnull align 8 dereferenceable(717) %11)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  store ptr @.str.47, ptr %19, align 8, !tbaa !544
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 24, ptr %i.gd, align 8, !tbaa !545
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  store ptr @.str, ptr %20, align 8, !tbaa !544
  %i.ge = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.ge, align 8, !tbaa !545
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit133 unwind label %bb.ah

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit133: ; preds = %bb.af
  %.not.i134 = icmp eq ptr %0, %18
  br i1 %.not.i134, label %_ZN7rocksdb6StatusaSEOS0_.exit137, label %bb.ag

bb.ag:                                            ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit133
  %i.gf = load <4 x i8>, ptr %18, align 8, !tbaa !26
  store <4 x i8> %i.gf, ptr %0, align 8, !tbaa !26
  store <4 x i8> zeroinitializer, ptr %18, align 8, !tbaa !26
  %i.gg = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 4, !tbaa !563, !range !376, !noundef !377
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.gh, ptr %i.gi, align 4, !tbaa !592
  store i8 0, ptr %i.gg, align 4, !tbaa !592
  %i.gj = getelementptr inbounds nuw i8, ptr %18, i64 5 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !26
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !593
  store i8 0, ptr %i.gj, align 1, !tbaa !593
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !31
  store ptr null, ptr %i.gm, align 8, !tbaa !31
  %i.go = load ptr, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  store ptr %i.gn, ptr %i.w, align 8, !tbaa !31
  %.not.i.i.i.i.i135 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i135, label %_ZN7rocksdb6StatusaSEOS0_.exit137, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i136

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i136: ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.go) #23
  br label %_ZN7rocksdb6StatusaSEOS0_.exit137

_ZN7rocksdb6StatusaSEOS0_.exit137:                ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit133, %bb.ag, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i136
  %i.gp = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !31 ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i138, label %_ZN7rocksdb6StatusD2Ev.exit140, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i139

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i139: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit137
  call void @_ZdaPv(ptr noundef nonnull %i.gq) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit140

_ZN7rocksdb6StatusD2Ev.exit140:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit137, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %.thread214

_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread193: ; preds = %bb.ad, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit
  %i.gs = add nuw i64 %.068231, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dg, %i.gs
  br i1 %exitcond.not, label %.lr.ph235, label %.peel.next, !llvm.loop !541

bb.ai:                                            ; preds = %.lr.ph235, %bb.ao
  %indvars.iv = phi i64 [ 1, %.lr.ph235 ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %indvars.iv ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !595
  %i.gw = load ptr, ptr %i.gt, align 8, !tbaa !310
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = lshr exact i64 %i.gz, 3
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = icmp sgt i32 %i.hb, 0                   ; 3 uses
  br i1 %i.hc, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.hd = trunc nuw nsw i64 %indvars.iv to i32
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 984
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull @.str.48, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 32), i32 noundef %i.hd)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN7rocksdb10JobContext5CleanEv(ptr noundef nonnull align 8 dereferenceable(717) %11)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  store ptr @.str.49, ptr %22, align 8, !tbaa !544
  %i.hf = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 43, ptr %i.hf, align 8, !tbaa !545
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  store ptr @.str, ptr %23, align 8, !tbaa !544
  %i.hg = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.hg, align 8, !tbaa !545
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit142 unwind label %bb.an

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit142: ; preds = %bb.al
  %.not.i143 = icmp eq ptr %0, %21
  br i1 %.not.i143, label %_ZN7rocksdb6StatusaSEOS0_.exit146, label %bb.am

bb.am:                                            ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit142
  %i.hh = load <4 x i8>, ptr %21, align 8, !tbaa !26
  store <4 x i8> %i.hh, ptr %0, align 8, !tbaa !26
  store <4 x i8> zeroinitializer, ptr %21, align 8, !tbaa !26
  %i.hi = getelementptr inbounds nuw i8, ptr %21, i64 4 ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 4, !tbaa !563, !range !376, !noundef !377
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.hj, ptr %i.hk, align 4, !tbaa !592
  store i8 0, ptr %i.hi, align 4, !tbaa !592
  %i.hl = getelementptr inbounds nuw i8, ptr %21, i64 5 ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !26
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !593
  store i8 0, ptr %i.hl, align 1, !tbaa !593
  %i.ho = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !31
  store ptr null, ptr %i.ho, align 8, !tbaa !31
  %i.hq = load ptr, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  store ptr %i.hp, ptr %i.w, align 8, !tbaa !31
  %.not.i.i.i.i.i144 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i.i144, label %_ZN7rocksdb6StatusaSEOS0_.exit146, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i145

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i145: ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.hq) #23
  br label %_ZN7rocksdb6StatusaSEOS0_.exit146

_ZN7rocksdb6StatusaSEOS0_.exit146:                ; preds = %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit142, %bb.am, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i145
  %i.hr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !31 ; 2 uses
  %.not.i.i147 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i147, label %bb.ap, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i148

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i148: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit146
  call void @_ZdaPv(ptr noundef nonnull %i.hs) #23
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %.loopexit.split-lp

bb.ao:                                            ; preds = %bb.ai
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %28 = trunc nuw i64 %indvars.iv.next to i32
  %.not100.not = icmp slt i32 %3, %28
  br i1 %.not100.not, label %._crit_edge, label %bb.ai, !llvm.loop !542

bb.ap:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i148, %_ZN7rocksdb6StatusaSEOS0_.exit146
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit

._crit_edge:                                      ; preds = %bb.ao
  %i.hu = load i32, ptr %i.bq, align 8, !tbaa !596
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 312
  store i32 %i.hu, ptr %i.hv, align 8, !tbaa !597
  br i1 %i.cy, label %._crit_edge239, label %.lr.ph238

.lr.ph238:                                        ; preds = %._crit_edge
  %i.hw = getelementptr inbounds nuw i8, ptr %10, i64 160
  br label %bb.aq

._crit_edge239:                                   ; preds = %bb.as, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hy = load ptr, ptr %i.hx, align 16, !tbaa !599
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 3944
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !601
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 32, i1 false)
  invoke void @_ZN7rocksdb10VersionSet11LogAndApplyEPNS_16ColumnFamilyDataERKNS_11ReadOptionsERKNS_12WriteOptionsEPNS_11VersionEditEPNS_17InstrumentedMutexEPNS_11FSDirectoryEbPKNS_19ColumnFamilyOptionsERKSt8functionIFvRKNS_6StatusEEERKSI_IFSJ_vEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %24, ptr noundef nonnull align 8 dereferenceable(874) %i.hy, ptr noundef nonnull %i.bq, ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull %10, ptr noundef nonnull %i.bm, ptr noundef %i.ia, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.at unwind label %bb.bj

bb.aq:                                            ; preds = %.lr.ph238, %bb.as
  %.sroa.0177.0236 = phi ptr [ %i.da, %.lr.ph238 ], [ %i.js, %bb.as ] ; 3 uses
  %i.ib = load ptr, ptr %.sroa.0177.0236, align 8, !tbaa !312
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !381
  %i.ie = and i64 %i.id, 4611686018427387903
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.a, align 4, !tbaa !388
  store i64 %i.ie, ptr %i.b, align 8, !tbaa !32
  %i.if = invoke { ptr, i8 } @_ZNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE17_M_emplace_uniqueIJRiRmEEES0_ISt17_Rb_tree_iteratorIS1_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.hw, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ig = load ptr, ptr %.sroa.0177.0236, align 8, !tbaa !312 ; 21 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !381 ; 2 uses
  %i.ij = and i64 %i.ii, 4611686018427387903
  %i.ik = lshr i64 %i.ii, 62
  %i.il = trunc nuw nsw i64 %i.ik to i32
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.in = load i64, ptr %i.im, align 8, !tbaa !389
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ig, i64 80
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ig, i64 40
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 190
  %i.it = load i8, ptr %i.is, align 2, !tbaa !323, !range !376, !noundef !377
  %i.iu = trunc nuw i8 %i.it to i1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ig, i64 191
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !390
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ig, i64 192
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !391
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ig, i64 200
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !392
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ig, i64 208
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !393
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ig, i64 216
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !394
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ig, i64 224
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ig, i64 256
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ig, i64 288
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ig, i64 176
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !395
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ig, i64 304
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !396
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ig, i64 312
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !397, !range !376, !noundef !377
  %i.jo = trunc nuw i8 %i.jn to i1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ig, i64 320
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ig, i64 352
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ig, i64 384
  invoke void @_ZN7rocksdb11VersionEdit7AddFileEimjmRKNS_11InternalKeyES3_RKmS5_bNS_11TemperatureEmmmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_RKSt5arrayImLm2EEmmbSE_SE_SE_(ptr noundef nonnull align 8 dereferenceable(7456) %10, i32 noundef %3, i64 noundef %i.ij, i32 noundef %i.il, i64 noundef %i.in, ptr noundef nonnull align 8 dereferenceable(32) %i.io, ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %i.iq, ptr noundef nonnull align 8 dereferenceable(8) %i.ir, i1 noundef zeroext %i.iu, i8 noundef zeroext %i.iw, i64 noundef %i.iy, i64 noundef %i.ja, i64 noundef %i.jc, i64 noundef %i.je, ptr noundef nonnull align 8 dereferenceable(32) %i.jf, ptr noundef nonnull align 8 dereferenceable(32) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i64 noundef %i.jj, i64 noundef %i.jl, i1 noundef zeroext %i.jo, ptr noundef nonnull align 8 dereferenceable(32) %i.jp, ptr noundef nonnull align 8 dereferenceable(32) %i.jq, ptr noundef nonnull align 8 dereferenceable(32) %i.jr)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0177.0236, i64 8 ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.df
  br i1 %i.jt, label %._crit_edge239, label %bb.aq

.loopexit.split-lp.thread:                        ; preds = %bb.aa, %bb.ac, %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i
  %lpad.loopexit254 = landingpad { ptr, i32 }
          cleanup
  br label %.thread214

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i.i.i, %bb.aj, %bb.ak, %bb.v, %.loopexit, %bb.ae, %_ZNK7rocksdb21InternalKeyComparator7CompareERKNS_11InternalKeyES3_.exit.thread, %bb.r, %bb.s, %bb.t
  %lpad.loopexit.split-lp340 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.at:                                            ; preds = %._crit_edge239
  %.not.i151 = icmp eq ptr %0, %24
  br i1 %.not.i151, label %_ZN7rocksdb6StatusaSEOS0_.exit154, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ju = load <4 x i8>, ptr %24, align 8, !tbaa !26
  store <4 x i8> %i.ju, ptr %0, align 8, !tbaa !26
  store <4 x i8> zeroinitializer, ptr %24, align 8, !tbaa !26
  %i.jv = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 4, !tbaa !563, !range !376, !noundef !377
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.jw, ptr %i.jx, align 4, !tbaa !592
  store i8 0, ptr %i.jv, align 4, !tbaa !592
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 5 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !26
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !593
  store i8 0, ptr %i.jy, align 1, !tbaa !593
  %i.kb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !31
  store ptr null, ptr %i.kb, align 8, !tbaa !31
  %i.kd = load ptr, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  store ptr %i.kc, ptr %i.w, align 8, !tbaa !31
  %.not.i.i.i.i.i152 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i.i.i152, label %_ZN7rocksdb6StatusaSEOS0_.exit154, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i153

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i153: ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.kd) #23
  br label %_ZN7rocksdb6StatusaSEOS0_.exit154

_ZN7rocksdb6StatusaSEOS0_.exit154:                ; preds = %bb.at, %bb.au, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i153
  %i.ke = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !31 ; 2 uses
  %.not.i.i155 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i155, label %_ZN7rocksdb6StatusD2Ev.exit157, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i156

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i156: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit154
  call void @_ZdaPv(ptr noundef nonnull %i.kf) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit157

_ZN7rocksdb6StatusD2Ev.exit157:                   ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit154, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i156
  %i.kg = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !398 ; 2 uses
  %.not.i158 = icmp eq ptr %i.kh, null
  br i1 %.not.i158, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit157
  %i.ki = invoke noundef zeroext i1 %i.kh(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.aw ; 0 uses

bb.aw:                                            ; preds = %bb.av
  %i.kj = landingpad { ptr, i32 }
          catch ptr null
  %i.kk = extractvalue { ptr, i32 } %i.kj, 0
  call void @__clang_call_terminate(ptr %i.kk) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN7rocksdb6StatusD2Ev.exit157, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  %i.kl = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !398 ; 2 uses
  %.not.i159 = icmp eq ptr %i.km, null
  br i1 %.not.i159, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.kn = invoke noundef zeroext i1 %i.km(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 3)
          to label %bb.az unwind label %bb.ay     ; 0 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ko = landingpad { ptr, i32 }
          catch ptr null
  %i.kp = extractvalue { ptr, i32 } %i.ko, 0
  call void @__clang_call_terminate(ptr %i.kp) #25
  unreachable

bb.az:                                            ; preds = %bb.ax, %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.kq = load i8, ptr %0, align 8, !tbaa !602
  %i.kr = icmp eq i8 %i.kq, 0
  br i1 %i.kr, label %bb.ba, label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit

bb.ba:                                            ; preds = %bb.az
  %i.ks = getelementptr inbounds nuw i8, ptr %11, i64 464
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !401
  %i.ku = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store i8 0, ptr %i.ku, align 8, !tbaa !403
  invoke void @_ZN7rocksdb6DBImpl34InstallSuperVersionAndScheduleWorkEPNS_16ColumnFamilyDataEPNS_19SuperVersionContextESt8optionalISt10shared_ptrINS_18SeqnoToTimeMappingEEE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull %i.bq, ptr noundef %i.kt, ptr noundef nonnull align 8 %27)
          to label %bb.bb unwind label %bb.bo

bb.bb:                                            ; preds = %bb.ba
  %i.kv = load i8, ptr %i.ku, align 8, !tbaa !403, !range !376, !noundef !377
  %i.kw = trunc nuw i8 %i.kv to i1
  store i8 0, ptr %i.ku, align 8, !tbaa !403
  br i1 %i.kw, label %bb.bc, label %_ZNSt14_Optional_baseISt10shared_ptrIN7rocksdb18SeqnoToTimeMappingEELb0ELb0EED2Ev.exit

bb.bc:                                            ; preds = %bb.bb
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8
end_hunk_0
