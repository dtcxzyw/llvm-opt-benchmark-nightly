Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/key_map_internal?download=true
inline.NumInlined: 327
inline.NumDeleted: 153
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.arrow::util::TempVectorHolder" = type { ptr, ptr, i32, i32 }
%"class.arrow::util::TempVectorHolder.3" = type { ptr, ptr, i32, i32 }
%"class.arrow::Status" = type { ptr }
%"class.arrow::util::TempVectorHolder.4" = type { ptr, ptr, i32, i32 }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::internal::AlignedStorage" = type { %"union.std::aligned_storage<8, 8>::type" }
%"union.std::aligned_storage<8, 8>::type" = type { [8 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.10" }
%"struct.std::_Head_base.10" = type { ptr }

$_ZN5arrow4util16TempVectorHolderIjED2Ev = comdat any

$_ZN5arrow4util16TempVectorHolderItED2Ev = comdat any

$_ZN5arrow4util16TempVectorHolderIhED2Ev = comdat any

$_ZN5arrow6StatusC2ERKS0_ = comdat any

$_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt14default_deleteIN5arrow6BufferEE = comdat any

@_ZN5arrow8bit_utilL15kFlippedBitmaskE = internal unnamed_addr constant [8 x i8] c"\FE\FD\FB\F7\EF\DF\BF\7F", align 1, !guid !18
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8, !guid !19
@_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8, !guid !20
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1, !guid !21
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8, !guid !22
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1, !guid !23
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8, !guid !24
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1, !guid !25
@_ZTSSt14default_deleteIN5arrow6BufferEE = linkonce_odr constant [36 x i8] c"St14default_deleteIN5arrow6BufferEE\00", comdat, align 1, !guid !26

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK5arrow7compute10SwissTable17extract_group_idsEiPKtPKjPKhPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 align 2 !guid !116 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 19 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36   ; 6 uses
  %i.c = icmp slt i32 %i.b, 6
  %i.d = icmp samesign ult i32 %i.b, 14
  %6 = icmp slt i32 %i.b, 30
  %i.e = select i1 %6, i32 32, i32 64
  %i.f = select i1 %i.d, i32 16, i32 %i.e
  %i.g = select i1 %i.c, i32 8, i32 %i.f
  switch i32 %i.g, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit [
    i32 8, label %bb.b
    i32 16, label %bb.e
    i32 32, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %.not44 = icmp eq ptr %2, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 6 uses
  %i.m = icmp eq i32 %i.b, 0                      ; 2 uses
  %i.n = icmp sgt i32 %1, 0                       ; 4 uses
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %.preheader.i, label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.c
  br i1 %i.n, label %.lr.ph.preheader.i, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit

.lr.ph.preheader.i:                               ; preds = %.preheader28.i
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter206 = and i64 %wide.trip.count.i, 1
  %i.o = icmp eq i32 %1, 1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter210 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.c
  br i1 %i.n, label %.lr.ph32.preheader.i, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit

.lr.ph32.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count38.i = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter212 = and i64 %wide.trip.count38.i, 1
  %i.p = icmp eq i32 %1, 1
  br i1 %i.p, label %.lr.ph32.i.epil.preheader, label %.lr.ph32.preheader.i.new

.lr.ph32.preheader.i.new:                         ; preds = %.lr.ph32.preheader.i
  %unroll_iter216 = and i64 %wide.trip.count38.i, 2147483646
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i, %.lr.ph32.preheader.i.new
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph32.preheader.i.new ], [ %indvars.iv.next36.i.1, %.lr.ph32.i ] ; 3 uses
  %niter217 = phi i64 [ 0, %.lr.ph32.preheader.i.new ], [ %niter217.next.1, %.lr.ph32.i ]
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i
  %i.r = load i16, ptr %i.q, align 2, !tbaa !39
  %i.s = load ptr, ptr %i.j, align 8
  %i.t = zext i16 %i.r to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !40
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.t
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !41
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !39
  %i.af = load ptr, ptr %i.j, align 8
  %i.ag = zext i16 %i.ae to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !40
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ag
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !41
  %indvars.iv.next36.i.1 = add nuw nsw i64 %indvars.iv35.i, 2 ; 2 uses
  %niter217.next.1 = add i64 %niter217, 2         ; 2 uses
  %niter217.ncmp.1 = icmp eq i64 %niter217.next.1, %unroll_iter216
  br i1 %niter217.ncmp.1, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit156.unr-lcssa, label %.lr.ph32.i, !llvm.loop !101

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter211 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter211.next.1, %.lr.ph.i ]
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = zext i16 %i.aq to i64                   ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !41
  %i.au = load i32, ptr %i.a, align 4, !tbaa !36
  %i.av = sub nsw i32 32, %i.au
  %i.aw = lshr i32 %i.at, %i.av
  %i.ax = shl i32 %i.aw, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 %i.ar
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !40
  %i.ba = zext i8 %i.az to i32
  %i.bb = add i32 %i.ax, %i.ba
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !40
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !41
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !39
  %i.bk = zext i16 %i.bj to i64                   ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !36
  %i.bo = sub nsw i32 32, %i.bn
  %i.bp = lshr i32 %i.bm, %i.bo
  %i.bq = shl i32 %i.bp, 4
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 %i.bk
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !40
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add i32 %i.bq, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !40
  %i.by = zext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bk
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !41
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter211.next.1 = add i64 %niter211, 2         ; 2 uses
  %niter211.ncmp.1 = icmp eq i64 %niter211.next.1, %unroll_iter210
  br i1 %niter211.ncmp.1, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit157.unr-lcssa, label %.lr.ph.i, !llvm.loop !102

bb.d:                                             ; preds = %bb.b
  br i1 %i.m, label %.preheader.i51, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.d
  br i1 %i.n, label %.lr.ph.preheader.i45, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit

.lr.ph.preheader.i45:                             ; preds = %.preheader26.i
  %wide.trip.count.i46 = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter218 = and i64 %wide.trip.count.i46, 1
  %i.ca = icmp eq i32 %1, 1
  br i1 %i.ca, label %.lr.ph.i47.epil.preheader, label %.lr.ph.preheader.i45.new

.lr.ph.preheader.i45.new:                         ; preds = %.lr.ph.preheader.i45
  %unroll_iter222 = and i64 %wide.trip.count.i46, 2147483646
  br label %.lr.ph.i47

.preheader.i51:                                   ; preds = %bb.d
  br i1 %i.n, label %.lr.ph30.preheader.i, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit

.lr.ph30.preheader.i:                             ; preds = %.preheader.i51
  %wide.trip.count36.i = zext nneg i32 %1 to i64  ; 2 uses
  %xtraiter224 = and i64 %wide.trip.count36.i, 3  ; 3 uses
  %i.cb = add nsw i32 %1, -1
  %i.cc = icmp ult i32 %i.cb, 3
  br i1 %i.cc, label %.lr.ph30.i.epil.preheader, label %.lr.ph30.preheader.i.new

.lr.ph30.preheader.i.new:                         ; preds = %.lr.ph30.preheader.i
  %unroll_iter228 = and i64 %wide.trip.count36.i, 2147483644
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.lr.ph30.i, %.lr.ph30.preheader.i.new
  %indvars.iv33.i = phi i64 [ 0, %.lr.ph30.preheader.i.new ], [ %indvars.iv.next34.i.3, %.lr.ph30.i ] ; 6 uses
  %niter229 = phi i64 [ 0, %.lr.ph30.preheader.i.new ], [ %niter229.next.3, %.lr.ph30.i ]
  %i.cd = load ptr, ptr %i.j, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv33.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !40
  %i.ck = zext i8 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv33.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !41
  %indvars.iv.next34.i = or disjoint i64 %indvars.iv33.i, 1 ; 2 uses
  %i.cm = load ptr, ptr %i.j, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next34.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !40
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !40
  %i.ct = zext i8 %i.cs to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next34.i
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !41
  %indvars.iv.next34.i.1 = or disjoint i64 %indvars.iv33.i, 2 ; 2 uses
  %i.cv = load ptr, ptr %i.j, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next34.i.1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !40
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load i8, ptr %i.da, align 1, !tbaa !40
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next34.i.1
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !41
  %indvars.iv.next34.i.2 = or disjoint i64 %indvars.iv33.i, 3 ; 2 uses
  %i.de = load ptr, ptr %i.j, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next34.i.2
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !40
end_hunk_0
begin_hunk_1_@_ZNK5arrow7compute10SwissTable17extract_group_idsEiPKtPKjPKhPj:bb.a
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit, label %.lr.ph32.i90.epil.preheader

.lr.ph32.i90.epil.preheader:                      ; preds = %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit164.unr-lcssa, %.lr.ph32.preheader.i88
  %indvars.iv35.i91.epil.init = phi i64 [ 0, %.lr.ph32.preheader.i88 ], [ %indvars.iv.next36.i92.1, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit164.unr-lcssa ]
  %lcmp.mod169 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv35.i91.epil.init
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !39
  %i.uj = load ptr, ptr %i.kd, align 8
  %i.uk = zext i16 %i.ui to i64                   ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %4, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !40
  %i.un = zext i8 %i.um to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uq = load i8, ptr %i.up, align 1, !tbaa !40
  %i.ur = zext i8 %i.uq to i32
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.uk
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !41
  br label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit

_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit165.unr-lcssa: ; preds = %.lr.ph.i83
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit, label %.lr.ph.i83.epil.preheader

.lr.ph.i83.epil.preheader:                        ; preds = %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit165.unr-lcssa, %.lr.ph.preheader.i81
  %indvars.iv.i84.epil.init = phi i64 [ 0, %.lr.ph.preheader.i81 ], [ %indvars.iv.next.i85.1, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit165.unr-lcssa ]
  %lcmp.mod166 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i84.epil.init
  %i.uu = load i16, ptr %i.ut, align 2, !tbaa !39
  %i.uv = zext i16 %i.uu to i64                   ; 3 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.uv
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !41
  %i.uy = load i32, ptr %i.a, align 4, !tbaa !36
  %i.uz = sub nsw i32 32, %i.uy
  %i.va = lshr i32 %i.ux, %i.uz
  %i.vb = mul i32 %i.va, 10
  %i.vc = getelementptr inbounds nuw i8, ptr %4, i64 %i.uv
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !40
  %i.ve = zext i8 %i.vd to i32
  %i.vf = add i32 %i.vb, %i.ve
  %i.vg = zext i32 %i.vf to i64
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !41
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.uv
  store i32 %i.vi, ptr %i.vj, align 4, !tbaa !41
  br label %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit

_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit: ; preds = %.lr.ph.i83.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit165.unr-lcssa, %.lr.ph32.i90.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit164.unr-lcssa, %.lr.ph.i97.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit163.unr-lcssa, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit162.unr-lcssa, %.lr.ph30.i104.epil, %.lr.ph.i55.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit161.unr-lcssa, %.lr.ph32.i62.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit160.unr-lcssa, %.lr.ph.i69.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit159.unr-lcssa, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit158.unr-lcssa, %.lr.ph30.i76.epil, %.lr.ph.i.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit157.unr-lcssa, %.lr.ph32.i.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit156.unr-lcssa, %.lr.ph.i47.epil.preheader, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit155.unr-lcssa, %_ZNK5arrow7compute10SwissTable21extract_group_ids_impIhLb1EEEviPKtPKjPKhPjii.exit.loopexit.unr-lcssa, %.lr.ph30.i.epil, %.preheader.i101, %.preheader26.i94, %.preheader.i87, %.preheader28.i80, %.preheader.i73, %.preheader26.i66, %.preheader.i59, %.preheader28.i52, %.preheader.i51, %.preheader26.i, %.preheader.i, %.preheader28.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 align 2 !guid !117 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader31

.preheader31:                                     ; preds = %bb.a
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader31
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.a
  br i1 %i.d, label %.lr.ph35.preheader, label %.loopexit

.lr.ph35.preheader:                               ; preds = %.preheader
  %wide.trip.count41 = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count41, 1
  %i.e = icmp eq i32 %1, 1
  br i1 %i.e, label %.lr.ph35.epil.preheader, label %.lr.ph35.preheader.new

.lr.ph35.preheader.new:                           ; preds = %.lr.ph35.preheader
  %unroll_iter = and i64 %wide.trip.count41, 2147483646
  br label %.lr.ph35

.lr.ph35:                                         ; preds = %.lr.ph35, %.lr.ph35.preheader.new
  %indvars.iv38 = phi i64 [ 0, %.lr.ph35.preheader.new ], [ %indvars.iv.next39.1, %.lr.ph35 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph35.preheader.new ], [ %niter.next.1, %.lr.ph35 ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv38
  %i.g = load i16, ptr %i.f, align 2, !tbaa !39   ; 2 uses
  %i.h = zext i16 %i.g to i64                     ; 3 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !40
  %i.l = trunc i16 %i.g to i8
  %i.m = and i8 %i.l, 7
  %i.n = lshr i8 %i.k, %i.m
  %i.o = and i8 %i.n, 1
  %i.p = zext nneg i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %i.h
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40
  %i.s = zext i8 %i.r to i32
  %i.t = add nuw nsw i32 %i.p, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.h
  store i32 %i.t, ptr %i.u, align 4, !tbaa !41
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !39   ; 2 uses
  %i.y = zext i16 %i.x to i64                     ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !40
  %i.ac = trunc i16 %i.x to i8
  %i.ad = and i8 %i.ac, 7
  %i.ae = lshr i8 %i.ab, %i.ad
  %i.af = and i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %i.y
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !40
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.y
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !41
  %indvars.iv.next39.1 = add nuw nsw i64 %indvars.iv38, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph35, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.an = load i16, ptr %i.am, align 2, !tbaa !39 ; 2 uses
  %i.ao = zext i16 %i.an to i64                   ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !41
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !36
  %i.as = sub nsw i32 32, %i.ar
  %i.at = lshr i32 %i.aq, %i.as
  %i.au = lshr i64 %i.ao, 3
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !40
  %i.ax = trunc i16 %i.an to i8
  %i.ay = and i8 %i.ax, 7
  %i.az = lshr i8 %i.aw, %i.ay
  %i.ba = and i8 %i.az, 1
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = shl i32 %i.at, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 %i.ao
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !40
  %i.bf = zext i8 %i.be to i32
  %i.bg = add i32 %i.bc, %i.bf
  %i.bh = add i32 %i.bg, %i.bb
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ao
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph35
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph35.epil.preheader

.lr.ph35.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph35.preheader
  %indvars.iv38.epil.init = phi i64 [ 0, %.lr.ph35.preheader ], [ %indvars.iv.next39.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv38.epil.init
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !39 ; 2 uses
  %i.bl = zext i16 %i.bk to i64                   ; 3 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !40
  %i.bp = trunc i16 %i.bk to i8
  %i.bq = and i8 %i.bp, 7
  %i.br = lshr i8 %i.bo, %i.bq
  %i.bs = and i8 %i.br, 1
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bl
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !40
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bt, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bl
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph35.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader31, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 !guid !119 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36   ; 4 uses
  %i.c = icmp slt i32 %i.b, 6
  %i.d = icmp samesign ult i32 %i.b, 14
  %5 = icmp slt i32 %i.b, 30
  %i.e = select i1 %5, i32 40, i32 72
  %i.f = select i1 %i.d, i32 24, i32 %i.e
  %i.g = select i1 %i.c, i32 16, i32 %i.f         ; 2 uses
  %i.h = icmp eq i32 %i.b, 0
  br i1 %i.h, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not40 = icmp eq i32 %1, 0
  br i1 %.not40, label %.loopexit, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44
  %i.q = and i64 %i.p, -9187201950435737472
  %i.r = tail call range(i64 0, 9) i64 @llvm.ctpop.i64(i64 %i.q)
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = sub nuw nsw i32 8, %i.s                  ; 5 uses
  %.not41 = icmp eq i32 %1, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %bb.b
  %wide.trip.count49 = zext i32 %1 to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count49, 3       ; 3 uses
  %i.u = icmp ult i32 %1, 4
  br i1 %i.u, label %.lr.ph39.epil.preheader, label %.lr.ph39.preheader.new

.lr.ph39.preheader.new:                           ; preds = %.lr.ph39.preheader
  %unroll_iter = and i64 %wide.trip.count49, 4294967292
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39, %.lr.ph39.preheader.new
  %indvars.iv46 = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %indvars.iv.next47.3, %.lr.ph39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %niter.next.3, %.lr.ph39 ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv46
  %i.w = load i16, ptr %i.v, align 2, !tbaa !39
  %i.x = zext i16 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.x
  store i32 %i.t, ptr %i.y, align 4, !tbaa !41
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv46
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !39
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ac
  store i32 %i.t, ptr %i.ad, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !39
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ah
  store i32 %i.t, ptr %i.ai, align 4, !tbaa !41
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !39
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.am
  store i32 %i.t, ptr %i.an, align 4, !tbaa !41
  %indvars.iv.next47.3 = add nuw nsw i64 %indvars.iv46, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph39, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph36, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !39
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.at = load i32, ptr %i.a, align 4, !tbaa !36  ; 2 uses
  %i.au = sub nsw i32 32, %i.at
  %i.av = lshr i32 %i.as, %i.au                   ; 3 uses
  %i.aw = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.ax = mul i32 %i.av, %i.g
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !44
  %i.bb = and i64 %i.ba, -9187201950435737472     ; 2 uses
  %.not32 = icmp eq i64 %i.bb, 0
  br i1 %.not32, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %notmask = shl nsw i32 -1, %i.at
  %i.bc = xor i32 %notmask, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.033 = phi i32 [ %i.av, %.lr.ph ], [ %i.be, %bb.d ]
  %i.bd = add i32 %.033, 1
  %i.be = and i32 %i.bd, %i.bc                    ; 3 uses
  %i.bf = mul i32 %i.be, %i.g
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !44
  %i.bj = and i64 %i.bi, -9187201950435737472     ; 2 uses
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.0.lcssa = phi i32 [ %i.av, %bb.c ], [ %i.be, %bb.d ]
  %.lcssa = phi i64 [ %i.bb, %bb.c ], [ %i.bj, %bb.d ]
  %i.bk = tail call range(i64 1, 9) i64 @llvm.ctpop.i64(i64 %.lcssa)
  %i.bl = trunc nuw nsw i64 %i.bk to i32
  %i.bm = shl i32 %.0.lcssa, 3
  %reass.sub = add i32 %i.bm, 8
  %i.bn = sub i32 %reass.sub, %i.bl
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aq
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !4

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph39.epil.preheader

.lr.ph39.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph39.preheader
  %indvars.iv46.epil.init = phi i64 [ 0, %.lr.ph39.preheader ], [ %indvars.iv.next47.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod62 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod62)
  br label %.lr.ph39.epil

.lr.ph39.epil:                                    ; preds = %.lr.ph39.epil, %.lr.ph39.epil.preheader
  %indvars.iv46.epil = phi i64 [ %indvars.iv46.epil.init, %.lr.ph39.epil.preheader ], [ %indvars.iv.next47.epil, %.lr.ph39.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph39.epil.preheader ], [ %epil.iter.next, %.lr.ph39.epil ]
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv46.epil
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !39
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.br
  store i32 %i.t, ptr %i.bs, align 4, !tbaa !41
  %indvars.iv.next47.epil = add nuw nsw i64 %indvars.iv46.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph39.epil, !llvm.loop !118

.loopexit:                                        ; preds = %._crit_edge, %.loopexit.loopexit.unr-lcssa, %.lr.ph39.epil, %.preheader, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK5arrow7compute10SwissTable16early_filter_impEiPKjPhS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 !guid !120 {
bb.a:
  %i.a = add nsw i32 %1, 7
  %i.b = sdiv i32 %i.a, 8
  %i.c = sext i32 %i.b to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.c, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !36   ; 3 uses
  %5 = icmp slt i32 %i.f, 30
  %i.g = icmp samesign ult i32 %i.f, 14
  %i.h = icmp slt i32 %i.f, 6
  %i.i = select i1 %5, i64 40, i64 72
  %i.j = select i1 %i.g, i64 24, i64 %i.i
  %i.k = select i1 %i.h, i64 16, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41
  %i.o = load i32, ptr %i.d, align 4, !tbaa !36
  %i.p = sub nsw i32 25, %i.o
  %i.q = lshr i32 %i.n, %i.p                      ; 2 uses
  %i.r = and i32 %i.q, 127
  %i.s = lshr i32 %i.q, 7
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext nneg i32 %i.s to i64
  %i.x = mul nuw nsw i64 %i.k, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !44   ; 3 uses
  %i.aa = and i64 %i.z, -9187201950435737472      ; 2 uses
  %i.ab = zext nneg i32 %i.r to i64
  %i.ac = lshr exact i64 %i.aa, 7
  %i.ad = xor i64 %i.ac, 72340172838076673
  %i.ae = mul nuw i64 %i.ad, %i.ab
  %i.af = xor i64 %i.ae, %i.z
  %i.ag = sub i64 -9187201950435737472, %i.af
  %i.ah = and i64 %i.ag, -9187201950435737472
  %i.ai = and i64 %i.z, 128
  %i.aj = xor i64 %i.ai, 128
  %i.ak = or i64 %i.ah, %i.aj                     ; 2 uses
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i8
  %i.an = or i64 %i.ak, %i.aa
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false)
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = lshr i8 %i.ap, 3
  %i.ar = trunc i64 %indvars.iv to i8
  %i.as = and i8 %i.ar, 7
  %i.at = shl nuw i8 %i.am, %i.as
  %i.au = lshr i64 %indvars.iv, 3
  %i.av = and i64 %i.au, 536870911
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.av ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !40
  %i.ay = or i8 %i.ax, %i.at
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.aq, ptr %i.az, align 1, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK5arrow7compute10SwissTable12early_filterEiPKjPhS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 !guid !121 {
bb.a:
  %i.a = add nsw i32 %1, 7
  %i.b = sdiv i32 %i.a, 8
  %i.c = sext i32 %i.b to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 %i.c, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZNK5arrow7compute10SwissTable16early_filter_impEiPKjPhS4_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !36   ; 3 uses
  %5 = icmp slt i32 %i.f, 30
  %i.g = icmp samesign ult i32 %i.f, 14
  %i.h = icmp slt i32 %i.f, 6
  %i.i = select i1 %5, i64 40, i64 72
  %i.j = select i1 %i.g, i64 24, i64 %i.i
  %i.k = select i1 %i.h, i64 16, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41
  %i.o = load i32, ptr %i.d, align 4, !tbaa !36
  %i.p = sub nsw i32 25, %i.o
  %i.q = lshr i32 %i.n, %i.p                      ; 2 uses
  %i.r = and i32 %i.q, 127
  %i.s = lshr i32 %i.q, 7
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext nneg i32 %i.s to i64
  %i.x = mul nuw nsw i64 %i.k, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !44   ; 3 uses
  %i.aa = and i64 %i.z, -9187201950435737472      ; 2 uses
  %i.ab = zext nneg i32 %i.r to i64
  %i.ac = lshr exact i64 %i.aa, 7
  %i.ad = xor i64 %i.ac, 72340172838076673
  %i.ae = mul nuw i64 %i.ad, %i.ab
  %i.af = xor i64 %i.ae, %i.z
  %i.ag = sub i64 -9187201950435737472, %i.af
  %i.ah = and i64 %i.ag, -9187201950435737472
  %i.ai = and i64 %i.z, 128
  %i.aj = xor i64 %i.ai, 128
  %i.ak = or i64 %i.ah, %i.aj                     ; 2 uses
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = zext i1 %i.al to i8
  %i.an = or i64 %i.ak, %i.aa
  %i.ao = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 false)
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = lshr i8 %i.ap, 3
  %i.ar = trunc i64 %indvars.iv.i to i8
  %i.as = and i8 %i.ar, 7
  %i.at = shl nuw i8 %i.am, %i.as
  %i.au = lshr i64 %indvars.iv.i, 3
  %i.av = and i64 %i.au, 536870911
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.av ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !40
  %i.ay = or i8 %i.at, %i.ax
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.i
  store i8 %i.aq, ptr %i.az, align 1, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5arrow7compute10SwissTable16early_filter_impEiPKjPhS4_.exit, label %bb.b, !llvm.loop !5

_ZNK5arrow7compute10SwissTable16early_filter_impEiPKjPhS4_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %8) local_unnamed_addr #5 align 2 !guid !123 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 4 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = icmp eq i32 %1, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !41
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %2, null
  %i.x = icmp ne ptr %3, null
  %or.cond = and i1 %i.w, %i.x
  br i1 %or.cond, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.y = sext i32 %1 to i64
  %i.z = tail call noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef nonnull %3, i64 noundef 0, i64 noundef %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !45
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = icmp sgt i64 %i.z, 0
  %or.cond3 = and i1 %i.ad, %i.ac
  br i1 %or.cond3, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ae = mul nsw i32 %1, 3
  %i.af = sdiv i32 %i.ae, 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp sgt i64 %i.z, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i32 %1, ptr %i.m, align 4, !tbaa !41
  store ptr null, ptr %i.n, align 8, !tbaa !47
  store ptr %4, ptr %i.o, align 8, !tbaa !49
  store ptr %i.s, ptr %i.p, align 8, !tbaa !49
  store ptr %6, ptr %i.q, align 8, !tbaa !47
  store ptr %8, ptr %i.r, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.g, label %_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.am = load i32, ptr %i.s, align 4, !tbaa !41
  store i32 %i.am, ptr %5, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #19
  br label %bb.l

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !55
  tail call void @_ZN5arrow4util8bit_util15bits_to_indexesEiliPKhPiPti(i32 noundef 1, i64 noundef %i.ao, i32 noundef %1, ptr noundef nonnull %3, ptr noundef %5, ptr noundef %6, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #19
  %i.ap = load i32, ptr %5, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 %i.ap, ptr %i.g, align 4, !tbaa !41
  store ptr %6, ptr %i.h, align 8, !tbaa !47
  store ptr %4, ptr %i.i, align 8, !tbaa !49
  store ptr %i.t, ptr %i.j, align 8, !tbaa !49
  store ptr %6, ptr %i.k, align 8, !tbaa !47
  store ptr %8, ptr %i.l, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52
  %.not.i.i38 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i38, label %bb.i, label %_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit39

bb.i:                                             ; preds = %bb.h
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit39: ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !54
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.au = load i32, ptr %i.t, align 4, !tbaa !41
  store i32 %i.au, ptr %5, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #19
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_1
begin_hunk_2_@_ZNK5arrow7compute10SwissTable4findEiPKjPhPKhPjPNS_4util15TempVectorStackERKSt8functionIFviPKtS3_S7_PtPvEESF_:bb.a
.lr.ph.preheader.i:                               ; preds = %.preheader31.i
  %wide.trip.count.i = zext nneg i32 %i.as to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %_ZN5arrow4util16TempVectorHolderIjEC2EPNS0_15TempVectorStackEj.exit
  br i1 %i.aw, label %.lr.ph35.preheader.i, label %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count41.i = zext nneg i32 %i.as to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count41.i, 1
  %i.ax = icmp eq i32 %i.as, 1
  br i1 %i.ax, label %.lr.ph35.i.epil.preheader, label %.lr.ph35.preheader.i.new

.lr.ph35.preheader.i.new:                         ; preds = %.lr.ph35.preheader.i
  %unroll_iter = and i64 %wide.trip.count41.i, 2147483646
  br label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.lr.ph35.i, %.lr.ph35.preheader.i.new
  %indvars.iv38.i = phi i64 [ 0, %.lr.ph35.preheader.i.new ], [ %indvars.iv.next39.i.1, %.lr.ph35.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph35.preheader.i.new ], [ %niter.next.1, %.lr.ph35.i ]
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv38.i
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !39 ; 2 uses
  %i.ba = zext i16 %i.az to i64                   ; 3 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !40
  %i.be = trunc i16 %i.az to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = lshr i8 %i.bd, %i.bf
  %i.bh = and i8 %i.bg, 1
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ba
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !41
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv38.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !39 ; 2 uses
  %i.br = zext i16 %i.bq to i64                   ; 3 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !40
  %i.bv = trunc i16 %i.bq to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = and i8 %i.bx, 1
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 %i.br
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !40
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.br
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !41
  %indvars.iv.next39.i.1 = add nuw nsw i64 %indvars.iv38.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit.loopexit.unr-lcssa, label %.lr.ph35.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !39 ; 2 uses
  %i.ch = zext i16 %i.cg to i64                   ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !41
  %i.ck = load i32, ptr %i.at, align 4, !tbaa !36
  %i.cl = sub nsw i32 32, %i.ck
  %i.cm = lshr i32 %i.cj, %i.cl
  %i.cn = lshr i64 %i.ch, 3
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !40
  %i.cq = trunc i16 %i.cg to i8
  %i.cr = and i8 %i.cq, 7
  %i.cs = lshr i8 %i.cp, %i.cr
  %i.ct = and i8 %i.cs, 1
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = shl i32 %i.cm, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 %i.ch
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !40
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add i32 %i.cv, %i.cy
  %i.da = add i32 %i.cz, %i.cu
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ch
  store i32 %i.da, ptr %i.db, align 4, !tbaa !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit, label %.lr.ph.i, !llvm.loop !1

_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph35.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit, label %.lr.ph35.i.epil.preheader

.lr.ph35.i.epil.preheader:                        ; preds = %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit.loopexit.unr-lcssa, %.lr.ph35.preheader.i
  %indvars.iv38.i.epil.init = phi i64 [ 0, %.lr.ph35.preheader.i ], [ %indvars.iv.next39.i.1, %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit.loopexit.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod111)
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv38.i.epil.init
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !39 ; 2 uses
  %i.de = zext i16 %i.dd to i64                   ; 3 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !40
  %i.di = trunc i16 %i.dd to i8
  %i.dj = and i8 %i.di, 7
  %i.dk = lshr i8 %i.dh, %i.dj
  %i.dl = and i8 %i.dk, 1
  %i.dm = zext nneg i8 %i.dl to i32
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 %i.de
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !40
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nuw nsw i32 %i.dm, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.de
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !41
  br label %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit

_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit: ; preds = %.lr.ph.i, %.lr.ph35.i.epil.preheader, %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit.loopexit.unr-lcssa, %.preheader31.i, %.preheader.i
  %i.ds = load i32, ptr %i.o, align 4, !tbaa !41  ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit81
  %i.dx = phi i32 [ %i.ds, %.lr.ph ], [ %i.ec, %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit81 ]
  store i32 0, ptr %i.o, align 4, !tbaa !41
  %wide.trip.count = zext nneg i32 %i.dx to i64
  br label %bb.o

bb.k:                                             ; preds = %bb.u
  %i.dy = load i32, ptr %i.o, align 4, !tbaa !41  ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %._crit_edge, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !41
  store ptr %i.t, ptr %i.b, align 8, !tbaa !47
  store ptr %5, ptr %i.c, align 8, !tbaa !49
  store ptr %i.g, ptr %i.d, align 8, !tbaa !49
  store ptr %i.t, ptr %i.e, align 8, !tbaa !47
  store ptr %8, ptr %i.f, align 8, !tbaa !50
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !52
  %.not.i.i40.i77 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i40.i77, label %bb.m, label %_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit41.i78

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt25__throw_bad_function_callv() #20
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc79:                                         ; preds = %bb.m
  unreachable

_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit41.i78: ; preds = %bb.l
  %i.eb = load ptr, ptr %i.dw, align 8, !tbaa !54
  invoke void %i.eb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !62

_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit81: ; preds = %_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit41.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ec = load i32, ptr %i.g, align 4, !tbaa !41  ; 3 uses
  store i32 %i.ec, ptr %i.o, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.j, label %._crit_edge

bb.n:                                             ; preds = %bb.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.o:                                             ; preds = %bb.j, %bb.u
  %indvars.iv = phi i64 [ 0, %bb.j ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %indvars.iv
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !39 ; 2 uses
  %i.eh = zext i16 %i.eg to i64                   ; 5 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !41
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.eh ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !41
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.eh
  %i.en = load i32, ptr %i.at, align 4, !tbaa !36 ; 5 uses
  %i.eo = icmp slt i32 %i.en, 6
  %i.ep = icmp samesign ult i32 %i.en, 14
  %11 = icmp slt i32 %i.en, 30
  %i.eq = select i1 %11, i64 32, i64 64
  %i.er = select i1 %i.ep, i64 16, i64 %i.eq
  %i.es = select i1 %i.eo, i64 8, i64 %i.er       ; 2 uses
  %i.et = sub i32 25, %i.en
  %i.eu = lshr i32 %i.ej, %i.et
  %i.ev = and i32 %i.eu, 127                      ; 2 uses
  %i.ew = add nsw i32 %i.en, 3
  %notmask.i.i = shl nsw i32 -1, %i.ew
  %i.ex = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = and i32 %i.el, %i.ex
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = add nuw nsw i64 %i.es, 8
  %i.fc = load ptr, ptr %i.du, align 8, !tbaa !37 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 9
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !73, !range !74, !noundef !75
  %i.ff = trunc nuw i8 %i.fe to i1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fh = load i8, ptr %i.fg, align 8, !range !74
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = select i1 %i.ff, i1 %i.fi, i1 false, !prof !76
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = select i1 %i.fj, ptr %i.fl, ptr null, !prof !76
  %i.fn = zext nneg i32 %i.ev to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.019.i = phi i64 [ %i.fa, %bb.o ], [ %i.gp, %bb.q ] ; 3 uses
  %i.fo = lshr i64 %.019.i, 3
  %i.fp = mul nuw nsw i64 %i.fo, %i.fb
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fp ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !44 ; 3 uses
  %i.fs = and i64 %i.fr, -9187201950435737472     ; 2 uses
  %i.ft = lshr exact i64 %i.fs, 7
  %i.fu = xor i64 %i.ft, 72340172838076673
  %i.fv = mul nuw i64 %i.fu, %i.fn
  %i.fw = xor i64 %i.fv, %i.fr
  %i.fx = sub i64 -9187201950435737472, %i.fw
  %i.fy = shl nuw nsw i64 %.019.i, 3
  %i.fz = and i64 %i.fy, 56
  %i.ga = lshr i64 -9187201950435737472, %i.fz
  %i.gb = and i64 %i.fx, %i.ga
  %i.gc = and i64 %i.fr, 128
  %i.gd = xor i64 %i.gc, 128
  %i.ge = or i64 %i.gb, %i.gd                     ; 2 uses
  %i.gf = icmp ne i64 %i.ge, 0                    ; 3 uses
  %i.gg = or i64 %i.ge, %i.fs
  %i.gh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gg, i1 false)
  %i.gi = trunc nuw nsw i64 %i.gh to i32
  %i.gj = lshr i32 %i.gi, 3                       ; 3 uses
  %i.gk = and i64 %.019.i, 2147483640
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = zext i1 %i.gf to i64
  %i.gn = or disjoint i64 %i.gk, %i.gm
  %i.go = add nuw nsw i64 %i.gn, %i.gl
  %i.gp = and i64 %i.go, %i.ey                    ; 2 uses
  br i1 %i.gf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gq = sub nsw i32 7, %i.gj
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %i.fq, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !40
  %i.gu = zext i8 %i.gt to i32
  %i.gv = icmp eq i32 %i.ev, %i.gu
  br i1 %i.gv, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q, %bb.p
  %notmask.i = shl nsw i64 -1, %i.es
  %i.gw = xor i64 %notmask.i, -1                  ; 2 uses
  %i.gx = call range(i64 0, 57) i64 @llvm.ctpop.i64(i64 %i.gw)
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = mul nuw nsw i32 %i.gj, %i.gy            ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.hb = lshr i32 %i.gz, 6
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !44
  %i.hf = and i32 %i.gz, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = lshr i64 %i.he, %i.hg
  %i.hi = and i64 %i.hh, %i.gw
  %i.hj = trunc i64 %i.hi to i32
  store i32 %i.hj, ptr %i.em, align 4, !tbaa !41
  %i.hk = trunc nuw nsw i64 %i.gp to i32
  store i32 %i.hk, ptr %i.ek, align 4, !tbaa !41
  br i1 %i.gf, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hl = and i64 %i.eh, 7
  %i.hm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL15kFlippedBitmaskE, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !40
  %i.ho = lshr i64 %i.eh, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 %i.ho ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !40
  %i.hr = and i8 %i.hq, %i.hn
  store i8 %i.hr, ptr %i.hp, align 1, !tbaa !40
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.hs = load i32, ptr %i.o, align 4, !tbaa !41  ; 2 uses
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.o, align 4, !tbaa !41
  %i.hu = sext i32 %i.hs to i64
  %i.hv = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.hu
  store i16 %i.eg, ptr %i.hv, align 2, !tbaa !39
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.k, label %bb.o, !llvm.loop !124

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit41.i78, %bb.m
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util16TempVectorHolderIjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit81, %bb.k, %_ZNK5arrow7compute10SwissTable13init_slot_idsEiPKtPKjPKhS7_Pj.exit
  %i.hw = load ptr, ptr %10, align 8, !tbaa !64
  %i.hx = load i32, ptr %i.aq, align 8, !tbaa !77
  %i.hy = load i32, ptr %i.an, align 4, !tbaa !65
  %i.hz = shl i32 %i.hy, 2
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.hw, i32 noundef %i.hx, i32 noundef %i.hz)
          to label %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit unwind label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  call void @__clang_call_terminate(ptr %i.ib) #21
  unreachable

_ZN5arrow4util16TempVectorHolderIjED2Ev.exit:     ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit.thread

_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit.thread: ; preds = %bb.f, %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit, %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  %i.ic = load ptr, ptr %9, align 8, !tbaa !59
  %i.id = load i32, ptr %i.s, align 8, !tbaa !78
  %i.ie = load i32, ptr %i.p, align 4, !tbaa !60
  %i.if = shl i32 %i.ie, 1
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.ic, i32 noundef %i.id, i32 noundef %i.if)
          to label %_ZN5arrow4util16TempVectorHolderItED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit.thread
  %i.ig = landingpad { ptr, i32 }
          catch ptr null
  %i.ih = extractvalue { ptr, i32 } %i.ig, 0
  call void @__clang_call_terminate(ptr %i.ih) #21
  unreachable

_ZN5arrow4util16TempVectorHolderItED2Ev.exit:     ; preds = %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  ret void

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp106, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ee, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.e, %bb.x
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %.pn.pn.pn, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @_ZN5arrow4util16TempVectorHolderItED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util16TempVectorHolderIjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !126 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = shl i32 %i.e, 2
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c, i32 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util16TempVectorHolderItED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !127 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60
  %i.f = shl i32 %i.e, 1
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c, i32 noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute10SwissTable19map_new_keys_helperEPKjPjPtPbS4_S4_PNS_4util15TempVectorStackERKSt8functionIFviPKtS3_S4_S5_PvEERKSA_IFNS_6StatusEiSC_SD_EESD_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6, ptr nofree noundef captures(none) %7, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %11) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !136 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.arrow::util::TempVectorHolder.4", align 8 ; 9 uses
  %13 = alloca %"class.arrow::util::TempVectorHolder", align 8 ; 9 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36   ; 2 uses
  %i.n = add nsw i32 %i.m, 3
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = icmp slt i32 %i.m, 10
  %i.q = shl nuw i64 1, %i.o
  %i.r = lshr i64 %i.q, 1
  %i.s = shl i64 3, %i.o
  %i.t = lshr i64 %i.s, 2
  %.0.i = select i1 %i.p, i64 %i.r, i64 %i.t      ; 2 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !41
  %i.v = add i32 %i.u, 7
  %i.w = lshr i32 %i.v, 3
  %narrow = add nuw nsw i32 %i.w, 8               ; 3 uses
  %i.x = zext nneg i32 %narrow to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store ptr %8, ptr %12, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  store i32 %narrow, ptr %i.y, align 4, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %narrow, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa)
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !137 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, i8 -1, i64 %i.x, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.ad = load i32, ptr %3, align 4, !tbaa !41
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %.split.loop.exit108, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %.080111 = phi i32 [ 0, %.lr.ph ], [ %.282.ph, %bb.g ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !39
  %i.ai = zext i16 %i.ah to i64                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.ai ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ai ; 2 uses
  %i.ao = load i32, ptr %i.l, align 4, !tbaa !36  ; 5 uses
  %i.ap = icmp slt i32 %i.ao, 6
  %i.aq = icmp samesign ult i32 %i.ao, 14
  %15 = icmp slt i32 %i.ao, 30
  %i.ar = select i1 %15, i64 32, i64 64
  %i.as = select i1 %i.aq, i64 16, i64 %i.ar
  %i.at = select i1 %i.ap, i64 8, i64 %i.as       ; 2 uses
  %i.au = sub i32 25, %i.ao
  %i.av = lshr i32 %i.ak, %i.au
  %i.aw = and i32 %i.av, 127                      ; 2 uses
  %i.ax = add nsw i32 %i.ao, 3
  %notmask.i.i = shl nsw i32 -1, %i.ax
  %i.ay = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = and i32 %i.am, %i.ay
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = add nuw nsw i64 %i.at, 8
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !37 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 9
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !73, !range !74, !noundef !75
  %i.bg = trunc nuw i8 %i.bf to i1                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !range !74
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = select i1 %i.bg, i1 %i.bj, i1 false, !prof !76
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = select i1 %i.bk, ptr %i.bm, ptr null, !prof !76
  %i.bo = zext nneg i32 %i.aw to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.019.i = phi i64 [ %i.bb, %bb.b ], [ %i.cq, %bb.d ] ; 3 uses
  %i.bp = lshr i64 %.019.i, 3
  %i.bq = mul nuw nsw i64 %i.bp, %i.bc
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !44 ; 3 uses
  %i.bt = and i64 %i.bs, -9187201950435737472     ; 2 uses
  %i.bu = lshr exact i64 %i.bt, 7
  %i.bv = xor i64 %i.bu, 72340172838076673
  %i.bw = mul nuw i64 %i.bv, %i.bo
  %i.bx = xor i64 %i.bw, %i.bs
  %i.by = sub i64 -9187201950435737472, %i.bx
  %i.bz = shl nuw nsw i64 %.019.i, 3
  %i.ca = and i64 %i.bz, 56
  %i.cb = lshr i64 -9187201950435737472, %i.ca
  %i.cc = and i64 %i.by, %i.cb
  %i.cd = and i64 %i.bs, 128
  %i.ce = xor i64 %i.cd, 128
  %i.cf = or i64 %i.cc, %i.ce                     ; 2 uses
  %i.cg = icmp ne i64 %i.cf, 0                    ; 3 uses
  %i.ch = or i64 %i.cf, %i.bt
  %i.ci = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = lshr i32 %i.cj, 3                       ; 3 uses
  %i.cl = and i64 %.019.i, 2147483640
  %i.cm = zext nneg i32 %i.ck to i64
  %i.cn = zext i1 %i.cg to i64
  %i.co = or disjoint i64 %i.cl, %i.cn
  %i.cp = add nuw nsw i64 %i.co, %i.cm
  %i.cq = and i64 %i.cp, %i.az                    ; 2 uses
  br i1 %i.cg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cr = sub nsw i32 7, %i.ck
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.br, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !40
  %i.cv = zext i8 %i.cu to i32
  %i.cw = icmp eq i32 %i.aw, %i.cv
  br i1 %i.cw, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d, %bb.c
  %notmask.i = shl nsw i64 -1, %i.at
  %i.cx = xor i64 %notmask.i, -1                  ; 2 uses
  %i.cy = call range(i64 0, 57) i64 @llvm.ctpop.i64(i64 %i.cx)
  %i.cz = trunc nuw nsw i64 %i.cy to i32
  %i.da = mul nuw nsw i32 %i.ck, %i.cz            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.dc = lshr i32 %i.da, 6
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !44
  %i.dg = and i32 %i.da, 63
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = lshr i64 %i.df, %i.dh
  %i.dj = and i64 %i.di, %i.cx
  %i.dk = trunc i64 %i.dj to i32
  store i32 %i.dk, ptr %i.an, align 4, !tbaa !41
  %i.dl = trunc nuw nsw i64 %i.cq to i32
  store i32 %i.dl, ptr %i.al, align 4, !tbaa !41
  br i1 %i.cg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = load i32, ptr %i.ac, align 8, !tbaa !45
  %i.dn = add i32 %i.dm, %.080111                 ; 2 uses
  store i32 %i.dn, ptr %i.an, align 4, !tbaa !41
  %i.do = load i32, ptr %i.al, align 4, !tbaa !41 ; 2 uses
  %i.dp = load i32, ptr %i.aj, align 4, !tbaa !41
  %i.dq = load i32, ptr %i.l, align 4, !tbaa !36  ; 4 uses
  %i.dr = icmp slt i32 %i.dq, 6                   ; 2 uses
  %i.ds = icmp samesign ult i32 %i.dq, 14         ; 2 uses
  %16 = icmp slt i32 %i.dq, 30                    ; 2 uses
  %i.dt = select i1 %16, i64 40, i64 72
  %i.du = select i1 %i.ds, i64 24, i64 %i.dt
  %narrow.i = select i1 %i.dr, i64 16, i64 %i.du
  %i.dv = and i32 %i.do, 7                        ; 2 uses
  %i.dw = sub i32 25, %i.dq
  %i.dx = lshr i32 %i.dp, %i.dw
  %i.dy = lshr i32 %i.do, 3
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = load i8, ptr %i.bh, align 8, !range !74
  %i.eb = trunc nuw i8 %i.ea to i1
  %i.ec = select i1 %i.bg, i1 %i.eb, i1 false, !prof !76
  %i.ed = load ptr, ptr %i.bl, align 8
  %i.ee = select i1 %i.ec, ptr %i.ed, ptr null, !prof !76
  %i.ef = mul nuw nsw i64 %narrow.i, %i.dz
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = trunc i32 %i.dx to i8
  %i.ei = and i8 %i.eh, 127
  %i.ej = xor i32 %i.dv, 7
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ek
  store i8 %i.ei, ptr %i.el, align 1, !tbaa !40
  %i.em = select i1 %16, i32 5, i32 6
  %i.en = select i1 %i.ds, i32 4, i32 %i.em
  %i.eo = select i1 %i.dr, i32 3, i32 %i.en
  %i.ep = shl nuw nsw i32 %i.dv, %i.eo            ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.er = lshr i32 %i.ep, 6
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.es ; 2 uses
  %i.eu = zext i32 %i.dn to i64
  %i.ev = and i32 %i.ep, 62
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl i64 %i.eu, %i.ew
  %i.ey = load i64, ptr %i.et, align 8, !tbaa !44
  %i.ez = or i64 %i.ex, %i.ey
  store i64 %i.ez, ptr %i.et, align 8, !tbaa !44
  %i.fa = load i32, ptr %i.aj, align 4, !tbaa !41
  %i.fb = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = load i32, ptr %i.al, align 4, !tbaa !41
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.ff
  store i32 %i.fa, ptr %i.fg, align 4, !tbaa !41
  %i.fh = and i64 %indvars.iv, 7
  %i.fi = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL15kFlippedBitmaskE, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !40
  %i.fk = lshr i64 %indvars.iv, 3
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.fk ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !40
  %i.fn = and i8 %i.fm, %i.fj
  store i8 %i.fn, ptr %i.fl, align 1, !tbaa !40
  %i.fo = add i32 %.080111, 1                     ; 3 uses
  %i.fp = load i32, ptr %i.ac, align 8, !tbaa !45
  %i.fq = add i32 %i.fp, %i.fo
  %i.fr = zext i32 %i.fq to i64
  %i.fs = icmp eq i64 %.0.i, %i.fr
  br i1 %i.fs, label %.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.282.ph = phi i32 [ %.080111, %bb.e ], [ %i.fo, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ft = load i32, ptr %3, align 4, !tbaa !41    ; 2 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = icmp samesign ult i64 %indvars.iv.next, %i.fu
  br i1 %i.fv, label %bb.b, label %.split.loop.exit108.loopexit, !llvm.loop !128

.split.loop.exit:                                 ; preds = %bb.f
  %i.fw = trunc nuw i64 %indvars.iv to i32
  %i.fx = add nuw i32 %i.fw, 1
  %.pre = load i32, ptr %3, align 4, !tbaa !41
  br label %.split.loop.exit108

.split.loop.exit108.loopexit:                     ; preds = %bb.g
  %i.fy = trunc nuw i64 %indvars.iv.next to i32
  br label %.split.loop.exit108

.split.loop.exit108:                              ; preds = %.split.loop.exit108.loopexit, %bb.a, %.split.loop.exit
  %i.fz = phi i32 [ %.pre, %.split.loop.exit ], [ 0, %bb.a ], [ %i.ft, %.split.loop.exit108.loopexit ] ; 2 uses
  %.3 = phi i32 [ %i.fo, %.split.loop.exit ], [ 0, %bb.a ], [ %.282.ph, %.split.loop.exit108.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.fx, %.split.loop.exit ], [ 0, %bb.a ], [ %i.fy, %.split.loop.exit108.loopexit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr %8, ptr %13, align 8, !tbaa !59
  %i.ga = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !60
  %i.gb = shl i32 %i.fz, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  invoke void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.gb, ptr noundef nonnull %i.gc, ptr noundef nonnull %i.gd)
          to label %_ZN5arrow4util16TempVectorHolderItEC2EPNS0_15TempVectorStackEj.exit unwind label %bb.h

_ZN5arrow4util16TempVectorHolderItEC2EPNS0_15TempVectorStackEj.exit: ; preds = %.split.loop.exit108
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !61 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  store i32 0, ptr %i.k, align 4, !tbaa !41
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !55
  invoke void @_ZN5arrow4util8bit_util19bits_filter_indexesEiliPKhPKtPiPti(i32 noundef 0, i64 noundef %i.gg, i32 noundef %.2, ptr noundef nonnull %i.ab, ptr noundef %4, ptr noundef nonnull %i.k, ptr noundef %i.ge, i32 noundef 0)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.split.loop.exit108
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.i:                                             ; preds = %_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit41.i, %bb.p, %_ZN5arrow6StatusD2Ev.exit97, %_ZN5arrow4util16TempVectorHolderItEC2EPNS0_15TempVectorStackEj.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %_ZN5arrow4util16TempVectorHolderItEC2EPNS0_15TempVectorStackEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %.3, ptr %i.h, align 4, !tbaa !41, !noalias !138
  store ptr %i.ge, ptr %i.i, align 8, !tbaa !47, !noalias !138
  store ptr %11, ptr %i.j, align 8, !tbaa !50, !noalias !138
  %i.gj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !52, !noalias !138
  %.not.i.i = icmp eq ptr %i.gk, null
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt25__throw_bad_function_callv() #20
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !140, !noalias !138
  invoke void %i.gm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.m, !inline_history !131

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.gn = load ptr, ptr %14, align 8, !tbaa !84, !noalias !141 ; 2 uses
  store ptr %i.gn, ptr %0, align 8, !tbaa !84, !alias.scope !141
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %_ZN5arrow6StatusD2Ev.exit97, label %.critedge

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.v

_ZN5arrow6StatusD2Ev.exit97:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.gq = load i32, ptr %i.ac, align 8, !tbaa !45
  %i.gr = add i32 %i.gq, %.3
  store i32 %i.gr, ptr %i.ac, align 8, !tbaa !45
  %i.gs = load i64, ptr %i.gf, align 8, !tbaa !55
  invoke void @_ZN5arrow4util8bit_util19bits_filter_indexesEiliPKhPKtPiPti(i32 noundef 1, i64 noundef %i.gs, i32 noundef %.2, ptr noundef nonnull %i.ab, ptr noundef %4, ptr noundef nonnull %i.k, ptr noundef %i.ge, i32 noundef 0)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit97
  %i.gt = load i32, ptr %i.k, align 4, !tbaa !41  ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.gt, ptr %i.a, align 4, !tbaa !41
  store ptr %i.ge, ptr %i.b, align 8, !tbaa !47
  store ptr %6, ptr %i.c, align 8, !tbaa !49
  store ptr %i.g, ptr %i.d, align 8, !tbaa !49
  store ptr %i.ge, ptr %i.e, align 8, !tbaa !47
  store ptr %11, ptr %i.f, align 8, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !52
  %.not.i.i40.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i40.i, label %bb.p, label %_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit41.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt25__throw_bad_function_callv() #20
          to label %.noexc98 unwind label %bb.i

.noexc98:                                         ; preds = %bb.p
  unreachable

_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit41.i: ; preds = %bb.o
  %i.gx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !54
  invoke void %i.gy(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit unwind label %bb.i, !inline_history !62

_ZNK5arrow7compute10SwissTable15run_comparisonsEiPKtPKhPKjPiPtRKSt8functionIFviS3_S7_PjS9_PvEESC_.exit: ; preds = %_ZNKSt8functionIFviPKtPKjPjPtPvEEclEiS1_S3_S4_S5_S6_.exit41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute10SwissTable19map_new_keys_helperEPKjPjPtPbS4_S4_PNS_4util15TempVectorStackERKSt8functionIFviPKtS3_S4_S5_PvEERKSA_IFNS_6StatusEiSC_SD_EESD_:bb.a
  %i.hp = add i32 %i.ho, %i.hn
  store i32 %i.hp, ptr %3, align 4, !tbaa !41
  %i.hq = load i32, ptr %i.ac, align 8, !tbaa !45
  %i.hr = zext i32 %i.hq to i64
  %i.hs = icmp eq i64 %.0.i, %i.hr
  %i.ht = zext i1 %i.hs to i8
  store i8 %i.ht, ptr %5, align 1, !tbaa !85
  store ptr null, ptr %0, align 8, !tbaa !84, !alias.scope !142
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  %i.hu = load ptr, ptr %13, align 8, !tbaa !59
  %i.hv = load i32, ptr %i.gd, align 8, !tbaa !78
  %i.hw = load i32, ptr %i.ga, align 4, !tbaa !60
  %i.hx = shl i32 %i.hw, 1
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, i32 noundef %i.hv, i32 noundef %i.hx)
          to label %_ZN5arrow4util16TempVectorHolderItED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.hy = landingpad { ptr, i32 }
          catch ptr null
  %i.hz = extractvalue { ptr, i32 } %i.hy, 0
  call void @__clang_call_terminate(ptr %i.hz) #21
  unreachable

_ZN5arrow4util16TempVectorHolderItED2Ev.exit:     ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.ia = load ptr, ptr %12, align 8, !tbaa !80
  %i.ib = load i32, ptr %i.aa, align 8, !tbaa !86
  %i.ic = load i32, ptr %i.y, align 4, !tbaa !81
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.ia, i32 noundef %i.ib, i32 noundef %i.ic)
          to label %_ZN5arrow4util16TempVectorHolderIhED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %_ZN5arrow4util16TempVectorHolderItED2Ev.exit
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #21
  unreachable

_ZN5arrow4util16TempVectorHolderIhED2Ev.exit:     ; preds = %_ZN5arrow4util16TempVectorHolderItED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret void

bb.v:                                             ; preds = %bb.m, %bb.i
  %.pn = phi { ptr, i32 } [ %i.gi, %bb.i ], [ %i.gp, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @_ZN5arrow4util16TempVectorHolderItED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.gh, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @_ZN5arrow4util16TempVectorHolderIhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5arrow4util8bit_util19bits_filter_indexesEiliPKhPKtPiPti(i32 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow4util16TempVectorHolderIhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !143 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !81
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %i.c, i32 noundef %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute10SwissTable12map_new_keysEjPtPKjPjPNS_4util15TempVectorStackERKSt8functionIFviPKtS4_S5_S2_PvEERKS9_IFNS_6StatusEiSB_SC_EESC_(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, i32 noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !158 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.arrow::util::TempVectorHolder.3", align 8 ; 9 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !41
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !84, !alias.scope !159
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %3, align 2, !tbaa !39     ; 4 uses
  %.not68 = icmp eq i32 %2, 1
  br i1 %.not68, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %i.e = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %min.iters.check = icmp ult i32 %2, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check105 = icmp ult i32 %2, 17
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.e, 12
  %n.vec = and i64 %i.e, -16                      ; 4 uses
  %i.g = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.d, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi106 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.l, %vector.body ]
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !39
  %wide.load107 = load <8 x i16>, ptr %i.j, align 2, !tbaa !39
  %i.k = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load) ; 2 uses
  %i.l = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi106, <8 x i16> %wide.load107) ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.k, <8 x i16> %i.l)
  %i.n = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !162

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.n, %vec.epilog.iter.check ], [ %i.d, %vector.main.loop.iter.check ]
  %broadcast.splatinsert110 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat111 = shufflevector <4 x i16> %broadcast.splatinsert110, <4 x i16> poison, <4 x i32> zeroinitializer
  %n.vec108 = and i64 %i.e, -4                    ; 3 uses
  %i.o = or disjoint i64 %n.vec108, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next114, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi112 = phi <4 x i16> [ %broadcast.splat111, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index109
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %wide.load113 = load <4 x i16>, ptr %i.q, align 2, !tbaa !39
  %i.r = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi112, <4 x i16> %wide.load113) ; 2 uses
  %index.next114 = add nuw i64 %index109, 4       ; 2 uses
  %i.s = icmp eq i64 %index.next114, %n.vec108
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !147

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.r) ; 2 uses
  %cmp.n115 = icmp eq i64 %i.e, %n.vec108
  br i1 %cmp.n115, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  %.05761.ph = phi i16 [ %i.d, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %.057.lcssa = phi i16 [ %i.d, %bb.c ], [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.speculated, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.u = zext i16 %.057.lcssa to i32
  %i.v = add nuw nsw i32 %i.u, 1                  ; 2 uses
  store ptr %6, ptr %10, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  store i32 %i.v, ptr %i.w, align 4, !tbaa !65
  %i.x = shl nuw nsw i32 %i.v, 2
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  call void @_ZN5arrow4util15TempVectorStack5allocEjPPhPi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z)
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !66  ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !36 ; 4 uses
  %i.ad = icmp slt i32 %i.ac, 6
  %i.ae = icmp samesign ult i32 %i.ac, 14
  %13 = icmp slt i32 %i.ac, 30
  %i.af = select i1 %13, i32 40, i32 72
  %i.ag = select i1 %i.ae, i32 24, i32 %i.af
  %i.ah = select i1 %i.ad, i32 16, i32 %i.ag      ; 2 uses
  %i.ai = icmp eq i32 %i.ac, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  br i1 %i.ai, label %.lr.ph39.preheader.i, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %._crit_edge
  %wide.trip.count.i = zext i32 %2 to i64
  br label %bb.d

.lr.ph39.preheader.i:                             ; preds = %._crit_edge
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !44
  %i.ao = and i64 %i.an, -9187201950435737472
  %i.ap = call range(i64 0, 9) i64 @llvm.ctpop.i64(i64 %i.ao)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = sub nuw nsw i32 8, %i.aq                ; 5 uses
  %wide.trip.count49.i = zext i32 %2 to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count49.i, 3     ; 3 uses
  %i.as = icmp ult i32 %2, 4
  br i1 %i.as, label %.lr.ph39.i.epil.preheader, label %.lr.ph39.preheader.i.new

.lr.ph39.preheader.i.new:                         ; preds = %.lr.ph39.preheader.i
  %unroll_iter = and i64 %wide.trip.count49.i, 4294967292
  br label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.lr.ph39.i, %.lr.ph39.preheader.i.new
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph39.preheader.i.new ], [ %indvars.iv.next47.i.3, %.lr.ph39.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph39.preheader.i.new ], [ %niter.next.3, %.lr.ph39.i ]
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv46.i
  %i.au = load i16, ptr %i.at, align 2, !tbaa !39
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.av
  store i32 %i.ar, ptr %i.aw, align 4, !tbaa !41
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv46.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !39
  %i.ba = zext i16 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ba
  store i32 %i.ar, ptr %i.bb, align 4, !tbaa !41
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv46.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !39
  %i.bf = zext i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bf
  store i32 %i.ar, ptr %i.bg, align 4, !tbaa !41
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv46.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !39
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bk
  store i32 %i.ar, ptr %i.bl, align 4, !tbaa !41
  %indvars.iv.next47.i.3 = add nuw nsw i64 %indvars.iv46.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit.loopexit.unr-lcssa, label %.lr.ph39.i, !llvm.loop !2

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph36.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph36.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !39
  %i.bo = zext i16 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !41
  %i.br = load i32, ptr %i.ab, align 4, !tbaa !36 ; 2 uses
  %i.bs = sub nsw i32 32, %i.br
  %i.bt = lshr i32 %i.bq, %i.bs                   ; 3 uses
  %i.bu = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.bv = mul i32 %i.bt, %i.ah
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !44
  %i.bz = and i64 %i.by, -9187201950435737472     ; 2 uses
  %.not32.i = icmp eq i64 %i.bz, 0
  br i1 %.not32.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %notmask.i = shl nsw i32 -1, %i.br
  %i.ca = xor i32 %notmask.i, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.033.i = phi i32 [ %i.bt, %.lr.ph.i ], [ %i.cc, %bb.e ]
  %i.cb = add i32 %.033.i, 1
  %i.cc = and i32 %i.cb, %i.ca                    ; 3 uses
  %i.cd = mul i32 %i.cc, %i.ah
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !44
  %i.ch = and i64 %i.cg, -9187201950435737472     ; 2 uses
  %.not.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i, label %bb.e, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %bb.e, %bb.d
  %.0.lcssa.i = phi i32 [ %i.bt, %bb.d ], [ %i.cc, %bb.e ]
  %.lcssa.i = phi i64 [ %i.bz, %bb.d ], [ %i.ch, %bb.e ]
  %i.ci = call range(i64 1, 9) i64 @llvm.ctpop.i64(i64 %.lcssa.i)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl i32 %.0.lcssa.i, 3
  %reass.sub.i = add i32 %i.ck, 8
  %i.cl = sub i32 %reass.sub.i, %i.cj
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bo
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit, label %bb.d, !llvm.loop !4

_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit.loopexit.unr-lcssa: ; preds = %.lr.ph39.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit, label %.lr.ph39.i.epil.preheader

.lr.ph39.i.epil.preheader:                        ; preds = %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit.loopexit.unr-lcssa, %.lr.ph39.preheader.i
  %indvars.iv46.i.epil.init = phi i64 [ 0, %.lr.ph39.preheader.i ], [ %indvars.iv.next47.i.3, %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph39.i.epil

.lr.ph39.i.epil:                                  ; preds = %.lr.ph39.i.epil, %.lr.ph39.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv46.i.epil.init, %.lr.ph39.i.epil.preheader ], [ %indvars.iv.next47.i.epil, %.lr.ph39.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph39.i.epil.preheader ], [ %epil.iter.next, %.lr.ph39.i.epil ]
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv46.i.epil
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !39
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.cp
  store i32 %i.ar, ptr %i.cq, align 4, !tbaa !41
  %indvars.iv.next47.i.epil = add nuw nsw i64 %indvars.iv46.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit, label %.lr.ph39.i.epil, !llvm.loop !148

_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit: ; preds = %._crit_edge.i, %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit.loopexit.unr-lcssa, %.lr.ph39.i.epil
  %.promoted = load ptr, ptr %0, align 8
  br label %.backedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.05761 = phi i16 [ %.sroa.speculated, %.lr.ph ], [ %.05761.ph, %.lr.ph.preheader ]
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !39
  %.sroa.speculated = tail call i16 @llvm.umax.i16(i16 %.05761, i16 %i.cs) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !149

.backedge:                                        ; preds = %.backedge.backedge, %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit
  %i.ct = phi ptr [ %.promoted, %_ZNK5arrow7compute10SwissTable26init_slot_ids_for_new_keysEjPKtPKjPj.exit ], [ null, %.backedge.backedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZN5arrow7compute10SwissTable19map_new_keys_helperEPKjPjPtPbS4_S4_PNS_4util15TempVectorStackERKSt8functionIFviPKtS3_S4_S5_PvEERKSA_IFNS_6StatusEiSC_SD_EESD_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef %i.aa, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.f

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.backedge
  %i.cu = load ptr, ptr %11, align 8, !tbaa !84, !noalias !163 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN5arrow6StatusD2Ev.exit49, label %.critedge46

bb.f:                                             ; preds = %.backedge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ct, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.i

_ZN5arrow6StatusD2Ev.exit49:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !85, !range !74, !noundef !75
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.g, label %.critedgethread-pre-split

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN5arrow7compute10SwissTable11grow_doubleEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN5arrow6StatusD2Ev.exit51 unwind label %bb.h

_ZN5arrow6StatusD2Ev.exit51:                      ; preds = %bb.g
  %i.cz = load ptr, ptr %12, align 8, !tbaa !84, !noalias !164 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN5arrow6StatusD2Ev.exit53.preheader, label %.critedge46

_ZN5arrow6StatusD2Ev.exit53.preheader:            ; preds = %_ZN5arrow6StatusD2Ev.exit51
  %i.db = load i32, ptr %i.a, align 4, !tbaa !41  ; 4 uses
  %.not69 = icmp eq i32 %i.db, 0
  br i1 %.not69, label %.critedge.thread, label %_ZN5arrow6StatusD2Ev.exit53.preheader70

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit53.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.loopexit

_ZN5arrow6StatusD2Ev.exit53.preheader70:          ; preds = %_ZN5arrow6StatusD2Ev.exit53.preheader
  %wide.trip.count83 = zext i32 %i.db to i64      ; 2 uses
  %xtraiter128 = and i64 %wide.trip.count83, 1
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %_ZN5arrow6StatusD2Ev.exit53.epil.preheader, label %_ZN5arrow6StatusD2Ev.exit53.preheader70.new

_ZN5arrow6StatusD2Ev.exit53.preheader70.new:      ; preds = %_ZN5arrow6StatusD2Ev.exit53.preheader70
  %unroll_iter132 = and i64 %wide.trip.count83, 4294967294
  br label %_ZN5arrow6StatusD2Ev.exit53

bb.h:                                             ; preds = %bb.g
  %i.dd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.i

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %_ZN5arrow6StatusD2Ev.exit53, %_ZN5arrow6StatusD2Ev.exit53.preheader70.new
  %indvars.iv80 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.preheader70.new ], [ %indvars.iv.next81.1, %_ZN5arrow6StatusD2Ev.exit53 ] ; 3 uses
  %niter133 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.preheader70.new ], [ %niter133.next.1, %_ZN5arrow6StatusD2Ev.exit53 ]
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv80
  %i.df = load i16, ptr %i.de, align 2, !tbaa !39
  %i.dg = sext i16 %i.df to i64                   ; 2 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !41
  %i.dj = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.dk = sub nsw i32 32, %i.dj
  %i.dl = lshr i32 %i.di, %i.dk
  %i.dm = shl i32 %i.dl, 3
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.dg
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !41
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv80
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !39
  %i.dr = sext i16 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !41
  %i.du = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.dv = sub nsw i32 32, %i.du
  %i.dw = lshr i32 %i.dt, %i.dv
  %i.dx = shl i32 %i.dw, 3
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.dr
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !41
  %indvars.iv.next81.1 = add nuw nsw i64 %indvars.iv80, 2 ; 2 uses
  %niter133.next.1 = add i64 %niter133, 2         ; 2 uses
  %niter133.ncmp.1 = icmp eq i64 %niter133.next.1, %unroll_iter132
  br i1 %niter133.ncmp.1, label %.critedge.unr-lcssa, label %_ZN5arrow6StatusD2Ev.exit53, !llvm.loop !154

.critedgethread-pre-split:                        ; preds = %_ZN5arrow6StatusD2Ev.exit49
  %.pr = load i32, ptr %i.a, align 4, !tbaa !41
  %i.dz = icmp eq i32 %.pr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %i.dz, label %.loopexit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.critedgethread-pre-split, %.critedge
  br label %.backedge, !llvm.loop !155

.critedge.unr-lcssa:                              ; preds = %_ZN5arrow6StatusD2Ev.exit53
  %lcmp.mod130.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %.critedge, label %_ZN5arrow6StatusD2Ev.exit53.epil.preheader

_ZN5arrow6StatusD2Ev.exit53.epil.preheader:       ; preds = %.critedge.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit53.preheader70
  %indvars.iv80.epil.init = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit53.preheader70 ], [ %indvars.iv.next81.1, %.critedge.unr-lcssa ]
  %lcmp.mod131 = trunc i32 %i.db to i1
  call void @llvm.assume(i1 %lcmp.mod131)
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv80.epil.init
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !39
  %i.ec = sext i16 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !41
  %i.ef = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.eg = sub nsw i32 32, %i.ef
  %i.eh = lshr i32 %i.ee, %i.eg
  %i.ei = shl i32 %i.eh, 3
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ec
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !41
  br label %.critedge

.critedge:                                        ; preds = %.critedge.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit53.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.backedge.backedge

.loopexit:                                        ; preds = %.critedgethread-pre-split, %.critedge.thread
  store ptr null, ptr %0, align 8, !tbaa !84, !alias.scope !165
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.h ], [ %i.cw, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @_ZN5arrow4util16TempVectorHolderIjED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  resume { ptr, i32 } %.pn

.critedge46:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit51, %_ZN5arrow6StatusD2Ev.exit
  %i.ek = phi ptr [ %i.cz, %_ZN5arrow6StatusD2Ev.exit51 ], [ %i.cu, %_ZN5arrow6StatusD2Ev.exit ]
  store ptr %i.ek, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.j

bb.j:                                             ; preds = %.critedge46, %.loopexit
  %i.el = load ptr, ptr %10, align 8, !tbaa !64
  %i.em = load i32, ptr %i.z, align 8, !tbaa !77
  %i.en = load i32, ptr %i.w, align 4, !tbaa !65
  %i.eo = shl i32 %i.en, 2
  invoke void @_ZN5arrow4util15TempVectorStack7releaseEij(ptr noundef nonnull align 8 dereferenceable(32) %i.el, i32 noundef %i.em, i32 noundef %i.eo)
          to label %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #21
  unreachable

_ZN5arrow4util16TempVectorHolderIjED2Ev.exit:     ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow4util16TempVectorHolderIjED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute10SwissTable11grow_doubleEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !181 {
bb.a:
  %2 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %3 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %4 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36   ; 12 uses
  %i.d = icmp slt i32 %i.c, 6                     ; 3 uses
  %i.e = icmp samesign ult i32 %i.c, 14           ; 3 uses
  %8 = icmp slt i32 %i.c, 30                      ; 3 uses
  %i.f = select i1 %8, i32 32, i32 64
  %i.g = select i1 %i.e, i32 16, i32 %i.f
  %i.h = select i1 %i.d, i32 8, i32 %i.g          ; 2 uses
  %i.i = add nsw i32 %i.c, 1                      ; 3 uses
  %i.j = icmp slt i32 %i.c, 5                     ; 3 uses
  %i.k = icmp slt i32 %i.c, 13                    ; 3 uses
  %i.l = icmp slt i32 %i.c, 29                    ; 3 uses
  %i.m = sub nuw nsw i32 64, %i.h
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 -1, %i.n                        ; 2 uses
  %i.p = add nuw nsw i32 %i.h, 8
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = select i1 %i.l, i64 40, i64 72
  %i.s = select i1 %i.k, i64 24, i64 %i.r
  %i.t = select i1 %i.j, i64 16, i64 %i.s         ; 6 uses
  %i.u = zext nneg i32 %i.i to i64
  %i.v = shl i64 %i.t, %i.u
  %i.w = add i64 %i.v, 64                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !87
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %4, i64 noundef %i.w, ptr noundef %i.y)
  %i.z = load ptr, ptr %4, align 8, !tbaa !84
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.d, label %bb.b, !prof !76

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.al unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.d:                                             ; preds = %bb.a
  %i.ac = add nsw i32 %i.c, 4
  %i.ad = shl i32 4, %i.ac
  %i.ae = add nuw nsw i32 %i.ad, 64
  %i.af = sext i32 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !88, !noalias !184 ; 2 uses
  store i64 %i.ah, ptr %5, align 8, !tbaa !88, !alias.scope !184
  store ptr null, ptr %i.ag, align 8, !tbaa !88, !noalias !184
  %.cast = inttoptr i64 %i.ah to ptr              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.cast, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !73, !range !74, !noundef !75
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %.cast, i64 8
  %i.am = load i8, ptr %i.al, align 8, !range !74
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false, !prof !76
  %i.ap = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %i.ao, ptr %i.aq, ptr null, !prof !76
  call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 0, i64 %i.w, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !87
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %6, i64 noundef %i.af, ptr noundef %i.as)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %6, align 8, !tbaa !84
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.i, label %bb.f, !prof !76

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ah unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !88, !noalias !187 ; 2 uses
  store i64 %i.ay, ptr %7, align 8, !tbaa !88, !alias.scope !187
  store ptr null, ptr %i.ax, align 8, !tbaa !88, !noalias !187
  %.cast168 = inttoptr i64 %i.ay to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %.cast168, i64 16
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !36
  %.not188 = icmp eq i32 %i.bb, 31
  br i1 %.not188, label %._crit_edge187, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = sub nsw i32 31, %i.c
  %i.bg = sub i32 24, %i.c
  %i.bh = select i1 %8, i32 5, i32 6
  %i.bi = select i1 %i.e, i32 4, i32 %i.bh
  %i.bj = select i1 %i.d, i32 3, i32 %i.bi
  %i.bk = select i1 %i.l, i32 5, i32 6
  %i.bl = select i1 %i.k, i32 4, i32 %i.bk
  %i.bm = select i1 %i.j, i32 3, i32 %i.bl
  br label %bb.k

.preheader:                                       ; preds = %._crit_edge
  %.not190 = icmp eq i32 %i.dn, 31
  br i1 %.not190, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = sub nsw i32 31, %i.c
  %i.bq = select i1 %8, i32 5, i32 6
  %i.br = select i1 %i.e, i32 4, i32 %i.bq
  %i.bs = select i1 %i.d, i32 3, i32 %i.br
  %i.bt = sub i32 24, %i.c
  %notmask = shl nsw i32 -1, %i.i
  %i.bu = xor i32 %notmask, -1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = select i1 %i.l, i32 5, i32 6
  %i.bx = select i1 %i.k, i32 4, i32 %i.bw
  %i.by = select i1 %i.j, i32 3, i32 %i.bx
  br label %bb.u

bb.j:                                             ; preds = %bb.z, %._crit_edge187
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %7, align 8, !tbaa !88    ; 3 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.j
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !90
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(80) %i.ca) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %.lr.ph172, %._crit_edge
  %indvars.iv195 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next196, %._crit_edge ] ; 6 uses
  %i.ce = load ptr, ptr %i.bc, align 8, !tbaa !37 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !73, !range !74, !noundef !75
  %i.ch = trunc nuw i8 %i.cg to i1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load i8, ptr %i.ci, align 8, !range !74
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = select i1 %i.ch, i1 %i.ck, i1 false, !prof !76
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = select i1 %i.cl, ptr %i.cn, ptr null, !prof !76
  %i.cp = mul nuw nsw i64 %indvars.iv195, %i.q
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = load ptr, ptr %5, align 8, !tbaa !88    ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !73, !range !74, !noundef !75
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !range !74
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = select i1 %i.cu, i1 %i.cx, i1 false, !prof !76
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = select i1 %i.cy, ptr %i.da, ptr null, !prof !76
  %i.dc = shl nuw nsw i64 %indvars.iv195, 1
  %i.dd = mul nuw nsw i64 %i.t, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dd ; 3 uses
  %i.df = load i64, ptr %i.cq, align 8, !tbaa !44
  %i.dg = and i64 %i.df, -9187201950435737472
  %i.dh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dg, i1 false)
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = lshr i32 %i.di, 3                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.bd, align 4, !tbaa !41
  store i32 0, ptr %i.a, align 4, !tbaa !41
  store i64 -9187201950435737472, ptr %i.de, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.t
  store i64 -9187201950435737472, ptr %i.dk, align 1
  %.not189 = icmp eq i32 %i.dj, 0
  br i1 %.not189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %wide.trip.count = zext nneg i32 %i.dj to i64
  %.idx217 = shl nuw nsw i64 %indvars.iv195, 5
  %indvars.iv195.tr = trunc nuw nsw i64 %indvars.iv195 to i32
  %i.dm = shl nuw i32 %indvars.iv195.tr, 4
  br label %bb.l

._crit_edge:                                      ; preds = %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute10SwissTable11grow_doubleEv:bb.a
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.g
  %.pn135.pn = phi { ptr, i32 } [ %.pn135, %bb.aj ], [ %i.av, %bb.g ]
  %i.kh = load ptr, ptr %5, align 8, !tbaa !88    ; 3 uses
  %.not.i160 = icmp eq ptr %i.kh, null
  br i1 %.not.i160, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit162, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i161

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i161: ; preds = %bb.ak
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !90
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(80) %i.kh) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit162

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit162: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i161, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.an

bb.al:                                            ; preds = %bb.b, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit159
  %i.kl = load ptr, ptr %4, align 8, !tbaa !84
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %bb.am, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i163, !prof !76

bb.am:                                            ; preds = %bb.al
  %i.kn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !88 ; 3 uses
  %.not.i.i.i.i164 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i.i.i164, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit167, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i165

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i165: ; preds = %bb.am
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !90
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(80) %i.ko) #19, !inline_history !8
  %.pr.pre.i166 = load ptr, ptr %4, align 8, !tbaa !84
  %i.ks = icmp eq ptr %.pr.pre.i166, null
  br i1 %i.ks, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit167, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i163, !prof !96

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i163: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i165, %bb.al
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit167

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit167: ; preds = %bb.am, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i165, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.an:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit162, %bb.c
  %.pn139 = phi { ptr, i32 } [ %i.ab, %bb.c ], [ %.pn135.pn, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit162 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn139
}

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !guid !189 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !84
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN5arrow6Status5StateC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22 ; 9 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !84     ; 5 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !195
  store i8 %i.f, ptr %i.d, align 8, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !196
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !197  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.l, ptr %i.a, align 8, !tbaa !44
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.n, ptr %i.g, align 8, !tbaa !99
  %i.o = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.o, ptr %i.i, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !40
  store i8 %i.q, ptr %i.p, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !197
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91   ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.w, align 8, !tbaa !50
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !50
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6Status5StateC2ERKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !41
  br label %_ZN5arrow6Status5StateC2ERKS1_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6Status5StateC2ERKS1_.exit

_ZN5arrow6Status5StateC2ERKS1_.exit:              ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.a
  %i.af = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %i.d, %bb.f ], [ %i.d, %bb.g ]
  store ptr %i.af, ptr %0, align 8, !tbaa !84
  ret void

bb.h:                                             ; preds = %.noexc.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 56) #23
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !199 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !76

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #19, !inline_history !198
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !84
  %i.h = icmp eq ptr %.pr.pre, null
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !96

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute10SwissTable4initElPNS_10MemoryPoolEib(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 12), (48, 64)) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !211 {
bb.a:
  %6 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %7 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  %8 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %10 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %2, ptr %i.a, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr %3, ptr %i.b, align 8, !tbaa !87
  store i32 10, ptr %1, align 8, !tbaa !212
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %4, ptr %i.c, align 4, !tbaa !36
  %i.d = icmp slt i32 %4, 6
  %i.e = icmp samesign ult i32 %4, 14
  %12 = icmp slt i32 %4, 30
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.g = select i1 %12, i64 40, i64 72
  %i.h = select i1 %i.e, i64 24, i64 %i.g
  %i.i = select i1 %i.d, i64 16, i64 %i.h         ; 2 uses
  %i.j = zext nneg i32 %4 to i64
  %i.k = shl i64 %i.i, %i.j
  %i.l = add i64 %i.k, 64                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %8, i64 noundef %i.l, ptr noundef %3)
  %i.m = load ptr, ptr %8, align 8, !tbaa !84
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b, !prof !76

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.al unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !88, !noalias !215
  store i64 %i.p, ptr %9, align 8, !tbaa !88, !alias.scope !215
  store ptr null, ptr %i.o, align 8, !tbaa !88, !noalias !215
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91   ; 8 uses
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !50
  %i.u = load <2 x ptr>, ptr %7, align 16, !tbaa !50
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !50
  store <2 x ptr> %i.t, ptr %7, align 16, !tbaa !50
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.v, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !94
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !7
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19, !inline_history !7
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %bb.g ], [ %i.ai, %bb.h ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.i, label %bb.j, !prof !95

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ak = load ptr, ptr %9, align 8, !tbaa !88    ; 3 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.j
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !37  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !73, !range !74, !noundef !75
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i8, ptr %i.as, align 8, !range !74
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = select i1 %i.ar, i1 %i.au, i1 false, !prof !76
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = select i1 %i.av, ptr %i.ax, ptr null, !prof !76
  call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.l, i1 false)
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.m
  br i1 %5, label %bb.n, label %bb.u

bb.l:                                             ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %9, align 8, !tbaa !88    ; 3 uses
  %.not.i39 = icmp eq ptr %i.bd, null
  br i1 %.not.i39, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit41, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i40

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i40: ; preds = %bb.l
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(80) %i.bd) #19, !inline_history !6
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit41

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit41: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i40, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.an

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.m
  %.065 = phi i64 [ 0, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bh = mul i64 %.065, %i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  store i64 -9187201950435737472, ptr %i.bi, align 1
  %i.bj = add i64 %.065, 1                        ; 2 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !36  ; 2 uses
  %i.bl = zext nneg i32 %i.bk to i64
  %.0.highbits = lshr i64 %i.bj, %i.bl
  %i.bm = icmp eq i64 %.0.highbits, 0
  br i1 %i.bm, label %bb.m, label %bb.k, !llvm.loop !204

bb.n:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.bn, align 8, !tbaa !88
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !91 ; 8 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !91
  %.not.i.i.i.i42 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i42, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bq, align 8, !tbaa !93
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !94
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !90
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #19, !inline_history !9
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !90
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #19, !inline_history !9
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i43 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i.i43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !41
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i44

bb.s:                                             ; preds = %bb.q
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i44: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i45 = phi i32 [ %i.bt, %bb.r ], [ %i.cd, %bb.s ]
  %i.ce = icmp eq i32 %.0.i.i.i.i.i.i45, 1
  br i1 %i.ce, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i44
end_hunk_4
