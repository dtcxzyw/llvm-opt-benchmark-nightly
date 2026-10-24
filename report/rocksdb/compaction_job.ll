Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_job?download=true
inline.NumInlined: 6887
inline.NumDeleted: 3271
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN7rocksdb13CompactionJobD2Ev:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17: ; preds = %_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !72 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZN7rocksdb11FileOptionsD2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !73
  %i.dl = add i64 %i.dk, 1
  tail call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #34
  br label %_ZN7rocksdb11FileOptionsD2Ev.exit21

_ZN7rocksdb11FileOptionsD2Ev.exit21:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i18
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 872
  tail call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.dm) #37
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !72 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZN7rocksdb11FileOptionsD2Ev.exit21
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !73
  %i.ds = add i64 %i.dr, 1
  tail call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZN7rocksdb11FileOptionsD2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !72 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !73
  %i.dy = add i64 %i.dx, 1
  tail call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !437 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i28, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  tail call void @_ZdaPv(ptr noundef nonnull %i.ea) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !72 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZN7rocksdb16MutableDBOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !73
  %i.eg = add i64 %i.ef, 1
  tail call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #34
  br label %_ZN7rocksdb16MutableDBOptionsD2Ev.exit

_ZN7rocksdb16MutableDBOptionsD2Ev.exit:           ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  ret void

bb.q:                                             ; preds = %bb.a
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  tail call void @__clang_call_terminate(ptr %i.ei) #38
  unreachable
}

declare void @_ZN7rocksdb16ThreadStatusUtil17ResetThreadStatusEv() local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #37 ; 0 uses
  tail call void @_ZSt9terminatev() #38
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb13CompactionJobD0Ev(ptr noundef nonnull align 8 dereferenceable(1896) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7rocksdb13CompactionJobD1Ev(ptr noundef nonnull align 8 dead_on_return(1896) dereferenceable(1896) %0) #37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1896) #34
  ret void
}

declare void @_ZN7rocksdb16ThreadStatusUtil26SetThreadOperationPropertyEim(i32 noundef, i64 noundef) local_unnamed_addr #8

declare noundef i64 @_ZNK7rocksdb10Compaction23CalculateTotalInputSizeEv(ptr noundef nonnull align 16 dereferenceable(12020)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb13CompactionJob7PrepareESt8optionalISt4pairIS1_INS_5SliceEES4_EERKSt6vectorINS_21SubcompactionProgressESaIS8_EEPNS_3log6WriterE(ptr noundef nonnull align 8 dereferenceable(1896) %0, ptr nofree noundef readonly byval(%"class.std::optional.263") align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::AutoThreadOperationStageUpdater", align 4 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 13 uses
  %5 = alloca %"class.rocksdb::StopWatch", align 8 ; 20 uses
  %6 = alloca %"class.std::optional.268", align 8 ; 8 uses
  %7 = alloca %"class.std::optional.268", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.std::optional.268", align 8 ; 8 uses
  %9 = alloca %"class.std::optional.268", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %10 = alloca %"struct.rocksdb::ReadOptions", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.382", align 8 ; 8 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !418
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZN7rocksdb31AutoThreadOperationStageUpdaterC1ENS_12ThreadStatus14OperationStageE(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !168
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94   ; 5 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !473
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1664
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !474
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !447
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !411, !nonnull !409, !align !412
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 552
  %.sroa.0.0.copyload = load i64, ptr %i.s, align 8, !tbaa !73
  %i.t = invoke noundef i32 @_ZNK7rocksdb18VersionStorageInfo21CalculateSSTWriteHintEiNS_12SmallEnumSetINS_15CompactionStyleELS2_3EEE(ptr noundef nonnull align 16 dereferenceable(4288) %i.n, i32 noundef %i.p, i64 %.sroa.0.0.copyload)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 692
  store i32 %i.t, ptr %i.u, align 4, !tbaa !475
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 11728
  %i.w = load i8, ptr %i.v, align 16, !tbaa !1332, !range !408, !noundef !409
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i8 %i.w, ptr %i.x, align 8, !tbaa !389
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i8, ptr %i.y, align 8, !tbaa !1334, !range !408, !noundef !409
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.thread173, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = invoke noundef zeroext i1 @_ZNK7rocksdb10Compaction24ShouldFormSubcompactionsEv(ptr noundef nonnull align 16 dereferenceable(12020) %i.k)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  br i1 %i.ab, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !411, !nonnull !409, !align !412
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 576
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !476 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !388 ; 9 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !478
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !479
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.thread20.i, label %bb.f

.thread20.i:                                      ; preds = %bb.e
  store i32 80, ptr %i.ai, align 8, !tbaa !480
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 80, ptr %i.aj, align 4, !tbaa !481
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !482
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.al, align 8, !tbaa !483
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 33
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 248
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(33) %i.ag, i32 noundef 4)
          to label %.noexc unwind label %bb.m, !inline_history !1329 ; 2 uses

.noexc:                                           ; preds = %bb.f
  %spec.select.i = select i1 %i.aq, i32 4, i32 80 ; 2 uses
  store i32 %spec.select.i, ptr %i.ai, align 8, !tbaa !480
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 248
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(33) %i.ag, i32 noundef 80)
          to label %.noexc61 unwind label %bb.m, !inline_history !1329 ; 0 uses

.noexc61:                                         ; preds = %.noexc
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 80, ptr %i.av, align 4, !tbaa !481
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.aw, align 8, !tbaa !482
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.ax, align 8, !tbaa !483
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 33 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ba = load atomic i8, ptr %i.az monotonic, align 8
  %i.bb = icmp ugt i8 %i.ba, 2
  %or.cond.not = and i1 %i.bb, %i.aq
  br i1 %or.cond.not, label %.thread21.i, label %bb.g

.thread21.i:                                      ; preds = %.noexc61
  store i8 1, ptr %i.ay, align 1, !tbaa !484
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 34
  store i8 0, ptr %i.bc, align 2, !tbaa !485
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 152
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.h unwind label %bb.m, !inline_history !1329

bb.g:                                             ; preds = %.noexc61, %.thread20.i
  %i.bi = phi i32 [ %spec.select.i, %.noexc61 ], [ 80, %.thread20.i ]
  %i.bj = phi ptr [ %i.ay, %.noexc61 ], [ %i.am, %.thread20.i ]
  store i8 0, ptr %i.bj, align 1, !tbaa !484
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 34
  store i8 0, ptr %i.bk, align 2, !tbaa !485
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread21.i
  %i.bm = phi i32 [ %i.bi, %bb.g ], [ 4, %.thread21.i ] ; 2 uses
  %i.bn = phi i1 [ false, %bb.g ], [ true, %.thread21.i ]
  %i.bo = phi i64 [ 0, %bb.g ], [ %i.bh, %.thread21.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !486
  invoke void @_ZN7rocksdb13CompactionJob26GenSubcompactionBoundariesEv(ptr noundef nonnull align 8 dereferenceable(1896) %0)
          to label %.thread12.i unwind label %bb.n

.thread12.i:                                      ; preds = %bb.h
  br i1 %i.bn, label %.thread15.i, label %_ZN7rocksdb9StopWatchD2Ev.exit

.thread15.i:                                      ; preds = %.thread12.i
  %i.bq = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 152
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.thread15.i
  %.not7.i = icmp eq i32 %i.bm, 80
  br i1 %.not7.i, label %_ZN7rocksdb9StopWatchD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = sub i64 %i.bt, %i.bo
  %i.bv = load ptr, ptr %i.ag, align 8, !tbaa !75
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 200
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(33) %i.ag, i32 noundef %i.bm, i64 noundef %i.bu)
          to label %_ZN7rocksdb9StopWatchD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread15.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #38
  unreachable

_ZN7rocksdb9StopWatchD2Ev.exit:                   ; preds = %bb.i, %bb.j, %.thread12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.p

bb.l:                                             ; preds = %.noexc78, %.noexc77, %bb.ag, %bb.r, %bb.c, %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.m:                                             ; preds = %.thread21.i, %.noexc, %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb9StopWatchD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.n ], [ %i.cb, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.bw

bb.p:                                             ; preds = %_ZN7rocksdb9StopWatchD2Ev.exit, %bb.d
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !471 ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !470 ; 2 uses
  %.not = icmp eq ptr %i.cf, %i.cg
  br i1 %.not, label %bb.aa, label %.preheader

.thread173:                                       ; preds = %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !471 ; 2 uses
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !470 ; 2 uses
  %.not174 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not174, label %.thread175, label %.preheader

.thread175:                                       ; preds = %.thread173
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  br label %bb.ab

.preheader:                                       ; preds = %.thread173, %bb.p
  %i.cm = phi ptr [ %i.ck, %.thread173 ], [ %i.cg, %bb.p ] ; 2 uses
  %i.cn = phi ptr [ %i.cj, %.thread173 ], [ %i.cf, %bb.p ]
  %i.co = phi ptr [ %i.ci, %.thread173 ], [ %i.ce, %bb.p ]
  %i.cp = phi ptr [ %i.ch, %.thread173 ], [ %i.cd, %bb.p ]
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %i.cm to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE12emplace_backIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEERS1_DpOT_.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !388 ; 3 uses
  %.not.i64 = icmp eq ptr %i.cz, null
  br i1 %.not.i64, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !168 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !487
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !488
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dd, %i.dg
  %i.di = sdiv exact i64 %i.dh, 8456
  %i.dj = load ptr, ptr %i.cz, align 8, !tbaa !75
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 216
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void %i.dl(ptr noundef nonnull align 8 dereferenceable(33) %i.cz, i32 noundef 30, i64 noundef %i.di)
          to label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit unwind label %bb.l, !inline_history !1330

bb.s:                                             ; preds = %.preheader, %_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE12emplace_backIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEERS1_DpOT_.exit
  %i.dm = phi i64 [ %i.ct, %.preheader ], [ %i.en, %_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE12emplace_backIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEERS1_DpOT_.exit ]
  %i.dn = phi ptr [ %i.cm, %.preheader ], [ %i.ej, %_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE12emplace_backIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEERS1_DpOT_.exit ] ; 2 uses
  %.0128 = phi i64 [ 0, %.preheader ], [ %i.eh, %_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE12emplace_backIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEERS1_DpOT_.exit ] ; 6 uses
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !168 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %.not55 = icmp eq i64 %.0128, 0
  br i1 %.not55, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr [32 x i8], ptr %i.dn, i64 %.0128 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 -32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !72
  store ptr %i.ds, ptr %6, align 8, !tbaa !489
  %i.dt = getelementptr i8, ptr %i.dq, i64 -24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !384
  store i64 %i.du, ptr %i.cu, align 8, !tbaa !490
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %storemerge = phi i8 [ 1, %bb.t ], [ 0, %bb.s ]
  store i8 %storemerge, ptr %i.cv, align 8, !tbaa !492
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %.not56 = icmp eq i64 %.0128, %i.dm
  br i1 %.not56, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %.0128 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !72
  store ptr %i.dw, ptr %7, align 8, !tbaa !489
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !384
  store i64 %i.dy, ptr %i.cw, align 8, !tbaa !490
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %storemerge172 = phi i8 [ 1, %bb.v ], [ 0, %bb.u ]
  store i8 %storemerge172, ptr %i.cx, align 8, !tbaa !492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.dz = trunc i64 %.0128 to i32                 ; 2 uses
  store i32 %i.dz, ptr %i.b, align 4, !tbaa !381
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !487 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !493
  %.not.i66 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not.i66, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !473
  invoke void @_ZN7rocksdb18SubcompactionStateC2EPNS_10CompactionESt8optionalINS_5SliceEES5_j(ptr noundef nonnull align 8 dereferenceable(8456) %i.eb, ptr noundef %i.ee, ptr noundef nonnull byval(%"class.std::optional.268") align 8 %6, ptr noundef nonnull byval(%"class.std::optional.268") align 8 %7, i32 noundef %i.dz)
          to label %.noexc67 unwind label %bb.z

.noexc67:                                         ; preds = %bb.x
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !487
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8456
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !487
  br label %_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE12emplace_backIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEERS1_DpOT_.exit

bb.y:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE17_M_realloc_insertIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr %i.eb, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE12emplace_backIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEERS1_DpOT_.exit unwind label %bb.z

_ZNSt6vectorIN7rocksdb18SubcompactionStateESaIS1_EE12emplace_backIJRPNS0_10CompactionESt8optionalINS0_5SliceEESA_jEEERS1_DpOT_.exit: ; preds = %bb.y, %.noexc67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.eh = add i64 %.0128, 1                       ; 2 uses
  %i.ei = load ptr, ptr %i.co, align 8, !tbaa !471
  %i.ej = load ptr, ptr %i.cp, align 8, !tbaa !470 ; 2 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 5                 ; 2 uses
  %.not41 = icmp ugt i64 %i.eh, %i.en
  br i1 %.not41, label %bb.q, label %bb.s, !llvm.loop !1331

end_hunk_0
begin_hunk_1_@_ZN7rocksdb13CompactionJob26FinishCompactionOutputFileERKNS_6StatusERKNS_17ParsedInternalKeyERKNS_5SliceEPS8_SA_PKNS_18CompactionIteratorEPNS_18SubcompactionStateERNS_17CompactionOutputsE:._crit_edge.i.i
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.as:                                            ; preds = %bb.aq
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.ds

bb.at:                                            ; preds = %bb.aq
  %i.gy = call noundef nonnull align 8 dereferenceable(784) ptr @_ZN7rocksdb15TablePropertiesaSEOS0_(ptr noundef nonnull align 8 dereferenceable(784) %27, ptr noundef nonnull align 8 dereferenceable(784) %28) #37 ; 0 uses
  call void @_ZN7rocksdb15TablePropertiesD2Ev(ptr noundef nonnull align 8 dead_on_return(784) dereferenceable(784) %28) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  %.pre341 = load i8, ptr %0, align 8, !tbaa !500 ; 2 uses
  %i.gz = icmp eq i8 %.pre341, 0
  %i.ha = icmp eq i64 %i.bs, 0                    ; 2 uses
  %or.cond = and i1 %i.ha, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %27, i64 160 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8
  %i.hd = icmp eq i64 %i.hc, 0
  %or.cond4 = select i1 %or.cond, i1 %i.hd, i1 false
  br i1 %or.cond4, label %bb.au, label %bb.bi

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.he = load i64, ptr %i.d, align 8, !tbaa !632
  %i.hf = and i64 %i.he, 4611686018427387903
  %i.hg = load ptr, ptr %1, align 8, !tbaa !75
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  invoke void %i.hi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(1896) %1, i64 noundef %i.hf)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !393 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !75
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 256
  %i.hn = load ptr, ptr %i.hm, align 8
  invoke void %i.hn(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %30, ptr noundef nonnull align 8 dereferenceable(72) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ho = load i8, ptr %30, align 8, !tbaa !500
  %i.hp = icmp eq i8 %i.ho, 0
  br i1 %i.hp, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hq = load ptr, ptr %i.ct, align 8, !tbaa !411, !nonnull !409, !align !412
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 56
  %i.hs = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !72
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !391
  %i.hw = getelementptr inbounds i8, ptr %i.b, i64 -314
  %i.hx = load i8, ptr %i.hw, align 2, !tbaa !1698, !range !408, !noundef !409
  %i.hy = trunc nuw i8 %i.hx to i1
  %i.hz = select i1 %i.hy, ptr @.str.106, ptr @.str
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull @.str.105, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.ht, i32 noundef %i.hv, i64 noundef %i.f, ptr noundef nonnull %i.hz)
          to label %bb.bb unwind label %bb.ba

bb.ay:                                            ; preds = %bb.au
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

bb.az:                                            ; preds = %bb.av
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit192

bb.ba:                                            ; preds = %bb.ax
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !437 ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i189, label %_ZN7rocksdb6StatusD2Ev.exit192, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i190

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i190: ; preds = %bb.ba
  call void @_ZdaPv(ptr noundef nonnull %i.ie) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit192

bb.bb:                                            ; preds = %bb.ax, %bb.aw
  %i.if = load ptr, ptr %i.a, align 8, !tbaa !784 ; 4 uses
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -504 ; 2 uses
  store ptr %i.ig, ptr %i.a, align 8, !tbaa !784
  %i.ih = getelementptr inbounds i8, ptr %i.if, i64 -8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !394 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 4 uses
  %i.ik = load atomic i64, ptr %i.ij acquire, align 8 ; 2 uses
  %i.il = icmp eq i64 %i.ik, 4294967297
  %i.im = trunc i64 %i.ik to i32                  ; 2 uses
  br i1 %i.il, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.ij, align 8, !tbaa !397
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  store i32 0, ptr %i.in, align 4, !tbaa !398
  %i.io = load ptr, ptr %i.ii, align 8, !tbaa !75
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #37, !inline_history !1690
  %i.ir = load ptr, ptr %i.ii, align 8, !tbaa !75
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #37, !inline_history !1690
  br label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.iu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !73
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.iu, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.iv = add nsw i32 %i.im, -1
  store i32 %i.iv, ptr %i.ij, align 8, !tbaa !381
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %i.iw = atomicrmw volatile add ptr %i.ij, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.im, %bb.bf ], [ %i.iw, %bb.bg ]
  %i.ix = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ix, label %bb.bh, label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !385

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ii) #37
  br label %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bd, %bb.bb
  %i.iy = getelementptr inbounds i8, ptr %i.if, i64 -72
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !72 ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.if, i64 -56 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !73
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #34
  br label %_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit

_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit: ; preds = %_ZNSt12__shared_ptrIKN7rocksdb15TablePropertiesELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(504) %i.ig) #37
  %i.je = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !437 ; 2 uses
  %.not.i.i193 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i193, label %_ZN7rocksdb6StatusD2Ev.exit196, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i194

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i194: ; preds = %_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.jf) #34
  br label %_ZN7rocksdb6StatusD2Ev.exit196

_ZN7rocksdb6StatusD2Ev.exit196:                   ; preds = %_ZN7rocksdb17CompactionOutputs16RemoveLastOutputEv.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.jg = load ptr, ptr %29, align 8, !tbaa !72   ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit196
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !73
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %.pre342 = load i8, ptr %0, align 8, !tbaa !500
  br label %bb.bi

_ZN7rocksdb6StatusD2Ev.exit192:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i190, %bb.ba, %bb.az
  %.pn119 = phi { ptr, i32 } [ %i.ib, %bb.az ], [ %i.ic, %bb.ba ], [ %i.ic, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i190 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %i.jl = load ptr, ptr %29, align 8, !tbaa !72   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197: ; preds = %_ZN7rocksdb6StatusD2Ev.exit192
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !73
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199: ; preds = %_ZN7rocksdb6StatusD2Ev.exit192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197, %bb.ay
  %.pn119.pn = phi { ptr, i32 } [ %i.ia, %bb.ay ], [ %.pn119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197 ], [ %.pn119, %_ZN7rocksdb6StatusD2Ev.exit192 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %bb.ds

bb.bi:                                            ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %43 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ha, %bb.at ]
  %i.jq = phi i8 [ %.pre342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pre341, %bb.at ]
  %.0 = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %bb.at ] ; 6 uses
  %i.jr = icmp eq i8 %i.jq, 0
  br i1 %i.jr, label %bb.bj, label %.thread428

bb.bj:                                            ; preds = %bb.bi
  %i.js = load i64, ptr %i.hb, align 8
  %i.jt = icmp eq i64 %i.js, 0
  %or.cond7.not = select i1 %43, i1 %i.jt, i1 false
  br i1 %or.cond7.not, label %.thread428, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN7rocksdb17CompactionOutputs21UpdateTablePropertiesEv(ptr noundef nonnull align 8 dereferenceable(544) %9)
          to label %bb.bl unwind label %bb.ar

bb.bl:                                            ; preds = %bb.bk
  %i.ju = load ptr, ptr %i.ct, align 8, !tbaa !411, !nonnull !409, !align !412
  %i.jv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !72
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !391
  %i.jz = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !1699
  %i.kb = getelementptr inbounds nuw i8, ptr %.0, i64 190
  %i.kc = load i8, ptr %i.kb, align 2, !tbaa !1698, !range !408, !noundef !409
  %i.kd = getelementptr inbounds nuw i8, ptr %.0, i64 191 ; 2 uses
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 16), align 8, !tbaa !862 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bl
  %i.kf = load i8, ptr %i.kd, align 1, !tbaa !1090 ; 2 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.bm ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.bm ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !1090
  %i.ki = icmp ult i8 %i.kh, %i.kf                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ki, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ki, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !863 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, label %bb.bm, !llvm.loop !1691

_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i: ; preds = %bb.bm
  %i.kj = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8)
  br i1 %i.kj, label %.critedge.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !1090
  %i.km = icmp ult i8 %i.kf, %i.kl
  br i1 %i.km, label %.critedge.i, label %bb.bo

.critedge.i:                                      ; preds = %bb.bn, %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i, %bb.bl
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.bn ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %_ZNSt3mapIN7rocksdb11TemperatureENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS1_ESaISt4pairIKS1_S7_EEE11lower_boundERSB_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, i64 8), %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  store ptr %i.kd, ptr %14, align 8, !tbaa !395
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.kn = invoke ptr @_ZNSt8_Rb_treeIN7rocksdb11TemperatureESt4pairIKS1_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN7rocksdb13OptionsHelper21temperature_to_stringB5cxx11E, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc200 unwind label %bb.ar

.noexc200:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bo

bb.bo:                                            ; preds = %.noexc200, %bb.bn
  %.sroa.06.0.i = phi ptr [ %i.kn, %.noexc200 ], [ %.19.i.i.i.i, %bb.bn ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.kp = trunc nuw i8 %i.kc to i1
  %i.kq = select i1 %i.kp, ptr @.str.106, ptr @.str
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ju, i64 56
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !72
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelERKSt10shared_ptrINS_6LoggerEEPKcz(i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(16) %i.kr, ptr noundef nonnull @.str.107, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 32), ptr noundef %i.jw, i32 noundef %i.jy, i64 noundef %i.f, i64 noundef %i.bs, i64 noundef %i.ka, ptr noundef nonnull %i.kq, ptr noundef %i.ks)
          to label %.thread428 unwind label %bb.ar

.thread428:                                       ; preds = %bb.ap, %bb.bo, %bb.bj, %bb.bi
  %.0430 = phi ptr [ %.0, %bb.bi ], [ %.0, %bb.bo ], [ %.0, %bb.bj ], [ %i.c, %bb.ap ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  %i.kt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 8 uses
  store ptr %i.kt, ptr %31, align 8, !tbaa !383
  %i.ku = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 5 uses
  store i64 0, ptr %i.ku, align 8, !tbaa !384
  store i8 0, ptr %i.kt, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %32, i8 0, i64 16, i1 false)
  %i.kv = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.kw = invoke noundef i64 @_ZN7rocksdb23PackFileNumberAndPathIdEmm(i64 noundef 0, i64 noundef 0)
          to label %bb.bp unwind label %bb.cc

bb.bp:                                            ; preds = %.thread428
  store i64 %i.kw, ptr %i.kv, align 8, !tbaa !632
  %i.kx = getelementptr inbounds nuw i8, ptr %32, i64 24
  store i64 0, ptr %i.kx, align 8, !tbaa !605
  %i.ky = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i64 72057594037927935, ptr %i.ky, align 8, !tbaa !1091
  %i.kz = getelementptr inbounds nuw i8, ptr %32, i64 40
  store i64 0, ptr %i.kz, align 8, !tbaa !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #37
  %i.la = load <4 x i8>, ptr %0, align 8, !tbaa !73
  store <4 x i8> %i.la, ptr %33, align 8, !tbaa !73
  %i.lb = getelementptr inbounds nuw i8, ptr %33, i64 4 ; 2 uses
  %i.lc = load i8, ptr %i.q, align 4, !tbaa !504, !range !408, !noundef !409
  store i8 %i.lc, ptr %i.lb, align 4, !tbaa !504
  %i.ld = getelementptr inbounds nuw i8, ptr %33, i64 5 ; 2 uses
  %i.le = load i8, ptr %i.t, align 1, !tbaa !505
  store i8 %i.le, ptr %i.ld, align 1, !tbaa !505
  %i.lf = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 9 uses
  store ptr null, ptr %i.lf, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.lg = load ptr, ptr %i.w, align 8, !tbaa !437 ; 2 uses
  %.not.i.i202 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i202, label %.thread.i214, label %bb.bq

.thread.i214:                                     ; preds = %bb.bp
  store ptr null, ptr %i.lf, align 8, !tbaa !437
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull %i.lg)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %.pre.i206 = load ptr, ptr %13, align 8, !tbaa !437
  %.pre16.i207 = load ptr, ptr %i.lf, align 8, !tbaa !437 ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !437
  store ptr %.pre.i206, ptr %i.lf, align 8, !tbaa !437
  %.not.i.i.i.i.i208 = icmp eq ptr %.pre16.i207, null
  br i1 %.not.i.i.i.i.i208, label %bb.bt, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i209

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i209: ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %.pre16.i207) #34
  %.pr.i210 = load ptr, ptr %13, align 8, !tbaa !437 ; 2 uses
  %.not.i11.i211 = icmp eq ptr %.pr.i210, null
  br i1 %.not.i11.i211, label %bb.bt, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i212

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i212: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i209
  call void @_ZdaPv(ptr noundef nonnull %.pr.i210) #34
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.lh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.li = load ptr, ptr %i.lf, align 8, !tbaa !437 ; 2 uses
  %.not.i12.i203 = icmp eq ptr %i.li, null
  br i1 %.not.i12.i203, label %.body215, label %.body215.sink.split

bb.bt:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i212, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i209, %bb.br, %.thread.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.lj = icmp ne ptr %.0430, null                ; 3 uses
  br i1 %i.lj, label %bb.bu, label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #37
  %i.lk = getelementptr inbounds nuw i8, ptr %.0430, i64 16 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !632
  %i.lm = and i64 %i.ll, 4611686018427387903
  %i.ln = load ptr, ptr %1, align 8, !tbaa !75
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8
  invoke void %i.lp(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(1896) %1, i64 noundef %i.lm)
          to label %bb.bv unwind label %bb.cd

bb.bv:                                            ; preds = %bb.bu
  %i.lq = load ptr, ptr %31, align 8, !tbaa !72   ; 6 uses
  %i.lr = icmp eq ptr %i.lq, %i.kt
  %i.ls = load ptr, ptr %34, align 8, !tbaa !72   ; 5 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt                ; 2 uses
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bv
  br i1 %i.lu, label %bb.bw, label %.thread.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.bv
  br i1 %i.lu, label %bb.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.lv = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !384 ; 3 uses
  %i.lx = icmp ult i64 %i.lw, 16
  call void @llvm.assume(i1 %i.lx)
  switch i64 %i.lw, label %bb.by [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.ly = load i8, ptr %i.ls, align 1, !tbaa !73
  store i8 %i.ly, ptr %i.lq, align 1, !tbaa !73
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lq, ptr align 1 %i.ls, i64 %i.lw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.by, %bb.bx, %bb.bw
  %i.lz = load i64, ptr %i.lv, align 8, !tbaa !384 ; 2 uses
  store i64 %i.lz, ptr %i.ku, align 8, !tbaa !384
  %i.ma = load ptr, ptr %31, align 8, !tbaa !72
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.lz
  store i8 0, ptr %i.mb, align 1, !tbaa !73
  %.pre.i219 = load ptr, ptr %34, align 8, !tbaa !72
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
end_hunk_1
