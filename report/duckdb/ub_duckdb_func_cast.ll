inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZN6duckdb18VectorStringToList26StringToNestedTypeCastLoopEPKNS_8string_tERNS_12ValidityMaskERNS_6VectorES5_mRNS_14CastParametersEPKNS_15SelectionVectorE:bb.a
  br i1 %.not.i.i.i.i.i.i168, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169

bb.bf:                                            ; preds = %bb.bd
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i.i170 = phi i32 [ %i.hd, %bb.be ], [ %i.hn, %bb.bf ]
  %i.ho = icmp eq i32 %.0.i.i.i.i.i.i.i170, 1
  br i1 %i.ho, label %bb.bg, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i171, !prof !140

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i171

_ZN6duckdb15SelectionVectorD2Ev.exit.i171:        ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169, %bb.bc, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i1.i172 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i1.i172, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit176, label %bb.bh

bb.bh:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i171
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.hr, align 8, !tbaa !136
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !138
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !30
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #28, !inline_history !719
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !30
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #28, !inline_history !719
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit176

bb.bj:                                            ; preds = %bb.bh
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i2.i173 = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i.i.i2.i173, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i174

bb.bl:                                            ; preds = %bb.bj
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i174

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i174: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i4.i175 = phi i32 [ %i.hu, %bb.bk ], [ %i.ie, %bb.bl ]
  %i.if = icmp eq i32 %.0.i.i.i.i.i.i4.i175, 1
  br i1 %i.if, label %bb.bm, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit176, !prof !140

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i174
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit176

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit176:      ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i171, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i174, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cb

bb.bn:                                            ; preds = %._crit_edge235
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bo:                                            ; preds = %bb.ai
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bp:                                            ; preds = %bb.aj
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.bq:                                            ; preds = %bb.al
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.br:                                            ; preds = %bb.am
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bs:                                            ; preds = %bb.an
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bt:                                            ; preds = %bb.ao
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bu:                                            ; preds = %.lr.ph246, %.loopexit
  %.076242 = phi i64 [ 0, %.lr.ph246 ], [ %i.jx, %.loopexit ] ; 4 uses
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.076242 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !143 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !145
  %i.ir = add i64 %i.iq, %i.io                    ; 3 uses
  %i.is = icmp ult i64 %i.io, %i.ir
  br i1 %i.is, label %.lr.ph239, label %.loopexit

.lr.ph239:                                        ; preds = %bb.bu
  %i.it = load ptr, ptr %i.fn, align 8, !tbaa !94 ; 3 uses
  %.not.i177 = icmp eq ptr %i.it, null
  %i.iu = load ptr, ptr %i.fo, align 8
  %.fr = freeze ptr %i.iu                         ; 2 uses
  br i1 %.not.i177, label %.loopexit, label %.lr.ph239.split

.lr.ph239.split:                                  ; preds = %.lr.ph239
  %.not.i180 = icmp eq ptr %.fr, null
  br i1 %.not.i180, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.us: ; preds = %.lr.ph239.split, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread.us241
  %.0237.us240 = phi i64 [ %i.jb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread.us241 ], [ %i.io, %.lr.ph239.split ] ; 3 uses
  %i.iv = lshr i64 %.0237.us240, 6
  %i.iw = and i64 %.0237.us240, 63
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.iv
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !13
  %i.iz = shl nuw i64 1, %i.iw
  %i.ja = and i64 %i.iy, %i.iz
  %.not193.us = icmp eq i64 %i.ja, 0
  br i1 %.not193.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread.us241

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread.us241: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.us
  %i.jb = add i64 %.0237.us240, 1                 ; 2 uses
  %exitcond258.not.a = icmp eq i64 %i.jb, %i.ir
  br i1 %exitcond258.not.a, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.us, !llvm.loop !720

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179: ; preds = %.lr.ph239.split, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread
  %.0237 = phi i64 [ %i.jw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread ], [ %i.io, %.lr.ph239.split ] ; 3 uses
  %i.jc = lshr i64 %.0237, 6                      ; 2 uses
  %i.jd = and i64 %.0237, 63
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jc
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !13
  %i.jg = shl nuw i64 1, %i.jd                    ; 2 uses
  %i.jh = and i64 %i.jf, %i.jg
  %.not193 = icmp eq i64 %i.jh, 0
  br i1 %.not193, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.jc
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !13
  %i.jk = and i64 %i.jj, %i.jg
  %.not194 = icmp eq i64 %i.jk, 0
  br i1 %.not194, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.us
  %i.jl = load ptr, ptr %3, align 8, !tbaa !94    ; 2 uses
  %.not.i183 = icmp eq ptr %i.jl, null
  br i1 %.not.i183, label %bb.bv, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit186

bb.bv:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182.thread
  %i.jm = load i64, ptr %i.fp, align 8, !tbaa !141
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.jm)
          to label %.noexc185 unwind label %bb.bw

.noexc185:                                        ; preds = %bb.bv
  %.pre.i184 = load ptr, ptr %3, align 8, !tbaa !94
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit186

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit186: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182.thread, %.noexc185
  %i.jn = phi ptr [ %.pre.i184, %.noexc185 ], [ %i.jl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182.thread ]
  %i.jo = lshr i64 %.076242, 6
  %i.jp = and i64 %.076242, 63
  %i.jq = shl nuw i64 1, %i.jp
  %i.jr = xor i64 %i.jq, -1
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jo ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !13
  %i.ju = and i64 %i.jt, %i.jr
  store i64 %i.ju, ptr %i.js, align 8, !tbaa !13
  br label %.loopexit

bb.bw:                                            ; preds = %bb.bv
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit182
  %i.jw = add i64 %.0237, 1                       ; 2 uses
  %exitcond257.not = icmp eq i64 %i.jw, %i.ir
  br i1 %exitcond257.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179, !llvm.loop !720

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit179.thread.us241, %bb.bu, %.lr.ph239, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit186
  %i.jx = add nuw i64 %.076242, 1                 ; 2 uses
  %exitcond259.not = icmp eq i64 %i.jx, %4
  br i1 %exitcond259.not, label %._crit_edge247, label %bb.bu, !llvm.loop !721

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.jv, %bb.bw ], [ %i.im, %bb.bt ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %16) #28
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bs
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bx ], [ %i.il, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.br
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.by ], [ %i.ik, %bb.br ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %15) #28
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bq
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.bz ], [ %i.ij, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cc

bb.cb:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit176, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret i1 %i.fj

bb.cc:                                            ; preds = %bb.ca, %bb.bp
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ca ], [ %i.ii, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.cd

bb.cd:                                            ; preds = %bb.bn, %bb.cc, %bb.bo, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %.pn115.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %.pn115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161 ], [ %i.ig, %bb.bn ], [ %.pn.pn.pn.pn.pn, %bb.cc ], [ %i.ih, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit198, %.loopexit.split-lp199, %bb.cd, %bb.l, %bb.k
  %.pn115.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.bd, %bb.l ], [ %.pn115.pn.pn, %bb.cd ], [ %lpad.loopexit200, %.loopexit198 ], [ %lpad.loopexit.split-lp201, %.loopexit.split-lp199 ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #28
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.j
  %.pn115.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn115.pn.pn.pn.pn.pn, %bb.ce ], [ %i.bb, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %.pn115.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb18VectorStringToList14CountPartsListERKNS_8string_tE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 12 uses
  %1 = alloca %"struct.(anonymous namespace)::StringCastInputState", align 8 ; 9 uses
  %2 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !100    ; 4 uses
  %i.e = icmp ult i32 %i.d, 13
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.e, ptr %i.f, ptr %i.h       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.j = zext i32 %i.d to i64                     ; 10 uses
  store i64 %i.j, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %i.i, ptr %1, align 8, !tbaa !722
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.b, ptr %i.k, align 8, !tbaa !724
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.a, ptr %i.l, align 8, !tbaa !724
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store i8 0, ptr %i.m, align 8, !tbaa !725
  %.not38.i = icmp eq i32 %i.d, 0
  br i1 %.not38.i, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.n = load i8, ptr %i.i, align 1, !tbaa !100
  switch i8 %i.n, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit.i [
    i8 32, label %bb.b
    i8 12, label %bb.b
    i8 11, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.preheader.i, %.lr.ph.i.preheader.i, %.lr.ph.i.preheader.i, %.lr.ph.i.preheader.i, %.lr.ph.i.preheader.i
  %exitcond.peel.not.i = icmp eq i32 %i.d, 1
  br i1 %exitcond.peel.not.i, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.r, %bb.c ], [ 1, %bb.b ]    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !100
  switch i8 %i.q, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit.i [
    i8 32, label %bb.c
    i8 12, label %bb.c
    i8 11, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.r = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.j
  br i1 %exitcond.not.i, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !726

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit.i: ; preds = %bb.c, %.lr.ph.i.i, %bb.b, %.lr.ph.i.preheader.i
  %i.s = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ 1, %bb.b ], [ %i.o, %.lr.ph.i.i ], [ %i.j, %bb.c ]
  store i8 0, ptr %i.m, align 8
  br label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.i

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.i: ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit.i, %bb.a
  %i.t = phi i64 [ %i.s, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.loopexit.i ], [ 0, %bb.a ] ; 4 uses
  %i.u = icmp eq i64 %i.t, %i.j
  br i1 %i.u, label %_ZN6duckdbL23SplitStringListInternalINS_18CountPartOperationEEEbRKNS_8string_tERT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t
  %i.w = load i8, ptr %i.v, align 1, !tbaa !100
  %.not.i = icmp eq i8 %i.w, 91
  br i1 %.not.i, label %bb.e, label %_ZN6duckdbL23SplitStringListInternalINS_18CountPartOperationEEEbRKNS_8string_tERT_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = add i64 %i.t, 1                          ; 5 uses
  store i64 %i.x, ptr %i.b, align 8, !tbaa !13
  %i.y = icmp ult i64 %i.x, %i.j
  br i1 %i.y, label %.lr.ph.i27.preheader.i, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.i

.lr.ph.i27.preheader.i:                           ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !100
  switch i8 %i.aa, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.loopexit.i [
    i8 32, label %bb.f
    i8 12, label %bb.f
    i8 11, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %.lr.ph.i27.preheader.i, %.lr.ph.i27.preheader.i, %.lr.ph.i27.preheader.i, %.lr.ph.i27.preheader.i, %.lr.ph.i27.preheader.i, %.lr.ph.i27.preheader.i
  %i.ab = add i64 %i.t, 2                         ; 3 uses
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !13
  %exitcond53.peel.not.i = icmp eq i64 %i.ab, %i.j
  br i1 %exitcond53.peel.not.i, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.loopexit.i, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %bb.f, %bb.g
  %i.ac = phi i64 [ %i.af, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !100
  switch i8 %i.ae, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.loopexit.i [
    i8 32, label %bb.g
    i8 12, label %bb.g
    i8 11, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i27.i, %.lr.ph.i27.i, %.lr.ph.i27.i, %.lr.ph.i27.i, %.lr.ph.i27.i, %.lr.ph.i27.i
  %i.af = add nsw i64 %i.ac, 1                    ; 3 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !13
  %exitcond53.not.i = icmp eq i64 %i.af, %i.j
  br i1 %exitcond53.not.i, label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.loopexit.i, label %.lr.ph.i27.i, !llvm.loop !727

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.loopexit.i: ; preds = %bb.g, %.lr.ph.i27.i, %bb.f, %.lr.ph.i27.preheader.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i27.preheader.i ], [ %i.j, %bb.f ], [ %i.ac, %.lr.ph.i27.i ], [ %i.j, %bb.g ]
  store i8 0, ptr %i.m, align 8
  br label %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.i

_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.i: ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.loopexit.i, %bb.e
  %i.ah = phi i64 [ %i.ag, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.loopexit.i ], [ %i.x, %bb.e ] ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.j
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.i, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit30.i
  %.sroa.0.1 = phi i64 [ %.sroa.0.2, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit30.i ], [ 0, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.i ] ; 3 uses
  %.01646.i = phi i1 [ true, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit30.i ], [ false, %_ZN6duckdbL14SkipWhitespaceERN12_GLOBAL__N_120StringCastInputStateE.exit28.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i64 -1, ptr %2, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !13  ; 6 uses
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aj
  %i.an = load i8, ptr %i.am, align 1, !tbaa !100
end_hunk_0
begin_hunk_1_@_ZN6duckdbL19StructToVarcharCastERNS_6VectorES1_mRNS_14CastParametersE:bb.a
  store i8 %i.oc, ptr %i.oe, align 1, !tbaa !100
  %i.of = select i1 %spec.select.i.epil, i64 2, i64 1
  %i.og = add i64 %i.of, %.03336.i.epil.init
  br label %bb.dv

bb.dv:                                            ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa595 = phi i64 [ %i.pd, %.unr-lcssa ], [ %i.og, %.epil.preheader ] ; 2 uses
  %i.oh = add i64 %.lcssa595, 1
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.lcssa595
  store i8 39, ptr %i.oi, align 1, !tbaa !100
  br label %_ZN6duckdb17VectorCastHelpers18WriteEscapedStringILb1EEEmPvRKNS_8string_tEb.exit

bb.dw:                                            ; preds = %bb.dw, %.new
  %.03237.i = phi i64 [ 0, %.new ], [ %i.pe, %bb.dw ] ; 3 uses
  %.03336.i = phi i64 [ 1, %.new ], [ %i.pd, %bb.dw ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.dw ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.03237.i ; 2 uses
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !100 ; 2 uses
  %i.ol = icmp eq i8 %i.ok, 92
  %i.om = icmp eq i8 %i.ok, 39
  %spec.select.i = or i1 %i.ol, %i.om             ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.nr, i64 %.03336.i ; 2 uses
  store i8 92, ptr %i.on, align 1, !tbaa !100
  %i.oo = load i8, ptr %i.oj, align 1, !tbaa !100
  %i.op = zext i1 %spec.select.i to i64
  %i.oq = getelementptr i8, ptr %i.on, i64 %i.op
  store i8 %i.oo, ptr %i.oq, align 1, !tbaa !100
  %i.or = select i1 %spec.select.i, i64 2, i64 1
  %i.os = add i64 %i.or, %.03336.i                ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nq, i64 %.03237.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 1 ; 2 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !100 ; 2 uses
  %i.ow = icmp eq i8 %i.ov, 92
  %i.ox = icmp eq i8 %i.ov, 39
  %spec.select.i.1 = or i1 %i.ow, %i.ox           ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.os ; 2 uses
  store i8 92, ptr %i.oy, align 1, !tbaa !100
  %i.oz = load i8, ptr %i.ou, align 1, !tbaa !100
  %i.pa = zext i1 %spec.select.i.1 to i64
  %i.pb = getelementptr i8, ptr %i.oy, i64 %i.pa
  store i8 %i.oz, ptr %i.pb, align 1, !tbaa !100
  %i.pc = select i1 %spec.select.i.1, i64 2, i64 1
  %i.pd = add i64 %i.pc, %i.os                    ; 3 uses
  %i.pe = add nuw nsw i64 %.03237.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.dw, !llvm.loop !1000

_ZN6duckdb17VectorCastHelpers18WriteEscapedStringILb1EEEmPvRKNS_8string_tEb.exit: ; preds = %bb.dv, %bb.dt, %bb.dr
  %.1.i = phi i64 [ 2, %bb.dr ], [ %i.oh, %bb.dv ], [ %i.nv, %bb.dt ]
  %i.pf = add i64 %.1.i, %.1137                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %i.pg = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.pf ; 2 uses
  store i8 58, ptr %i.pg, align 1, !tbaa !100
  %i.ph = add i64 %i.pf, 2
  %i.pi = getelementptr i8, ptr %i.pg, i64 1
  store i8 32, ptr %i.pi, align 1, !tbaa !100
  br label %bb.dy

bb.dx:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327.thread
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit334

bb.dy:                                            ; preds = %_ZN6duckdb17VectorCastHelpers18WriteEscapedStringILb1EEEmPvRKNS_8string_tEb.exit, %bb.dh
  %.2138 = phi i64 [ %.1137, %bb.dh ], [ %i.ph, %_ZN6duckdb17VectorCastHelpers18WriteEscapedStringILb1EEEmPvRKNS_8string_tEb.exit ] ; 3 uses
  %i.pk = load ptr, ptr %i.mc, align 8, !tbaa !94 ; 2 uses
  %.not.i325 = icmp eq ptr %i.pk, null
  br i1 %.not.i325, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327: ; preds = %bb.dy
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.iy
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !13
  %i.pn = and i64 %i.pm, %i.ja
  %.not456 = icmp eq i64 %i.pn, 0
  br i1 %.not456, label %bb.dz, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327.thread: ; preds = %bb.dy, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327
  %i.po = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.2138
  %i.pp = getelementptr inbounds nuw [16 x i8], ptr %i.mp, i64 %.0130496
  %i.pq = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.0135492
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !662, !range !130, !noundef !22
  %i.ps = trunc nuw i8 %i.pr to i1
  %i.pt = invoke noundef i64 %i.ks(ptr noundef nonnull %i.po, ptr noundef nonnull align 8 dereferenceable(16) %i.pp, i1 noundef zeroext %i.ps)
          to label %bb.ea unwind label %bb.dx, !callees !663

bb.dz:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327
  %i.pu = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.2138
  store i32 1280070990, ptr %i.pu, align 1
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327.thread, %bb.dz
  %.pn149 = phi i64 [ 4, %bb.dz ], [ %i.pt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit327.thread ]
  %.3139 = add i64 %.pn149, %.2138                ; 2 uses
  %i.pv = add nuw i64 %.0135492, 1                ; 2 uses
  %i.pw = load ptr, ptr %i.ao, align 8, !tbaa !755
  %i.px = load ptr, ptr %i.ak, align 8, !tbaa !758
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = ptrtoint ptr %i.px to i64
  %i.qa = sub i64 %i.py, %i.pz
  %i.qb = ashr exact i64 %i.qa, 3
  %i.qc = icmp ult i64 %i.pv, %i.qb
  br i1 %i.qc, label %bb.ca, label %._crit_edge, !llvm.loop !1001

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.by, %bb.bx, %bb.w
  %i.qd = add nuw i64 %.0130496, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.qd, %2
  br i1 %exitcond.not, label %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit171._crit_edge, label %bb.u, !llvm.loop !1002

bb.eb:                                            ; preds = %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit171._crit_edge
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
          to label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit331 unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qe = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit334

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit331: ; preds = %bb.eb, %_ZN6duckdb36make_unsafe_uniq_array_uninitializedIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm.exit171._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #30
  call void @_ZdaPv(ptr noundef nonnull %i.av) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  ret i1 true

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit334: ; preds = %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i318, %bb.dx, %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i419, %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i277, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i276, %bb.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i403, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i402, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i286, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i287, %bb.ct, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i255, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i264, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i265, %bb.ck, %bb.bu, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i242, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i374, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i202, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i211, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i212, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i191, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i192, %bb.al, %bb.bt, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.ag, %bb.x, %bb.bz, %bb.ec
  %.pn151.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.qe, %bb.ec ], [ %i.ch, %bb.x ], [ %i.jj, %bb.bz ], [ %i.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i286 ], [ %i.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i419 ], [ %i.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i191 ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i373 ], [ %.pn10.i416, %bb.df ], [ %.pn9.i.i283, %bb.ct ], [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i242 ], [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i264 ], [ %i.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i402 ], [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i287 ], [ %i.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.ab ], [ %i.nd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i318 ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.ag ], [ %i.id, %bb.bt ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i192 ], [ %.pn9.i.i188, %bb.al ], [ %i.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201 ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i202 ], [ %.pn8.i.i.i198, %bb.aq ], [ %i.fd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i211 ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i212 ], [ %.pn9.i.i208, %bb.av ], [ %.pn8.i.i.i315, %bb.dl ], [ %i.fj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.bb ], [ %.pn9.i399, %bb.cz ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i403 ], [ %i.pj, %bb.dx ], [ %i.nd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i319 ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i374 ], [ %.pn10.i, %bb.bh ], [ %i.ie, %bb.bu ], [ %i.go, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i243 ], [ %.pn8.i.i.i239, %bb.bm ], [ %i.jz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i254 ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i255 ], [ %.pn8.i.i.i251, %bb.cf ], [ %i.mk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i420 ], [ %i.kl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i265 ], [ %.pn9.i.i261, %bb.ck ], [ %i.lg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i276 ], [ %i.lg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i277 ], [ %.pn8.i.i.i273, %bb.co ]
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #30
  br label %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit337

_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit337: ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit334, %bb.t
  %.pn151.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn151.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit334 ], [ %i.bu, %bb.t ]
  call void @_ZdaPv(ptr noundef nonnull %i.av) #30
  br label %bb.ed

bb.ed:                                            ; preds = %bb.s, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit337, %bb.m, %bb.o, %bb.q, %bb.r, %bb.p, %bb.n, %bb.l
  %.pn151.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %i.bn, %bb.m ], [ %i.bo, %bb.n ], [ %i.bp, %bb.o ], [ %i.bq, %bb.p ], [ %i.br, %bb.q ], [ %i.bs, %bb.r ], [ %.pn151.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit337 ], [ %i.bt, %bb.s ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %23) #28
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.k
  %.pn151.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn151.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ed ], [ %i.bl, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  resume { ptr, i32 } %.pn151.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN6duckdbL15StructToMapCastERNS_6VectorES1_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::Vector", align 8    ; 10 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::CastParameters", align 8 ; 11 uses
  %8 = alloca %"class.duckdb::Vector", align 8    ; 8 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %10 = alloca %"struct.duckdb::CastParameters", align 8 ; 11 uses
  %11 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 10 uses
  %i.d = load i8, ptr %0, align 8, !tbaa !78
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %bb.bh

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit, %bb.a
  %.085 = phi i64 [ 1, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit ], [ %2, %bb.a ], [ 1, %bb.b ] ; 9 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_13BoundCastDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.j = load ptr, ptr %3, align 8, !tbaa !42     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !609  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12StructVector10GetEntriesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !755  ; 3 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !758  ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 7 uses
  %i.u = mul i64 %i.t, %.085                      ; 4 uses
  tail call void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 25)
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull %6, i64 noundef %i.u)
          to label %bb.d unwind label %13

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
          to label %bb.e unwind label %15

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb10StructType13GetChildTypesB5cxx11ERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.preheader138 unwind label %17 ; 2 uses

.preheader138:                                    ; preds = %bb.e
  %.not153 = icmp eq i64 %.085, 0                 ; 2 uses
  br i1 %.not153, label %._crit_edge147.split, label %.preheader137.lr.ph

.preheader137.lr.ph:                              ; preds = %.preheader138
  %.not154 = icmp eq ptr %i.o, %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  br i1 %.not154, label %._crit_edge147.split, label %.preheader137.us

.preheader137.us:                                 ; preds = %.preheader137.lr.ph, %._crit_edge
  %.0102146.us = phi i64 [ %19, %._crit_edge ], [ 0, %.preheader137.lr.ph ] ; 2 uses
  %i.aa = mul i64 %.0102146.us, %i.t
  %i.ab = getelementptr [16 x i8], ptr %i.w, i64 %i.aa
  br label %bb.f

._crit_edge147.split:                             ; preds = %._crit_edge, %.preheader137.lr.ph, %.preheader138
  %12 = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector7GetKeysERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.k unwind label %bb.m

13:                                               ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28
  br label %bb.bg

15:                                               ; preds = %bb.d
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %.body

17:                                               ; preds = %bb.e
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge:                                      ; preds = %23
  %19 = add nuw i64 %.0102146.us, 1               ; 2 uses
  %exitcond159.not = icmp eq i64 %19, %.085
  br i1 %exitcond159.not, label %._crit_edge147.split, label %.preheader137.us, !llvm.loop !1003

bb.f:                                             ; preds = %.preheader137.us, %23
  %.0106145.us = phi i64 [ 0, %.preheader137.us ], [ %27, %23 ] ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !216
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !212 ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 56                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.0106145.us, ptr %i.b, align 8, !tbaa !13
  store i64 %i.ah, ptr %i.c, align 8, !tbaa !13
  %.not.i.i.i.us = icmp ult i64 %.0106145.us, %i.ah
  br i1 %.not.i.i.i.us, label %20, label %.noexc.i, !prof !177

.noexc.i:                                         ; preds = %bb.f
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 55, ptr %i.a, align 8, !tbaa !13
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc129 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc129:                                        ; preds = %.noexc.i
  store ptr %i.ak, ptr %4, align 8, !tbaa !105
  %i.al = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ak, ptr noundef nonnull align 1 dereferenceable(55) @.str.33, i64 55, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !109
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc129
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.j unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %.noexc129
  %.0.i.i.i = phi i1 [ false, %bb.g ], [ true, %.noexc129 ] ; 2 uses
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.aj
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.aq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i, label %bb.i, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.0.i.i.i, label %bb.i, label %.body

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.ai) #28
  br label %.body

bb.j:                                             ; preds = %bb.g
  unreachable

20:                                               ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %21 = getelementptr inbounds nuw [56 x i8], ptr %i.ad, i64 %.0106145.us
  %22 = invoke { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %23 unwind label %28           ; 2 uses

23:                                               ; preds = %20
  %24 = extractvalue { i64, ptr } %22, 0
  %25 = extractvalue { i64, ptr } %22, 1
  %26 = getelementptr [16 x i8], ptr %i.ab, i64 %.0106145.us ; 2 uses
  store i64 %24, ptr %26, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %25, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !100
  %27 = add nuw i64 %.0106145.us, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %27, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !1004

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %._crit_edge147.split
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !131
  store ptr %i.au, ptr %7, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !129, !range !130, !noundef !22
  store i8 %i.az, ptr %i.ax, align 8, !tbaa !129
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !121
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !121
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store ptr %i.aw, ptr %i.be, align 8, !tbaa !131
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !13
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i8 0, ptr %i.bi, align 8, !tbaa !132
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !1005
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %12, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(57) %7)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bl = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb9MapVector9GetValuesERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %.preheader unwind label %bb.o

.preheader:                                       ; preds = %bb.l
  %.not155 = icmp eq ptr %i.o, %i.p
  br i1 %.not155, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 56
  %exitcond160.not175 = icmp eq i64 %.085, 0
  br label %bb.p

._crit_edge.a:                                    ; preds = %._crit_edge179, %.preheader
  %.0104.lcssa = phi i1 [ true, %.preheader ], [ %spec.select, %._crit_edge179 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.ai unwind label %bb.ak

bb.m:                                             ; preds = %._crit_edge147.split
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.o:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.p:                                             ; preds = %.lr.ph, %._crit_edge179
  %.0103149 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %._crit_edge179 ] ; 6 uses
  %.0104148 = phi i1 [ true, %.lr.ph ], [ %spec.select, %._crit_edge179 ]
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %.0103149)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bz = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb10unique_ptrINS_6VectorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %bb.r unwind label %bb.z

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb7MapType9ValueTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.ca)
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6duckdb6VectorC1ENS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull %9, i64 noundef %.085)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.cb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_13BoundCastInfoELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %.0103149)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !28
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_18FunctionLocalStateESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %.0103149)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !131
  store ptr %i.cd, ptr %10, align 8, !tbaa !28
  %i.cg = load i8, ptr %i.ay, align 8, !tbaa !129, !range !130, !noundef !22
  store i8 %i.cg, ptr %i.bp, align 8, !tbaa !129
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !121
  store ptr %i.ch, ptr %i.bq, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store ptr %i.cf, ptr %i.bs, align 8, !tbaa !131
  %i.ci = load i64, ptr %i.bg, align 8, !tbaa !13
  store i64 %i.ci, ptr %i.bt, align 8, !tbaa !13
  store i8 0, ptr %i.bu, align 8, !tbaa !132
  %i.cj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_13BoundCastInfoELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 noundef %.0103149)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !171
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(104) %i.bz, ptr noundef nonnull align 8 dereferenceable(104) %8, i64 noundef %.085, ptr noundef nonnull align 8 dereferenceable(57) %10)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  %spec.select = select i1 %i.cl, i1 %.0104148, i1 false ; 2 uses
  br i1 %exitcond160.not175, label %._crit_edge179, label %.lr.ph178

bb.z:                                             ; preds = %bb.q, %bb.p
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.aa:                                            ; preds = %bb.s, %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ab:                                            ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #28
  br label %bb.ah

bb.ac:                                            ; preds = %bb.v, %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.x, %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph178
  %exitcond160.not = icmp eq i64 %i.cu, %.085
  br i1 %exitcond160.not, label %._crit_edge179, label %.lr.ph178, !llvm.loop !1006

._crit_edge179:                                   ; preds = %bb.ae, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.cr = add nuw i64 %.0103149, 1                ; 2 uses
  %exitcond162.not = icmp eq i64 %i.cr, %i.t
  br i1 %exitcond162.not, label %._crit_edge.a, label %bb.p, !llvm.loop !1007

.lr.ph178:                                        ; preds = %bb.y, %bb.ae
  %.087176 = phi i64 [ %i.cu, %bb.ae ], [ 0, %bb.y ] ; 3 uses
  %i.cs = mul i64 %.087176, %i.t
  %i.ct = add i64 %i.cs, %.0103149
  %i.cu = add i64 %.087176, 1                     ; 3 uses
  invoke void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef nonnull align 8 dereferenceable(104) %i.bl, i64 noundef %i.cu, i64 noundef %.087176, i64 noundef %i.ct)
          to label %bb.ae unwind label %bb.af, !llvm.loop !1006

bb.af:                                            ; preds = %.lr.ph178
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af, %bb.ac
  %.pn113.pn = phi { ptr, i32 } [ %i.cp, %bb.ac ], [ %i.cv, %bb.af ], [ %i.cq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ab, %bb.aa
  %.pn113.pn.pn = phi { ptr, i32 } [ %.pn113.pn, %bb.ag ], [ %i.co, %bb.ab ], [ %i.cn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bf

bb.ai:                                            ; preds = %._crit_edge.a
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %.085, ptr noundef nonnull align 8 dereferenceable(73) %11)
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cx = load i8, ptr %1, align 8, !tbaa !78
  %i.cy = icmp eq i8 %i.cx, 3
  br i1 %i.cy, label %tailrecurse.i, label %tailrecurse._crit_edge.i

tailrecurse.i:                                    ; preds = %bb.aj, %.noexc126
  %.tr5.i = phi ptr [ %i.db, %.noexc126 ], [ %1, %bb.aj ] ; 2 uses
  invoke void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr5.i)
          to label %.noexc unwind label %.loopexit, !inline_history !142

.noexc:                                           ; preds = %tailrecurse.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr5.i, i64 88
  %i.da = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cz)
          to label %.noexc126 unwind label %.loopexit, !inline_history !142

.noexc126:                                        ; preds = %.noexc
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !78
  %i.dd = icmp eq i8 %i.dc, 3
  br i1 %i.dd, label %tailrecurse.i, label %tailrecurse._crit_edge.i

tailrecurse._crit_edge.i:                         ; preds = %.noexc126, %bb.aj
  %.tr.lcssa.i = phi ptr [ %1, %bb.aj ], [ %i.db, %.noexc126 ] ; 2 uses
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %.tr.lcssa.i)
          to label %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit unwind label %.loopexit.split-lp, !inline_history !142

_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit: ; preds = %tailrecurse._crit_edge.i
  %i.de = getelementptr inbounds nuw i8, ptr %.tr.lcssa.i, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !93
  br i1 %.not153, label %._crit_edge152, label %.lr.ph151

._crit_edge152:                                   ; preds = %bb.ap, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit
  invoke void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.u)
          to label %bb.aq unwind label %.loopexit.split-lp

bb.ak:                                            ; preds = %._crit_edge.a
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.al:                                            ; preds = %bb.ai
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit:                                        ; preds = %tailrecurse.i, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %._crit_edge152, %tailrecurse._crit_edge.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.lr.ph151:                                        ; preds = %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit, %bb.ap
  %.0150 = phi i64 [ %i.dy, %bb.ap ], [ 0, %_ZN6duckdb10ListVector7GetDataERNS_6VectorE.exit ] ; 6 uses
  %i.di = load ptr, ptr %11, align 8, !tbaa !539
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !548 ; 2 uses
  %.not.i = icmp eq ptr %i.dj, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.am

bb.am:                                            ; preds = %.lr.ph151
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.0150
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = zext i32 %i.dl to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.am, %.lr.ph151
  %i.dn = phi i64 [ %i.dm, %bb.am ], [ %.0150, %.lr.ph151 ] ; 2 uses
  %i.do = load ptr, ptr %i.cw, align 8, !tbaa !94 ; 2 uses
  %.not.i128 = icmp eq ptr %i.do, null
  br i1 %.not.i128, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.dp = lshr i64 %i.dn, 6
  %i.dq = and i64 %i.dn, 63
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dp
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !13
  %i.dt = shl nuw i64 1, %i.dq
  %i.du = and i64 %i.ds, %i.dt
  %.not = icmp eq i64 %i.du, 0
  br i1 %.not, label %bb.an, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

bb.an:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  invoke void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %.0150, i1 noundef zeroext true)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.dw = mul i64 %.0150, %i.t
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %.0150 ; 2 uses
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13
  br label %bb.ap

bb.ap:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %bb.an
  %i.dy = add nuw i64 %.0150, 1                   ; 2 uses
  %exitcond163.not = icmp eq i64 %i.dy, %.085
  br i1 %exitcond163.not, label %._crit_edge152, label %.lr.ph151, !llvm.loop !1008

bb.aq:                                            ; preds = %._crit_edge152
  %i.dz = select i1 %i.bk, i1 %.0104.lcssa, i1 false
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.ec, align 8, !tbaa !136
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !138
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !30
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #28, !inline_history !718
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #28, !inline_history !718
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ef, %bb.au ], [ %i.ep, %bb.av ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.eq, label %bb.aw, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !140

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.as, %bb.aq
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 4 uses
  %i.eu = load atomic i64, ptr %i.et acquire, align 8 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 4294967297
  %i.ew = trunc i64 %i.eu to i32                  ; 2 uses
  br i1 %i.ev, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.et, align 8, !tbaa !136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  store i32 0, ptr %i.ex, align 4, !tbaa !138
  %i.ey = load ptr, ptr %i.es, align 8, !tbaa !30
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28, !inline_history !719
  %i.fb = load ptr, ptr %i.es, align 8, !tbaa !30
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28, !inline_history !719
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.fe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.fe, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ff = add nsw i32 %i.ew, -1
  store i32 %i.ff, ptr %i.et, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.bb:                                            ; preds = %bb.az
  %i.fg = atomicrmw volatile add ptr %i.et, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.ew, %bb.ba ], [ %i.fg, %bb.bb ]
  %i.fh = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fh, label %bb.bc, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !140

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.es) #28
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bh

bb.bd:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ao, %bb.al
  %.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.al ], [ %i.dv, %bb.ao ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %11) #28
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ak
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bd ], [ %i.dg, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.bf

bb.bf:                                            ; preds = %bb.o, %bb.be, %bb.ah, %bb.z, %bb.n
  %.pn113.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.n ], [ %i.bx, %bb.o ], [ %.pn.pn.pn, %bb.be ], [ %.pn113.pn.pn, %bb.ah ], [ %i.cm, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body

.body:                                            ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %17, %28, %bb.bf, %bb.m, %15
  %.pn121.pn.pn = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ], [ %i.bv, %bb.m ], [ %29, %28 ], [ %.pn113.pn.pn.pn.pn.pn, %bb.bf ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.i ]
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %5) #28
  br label %bb.bg

bb.bg:                                            ; preds = %.body, %13
  %.pn121.pn.pn.pn = phi { ptr, i32 } [ %.pn121.pn.pn, %.body ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn121.pn.pn.pn

bb.bh:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.c
  %.084 = phi i1 [ true, %bb.c ], [ %i.dz, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit ]
  ret i1 %.084
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers10StringCastINS_6date_tENS_10StringCastENS_8string_tEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_6date_tENS_8string_tENS_19GenericUnaryWrapperENS_24VectorStringCastOperatorINS_10StringCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers11TryCastLoopINS_6date_tENS_11timestamp_tENS_7TryCastEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::VectorTryCastData", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %1, ptr %4, align 8, !tbaa !150
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = icmp ne ptr %i.d, null
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_6date_tENS_11timestamp_tENS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_7TryCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext %i.e, i8 noundef zeroext 1)
  %i.f = load i8, ptr %i.b, align 8, !tbaa !154, !range !130, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers11TryCastLoopINS_6date_tENS_14timestamp_ns_tENS_20TryCastToTimestampNSEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::VectorTryCastData", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %1, ptr %4, align 8, !tbaa !150
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = icmp ne ptr %i.d, null
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_6date_tENS_14timestamp_ns_tENS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_20TryCastToTimestampNSEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext %i.e, i8 noundef zeroext 1)
  %i.f = load i8, ptr %i.b, align 8, !tbaa !154, !range !130, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers11TryCastLoopINS_6date_tENS_11timestamp_tENS_21TryCastToTimestampSecEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::VectorTryCastData", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %1, ptr %4, align 8, !tbaa !150
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = icmp ne ptr %i.d, null
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_6date_tENS_11timestamp_tENS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_21TryCastToTimestampSecEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext %i.e, i8 noundef zeroext 1)
  %i.f = load i8, ptr %i.b, align 8, !tbaa !154, !range !130, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers11TryCastLoopINS_6date_tENS_11timestamp_tENS_20TryCastToTimestampMSEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.duckdb::VectorTryCastData", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %1, ptr %4, align 8, !tbaa !150
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = icmp ne ptr %i.d, null
  call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_6date_tENS_11timestamp_tENS_19GenericUnaryWrapperENS_21VectorTryCastOperatorINS_20TryCastToTimestampMSEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %4, i1 noundef zeroext %i.e, i8 noundef zeroext 1)
  %i.f = load i8, ptr %i.b, align 8, !tbaa !154, !range !130, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers10StringCastINS_7dtime_tENS_10StringCastENS_8string_tEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_7dtime_tENS_8string_tENS_19GenericUnaryWrapperENS_24VectorStringCastOperatorINS_10StringCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_7dtime_tENS_10dtime_tz_tENS_4CastEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_7dtime_tENS_10dtime_tz_tENS_20UnaryOperatorWrapperENS_4CastEEEvRNS_6VectorES7_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers10StringCastINS_10dtime_ns_tENS_10StringCastENS_8string_tEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_10dtime_ns_tENS_8string_tENS_19GenericUnaryWrapperENS_24VectorStringCastOperatorINS_10StringCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_10dtime_ns_tENS_7dtime_tENS_4CastEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_10dtime_ns_tENS_7dtime_tENS_20UnaryOperatorWrapperENS_4CastEEEvRNS_6VectorES7_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers10StringCastINS_10dtime_tz_tENS_12StringCastTZENS_8string_tEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_10dtime_tz_tENS_8string_tENS_19GenericUnaryWrapperENS_24VectorStringCastOperatorINS_12StringCastTZEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_10dtime_tz_tENS_7dtime_tENS_4CastEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_10dtime_tz_tENS_7dtime_tENS_20UnaryOperatorWrapperENS_4CastEEEvRNS_6VectorES7_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers10StringCastINS_11timestamp_tENS_10StringCastENS_8string_tEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_11timestamp_tENS_8string_tENS_19GenericUnaryWrapperENS_24VectorStringCastOperatorINS_10StringCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_11timestamp_tENS_6date_tENS_4CastEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_11timestamp_tENS_6date_tENS_20UnaryOperatorWrapperENS_4CastEEEvRNS_6VectorES7_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_11timestamp_tENS_7dtime_tENS_4CastEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_11timestamp_tENS_7dtime_tENS_20UnaryOperatorWrapperENS_4CastEEEvRNS_6VectorES7_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_11timestamp_tENS_10dtime_tz_tENS_4CastEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_11timestamp_tENS_10dtime_tz_tENS_20UnaryOperatorWrapperENS_4CastEEEvRNS_6VectorES7_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_11timestamp_tES2_NS_19CastTimestampUsToNsEEEbRNS_6VectorES5_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_11timestamp_tES2_NS_20UnaryOperatorWrapperENS_19CastTimestampUsToNsEEEvRNS_6VectorES6_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_11timestamp_tES2_NS_19CastTimestampUsToMsEEEbRNS_6VectorES5_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_11timestamp_tES2_NS_20UnaryOperatorWrapperENS_19CastTimestampUsToMsEEEvRNS_6VectorES6_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers17TemplatedCastLoopINS_11timestamp_tES2_NS_20CastTimestampUsToSecEEEbRNS_6VectorES5_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_11timestamp_tES2_NS_20UnaryOperatorWrapperENS_20CastTimestampUsToSecEEEvRNS_6VectorES6_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef null, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers10StringCastINS_11timestamp_tENS_12StringCastTZENS_8string_tEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_11timestamp_tENS_8string_tENS_19GenericUnaryWrapperENS_24VectorStringCastOperatorINS_12StringCastTZEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb17VectorCastHelpers10StringCastINS_14timestamp_ns_tENS_10StringCastENS_8string_tEEEbRNS_6VectorES6_mRNS_14CastParametersE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(57) %3) #0 comdat align 2 {
bb.a:
  tail call void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_14timestamp_ns_tENS_8string_tENS_19GenericUnaryWrapperENS_24VectorStringCastOperatorINS_10StringCastEEEEEvRNS_6VectorES9_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull %1, i1 noundef zeroext false, i8 noundef zeroext 1)
  ret i1 true
}

end_hunk_1
