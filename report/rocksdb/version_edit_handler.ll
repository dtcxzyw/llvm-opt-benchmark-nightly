Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_edit_handler?download=true
inline.NumInlined: 3390
inline.NumDeleted: 1651
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb19ColumnFamilyOptionsD2Ev:bb.a

bb.ak:                                            ; preds = %bb.ai
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i21 = phi i32 [ %i.dc, %bb.aj ], [ %i.dm, %bb.ak ]
  %i.dn = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.dn, label %bb.al, label %_ZNSt12__shared_ptrIN7rocksdb23CompactionFilterFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !138

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #32
  br label %_ZNSt12__shared_ptrIN7rocksdb23CompactionFilterFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb23CompactionFilterFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7rocksdb18CompressionManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !221 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN7rocksdb23CompactionFilterFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dq, align 8, !tbaa !510
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !511
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #32, !inline_history !796
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  tail call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #32, !inline_history !796
  br label %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ao:                                            ; preds = %bb.am
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i23 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i23, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !143
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.aq:                                            ; preds = %bb.ao
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i25 = phi i32 [ %i.dt, %bb.ap ], [ %i.ed, %bb.aq ]
  %i.ee = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.ee, label %bb.ar, label %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !138

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #32
  br label %_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7rocksdb23CompactionFilterFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.ar
  tail call void @_ZN7rocksdb27AdvancedColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(662) dereferenceable(662) %0) #32
  ret void
}

declare void @_ZN7rocksdb6WalSet7AddWalsERKSt6vectorINS_11WalAdditionESaIS2_EE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN7rocksdb6WalSet16DeleteWalsBeforeEm(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK7rocksdb15ColumnFamilySet15GetColumnFamilyEj(ptr noundef nonnull align 8 dereferenceable(593), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionEditHandler36MaybeHandleFileBoundariesForNewFilesERNS_11VersionEditEPKNS_16ColumnFamilyDataE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7856) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7456) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 15 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !174  ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !140, !alias.scope !806
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !806
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !497
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !523  ; 7 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !140, !alias.scope !807
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !807
  br label %bb.aa

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr %3, align 8, !tbaa !499    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 7824
  %i.o = load i64, ptr %i.n, align 8, !tbaa !524
  %.not.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.not.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 7816
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.06.0.in.i.i = phi ptr [ %i.p, %bb.f ], [ %.sroa.06.0.i.i, %bb.h ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !152 ; 3 uses
  %i.q = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.q, label %.lr.ph, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !143
  %i.t = icmp eq i32 %i.m, %i.s
  br i1 %i.t, label %.lr.ph.thread, label %bb.g, !llvm.loop !801

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 7800
  %i.v = zext i32 %i.m to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 7808
  %i.x = load i64, ptr %i.w, align 8, !tbaa !228  ; 2 uses
  %i.y = urem i64 %i.v, %i.x                      ; 2 uses
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !227
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !164 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i, label %.lr.ph, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !143
  %i.af = icmp eq i32 %i.m, %i.ae
  br i1 %i.af, label %.lr.ph.thread, label %.lr.ph.i.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.ag = icmp eq i32 %i.m, %i.aj
  br i1 %i.ag, label %.lr.ph.thread, label %.lr.ph.i.i.i.i, !llvm.loop !802

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %bb.k
  %.020.i.i.i.i = phi ptr [ %i.ah, %bb.k ], [ %i.ac, %bb.j ]
  %i.ah = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !152 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i.i.i, label %.lr.ph, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !143 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = urem i64 %i.ak, %i.x
  %.not19.i.i.i.i = icmp eq i64 %i.al, %i.y
  br i1 %.not19.i.i.i.i, label %bb.k, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !802

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.l
  br label %.lr.ph, !llvm.loop !802

.lr.ph.thread:                                    ; preds = %bb.k, %bb.h, %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  store i8 0, ptr %i.as, align 8, !tbaa !812
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i, %bb.g, %..loopexit_crit_edge21.i.i.i.i, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !812, !range !126, !noundef !127
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.thread64, label %bb.m

bb.m:                                             ; preds = %.lr.ph, %.lr.ph.thread
  %i.bc = phi i1 [ false, %.lr.ph.thread ], [ true, %.lr.ph ] ; 2 uses
  %i.bd = phi ptr [ %i.am, %.lr.ph.thread ], [ %i.at, %.lr.ph ] ; 10 uses
  %i.be = phi ptr [ %i.an, %.lr.ph.thread ], [ %i.au, %.lr.ph ] ; 4 uses
  %i.bf = phi ptr [ %i.ao, %.lr.ph.thread ], [ %i.av, %.lr.ph ] ; 10 uses
  %i.bg = phi ptr [ %i.ap, %.lr.ph.thread ], [ %i.aw, %.lr.ph ] ; 4 uses
  %i.bh = phi ptr [ %i.aq, %.lr.ph.thread ], [ %i.ax, %.lr.ph ] ; 4 uses
  %i.bi = phi ptr [ %i.ar, %.lr.ph.thread ], [ %i.ay, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %i.bd, ptr %6, align 8, !tbaa !38
  store i64 0, ptr %i.be, align 8, !tbaa !39
  store i8 0, ptr %i.bd, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %i.bf, ptr %7, align 8, !tbaa !38
  store i64 0, ptr %i.bg, align 8, !tbaa !39
  store i8 0, ptr %i.bf, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39
  store ptr %i.bk, ptr %8, align 8
  store i64 %i.bm, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !39
  store ptr %i.bo, ptr %9, align 8
  store i64 %i.bq, ptr %i.bi, align 8
  invoke void @_ZN7rocksdb30PadInternalKeyWithMinTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.j)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.br = load i64, ptr %i.bh, align 8, !tbaa !37
  %i.bs = load ptr, ptr %8, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %.0.copyload.i.i.peel = load i64, ptr %i.bu, align 1
  %i.bv = load i64, ptr @_ZN7rocksdbL23kRangeTombstoneSentinelE, align 8, !tbaa !153
  %i.bw = icmp eq i64 %.0.copyload.i.i.peel, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN7rocksdb30PadInternalKeyWithMinTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.j)
          to label %bb.q unwind label %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN7rocksdb30PadInternalKeyWithMaxTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.j)
          to label %bb.q unwind label %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bx = load ptr, ptr %6, align 8, !tbaa !33
  %i.by = load i64, ptr %i.be, align 8, !tbaa !39
  %i.bz = load i64, ptr %i.bp, align 8, !tbaa !39
  %i.ca = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 noundef 0, i64 noundef %i.bz, ptr noundef %i.bx, i64 noundef %i.by)
          to label %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit.peel unwind label %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit.peel: ; preds = %bb.q
  %i.cb = load ptr, ptr %7, align 8, !tbaa !33
  %i.cc = load i64, ptr %i.bg, align 8, !tbaa !39
  %i.cd = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 noundef 0, i64 noundef %i.cd, ptr noundef %i.cb, i64 noundef %i.cc)
          to label %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit43.peel unwind label %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit43.peel: ; preds = %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.cf = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit43.peel
  %i.ch = load i64, ptr %i.bf, align 8, !tbaa !34
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit43.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.cj = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bd
  br i1 %i.ck, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.cl = load i64, ptr %i.bd, align 8, !tbaa !34
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #31
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.d
  br i1 %i.co, label %.thread64, label %.peel.next

.peel.next:                                       ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45
  %.sroa.056.082 = phi ptr [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45 ], [ %i.cn, %bb.r ] ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.056.082, i64 320 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !812, !range !126, !noundef !127
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond.not = and i1 %i.bc, %i.cr
  br i1 %or.cond.not, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.peel.next
  br i1 %i.bc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.cp, align 8, !tbaa !812
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store ptr %i.bd, ptr %6, align 8, !tbaa !38
  store i64 0, ptr %i.be, align 8, !tbaa !39
  store i8 0, ptr %i.bd, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %i.bf, ptr %7, align 8, !tbaa !38
  store i64 0, ptr %i.bg, align 8, !tbaa !39
  store i8 0, ptr %i.bf, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.056.082, i64 88 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.056.082, i64 96 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !39
  store ptr %i.ct, ptr %8, align 8
  store i64 %i.cv, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.056.082, i64 56 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.056.082, i64 64 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !39
  store ptr %i.cx, ptr %9, align 8
  store i64 %i.cz, ptr %i.bi, align 8
  invoke void @_ZN7rocksdb30PadInternalKeyWithMinTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 noundef %i.j)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.da = load i64, ptr %i.bh, align 8, !tbaa !37
  %i.db = load ptr, ptr %8, align 8, !tbaa !36
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.dd, align 1
  %i.de = load i64, ptr @_ZN7rocksdbL23kRangeTombstoneSentinelE, align 8, !tbaa !153
  %i.df = icmp eq i64 %.0.copyload.i.i, %i.de
  br i1 %i.df, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN7rocksdb30PadInternalKeyWithMaxTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.j)
          to label %bb.y unwind label %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.m
  %lpad.loopexit.split-lp134 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN7rocksdb30PadInternalKeyWithMinTimestampEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceEm(ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 noundef %i.j)
          to label %bb.y unwind label %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dg = load ptr, ptr %6, align 8, !tbaa !33
  %i.dh = load i64, ptr %i.be, align 8, !tbaa !39
  %i.di = load i64, ptr %i.cy, align 8, !tbaa !39
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, i64 noundef 0, i64 noundef %i.di, ptr noundef %i.dg, i64 noundef %i.dh)
          to label %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit unwind label %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit: ; preds = %bb.y
  %i.dk = load ptr, ptr %7, align 8, !tbaa !33
  %i.dl = load i64, ptr %i.bg, align 8, !tbaa !39
  %i.dm = load i64, ptr %i.cu, align 8, !tbaa !39
  %i.dn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef %i.dm, ptr noundef %i.dk, i64 noundef %i.dl)
          to label %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit43 unwind label %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit43: ; preds = %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.do = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bf
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit43
  %i.dq = load i64, ptr %i.bf, align 8, !tbaa !34
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ds = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bd
  br i1 %i.dt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.du = load i64, ptr %i.bd, align 8, !tbaa !34
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.056.082, i64 432 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.d
  br i1 %i.dx, label %.thread64, label %.peel.next, !llvm.loop !803

.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.x, %bb.w, %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit, %bb.o, %bb.p, %bb.q, %_ZN7rocksdb11InternalKey10DecodeFromERKNS_5SliceE.exit.peel
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp134, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp136, %.loopexit.split-lp92.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.dy = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bf
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.z
  %i.ea = load i64, ptr %i.bf, align 8, !tbaa !34
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ec = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.bd
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.ee = load i64, ptr %i.bd, align 8, !tbaa !34
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr @.str.58, ptr %4, align 8, !tbaa !36
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 83, ptr %i.eg, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr @.str, ptr %5, align 8, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.eh, align 8, !tbaa !37
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.aa

.thread64:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i45, %.lr.ph, %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ei, align 8, !tbaa !140, !alias.scope !813
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !813
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %bb.d, %.thread64, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb18VersionEditHandler20CheckIterationResultERKNS_3log6ReaderEPNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(7856) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 25 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 11 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %24 = alloca %"class.rocksdb::VersionEdit", align 8 ; 46 uses
  %25 = alloca %"class.rocksdb::Status", align 8  ; 10 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !62
end_hunk_0
