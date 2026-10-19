Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/external_sst_file_ingestion_job?download=true
inline.NumInlined: 4284
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7rocksdb16IngestedFileInfoD2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit.i

_ZN7rocksdb11InternalKeyD2Ev.exit.i:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ar = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN7rocksdb12KeyRangeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i
  %i.au = load i64, ptr %i.as, align 8, !tbaa !45
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #29
  br label %_ZN7rocksdb12KeyRangeInfoD2Ev.exit

_ZN7rocksdb12KeyRangeInfoD2Ev.exit:               ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK7rocksdb27ExternalSstFileIngestionJob19ComputeFilesOverlapERKNS_10autovectorINS_16IngestedFileInfoELm8EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17528) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9704) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 33 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 33 uses
  %4 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %5 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %6 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %7 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %8 = alloca %"class.rocksdb::autovector.342", align 8 ; 20 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !392
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9680 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9688
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !394
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !397
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 1208
  %i.j = add i64 %i.i, %i.a                       ; 10 uses
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i64 0, ptr %8, align 8, !tbaa !827
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.m, ptr %i.l, align 8, !tbaa !828
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9672
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit
  %i.r = phi ptr [ null, %bb.b ], [ %i.ay, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit ] ; 6 uses
  %i.s = phi ptr [ null, %bb.b ], [ %i.az, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit ] ; 4 uses
  %i.t = phi ptr [ null, %bb.b ], [ %i.ba, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit ] ; 4 uses
  %.02154 = phi i64 [ 0, %bb.b ], [ %i.bb, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit ] ; 4 uses
  %i.u = icmp ult i64 %.02154, 8
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = getelementptr inbounds nuw [1208 x i8], ptr %i.v, i64 %.02154
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = getelementptr [1208 x i8], ptr %i.x, i64 %.02154
  %i.z = getelementptr i8, ptr %i.y, i64 -9664
  %.0.i = select i1 %i.u, ptr %i.w, ptr %i.z      ; 3 uses
  %i.aa = load i64, ptr %8, align 8, !tbaa !827   ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 8
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !828
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  %i.ae = add nuw nsw i64 %i.aa, 1
  store i64 %i.ae, ptr %8, align 8, !tbaa !827
  store ptr %.0.i, ptr %i.ad, align 8, !tbaa !530
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !530
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.af, ptr %i.p, align 8, !tbaa !829
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = ptrtoint ptr %i.s to i64
  %i.ah = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 5 uses
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %bb.h, label %_ZNKSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #26
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ak = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.al = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ak ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.ak
  %i.an = call i64 @llvm.umin.i64(i64 %i.al, i64 1152921504606846975)
  %i.ao = select i1 %i.am, i64 1152921504606846975, i64 %i.an ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ao, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ai ; 2 uses
  store ptr %.0.i, ptr %i.ar, align 8, !tbaa !530
  %i.as = icmp sgt i64 %i.ai, 0
  br i1 %i.as, label %bb.i, label %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc28
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 8 %i.r, i64 %i.ai, i1 false)
  br label %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.i, %.noexc28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !830
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.aw) #29
  br label %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.aq, ptr %i.n, align 8, !tbaa !831
  store ptr %i.at, ptr %i.p, align 8, !tbaa !829
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ao ; 2 uses
  store ptr %i.ax, ptr %i.q, align 8, !tbaa !830
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.f, %bb.d
  %i.ay = phi ptr [ %i.aq, %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.d ]
  %i.az = phi ptr [ %i.ax, %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.s, %bb.f ], [ %i.s, %bb.d ]
  %i.ba = phi ptr [ %i.at, %_ZNSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.af, %bb.f ], [ %i.t, %bb.d ] ; 2 uses
  %i.bb = add nuw i64 %.02154, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.j
  br i1 %exitcond.not, label %bb.k, label %bb.c, !llvm.loop !818

bb.k:                                             ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE9push_backEOS3_.exit
  %i.bc = load i64, ptr %8, align 8, !tbaa !827, !noalias !832
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !831, !noalias !832
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = add i64 %i.bh, %i.bc                    ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 9 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bj, align 8, !tbaa !833 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %.not.i.i29 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i29, label %.lr.ph, label %.noexc.i

.noexc.i:                                         ; preds = %bb.k
  store ptr %8, ptr %4, align 8, !tbaa !532
  %.sroa.313.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.313.0..sroa_idx14.i, align 8, !tbaa !411
  store ptr %8, ptr %5, align 8, !tbaa !532
  %.sroa.3.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bi, ptr %.sroa.3.0..sroa_idx6.i, align 8, !tbaa !411
  %i.bk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 true)
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = xor i64 %i.bl, 126
  invoke void @_ZSt16__introsort_loopIN7rocksdb10autovectorIPKNS0_16IngestedFileInfoELm8EE13iterator_implIS5_S4_EElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_24ExternalFileRangeCheckerEEEEvT_SD_T0_T1_(ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 %5, i64 noundef %i.bm, ptr %.sroa.0.0.copyload)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %.noexc.i
  store ptr %8, ptr %6, align 8, !tbaa !532
  %.sroa.313.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %.sroa.313.0..sroa_idx16.i, align 8, !tbaa !411
  store ptr %8, ptr %7, align 8, !tbaa !532
  %.sroa.3.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bi, ptr %.sroa.3.0..sroa_idx8.i, align 8, !tbaa !411
  invoke void @_ZSt22__final_insertion_sortIN7rocksdb10autovectorIPKNS0_16IngestedFileInfoELm8EE13iterator_implIS5_S4_EEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_24ExternalFileRangeCheckerEEEEvT_SD_T0_(ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, ptr %.sroa.0.0.copyload)
          to label %.lr.ph unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph:                                           ; preds = %.noexc30, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.bp = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !530 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !530 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !46
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  %i.bz = select i1 %i.bv, i1 true, i1 %i.by
  br i1 %i.bz, label %.backedge.peel, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !46 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.backedge.peel, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !46
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.backedge.peel, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !44
  store ptr %i.ci, ptr %2, align 8
  store i64 %i.bx, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.cj = load ptr, ptr %i.bs, align 8, !tbaa !44
  store ptr %i.cj, ptr %3, align 8
  store i64 %i.cb, ptr %i.bo, align 8
  %i.ck = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.peel:                                    ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %.critedge, label %.backedge.peel

.backedge.peel:                                   ; preds = %.noexc45.peel, %bb.m, %bb.l, %.lr.ph
  %exitcond62.peel.not = icmp eq i64 %i.j, 2
  br i1 %exitcond62.peel.not, label %.critedge, label %.peel.next

.peel.next:                                       ; preds = %.backedge.peel
  %i.cm = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !530 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !530 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !46
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cv = load i64, ptr %i.cu, align 8            ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = select i1 %i.ct, i1 true, i1 %i.cw
  br i1 %i.cx, label %.backedge.peel67, label %bb.o

bb.o:                                             ; preds = %.peel.next
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !46 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.backedge.peel67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !46
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.backedge.peel67, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !44
  store ptr %i.dg, ptr %2, align 8
  store i64 %i.cv, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.dh = load ptr, ptr %i.cq, align 8, !tbaa !44
  store ptr %i.dh, ptr %3, align 8
  store i64 %i.cz, ptr %i.bo, align 8
  %i.di = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.de, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.peel66:                                  ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.dj = icmp sgt i32 %i.di, -1
  br i1 %i.dj, label %.critedge, label %.backedge.peel67

.backedge.peel67:                                 ; preds = %.noexc45.peel66, %bb.p, %bb.o, %.peel.next
  %exitcond62.peel68.not = icmp eq i64 %i.j, 3
  br i1 %exitcond62.peel68.not, label %.critedge, label %.peel.next63

.peel.next63:                                     ; preds = %.backedge.peel67
  %i.dk = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !530 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !530 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !46
  %i.dr = icmp eq i64 %i.dq, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dt = load i64, ptr %i.ds, align 8            ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  %i.dv = select i1 %i.dr, i1 true, i1 %i.du
  br i1 %i.dv, label %.backedge.peel73, label %bb.r

bb.r:                                             ; preds = %.peel.next63
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !46 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.backedge.peel73, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !46
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.backedge.peel73, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !44
  store ptr %i.ee, ptr %2, align 8
  store i64 %i.dt, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ef = load ptr, ptr %i.do, align 8, !tbaa !44
  store ptr %i.ef, ptr %3, align 8
  store i64 %i.dx, ptr %i.bo, align 8
  %i.eg = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.peel72:                                  ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %.critedge, label %.backedge.peel73

.backedge.peel73:                                 ; preds = %.noexc45.peel72, %bb.s, %bb.r, %.peel.next63
  %exitcond62.peel74.not = icmp eq i64 %i.j, 4
  br i1 %exitcond62.peel74.not, label %.critedge, label %.peel.next69

.peel.next69:                                     ; preds = %.backedge.peel73
  %i.ei = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !530 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !530 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !46
  %i.ep = icmp eq i64 %i.eo, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.er = load i64, ptr %i.eq, align 8            ; 2 uses
  %i.es = icmp eq i64 %i.er, 0
  %i.et = select i1 %i.ep, i1 true, i1 %i.es
  br i1 %i.et, label %.backedge.peel79, label %bb.u

bb.u:                                             ; preds = %.peel.next69
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !46 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.backedge.peel79, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !46
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %.backedge.peel79, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !44
  store ptr %i.fc, ptr %2, align 8
  store i64 %i.er, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.fd = load ptr, ptr %i.em, align 8, !tbaa !44
  store ptr %i.fd, ptr %3, align 8
  store i64 %i.ev, ptr %i.bo, align 8
  %i.fe = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.peel78:                                  ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.ff = icmp sgt i32 %i.fe, -1
  br i1 %i.ff, label %.critedge, label %.backedge.peel79

.backedge.peel79:                                 ; preds = %.noexc45.peel78, %bb.v, %bb.u, %.peel.next69
  %exitcond62.peel80.not = icmp eq i64 %i.j, 5
end_hunk_0
begin_hunk_1_@_ZNK7rocksdb27ExternalSstFileIngestionJob19ComputeFilesOverlapERKNS_10autovectorINS_16IngestedFileInfoELm8EEE:bb.a
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  %i.fr = select i1 %i.fn, i1 true, i1 %i.fq
  br i1 %i.fr, label %.backedge.peel85, label %bb.x

bb.x:                                             ; preds = %.peel.next75
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !46 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.backedge.peel85, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !46
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.backedge.peel85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fy = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !44
  store ptr %i.ga, ptr %2, align 8
  store i64 %i.fp, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.gb = load ptr, ptr %i.fk, align 8, !tbaa !44
  store ptr %i.gb, ptr %3, align 8
  store i64 %i.ft, ptr %i.bo, align 8
  %i.gc = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.peel84:                                  ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.gd = icmp sgt i32 %i.gc, -1
  br i1 %i.gd, label %.critedge, label %.backedge.peel85

.backedge.peel85:                                 ; preds = %.noexc45.peel84, %bb.y, %bb.x, %.peel.next75
  %exitcond62.peel86.not = icmp eq i64 %i.j, 6
  br i1 %exitcond62.peel86.not, label %.critedge, label %.peel.next81

.peel.next81:                                     ; preds = %.backedge.peel85
  %i.ge = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 40
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !530 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !530 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !46
  %i.gl = icmp eq i64 %i.gk, 0
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.gn = load i64, ptr %i.gm, align 8            ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  %i.gp = select i1 %i.gl, i1 true, i1 %i.go
  br i1 %i.gp, label %.backedge.peel91, label %bb.aa

bb.aa:                                            ; preds = %.peel.next81
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !46 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  br i1 %i.gs, label %.backedge.peel91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gi, i64 40
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !46
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %.backedge.peel91, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gw = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !44
  store ptr %i.gy, ptr %2, align 8
  store i64 %i.gn, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.gz = load ptr, ptr %i.gi, align 8, !tbaa !44
  store ptr %i.gz, ptr %3, align 8
  store i64 %i.gr, ptr %i.bo, align 8
  %i.ha = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.peel90:                                  ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hb = icmp sgt i32 %i.ha, -1
  br i1 %i.hb, label %.critedge, label %.backedge.peel91

.backedge.peel91:                                 ; preds = %.noexc45.peel90, %bb.ab, %bb.aa, %.peel.next81
  %exitcond62.peel92.not = icmp eq i64 %i.j, 7
  br i1 %exitcond62.peel92.not, label %.critedge, label %.peel.next87

.peel.next87:                                     ; preds = %.backedge.peel91
  %i.hc = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !530 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !530 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !46
  %i.hj = icmp eq i64 %i.hi, 0
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hl = load i64, ptr %i.hk, align 8            ; 2 uses
  %i.hm = icmp eq i64 %i.hl, 0
  %i.hn = select i1 %i.hj, i1 true, i1 %i.hm
  br i1 %i.hn, label %.backedge.peel97, label %bb.ad

bb.ad:                                            ; preds = %.peel.next87
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !46 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %.backedge.peel97, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !46
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %.backedge.peel97, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hu = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.hv = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !44
  store ptr %i.hw, ptr %2, align 8
  store i64 %i.hl, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.hx = load ptr, ptr %i.hg, align 8, !tbaa !44
  store ptr %i.hx, ptr %3, align 8
  store i64 %i.hp, ptr %i.bo, align 8
  %i.hy = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45.peel96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45.peel96:                                  ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.hz = icmp sgt i32 %i.hy, -1
  br i1 %i.hz, label %.critedge, label %.backedge.peel97

.backedge.peel97:                                 ; preds = %.noexc45.peel96, %bb.ae, %bb.ad, %.peel.next87
  %exitcond62.peel98.not = icmp eq i64 %i.j, 8
  br i1 %exitcond62.peel98.not, label %.critedge, label %.peel.next93

.peel.next93:                                     ; preds = %.backedge.peel97, %.backedge
  %i.ia = phi i64 [ %i.je, %.backedge ], [ 8, %.backedge.peel97 ] ; 3 uses
  %.056 = phi i64 [ %i.ia, %.backedge ], [ 7, %.backedge.peel97 ] ; 3 uses
  %i.ib = icmp ult i64 %.056, 8
  %i.ic = load ptr, ptr %i.l, align 8
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.056
  %i.ie = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %.056
  %i.ig = getelementptr i8, ptr %i.if, i64 -64
  %.0.i32 = select i1 %i.ib, ptr %i.id, ptr %i.ig
  %i.ih = load ptr, ptr %.0.i32, align 8, !tbaa !530 ; 3 uses
  %i.ii = getelementptr [8 x i8], ptr %i.ie, i64 %i.ia
  %i.ij = getelementptr i8, ptr %i.ii, i64 -64
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !530 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.im = load i64, ptr %i.il, align 8, !tbaa !46
  %i.in = icmp eq i64 %i.im, 0
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.ip = load i64, ptr %i.io, align 8            ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  %i.ir = select i1 %i.in, i1 true, i1 %i.iq
  br i1 %i.ir, label %.backedge, label %bb.ag

bb.ag:                                            ; preds = %.peel.next93
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !46 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !46
  %i.ix = icmp eq i64 %i.iw, 0
  br i1 %i.ix, label %.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.iy = load ptr, ptr %i.bj, align 8, !tbaa !413
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !44
  store ptr %i.ja, ptr %2, align 8
  store i64 %i.ip, ptr %i.bn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.jb = load ptr, ptr %i.ik, align 8, !tbaa !44
  store ptr %i.jb, ptr %3, align 8
  store i64 %i.it, ptr %i.bo, align 8
  %i.jc = invoke noundef i32 @_ZN7rocksdb17sstableKeyCompareEPKNS_10ComparatorERKNS_5SliceES5_(ptr noundef %i.iy, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.jd = icmp sgt i32 %i.jc, -1
  br i1 %i.jd, label %.critedge, label %.backedge

.backedge:                                        ; preds = %bb.ah, %bb.ag, %.peel.next93, %.noexc45
  %i.je = add nuw i64 %i.ia, 1                    ; 2 uses
  %exitcond62.not = icmp eq i64 %i.je, %i.j
  br i1 %exitcond62.not, label %.critedge, label %.peel.next93, !llvm.loop !821

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ai, %_ZNKSt6vectorIPKN7rocksdb16IngestedFileInfoESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.n, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %.noexc.i, %.noexc30, %bb.h
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  %.pr.i.i36 = load i64, ptr %8, align 8, !tbaa !827
  %.not1.i.i37 = icmp eq i64 %.pr.i.i36, 0
  br i1 %.not1.i.i37, label %bb.al, label %.lr.ph.preheader.i.i38

.critedge:                                        ; preds = %.backedge, %.noexc45, %.noexc45.peel, %.backedge.peel, %.noexc45.peel66, %.backedge.peel67, %.noexc45.peel72, %.backedge.peel73, %.noexc45.peel78, %.backedge.peel79, %.noexc45.peel84, %.backedge.peel85, %.noexc45.peel90, %.backedge.peel91, %.noexc45.peel96, %.backedge.peel97
  %.not.lcssa.ph = phi i1 [ true, %.noexc45.peel96 ], [ false, %.backedge.peel97 ], [ true, %.noexc45.peel ], [ false, %.backedge.peel ], [ true, %.noexc45.peel66 ], [ false, %.backedge.peel67 ], [ true, %.noexc45.peel72 ], [ false, %.backedge.peel73 ], [ true, %.noexc45.peel78 ], [ false, %.backedge.peel79 ], [ true, %.noexc45.peel84 ], [ false, %.backedge.peel85 ], [ true, %.noexc45.peel90 ], [ false, %.backedge.peel91 ], [ false, %.backedge ], [ true, %.noexc45 ]
  %.pr.i.i = load i64, ptr %8, align 8, !tbaa !827
  %.not1.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not1.i.i, label %bb.aj, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge
  store i64 0, ptr %8, align 8, !tbaa !827
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.preheader.i.i, %.critedge
  %i.jf = load ptr, ptr %i.n, align 8, !tbaa !831 ; 5 uses
  %i.jg = load ptr, ptr %i.p, align 8, !tbaa !829
  %.not.i.i.i.i35 = icmp eq ptr %i.jg, %i.jf
  br i1 %.not.i.i.i.i35, label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.aj
  store ptr %i.jf, ptr %i.p, align 8, !tbaa !829
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.aj
  %.not.i.i.i1.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i1.i, label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i
  %i.jh = load ptr, ptr %i.q, align 8, !tbaa !830
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #29
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.an

.lr.ph.preheader.i.i38:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store i64 0, ptr %8, align 8, !tbaa !827
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph.preheader.i.i38, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.jl = load ptr, ptr %i.n, align 8, !tbaa !831 ; 5 uses
  %i.jm = load ptr, ptr %i.p, align 8, !tbaa !829
  %.not.i.i.i.i39 = icmp eq ptr %i.jm, %i.jl
  br i1 %.not.i.i.i.i39, label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41, label %_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i40

_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i40: ; preds = %bb.al
  store ptr %i.jl, ptr %i.p, align 8, !tbaa !829
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41: ; preds = %_ZSt8_DestroyIPPKN7rocksdb16IngestedFileInfoES3_EvT_S5_RSaIT0_E.exit.i.i.i.i40, %bb.al
  %.not.i.i.i1.i42 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i1.i42, label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit43, label %bb.am

bb.am:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41
  %i.jn = load ptr, ptr %i.q, align 8, !tbaa !830
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jl to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.jl, i64 noundef %i.jq) #29
  br label %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit43

_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit43: ; preds = %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EE5clearEv.exit.i41, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  resume { ptr, i32 } %lpad.loopexit.split-lp134

bb.an:                                            ; preds = %bb.a, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit
  %.2 = phi i1 [ %.not.lcssa.ph, %_ZN7rocksdb10autovectorIPKNS_16IngestedFileInfoELm8EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.2
}

declare void @_ZN7rocksdb25MaybeAddTimestampsToRangeERKNS_8OptSliceES2_mPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr dead_on_unwind writable sret(%"class.std::tuple.257") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN7rocksdb13TableFileNameB5cxx11ERKSt6vectorINS_6DbPathESaIS1_EEmj(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7rocksdb10FileSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !460
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !461
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !456
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !5
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !456
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !5
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !439
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11FileOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !45
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.m) #27
  ret void
}

declare void @_ZN7rocksdb8CopyFileEPNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11TemperatureES9_SA_mbRKSt10shared_ptrINS_8IOTracerEEmRKSt8optionalINS_9IOOptionsEESK_(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #6

declare void @_ZN7rocksdb15DirFsyncOptionsC1ENS0_11FsyncReasonE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) unnamed_addr #6

declare void @_ZN7rocksdb23GenerateOneFileChecksumEPNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_22FileChecksumGenFactoryES9_PS7_SC_mbRSt10shared_ptrINS_8IOTracerEEPNS_11RateLimiterERKNS_11ReadOptionsEPNS_10StatisticsEPNS_11SystemClockERKNS_11FileOptionsE(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 5 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp ult i64 %i.f, %i.c
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #26
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.h = add i64 %i.e, %i.c                       ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
end_hunk_1
