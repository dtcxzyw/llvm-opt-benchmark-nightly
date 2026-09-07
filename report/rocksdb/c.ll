Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/c?download=true
inline.NumInlined: 7382
inline.NumDeleted: 2993
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZNK23rocksdb_mergeoperator_t11FullMergeV2ERKN7rocksdb13MergeOperator19MergeOperationInputEPNS1_20MergeOperationOutputE:bb.a
scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.02577.unr = phi i64 [ %.02577.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = sub nsw i64 %.02577.ph, %i.k
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge.loopexit, label %scalar.ph

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ap = ptrtoint ptr %i.t to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.11.094 = phi i64 [ 0, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ap, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.048.092 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.s, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.1159.06490 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.o, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.054.06788 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.n, %._crit_edge.loopexit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2535 ; 3 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %bb.d, label %bb.c

_ZNSt6vectorImSaImEED2Ev.exit.thread:             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.02577 = phi i64 [ %i.bi, %scalar.ph ], [ %.02577.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.02577 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.at, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !87
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.02577
  store ptr %.sroa.0.0.copyload, ptr %i.au, align 8, !tbaa !99
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.02577
  store i64 %.sroa.4.0.copyload, ptr %i.av, align 8, !tbaa !87
  %i.aw = add nuw i64 %.02577, 1                  ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.aw ; 2 uses
  %.sroa.0.0.copyload.1 = load ptr, ptr %i.ax, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.4.0.copyload.1 = load i64, ptr %.sroa.4.0..sroa_idx.1, align 8, !tbaa !87
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aw
  store ptr %.sroa.0.0.copyload.1, ptr %i.ay, align 8, !tbaa !99
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.aw
  store i64 %.sroa.4.0.copyload.1, ptr %i.az, align 8, !tbaa !87
  %i.ba = add nuw i64 %.02577, 2                  ; 3 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.ba ; 2 uses
  %.sroa.0.0.copyload.2 = load ptr, ptr %i.bb, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.4.0.copyload.2 = load i64, ptr %.sroa.4.0..sroa_idx.2, align 8, !tbaa !87
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ba
  store ptr %.sroa.0.0.copyload.2, ptr %i.bc, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ba
  store i64 %.sroa.4.0.copyload.2, ptr %i.bd, align 8, !tbaa !87
  %i.be = add nuw i64 %.02577, 3                  ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.be ; 2 uses
  %.sroa.0.0.copyload.3 = load ptr, ptr %i.bf, align 8, !tbaa !99
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.4.0.copyload.3 = load i64, ptr %.sroa.4.0..sroa_idx.3, align 8, !tbaa !87
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.be
  store ptr %.sroa.0.0.copyload.3, ptr %i.bg, align 8, !tbaa !99
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.be
  store i64 %.sroa.4.0.copyload.3, ptr %i.bh, align 8, !tbaa !87
  %i.bi = add nuw i64 %.02577, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bi, %i.k
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !2526

bb.c:                                             ; preds = %._crit_edge
  %i.bj = load ptr, ptr %i.ar, align 8, !tbaa !97
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !98
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.024 = phi ptr [ %i.bj, %bb.c ], [ null, %._crit_edge ]
  %.0 = phi i64 [ %i.bl, %bb.c ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !755
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !753
  %i.bq = load ptr, ptr %1, align 8, !tbaa !2536, !nonnull !95, !align !2530 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !98
  %i.bu = trunc i64 %i.k to i32
  %i.bv = invoke noundef ptr %i.bn(ptr noundef %i.bp, ptr noundef %i.br, i64 noundef %i.bt, ptr noundef %.024, i64 noundef %.0, ptr noundef %.sroa.054.06788, ptr noundef %.sroa.048.092, i32 noundef %i.bu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.e unwind label %bb.g       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.bw = load ptr, ptr %2, align 8, !tbaa !2539, !nonnull !95, !align !2530 ; 2 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !87
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !86
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, i64 noundef 0, i64 noundef %i.bz, ptr noundef %i.bv, i64 noundef %i.bx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !757 ; 2 uses
  %.not32 = icmp eq ptr %i.cc, null
  br i1 %.not32, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.cd = load ptr, ptr %i.bo, align 8, !tbaa !753
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !87
  invoke void %i.cc(ptr noundef %i.cd, ptr noundef %i.bv, i64 noundef %i.ce)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %.not.i.i.i = icmp eq ptr %.sroa.048.092, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = ptrtoint ptr %.sroa.048.092 to i64
  %i.ch = sub i64 %.sroa.11.094, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.092, i64 noundef %i.ch) #48
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  call void @free(ptr noundef %i.bv) #47
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %i.ci = load i8, ptr %i.a, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %.not.i.i.i42 = icmp eq ptr %.sroa.048.092, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorImSaImEED2Ev.exit43, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = ptrtoint ptr %.sroa.048.092 to i64
  %i.ck = sub i64 %.sroa.11.094, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.092, i64 noundef %i.ck) #48
  br label %_ZNSt6vectorImSaImEED2Ev.exit43

_ZNSt6vectorImSaImEED2Ev.exit43:                  ; preds = %bb.j, %bb.k
  %.not.i.i.i44 = icmp eq ptr %.sroa.054.06788, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit43
  %i.cl = ptrtoint ptr %.sroa.1159.06490 to i64
  %i.cm = ptrtoint ptr %.sroa.054.06788 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.06788, i64 noundef %i.cn) #48
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %_ZNSt6vectorImSaImEED2Ev.exit43, %bb.l
  %i.co = icmp ne i8 %i.ci, 0
  ret i1 %i.co

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.h, %bb.g
  %.not.i.i.i45 = icmp eq ptr %.sroa.054.06788, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit46, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.thread, %_ZNSt6vectorImSaImEED2Ev.exit
  %.pn75 = phi { ptr, i32 } [ %i.as, %_ZNSt6vectorImSaImEED2Ev.exit.thread ], [ %i.cf, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.sroa.1159.06374 = phi ptr [ %i.o, %_ZNSt6vectorImSaImEED2Ev.exit.thread ], [ %.sroa.1159.06490, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.sroa.054.06673 = phi ptr [ %i.n, %_ZNSt6vectorImSaImEED2Ev.exit.thread ], [ %.sroa.054.06788, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.cp = ptrtoint ptr %.sroa.1159.06374 to i64
  %i.cq = ptrtoint ptr %.sroa.054.06673 to i64
  %i.cr = sub i64 %i.cp, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.06673, i64 noundef %i.cr) #48
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit46

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit46:              ; preds = %bb.m, %_ZNSt6vectorImSaImEED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn75, %bb.m ], [ %i.cf, %_ZNSt6vectorImSaImEED2Ev.exit ]
  resume { ptr, i32 } %.pn.pn
}

declare noundef zeroext i1 @_ZNK7rocksdb13MergeOperator11FullMergeV3ERKNS0_21MergeOperationInputV3EPNS0_22MergeOperationOutputV3E(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb13MergeOperator12PartialMergeERKNS_5SliceES3_S3_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6LoggerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK23rocksdb_mergeoperator_t17PartialMergeMultiERKN7rocksdb5SliceERKSt5dequeIS1_SaIS1_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_6LoggerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !2545 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2545
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ne ptr %i.f, null
  %.neg.i.i = sext i1 %i.m to i64
  %i.n = add nsw i64 %i.l, %.neg.i.i
  %i.o = shl nsw i64 %i.n, 5                      ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !2546
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2547
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4                   ; 2 uses
  %i.w = add nsw i64 %i.o, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2548
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !2546
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 4                 ; 2 uses
  %i.ae = add nsw i64 %i.w, %i.ad                 ; 10 uses
  %i.af = icmp ugt i64 %i.ae, 1152921504606846975
  br i1 %i.af, label %.noexc, label %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #50
  unreachable

_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i, label %._crit_edge, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ag = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #49 ; 8 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !99
  %i.aj = add nsw i64 %i.ae, -1                   ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 0                    ; 2 uses
  br i1 %i.ak, label %bb.b, label %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc26
  %i.al = getelementptr i8, ptr %i.ah, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !99
  br label %bb.b

bb.b:                                             ; preds = %.noexc26, %_ZSt6fill_nIPPKcmS1_ET_S3_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #49
          to label %.noexc31 unwind label %_ZNSt6vectorImSaImEED2Ev.exit.thread ; 7 uses

.noexc31:                                         ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ae
  store i64 0, ptr %i.am, align 8, !tbaa !87
  br i1 %i.ak, label %.lr.ph, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc31
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  %.idx.i.i.i.i.i.i.i28 = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %.idx.i.i.i.i.i.i.i28, i1 false), !tbaa !87
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc31
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !2546, !noalias !2549 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2547, !noalias !2549
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !2545, !noalias !2549 ; 3 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 3 uses
  %5 = add nsw i64 %i.v, %i.ad
  %6 = add i64 %5, %i.o
  %xtraiter = and i64 %i.ae, 1
  %i.ax = icmp eq i64 %6, 1
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ae, 1152921504606846974
  br label %bb.h

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.068.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.da, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod86 = trunc i64 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ay = add nsw i64 %i.aw, %.068.epil.init      ; 5 uses
  %i.az = icmp sgt i64 %i.ay, -1
  br i1 %i.az, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.epil.preheader
  %i.ba = ashr i64 %i.ay, 5
  br label %bb.f

bb.d:                                             ; preds = %.epil.preheader
  %i.bb = icmp samesign ult i64 %i.ay, 32
  br i1 %i.bb, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = lshr i64 %i.ay, 5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bd = phi i64 [ %i.bc, %bb.e ], [ %i.ba, %bb.c ] ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !2550, !noalias !2549
  %i.bg = shl nsw i64 %i.bd, 5
  %i.bh = sub nsw i64 %i.ay, %i.bg
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bf, i64 %i.bh
  br label %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.epil

bb.g:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %.068.epil.init
  br label %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.epil

_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.epil: ; preds = %bb.g, %bb.f
  %storemerge.i.i.i.i.epil = phi ptr [ %i.bi, %bb.f ], [ %i.bj, %bb.g ] ; 2 uses
  %.sroa.0.0.copyload.epil = load ptr, ptr %storemerge.i.i.i.i.epil, align 8, !tbaa !99
  %.sroa.4.0.storemerge.i.i.i.i.sroa_idx.epil = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.epil, i64 8
  %.sroa.4.0.copyload.epil = load i64, ptr %.sroa.4.0.storemerge.i.i.i.i.sroa_idx.epil, align 8, !tbaa !87
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.068.epil.init
  store ptr %.sroa.0.0.copyload.epil, ptr %i.bk, align 8, !tbaa !99
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.068.epil.init
  store i64 %.sroa.4.0.copyload.epil, ptr %i.bl, align 8, !tbaa !87
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.epil
  %i.bm = ptrtoint ptr %i.an to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %.sroa.11.085 = phi i64 [ 0, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.bm, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.039.083 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.am, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.1150.05581 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ai, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.045.05879 = phi ptr [ null, %_ZNSt6vectorIPKcSaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ], [ %i.ah, %._crit_edge.loopexit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !756
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !753
  %i.br = load ptr, ptr %1, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !98
  %i.bu = trunc i64 %i.ae to i32
  %i.bv = invoke noundef ptr %i.bo(ptr noundef %i.bq, ptr noundef %i.br, i64 noundef %i.bt, ptr noundef %.sroa.045.05879, ptr noundef %.sroa.039.083, i32 noundef %i.bu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.s unwind label %bb.u       ; 3 uses

_ZNSt6vectorImSaImEED2Ev.exit.thread:             ; preds = %bb.b
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.h:                                             ; preds = %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.1, %.lr.ph.new
  %.068 = phi i64 [ 0, %.lr.ph.new ], [ %i.da, %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.1 ]
  %i.bx = add nsw i64 %i.aw, %.068                ; 5 uses
  %i.by = icmp sgt i64 %i.bx, -1
  br i1 %i.by, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bz = icmp samesign ult i64 %i.bx, 32
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %.068
  br label %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit

bb.k:                                             ; preds = %bb.i
  %i.cb = lshr i64 %i.bx, 5
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.cc = ashr i64 %i.bx, 5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cd = phi i64 [ %i.cb, %bb.k ], [ %i.cc, %bb.l ] ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2550, !noalias !2549
  %i.cg = shl nsw i64 %i.cd, 5
  %i.ch = sub nsw i64 %i.bx, %i.cg
  %i.ci = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %i.ch
  br label %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit

_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit:   ; preds = %bb.j, %bb.m
  %storemerge.i.i.i.i = phi ptr [ %i.ci, %bb.m ], [ %i.ca, %bb.j ] ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %storemerge.i.i.i.i, align 8, !tbaa !99
  %.sroa.4.0.storemerge.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0.storemerge.i.i.i.i.sroa_idx, align 8, !tbaa !87
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.068
  store ptr %.sroa.0.0.copyload, ptr %i.cj, align 8, !tbaa !99
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.068
  store i64 %.sroa.4.0.copyload, ptr %i.ck, align 8, !tbaa !87
  %i.cl = or disjoint i64 %.068, 1                ; 4 uses
  %i.cm = add nsw i64 %i.aw, %i.cl                ; 5 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  br i1 %i.cn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit
  %i.co = ashr i64 %i.cm, 5
  br label %bb.q

bb.o:                                             ; preds = %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit
  %i.cp = icmp samesign ult i64 %i.cm, 32
  br i1 %i.cp, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = lshr i64 %i.cm, 5
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.cr = phi i64 [ %i.cq, %bb.p ], [ %i.co, %bb.n ] ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !2550, !noalias !2549
  %i.cu = shl nsw i64 %i.cr, 5
  %i.cv = sub nsw i64 %i.cm, %i.cu
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.ct, i64 %i.cv
  br label %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.1

bb.r:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.cl
  br label %_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.1

_ZNKSt5dequeIN7rocksdb5SliceESaIS1_EEixEm.exit.1: ; preds = %bb.r, %bb.q
  %storemerge.i.i.i.i.1 = phi ptr [ %i.cw, %bb.q ], [ %i.cx, %bb.r ] ; 2 uses
  %.sroa.0.0.copyload.1 = load ptr, ptr %storemerge.i.i.i.i.1, align 8, !tbaa !99
  %.sroa.4.0.storemerge.i.i.i.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.1, i64 8
  %.sroa.4.0.copyload.1 = load i64, ptr %.sroa.4.0.storemerge.i.i.i.i.sroa_idx.1, align 8, !tbaa !87
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.cl
  store ptr %.sroa.0.0.copyload.1, ptr %i.cy, align 8, !tbaa !99
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.cl
  store i64 %.sroa.4.0.copyload.1, ptr %i.cz, align 8, !tbaa !87
  %i.da = add nuw i64 %.068, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !2542

bb.s:                                             ; preds = %._crit_edge
  %i.db = load i64, ptr %i.b, align 8, !tbaa !87
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !86
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.dd, ptr noundef %i.bv, i64 noundef %i.db)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !757 ; 2 uses
  %.not = icmp eq ptr %i.dg, null
  br i1 %.not, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.dh = load ptr, ptr %i.bp, align 8, !tbaa !753
  %i.di = load i64, ptr %i.b, align 8, !tbaa !87
  invoke void %i.dg(ptr noundef %i.dh, ptr noundef %i.bv, i64 noundef %i.di)
          to label %bb.x unwind label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %._crit_edge
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %.not.i.i.i = icmp eq ptr %.sroa.039.083, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = ptrtoint ptr %.sroa.039.083 to i64
  %i.dl = sub i64 %.sroa.11.085, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.039.083, i64 noundef %i.dl) #48
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
end_hunk_0
