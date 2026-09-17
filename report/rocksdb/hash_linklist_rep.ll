Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/hash_linklist_rep?download=true
inline.NumInlined: 775
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_122HashLinkListRepFactory17CreateMemTableRepERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEPNS_6LoggerE:bb.a
  store i32 %.sroa.speculated.i, ptr %i.n, align 8, !tbaa !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %i.o, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %1, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %4, ptr %i.q, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 %i.i, ptr %i.r, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i8 %i.k, ptr %i.s, align 4, !tbaa !90
  %i.t = shl i64 %i.c, 3                          ; 2 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !54
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.t, i64 noundef %i.g, ptr noundef %4)
          to label %.noexc unwind label %bb.b, !inline_history !157 ; 12 uses

.noexc:                                           ; preds = %bb.a
  %i.y = icmp eq i64 %i.c, 0
  br i1 %i.y, label %.loopexit.i.thread, label %.lr.ph.i.preheader

.loopexit.i.thread:                               ; preds = %.noexc
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.x, ptr %i.z, align 8, !tbaa !91
  br label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit

.lr.ph.i.preheader:                               ; preds = %.noexc
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.x, i8 0, i64 %i.t, i1 false), !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !91
  %xtraiter = and i64 %i.c, 7                     ; 3 uses
  %i.ab = icmp ult i64 %i.c, 8
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.c, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.021.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ar, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i
  store atomic ptr null, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store atomic ptr null, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store atomic ptr null, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store atomic ptr null, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store atomic ptr null, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store atomic ptr null, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store atomic ptr null, ptr %i.aq monotonic, align 8
  %i.ar = add nuw i64 %.021.i, 8                  ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !158

_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.021.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ar, %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit.loopexit.unr-lcssa ]
  %lcmp.mod6 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod6)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.021.i.epil = phi i64 [ %i.at, %.lr.ph.i.epil ], [ %.021.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i.epil
  store atomic ptr null, ptr %i.as monotonic, align 8
  %i.at = add nuw i64 %.021.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit, label %.lr.ph.i.epil, !llvm.loop !159

_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit: ; preds = %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEmjmPNS_6LoggerEib.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.loopexit.i.thread
  ret ptr %i.a

bb.b:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #26
  resume { ptr, i32 } %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN7rocksdb18MemTableRepFactory17CreateMemTableRepERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEPKNS_14SliceTransformEPNS_6LoggerEj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb18MemTableRepFactory29IsInsertConcurrentlySupportedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7rocksdb18MemTableRepFactory22CanHandleDuplicatedKeyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN7rocksdb12Configurable15RegisterOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvPKSt13unordered_mapIS6_NS_14OptionTypeInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS7_SB_EEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #14

declare noundef ptr @_ZNK7rocksdb12Configurable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep8AllocateEmPPc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = add i64 %1, 16
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.c, i64 noundef 0, ptr noundef null) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %2, align 8, !tbaa !95
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep6InsertEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !96
  %i.g = load i8, ptr %i.f, align 1, !tbaa !24    ; 2 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.g to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit

.thread.i.i:                                      ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.l = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, ptr noundef nonnull %i.b)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !96
  br label %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit

_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit:     ; preds = %bb.b, %.thread.i.i
  %i.m = phi i32 [ %.pre.i, %.thread.i.i ], [ %i.i, %bb.b ]
  %.1.i.i = phi ptr [ %i.l, %.thread.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  store ptr %.1.i.i, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val67 = load ptr, ptr %i.p, align 8, !tbaa !86 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.q = add nsw i64 %i.n, -8
  store ptr %.1.i.i, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = load ptr, ptr %.val67, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call { ptr, i64 } %i.u(ptr noundef nonnull align 8 dereferenceable(32) %.val67, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !2 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.v, 1        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val73 = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.ab = call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.w, i64 noundef %i.x)
  %6 = call noundef i64 @llvm.umulh.i64(i64 %.val73, i64 %i.ab)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %6 ; 4 uses
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 9 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit
  store atomic ptr null, ptr %1 monotonic, align 8
  store atomic ptr %1, ptr %i.ac release, align 8
  br label %bb.s

bb.d:                                             ; preds = %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit
  %i.af = load atomic ptr, ptr %i.ad monotonic, align 8
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef 16, i64 noundef 0, ptr noundef null) ; 4 uses
  store ptr %i.ad, ptr %i.am, align 8, !tbaa !93
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.an, align 8, !tbaa !163
  store atomic ptr %i.am, ptr %i.ac release, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ao = load atomic ptr, ptr %i.ad monotonic, align 8
  %i.ap = icmp eq ptr %i.ao, %i.ad
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 8
  %i.as = add i32 %i.ar, 1
  store atomic i32 %i.as, ptr %i.aq monotonic, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store ptr %i.f, ptr %i.c, align 8, !tbaa !95
  call void @_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE6InsertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.s

bb.h:                                             ; preds = %bb.f, %bb.e
  %.060 = phi ptr [ %i.am, %bb.e ], [ %i.ad, %bb.f ] ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !89 ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.060, i64 8 ; 2 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4
  %i.az = icmp eq i32 %i.ay, %i.av
  br i1 %i.az, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !88
  %.val70 = load i64, ptr %i.aa, align 8, !tbaa !84
  %i.bc = call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.w, i64 noundef %i.x)
  %7 = call noundef i64 @llvm.umulh.i64(i64 %.val70, i64 %i.bc)
  %i.bd = load atomic i32, ptr %i.ax monotonic, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !96
  %i.be = load i8, ptr %i.f, align 1, !tbaa !24   ; 2 uses
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.k, label %.thread.i.i76

bb.k:                                             ; preds = %bb.j
  %i.bg = zext nneg i8 %i.be to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit81

.thread.i.i76:                                    ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.bj = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %i.f, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.a)
  %.pre.i77 = load i32, ptr %i.a, align 4, !tbaa !96
  br label %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit81

_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit81:   ; preds = %bb.k, %.thread.i.i76
  %i.bk = phi i32 [ %.pre.i77, %.thread.i.i76 ], [ %i.bg, %bb.k ]
  %.1.i.i78 = phi ptr [ %i.bj, %.thread.i.i76 ], [ %i.bh, %bb.k ]
  %i.bl = zext i32 %i.bk to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr %.1.i.i78, ptr %5, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bl, ptr %i.bm, align 8
  call void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext true)
  %i.bn = load ptr, ptr %4, align 8, !tbaa !23
  invoke void (ptr, ptr, ...) @_ZN7rocksdb4InfoEPNS_6LoggerEPKcz(ptr noundef %i.bb, ptr noundef nonnull @.str.50, i64 noundef %7, i32 noundef %i.bd, ptr noundef %i.bn)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit81
  %i.bo = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !24
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.n

bb.m:                                             ; preds = %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit81
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.m
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.bt

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i, %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %.060, i64 8 ; 4 uses
  %i.ca = load atomic i32, ptr %i.bz monotonic, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !85
  %i.cd = icmp eq i32 %i.ca, %i.cc
  br i1 %i.cd, label %.noexc, label %bb.o

.noexc:                                           ; preds = %bb.n
  %i.ce = load atomic ptr, ptr %i.ad monotonic, align 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !78 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !54
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef 64, i64 noundef 0, ptr noundef null) ; 13 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !97, !nonnull !75, !align !98
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !78 ; 3 uses
  %i.co = load atomic i32, ptr %i.bz monotonic, align 4
  %i.cp = add i32 %i.co, 1
  store ptr %i.ck, ptr %i.ck, align 8, !tbaa !93
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !163
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 6 uses
  store i16 12, ptr %i.cr, align 8, !tbaa !106
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 18
  store i16 4, ptr %i.cs, align 2, !tbaa !107
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  store i32 536870912, ptr %i.ct, align 4, !tbaa !108
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.cm, ptr %i.cu, align 8, !tbaa !87
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  store ptr %i.cn, ptr %i.cv, align 8, !tbaa !109
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 40 ; 3 uses
  %i.cx = load ptr, ptr %i.cn, align 8, !tbaa !54
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i64 noundef 104, i64 noundef 0, ptr noundef null), !inline_history !160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  store ptr %i.da, ptr %i.cw, align 8, !tbaa !110
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i32 1, ptr %i.db, align 8, !tbaa !111
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 52
  store i32 1, ptr %i.dc, align 4, !tbaa !112
  %i.dd = load ptr, ptr %i.cv, align 8, !tbaa !109 ; 2 uses
  %i.de = load i16, ptr %i.cr, align 8, !tbaa !106
  %i.df = zext i16 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef ptr %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, i64 noundef %i.dg, i64 noundef 0, ptr noundef null), !inline_history !160
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !113
  %i.dm = load i16, ptr %i.cr, align 8, !tbaa !106
  %.not.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i.i, label %_ZN7rocksdb12_GLOBAL__N_120SkipListBucketHeaderC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %.pre.i.i = load ptr, ptr %i.cw, align 8, !tbaa !110
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.dn = phi ptr [ %.pre.i.i, %.lr.ph.preheader.i.i ], [ %i.dq, %.lr.ph.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i.i
  store atomic ptr null, ptr %i.dp release, align 8
  %i.dq = load ptr, ptr %i.cw, align 8, !tbaa !110 ; 2 uses
  %i.dr = load ptr, ptr %i.dl, align 8, !tbaa !113
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.i.i
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !114
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dt = load i16, ptr %i.cr, align 8, !tbaa !106
  %i.du = zext i16 %i.dt to i64
  %i.dv = icmp samesign ult i64 %indvars.iv.next.i.i, %i.du
  br i1 %i.dv, label %.lr.ph.i.i, label %_ZN7rocksdb12_GLOBAL__N_120SkipListBucketHeaderC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEj.exit, !llvm.loop !3

_ZN7rocksdb12_GLOBAL__N_120SkipListBucketHeaderC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEj.exit: ; preds = %.lr.ph.i.i, %.noexc
  %.not9097 = icmp eq ptr %i.ce, null
  br i1 %.not9097, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN7rocksdb12_GLOBAL__N_120SkipListBucketHeaderC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEj.exit, %.lr.ph99
  %.sroa.7.098 = phi ptr [ %i.dx, %.lr.ph99 ], [ %i.ce, %_ZN7rocksdb12_GLOBAL__N_120SkipListBucketHeaderC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEj.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.7.098, i64 8
  store ptr %i.dw, ptr %i.d, align 8, !tbaa !95
  call void @_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE6InsertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.dx = load atomic ptr, ptr %.sroa.7.098 acquire, align 8 ; 2 uses
  %.not90 = icmp eq ptr %i.dx, null
  br i1 %.not90, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99, %_ZN7rocksdb12_GLOBAL__N_120SkipListBucketHeaderC2ERKNS_11MemTableRep13KeyComparatorEPNS_9AllocatorEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store ptr %i.f, ptr %i.e, align 8, !tbaa !95
  call void @_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE6InsertERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  store atomic ptr %i.ck, ptr %i.ac release, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.dy = load atomic ptr, ptr %.060 monotonic, align 8 ; 5 uses
  %i.dz = load atomic i32, ptr %i.bz monotonic, align 8
  %i.ea = add i32 %i.dz, 1
  store atomic i32 %i.ea, ptr %i.bz monotonic, align 8
  %i.eb = icmp eq ptr %i.dy, null
  br i1 %i.eb, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.o
  store atomic ptr null, ptr %1 monotonic, align 8
  br label %bb.r

.lr.ph:                                           ; preds = %bb.o
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ed = load atomic ptr, ptr %i.dy acquire, align 8
  %.val123 = load ptr, ptr %i.ec, align 8, !tbaa !97 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ef = load ptr, ptr %.val123, align 8, !tbaa !54
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = call noundef i32 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %.val123, ptr noundef nonnull %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !161
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph125, label %._crit_edge

.lr.ph125:                                        ; preds = %.lr.ph, %bb.p
  %i.ek = phi ptr [ %i.em, %bb.p ], [ %i.ed, %.lr.ph ] ; 5 uses
  %.05091124 = phi ptr [ %i.ek, %bb.p ], [ %i.dy, %.lr.ph ] ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %._crit_edge.thread114, label %bb.p

._crit_edge.thread114:                            ; preds = %.lr.ph125
  store atomic ptr null, ptr %1 monotonic, align 8
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph125
  %i.em = load atomic ptr, ptr %i.ek acquire, align 8
  %.val = load ptr, ptr %i.ec, align 8, !tbaa !97 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load ptr, ptr %.val, align 8, !tbaa !54
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call noundef i32 %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %.val, ptr noundef nonnull %i.en, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !161
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %.lr.ph125, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.lr.ph
  %.092.lcssa = phi ptr [ null, %.lr.ph ], [ %.05091124, %bb.p ] ; 2 uses
  %.05091.lcssa = phi ptr [ %i.dy, %.lr.ph ], [ %i.ek, %bb.p ]
  store atomic ptr %.05091.lcssa, ptr %1 monotonic, align 8
  %.not = icmp eq ptr %.092.lcssa, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread114, %._crit_edge
  %.0.lcssa118 = phi ptr [ %.05091124, %._crit_edge.thread114 ], [ %.092.lcssa, %._crit_edge ]
  store atomic ptr %1, ptr %.0.lcssa118 release, align 8
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.thread, %._crit_edge
  store atomic ptr %1, ptr %.060 release, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.q, %bb.r, %._crit_edge100, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb11MemTableRep9InsertKeyEPv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11MemTableRep14InsertWithHintEPvPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb11MemTableRep17InsertKeyWithHintEPvPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11MemTableRep26InsertWithHintConcurrentlyEPvPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb11MemTableRep29InsertKeyWithHintConcurrentlyEPvPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2)
  ret i1 true
}

declare void @_ZN7rocksdb11MemTableRep18InsertConcurrentlyEPv(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb11MemTableRep21InsertKeyConcurrentlyEPv(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11MemTableRep16BatchPostProcessEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep8ContainsEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 0, ptr %i.a, align 4, !tbaa !96
  %i.b = load i8, ptr %1, align 1, !tbaa !24      ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %.thread.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit

.thread.i.i:                                      ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.g = call noundef ptr @_ZN7rocksdb22GetVarint32PtrFallbackEPKcS1_Pj(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.a)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !96
  br label %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit

_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit:     ; preds = %bb.b, %.thread.i.i
  %i.h = phi i32 [ %.pre.i, %.thread.i.i ], [ %i.d, %bb.b ]
  %.1.i.i = phi ptr [ %i.g, %.thread.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr %.1.i.i, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.k, align 8, !tbaa !86  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.l = add nsw i64 %i.i, -8
  store ptr %.1.i.i, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %.val, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call { ptr, i64 } %i.p(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !2 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.t, align 8, !tbaa !84
  %i.u = call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.r, i64 noundef %i.s)
  %4 = call noundef i64 @llvm.umulh.i64(i64 %.val.i, i64 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val4.i, i64 %4 ; 4 uses
  %i.x = load atomic ptr, ptr %i.w acquire, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListContainsEPNS0_4NodeERKNS_5SliceE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit
  %i.z = load atomic ptr, ptr %i.w acquire, align 8 ; 2 uses
  %i.aa = load atomic ptr, ptr %i.z monotonic, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread22, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load atomic ptr, ptr %i.w acquire, align 8 ; 3 uses
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8
  %i.ae = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ae, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit: ; preds = %bb.d
  %i.af = load atomic ptr, ptr %i.ac acquire, align 8 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread22

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread22: ; preds = %bb.c, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit
  %.1.i25 = phi ptr [ %i.af, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit ], [ %i.z, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread22
  %.010.i.i = phi ptr [ %.1.i25, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread22 ], [ %i.ai, %bb.f ] ; 3 uses
  %i.ah = icmp eq ptr %.010.i.i, null
  br i1 %i.ah, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListContainsEPNS0_4NodeERKNS_5SliceE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load atomic ptr, ptr %.010.i.i acquire, align 8
  %.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !97 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %.val.i.i, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !164
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep26FindGreaterOrEqualInBucketEPNS0_4NodeERKNS_5SliceE.exit.i

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep26FindGreaterOrEqualInBucketEPNS0_4NodeERKNS_5SliceE.exit.i: ; preds = %bb.f
  %.val.i16 = load ptr, ptr %i.ag, align 8, !tbaa !97 ; 2 uses
  %i.ap = load ptr, ptr %.val.i16, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %.val.i16, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !165
  %i.at = icmp eq i32 %i.as, 0
  br label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListContainsEPNS0_4NodeERKNS_5SliceE.exit

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread: ; preds = %bb.d, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit
  %i.au = load atomic ptr, ptr %i.w acquire, align 8 ; 4 uses
  %.not11 = icmp eq ptr %i.au, null
  br i1 %.not11, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListContainsEPNS0_4NodeERKNS_5SliceE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !110
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 8
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.022.i.i = phi ptr [ %i.aw, %bb.g ], [ %.123.i.i, %bb.j ] ; 2 uses
  %.019.i.i = phi i32 [ %i.az, %bb.g ], [ %.120.i.i, %bb.j ] ; 3 uses
  %.018.i.i = phi ptr [ null, %bb.g ], [ %.1.i.i18, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 8
  %i.bc = sext i32 %.019.i.i to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load atomic ptr, ptr %i.bd acquire, align 8 ; 6 uses
  %i.bf = icmp eq ptr %i.be, null                 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %.018.i.i
  %or.cond29.i.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond29.i.i, label %.thread.i.i17, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !117
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !54
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = call noundef i32 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bi, ptr noundef nonnull %1), !inline_history !166 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.thread.i, label %.thread.i.i17

.thread.i.i17:                                    ; preds = %bb.i, %bb.h
  %i.bo = phi i32 [ %i.bm, %bb.i ], [ 1, %bb.h ]  ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = icmp eq i32 %.019.i.i, 0
  %or.cond.i.i = and i1 %i.bq, %i.bp
  br i1 %or.cond.i.i, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %.thread.i.i17
  %i.br = icmp sgt i32 %i.bo, -1                  ; 3 uses
  %.123.i.i = select i1 %i.br, ptr %.022.i.i, ptr %i.be
  %i.bs = sext i1 %i.br to i32
  %.120.i.i = add nsw i32 %.019.i.i, %i.bs
  %.1.i.i18 = select i1 %i.br, ptr %i.be, ptr %.018.i.i
  br label %bb.h, !llvm.loop !4

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.i: ; preds = %.thread.i.i17
  br i1 %i.bf, label %bb.k, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.thread.i

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.thread.i: ; preds = %bb.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.i
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !95
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !54
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull %1, ptr noundef %i.bu), !inline_history !167
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListContainsEPNS0_4NodeERKNS_5SliceE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.thread.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.i
  br label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListContainsEPNS0_4NodeERKNS_5SliceE.exit

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListContainsEPNS0_4NodeERKNS_5SliceE.exit: ; preds = %bb.e, %bb.k, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.thread.i, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep26FindGreaterOrEqualInBucketEPNS0_4NodeERKNS_5SliceE.exit.i, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit
  %.2 = phi i1 [ false, %_ZN7rocksdb22GetLengthPrefixedSliceEPKc.exit ], [ false, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread ], [ true, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE18FindGreaterOrEqualERKS2_.exit.thread.i ], [ %i.at, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep26FindGreaterOrEqualInBucketEPNS0_4NodeERKNS_5SliceE.exit.i ], [ false, %bb.k ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11MemTableRep12MarkReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11MemTableRep11MarkFlushedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep3GetERKNS_9LookupKeyEPvPFbS5_PKcE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %reass.sub = sub i64 %i.g, %i.h
  %i.i = add i64 %reass.sub, -8
  store ptr %i.d, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call { ptr, i64 } %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.q, align 8, !tbaa !84
  %i.r = call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.o, i64 noundef %i.p)
  %6 = call noundef i64 @llvm.umulh.i64(i64 %.val.i, i64 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load ptr, ptr %i.s, align 8, !tbaa !91
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val4.i, i64 %6 ; 4 uses
  %i.u = load atomic ptr, ptr %i.t acquire, align 8
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load atomic ptr, ptr %i.t acquire, align 8 ; 2 uses
  %i.x = load atomic ptr, ptr %i.w monotonic, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load atomic ptr, ptr %i.t acquire, align 8 ; 3 uses
  %i.aa = load atomic ptr, ptr %i.z monotonic, align 8
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit: ; preds = %bb.c
  %i.ac = load atomic ptr, ptr %i.z acquire, align 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread39

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread39: ; preds = %bb.b, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit
  %.1.i42 = phi ptr [ %i.ac, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit ], [ %i.w, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !171 ; 2 uses
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !172
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  store ptr %i.ad, ptr %5, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread39
  %.010.i.i = phi ptr [ %.1.i42, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread39 ], [ %i.al, %.noexc ] ; 4 uses
  %i.ak = icmp eq ptr %.010.i.i, null
  br i1 %i.ak, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit.thread, label %.noexc

_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.critedge

.noexc:                                           ; preds = %bb.d
  %i.al = load atomic ptr, ptr %.010.i.i acquire, align 8
  %.val.i.i = load ptr, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.an = load ptr, ptr %.val.i.i, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(16) %5), !inline_history !168
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.d, label %.lr.ph51.preheader

.lr.ph51.preheader:                               ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.e
  %.sroa.8.050 = phi ptr [ %i.au, %bb.e ], [ %.010.i.i, %.lr.ph51.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.8.050, i64 8
  %i.at = call noundef zeroext i1 %3(ptr noundef %2, ptr noundef nonnull %i.as)
  br i1 %i.at, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph51
  %i.au = load atomic ptr, ptr %.sroa.8.050 acquire, align 8 ; 2 uses
  %.not44 = icmp eq ptr %i.au, null
  br i1 %.not44, label %.critedge, label %.lr.ph51

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread: ; preds = %bb.c, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit
  %i.av = load atomic ptr, ptr %i.t acquire, align 8 ; 4 uses
  %.not21 = icmp eq ptr %i.av, null
  br i1 %.not21, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread
  %i.aw = load ptr, ptr %1, align 8, !tbaa !173
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ba = load atomic i32, ptr %i.az monotonic, align 8
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.022.i.i = phi ptr [ %i.ay, %bb.f ], [ %.123.i.i, %bb.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.bb, %bb.f ], [ %.120.i.i, %bb.i ] ; 3 uses
  %.018.i.i = phi ptr [ null, %bb.f ], [ %.1.i.i, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 8
  %i.be = sext i32 %.019.i.i to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null                 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %.018.i.i
  %or.cond29.i.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond29.i.i, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !117
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !54
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bk, ptr noundef %i.aw), !inline_history !5 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.preheader, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.h, %bb.g
  %i.bq = phi i32 [ %i.bo, %bb.h ], [ 1, %bb.g ]  ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  %i.bs = icmp eq i32 %.019.i.i, 0
  %or.cond.i.i = and i1 %i.bs, %i.br
  br i1 %or.cond.i.i, label %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %.thread.i.i
  %i.bt = icmp sgt i32 %i.bq, -1                  ; 3 uses
  %.123.i.i = select i1 %i.bt, ptr %.022.i.i, ptr %i.bg
  %i.bu = sext i1 %i.bt to i32
  %.120.i.i = add nsw i32 %.019.i.i, %i.bu
  %.1.i.i = select i1 %i.bt, ptr %i.bg, ptr %.018.i.i
  br label %bb.g, !llvm.loop !4

_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit: ; preds = %.thread.i.i
  br i1 %i.bh, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.429.047 = phi ptr [ %i.by, %bb.j ], [ %i.bg, %.lr.ph.preheader ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.429.047, align 8, !tbaa !95
  %i.bw = call noundef zeroext i1 %3(ptr noundef %2, ptr noundef %i.bv)
  br i1 %i.bw, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.429.047, i64 8
  %i.by = load atomic ptr, ptr %i.bx acquire, align 8 ; 2 uses
  %.not43 = icmp eq ptr %i.by, null
  br i1 %.not43, label %.critedge, label %.lr.ph, !llvm.loop !169

.critedge:                                        ; preds = %bb.j, %.lr.ph, %bb.e, %.lr.ph51, %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit.thread, %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb11MemTableRep14GetAndValidateERKNS_9LookupKeyEPvPFbS4_PKcEbbRKSt8functionIFNS_6StatusES6_bEE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(32) %7) unnamed_addr #3 comdat align 2 {
bb.a:
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr @.str.54, ptr %8, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 33, ptr %i.a, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr @.str, ptr %9, align 8, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !120
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  ret void
}

declare void @_ZN7rocksdb11MemTableRep8MultiGetEmPKPKcPPvPFbS5_S2_EbbRKSt8functionIFNS_6StatusES2_bEE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZN7rocksdb11MemTableRep21ApproximateNumEntriesERKNS_5SliceES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #13 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11MemTableRep18UniqueRandomSampleEmmPSt13unordered_setIPKcSt4hashIS3_ESt8equal_toIS3_ESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep22ApproximateMemoryUsageEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #15 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11MemTableRepD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRepD0Ev(ptr noundef nonnull align 8 dereferenceable(69) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep11GetIteratorEPNS_5ArenaE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(69) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator11SeekForPrevERKS2_:bb.a
  %i.ay = load ptr, ptr %1, align 8, !tbaa !95
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !95
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.ay, ptr noundef %i.az), !inline_history !201
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %i.bf = load ptr, ptr %0, align 8, !tbaa !123   ; 3 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !124
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !110
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bk = load atomic i32, ptr %i.bj monotonic, align 8
  %i.bl = add nsw i32 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %.split.us.i.i.outer

.split.us.i.i.outer:                              ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i.i, %bb.j
  %.021.us.i.i.ph = phi ptr [ %i.bi, %bb.j ], [ %i.bq, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i.i ] ; 4 uses
  %.018.us.i.i.ph = phi i32 [ %i.bl, %bb.j ], [ %.018.us.i.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i.i ]
  %.017.us.i.i.ph = phi ptr [ null, %bb.j ], [ %.017.us.i.i, %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.021.us.i.i.ph, i64 8
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i.outer, %bb.k
  %.018.us.i.i = phi i32 [ %i.ca, %bb.k ], [ %.018.us.i.i.ph, %.split.us.i.i.outer ] ; 4 uses
  %.017.us.i.i = phi ptr [ %i.bq, %bb.k ], [ %.017.us.i.i.ph, %.split.us.i.i.outer ] ; 2 uses
  %i.bo = sext i32 %.018.us.i.i to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load atomic ptr, ptr %i.bp acquire, align 8 ; 5 uses
  %.not.us.i.i = icmp eq ptr %i.bq, %.017.us.i.i
  %.not.i.us.i.i = icmp eq ptr %i.bq, null
  %or.cond.us.i.i = or i1 %.not.us.i.i, %.not.i.us.i.i
  br i1 %or.cond.us.i.i, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i.i, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i.i

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i.i: ; preds = %.split.us.i.i
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !117
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !95
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef i32 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bs, ptr noundef %i.bt), !inline_history !7
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.split.us.i.i.outer, label %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i.i, !llvm.loop !6

_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i.i: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.us.i.i, %.split.us.i.i
  %i.bz = icmp eq i32 %.018.us.i.i, 0
  br i1 %i.bz, label %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4PrevEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i.i
  %i.ca = add nsw i32 %.018.us.i.i, -1
  br label %.split.us.i.i, !llvm.loop !6

_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4PrevEv.exit: ; preds = %_ZNK7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE14KeyIsAfterNodeERKS2_PNS7_4NodeE.exit.thread.us.i.i
  %i.cb = load ptr, ptr %0, align 8, !tbaa !123   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !110
  %i.ce = icmp eq ptr %.021.us.i.i.ph, %i.cd
  %spec.store.select.i3 = select i1 %i.ce, ptr null, ptr %.021.us.i.i.ph ; 2 uses
  store ptr %spec.store.select.i3, ptr %i.at, align 8
  %.not4 = icmp eq ptr %spec.store.select.i3, null
  br i1 %.not4, label %.critedge, label %.lr.ph, !llvm.loop !202

.critedge:                                        ; preds = %.lr.ph, %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4PrevEv.exit, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(48) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #26, !inline_history !203
  br label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD2Ev.exit

_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIteratorD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIterator5ValidEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.in.in = select i1 %.not, ptr %i.d, ptr %i.c
  %.0.in = load ptr, ptr %.0.in.in, align 8, !tbaa !37
  %.0 = icmp ne ptr %.0.in, null
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIterator3keyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIterator4NextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  store ptr %i.f, ptr %i.c, align 8, !tbaa !124
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !135
  %i.i = load atomic ptr, ptr %i.h acquire, align 8
  store ptr %i.i, ptr %i.g, align 8, !tbaa !135
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep15DynamicIterator4SeekERKNS_5SliceEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %4 = alloca %"class.rocksdb::IterKey", align 8  ; 28 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213, !nonnull !75, !align !98
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load ptr, ptr %i.c, align 8, !tbaa !86  ; 2 uses
  %.val18 = load ptr, ptr %1, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val19 = load i64, ptr %i.d, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.e = add i64 %.val19, -8
  store ptr %.val18, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %.val, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call { ptr, i64 } %i.i(ptr noundef nonnull align 8 dereferenceable(32) %.val, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !2 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !213, !nonnull !75, !align !98 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val.i = load i64, ptr %i.n, align 8, !tbaa !84
  %i.o = call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.k, i64 noundef %i.l)
  %5 = call noundef i64 @llvm.umulh.i64(i64 %.val.i, i64 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.val4.i = load ptr, ptr %i.p, align 8, !tbaa !91
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val4.i, i64 %5 ; 4 uses
  %i.r = load atomic ptr, ptr %i.q acquire, align 8
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !136  ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i: ; preds = %bb.b
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit

_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.w = load atomic ptr, ptr %i.q acquire, align 8 ; 2 uses
  %i.x = load atomic ptr, ptr %i.w monotonic, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load atomic ptr, ptr %i.q acquire, align 8 ; 3 uses
  %i.aa = load atomic ptr, ptr %i.z monotonic, align 8
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit: ; preds = %bb.d
  %i.ac = load atomic ptr, ptr %i.z acquire, align 8 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread, label %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48: ; preds = %bb.c, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit
  %.1.i51 = phi ptr [ %i.ac, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit ], [ %i.w, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !136 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !136
  %.not.i.i22 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i22, label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i23

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i23: ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24

_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24: ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread48, %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.1.i51, ptr %i.af, align 8, !tbaa !134
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !131
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24
  %.010.i.i = phi ptr [ %.1.i51, %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit24 ], [ %i.al, %bb.f ] ; 4 uses
  %i.ak = icmp eq ptr %.010.i.i, null
  br i1 %i.ak, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load atomic ptr, ptr %.010.i.i acquire, align 8
  %.val.i.i = load ptr, ptr %i.aj, align 8, !tbaa !97 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.an = load ptr, ptr %.val.i.i, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i, ptr noundef nonnull %i.am, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !204
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit

_ZN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIterator4SeekERKNS_5SliceEPKc.exit: ; preds = %bb.e, %bb.f
  store ptr %.010.i.i, ptr %i.ag, align 8, !tbaa !135
  br label %bb.ae

_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread: ; preds = %bb.d, %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit
  %i.as = load atomic ptr, ptr %i.q acquire, align 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !136 ; 3 uses
  %.not52 = icmp eq ptr %i.au, null
  br i1 %.not52, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread
  %i.av = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !123
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr null, ptr %i.ax, align 8, !tbaa !124
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !136 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !136
  %.not.i.i25 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i25, label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27, label %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i26

_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i26: ; preds = %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 16) #26
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27

bb.h:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_115HashLinkListRep20GetLinkListFirstNodeERSt6atomicIPvE.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.az, ptr %i.au, align 8, !tbaa !123
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr null, ptr %i.ba, align 8, !tbaa !124
  br label %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27

_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27: ; preds = %_ZNKSt14default_deleteIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorEEclEPS9_.exit.i.i26, %bb.g, %bb.h
  %.not15 = icmp eq ptr %2, null
  br i1 %.not15, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !136 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !110
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bg = load atomic i32, ptr %i.bf monotonic, align 8
  %i.bh = add nsw i32 %i.bg, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.022.i.i = phi ptr [ %i.be, %bb.i ], [ %.123.i.i, %bb.l ] ; 2 uses
  %.019.i.i = phi i32 [ %i.bh, %bb.i ], [ %.120.i.i, %bb.l ] ; 3 uses
  %.018.i.i = phi ptr [ null, %bb.i ], [ %.1.i.i, %bb.l ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 8
  %i.bk = sext i32 %.019.i.i to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load atomic ptr, ptr %i.bl acquire, align 8 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  %i.bo = icmp eq ptr %i.bm, %.018.i.i
  %or.cond29.i.i = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %or.cond29.i.i, label %.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !115, !nonnull !75, !align !98 ; 2 uses
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !117
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !54
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef %i.bq, ptr noundef nonnull %2), !inline_history !5 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %bb.j
  %i.bw = phi i32 [ %i.bu, %bb.k ], [ 1, %bb.j ]  ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = icmp eq i32 %.019.i.i, 0
  %or.cond.i.i = and i1 %i.by, %i.bx
  br i1 %or.cond.i.i, label %_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %.thread.i.i
  %i.bz = icmp sgt i32 %i.bw, -1                  ; 3 uses
  %.123.i.i = select i1 %i.bz, ptr %.022.i.i, ptr %i.bm
  %i.ca = sext i1 %i.bz to i32
  %.120.i.i = add nsw i32 %.019.i.i, %i.ca
  %.1.i.i = select i1 %i.bz, ptr %i.bm, ptr %.018.i.i
  br label %bb.j, !llvm.loop !4

_ZN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8Iterator4SeekERKS2_.exit: ; preds = %bb.k, %.thread.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bm, ptr %i.cb, align 8, !tbaa !124
  br label %bb.ae

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorESt14default_deleteIS9_EE5resetEPS9_.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store ptr %i.cc, ptr %4, align 8, !tbaa !139
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !140
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !141
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 39, ptr %i.cf, align 8, !tbaa !142
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 71 ; 2 uses
  store i8 1, ptr %i.cg, align 1, !tbaa !214
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !143
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 39, ptr %i.cj, align 8, !tbaa !144
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr @.str, ptr %i.ck, align 8, !tbaa !119
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 0, ptr %i.cl, align 8, !tbaa !120
  %.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %4, i64 144
  store ptr @.str, ptr %.ptr.1.i.i, align 8, !tbaa !119
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 152
  store i64 0, ptr %i.cm, align 8, !tbaa !120
  %.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %4, i64 160
  store ptr @.str, ptr %.ptr.2.i.i, align 8, !tbaa !119
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 0, ptr %i.cn, align 8, !tbaa !120
  %.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %4, i64 176
  store ptr @.str, ptr %.ptr.3.i.i, align 8, !tbaa !119
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 184
  store i64 0, ptr %i.co, align 8, !tbaa !120
  %.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %4, i64 192
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_hash_linklist_rep.cc:bb.a
  %i.kc = icmp eq ptr %i.kb, %i.cf
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit159.i
  %i.kd = load i64, ptr %i.cf, align 8, !tbaa !24
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit159.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i, %bb.bi
  %.640.i = phi ptr [ %.438.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i ], [ %i.ca, %bb.bi ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i6 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i ], [ %i.hq, %bb.bi ]
  %.9.i = phi i1 [ %.7.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.i ], [ false, %bb.bi ]
  call void @_ZN7rocksdb14OptionTypeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(180) dereferenceable(180) %7) #30
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.bh
  %.741.i = phi ptr [ %.640.i, %bb.cn ], [ %i.ca, %bb.bh ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i5 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i6, %bb.cn ], [ %i.hp, %bb.bh ]
  %.10.i = phi i1 [ %.9.i, %bb.cn ], [ false, %bb.bh ]
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !36 ; 2 uses
  %.not.i163.i = icmp eq ptr %i.kg, null
  br i1 %.not.i163.i, label %_ZNSt14_Function_baseD2Ev.exit164.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kh = invoke noundef zeroext i1 %i.kg(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit164.i unwind label %bb.cq ; 0 uses

bb.cq:                                            ; preds = %bb.cp
  %i.ki = landingpad { ptr, i32 }
          catch ptr null
  %i.kj = extractvalue { ptr, i32 } %i.ki, 0
  call void @__clang_call_terminate(ptr %i.kj) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit164.i:              ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.kk = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !36 ; 2 uses
  %.not.i165.i = icmp eq ptr %i.kl, null
  br i1 %.not.i165.i, label %_ZNSt14_Function_baseD2Ev.exit166.i, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit164.i
  %i.km = invoke noundef zeroext i1 %i.kl(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit166.i unwind label %bb.cs ; 0 uses

bb.cs:                                            ; preds = %bb.cr
  %i.kn = landingpad { ptr, i32 }
          catch ptr null
  %i.ko = extractvalue { ptr, i32 } %i.kn, 0
  call void @__clang_call_terminate(ptr %i.ko) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit166.i:              ; preds = %bb.cr, %_ZNSt14_Function_baseD2Ev.exit164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.kp = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !36 ; 2 uses
  %.not.i167.i = icmp eq ptr %i.kq, null
  br i1 %.not.i167.i, label %_ZNSt14_Function_baseD2Ev.exit168.i, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit166.i
  %i.kr = invoke noundef zeroext i1 %i.kq(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit168.i unwind label %bb.cu ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.ks = landingpad { ptr, i32 }
          catch ptr null
  %i.kt = extractvalue { ptr, i32 } %i.ks, 0
  call void @__clang_call_terminate(ptr %i.kt) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit168.i:              ; preds = %bb.ct, %_ZNSt14_Function_baseD2Ev.exit166.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.ku = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.cb
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit168.i
  %i.kw = load i64, ptr %i.cb, align 8, !tbaa !24
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit168.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i, %bb.bg
  %.943.i = phi ptr [ %.741.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i ], [ %0, %bb.bg ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i ], [ %i.ho, %bb.bg ]
  %.12.i = phi i1 [ %.10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171.i ], [ false, %bb.bg ]
  call void @_ZN7rocksdb14OptionTypeInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(180) dereferenceable(180) %2) #30
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.bf
  %.1044.i = phi ptr [ %.943.i, %bb.cv ], [ %0, %bb.bf ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.cv ], [ %i.hn, %bb.bf ]
  %.13.i = phi i1 [ %.12.i, %bb.cv ], [ false, %bb.bf ]
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !36 ; 2 uses
  %.not.i172.i = icmp eq ptr %i.kz, null
  br i1 %.not.i172.i, label %_ZNSt14_Function_baseD2Ev.exit173.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.la = invoke noundef zeroext i1 %i.kz(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit173.i unwind label %bb.cy ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit173.i:              ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.ld = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !36 ; 2 uses
  %.not.i174.i = icmp eq ptr %i.le, null
  br i1 %.not.i174.i, label %_ZNSt14_Function_baseD2Ev.exit175.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit173.i
  %i.lf = invoke noundef zeroext i1 %i.le(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit175.i unwind label %bb.da ; 0 uses

bb.da:                                            ; preds = %bb.cz
  %i.lg = landingpad { ptr, i32 }
          catch ptr null
  %i.lh = extractvalue { ptr, i32 } %i.lg, 0
  call void @__clang_call_terminate(ptr %i.lh) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit175.i:              ; preds = %bb.cz, %_ZNSt14_Function_baseD2Ev.exit173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !36 ; 2 uses
  %.not.i176.i = icmp eq ptr %i.lj, null
  br i1 %.not.i176.i, label %_ZNSt14_Function_baseD2Ev.exit177.i, label %bb.db

bb.db:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit175.i
  %i.lk = invoke noundef zeroext i1 %i.lj(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit177.i unwind label %bb.dc ; 0 uses

bb.dc:                                            ; preds = %bb.db
  %i.ll = landingpad { ptr, i32 }
          catch ptr null
  %i.lm = extractvalue { ptr, i32 } %i.ll, 0
  call void @__clang_call_terminate(ptr %i.lm) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit177.i:              ; preds = %bb.db, %_ZNSt14_Function_baseD2Ev.exit175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ln = load ptr, ptr %1, align 8, !tbaa !23    ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.bx
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit177.i
  %i.lp = load i64, ptr %i.bx, align 8, !tbaa !24
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit177.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.lr = icmp eq ptr %0, %.1044.i
  %or.cond.i = select i1 %.13.i, i1 true, i1 %i.lr
  br i1 %or.cond.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i, %.preheader.i
  %i.ls = phi ptr [ %i.lt, %.preheader.i ], [ %.1044.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i ]
  %i.lt = getelementptr inbounds i8, ptr %i.ls, i64 -216 ; 3 uses
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14OptionTypeInfoEED2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.lt) #30
  %i.lu = icmp eq ptr %i.lt, %0
  br i1 %i.lu, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  br label %common.resume

__cxx_global_var_init.39.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #30
  %i.lv = call i32 @__cxa_atexit(ptr nonnull @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14OptionTypeInfoESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev, ptr nonnull @_ZN7rocksdb12_GLOBAL__N_118hash_linklist_infoB5cxx11E, ptr nonnull @__dso_handle) #30 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress norecurse nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { nounwind }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{!0, !50}
!1 = distinct !{!1, !50}
!2 = distinct !{null}
!3 = distinct !{!3, !50}
!4 = distinct !{!4, !50}
!5 = distinct !{null, null}
!6 = distinct !{!6, !50}
!7 = distinct !{null, null, null}
!8 = distinct !{!8, !50}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{i32 7, !"frame-pointer", i32 4}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"long", !14, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !14, i64 16}
!23 = !{!22, !19, i64 0}
!24 = !{!14, !14, i64 0}
!25 = !{!"_ZTSSt14_Function_base", !14, i64 0, !18, i64 16}
!26 = !{!"_ZTSSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PvEE", !25, i64 0, !18, i64 24}
!27 = !{!"_ZTSSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvPSA_EE", !25, i64 0, !18, i64 24}
!28 = !{!"_ZTSSt8functionIFbRKN7rocksdb13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSD_PS9_EE", !25, i64 0, !18, i64 24}
!29 = !{!"_ZTSSt8functionIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvEE", !25, i64 0, !18, i64 24}
!30 = !{!"_ZTSSt8functionIFN7rocksdb6StatusERKNS0_9DBOptionsERKNS0_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvEE", !25, i64 0, !18, i64 24}
!31 = !{!"_ZTSN7rocksdb10OptionTypeE", !14, i64 0}
!32 = !{!"_ZTSN7rocksdb22OptionVerificationTypeE", !14, i64 0}
!33 = !{!"_ZTSN7rocksdb15OptionTypeFlagsE", !14, i64 0}
!34 = !{!"_ZTSN7rocksdb14OptionTypeInfoE", !15, i64 0, !26, i64 8, !27, i64 40, !28, i64 72, !29, i64 104, !30, i64 136, !31, i64 168, !32, i64 172, !33, i64 176}
!35 = !{!34, !15, i64 0}
!36 = !{!25, !18, i64 16}
!37 = !{!18, !18, i64 0}
!38 = !{!20, !19, i64 0}
!39 = !{!22, !21, i64 8}
!40 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!41 = !{!"any p2 pointer", !18, i64 0}
!42 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !41, i64 0}
!43 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!44 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !43, i64 0}
!45 = !{!"float", !14, i64 0}
!46 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !45, i64 0, !21, i64 8}
!47 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14OptionTypeInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !42, i64 0, !21, i64 8, !44, i64 16, !21, i64 24, !46, i64 32, !43, i64 48}
!48 = !{!47, !43, i64 16}
!49 = !{!44, !43, i64 0}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!47, !42, i64 0}
!52 = !{!47, !21, i64 8}
!53 = !{!"vtable pointer", !13, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"p1 _ZTSN7rocksdb12Configurable17RegisteredOptionsE", !18, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE", !58, i64 0}
!60 = !{!"_ZTSN7rocksdb12ConfigurableE", !59, i64 8}
!61 = !{!"_ZTSN7rocksdb12CustomizableE", !60, i64 0}
!62 = !{!"_ZTSN7rocksdb18MemTableRepFactoryE", !61, i64 0}
!63 = !{!"bool", !14, i64 0}
!64 = !{!"_ZTSN7rocksdb12_GLOBAL__N_122HashLinkListRepOptionsE", !21, i64 0, !15, i64 8, !21, i64 16, !15, i64 24, !63, i64 28}
!65 = !{!"_ZTSN7rocksdb12_GLOBAL__N_122HashLinkListRepFactoryE", !62, i64 0, !64, i64 32}
!66 = !{!65, !21, i64 32}
!67 = !{!65, !15, i64 40}
!68 = !{!65, !21, i64 48}
!69 = !{!65, !15, i64 56}
!70 = !{!65, !63, i64 60}
!71 = !{!56, !55, i64 0}
!72 = !{!56, !55, i64 8}
!73 = !{!56, !55, i64 16}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!"p1 _ZTSN7rocksdb9AllocatorE", !18, i64 0}
!77 = !{!"_ZTSN7rocksdb11MemTableRepE", !76, i64 8}
!78 = !{!77, !76, i64 8}
!79 = !{!"p1 _ZTSSt6atomicIPvE", !18, i64 0}
!80 = !{!"p1 _ZTSN7rocksdb14SliceTransformE", !18, i64 0}
!81 = !{!"p1 _ZTSN7rocksdb11MemTableRep13KeyComparatorE", !18, i64 0}
!82 = !{!"p1 _ZTSN7rocksdb6LoggerE", !18, i64 0}
!83 = !{!"_ZTSN7rocksdb12_GLOBAL__N_115HashLinkListRepE", !77, i64 0, !21, i64 16, !79, i64 24, !15, i64 32, !80, i64 40, !81, i64 48, !82, i64 56, !15, i64 64, !63, i64 68}
!84 = !{!83, !21, i64 16}
!85 = !{!83, !15, i64 32}
!86 = !{!83, !80, i64 40}
!87 = !{!81, !81, i64 0}
!88 = !{!83, !82, i64 56}
!89 = !{!83, !15, i64 64}
!90 = !{!83, !63, i64 68}
!91 = !{!83, !79, i64 24}
!92 = !{!"_ZTSSt13__atomic_baseIPvE", !18, i64 0}
!93 = !{!92, !18, i64 0}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!19, !19, i64 0}
!96 = !{!15, !15, i64 0}
!97 = !{!83, !81, i64 48}
!98 = !{i64 8}
!99 = !{!"short", !14, i64 0}
!100 = !{!"p1 _ZTSN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE4NodeE", !18, i64 0}
!101 = !{!"_ZTSSt13__atomic_baseIiE", !15, i64 0}
!102 = !{!"_ZTSSt6atomicIiE", !101, i64 0}
!103 = !{!"_ZTSN7rocksdb13RelaxedAtomicIiEE", !102, i64 0}
!104 = !{!"p2 _ZTSN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE4NodeE", !41, i64 0}
!105 = !{!"_ZTSN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEEE", !99, i64 0, !99, i64 2, !15, i64 4, !81, i64 8, !76, i64 16, !100, i64 24, !103, i64 32, !15, i64 36, !104, i64 40}
!106 = !{!105, !99, i64 0}
!107 = !{!105, !99, i64 2}
!108 = !{!105, !15, i64 4}
!109 = !{!105, !76, i64 16}
!110 = !{!105, !100, i64 24}
!111 = !{!101, !15, i64 0}
!112 = !{!105, !15, i64 36}
!113 = !{!105, !104, i64 40}
!114 = !{!100, !100, i64 0}
!115 = !{!105, !81, i64 8}
!116 = !{!"_ZTSN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE4NodeE", !19, i64 0, !14, i64 8}
!117 = !{!116, !19, i64 0}
!118 = !{!"_ZTSN7rocksdb5SliceE", !19, i64 0, !21, i64 8}
!119 = !{!118, !19, i64 0}
!120 = !{!118, !21, i64 8}
!121 = !{!"p1 _ZTSN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEEE", !18, i64 0}
!122 = !{!"_ZTSN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8IteratorE", !121, i64 0, !100, i64 8}
!123 = !{!122, !121, i64 0}
!124 = !{!122, !100, i64 8}
!125 = !{!121, !121, i64 0}
!126 = !{!76, !76, i64 0}
!127 = !{!"_ZTSN7rocksdb11MemTableRep8IteratorE"}
!128 = !{!"p1 _ZTSN7rocksdb12_GLOBAL__N_115HashLinkListRepE", !18, i64 0}
!129 = !{!"p1 _ZTSN7rocksdb12_GLOBAL__N_14NodeE", !18, i64 0}
!130 = !{!"_ZTSN7rocksdb12_GLOBAL__N_115HashLinkListRep16LinkListIteratorE", !127, i64 0, !128, i64 8, !129, i64 16, !129, i64 24}
!131 = !{!130, !128, i64 8}
!132 = !{!"p1 _ZTSN7rocksdb8SkipListIPKcRKNS_11MemTableRep13KeyComparatorEE8IteratorE", !18, i64 0}
!133 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb8SkipListIPKcRKNS0_11MemTableRep13KeyComparatorEE8IteratorELb0EE", !132, i64 0}
!134 = !{!130, !129, i64 16}
!135 = !{!130, !129, i64 24}
!136 = !{!132, !132, i64 0}
!137 = !{!"_ZTSSt5arrayIN7rocksdb5SliceELm5EE", !14, i64 0}
!138 = !{!"_ZTSN7rocksdb7IterKeyE", !19, i64 0, !19, i64 8, !21, i64 16, !21, i64 24, !14, i64 32, !63, i64 71, !14, i64 72, !19, i64 112, !21, i64 120, !137, i64 128}
!139 = !{!138, !19, i64 0}
!140 = !{!138, !19, i64 8}
!141 = !{!138, !21, i64 16}
!142 = !{!138, !21, i64 24}
!143 = !{!138, !19, i64 112}
!144 = !{!138, !21, i64 120}
!145 = !{!47, !43, i64 48}
!146 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14OptionTypeInfoEELb1EEEEEE", !18, i64 0}
!147 = !{!47, !21, i64 24}
!148 = !{!43, !43, i64 0}
!149 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !21, i64 0}
!150 = !{!149, !21, i64 0}
!151 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7rocksdb14OptionTypeInfoEELb1EEE", !18, i64 0}
!152 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb14OptionTypeInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !146, i64 0, !151, i64 8}
!153 = !{!152, !151, i64 8}
!154 = !{!34, !31, i64 168}
!155 = !{!34, !32, i64 172}
!156 = !{!34, !33, i64 176}
!157 = distinct !{null}
!158 = distinct !{!158, !50}
!159 = distinct !{!159, !94}
!160 = distinct !{null}
!161 = distinct !{null}
end_hunk_2
