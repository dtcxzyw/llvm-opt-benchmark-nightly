inline.NumInlined: 9995
inline.NumDeleted: 4212
begin_hunk_0_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3195.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5196.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3183.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5184.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10169.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5165.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8135.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !18868
  %i.pc = icmp eq i64 %.sroa.01.0.copyload2.i.i, -9223372036854775742
  br i1 %i.pc, label %bb.hj, label %bb.hb

bb.hb:                                            ; preds = %_RNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8 ; 3 uses
  %i.pe = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.10.i.i, i64 88, i1 false), !noalias !19069
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !18838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !18838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19070
  store ptr %i.pe, ptr %i.b, align 8, !noalias !19070
  %i.pf = atomicrmw xchg ptr %i.dz, i8 1 seq_cst, align 1, !noalias !19075
  %i.pg = icmp eq i8 %i.pf, 0                     ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.pd)
          to label %bb.hd unwind label %bb.hc, !noalias !19075

bb.hc:                                            ; preds = %bb.hb
  %i.ph = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.pd, align 8, !noalias !19075
  br i1 %i.pg, label %bb.hg, label %.thread.i

bb.hd:                                            ; preds = %bb.hb
  store i64 0, ptr %i.pd, align 8, !noalias !19075
  br i1 %i.pg, label %bb.he, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.he:                                            ; preds = %bb.hd
  %i.pi = atomicrmw sub ptr %i.pe, i64 1 release, align 8, !noalias !19076
  %i.pj = icmp eq i64 %i.pi, 1
  br i1 %i.pj, label %bb.hf, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.hf:                                            ; preds = %bb.he
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b) #58, !noalias !18836
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.hg:                                            ; preds = %bb.hc
  %i.pk = atomicrmw sub ptr %i.pe, i64 1 release, align 8, !noalias !19081
  %i.pl = icmp eq i64 %i.pk, 1
  br i1 %i.pl, label %bb.hh, label %.thread.i

bb.hh:                                            ; preds = %bb.hg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b) #58
          to label %.thread.i unwind label %bb.hi, !noalias !19075

bb.hi:                                            ; preds = %bb.hh
  %i.pm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19075
  unreachable

bb.hj:                                            ; preds = %_RNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i, %_RNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !18838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !18838
  %i.pn = add i64 %.sroa.08.0.i.ph, 1             ; 2 uses
  %i.po = load atomic i8, ptr %i.ep monotonic, align 1, !noalias !18836
  %i.pp = icmp ne i8 %i.po, 0
  %i.pq = zext i1 %i.pp to i64
  %i.pr = add nuw nsw i64 %.sroa.010.0.i.ph, %i.pq ; 2 uses
  %i.ps = atomicrmw xchg ptr %i.aw, ptr %.sroa.01.0.i.i acq_rel, align 8, !noalias !18836 ; 5 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %.critedge.i.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.pu = load ptr, ptr %i.av, align 8, !noalias !18836, !nonnull !3, !noundef !3
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !noalias !18836, !nonnull !3, !noundef !3
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 848
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hl, %bb.hk
  %i.pz = load atomic ptr, ptr %i.py acquire, align 8
  %.not.i32.i = icmp eq ptr %i.pz, %i.px
  br i1 %.not.i32.i, label %bb.hl, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ps, i64 864
  %i.qb = load i64, ptr %i.qa, align 8, !noundef !3
  %i.qc = add i64 %i.qb, 1
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 864
  store i64 %i.qc, ptr %i.qd, align 8, !noalias !18836
  store atomic ptr %i.ps, ptr %i.dj release, align 8, !noalias !18836
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ps, i64 856
  store ptr %.sroa.01.0.i.i, ptr %i.qe, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

.critedge.i.i:                                    ; preds = %bb.hj
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 864
  store i64 1, ptr %i.qf, align 8, !noalias !18836
  store atomic ptr null, ptr %i.dj release, align 8, !noalias !18836
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.critedge.i.i, %bb.hm
  %i.qg = icmp samesign ugt i64 %i.pr, 1
  %i.qh = icmp eq i64 %i.pn, %.sroa.0.0.i.i
  %or.cond.i = select i1 %i.qg, i1 true, i1 %i.qh
  br i1 %or.cond.i, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18838
  br label %.outer

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39: ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE4linkCs14kWLkQVSKO_14deltalake_core.exit.i
  %i.qi = load ptr, ptr %i.ax, align 8, !noalias !18836, !nonnull !3, !align !356, !noundef !3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !18836, !nonnull !3, !noundef !3
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !noalias !18836, !noundef !3
  call void %i.qk(ptr noundef %i.qm), !noalias !18836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18838
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.hn:                                            ; preds = %bb.ae, %bb.hp
  %i.qn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.af, %bb.ag, %bb.hn
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !18836
  unreachable

.thread.i:                                        ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.hp, %bb.ho, %bb.hh, %bb.hg, %bb.hc
  %.pn2454.i = phi { ptr, i32 } [ %i.ph, %bb.hh ], [ %.pn.i21, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EE12release_taskCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.ho ], [ %lpad.thr_comm.split-lp.i, %bb.hp ], [ %i.ph, %bb.hc ], [ %i.ph, %bb.hg ]
  resume { ptr, i32 } %.pn2454.i

bb.ho:                                            ; preds = %bb.y
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qo = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  %i.qp = atomicrmw sub ptr %i.qo, i64 1 release, align 8, !noalias !19086
  %i.qq = icmp eq i64 %i.qp, 1
  br i1 %i.qq, label %bb.hp, label %.thread.i

bb.hp:                                            ; preds = %bb.ho
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ae) #58
          to label %.thread.i unwind label %bb.hn, !noalias !18836

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.hd, %bb.he, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !18838
  %i.qr = icmp eq i64 %.sroa.01.0.copyload2.i.i, -9223372036854775741
  br i1 %i.qr, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.hq

_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit, %bb.q, %bb.r, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread39
  store i64 -9223372036854775741, ptr %0, align 16
  br label %bb.hs

bb.hq:                                            ; preds = %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 %.sroa.01.0.copyload2.i.i, ptr %i.ag, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, i64 88, i1 false)
  store i64 %i.er, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx, align 16
  %i.qs = load i64, ptr %i.bi, align 8, !noundef !3
  %i.qt = icmp eq i64 %i.er, %i.qs
  br i1 %i.qt, label %bb.hu, label %bb.ht

bb.hr:                                            ; preds = %bb.q
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.qu, align 8, !alias.scope !18835, !noalias !18836
  store i64 -9223372036854775742, ptr %0, align 16
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hu, %bb.hr, %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystem15read_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.hv

bb.ht:                                            ; preds = %bb.hq
  call void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEE4pushCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f

bb.hu:                                            ; preds = %bb.hq
  %i.qv = add i64 %i.er, 1
  store i64 %i.qv, ptr %i.bi, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.ag, i64 96, i1 false)
  br label %bb.hs

bb.hv:                                            ; preds = %bb.hs, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 16               ; 13 uses
  %i.e = alloca [200 x i8], align 8               ; 11 uses
  %.sroa.8136.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %i.f = alloca [152 x i8], align 8               ; 8 uses
  %i.g = alloca [304 x i8], align 16              ; 11 uses
  %i.h = alloca [200 x i8], align 8               ; 5 uses
  %i.i = alloca [200 x i8], align 8               ; 8 uses
  %.sroa.8128.i.i.i.i = alloca [32 x i8], align 8 ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [200 x i8], align 8               ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.3121.i.i.i.i = alloca [72 x i8], align 8 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [112 x i8], align 8   ; 6 uses
  %i.n = alloca [192 x i8], align 8               ; 8 uses
  %i.o = alloca [192 x i8], align 8               ; 19 uses
  %.sroa.8.i.i.i.i = alloca [24 x i8], align 8    ; 7 uses
  %i.p = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.7.i.i = alloca [88 x i8], align 8        ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [16 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [112 x i8], align 16              ; 5 uses
  %.sroa.9 = alloca [88 x i8], align 8            ; 5 uses
  %i.v = alloca [112 x i8], align 16              ; 2 uses
  %i.w = alloca [16 x i8], align 8                ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !3 ; 2 uses
  %i.z = icmp ult i64 %i.y, 82351536043346213
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %1, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load i64, ptr %i.ae, align 16, !noundef !3 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !3
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.al = load ptr, ptr %2, align 8, !alias.scope !19091, !noalias !19094, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.10.0..sroa_idx113.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.2.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.3121.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %.sroa.5123.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 96 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.10130.0..sroa_idx131.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.10130.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.8128.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 298
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 297
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.10138.0..sroa_idx139.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.0148.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0148.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %.sroa.5149.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %.sroa.8151.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.bc = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 5 uses
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2m_3pin3PinINtNtB8_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2i_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2m_6marker4SendEL_EEB5k_EEENtNtNtB2m_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.be = add i64 %i.af, 1
  store i64 %i.be, ptr %i.ag, align 8
  call void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtB2n_3pin3PinINtNtB9_5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIB2j_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB2n_6marker4SendEL_EEB5l_EEE3popCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.v, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ey

bb.f:                                             ; preds = %bb.ew, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !19097)
  call void @llvm.experimental.noalias.scope.decl(metadata !19091)
  %i.bf = load atomic ptr, ptr %i.ak acquire, align 8, !alias.scope !19097, !noalias !19098 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.aj, align 8, !alias.scope !19097, !noalias !19098, !nonnull !3, !noundef !3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !19098, !nonnull !3, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 488
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.bm = load atomic ptr, ptr %i.bl acquire, align 8, !noalias !19098
  %.not.i.i = icmp eq ptr %i.bm, %i.bk
  br i1 %.not.i.i, label %bb.h, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 504
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !19098, !noundef !3
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.i, %bb.f
  %.sroa.0.0.i.i = phi i64 [ %i.bo, %bb.i ], [ 0, %bb.f ]
  %i.bp = load ptr, ptr %i.aj, align 8, !alias.scope !19097, !noalias !19098, !nonnull !3, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al), !noalias !19098
  br label %.outer

.outer:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.010.0.i.ph = phi i64 [ %i.mt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.08.0.i.ph = phi i64 [ %i.mp, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core.exit38.i ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE28atomic_load_head_and_len_allCs14kWLkQVSKO_14deltalake_core.exit.i ]
  br label %bb.j

bb.j:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.br = load ptr, ptr %i.aj, align 8, !alias.scope !19097, !noalias !19098, !nonnull !3, !noundef !3 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !19098, !noundef !3 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 512
  %i.bw = load atomic ptr, ptr %i.bv acquire, align 8, !noalias !19098 ; 5 uses
  %i.bx = load ptr, ptr %i.bs, align 8, !noalias !19098, !nonnull !3, !noundef !3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = icmp eq ptr %i.bu, %i.by
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = icmp eq ptr %i.bw, null
  br i1 %i.ca, label %bb.q, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.07.0.i.i = phi ptr [ %i.cd, %bb.m ], [ %i.bw, %bb.j ] ; 2 uses
  %.sroa.01.0.i.i = phi ptr [ %i.bw, %bb.m ], [ %i.bu, %bb.j ] ; 69 uses
  %i.cb = icmp eq ptr %.sroa.07.0.i.i, null
  br i1 %i.cb, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.k
  store ptr %i.bw, ptr %i.bt, align 8, !noalias !19098
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 512
  %i.cd = load atomic ptr, ptr %i.cc acquire, align 8, !noalias !19098
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 48 ; 2 uses
  %i.cf = load atomic ptr, ptr %i.ce acquire, align 8, !noalias !19098
  %i.cg = icmp eq ptr %i.cf, %.sroa.01.0.i.i
  br i1 %i.cg, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ch = load ptr, ptr %i.bs, align 8, !noalias !19098, !nonnull !3, !noundef !3 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 528
  store atomic ptr null, ptr %i.cj monotonic, align 8, !noalias !19098
  %i.ck = atomicrmw xchg ptr %i.ce, ptr %i.ci acq_rel, align 8, !noalias !19098
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 512
  store atomic ptr %i.ci, ptr %i.cl release, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 512
  %i.cn = load atomic ptr, ptr %i.cm acquire, align 8, !noalias !19098 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.sroa.07.0.sink.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %i.cn, %bb.o ]
  store ptr %.sroa.07.0.sink.i.i, ptr %i.bt, align 8, !noalias !19098
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !381, !noalias !19098, !noundef !3
  %i.cr = trunc nuw i64 %i.cq to i1
  br i1 %i.cr, label %bb.s, label %bb.w

bb.q:                                             ; preds = %bb.k
  %i.cs = load atomic ptr, ptr %i.ak monotonic, align 8, !alias.scope !19097, !noalias !19098
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.eu, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.cu = load ptr, ptr %i.al, align 8, !noalias !19098, !nonnull !3, !align !356, !noundef !3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !19098, !nonnull !3, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !19098, !noundef !3
  call void %i.cw(ptr noundef %i.cy), !noalias !19098, !inline_history !19099
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.s:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !19100
  call void @llvm.experimental.noalias.scope.decl(metadata !19101)
  %i.da = load ptr, ptr %i.ak, align 8, !alias.scope !19104, !noalias !19098, !noundef !3 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 504
  %i.dc = load i64, ptr %i.db, align 8, !noalias !19105, !noundef !3
  %i.dd = add i64 %i.dc, -1
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 488 ; 4 uses
  %i.df = load atomic ptr, ptr %i.de monotonic, align 8, !noalias !19105 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 496 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !19105, !noundef !3 ; 4 uses
  %i.di = load ptr, ptr %i.aj, align 8, !alias.scope !19104, !noalias !19098, !nonnull !3, !noundef !3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !19105, !nonnull !3, !noundef !3
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store atomic ptr %i.dl, ptr %i.de monotonic, align 8, !noalias !19105
  store ptr null, ptr %i.dg, align 8, !noalias !19105
  %i.dm = icmp eq ptr %i.df, null
  br i1 %i.dm, label %.thread3.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 496
  store ptr %i.dh, ptr %i.dn, align 8, !noalias !19105
  %i.do = icmp eq ptr %i.dh, null
  br i1 %i.do, label %bb.u, label %.thread.i.i

.thread3.i.i:                                     ; preds = %bb.s
  %i.dp = icmp eq ptr %i.dh, null
  br i1 %i.dp, label %.thread4.i.i, label %.thread.i.i

.thread4.i.i:                                     ; preds = %.thread3.i.i
  store ptr null, ptr %i.ak, align 8, !alias.scope !19104, !noalias !19098
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

.thread.i.i:                                      ; preds = %.thread3.i.i, %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 488
  store atomic ptr %i.df, ptr %i.dq monotonic, align 8, !noalias !19105
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.df, ptr %i.ak, align 8, !alias.scope !19104, !noalias !19098
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i
  %i.dr = phi ptr [ %i.da, %.thread.i.i ], [ %i.df, %bb.u ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 504
  store i64 %i.dd, ptr %i.ds, align 8, !noalias !19105
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EE6unlinkCs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.v, %.thread4.i.i
  %i.dt = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  store ptr %i.dt, ptr %i.s, align 8, !noalias !19100
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 520 ; 3 uses
  %i.dv = atomicrmw xchg ptr %i.du, i8 0 seq_cst, align 1, !noalias !19098
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.y, label %bb.ai, !prof !21

bb.w:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !19100
  %i.dx = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 2 uses
  store ptr %i.dx, ptr %i.t, align 8, !noalias !19100
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !noalias !19106
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.t) #58, !noalias !19098
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !19100
  br label %bb.j
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_14FuturesOrderedNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000ENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !19139
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 424 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !19135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !19139
  %.val54.i.i.i.i = load ptr, ptr %i.fk, align 8, !noalias !19135, !nonnull !3, !noundef !3
  %.val55.i.i.i.i = load ptr, ptr %i.fl, align 8, !noalias !19135, !nonnull !3, !align !356, !noundef !3 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val55.i.i.i.i, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !range !645, !invariant.load !3, !noalias !19140
  %i.fy = add nsw i64 %i.fx, -1
  %i.fz = and i64 %i.fy, -16
  %i.ga = getelementptr inbounds nuw i8, ptr %.val54.i.i.i.i, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %.val55.i.i.i.i, i64 80
  %i.gd = load ptr, ptr %i.gc, align 8, !invariant.load !3, !noalias !19140, !nonnull !3
  %i.ge = invoke { ptr, ptr } %i.gd(ptr noundef nonnull %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fv)
          to label %bb.av unwind label %bb.au, !noalias !19140 ; 2 uses

bb.au:                                            ; preds = %bb.at
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.gg = extractvalue { ptr, ptr } %i.ge, 0
  %i.gh = extractvalue { ptr, ptr } %i.ge, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 448
  store ptr %i.gg, ptr %i.gi, align 8, !noalias !19135
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 456
  store ptr %i.gh, ptr %i.gj, align 8, !noalias !19135
  br label %bb.bb

bb.aw:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx113.i.i.i.i, i64 40, i1 false), !noalias !19139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !19139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.2.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !19139
  call void @llvm.experimental.noalias.scope.decl(metadata !19146)
  store i64 -9223372036854775776, ptr %i.d, align 16, !alias.scope !19149, !noalias !19151
  store i64 %i.fu, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !19152, !noalias !19139
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit101.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit101.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i, %bb.aw
  %i.gk = phi ptr [ %i.gs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i ], [ %i.fh, %bb.aw ] ; 5 uses
  %i.gl = phi ptr [ %i.gt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i ], [ %i.fi, %bb.aw ] ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 320 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.gm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i unwind label %bb.ax, !noalias !19140

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit101.i.i.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.gm)
          to label %.body.i.i.i.i unwind label %bb.ay, !noalias !19140

bb.ay:                                            ; preds = %bb.ax
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19140
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit101.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.gm)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.cv, !noalias !19140

.body71.i.i.i.i:                                  ; preds = %bb.di, %bb.cs, %bb.cq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.as
  %i.gp = phi ptr [ %i.fh, %bb.as ], [ %i.jb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.gs, %bb.cq ], [ %i.gs, %bb.cs ], [ %i.gs, %bb.di ]
  %i.gq = phi ptr [ %i.fi, %bb.as ], [ %i.jc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.gt, %bb.cq ], [ %i.gt, %bb.cs ], [ %i.gt, %bb.di ]
  %.pn35.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.as ], [ %.pn32.pn.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.jg, %bb.cq ], [ %i.ji, %bb.cs ], [ %i.kt, %bb.di ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 320
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(104) %i.gr) #54
          to label %.body.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.az:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #55
          to label %.noexc.i.i.i unwind label %bb.dz, !noalias !19153

.noexc.i.i.i:                                     ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #55
          to label %.noexc6.i.i.i unwind label %bb.dz, !noalias !19153

.noexc6.i.i.i:                                    ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.av, %bb.an
  %i.gs = phi ptr [ %i.fh, %bb.av ], [ %.phi.trans.insert.i.i.i, %bb.an ] ; 17 uses
  %i.gt = phi ptr [ %i.fi, %bb.av ], [ %i.fc, %bb.an ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !19139
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 448 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.bd unwind label %bb.bc, !noalias !19140

bb.bc:                                            ; preds = %bb.bb
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !19139
  %.val.i.i.i.i = load ptr, ptr %i.gu, align 8, !noalias !19135
  %i.gw = getelementptr i8, ptr %.sroa.01.0.i.i, i64 456
  %.val44.i.i.i.i = load ptr, ptr %i.gw, align 8, !noalias !19135, !nonnull !3, !align !356, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val.i.i.i.i, ptr nonnull %.val44.i.i.i.i) #54
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.bd:                                            ; preds = %bb.bb
  %i.gx = load i64, ptr %i.n, align 8, !range !305, !noalias !19139, !noundef !3 ; 3 uses
  %i.gy = icmp eq i64 %i.gx, -9223372036854775807
  br i1 %i.gy, label %.thread25.i.i.i, label %bb.be

.thread25.i.i.i:                                  ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !19139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !19139
  store i8 3, ptr %i.gs, align 8, !noalias !19135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8136.i.i.i.i), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8128.i.i.i.i), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3121.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  br label %bb.em

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3121.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3121.0..sroa_idx.i.i.i.i, i64 72, i1 false), !noalias !19139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx.i.i.i.i, i64 112, i1 false), !noalias !19139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !19139
  %.val45.i.i.i.i = load ptr, ptr %i.gu, align 8, !noalias !19135 ; 5 uses
  %i.gz = getelementptr i8, ptr %.sroa.01.0.i.i, i64 456
  %.val46.i.i.i.i = load ptr, ptr %i.gz, align 8, !noalias !19135, !nonnull !3, !align !356, !noundef !3 ; 5 uses
  %i.ha = load ptr, ptr %.val46.i.i.i.i, align 8, !invariant.load !3, !noalias !19140 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45.i.i.i.i) ]
  invoke void %i.ha(ptr noundef nonnull %.val45.i.i.i.i)
          to label %bb.bg unwind label %bb.bh, !noalias !19140

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hb = getelementptr inbounds nuw i8, ptr %.val46.i.i.i.i, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !range !658, !invariant.load !3, !noalias !19140 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.bg
  %i.he = getelementptr inbounds nuw i8, ptr %.val46.i.i.i.i, i64 16
  %i.hf = load i64, ptr %i.he, align 8, !range !645, !invariant.load !3, !noalias !19140
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val45.i.i.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45.i.i.i.i, i64 noundef %i.hc, i64 noundef range(i64 1, 536870913) %i.hf) #48, !noalias !19140
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.hg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val46.i.i.i.i, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !range !658, !invariant.load !3, !noalias !19140 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.bh
  %i.hk = getelementptr inbounds nuw i8, ptr %.val46.i.i.i.i, i64 16
  %i.hl = load i64, ptr %i.hk, align 8, !range !645, !invariant.load !3, !noalias !19140
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val45.i.i.i.i, i64 noundef %i.hi, i64 noundef range(i64 1, 536870913) %i.hl) #48, !noalias !19140
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bj
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.bg
  %i.hn = icmp eq i64 %i.gx, -9223372036854775808
  br i1 %i.hn, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3121.i.i.i.i, i64 72, i1 false), !noalias !19139
  invoke void @_RNvXs0_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtCsjyY8HP3IvQ6_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.c)
          to label %bb.ds unwind label %bb.bi, !noalias !19140

bb.bk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5123.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.i.i.i.i, i64 112, i1 false), !noalias !19139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3121.i.i.i.i, i64 72, i1 false), !noalias !19139
  store i64 %i.gx, ptr %i.o, align 8, !noalias !19139
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 465 ; 2 uses
  store i8 0, ptr %i.ho, align 1, !noalias !19135
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 304
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !19135, !nonnull !3, !noundef !3
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 312
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !19135, !noundef !3
  store i64 %i.hs, ptr %i.m, align 8, !alias.scope !19154, !noalias !19157
  store i32 0, ptr %i.aq, align 8, !noalias !19139
  store ptr %i.hq, ptr %i.ar, align 8, !alias.scope !19154, !noalias !19157
  %i.ht = load i64, ptr %i.as, align 8, !range !57, !noalias !19139, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.ht, -9223372036854775808 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %3 = load <2 x ptr>, ptr %i.az, align 8, !noalias !19139 ; 3 uses
  %4 = extractelement <2 x ptr> %3, i64 1         ; 6 uses
  %5 = extractelement <2 x ptr> %3, i64 0         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19139
  invoke void @_RNvMNtCsdFjMDJQAyx6_10arrow_json6readerNtB2_13ReaderBuilder13build_decoder(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.ce unwind label %bb.cd, !noalias !19140

bb.bm:                                            ; preds = %bb.bk
  %i.hu = load i32, ptr %i.at, align 8, !range !1987, !noalias !19139, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !19139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !19139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19139
  invoke void @_RNvMNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufreaderINtB2_9BufReaderNtNtB8_2fs4FileE3newCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, i32 noundef %i.hu)
          to label %bb.bo unwind label %bb.ca, !noalias !19140

bb.bn:                                            ; preds = %bb.bo
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19139
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdFjMDJQAyx6_10arrow_json6reader13ReaderBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  invoke void @_RINvMNtCsdFjMDJQAyx6_10arrow_json6readerNtB3_13ReaderBuilder5buildINtNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufreader9BufReaderNtNtB1b_2fs4FileEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.j)
          to label %bb.bp unwind label %bb.bn, !noalias !19140

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19139
  %i.hw = load i64, ptr %i.l, align 8, !range !57, !alias.scope !19159, !noalias !19162, !noundef !3 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, -9223372036854775808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8128.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !19139
  br i1 %i.hx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !19139
  invoke void @_RNvXs_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB4_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.8128.i.i.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.bz, !noalias !19140

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.10130.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.10130.0..sroa_idx131.i.i.i.i, i64 160, i1 false), !noalias !19139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !19139
  store i64 %i.hw, ptr %i.i, align 8, !noalias !19139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8128.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8128.i.i.i.i, i64 32, i1 false), !noalias !19139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19139
  invoke void @_RINvNtNtCs8CRAYtH5WmW_12futures_util6stream4iter4iterINtNtCsdFjMDJQAyx6_10arrow_json6reader6ReaderINtNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufreader9BufReaderNtNtB1H_2fs4FileEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %i.i)
          to label %bb.bt unwind label %bb.bs, !noalias !19140

bb.bs:                                            ; preds = %bb.br
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19139
  br label %.body60.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.h, i64 200, i1 false), !noalias !19139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19139
  store i8 0, ptr %i.aw, align 8, !alias.scope !19164, !noalias !19167
  store i8 3, ptr %i.ax, align 2, !alias.scope !19164, !noalias !19167
  store i64 -9223372036854775742, ptr %i.g, align 16, !alias.scope !19164, !noalias !19167
  store i8 0, ptr %i.ay, align 1, !alias.scope !19164, !noalias !19167
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #48, !noalias !19169
  %i.hz = call noundef align 16 dereferenceable_or_null(304) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 304, i64 noundef range(i64 1, -9223372036854775807) 16) #48, !noalias !19169 ; 3 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.bu, label %bb.bx, !prof !21

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 304) #57
          to label %.noexc.i.i.i.i.i unwind label %bb.bv, !noalias !19174

.noexc.i.i.i.i.i:                                 ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream10take_while9TakeWhileINtNtBN_10try_stream6MapErrINtNtBN_4iter4IterINtNtCsdFjMDJQAyx6_10arrow_json6reader6ReaderINtNtNtNtCs2pqxYH9ZEk8_3std2io8buffered9bufreader9BufReaderNtNtB3s_2fs4FileEEENvYNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorINtNtB4_7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4fromEINtNtNtBP_6future5ready5ReadybENCNCNvNtNtNtB4G_6engine7default4json14open_json_file00EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.g) #54
          to label %.body60.i.i.i.i unwind label %bb.bw, !noalias !19140

bb.bw:                                            ; preds = %bb.bv
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19140
  unreachable

bb.bx:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.hz, ptr noundef nonnull align 16 dereferenceable(304) %i.g, i64 304, i1 false), !noalias !19140
  br label %bb.by

bb.by:                                            ; preds = %bb.ch, %bb.bx
  %.sink28.i.i.i = phi ptr [ %i.iv, %bb.ch ], [ %i.hz, %bb.bx ]
  %.sink.i.i.i = phi ptr [ %i.iw, %bb.ch ], [ @625, %bb.bx ]
  store ptr %.sink28.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !19139
  store ptr %.sink.i.i.i, ptr %.sroa.2.0..sroa.4.0..sroa_idx.i.sroa_idx.i.i.i.i, align 16, !noalias !19139
  store i64 -9223372036854775743, ptr %i.d, align 16, !noalias !19139
  %i.id = load i64, ptr %i.as, align 8, !range !57, !noalias !19139, !noundef !3
  %i.ie = icmp eq i64 %i.id, -9223372036854775808
  br i1 %i.ie, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %bb.ci

bb.bz:                                            ; preds = %bb.bq
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i83.i.i.i.i, %bb.cz, %bb.bq
  %i.ig = load i64, ptr %i.as, align 8, !range !57, !noalias !19139, !noundef !3
  %i.ih = icmp eq i64 %i.ig, -9223372036854775808
  br i1 %i.ih, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit91.i.i.i.i, label %bb.db

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdFjMDJQAyx6_10arrow_json6reader13ReaderBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.cb, %bb.ca, %bb.bn
  %i.ii = phi { ptr, i32 } [ %i.hv, %bb.bn ], [ %i.ij, %bb.cb ], [ %i.ij, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !19139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !19139
  br label %.body60.i.i.i.i

bb.ca:                                            ; preds = %bb.bm
  %i.ij = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19139
  call void @llvm.experimental.noalias.scope.decl(metadata !19175)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19178)
  call void @llvm.experimental.noalias.scope.decl(metadata !19181)
  %i.il = load ptr, ptr %i.ik, align 8, !alias.scope !19184, !noalias !19139, !nonnull !3, !noundef !3
  %i.im = atomicrmw sub ptr %i.il, i64 1 release, align 8, !noalias !19185
  %i.in = icmp eq i64 %i.im, 1
  br i1 %i.in, label %bb.cb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdFjMDJQAyx6_10arrow_json6reader13ReaderBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.ca
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ik) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdFjMDJQAyx6_10arrow_json6reader13ReaderBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.cc:                                            ; preds = %bb.dy, %bb.dv, %bb.dr, %bb.dq, %bb.dp, %bb.dn, %bb.dk, %bb.df, %.body88.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.cm, %.body65.i.i.i.i, %bb.cb, %bb.bc, %.body71.i.i.i.i
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19140
  unreachable

.body60.i.i.i.i:                                  ; preds = %bb.dk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i82.i.i.i.i, %bb.da, %.thread159.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdFjMDJQAyx6_10arrow_json6reader13ReaderBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.bz, %bb.bv, %bb.bs
  %.pn26.pn.i.i.i.i = phi { ptr, i32 } [ %i.ib, %bb.bv ], [ %i.it, %.thread159.i.i.i.i ], [ %.pn23.i.i.i.i, %bb.dk ], [ %i.ki, %bb.da ], [ %i.hy, %bb.bs ], [ %i.ki, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i82.i.i.i.i ], [ %i.if, %bb.bz ], [ %i.ii, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdFjMDJQAyx6_10arrow_json6reader13ReaderBuilderECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ]
  %i.ip = load i64, ptr %i.as, align 8, !range !57, !noalias !19139, !noundef !3
  %.not29.i.i.i.i = icmp eq i64 %i.ip, -9223372036854775808
  br i1 %.not29.i.i.i.i, label %bb.dm, label %bb.dl

bb.cd:                                            ; preds = %bb.bl
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19139
  br label %bb.dk

bb.ce:                                            ; preds = %bb.bl
  %i.ir = load i64, ptr %i.f, align 8, !range !57, !alias.scope !19186, !noalias !19189, !noundef !3 ; 2 uses
  %i.is = icmp eq i64 %i.ir, -9223372036854775808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8136.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !19139
  br i1 %i.is, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19139
  invoke void @_RNvXs_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB4_5ErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %.sroa.8136.i.i.i.i)
          to label %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtB7_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBy_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB7_6marker4SendEL_EEB3q_EINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEE13from_residualCs14kWLkQVSKO_14deltalake_core.exit63.i.i.i.i unwind label %bb.cx, !noalias !19140

.thread159.i.i.i.i:                               ; preds = %bb.cg
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body60.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.0148.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.10138.0..sroa_idx139.i.i.i.i, i64 112, i1 false), !noalias !19139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0148.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8136.i.i.i.i, i64 32, i1 false), !noalias !19139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !19139
  store i64 %i.ir, ptr %i.e, align 8, !alias.scope !19191, !noalias !19139
  store <2 x ptr> <ptr @119, ptr inttoptr (i64 1 to ptr)>, ptr %.sroa.5149.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19191, !noalias !19139
  store <2 x ptr> %3, ptr %.sroa.8151.0..sroa_idx.i.i.i.i, align 8, !alias.scope !19191, !noalias !19139
  %i.iu = invoke { ptr, ptr } @_RNvYINtNtNtCs8CRAYtH5WmW_12futures_util6stream7poll_fn6PollFnNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json14open_json_file0s_0ENtNtB7_6stream9StreamExt5boxedCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(200) %i.e)
          to label %bb.ch unwind label %.thread159.i.i.i.i, !noalias !19140 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
  %i.iv = extractvalue { ptr, ptr } %i.iu, 0
  %i.iw = extractvalue { ptr, ptr } %i.iu, 1
  br label %bb.by

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.by
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.o)
          to label %bb.co unwind label %bb.cn, !noalias !19140

bb.ci:                                            ; preds = %bb.by
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i unwind label %bb.cj, !noalias !19140

bb.cj:                                            ; preds = %bb.ci
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body65.i.i.i.i unwind label %bb.ck, !noalias !19140

bb.ck:                                            ; preds = %bb.cj
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19140
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.ci
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.cl, !noalias !19140

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body65.i.i.i.i

.body65.i.i.i.i:                                  ; preds = %bb.cl, %bb.cj
  %eh.lpad-body66.i.i.i.i = phi { ptr, i32 } [ %i.iz, %bb.cl ], [ %i.ix, %bb.cj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.o) #54
          to label %bb.cm unwind label %bb.cc, !noalias !19140

bb.cm:                                            ; preds = %bb.cn, %.body65.i.i.i.i
  %.pn21.i.i.i.i = phi { ptr, i32 } [ %i.ja, %bb.cn ], [ %eh.lpad-body66.i.i.i.i, %.body65.i.i.i.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.cn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.co:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit70.i.i.i.i unwind label %bb.cp, !noalias !19140

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.dr, %bb.df, %bb.cp, %bb.cm, %bb.bi, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.bh, %bb.bc, %bb.au
  %i.jb = phi ptr [ %i.gs, %bb.dr ], [ %i.gs, %bb.cp ], [ %i.gs, %bb.cm ], [ %i.gs, %bb.df ], [ %i.gs, %bb.bh ], [ %i.gs, %bb.bc ], [ %i.fh, %bb.au ], [ %i.gs, %bb.bi ], [ %i.gs, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ]
  %i.jc = phi ptr [ %i.gt, %bb.dr ], [ %i.gt, %bb.cp ], [ %i.gt, %bb.cm ], [ %i.gt, %bb.df ], [ %i.gt, %bb.bh ], [ %i.gt, %bb.bc ], [ %i.fi, %bb.au ], [ %i.gt, %bb.bi ], [ %i.gt, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ]
  %.pn32.pn.i.i.i.i = phi { ptr, i32 } [ %.pn26.pn.i.i.i.i, %bb.dr ], [ %i.je, %bb.cp ], [ %.pn21.i.i.i.i, %bb.cm ], [ %.pn30.i.i.i.i, %bb.df ], [ %i.hg, %bb.bh ], [ %i.gv, %bb.bc ], [ %i.gf, %bb.au ], [ %i.hm, %bb.bi ], [ %i.hg, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !19139
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 424
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.jd) #54
          to label %.body71.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.cp:                                            ; preds = %bb.dh, %bb.co
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit70.i.i.i.i: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !19139
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 424 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i unwind label %bb.cq, !noalias !19140

bb.cq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit70.i.i.i.i
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %.body71.i.i.i.i unwind label %bb.cr, !noalias !19140

bb.cr:                                            ; preds = %bb.cq
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19140
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit70.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.jf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.cs, !noalias !19140

bb.cs:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.body71.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 320 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.jj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i75.i.i.i.i unwind label %bb.ct, !noalias !19140

bb.ct:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.jk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.jj)
          to label %.body.i.i.i.i unwind label %bb.cu, !noalias !19140

bb.cu:                                            ; preds = %bb.ct
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19140
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i75.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.jj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i unwind label %bb.cv, !noalias !19140

.body.i.i.i.i:                                    ; preds = %bb.cv, %bb.ct, %.body71.i.i.i.i, %bb.ax
  %i.jm = phi ptr [ %i.gp, %.body71.i.i.i.i ], [ %i.gk, %bb.ax ], [ %i.jr, %bb.cv ], [ %i.gs, %bb.ct ] ; 3 uses
  %i.jn = phi ptr [ %i.gq, %.body71.i.i.i.i ], [ %i.gl, %bb.ax ], [ %i.js, %bb.cv ], [ %i.gt, %bb.ct ] ; 3 uses
  %.pn38.i.i.i.i = phi { ptr, i32 } [ %.pn35.pn.i.i.i.i, %.body71.i.i.i.i ], [ %i.gn, %bb.ax ], [ %i.jt, %bb.cv ], [ %i.jk, %bb.ct ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 465
  %i.jp = load i8, ptr %i.jo, align 1, !range !804, !noalias !19135, !noundef !3
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.dx, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i

bb.cv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i75.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.jr = phi ptr [ %i.gs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i75.i.i.i.i ], [ %i.gk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ]
  %i.js = phi ptr [ %i.gt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i75.i.i.i.i ], [ %i.gl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ]
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i75.i.i.i.i
  store i8 0, ptr %i.ho, align 1, !noalias !19135
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19195)
  call void @llvm.experimental.noalias.scope.decl(metadata !19198)
  %i.jv = load ptr, ptr %i.ju, align 8, !alias.scope !19201, !noalias !19135, !nonnull !3, !noundef !3
  %i.jw = atomicrmw sub ptr %i.jv, i64 1 release, align 8, !noalias !19202
  %i.jx = icmp eq i64 %i.jw, 1
  br i1 %i.jx, label %.invoke.i.i.i.i, label %bb.ea

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit108.i.i.i.i: ; preds = %bb.dv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i, %bb.cw
  %i.jy = phi ptr [ %i.ld, %bb.cw ], [ %i.lk, %bb.dv ], [ %i.lk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i ]
  %i.jz = phi ptr [ %i.le, %bb.cw ], [ %i.ll, %bb.dv ], [ %i.ll, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i ]
  %.pn42.i.i.i.i = phi { ptr, i32 } [ %i.ka, %bb.cw ], [ %.pn40.i.i.i.i, %bb.dv ], [ %.pn40.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i ]
  store i8 2, ptr %i.jy, align 8, !noalias !19135
  br label %.body.i.i.i

bb.cw:                                            ; preds = %.invoke.i.i.i.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit108.i.i.i.i

bb.cx:                                            ; preds = %bb.cf
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtB7_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBy_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB7_6marker4SendEL_EEB3q_EINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEE13from_residualCs14kWLkQVSKO_14deltalake_core.exit63.i.i.i.i: ; preds = %bb.cf
  %i.kc = load ptr, ptr %4, align 8, !invariant.load !3, !noalias !19140 ; 2 uses
  %.not.i.i81.i.i.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i81.i.i.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtB7_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBy_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB7_6marker4SendEL_EEB3q_EINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEE13from_residualCs14kWLkQVSKO_14deltalake_core.exit63.i.i.i.i
  invoke void %i.kc(ptr noundef nonnull %5)
          to label %bb.cz unwind label %bb.da, !noalias !19140

bb.cz:                                            ; preds = %bb.cy, %_RNvXsq_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultINtNtB7_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemIBy_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorENtNtB7_6marker4SendEL_EEB3q_EINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorEE13from_residualCs14kWLkQVSKO_14deltalake_core.exit63.i.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ke = load i64, ptr %i.kd, align 8, !range !658, !invariant.load !3, !noalias !19140 ; 2 uses
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i83.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i83.i.i.i.i: ; preds = %bb.cz
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !range !645, !invariant.load !3, !noalias !19140
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %i.ke, i64 noundef range(i64 1, 536870913) %i.kh) #48, !noalias !19140
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.da:                                            ; preds = %bb.cy
  %i.ki = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !range !658, !invariant.load !3, !noalias !19140 ; 2 uses
  %i.kl = icmp eq i64 %i.kk, 0
  br i1 %i.kl, label %.body60.i.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i82.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i82.i.i.i.i: ; preds = %bb.da
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !range !645, !invariant.load !3, !noalias !19140
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %5, i64 noundef %i.kk, i64 noundef range(i64 1, 536870913) %i.kn) #48, !noalias !19140
  br label %.body60.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit91.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i87.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.o)
          to label %bb.dh unwind label %bb.dg, !noalias !19140

bb.db:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i87.i.i.i.i unwind label %bb.dc, !noalias !19140

bb.dc:                                            ; preds = %bb.db
  %i.ko = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %.body88.i.i.i.i unwind label %bb.dd, !noalias !19140

bb.dd:                                            ; preds = %bb.dc
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19140
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i87.i.i.i.i: ; preds = %bb.db
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit91.i.i.i.i unwind label %bb.de, !noalias !19140

bb.de:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i87.i.i.i.i
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body88.i.i.i.i

.body88.i.i.i.i:                                  ; preds = %bb.de, %bb.dc
  %eh.lpad-body89.i.i.i.i = phi { ptr, i32 } [ %i.kq, %bb.de ], [ %i.ko, %bb.dc ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.o) #54
          to label %bb.df unwind label %bb.cc, !noalias !19140

bb.df:                                            ; preds = %bb.dg, %.body88.i.i.i.i
  %.pn30.i.i.i.i = phi { ptr, i32 } [ %i.kr, %bb.dg ], [ %eh.lpad-body89.i.i.i.i, %.body88.i.i.i.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.dg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit91.i.i.i.i
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.dh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit91.i.i.i.i
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit95.i.i.i.i unwind label %bb.cp, !noalias !19140

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit95.i.i.i.i: ; preds = %bb.ds, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !19139
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 424 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ks)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i unwind label %bb.di, !noalias !19140

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit95.i.i.i.i
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ks)
          to label %.body71.i.i.i.i unwind label %bb.dj, !noalias !19140

bb.dj:                                            ; preds = %bb.di
  %i.ku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19140
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i97.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit95.i.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ks)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs14kWLkQVSKO_14deltalake_core.exit101.i.i.i.i unwind label %bb.cs, !noalias !19140

bb.dk:                                            ; preds = %bb.cx, %bb.cd
  %.pn23.i.i.i.i = phi { ptr, i32 } [ %i.kb, %bb.cx ], [ %i.iq, %bb.cd ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr nonnull %5, ptr nonnull %4) #54
          to label %.body60.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.dl:                                            ; preds = %.body60.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.do, label %bb.dn

bb.dm:                                            ; preds = %.body60.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.dp, label %bb.dq

bb.dn:                                            ; preds = %bb.do, %bb.dl
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.as) #54
          to label %bb.dp unwind label %bb.cc, !noalias !19140

bb.do:                                            ; preds = %bb.dl
  %.val47.i.i.i.i = load i32, ptr %i.at, align 8, !range !1987, !noalias !19139, !noundef !3
  %i.kv = call noundef i32 @close(i32 noundef %.val47.i.i.i.i) #48, !noalias !19140 ; 0 uses
  br label %bb.dn

bb.dp:                                            ; preds = %bb.dq, %bb.dn, %bb.dm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store10ObjectMetaECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(96) %i.o) #54
          to label %bb.dr unwind label %bb.cc, !noalias !19140

bb.dq:                                            ; preds = %bb.dm
  %.val48.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !19139
  %.val49.i.i.i.i = load ptr, ptr %i.ba, align 8, !noalias !19139, !nonnull !3, !align !356, !noundef !3
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs14kWLkQVSKO_14deltalake_core(ptr %.val48.i.i.i.i, ptr nonnull %.val49.i.i.i.i) #54
          to label %bb.dp unwind label %bb.cc, !noalias !19140

bb.dr:                                            ; preds = %bb.dp
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store10attributes9AttributeNtBR_14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.ds:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19139
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store10attributes10AttributesECs14kWLkQVSKO_14deltalake_core.exit95.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 465 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !range !804, !noalias !19135, !noundef !3
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.dt, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %bb.du, %bb.dt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  store i8 0, ptr %i.kw, align 1, !noalias !19135
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19203)
  call void @llvm.experimental.noalias.scope.decl(metadata !19206)
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !19209, !noalias !19135, !nonnull !3, !noundef !3
  %i.lb = atomicrmw sub ptr %i.la, i64 1 release, align 8, !noalias !19210
  %i.lc = icmp eq i64 %i.lb, 1
  br i1 %i.lc, label %.invoke.i.i.i.i, label %bb.ea

.invoke.i.i.i.i:                                  ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i
  %i.ld = phi ptr [ %i.gs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i ], [ %i.gk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ] ; 2 uses
  %i.le = phi ptr [ %i.gt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i ], [ %i.gl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ] ; 2 uses
  %i.lf = phi ptr [ %i.ju, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i ], [ %i.kz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ]
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.lf) #58
          to label %bb.ea unwind label %bb.cw, !noalias !19140

bb.dt:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19211)
  call void @llvm.experimental.noalias.scope.decl(metadata !19214)
  %i.lh = load ptr, ptr %i.lg, align 8, !alias.scope !19217, !noalias !19135, !nonnull !3, !noundef !3
  %i.li = atomicrmw sub ptr %i.lh, i64 1 release, align 8, !noalias !19218
  %i.lj = icmp eq i64 %i.li, 1
  br i1 %i.lj, label %bb.du, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i

bb.du:                                            ; preds = %bb.dt
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.lg) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i unwind label %bb.dw, !noalias !19140

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i: ; preds = %bb.dy, %bb.dx, %bb.dw, %.body.i.i.i.i
  %i.lk = phi ptr [ %i.gk, %bb.dw ], [ %i.jm, %.body.i.i.i.i ], [ %i.jm, %bb.dy ], [ %i.jm, %bb.dx ] ; 2 uses
  %i.ll = phi ptr [ %i.gl, %bb.dw ], [ %i.jn, %.body.i.i.i.i ], [ %i.jn, %bb.dy ], [ %i.jn, %bb.dx ] ; 2 uses
  %.pn40.i.i.i.i = phi { ptr, i32 } [ %i.lr, %bb.dw ], [ %.pn38.i.i.i.i, %.body.i.i.i.i ], [ %.pn38.i.i.i.i, %bb.dy ], [ %.pn38.i.i.i.i, %bb.dx ] ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 465
  store i8 0, ptr %i.lm, align 1, !noalias !19135
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19219)
  call void @llvm.experimental.noalias.scope.decl(metadata !19222)
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !19225, !noalias !19135, !nonnull !3, !noundef !3
  %i.lp = atomicrmw sub ptr %i.lo, i64 1 release, align 8, !noalias !19226
  %i.lq = icmp eq i64 %i.lp, 1
  br i1 %i.lq, label %bb.dv, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit108.i.i.i.i

bb.dv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ln) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit108.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.dw:                                            ; preds = %bb.du
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i

bb.dx:                                            ; preds = %.body.i.i.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19227)
  call void @llvm.experimental.noalias.scope.decl(metadata !19230)
  %i.lt = load ptr, ptr %i.ls, align 8, !alias.scope !19233, !noalias !19135, !nonnull !3, !noundef !3
  %i.lu = atomicrmw sub ptr %i.lt, i64 1 release, align 8, !noalias !19234
  %i.lv = icmp eq i64 %i.lu, 1
  br i1 %i.lv, label %bb.dy, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ls) #58
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit110.i.i.i.i unwind label %bb.cc, !noalias !19140

bb.dz:                                            ; preds = %bb.ba, %bb.az
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.ea:                                            ; preds = %.invoke.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i
  %i.lx = phi ptr [ %i.ld, %.invoke.i.i.i.i ], [ %i.gk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.gs, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i ]
  %i.ly = phi ptr [ %i.le, %.invoke.i.i.i.i ], [ %i.gl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.gt, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs14kWLkQVSKO_14deltalake_core.exit79.i.i.i.i ]
  %.sroa.01.0.copyload2.i.i = load i64, ptr %i.d, align 16, !noalias !19235 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i.i.i.i, i64 88, i1 false), !noalias !19235
  %i.lz = icmp eq i64 %.sroa.01.0.copyload2.i.i, -9223372036854775742
  store i8 1, ptr %i.lx, align 8, !noalias !19135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8136.i.i.i.i), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8128.i.i.i.i), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !19134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3121.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  br i1 %i.lz, label %bb.em, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8 ; 4 uses
  %i.mb = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16 ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json14open_json_file0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ly)
          to label %bb.ee unwind label %bb.ec, !noalias !19153

bb.ec:                                            ; preds = %bb.eb
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.thread16

.body.i.i.i:                                      ; preds = %bb.dz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit108.i.i.i.i
  %i.md = phi ptr [ %i.jz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit108.i.i.i.i ], [ %i.fc, %bb.dz ]
  %.pn2.i.i.i = phi { ptr, i32 } [ %.pn42.i.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECs14kWLkQVSKO_14deltalake_core.exit108.i.i.i.i ], [ %i.lw, %bb.dz ]
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 8
  %i.mf = getelementptr inbounds i8, ptr %.sroa.01.0.i.i, i64 -16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json14open_json_file0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.md) #54
          to label %.body.i.thread16 unwind label %bb.ed, !noalias !19153

bb.ed:                                            ; preds = %.body.i.i.i
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !19153
  unreachable

bb.ee:                                            ; preds = %bb.eb
  store i8 1, ptr %i.ep, align 8, !noalias !19130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.i.i, i64 88, i1 false), !noalias !19236
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !19100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !19100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19237
  store ptr %i.mb, ptr %i.b, align 8, !noalias !19237
  %i.mh = atomicrmw xchg ptr %i.du, i8 1 seq_cst, align 1, !noalias !19242
  %i.mi = icmp eq i8 %i.mh, 0                     ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 %i.ma)
          to label %bb.eg unwind label %bb.ef, !noalias !19242

bb.ef:                                            ; preds = %bb.ee
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  store i64 0, ptr %i.ma, align 8, !noalias !19242
  br i1 %i.mi, label %bb.ej, label %.thread.i

bb.eg:                                            ; preds = %bb.ee
  store i64 0, ptr %i.ma, align 8, !noalias !19242
  br i1 %i.mi, label %bb.eh, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.eh:                                            ; preds = %bb.eg
  %i.mk = atomicrmw sub ptr %i.mb, i64 1 release, align 8, !noalias !19243
  %i.ml = icmp eq i64 %i.mk, 1
  br i1 %i.ml, label %bb.ei, label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.ei:                                            ; preds = %bb.eh
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b) #58, !noalias !19098
  br label %_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default4json20read_json_files_impl000EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs14kWLkQVSKO_14deltalake_core.exit

bb.ej:                                            ; preds = %bb.ef
  %i.mm = atomicrmw sub ptr %i.mb, i64 1 release, align 8, !noalias !19248
  %i.mn = icmp eq i64 %i.mm, 1
  br i1 %i.mn, label %bb.ek, label %.thread.i

bb.ek:                                            ; preds = %bb.ej
  fence acquire
end_hunk_1
