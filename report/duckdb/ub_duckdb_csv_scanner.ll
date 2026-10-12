Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_csv_scanner?download=true
inline.NumInlined: 6115
inline.NumDeleted: 2467
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN6duckdb18StringValueScanner16MoveToNextBufferEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.em = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !169
  %i.ep = call noundef zeroext i1 @_ZN6duckdb17StringValueResult6AddRowERS0_m(ptr noundef nonnull align 8 dereferenceable(930) %i.by, i64 noundef %i.eo) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !265
  %i.es = add i64 %i.er, 1
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !265
  br label %bb.bf

bb.aq:                                            ; preds = %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %i.eu = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !137 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !490 ; 2 uses
  %i.ez = urem i64 %i.ew, %i.ey                   ; 3 uses
  %i.fa = load ptr, ptr %i.et, align 8, !tbaa !489
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !498 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i13, label %.loopexit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !325 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !137
  %i.fg = icmp eq i64 %i.ew, %i.ff
  br i1 %i.fg, label %_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEEixERS9_.exit, label %.lr.ph.i.i.i.i

bb.as:                                            ; preds = %bb.at
  %i.fh = icmp eq i64 %i.ew, %i.fk
  br i1 %i.fh, label %_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEEixERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !14

.lr.ph.i.i.i.i:                                   ; preds = %bb.ar, %bb.as
  %.020.i.i.i.i = phi ptr [ %i.fi, %bb.as ], [ %i.fd, %bb.ar ]
  %i.fi = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !325 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !137 ; 2 uses
  %i.fl = urem i64 %i.fk, %i.ey
  %.not19.i.i.i.i = icmp eq i64 %i.fl, %i.ez
  br i1 %.not19.i.i.i.i, label %bb.as, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !14

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.at
  br label %.loopexit.i.i, !llvm.loop !14

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store ptr %i.et, ptr %1, align 8, !tbaa !502
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fn = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 5 uses
  store ptr null, ptr %i.fn, align 8, !tbaa !325
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.ev, align 8, !tbaa !137
  store i64 %i.fp, ptr %i.fo, align 8, !tbaa !504
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false)
  store ptr %i.fn, ptr %i.fm, align 8, !tbaa !505
  %i.fr = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb10shared_ptrINS2_15CSVBufferHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.et, i64 noundef %i.ez, i64 noundef %i.ew, ptr noundef nonnull %i.fn, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10shared_ptrINS2_15CSVBufferHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.au

_ZNSt10_HashtableImSt4pairIKmN6duckdb10shared_ptrINS2_15CSVBufferHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEEixERS9_.exit

bb.au:                                            ; preds = %.loopexit.i.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb10shared_ptrINS2_15CSVBufferHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %i.fs

_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEEixERS9_.exit: ; preds = %bb.as, %bb.ar, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10shared_ptrINS2_15CSVBufferHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i
  %.pn.i.i = phi ptr [ %i.fr, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10shared_ptrINS2_15CSVBufferHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.fd, %bb.ar ], [ %i.fi, %bb.as ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %.1.i.i, %i.e
  br i1 %i.ft, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit21, label %bb.av

bb.av:                                            ; preds = %_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEEixERS9_.exit
  %i.fu = load ptr, ptr %i.j, align 8, !tbaa !105 ; 2 uses
  %i.fv = load <2 x ptr>, ptr %i.e, align 8, !tbaa !106
  %.not.i.i.i.i.i14 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i14, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEC2ERKS2_.exit.i16, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 3 uses
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i15 = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i.i.i15, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !89
  %i.fz = add nsw i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !89
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEC2ERKS2_.exit.i16

bb.ay:                                            ; preds = %bb.aw
  %i.ga = atomicrmw volatile add ptr %i.fw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEC2ERKS2_.exit.i16

_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEC2ERKS2_.exit.i16: ; preds = %bb.ay, %bb.ax, %bb.av
  %i.gb = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !105 ; 8 uses
  store <2 x ptr> %i.fv, ptr %.1.i.i, align 8, !tbaa !106
  %.not.i.i.i.i17 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i17, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit21, label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEC2ERKS2_.exit.i16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.gd, align 8, !tbaa !142
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !143
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !102
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #33, !inline_history !10
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !102
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #33, !inline_history !10
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit21

bb.bb:                                            ; preds = %bb.az
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i5.i18 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i.i5.i18, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i19

bb.bd:                                            ; preds = %bb.bb
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i19: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i20 = phi i32 [ %i.gg, %bb.bc ], [ %i.gq, %bb.bd ]
  %i.gr = icmp eq i32 %.0.i.i.i.i.i.i20, 1
  br i1 %i.gr, label %bb.be, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit21, !prof !145

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #33
  br label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit21

_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit21: ; preds = %_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEEixERS9_.exit, %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEC2ERKS2_.exit.i16, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i19, %bb.be
  store i64 0, ptr %i.c, align 8, !tbaa !162
  %i.gs = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gt)
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !149
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !153
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.gw, ptr %i.gx, align 8, !tbaa !154
  call void @_ZN6duckdb18StringValueScanner22ProcessOverBufferValueEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !154
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !1176
  %i.ha = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !169
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !748
  br label %bb.bf

bb.bf:                                            ; preds = %bb.a, %bb.ah, %bb.ap, %bb.af, %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit21, %bb.aa
  %.0 = phi i1 [ true, %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit21 ], [ false, %bb.aa ], [ false, %bb.ah ], [ false, %bb.af ], [ false, %bb.ap ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN6duckdb10StringUtil7SkipBOMEPKcRKmRm(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef readonly byval(%"struct.duckdb::CSVIterator") align 8 captures(none) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !262  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted = load i64, ptr %i.c, align 8, !tbaa !206 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %.promoted)
  %exitcond.not15.not = icmp ult i64 %.promoted, %i.b
  br i1 %exitcond.not15.not, label %.lr.ph, label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not = icmp eq i64 %i.i, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.4.016 = phi i8 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.f = phi i64 [ %i.i, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.g = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !154  ; 2 uses
  %i.i = add i64 %i.f, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.k = load i8, ptr %i.j, align 1, !tbaa !144
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !263, !nonnull !172, !align !220
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw [19 x i8], ptr %i.l, i64 %i.m
  %i.o = zext i8 %.sroa.4.016 to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !214   ; 2 uses
  switch i8 %i.q, label %bb.b [
    i8 1, label %bb.c
    i8 6, label %bb.c
    i8 5, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.r = getelementptr i8, ptr %i.h, i64 %i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !144
  %i.u = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 113
  %i.w = load i8, ptr %i.v, align 1, !tbaa !144
  %i.x = icmp eq i8 %i.t, %i.w
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.x, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb18StringValueScanner14SkipUntilStateENS_8CSVStateES1_RNS_11CSVIteratorERb(ptr noundef nonnull align 8 dereferenceable(1232) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(65) %3, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !262  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = add i64 %i.f, -1                         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.x, %bb.a
  %.sroa.5.0 = phi i8 [ %1, %bb.a ], [ %i.x, %bb.x ] ; 2 uses
  %.038 = phi i8 [ 1, %bb.a ], [ %spec.select, %bb.x ] ; 3 uses
  %i.k = load i64, ptr %i.g, align 8, !tbaa !206
  %i.l = icmp ult i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !154  ; 8 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !206  ; 3 uses
  %i.p = add i64 %i.o, 1                          ; 7 uses
  store i64 %i.p, ptr %i.g, align 8, !tbaa !206
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1, !tbaa !144
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !263, !nonnull !172, !align !220
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [19 x i8], ptr %i.s, i64 %i.t
  %i.v = zext i8 %.sroa.5.0 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !214   ; 7 uses
  switch i8 %i.x, label %bb.s [
    i8 0, label %bb.d
    i8 15, label %bb.d
    i8 7, label %..preheader_crit_edge
    i8 1, label %bb.t
    i8 6, label %bb.t
  ]

..preheader_crit_edge:                            ; preds = %bb.c
  %.pre175.pre = load ptr, ptr %i.h, align 8, !tbaa !135
  br label %.preheader

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.y = add i64 %i.o, 9                          ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.f
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !135 ; 5 uses
  br i1 %i.z, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.d
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %.noexc.i, label %.lr.ph.split, !prof !145

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aa = load ptr, ptr %.pre, align 8, !tbaa !263, !nonnull !172, !align !220 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 5632
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !277
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 5640
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !278
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 5648
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !279
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 5672
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !280
  br label %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit71

_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit71: ; preds = %.lr.ph.split, %bb.h
  %i.aj = phi i64 [ %i.y, %.lr.ph.split ], [ %i.bg, %bb.h ] ; 4 uses
  %i.ak = phi i64 [ %i.p, %.lr.ph.split ], [ %i.aj, %bb.h ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ak
  %.0.copyload.i = load i64, ptr %i.al, align 1   ; 4 uses
  %i.am = xor i64 %i.ac, %.0.copyload.i
  %i.an = xor i64 %i.ae, %.0.copyload.i
  %i.ao = and i64 %i.an, %i.am
  %i.ap = xor i64 %i.ag, %.0.copyload.i
  %i.aq = and i64 %i.ao, %i.ap
  %i.ar = xor i64 %i.ai, %.0.copyload.i
  %i.as = and i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = sub i64 72340172838076672, %i.as
  %i.au = or i64 %i.at, %i.as
  %i.av = and i64 %i.au, -9187201950435737472
  %.not = icmp eq i64 %i.av, -9187201950435737472
  br i1 %.not, label %bb.h, label %.thread

.noexc.i:                                         ; preds = %.lr.ph
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.ax, ptr %8, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i64 49, ptr %i.d, align 8, !tbaa !137
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ay, ptr %8, align 8, !tbaa !157
  %i.az = load i64, ptr %i.d, align 8, !tbaa !137 ; 3 uses
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ay, ptr noundef nonnull align 1 dereferenceable(49) @.str.50, i64 49, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !159
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  store i8 0, ptr %i.bb, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.g unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %.noexc
  %.0.i.i = phi i1 [ false, %bb.e ], [ true, %.noexc ] ; 2 uses
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !157   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ax
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.be) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.0.i.i, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %.0.i.i, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78
  %.sink = phi ptr [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i82 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i73 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i98 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78 ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77 ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87 ], [ %i.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86 ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i82 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i73 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i98 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78 ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87 ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103 ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ]
  call void @__cxa_free_exception(ptr %.sink) #33
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i86 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i77 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i102 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i78 ], [ %i.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i103 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i87 ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv.exit71
  store i64 %i.aj, ptr %i.g, align 8, !tbaa !206
  %i.bg = add i64 %i.aj, 8                        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6duckdb18StringValueScanner10IsRowValidERNS_11CSVIteratorE:bb.a
bb.q:                                             ; preds = %bb.o
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i27 = phi i32 [ %i.an, %bb.p ], [ %i.ax, %bb.q ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i27, 1
  br i1 %i.ay, label %bb.r, label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit, !prof !145

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #33
  br label %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i26, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.s unwind label %bb.x       ; 2 uses

bb.s:                                             ; preds = %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !102
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef nonnull align 8 dereferenceable(930) ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(1232) %i.az)
          to label %bb.t unwind label %bb.x       ; 5 uses

bb.t:                                             ; preds = %bb.s
  %i.be = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load <2 x i64>, ptr %i.bf, align 8, !tbaa !137
  store <2 x i64> %i.bg, ptr %1, align 8, !tbaa !137
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 568
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !597 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 576
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !597 ; 3 uses
  %.not = icmp eq ptr %i.bi, %i.bk
  br i1 %.not, label %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %.not24 = icmp eq i64 %i.bn, 88
  br i1 %.not24, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.sroa.09.015.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %i.bi, %bb.v ] ; 2 uses
  %i.bo = load i8, ptr %.sroa.09.015.i, align 8, !tbaa !583
  %.not.i = icmp eq i8 %i.bo, 6                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 88 ; 2 uses
  %.not13.not.i = icmp eq ptr %i.bp, %i.bk
  %or.cond = select i1 %.not.i, i1 true, i1 %.not13.not.i
  br i1 %or.cond, label %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit, label %.lr.ph.i

bb.w:                                             ; preds = %_ZN6duckdb15make_shared_ptrINS_15CSVErrorHandlerEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.bq, %bb.w ], [ %i.ai, %bb.k ]
  call void @_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit31

bb.x:                                             ; preds = %bb.s, %_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6duckdb9ExceptionE
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN6duckdb9ExceptionE
  br label %bb.ac

_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit: ; preds = %.lr.ph.i, %bb.u
  %.0.not = phi i1 [ true, %bb.u ], [ %.not.i, %.lr.ph.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 256
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !589
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 928
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !496, !range !171, !noundef !172
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond.not = and i1 %.0.not, %i.by
  br i1 %or.cond.not, label %bb.ab, label %.thread

bb.aa:                                            ; preds = %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit
  br i1 %.0.not, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 880
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !734
  %i.cb = icmp eq i64 %i.ca, 0
  br label %.thread

bb.ac:                                            ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.y ], [ %i.br, %bb.x ] ; 3 uses
  %.016 = extractvalue { ptr, i32 } %.pn, 1
  %i.cc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN6duckdb9ExceptionE) #33
  %i.cd = icmp eq i32 %.016, %i.cc
  br i1 %i.cd, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %.017 = extractvalue { ptr, i32 } %.pn, 0
  %i.ce = call ptr @__cxa_begin_catch(ptr %.017) #33 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.thread unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.thread:                                          ; preds = %bb.v, %bb.ad, %bb.z, %bb.aa, %bb.ab
  %.020 = phi i1 [ %i.cb, %bb.ab ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %bb.v ]
  %i.cg = load ptr, ptr %2, align 8, !tbaa !211   ; 3 uses
  %.not.i28 = icmp eq ptr %i.cg, null
  br i1 %.not.i28, label %_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i: ; preds = %.thread
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !102
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(1232) %i.cg) #33, !inline_history !24
  br label %_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.merged23 = phi { ptr, i32 } [ %i.cf, %bb.ae ], [ %.pn, %bb.ac ] ; 2 uses
  %i.ck = load ptr, ptr %2, align 8, !tbaa !211   ; 3 uses
  %.not.i29 = icmp eq ptr %i.ck, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit31, label %_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i30

_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i30: ; preds = %bb.af
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !102
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(1232) %i.ck) #33, !inline_history !24
  br label %_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit31

_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit31: ; preds = %_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i30, %bb.af, %.body
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged23, %bb.af ], [ %.merged23, %_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

bb.ag:                                            ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit
  %.121 = phi i1 [ %.020, %_ZNSt10unique_ptrIN6duckdb18StringValueScannerESt14default_deleteIS1_EED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.121
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #19

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb18StringValueScanner6TryRowENS_8CSVStateEmm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::ValidRowInfo") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1232) %1, i8 noundef zeroext %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"struct.duckdb::CSVIterator", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !tbaa.struct !139
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %3, ptr %i.c, align 8, !tbaa !363
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store i64 %4, ptr %i.d, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i8 0, ptr %i.a, align 1, !tbaa !138
  %i.e = call noundef zeroext i1 @_ZNK6duckdb18StringValueScanner14SkipUntilStateENS_8CSVStateES1_RNS_11CSVIteratorERb(ptr noundef nonnull align 8 dereferenceable(1232) %1, i8 noundef zeroext %2, i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(65) %5, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.e, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.511.0.copyload = load i64, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !137 ; 4 uses
  %.sroa.7.0.copyload = load i64, ptr %i.d, align 8, !tbaa !137 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.g = load i64, ptr %i.f, align 8, !tbaa !262
  store i64 %i.g, ptr %i.d, align 8, !tbaa !262
  %i.h = call noundef zeroext i1 @_ZNK6duckdb18StringValueScanner10IsRowValidERNS_11CSVIteratorE(ptr noundef nonnull align 8 dereferenceable(1232) %1, ptr noundef nonnull align 8 dereferenceable(65) %5)
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.a, align 1, !tbaa !138, !range !171, !noundef !172
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 176
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.7.0.copyload, i64 %.sroa.511.0.copyload)
  %exitcond.not.i23.not = icmp ult i64 %.sroa.511.0.copyload, %.sroa.7.0.copyload
  br i1 %exitcond.not.i23.not, label %.lr.ph, label %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit

bb.e:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.p, %umax.i
  br i1 %exitcond.not.i, label %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.4.0.i24 = phi i8 [ %i.x, %bb.e ], [ 0, %bb.d ]
  %i.m = phi i64 [ %i.p, %bb.e ], [ %.sroa.511.0.copyload, %bb.d ] ; 2 uses
  %i.n = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !154  ; 2 uses
  %i.p = add i64 %i.m, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  %i.r = load i8, ptr %i.q, align 1, !tbaa !144
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !263, !nonnull !172, !align !220
  %i.t = zext i8 %i.r to i64
  %i.u = getelementptr inbounds nuw [19 x i8], ptr %i.s, i64 %i.t
  %i.v = zext i8 %.sroa.4.0.i24 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !214   ; 2 uses
  switch i8 %i.x, label %bb.e [
    i8 1, label %bb.f
    i8 6, label %bb.f
    i8 5, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.y = getelementptr i8, ptr %i.o, i64 %i.p
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !144
  %i.ab = call noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 113
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !144
  %i.ae = icmp eq i8 %i.aa, %i.ad
  %i.af = zext i1 %i.ae to i8
  br label %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit

_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit: ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %i.ag = phi i8 [ 1, %bb.c ], [ %i.af, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  %i.ah = load i64, ptr %.sroa.511.0..sroa_idx, align 8, !tbaa !206
  br label %bb.g

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !206 ; 2 uses
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !138, !range !171, !noundef !172
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit, %.critedge
  %.sink21 = phi i8 [ 1, %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit ], [ 0, %.critedge ]
  %.sroa.511.0.copyload.sink = phi i64 [ %.sroa.511.0.copyload, %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit ], [ %i.aj, %.critedge ]
  %.sink16 = phi i64 [ %i.ah, %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit ], [ %i.aj, %.critedge ]
  %.sink = phi i8 [ %i.ag, %_ZNK6duckdb18StringValueScanner21FirstValueEndsOnQuoteENS_11CSVIteratorE.exit ], [ %i.ak, %.critedge ]
  %.sink18 = load i64, ptr %5, align 8, !tbaa !140
  store i8 %.sink21, ptr %0, align 8, !tbaa !745
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.511.0.copyload.sink, ptr %i.al, align 8, !tbaa !747
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink18, ptr %i.am, align 8, !tbaa !746
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sink16, ptr %i.an, align 8, !tbaa !1188
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.ao, align 8, !tbaa !1189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void
}

declare void @_ZN6duckdb15CSVErrorHandler14NewMaxLineSizeEm(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(5680) ptr @_ZN6duckdb20CSVStateMachineCache3GetERKNS_22CSVStateMachineOptionsE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18StringValueScanner20FinalizeChunkProcessEv(ptr noundef nonnull align 8 dereferenceable(1232) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 11 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !759
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !97
  %.not4 = icmp ult i64 %i.d, %i.f
  br i1 %.not4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !170, !range !171, !noundef !172
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !133, !range !171, !noundef !172
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !264
  %i.r = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_11CSVFileScanELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  %i.t = atomicrmw add ptr %i.s, i64 %i.q seq_cst, align 8 ; 0 uses
  store i64 0, ptr %i.p, align 8, !tbaa !264
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = load i8, ptr %i.u, align 8, !tbaa !261, !range !171, !noundef !172
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %.preheader62

.preheader62:                                     ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !146
  %.not2.i65 = icmp eq ptr %i.y, null
  br i1 %.not2.i65, label %_ZNK6duckdb11BaseScanner12FinishedFileEv.exit44, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader62
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.ag

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !597 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !597 ; 4 uses
  %.not1314.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not1314.not.i, label %.thread, label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i, i64 88 ; 2 uses
  %.not13.not.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not13.not.i, label %.lr.ph.i13, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.sroa.09.015.i = phi ptr [ %i.af, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ag = load i8, ptr %.sroa.09.015.i, align 8, !tbaa !583
  %.not.i = icmp eq i8 %i.ag, 4
  br i1 %.not.i, label %.lr.ph.i20.preheader, label %bb.h

bb.i:                                             ; preds = %.lr.ph.i13
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i14, i64 88 ; 2 uses
  %.not13.not.i16 = icmp eq ptr %i.ah, %i.ae
  br i1 %.not13.not.i16, label %.thread, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.h, %bb.i
  %.sroa.09.015.i14 = phi ptr [ %i.ah, %bb.i ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ai = load i8, ptr %.sroa.09.015.i14, align 8, !tbaa !583
  %.not.i15 = icmp eq i8 %i.ai, 9
  br i1 %.not.i15, label %.lr.ph.i20.preheader, label %bb.i

.lr.ph.i20.preheader:                             ; preds = %.lr.ph.i, %.lr.ph.i13
  br label %.lr.ph.i20

.thread:                                          ; preds = %bb.i, %bb.g
  store i8 1, ptr %i.h, align 8, !tbaa !170
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i20
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i21, i64 88 ; 2 uses
  %.not13.not.i23 = icmp eq ptr %i.aj, %i.ae
  br i1 %.not13.not.i23, label %bb.k, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20.preheader, %bb.j
  %.sroa.09.015.i21 = phi ptr [ %i.aj, %bb.j ], [ %i.ac, %.lr.ph.i20.preheader ] ; 2 uses
  %i.ak = load i8, ptr %.sroa.09.015.i21, align 8, !tbaa !583
  %.not.i22 = icmp eq i8 %i.ak, 4
  br i1 %.not.i22, label %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit25, label %bb.j

_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit25: ; preds = %.lr.ph.i20
  store i8 4, ptr %i.a, align 1, !tbaa !579
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 9, ptr %i.a, align 1, !tbaa !579
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit25, %bb.k, %.thread
  %.0 = phi i1 [ true, %_ZNK6duckdb9LineError12HasErrorTypeENS_12CSVErrorTypeE.exit25 ], [ true, %bb.k ], [ false, %.thread ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !146
  %.not57 = icmp eq ptr %i.am, null
  br i1 %.not57, label %bb.af, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = tail call noundef zeroext i1 @_ZN6duckdb18StringValueScanner16MoveToNextBufferEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !146
  %.not58 = icmp eq ptr %i.ao, null
  br i1 %.not58, label %bb.s, label %bb.n

end_hunk_1
begin_hunk_2_@_ZN17duckdb_fast_float10from_charsIdEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.em = icmp sgt i64 %.1190.i, 19
  br i1 %i.em, label %.preheader288, label %bb.ay

.preheader288:                                    ; preds = %bb.al, %.critedge8.i
  %.0176.i351 = phi ptr [ %i.er, %.critedge8.i ], [ %.0211.i, %bb.al ] ; 2 uses
  %.2191.i350 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1190.i, %bb.al ] ; 2 uses
  %i.en = load i8, ptr %.0176.i351, align 1, !tbaa !144, !noalias !1540 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 48                    ; 2 uses
  %i.ep = icmp eq i8 %i.en, %4
  %or.cond274.i = or i1 %i.eo, %i.ep
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader288
  %i.eq = sext i1 %i.eo to i64
  %spec.select275.i = add nsw i64 %.2191.i350, %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176.i351, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.er, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader288, !llvm.loop !63

.critedge.i:                                      ; preds = %.preheader288, %.critedge8.i
  %.2191.i.lcssa = phi i64 [ %.2191.i350, %.preheader288 ], [ %spec.select275.i, %.critedge8.i ]
  %i.es = icmp sgt i64 %.2191.i.lcssa, 19
  br i1 %i.es, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.critedge.i, %bb.ar
  %.5205.i353 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.critedge.i ] ; 2 uses
  %.16.i352 = phi ptr [ %.17.i, %bb.ar ], [ %.0211.i, %.critedge.i ] ; 4 uses
  %i.et = load i8, ptr %.16.i352, align 1, !tbaa !144, !noalias !1540 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.am, label %.thread147

bb.am:                                            ; preds = %.preheader
  %i.ew = mul nuw i64 %.5205.i353, 10
  %i.ex = zext nneg i8 %i.et to i64
  %i.ey = add i64 %i.ew, -48
  %i.ez = add i64 %i.ey, %i.ex                    ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i352, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.fa, %1
  br i1 %.not266.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !144, !noalias !1540
  %i.fc = icmp eq i8 %i.fb, 95
  br i1 %i.fc, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.16.i352, i64 2 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %1
  br i1 %i.fe, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !144, !noalias !1540
  %i.fg = add i8 %i.ff, -48
  %i.fh = icmp ult i8 %i.fg, 10
  br i1 %i.fh, label %bb.ar, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %.17.i = phi ptr [ %i.fd, %bb.aq ], [ %i.fa, %bb.an ], [ %i.fa, %bb.am ] ; 4 uses
  %i.fi = icmp ult i64 %i.ez, 1000000000000000000
  %i.fj = icmp ne ptr %.17.i, %1
  %i.fk = and i1 %i.fj, %i.fi
  br i1 %i.fk, label %.preheader, label %bb.as, !llvm.loop !64

bb.as:                                            ; preds = %bb.ar
  %i.fl = icmp ugt i64 %i.ez, 999999999999999999
  br i1 %i.fl, label %.thread455.thread, label %.thread147

.thread455.thread:                                ; preds = %bb.as
  %i.fm = ptrtoint ptr %.17.i to i64
  %i.fn = add i64 %.5.i, %i.df
  %i.fo = sub i64 %i.fn, %i.fm
  br label %bb.be

.thread147:                                       ; preds = %.preheader, %bb.as
  %.16.i301 = phi ptr [ %.17.i, %bb.as ], [ %.16.i352, %.preheader ]
  %.5205.i298 = phi i64 [ %i.ez, %bb.as ], [ %.5205.i353, %.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.16.i301, i64 1 ; 4 uses
  %.not538 = icmp eq ptr %i.fp, %1
  br i1 %.not538, label %._crit_edge358, label %.lr.ph357

.lr.ph357:                                        ; preds = %.thread147, %bb.ax
  %.0.i356 = phi i64 [ %.1.i, %bb.ax ], [ 0, %.thread147 ] ; 4 uses
  %.6206.i355 = phi i64 [ %i.fw, %bb.ax ], [ %.5205.i298, %.thread147 ] ; 2 uses
  %.18.i354 = phi ptr [ %.19.i, %bb.ax ], [ %i.fp, %.thread147 ] ; 4 uses
  %i.fq = load i8, ptr %.18.i354, align 1, !tbaa !144, !noalias !1540 ; 2 uses
  %i.fr = add i8 %i.fq, -48
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.at, label %._crit_edge358

bb.at:                                            ; preds = %.lr.ph357
  %i.ft = mul nuw i64 %.6206.i355, 10
  %i.fu = zext nneg i8 %i.fq to i64
  %i.fv = add i64 %i.ft, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.18.i354, i64 1 ; 4 uses
  %.not265.i = icmp eq ptr %i.fx, %1
  br i1 %.not265.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !144, !noalias !1540
  %i.fz = icmp eq i8 %i.fy, 95
  br i1 %i.fz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %.18.i354, i64 2 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, %1
  br i1 %i.gb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add nsw i64 %.0.i356, 1
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !144, !noalias !1540
  %i.ge = add i8 %i.gd, -48
  %i.gf = icmp ult i8 %i.ge, 10
  br i1 %i.gf, label %bb.ax, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.19.i = phi ptr [ %i.ga, %bb.aw ], [ %i.fx, %bb.au ], [ %i.fx, %bb.at ] ; 3 uses
  %.1.i = phi i64 [ %i.gc, %bb.aw ], [ %.0.i356, %bb.au ], [ %.0.i356, %bb.at ] ; 2 uses
  %i.gg = icmp ult i64 %i.fw, 1000000000000000000
  %i.gh = icmp ne ptr %.19.i, %1
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph357, label %._crit_edge358, !llvm.loop !65

._crit_edge358:                                   ; preds = %bb.ax, %.lr.ph357, %.thread147
  %.18.i.lcssa = phi ptr [ %i.fp, %.thread147 ], [ %.18.i354, %.lr.ph357 ], [ %.19.i, %bb.ax ]
  %.6206.i.lcssa = phi i64 [ %.5205.i298, %.thread147 ], [ %.6206.i355, %.lr.ph357 ], [ %i.fw, %bb.ax ]
  %.0.i.lcssa = phi i64 [ 0, %.thread147 ], [ %.0.i356, %.lr.ph357 ], [ %.1.i, %bb.ax ]
  %i.gj = ptrtoint ptr %i.fp to i64
  %i.gk = ptrtoint ptr %.18.i.lcssa to i64
  %i.gl = add i64 %.5.i, %i.gj
  %i.gm = sub i64 %i.gl, %i.gk
  %i.gn = add nsw i64 %i.gm, %.0.i.lcssa
  br label %.thread455

_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread: ; preds = %bb.j, %bb.k, %bb.g, %.split, %bb.w, %bb.t, %.split133, %bb.ai, %bb.ah, %bb.aq, %bb.ap, %bb.ao, %bb.av, %bb.aw, %bb.d, %bb.aj, %bb.ak, %bb.x, %bb.c
  %i.go = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #33 ; 2 uses
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  %i.gq = extractvalue { ptr, i32 } %i.go, 1
  br label %bb.bo

bb.ay:                                            ; preds = %bb.al, %.critedge.i
  %i.gr = add i64 %.4187.i, -23
  %or.cond251 = icmp ult i64 %i.gr, -45
  %i.gs = icmp ugt i64 %.4204.i, 9007199254740992
  %or.cond253 = select i1 %or.cond251, i1 true, i1 %i.gs
  br i1 %or.cond253, label %.thread455, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = uitofp nneg i64 %.4204.i to double      ; 2 uses
  %i.gu = icmp slt i64 %.4187.i, 0
  br i1 %i.gu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = sub nsw i64 0, %.4187.i
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !831
  %i.gy = fdiv double %i.gt, %i.gx
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr @_ZN17duckdb_fast_floatL20powers_of_ten_doubleE, i64 %.4187.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !831
  %i.hb = fmul double %i.ha, %i.gt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi double [ %i.hb, %bb.bb ], [ %i.gy, %bb.ba ] ; 2 uses
  store double %storemerge, ptr %2, align 8, !tbaa !831
  br i1 %i.d, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.hc = fneg double %storemerge
  store double %i.hc, ptr %2, align 8, !tbaa !831
  br label %bb.bo

.thread455:                                       ; preds = %._crit_edge358, %bb.ay
  %.sroa.093.0.ph464 = phi i64 [ %.4187.i, %bb.ay ], [ %i.gn, %._crit_edge358 ] ; 2 uses
  %.sroa.7.0.ph463 = phi i64 [ %.4204.i, %bb.ay ], [ %.6206.i.lcssa, %._crit_edge358 ] ; 2 uses
  %.sroa.26.2.ph462 = phi i1 [ false, %bb.ay ], [ true, %._crit_edge358 ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.7.0.ph463, 0
  br i1 %i.hd, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.be

bb.be:                                            ; preds = %.thread455.thread, %.thread455
  %.sroa.26.2.ph462484 = phi i1 [ true, %.thread455.thread ], [ %.sroa.26.2.ph462, %.thread455 ] ; 6 uses
  %.sroa.7.0.ph463483 = phi i64 [ %i.ez, %.thread455.thread ], [ %.sroa.7.0.ph463, %.thread455 ] ; 8 uses
  %.sroa.093.0.ph464480 = phi i64 [ %i.fo, %.thread455.thread ], [ %.sroa.093.0.ph464, %.thread455 ] ; 11 uses
  %i.he = icmp slt i64 %.sroa.093.0.ph464480, -342
  br i1 %i.he, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = icmp sgt i64 %.sroa.093.0.ph464480, 308
  br i1 %i.hf, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %.noexc

.noexc:                                           ; preds = %bb.bf
  %i.hg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.7.0.ph463483, i1 true) ; 2 uses
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = shl i64 %.sroa.7.0.ph463483, %i.hg      ; 2 uses
  %i.hj = trunc nsw i64 %.sroa.093.0.ph464480 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !137
  %i.hp = zext i64 %i.hi to i128
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 511
  %i.hw = icmp eq i64 %i.hv, 511
  br i1 %i.hw, label %.noexc73, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

.noexc73:                                         ; preds = %.noexc
  %i.hx = getelementptr i8, ptr %i.hm, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !137
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.hi, i64 %i.hy) ; 2 uses
  %i.hz = add i64 %6, %i.hs                       ; 2 uses
  %7 = icmp ugt i64 %6, %i.hz
  %i.ia = zext i1 %7 to i64
  %spec.select.i72 = add nuw i64 %i.ia, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit: ; preds = %.noexc73, %.noexc
  %.pn273 = phi i64 [ %i.hz, %.noexc73 ], [ %i.hs, %.noexc ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %.noexc73 ], [ %i.hu, %.noexc ] ; 3 uses
  %i.ib = icmp ne i64 %.pn273, -1
  %i.ic = add nsw i64 %.sroa.093.0.ph464480, 27
  %i.id = icmp ult i64 %i.ic, 83
  %or.cond.i54 = or i1 %i.id, %i.ib
  br i1 %or.cond.i54, label %.critedge.i60, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread

.critedge.i60:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  %i.ie = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = add nuw nsw i64 %i.ie, 9                ; 2 uses
  %i.ih = lshr i64 %spec.select.i72.pn, %i.ig     ; 5 uses
  %i.ii = mul nsw i32 %i.hj, 217706
  %i.ij = ashr i32 %i.ii, 16
  %reass.sub = sub nsw i32 %i.ij, %i.hh
  %i.ik = add nsw i32 %reass.sub, 1086
  %i.il = add nsw i32 %i.ik, %i.if                ; 3 uses
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %bb.bg, label %.split487

bb.bg:                                            ; preds = %.critedge.i60
  %i.in = sub nsw i32 1, %i.il                    ; 2 uses
  %i.io = icmp samesign ugt i32 %i.in, 63
  br i1 %i.io, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, label %.split486

.split486:                                        ; preds = %bb.bg
  %i.ip = zext nneg i32 %i.in to i64
  %i.iq = lshr i64 %i.ih, %i.ip                   ; 2 uses
  %i.ir = and i64 %i.iq, 1
  %i.is = add nuw nsw i64 %i.ir, %i.iq            ; 2 uses
  %i.it = lshr i64 %i.is, 1                       ; 2 uses
  %i.iu = icmp samesign ugt i64 %i.is, 9007199254740991
  %i.iv = zext i1 %i.iu to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

.split487:                                        ; preds = %.critedge.i60
  %i.iw = icmp ult i64 %.pn273, 2
  %i.ix = add nsw i64 %.sroa.093.0.ph464480, 4
  %i.iy = icmp ult i64 %i.ix, 28
  %or.cond255.not275 = and i1 %i.iy, %i.iw
  %i.iz = and i64 %i.ih, 3
  %i.ja = icmp eq i64 %i.iz, 1
  %or.cond257 = select i1 %or.cond255.not275, i1 %i.ja, i1 false
  %i.jb = shl i64 %i.ih, %i.ig
  %i.jc = icmp eq i64 %i.jb, %spec.select.i72.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.jc, i1 false
  %i.jd = and i64 %i.ih, 72057594037927934
  %.sroa.0111.0 = select i1 %or.cond259, i64 %i.jd, i64 %i.ih ; 2 uses
  %i.je = and i64 %.sroa.0111.0, 1
  %i.jf = add nuw nsw i64 %i.je, %.sroa.0111.0    ; 2 uses
  %i.jg = lshr i64 %i.jf, 1
  %.not27.i61 = icmp samesign ugt i64 %i.jf, 18014398509481983 ; 2 uses
  %i.jh = zext i1 %.not27.i61 to i32
  %.sroa.19117.0 = add nuw nsw i32 %i.il, %i.jh   ; 2 uses
  %i.ji = and i64 %i.jg, 9218868437227405311
  %.not28.i62 = icmp samesign ugt i32 %.sroa.19117.0, 2046 ; 2 uses
  %.not = select i1 %.not28.i62, i1 true, i1 %.not27.i61
  %spec.select268 = select i1 %.not, i64 0, i64 %i.ji ; 2 uses
  %spec.select269 = select i1 %.not28.i62, i32 2047, i32 %.sroa.19117.0 ; 2 uses
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %bb.bn

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66: ; preds = %bb.bg, %bb.bf, %.thread455, %bb.be
  %.sroa.26.2.ph462485 = phi i1 [ %.sroa.26.2.ph462484, %bb.bf ], [ %.sroa.26.2.ph462, %.thread455 ], [ %.sroa.26.2.ph462484, %bb.be ], [ %.sroa.26.2.ph462484, %bb.bg ]
  %.sroa.093.0.ph464482 = phi i64 [ %.sroa.093.0.ph464480, %bb.bf ], [ %.sroa.093.0.ph464, %.thread455 ], [ %.sroa.093.0.ph464480, %bb.be ], [ %.sroa.093.0.ph464480, %bb.bg ]
  %.sroa.7.0160 = phi i64 [ %.sroa.7.0.ph463483, %bb.bf ], [ 0, %.thread455 ], [ %.sroa.7.0.ph463483, %bb.be ], [ %.sroa.7.0.ph463483, %bb.bg ]
  %.sroa.19117.1 = phi i32 [ 2047, %bb.bf ], [ 0, %.thread455 ], [ 0, %bb.be ], [ 0, %bb.bg ] ; 2 uses
  br i1 %.sroa.26.2.ph462485, label %bb.bh, label %bb.bn

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread: ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit
  br i1 %.sroa.26.2.ph462484, label %bb.bh, label %.thread246

bb.bh:                                            ; preds = %.split487, %.split486, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66
  %.sroa.093.0.ph464481 = phi i64 [ %.sroa.093.0.ph464480, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.093.0.ph464482, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.093.0.ph464480, %.split486 ], [ %.sroa.093.0.ph464480, %.split487 ] ; 5 uses
  %.sroa.19117.1471 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iv, %.split486 ], [ %spec.select269, %.split487 ] ; 3 uses
  %.sroa.0111.2469 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.it, %.split486 ], [ %spec.select268, %.split487 ] ; 2 uses
  %.sroa.7.0160468 = phi i64 [ %.sroa.7.0.ph463483, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread ], [ %.sroa.7.0160, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %.sroa.7.0.ph463483, %.split486 ], [ %.sroa.7.0.ph463483, %.split487 ]
  %i.jj = add i64 %.sroa.7.0160468, 1             ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = icmp slt i64 %.sroa.093.0.ph464481, -342
  %or.cond260 = or i1 %i.jl, %i.jk
  br i1 %or.cond260, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jm = icmp sgt i64 %.sroa.093.0.ph464481, 308
  br i1 %i.jm, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %.noexc76

.noexc76:                                         ; preds = %bb.bi
  %i.jn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jj, i1 true) ; 2 uses
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = shl i64 %i.jj, %i.jn                    ; 2 uses
  %i.jq = trunc nsw i64 %.sroa.093.0.ph464481 to i32 ; 2 uses
  %i.jr = shl nsw i32 %i.jq, 1
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.js ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 5472
  %i.jv = load i64, ptr %i.ju, align 16, !tbaa !137
  %i.jw = zext i64 %i.jp to i128
  %i.jx = zext i64 %i.jv to i128
  %i.jy = mul nuw i128 %i.jx, %i.jw               ; 2 uses
  %i.jz = trunc i128 %i.jy to i64                 ; 2 uses
  %i.ka = lshr i128 %i.jy, 64
  %i.kb = trunc nuw i128 %i.ka to i64             ; 3 uses
  %i.kc = and i64 %i.kb, 511
  %i.kd = icmp eq i64 %i.kc, 511
  br i1 %i.kd, label %.noexc77, label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

.noexc77:                                         ; preds = %.noexc76
  %i.ke = getelementptr i8, ptr %i.jt, i64 5480
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !137
  %8 = tail call i64 @llvm.umulh.i64(i64 %i.jp, i64 %i.kf) ; 2 uses
  %i.kg = add i64 %8, %i.jz                       ; 2 uses
  %9 = icmp ugt i64 %8, %i.kg
  %i.kh = zext i1 %9 to i64
  %spec.select.i75 = add nuw i64 %i.kh, %i.kb
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78

_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78: ; preds = %.noexc77, %.noexc76
  %.pn277 = phi i64 [ %i.kg, %.noexc77 ], [ %i.jz, %.noexc76 ] ; 2 uses
  %spec.select.i75.pn = phi i64 [ %spec.select.i75, %.noexc77 ], [ %i.kb, %.noexc76 ] ; 3 uses
  %i.ki = icmp ne i64 %.pn277, -1
  %i.kj = add nsw i64 %.sroa.093.0.ph464481, 27
  %i.kk = icmp ult i64 %i.kj, 83
  %or.cond.i51 = or i1 %i.kk, %i.ki
  br i1 %or.cond.i51, label %.critedge.i52, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

.critedge.i52:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78
  %i.kl = lshr i64 %spec.select.i75.pn, 63        ; 2 uses
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = add nuw nsw i64 %i.kl, 9                ; 2 uses
  %i.ko = lshr i64 %spec.select.i75.pn, %i.kn     ; 5 uses
  %i.kp = mul nsw i32 %i.jq, 217706
  %i.kq = ashr i32 %i.kp, 16
  %i.kr = add nsw i32 %i.kq, 1086
  %i.ks = sub nsw i32 %i.kr, %i.jo
  %i.kt = add nsw i32 %i.ks, %i.km                ; 3 uses
  %i.ku = icmp slt i32 %i.kt, 1
  br i1 %i.ku, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.critedge.i52
  %i.kv = sub nsw i32 1, %i.kt                    ; 2 uses
  %i.kw = icmp samesign ugt i32 %i.kv, 63
  br i1 %i.kw, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.kx = zext nneg i32 %i.kv to i64
  %i.ky = lshr i64 %i.ko, %i.kx                   ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %i.la = add nuw nsw i64 %i.kz, %i.ky            ; 2 uses
  %i.lb = lshr i64 %i.la, 1
  %i.lc = icmp samesign ugt i64 %i.la, 9007199254740991
  %i.ld = zext i1 %i.lc to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

bb.bl:                                            ; preds = %.critedge.i52
  %i.le = icmp ult i64 %.pn277, 2
  %i.lf = add nsw i64 %.sroa.093.0.ph464481, 4
  %i.lg = icmp ult i64 %i.lf, 28
  %or.cond262.not280 = and i1 %i.lg, %i.le
  %i.lh = and i64 %i.ko, 3
  %i.li = icmp eq i64 %i.lh, 1
  %or.cond264 = select i1 %or.cond262.not280, i1 %i.li, i1 false
  %i.lj = shl i64 %i.ko, %i.kn
  %i.lk = icmp eq i64 %i.lj, %spec.select.i75.pn
  %or.cond266 = select i1 %or.cond264, i1 %i.lk, i1 false
  %i.ll = and i64 %i.ko, 72057594037927934
  %.sroa.0103.0 = select i1 %or.cond266, i64 %i.ll, i64 %i.ko ; 2 uses
  %i.lm = and i64 %.sroa.0103.0, 1
  %i.ln = add nuw nsw i64 %i.lm, %.sroa.0103.0    ; 2 uses
  %i.lo = lshr i64 %i.ln, 1
  %.not27.i = icmp samesign ugt i64 %i.ln, 18014398509481983 ; 2 uses
  %i.lp = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.kt, %i.lp      ; 2 uses
  %i.lq = and i64 %i.lo, 9218868437227405311
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 2046 ; 2 uses
  %.not281 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select270 = select i1 %.not281, i64 0, i64 %i.lq
  %spec.select271 = select i1 %.not28.i, i32 2047, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bl, %bb.bj, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78, %bb.bi, %bb.bh, %bb.bk
  %.sroa.0103.2 = phi i64 [ 0, %bb.bi ], [ 0, %bb.bh ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.lb, %bb.bk ], [ %spec.select270, %bb.bl ], [ 0, %bb.bj ]
  %.sroa.19.1 = phi i32 [ 2047, %bb.bi ], [ 0, %bb.bh ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi55EEENS_8value128Elm.exit78 ], [ %i.ld, %bb.bk ], [ %spec.select271, %bb.bl ], [ 0, %bb.bj ]
  %.not.i87 = icmp ne i64 %.sroa.0111.2469, %.sroa.0103.2
  %i.lr = icmp ne i32 %.sroa.19117.1471, %.sroa.19.1
  %i.ls = icmp slt i32 %.sroa.19117.1471, 0
  %i.lt = or i1 %i.ls, %i.lr
  %or.cond267 = select i1 %.not.i87, i1 true, i1 %i.lt
  br i1 %or.cond267, label %.thread246, label %bb.bn

.thread246:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit
  %i.lu = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIdEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bm unwind label %bb.bp     ; 2 uses

bb.bm:                                            ; preds = %.thread246
  %.fca.0.extract = extractvalue { i64, i32 } %i.lu, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.lu, 1
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66, %.split486, %.split487, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit, %bb.bm
  %.sroa.690.1 = phi i32 [ %.fca.1.extract, %bb.bm ], [ %.sroa.19117.1471, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19117.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.iv, %.split486 ], [ %spec.select269, %.split487 ]
  %.sroa.088.0 = phi i64 [ %.fca.0.extract, %bb.bm ], [ %.sroa.0111.2469, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIdEEEENS_17adjusted_mantissaElm.exit66 ], [ %i.it, %.split486 ], [ %spec.select268, %.split487 ]
  %i.lv = zext i32 %.sroa.690.1 to i64
  %i.lw = shl i64 %i.lv, 52
  %i.lx = or i64 %i.lw, %.sroa.088.0              ; 2 uses
  %i.ly = or i64 %i.lx, -9223372036854775808
  %spec.select = select i1 %i.d, i64 %i.ly, i64 %i.lx
  store i64 %spec.select, ptr %2, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.bn, %bb.bd, %bb.bc, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.bn ], [ %i.gp, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bd ], [ %.15.i, %bb.bc ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.bn ], [ %i.gq, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bp:                                            ; preds = %.thread246
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  tail call void @__clang_call_terminate(ptr %i.ma) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIdEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !144
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !144 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !144   ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, double -qnan, double +qnan
  store double %i.aa, ptr %2, align 8, !tbaa !831
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !144
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !144 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %i.an = load i8, ptr %.059.be, align 1, !tbaa !144 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN17duckdb_fast_float10from_charsIfEENS_17from_chars_resultEPKcS3_RT_bcNS_12chars_formatE:bb.a
  %i.em = icmp sgt i64 %.1190.i, 19
  br i1 %i.em, label %.preheader281, label %bb.ay

.preheader281:                                    ; preds = %bb.al, %.critedge8.i
  %.0176.i344 = phi ptr [ %i.er, %.critedge8.i ], [ %.0211.i, %bb.al ] ; 2 uses
  %.2191.i343 = phi i64 [ %spec.select275.i, %.critedge8.i ], [ %.1190.i, %bb.al ] ; 2 uses
  %i.en = load i8, ptr %.0176.i344, align 1, !tbaa !144, !noalias !1551 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 48                    ; 2 uses
  %i.ep = icmp eq i8 %i.en, %4
  %or.cond274.i = or i1 %i.eo, %i.ep
  br i1 %or.cond274.i, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %.preheader281
  %i.eq = sext i1 %i.eo to i64
  %spec.select275.i = add nsw i64 %.2191.i343, %i.eq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0176.i344, i64 1 ; 2 uses
  %.not264.i = icmp eq ptr %i.er, %1
  br i1 %.not264.i, label %.critedge.i, label %.preheader281, !llvm.loop !63

.critedge.i:                                      ; preds = %.preheader281, %.critedge8.i
  %.2191.i.lcssa = phi i64 [ %.2191.i343, %.preheader281 ], [ %spec.select275.i, %.critedge8.i ]
  %i.es = icmp sgt i64 %.2191.i.lcssa, 19
  br i1 %i.es, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %.critedge.i, %bb.ar
  %.5205.i346 = phi i64 [ %i.ez, %bb.ar ], [ 0, %.critedge.i ] ; 2 uses
  %.16.i345 = phi ptr [ %.17.i, %bb.ar ], [ %.0211.i, %.critedge.i ] ; 4 uses
  %i.et = load i8, ptr %.16.i345, align 1, !tbaa !144, !noalias !1551 ; 2 uses
  %i.eu = add i8 %i.et, -48
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.am, label %.thread140

bb.am:                                            ; preds = %.preheader
  %i.ew = mul nuw i64 %.5205.i346, 10
  %i.ex = zext nneg i8 %i.et to i64
  %i.ey = add i64 %i.ew, -48
  %i.ez = add i64 %i.ey, %i.ex                    ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.16.i345, i64 1 ; 4 uses
  %.not266.i = icmp eq ptr %i.fa, %1
  br i1 %.not266.i, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !144, !noalias !1551
  %i.fc = icmp eq i8 %i.fb, 95
  br i1 %i.fc, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  br i1 %3, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %.16.i345, i64 2 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, %1
  br i1 %i.fe, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load i8, ptr %i.fd, align 1, !tbaa !144, !noalias !1551
  %i.fg = add i8 %i.ff, -48
  %i.fh = icmp ult i8 %i.fg, 10
  br i1 %i.fh, label %bb.ar, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ar:                                            ; preds = %bb.aq, %bb.an, %bb.am
  %.17.i = phi ptr [ %i.fd, %bb.aq ], [ %i.fa, %bb.an ], [ %i.fa, %bb.am ] ; 4 uses
  %i.fi = icmp ult i64 %i.ez, 1000000000000000000
  %i.fj = icmp ne ptr %.17.i, %1
  %i.fk = and i1 %i.fj, %i.fi
  br i1 %i.fk, label %.preheader, label %bb.as, !llvm.loop !64

bb.as:                                            ; preds = %bb.ar
  %i.fl = icmp ugt i64 %i.ez, 999999999999999999
  br i1 %i.fl, label %.thread448.thread, label %.thread140

.thread448.thread:                                ; preds = %bb.as
  %i.fm = ptrtoint ptr %.17.i to i64
  %i.fn = add i64 %.5.i, %i.df
  %i.fo = sub i64 %i.fn, %i.fm
  br label %bb.be

.thread140:                                       ; preds = %.preheader, %bb.as
  %.16.i294 = phi ptr [ %.17.i, %bb.as ], [ %.16.i345, %.preheader ]
  %.5205.i291 = phi i64 [ %i.ez, %bb.as ], [ %.5205.i346, %.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.16.i294, i64 1 ; 4 uses
  %.not531 = icmp eq ptr %i.fp, %1
  br i1 %.not531, label %._crit_edge351, label %.lr.ph350

.lr.ph350:                                        ; preds = %.thread140, %bb.ax
  %.0.i349 = phi i64 [ %.1.i, %bb.ax ], [ 0, %.thread140 ] ; 4 uses
  %.6206.i348 = phi i64 [ %i.fw, %bb.ax ], [ %.5205.i291, %.thread140 ] ; 2 uses
  %.18.i347 = phi ptr [ %.19.i, %bb.ax ], [ %i.fp, %.thread140 ] ; 4 uses
  %i.fq = load i8, ptr %.18.i347, align 1, !tbaa !144, !noalias !1551 ; 2 uses
  %i.fr = add i8 %i.fq, -48
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.at, label %._crit_edge351

bb.at:                                            ; preds = %.lr.ph350
  %i.ft = mul nuw i64 %.6206.i348, 10
  %i.fu = zext nneg i8 %i.fq to i64
  %i.fv = add i64 %i.ft, -48
  %i.fw = add i64 %i.fv, %i.fu                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.18.i347, i64 1 ; 4 uses
  %.not265.i = icmp eq ptr %i.fx, %1
  br i1 %.not265.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !144, !noalias !1551
  %i.fz = icmp eq i8 %i.fy, 95
  br i1 %i.fz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ga = getelementptr inbounds nuw i8, ptr %.18.i347, i64 2 ; 3 uses
  %i.gb = icmp eq ptr %i.ga, %1
  br i1 %i.gb, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add nsw i64 %.0.i349, 1
  %i.gd = load i8, ptr %i.ga, align 1, !tbaa !144, !noalias !1551
  %i.ge = add i8 %i.gd, -48
  %i.gf = icmp ult i8 %i.ge, 10
  br i1 %i.gf, label %bb.ax, label %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread

bb.ax:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.19.i = phi ptr [ %i.ga, %bb.aw ], [ %i.fx, %bb.au ], [ %i.fx, %bb.at ] ; 3 uses
  %.1.i = phi i64 [ %i.gc, %bb.aw ], [ %.0.i349, %bb.au ], [ %.0.i349, %bb.at ] ; 2 uses
  %i.gg = icmp ult i64 %i.fw, 1000000000000000000
  %i.gh = icmp ne ptr %.19.i, %1
  %i.gi = and i1 %i.gg, %i.gh
  br i1 %i.gi, label %.lr.ph350, label %._crit_edge351, !llvm.loop !65

._crit_edge351:                                   ; preds = %bb.ax, %.lr.ph350, %.thread140
  %.18.i.lcssa = phi ptr [ %i.fp, %.thread140 ], [ %.18.i347, %.lr.ph350 ], [ %.19.i, %bb.ax ]
  %.6206.i.lcssa = phi i64 [ %.5205.i291, %.thread140 ], [ %.6206.i348, %.lr.ph350 ], [ %i.fw, %bb.ax ]
  %.0.i.lcssa = phi i64 [ 0, %.thread140 ], [ %.0.i349, %.lr.ph350 ], [ %.1.i, %bb.ax ]
  %i.gj = ptrtoint ptr %i.fp to i64
  %i.gk = ptrtoint ptr %.18.i.lcssa to i64
  %i.gl = add i64 %.5.i, %i.gj
  %i.gm = sub i64 %i.gl, %i.gk
  %i.gn = add nsw i64 %i.gm, %.0.i.lcssa
  br label %.thread448

_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread: ; preds = %bb.j, %bb.k, %bb.g, %.split, %bb.w, %bb.t, %.split126, %bb.ai, %bb.ah, %bb.aq, %bb.ap, %bb.ao, %bb.av, %bb.aw, %bb.d, %bb.aj, %bb.ak, %bb.x, %bb.c
  %i.go = tail call { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIfEENS_17from_chars_resultEPKcS4_RT_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #33 ; 2 uses
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  %i.gq = extractvalue { ptr, i32 } %i.go, 1
  br label %bb.bs

bb.ay:                                            ; preds = %bb.al, %.critedge.i
  %i.gr = add i64 %.4187.i, -11
  %or.cond244 = icmp ult i64 %i.gr, -21
  %i.gs = icmp ugt i64 %.4204.i, 16777216
  %or.cond246 = select i1 %or.cond244, i1 true, i1 %i.gs
  br i1 %or.cond246, label %.thread448, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gt = uitofp nneg i64 %.4204.i to float       ; 2 uses
  %i.gu = icmp slt i64 %.4187.i, 0
  br i1 %i.gu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = sub nsw i64 0, %.4187.i
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr @_ZN17duckdb_fast_floatL19powers_of_ten_floatE, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !837
  %i.gy = fdiv float %i.gt, %i.gx
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr @_ZN17duckdb_fast_floatL19powers_of_ten_floatE, i64 %.4187.i
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !837
  %i.hb = fmul float %i.ha, %i.gt
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %storemerge = phi float [ %i.hb, %bb.bb ], [ %i.gy, %bb.ba ] ; 2 uses
  store float %storemerge, ptr %2, align 4, !tbaa !837
  br i1 %i.d, label %bb.bd, label %bb.bs

bb.bd:                                            ; preds = %bb.bc
  %i.hc = fneg float %storemerge
  store float %i.hc, ptr %2, align 4, !tbaa !837
  br label %bb.bs

.thread448:                                       ; preds = %._crit_edge351, %bb.ay
  %.sroa.086.0.ph457 = phi i64 [ %.4187.i, %bb.ay ], [ %i.gn, %._crit_edge351 ] ; 2 uses
  %.sroa.7.0.ph456 = phi i64 [ %.4204.i, %bb.ay ], [ %.6206.i.lcssa, %._crit_edge351 ] ; 2 uses
  %.sroa.26.2.ph455 = phi i1 [ false, %bb.ay ], [ true, %._crit_edge351 ] ; 2 uses
  %i.hd = icmp eq i64 %.sroa.7.0.ph456, 0
  br i1 %i.hd, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, label %bb.be

bb.be:                                            ; preds = %.thread448.thread, %.thread448
  %.sroa.26.2.ph455477 = phi i1 [ true, %.thread448.thread ], [ %.sroa.26.2.ph455, %.thread448 ] ; 6 uses
  %.sroa.7.0.ph456476 = phi i64 [ %i.ez, %.thread448.thread ], [ %.sroa.7.0.ph456, %.thread448 ] ; 8 uses
  %.sroa.086.0.ph457473 = phi i64 [ %i.fo, %.thread448.thread ], [ %.sroa.086.0.ph457, %.thread448 ] ; 11 uses
  %i.he = icmp slt i64 %.sroa.086.0.ph457473, -65
  br i1 %i.he, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = icmp sgt i64 %.sroa.086.0.ph457473, 38
  br i1 %i.hf, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.7.0.ph456476, i1 true) ; 2 uses
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = shl i64 %.sroa.7.0.ph456476, %i.hg      ; 2 uses
  %i.hj = trunc nsw i64 %.sroa.086.0.ph457473 to i32 ; 2 uses
  %i.hk = shl nsw i32 %i.hj, 1
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 5472
  %i.ho = load i64, ptr %i.hn, align 16, !tbaa !137
  %i.hp = zext i64 %i.hi to i128
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = trunc i128 %i.hr to i64                 ; 2 uses
  %i.ht = lshr i128 %i.hr, 64
  %i.hu = trunc nuw i128 %i.ht to i64             ; 3 uses
  %i.hv = and i64 %i.hu, 274877906943
  %i.hw = icmp eq i64 %i.hv, 274877906943
  br i1 %i.hw, label %bb.bh, label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hx = getelementptr i8, ptr %i.hm, i64 5480
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !137
  %6 = tail call i64 @llvm.umulh.i64(i64 %i.hi, i64 %i.hy) ; 2 uses
  %i.hz = add i64 %6, %i.hs                       ; 2 uses
  %7 = icmp ugt i64 %6, %i.hz
  %i.ia = zext i1 %7 to i64
  %spec.select.i72 = add nuw i64 %i.ia, %i.hu
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit

_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit: ; preds = %bb.bh, %bb.bg
  %.pn266 = phi i64 [ %i.hz, %bb.bh ], [ %i.hs, %bb.bg ] ; 2 uses
  %spec.select.i72.pn = phi i64 [ %spec.select.i72, %bb.bh ], [ %i.hu, %bb.bg ] ; 3 uses
  %i.ib = icmp ne i64 %.pn266, -1
  %i.ic = add nsw i64 %.sroa.086.0.ph457473, 27
  %i.id = icmp ult i64 %i.ic, 83
  %or.cond.i59 = or i1 %i.id, %i.ib
  br i1 %or.cond.i59, label %.critedge.i65, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread

.critedge.i65:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  %i.ie = lshr i64 %spec.select.i72.pn, 63        ; 2 uses
  %i.if = trunc nuw nsw i64 %i.ie to i32
  %i.ig = or disjoint i64 %i.ie, 38               ; 2 uses
  %i.ih = lshr i64 %spec.select.i72.pn, %i.ig     ; 5 uses
  %i.ii = mul nsw i32 %i.hj, 217706
  %i.ij = ashr i32 %i.ii, 16
  %reass.sub = sub nsw i32 %i.ij, %i.hh
  %i.ik = add nsw i32 %reass.sub, 190
  %i.il = add nsw i32 %i.ik, %i.if                ; 3 uses
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %bb.bi, label %.split480

bb.bi:                                            ; preds = %.critedge.i65
  %i.in = sub nsw i32 1, %i.il                    ; 2 uses
  %i.io = icmp samesign ugt i32 %i.in, 63
  br i1 %i.io, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, label %.split479

.split479:                                        ; preds = %bb.bi
  %i.ip = zext nneg i32 %i.in to i64
  %i.iq = lshr i64 %i.ih, %i.ip                   ; 2 uses
  %i.ir = and i64 %i.iq, 1
  %i.is = add nuw nsw i64 %i.ir, %i.iq            ; 2 uses
  %i.it = lshr i64 %i.is, 1                       ; 2 uses
  %i.iu = icmp samesign ugt i64 %i.is, 16777215
  %i.iv = zext i1 %i.iu to i32                    ; 2 uses
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %bb.br

.split480:                                        ; preds = %.critedge.i65
  %i.iw = icmp ult i64 %.pn266, 2
  %i.ix = add nsw i64 %.sroa.086.0.ph457473, 17
  %i.iy = icmp ult i64 %i.ix, 28
  %or.cond248.not268 = and i1 %i.iy, %i.iw
  %i.iz = and i64 %i.ih, 3
  %i.ja = icmp eq i64 %i.iz, 1
  %or.cond250 = select i1 %or.cond248.not268, i1 %i.ja, i1 false
  %i.jb = shl i64 %i.ih, %i.ig
  %i.jc = icmp eq i64 %i.jb, %spec.select.i72.pn
  %or.cond252 = select i1 %or.cond250, i1 %i.jc, i1 false
  %i.jd = and i64 %i.ih, 67108862
  %.sroa.0104.0 = select i1 %or.cond252, i64 %i.jd, i64 %i.ih ; 2 uses
  %i.je = and i64 %.sroa.0104.0, 1
  %i.jf = add nuw nsw i64 %i.je, %.sroa.0104.0    ; 2 uses
  %i.jg = lshr i64 %i.jf, 1
  %.not27.i66 = icmp samesign ugt i64 %i.jf, 33554431 ; 2 uses
  %i.jh = zext i1 %.not27.i66 to i32
  %.sroa.19110.0 = add nuw nsw i32 %i.il, %i.jh   ; 2 uses
  %i.ji = and i64 %i.jg, 58720255
  %.not28.i67 = icmp samesign ugt i32 %.sroa.19110.0, 254 ; 2 uses
  %.not = select i1 %.not28.i67, i1 true, i1 %.not27.i66
  %spec.select261 = select i1 %.not, i64 0, i64 %i.ji ; 2 uses
  %spec.select262 = select i1 %.not28.i67, i32 255, i32 %.sroa.19110.0 ; 2 uses
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %bb.br

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71: ; preds = %bb.bi, %bb.bf, %.thread448, %bb.be
  %.sroa.26.2.ph455478 = phi i1 [ %.sroa.26.2.ph455477, %bb.bf ], [ %.sroa.26.2.ph455, %.thread448 ], [ %.sroa.26.2.ph455477, %bb.be ], [ %.sroa.26.2.ph455477, %bb.bi ]
  %.sroa.086.0.ph457475 = phi i64 [ %.sroa.086.0.ph457473, %bb.bf ], [ %.sroa.086.0.ph457, %.thread448 ], [ %.sroa.086.0.ph457473, %bb.be ], [ %.sroa.086.0.ph457473, %bb.bi ]
  %.sroa.7.0153 = phi i64 [ %.sroa.7.0.ph456476, %bb.bf ], [ 0, %.thread448 ], [ %.sroa.7.0.ph456476, %bb.be ], [ %.sroa.7.0.ph456476, %bb.bi ]
  %.sroa.19110.1 = phi i32 [ 255, %bb.bf ], [ 0, %.thread448 ], [ 0, %bb.be ], [ 0, %bb.bi ] ; 2 uses
  br i1 %.sroa.26.2.ph455478, label %bb.bj, label %bb.br

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread: ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit
  br i1 %.sroa.26.2.ph455477, label %bb.bj, label %.thread239

bb.bj:                                            ; preds = %.split480, %.split479, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71
  %.sroa.086.0.ph457474 = phi i64 [ %.sroa.086.0.ph457473, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.086.0.ph457475, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %.sroa.086.0.ph457473, %.split479 ], [ %.sroa.086.0.ph457473, %.split480 ] ; 5 uses
  %.sroa.19110.1464 = phi i32 [ -1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.19110.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.iv, %.split479 ], [ %spec.select262, %.split480 ] ; 3 uses
  %.sroa.0104.2462 = phi i64 [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.it, %.split479 ], [ %spec.select261, %.split480 ] ; 2 uses
  %.sroa.7.0153461 = phi i64 [ %.sroa.7.0.ph456476, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread ], [ %.sroa.7.0153, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %.sroa.7.0.ph456476, %.split479 ], [ %.sroa.7.0.ph456476, %.split480 ]
  %i.jj = add i64 %.sroa.7.0153461, 1             ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = icmp slt i64 %.sroa.086.0.ph457474, -65
  %or.cond253 = or i1 %i.jl, %i.jk
  br i1 %or.cond253, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jm = icmp sgt i64 %.sroa.086.0.ph457474, 38
  br i1 %i.jm, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jj, i1 true) ; 2 uses
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = shl i64 %i.jj, %i.jn                    ; 2 uses
  %i.jq = trunc nsw i64 %.sroa.086.0.ph457474 to i32 ; 2 uses
  %i.jr = shl nsw i32 %i.jq, 1
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr [8 x i8], ptr @_ZN17duckdb_fast_float15powers_templateIvE17power_of_five_128E, i64 %i.js ; 2 uses
  %i.ju = getelementptr i8, ptr %i.jt, i64 5472
  %i.jv = load i64, ptr %i.ju, align 16, !tbaa !137
  %i.jw = zext i64 %i.jp to i128
  %i.jx = zext i64 %i.jv to i128
  %i.jy = mul nuw i128 %i.jx, %i.jw               ; 2 uses
  %i.jz = trunc i128 %i.jy to i64                 ; 2 uses
  %i.ka = lshr i128 %i.jy, 64
  %i.kb = trunc nuw i128 %i.ka to i64             ; 3 uses
  %i.kc = and i64 %i.kb, 274877906943
  %i.kd = icmp eq i64 %i.kc, 274877906943
  br i1 %i.kd, label %bb.bm, label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79

bb.bm:                                            ; preds = %bb.bl
  %i.ke = getelementptr i8, ptr %i.jt, i64 5480
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !137
  %8 = tail call i64 @llvm.umulh.i64(i64 %i.jp, i64 %i.kf) ; 2 uses
  %i.kg = add i64 %8, %i.jz                       ; 2 uses
  %9 = icmp ugt i64 %8, %i.kg
  %i.kh = zext i1 %9 to i64
  %spec.select.i78 = add nuw i64 %i.kh, %i.kb
  br label %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79

_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79: ; preds = %bb.bm, %bb.bl
  %.pn270 = phi i64 [ %i.kg, %bb.bm ], [ %i.jz, %bb.bl ] ; 2 uses
  %spec.select.i78.pn = phi i64 [ %spec.select.i78, %bb.bm ], [ %i.kb, %bb.bl ] ; 3 uses
  %i.ki = icmp ne i64 %.pn270, -1
  %i.kj = add nsw i64 %.sroa.086.0.ph457474, 27
  %i.kk = icmp ult i64 %i.kj, 83
  %or.cond.i56 = or i1 %i.kk, %i.ki
  br i1 %or.cond.i56, label %.critedge.i57, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

.critedge.i57:                                    ; preds = %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79
  %i.kl = lshr i64 %spec.select.i78.pn, 63        ; 2 uses
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %i.kn = or disjoint i64 %i.kl, 38               ; 2 uses
  %i.ko = lshr i64 %spec.select.i78.pn, %i.kn     ; 5 uses
  %i.kp = mul nsw i32 %i.jq, 217706
  %i.kq = ashr i32 %i.kp, 16
  %i.kr = add nsw i32 %i.kq, 190
  %i.ks = sub nsw i32 %i.kr, %i.jo
  %i.kt = add nsw i32 %i.ks, %i.km                ; 3 uses
  %i.ku = icmp slt i32 %i.kt, 1
  br i1 %i.ku, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.critedge.i57
  %i.kv = sub nsw i32 1, %i.kt                    ; 2 uses
  %i.kw = icmp samesign ugt i32 %i.kv, 63
  br i1 %i.kw, label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kx = zext nneg i32 %i.kv to i64
  %i.ky = lshr i64 %i.ko, %i.kx                   ; 2 uses
  %i.kz = and i64 %i.ky, 1
  %i.la = add nuw nsw i64 %i.kz, %i.ky            ; 2 uses
  %i.lb = lshr i64 %i.la, 1
  %i.lc = icmp samesign ugt i64 %i.la, 16777215
  %i.ld = zext i1 %i.lc to i32
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

bb.bp:                                            ; preds = %.critedge.i57
  %i.le = icmp ult i64 %.pn270, 2
  %i.lf = add nsw i64 %.sroa.086.0.ph457474, 17
  %i.lg = icmp ult i64 %i.lf, 28
  %or.cond255.not273 = and i1 %i.lg, %i.le
  %i.lh = and i64 %i.ko, 3
  %i.li = icmp eq i64 %i.lh, 1
  %or.cond257 = select i1 %or.cond255.not273, i1 %i.li, i1 false
  %i.lj = shl i64 %i.ko, %i.kn
  %i.lk = icmp eq i64 %i.lj, %spec.select.i78.pn
  %or.cond259 = select i1 %or.cond257, i1 %i.lk, i1 false
  %i.ll = and i64 %i.ko, 67108862
  %.sroa.096.0 = select i1 %or.cond259, i64 %i.ll, i64 %i.ko ; 2 uses
  %i.lm = and i64 %.sroa.096.0, 1
  %i.ln = add nuw nsw i64 %i.lm, %.sroa.096.0     ; 2 uses
  %i.lo = lshr i64 %i.ln, 1
  %.not27.i = icmp samesign ugt i64 %i.ln, 33554431 ; 2 uses
  %i.lp = zext i1 %.not27.i to i32
  %.sroa.19.0 = add nuw nsw i32 %i.kt, %i.lp      ; 2 uses
  %i.lq = and i64 %i.lo, 58720255
  %.not28.i = icmp samesign ugt i32 %.sroa.19.0, 254 ; 2 uses
  %.not274 = select i1 %.not28.i, i1 true, i1 %.not27.i
  %spec.select263 = select i1 %.not274, i64 0, i64 %i.lq
  %spec.select264 = select i1 %.not28.i, i32 255, i32 %.sroa.19.0
  br label %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit

_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit: ; preds = %bb.bp, %bb.bn, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79, %bb.bk, %bb.bj, %bb.bo
  %.sroa.096.2 = phi i64 [ 0, %bb.bk ], [ 0, %bb.bj ], [ 0, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79 ], [ %i.lb, %bb.bo ], [ %spec.select263, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.19.1 = phi i32 [ 255, %bb.bk ], [ 0, %bb.bj ], [ -1, %_ZN17duckdb_fast_float29compute_product_approximationILi26EEENS_8value128Elm.exit79 ], [ %i.ld, %bb.bo ], [ %spec.select264, %bb.bp ], [ 0, %bb.bn ]
  %.not.i80 = icmp ne i64 %.sroa.0104.2462, %.sroa.096.2
  %i.lr = icmp ne i32 %.sroa.19110.1464, %.sroa.19.1
  %i.ls = icmp slt i32 %.sroa.19110.1464, 0
  %i.lt = or i1 %i.ls, %i.lr
  %or.cond260 = select i1 %.not.i80, i1 true, i1 %i.lt
  br i1 %or.cond260, label %.thread239, label %bb.br

.thread239:                                       ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71.thread, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit
  %i.lu = invoke { i64, i32 } @_ZN17duckdb_fast_float19parse_long_mantissaINS_13binary_formatIfEEEENS_17adjusted_mantissaEPKcS5_(ptr noundef nonnull %0, ptr noundef %1)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %.thread239
  %.fca.0.extract = extractvalue { i64, i32 } %i.lu, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.lu, 1
  br label %bb.br

bb.br:                                            ; preds = %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71, %.split479, %.split480, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit, %bb.bq
  %.sroa.683.1 = phi i32 [ %.fca.1.extract, %bb.bq ], [ %.sroa.19110.1464, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit ], [ %.sroa.19110.1, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.iv, %.split479 ], [ %spec.select262, %.split480 ]
  %.sroa.081.0 = phi i64 [ %.fca.0.extract, %bb.bq ], [ %.sroa.0104.2462, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit ], [ 0, %_ZN17duckdb_fast_float13compute_floatINS_13binary_formatIfEEEENS_17adjusted_mantissaElm.exit71 ], [ %i.it, %.split479 ], [ %spec.select261, %.split480 ]
  %i.lv = sext i32 %.sroa.683.1 to i64
  %i.lw = shl nsw i64 %i.lv, 23
  %i.lx = or i64 %i.lw, %.sroa.081.0              ; 2 uses
  %i.ly = or i64 %i.lx, 2147483648
  %spec.select = select i1 %i.d, i64 %i.ly, i64 %i.lx
  %.0.extract.trunc.i = trunc i64 %spec.select to i32
  store i32 %.0.extract.trunc.i, ptr %2, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread, %bb.br, %bb.bd, %bb.bc, %bb.a
  %.sroa.044.1 = phi ptr [ %0, %bb.a ], [ %.15.i, %bb.br ], [ %i.gp, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ %.15.i, %bb.bd ], [ %.15.i, %bb.bc ]
  %.sroa.545.1 = phi i32 [ 22, %bb.a ], [ 0, %bb.br ], [ %i.gq, %_ZN17duckdb_fast_float19parse_number_stringEPKcS1_cNS_12chars_formatEb.exit.thread ], [ 0, %bb.bd ], [ 0, %bb.bc ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.044.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.545.1, 1
  ret { ptr, i32 } %.fca.1.insert

bb.bt:                                            ; preds = %.thread239
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  tail call void @__clang_call_terminate(ptr %i.ma) #37
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i32 } @_ZN17duckdb_fast_float6detail12parse_infnanIfEENS_17from_chars_resultEPKcS4_RT_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !144
  %i.b = icmp eq i8 %i.a, 45                      ; 3 uses
  %spec.select.idx = zext i1 %i.b to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %spec.select to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp sgt i64 %i.e, 2
  br i1 %i.f, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = load i8, ptr %spec.select, align 1, !tbaa !144 ; 2 uses
  %i.h = xor i8 %i.g, 78
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !144   ; 2 uses
  %i.k = xor i8 %i.j, 65
  %i.l = or i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !144   ; 2 uses
  %i.o = xor i8 %i.n, 78
  %i.p = or i8 %i.o, %i.l
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.b, label %.lr.ph.i43.preheader

.lr.ph.i43.preheader:                             ; preds = %.lr.ph.i.preheader
  %i.s = xor i8 %i.g, 73
  %i.t = xor i8 %i.j, 78
  %i.u = or i8 %i.t, %i.s
  %i.v = xor i8 %i.n, 70
  %i.w = or i8 %i.v, %i.u
  %i.x = and i8 %i.w, -33
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %bb.f, label %.loopexit

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select, i64 3 ; 6 uses
  %i.aa = select i1 %i.b, float -qnan, float +qnan
  store float %i.aa, ptr %2, align 4, !tbaa !837
  %.not = icmp eq ptr %i.z, %1
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !144
  %i.ac = icmp ne i8 %i.ab, 40
  %i.ad = getelementptr inbounds nuw i8, ptr %spec.select, i64 4 ; 4 uses
  %.not4058 = icmp eq ptr %i.ad, %1
  %or.cond61 = select i1 %i.ac, i1 true, i1 %.not4058
  br i1 %or.cond61, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !144 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 41
  br i1 %i.af, label %.lr.ph._crit_edge, label %.lr.ph76

.lr.ph._crit_edge:                                ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.059.lcssa = phi ptr [ %i.ad, %.lr.ph.preheader ], [ %.059.be, %.lr.ph.backedge ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.059.lcssa, i64 1
  br label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph.preheader, %.lr.ph.backedge
  %i.ah = phi i8 [ %i.an, %.lr.ph.backedge ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %.05975 = phi ptr [ %.059.be, %.lr.ph.backedge ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.ai = and i8 %i.ah, -33
  %i.aj = add i8 %i.ai, -65
  %or.cond54 = icmp ult i8 %i.aj, 26
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph76
  %i.ak = add i8 %i.ah, -58
  %or.cond42 = icmp ult i8 %i.ak, -10
  %i.al = icmp ne i8 %i.ah, 95
  %or.cond53.not64 = and i1 %i.al, %or.cond42
  %i.am = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40 = icmp eq ptr %i.am, %1
  %or.cond62 = select i1 %or.cond53.not64, i1 true, i1 %.not40
  br i1 %or.cond62, label %.loopexit, label %.lr.ph.backedge

bb.e:                                             ; preds = %.lr.ph76
  %.old = getelementptr inbounds nuw i8, ptr %.05975, i64 1 ; 2 uses
  %.not40.old = icmp eq ptr %.old, %1
  br i1 %.not40.old, label %.loopexit, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.d
  %.059.be = phi ptr [ %.old, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZSt10_ConstructIN6duckdb11CSVFileScanEJRNS0_13ClientContextERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_16CSVReaderOptionsERKNS0_16MultiFileOptionsEEEvPT_DpOT0_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZN6duckdb12OpenFileInfoD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ar) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb12OpenFileInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

bb.m:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #33
  %i.au = load ptr, ptr %6, align 8, !tbaa !157   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.b
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.au) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %i.at
}

declare void @_ZN6duckdb11CSVFileScanC1ERNS_13ClientContextERKNS_12OpenFileInfoERKNS_16CSVReaderOptionsERKNS_16MultiFileOptionsE(ptr noundef nonnull align 8 dereferenceable(1680), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(1033), ptr noundef nonnull align 8 dereferenceable(152)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10shared_ptrINS_11CSVFileScanELb1EE18__enable_weak_thisINS_14BaseFileReaderES1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSC_S7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1706 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit.thread, label %_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit

_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c monotonic, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit.thread, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit

_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit.thread: ; preds = %bb.b, %_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 11 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2INS_11CSVFileScanEEERKNS0_IT_Lb1EEEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit.thread
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !89
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !89
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2INS_11CSVFileScanEEERKNS0_IT_Lb1EEEPS1_.exit: ; preds = %_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit.thread
  store ptr %2, ptr %1, align 8, !tbaa !1707
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d, %bb.e
  store ptr %2, ptr %1, align 8, !tbaa !1707
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i7 = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.m, align 4, !tbaa !89
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !89
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EEC2INS_11CSVFileScanEEERKNS0_IT_Lb1EEEPS1_.exit, %bb.h, %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !1706 ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not6.i.i.i.i, label %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i7.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i7.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load i32, ptr %i.s, align 4, !tbaa !89   ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %bb.j ], [ %i.w, %bb.k ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.x, label %bb.l, label %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #33, !inline_history !1704
  br label %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit

_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.l
  store ptr %i.g, ptr %i.a, align 8, !tbaa !1706
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ab, align 8, !tbaa !142
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !143
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #33, !inline_history !1705
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #33, !inline_history !1705
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i9 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !89
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.p ], [ %i.ao, %bb.q ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.r, label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit, !prof !145

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #33
  br label %_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_14BaseFileReaderELb1EED2Ev.exit: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEaSIS1_TnNSt9enable_ifIXsr17compatible_with_tIT_S1_EE5valueEiE4typeELi0EEERS2_RKNS_10shared_ptrIS5_Lb1EEE.exit, %_ZNK6duckdb8weak_ptrINS_14BaseFileReaderELb1EE7expiredEv.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #14

declare void @_ZN6duckdb15CSVStateMachineC1ERKNS_12StateMachineERKNS_16CSVReaderOptionsE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(5680), ptr noundef nonnull align 8 dereferenceable(1033)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.mul.v8i16(<8 x i16>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.mul.v4i16(<4 x i16>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.or.v4i8(<4 x i8>) #30

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noreturn }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind memory(none) }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress nofree nounwind willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #33 = { nounwind }
attributes #34 = { noreturn }
attributes #35 = { builtin nounwind }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!83, !84}
!llvm.ident = !{!85}
!llvm.errno.tbaa = !{!89}

!0 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev, null, null, null}
!1 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev, null, null, null}
!2 = distinct !{null, null, null}
!3 = distinct !{!3, !160}
!4 = distinct !{null, null, null, null}
!5 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EED2Ev, null, null, null}
!6 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EED2Ev, null, null, null}
!7 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_11CSVFileScanELb1EED2Ev, null, null, null}
!8 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EED2Ev, null, null, null}
!9 = distinct !{!9, !160}
!10 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev, null, null, null}
!11 = distinct !{!11, !160}
!12 = distinct !{!12, !160}
!13 = distinct !{!13, !160}
!14 = distinct !{!14, !160}
!15 = distinct !{!15, !160}
!16 = distinct !{!16, !160}
!17 = distinct !{!17, !160}
!18 = distinct !{!18, !160}
!19 = distinct !{!19, !160}
!20 = distinct !{!20, !160}
!21 = distinct !{!21, !160}
!22 = distinct !{!22, !160}
!23 = distinct !{!23, !160}
!24 = distinct !{null, null}
!25 = distinct !{!25, !160}
!26 = distinct !{!26, !160}
!27 = distinct !{!27, !160}
!28 = distinct !{!28, !160}
!29 = distinct !{!29, !160}
!30 = distinct !{!30, !160}
!31 = distinct !{null, null, null, ptr @_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev, null, null, null}
!32 = distinct !{!32, !160}
!33 = distinct !{!33, !160}
!34 = distinct !{!34, !160}
!35 = distinct !{!35, !160}
!36 = distinct !{!36, !160}
!37 = distinct !{!37, !160}
!38 = distinct !{!38, !160}
!39 = distinct !{!39, !160}
!40 = distinct !{!40, !160}
!41 = distinct !{!41, !160}
!42 = distinct !{!42, !160}
!43 = distinct !{!43, !160}
!44 = distinct !{!44, !160}
!45 = distinct !{!45, !160}
!46 = distinct !{!46, !160}
!47 = distinct !{!47, !160}
!48 = distinct !{!48, !160}
!49 = distinct !{!49, !160}
!50 = distinct !{!50, !160}
!51 = distinct !{!51, !160}
!52 = distinct !{!52, !160}
!53 = distinct !{!53, !160}
!54 = distinct !{!54, !160}
!55 = distinct !{!55, !160}
!56 = distinct !{!56, !160}
!57 = distinct !{!57, !160}
!58 = distinct !{!58, !160}
!59 = distinct !{!59, !160}
!60 = distinct !{!60, !160}
!61 = distinct !{!61, !160}
!62 = distinct !{!62, !160}
!63 = distinct !{!63, !160}
!64 = distinct !{!64, !160}
!65 = distinct !{!65, !160}
!66 = distinct !{!66, !160}
!67 = distinct !{!67, !160}
!68 = distinct !{!68, !160}
!69 = distinct !{!69, !160}
!70 = distinct !{!70, !160}
!71 = distinct !{!71, !160}
!72 = distinct !{!72, !160}
!73 = distinct !{!73, !160}
!74 = distinct !{!74, !160}
!75 = distinct !{!75, !160}
!76 = distinct !{!76, !160}
!77 = distinct !{!77, !160}
!78 = distinct !{!78, !160}
!79 = distinct !{!79, !160}
!80 = distinct !{ptr @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10shared_ptrINS2_15CSVBufferHandleELb1EEEESt10_Select1stIS6_ESt4lessImESaIS6_EE10_Auto_nodeD2Ev, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EED2Ev, null, null, null}
!81 = distinct !{!81, !160}
!82 = distinct !{ptr @_ZN6duckdb12OpenFileInfoD2Ev, null, null, null, null}
!83 = !{i32 8, !"PIC Level", i32 2}
!84 = !{i32 7, !"uwtable", i32 2}
!85 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!86 = !{!"Simple C++ TBAA"}
!87 = !{!"omnipotent char", !86, i64 0}
!88 = !{!"int", !87, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"bool", !87, i64 0}
!91 = !{!"long", !87, i64 0}
!92 = !{!"_ZTSN6duckdb12LinePositionE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"any pointer", !87, i64 0}
!94 = !{!"p1 _ZTSN6duckdb15CSVStateMachineE", !93, i64 0}
!95 = !{!"p1 _ZTSN6duckdb9CSVStatesE", !93, i64 0}
!96 = !{!"_ZTSN6duckdb13ScannerResultE", !90, i64 0, !90, i64 1, !90, i64 2, !90, i64 3, !91, i64 8, !92, i64 16, !91, i64 40, !94, i64 48, !90, i64 56, !95, i64 64}
!97 = !{!96, !91, i64 40}
!98 = !{!94, !94, i64 0}
!99 = !{!96, !90, i64 56}
!100 = !{!95, !95, i64 0}
!101 = !{!"vtable pointer", !86, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !93, i64 0}
!104 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !103, i64 0}
!105 = !{!104, !103, i64 0}
!106 = !{!93, !93, i64 0}
!107 = !{!"p1 _ZTSN6duckdb11CSVFileScanE", !93, i64 0}
!108 = !{!"_ZTSSt12__shared_ptrIN6duckdb11CSVFileScanELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !104, i64 8}
!109 = !{!108, !107, i64 0}
!110 = !{!"_ZTSSt10shared_ptrIN6duckdb11CSVFileScanEE", !108, i64 0}
!111 = !{!"_ZTSN6duckdb10shared_ptrINS_11CSVFileScanELb1EEE", !110, i64 0}
!112 = !{!"p1 _ZTSN6duckdb15CSVErrorHandlerE", !93, i64 0}
!113 = !{!"_ZTSSt12__shared_ptrIN6duckdb15CSVErrorHandlerELN9__gnu_cxx12_Lock_policyE2EE", !112, i64 0, !104, i64 8}
!114 = !{!"_ZTSSt10shared_ptrIN6duckdb15CSVErrorHandlerEE", !113, i64 0}
!115 = !{!"_ZTSN6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EEE", !114, i64 0}
!116 = !{!"_ZTSSt12__shared_ptrIN6duckdb15CSVStateMachineELN9__gnu_cxx12_Lock_policyE2EE", !94, i64 0, !104, i64 8}
!117 = !{!"_ZTSSt10shared_ptrIN6duckdb15CSVStateMachineEE", !116, i64 0}
!118 = !{!"_ZTSN6duckdb10shared_ptrINS_15CSVStateMachineELb1EEE", !117, i64 0}
!119 = !{!"_ZTSN6duckdb9CSVStatesE", !87, i64 0}
!120 = !{!"p1 _ZTSN6duckdb16CSVBufferManagerE", !93, i64 0}
!121 = !{!"_ZTSSt12__shared_ptrIN6duckdb16CSVBufferManagerELN9__gnu_cxx12_Lock_policyE2EE", !120, i64 0, !104, i64 8}
!122 = !{!"_ZTSSt10shared_ptrIN6duckdb16CSVBufferManagerEE", !121, i64 0}
!123 = !{!"_ZTSN6duckdb10shared_ptrINS_16CSVBufferManagerELb1EEE", !122, i64 0}
!124 = !{!"_ZTSN6duckdb11CSVPositionE", !91, i64 0, !91, i64 8}
!125 = !{!"_ZTSN6duckdb11CSVBoundaryE", !91, i64 0, !91, i64 8, !91, i64 16, !91, i64 24}
!126 = !{!"_ZTSN6duckdb11CSVIteratorE", !124, i64 0, !90, i64 16, !90, i64 17, !91, i64 24, !125, i64 32, !90, i64 64}
!127 = !{!"p1 _ZTSN6duckdb15CSVBufferHandleE", !93, i64 0}
!128 = !{!"_ZTSSt12__shared_ptrIN6duckdb15CSVBufferHandleELN9__gnu_cxx12_Lock_policyE2EE", !127, i64 0, !104, i64 8}
!129 = !{!"_ZTSSt10shared_ptrIN6duckdb15CSVBufferHandleEE", !128, i64 0}
!130 = !{!"_ZTSN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEE", !129, i64 0}
!131 = !{!"p1 omnipotent char", !93, i64 0}
!132 = !{!"_ZTSN6duckdb11BaseScannerE", !111, i64 8, !90, i64 24, !115, i64 32, !118, i64 48, !119, i64 64, !90, i64 66, !90, i64 67, !90, i64 68, !123, i64 72, !126, i64 88, !130, i64 160, !131, i64 176, !90, i64 184, !91, i64 192, !91, i64 200}
!133 = !{!132, !90, i64 24}
!134 = !{!113, !112, i64 0}
!135 = !{!116, !94, i64 0}
!136 = !{!121, !120, i64 0}
!137 = !{!91, !91, i64 0}
!138 = !{!90, !90, i64 0}
end_hunk_4
