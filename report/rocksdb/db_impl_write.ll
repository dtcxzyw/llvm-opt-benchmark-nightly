Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_write?download=true
inline.NumInlined: 5104
inline.NumDeleted: 2221
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb6DBImpl15ScheduleFlushesEPNS0_12WriteContextE:bb.a

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter326 = and i64 %i.ka, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, %.lr.ph.i.preheader.new
  %.sroa.5.017.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.lh, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ] ; 6 uses
  %niter327 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter327.next.1, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1 ]
  %i.ke = icmp ult i64 %.sroa.5.017.i, 8
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.sroa.5.017.i
  %i.kg = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.5.017.i
  %i.kh = getelementptr i8, ptr %i.kg, i64 -64
  %.0.i.i.i = select i1 %i.ke, ptr %i.kf, ptr %i.kh
  %i.ki = load ptr, ptr %.0.i.i.i, align 8, !tbaa !924 ; 2 uses
  %.not.i82 = icmp eq ptr %i.ki, null
  br i1 %.not.i82, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 2776
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !971 ; 3 uses
  %.sroa.06.09.i.i = load ptr, ptr %i.kk, align 8, !tbaa !972 ; 2 uses
  %i.kl = icmp eq ptr %.sroa.06.09.i.i, %i.kk
  br i1 %i.kl, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bd, %bb.be
  %.sroa.06.010.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.be ], [ %.sroa.06.09.i.i, %bb.bd ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !899
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 7496 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !973
  %i.kq = icmp eq i64 %i.kp, 72057594037927935
  br i1 %i.kq, label %bb.be, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i

bb.be:                                            ; preds = %.lr.ph.i.i
  store i64 %i.js, ptr %i.ko, align 8, !tbaa !973
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.010.i.i, align 8, !tbaa !972 ; 2 uses
  %i.kr = icmp eq ptr %.sroa.06.0.i.i, %i.kk
  br i1 %i.kr, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i, label %.lr.ph.i.i, !llvm.loop !974

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i: ; preds = %bb.be, %.lr.ph.i.i, %bb.bd, %.lr.ph.i
  %i.ks = or disjoint i64 %.sroa.5.017.i, 1       ; 2 uses
  %i.kt = icmp ult i64 %.sroa.5.017.i, 8
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.ks
  %i.kv = getelementptr [8 x i8], ptr %i.jv, i64 %i.ks
  %i.kw = getelementptr i8, ptr %i.kv, i64 -64
  %.0.i.i.i.1 = select i1 %i.kt, ptr %i.ku, ptr %i.kw
  %i.kx = load ptr, ptr %.0.i.i.i.1, align 8, !tbaa !924 ; 2 uses
  %.not.i82.1 = icmp eq ptr %i.kx, null
  br i1 %.not.i82.1, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %bb.bf

bb.bf:                                            ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2776
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !971 ; 3 uses
  %.sroa.06.09.i.i.1 = load ptr, ptr %i.kz, align 8, !tbaa !972 ; 2 uses
  %i.la = icmp eq ptr %.sroa.06.09.i.i.1, %i.kz
  br i1 %i.la, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.bf, %bb.bg
  %.sroa.06.010.i.i.1 = phi ptr [ %.sroa.06.0.i.i.1, %bb.bg ], [ %.sroa.06.09.i.i.1, %bb.bf ] ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.1, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !899
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 7496 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !973
  %i.lf = icmp eq i64 %i.le, 72057594037927935
  br i1 %i.lf, label %bb.bg, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1

bb.bg:                                            ; preds = %.lr.ph.i.i.1
  store i64 %i.js, ptr %i.ld, align 8, !tbaa !973
  %.sroa.06.0.i.i.1 = load ptr, ptr %.sroa.06.010.i.i.1, align 8, !tbaa !972 ; 2 uses
  %i.lg = icmp eq ptr %.sroa.06.0.i.i.1, %i.kz
  br i1 %i.lg, label %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1, label %.lr.ph.i.i.1, !llvm.loop !974

_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1: ; preds = %.lr.ph.i.i.1, %bb.bg, %bb.bf, %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i
  %i.lh = add nuw i64 %.sroa.5.017.i, 2           ; 2 uses
  %niter327.next.1 = add i64 %niter327, 2         ; 2 uses
  %niter327.ncmp.1 = icmp eq i64 %niter327.next.1, %unroll_iter326
  br i1 %niter327.ncmp.1, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, label %.lr.ph.i

_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa: ; preds = %_ZN7rocksdb12MemTableList20AssignAtomicFlushSeqERKm.exit.i.1
  %lcmp.mod324.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod324.not, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.5.017.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.lh, %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod325 = trunc i64 %i.ka to i1
  call void @llvm.assume(i1 %lcmp.mod325)
  %i.li = icmp ult i64 %.sroa.5.017.i.epil.init, 8
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %.sroa.5.017.i.epil.init
  %i.lk = getelementptr [8 x i8], ptr %i.jv, i64 %.sroa.5.017.i.epil.init
  %i.ll = getelementptr i8, ptr %i.lk, i64 -64
  %.0.i.i.i.epil = select i1 %i.li, ptr %i.lj, ptr %i.ll
  %i.lm = load ptr, ptr %.0.i.i.i.epil, align 8, !tbaa !924 ; 2 uses
  %.not.i82.epil = icmp eq ptr %i.lm, null
  br i1 %.not.i82.epil, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.epil.preheader
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 2776
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !971 ; 3 uses
  %.sroa.06.09.i.i.epil = load ptr, ptr %i.lo, align 8, !tbaa !972 ; 2 uses
  %i.lp = icmp eq ptr %.sroa.06.09.i.i.epil, %i.lo
  br i1 %i.lp, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %bb.bh, %bb.bi
  %.sroa.06.010.i.i.epil = phi ptr [ %.sroa.06.0.i.i.epil, %bb.bi ], [ %.sroa.06.09.i.i.epil, %bb.bh ] ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i.epil, i64 16
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !899
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 7496 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !973
  %i.lu = icmp eq i64 %i.lt, 72057594037927935
  br i1 %i.lu, label %bb.bi, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit

bb.bi:                                            ; preds = %.lr.ph.i.i.epil
  store i64 %i.js, ptr %i.ls, align 8, !tbaa !973
  %.sroa.06.0.i.i.epil = load ptr, ptr %.sroa.06.010.i.i.epil, align 8, !tbaa !972 ; 2 uses
  %i.lv = icmp eq ptr %.sroa.06.0.i.i.epil, %i.lo
  br i1 %i.lv, label %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !974

_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit: ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.bi, %bb.bh, %.lr.ph.i.epil.preheader, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.lw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !963
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 1, ptr %i.lz, align 8, !tbaa !964
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mb, align 8, !tbaa !965
  %i.mc = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mc, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.lw, align 4, !tbaa !959
  invoke void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %.2, ptr noundef nonnull %8)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit
  %i.md = invoke noundef zeroext i1 @_ZN7rocksdb6DBImpl19EnqueuePendingFlushERKNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.bk unwind label %bb.bm     ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.me = load ptr, ptr %i.ma, align 8, !tbaa !966 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bk, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i ], [ %i.me, %bb.bk ] ; 2 uses
  %i.mf = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !893 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #34
  %.not.i.i.i.i.i83 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i83, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !967

_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.bk
  %i.mg = load ptr, ptr %i.lx, align 8, !tbaa !963
  %i.mh = load i64, ptr %i.lz, align 8, !tbaa !964
  %i.mi = shl i64 %i.mh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.mg, i8 0, i64 %i.mi, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, i8 0, i64 16, i1 false)
  %i.mj = load ptr, ptr %i.lx, align 8, !tbaa !963 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.ly
  br i1 %i.mk, label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.ml = load i64, ptr %i.lz, align 8, !tbaa !964
  %i.mm = shl i64 %i.ml, 3
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #34
  br label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit

_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit:        ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %.loopexit172

bb.bm:                                            ; preds = %bb.bj, %_ZN7rocksdb6DBImpl20AssignAtomicFlushSeqERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEE.exit
  %i.mn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb6DBImpl12FlushRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.ce

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit155: ; preds = %.lr.ph206, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102
  %i.mo = phi ptr [ %i.ix, %.lr.ph206 ], [ %i.nr, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102 ]
  %.022205 = phi i64 [ 0, %.lr.ph206 ], [ %i.no, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store i8 0, ptr %i.jd, align 4, !tbaa !959
  store ptr %i.jf, ptr %i.je, align 8, !tbaa !963
  store i64 1, ptr %i.jg, align 8, !tbaa !964
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ji, align 8, !tbaa !965
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.mp = icmp ult i64 %.022205, 8                ; 2 uses
  %i.mq = load ptr, ptr %i.a, align 8
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %.022205
  %i.ms = getelementptr [8 x i8], ptr %i.mo, i64 %.022205
  %i.mt = getelementptr i8, ptr %i.ms, i64 -64
  %.0.i = select i1 %i.mp, ptr %i.mr, ptr %i.mt
  %i.mu = load ptr, ptr %.0.i, align 8, !tbaa !924
  store ptr %i.jl, ptr %i.jk, align 8, !tbaa !892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, i8 0, i64 24, i1 false)
  store i64 1, ptr %10, align 8, !tbaa !891
  store ptr %i.mu, ptr %i.jl, align 8, !tbaa !924
  %.pre227 = load ptr, ptr %i.er, align 8
  %11 = getelementptr inbounds nuw [4 x i8], ptr %.pre227, i64 %.022205
  %12 = load ptr, ptr %i.et, align 8
  %i.mv = getelementptr [4 x i8], ptr %12, i64 %.022205
  %i.mw = getelementptr i8, ptr %i.mv, i64 -32
  %.0.i87 = select i1 %i.mp, ptr %11, ptr %i.mw
  %i.mx = load i32, ptr %.0.i87, align 4, !tbaa !1474
  invoke void @_ZN7rocksdb6DBImpl20GenerateFlushRequestERKNS_10autovectorIPNS_16ColumnFamilyDataELm8EEENS_11FlushReasonEPNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(104) %10, i32 noundef %i.mx, ptr noundef nonnull %9)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit155
  %.pr.i.i88 = load i64, ptr %10, align 8, !tbaa !891
  %.not1.i.i89 = icmp eq i64 %.pr.i.i88, 0
  br i1 %.not1.i.i89, label %bb.bo, label %.lr.ph.preheader.i.i90

.lr.ph.preheader.i.i90:                           ; preds = %bb.bn
  store i64 0, ptr %10, align 8, !tbaa !891
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.preheader.i.i90, %bb.bn
  %i.my = load ptr, ptr %i.jm, align 8, !tbaa !915 ; 5 uses
  %i.mz = load ptr, ptr %i.jn, align 8, !tbaa !914
  %.not.i.i.i.i91 = icmp eq ptr %i.mz, %i.my
  br i1 %.not.i.i.i.i91, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92: ; preds = %bb.bo
  store ptr %i.my, ptr %i.jn, align 8, !tbaa !914
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i92, %bb.bo
  %.not.i.i.i1.i94 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i1.i94, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96, label %bb.bp

bb.bp:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93
  %i.na = load ptr, ptr %i.jo, align 8, !tbaa !937
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nd) #34
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96: ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i93, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.ne = invoke noundef zeroext i1 @_ZN7rocksdb6DBImpl19EnqueuePendingFlushERKNS0_12FlushRequestE(ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr noundef nonnull align 8 dereferenceable(64) %9)
          to label %bb.bq unwind label %bb.bv     ; 0 uses

bb.bq:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96
  %i.nf = load ptr, ptr %i.jh, align 8, !tbaa !966 ; 2 uses
  %.not5.i.i.i.i.i97 = icmp eq ptr %i.nf, null
  br i1 %.not5.i.i.i.i.i97, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i101, label %.lr.ph.i.i.i.i.i98

.lr.ph.i.i.i.i.i98:                               ; preds = %bb.bq, %.lr.ph.i.i.i.i.i98
  %.06.i.i.i.i.i99 = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i98 ], [ %i.nf, %bb.bq ] ; 2 uses
  %i.ng = load ptr, ptr %.06.i.i.i.i.i99, align 8, !tbaa !893 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i99, i64 noundef 24) #34
  %.not.i.i.i.i.i100 = icmp eq ptr %i.ng, null
  br i1 %.not.i.i.i.i.i100, label %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i101, label %.lr.ph.i.i.i.i.i98, !llvm.loop !967

_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i101: ; preds = %.lr.ph.i.i.i.i.i98, %bb.bq
  %i.nh = load ptr, ptr %i.je, align 8, !tbaa !963
  %i.ni = load i64, ptr %i.jg, align 8, !tbaa !964
  %i.nj = shl i64 %i.ni, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.nh, i8 0, i64 %i.nj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i8 0, i64 16, i1 false)
  %i.nk = load ptr, ptr %i.je, align 8, !tbaa !963 ; 2 uses
  %i.nl = icmp eq ptr %i.nk, %i.jf
  br i1 %i.nl, label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102, label %bb.br

bb.br:                                            ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i101
  %i.nm = load i64, ptr %i.jg, align 8, !tbaa !964
  %i.nn = shl i64 %i.nm, 3
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.nn) #34
  br label %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102

_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102:     ; preds = %_ZNSt10_HashtableIPN7rocksdb16ColumnFamilyDataESt4pairIKS2_mESaIS5_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i101, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  %i.no = add nuw i64 %.022205, 1                 ; 2 uses
  %i.np = load i64, ptr %3, align 8, !tbaa !891
  %i.nq = load ptr, ptr %i.ev, align 8, !tbaa !914
  %i.nr = load ptr, ptr %i.c, align 8, !tbaa !915 ; 2 uses
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = ashr exact i64 %i.nu, 3
  %i.nw = add i64 %i.nv, %i.np
  %i.nx = icmp ult i64 %i.no, %i.nw
  br i1 %i.nx, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit155, label %.loopexit172, !llvm.loop !1478

bb.bs:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE9push_backERKS2_.exit155
  %i.ny = landingpad { ptr, i32 }
          cleanup
  %.pr.i.i103 = load i64, ptr %10, align 8, !tbaa !891
  %.not1.i.i104 = icmp eq i64 %.pr.i.i103, 0
  br i1 %.not1.i.i104, label %bb.bt, label %.lr.ph.preheader.i.i105

.lr.ph.preheader.i.i105:                          ; preds = %bb.bs
  store i64 0, ptr %10, align 8, !tbaa !891
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.preheader.i.i105, %bb.bs
  %i.nz = load ptr, ptr %i.jm, align 8, !tbaa !915 ; 5 uses
  %i.oa = load ptr, ptr %i.jn, align 8, !tbaa !914
  %.not.i.i.i.i106 = icmp eq ptr %i.oa, %i.nz
  br i1 %.not.i.i.i.i106, label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i108, label %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i107

_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i107: ; preds = %bb.bt
  store ptr %i.nz, ptr %i.jn, align 8, !tbaa !914
  br label %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i108

_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i108: ; preds = %_ZSt8_DestroyIPPN7rocksdb16ColumnFamilyDataES2_EvT_S4_RSaIT0_E.exit.i.i.i.i107, %bb.bt
  %.not.i.i.i1.i109 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i.i1.i109, label %.body, label %bb.bu

bb.bu:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i108
  %i.ob = load ptr, ptr %i.jo, align 8, !tbaa !937
  %i.oc = ptrtoint ptr %i.ob to i64
  %i.od = ptrtoint ptr %i.nz to i64
  %i.oe = sub i64 %i.oc, %i.od
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef %i.oe) #34
  br label %.body

.body:                                            ; preds = %bb.bu, %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EE5clearEv.exit.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.bw

bb.bv:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_16ColumnFamilyDataELm8EED2Ev.exit96
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.body
  %.pn44 = phi { ptr, i32 } [ %i.of, %bb.bv ], [ %i.ny, %.body ]
  call void @_ZN7rocksdb6DBImpl12FlushRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.ce

.loopexit172:                                     ; preds = %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit102, %.preheader, %_ZN7rocksdb6DBImpl12FlushRequestD2Ev.exit
  invoke void @_ZN7rocksdb6DBImpl30MaybeScheduleFlushOrCompactionEv(ptr noundef nonnull align 64 dereferenceable(7336) %1)
          to label %bb.bx unwind label %bb.ag

bb.bx:                                            ; preds = %.loopexit172, %bb.ba
  %.pr.i.i112 = load i64, ptr %6, align 8, !tbaa !1461
  %.not1.i.i113 = icmp eq i64 %.pr.i.i112, 0
  br i1 %.not1.i.i113, label %bb.by, label %.lr.ph.preheader.i.i114

.lr.ph.preheader.i.i114:                          ; preds = %bb.bx
  store i64 0, ptr %6, align 8, !tbaa !1461
  br label %bb.by

bb.by:                                            ; preds = %.lr.ph.preheader.i.i114, %bb.bx
  %i.og = load ptr, ptr %i.et, align 8, !tbaa !1468 ; 5 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !1469
  %.not.i.i.i.i115 = icmp eq ptr %i.oi, %i.og
  br i1 %.not.i.i.i.i115, label %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE5clearEv.exit.i, label %_ZSt8_DestroyIPN7rocksdb11FlushReasonES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN7rocksdb11FlushReasonES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.by
  store ptr %i.og, ptr %i.oh, align 8, !tbaa !1469
  br label %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE5clearEv.exit.i

_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb11FlushReasonES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.by
  %.not.i.i.i1.i116 = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i1.i116, label %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE5clearEv.exit.i
  %i.oj = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !1470
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = ptrtoint ptr %i.og to i64
  %i.on = sub i64 %i.ol, %i.om
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.on) #34
  br label %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EED2Ev.exit

_ZN7rocksdb10autovectorINS_11FlushReasonELm8EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EE5clearEv.exit.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.oo = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.op = load i8, ptr %i.oo, align 8, !tbaa !728, !range !72, !noundef !73
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EED2Ev.exit
  %i.or = getelementptr inbounds nuw i8, ptr %5, i64 192
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.or) #33
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %_ZN7rocksdb10autovectorINS_11FlushReasonELm8EED2Ev.exit
  %i.os = load ptr, ptr %i.ej, align 8, !tbaa !43 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.os) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit.i

_ZN7rocksdb6StatusD2Ev.exit.i:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %bb.cb
  %i.ot = load ptr, ptr %i.ei, align 8, !tbaa !43 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i1.i, label %_ZN7rocksdb11WriteThread6WriterD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.ot) #34
  br label %_ZN7rocksdb11WriteThread6WriterD2Ev.exit

_ZN7rocksdb11WriteThread6WriterD2Ev.exit:         ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i2.i
end_hunk_0
