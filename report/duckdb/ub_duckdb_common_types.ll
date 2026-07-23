inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb:bb.a
  %i.py = call ptr @__cxa_allocate_exception(i64 16) #46 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #46
  %i.pz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.pz, ptr %12, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i64 49, ptr %i.b, align 8, !tbaa !108
  %i.qa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc144.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111.i ; 3 uses

.noexc144.i:                                      ; preds = %.noexc.i143.i
  store ptr %i.qa, ptr %12, align 8, !tbaa !89
  %i.qb = load i64, ptr %i.b, align 8, !tbaa !108 ; 3 uses
  store i64 %i.qb, ptr %i.pz, align 8, !tbaa !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.qa, ptr noundef nonnull align 1 dereferenceable(49) @.str.350, i64 49, i1 false)
  %i.qc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !152
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qb
  store i8 0, ptr %i.qd, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #46
  %i.qe = load ptr, ptr %34, align 8, !tbaa !2024
  %i.qf = ptrtoint ptr %i.px to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg
  store i64 %i.qh, ptr %i.h, align 8, !tbaa !108
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJlEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.py, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %.noexc144.i
  invoke void @__cxa_throw(ptr nonnull %i.py, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #49
          to label %bb.cj unwind label %bb.ci

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i111.i: ; preds = %.noexc.i143.i
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br label %common.resume.sink.split.i29

bb.ci:                                            ; preds = %bb.ch, %.noexc144.i
  %.04.i114.i = phi i1 [ false, %bb.ch ], [ true, %.noexc144.i ] ; 2 uses
  %i.qj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #46
  %i.qk = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.ql = icmp eq ptr %i.qk, %i.pz
  br i1 %i.ql, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115.i: ; preds = %bb.ci
  call void @_ZdlPv(ptr noundef %i.qk) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i114.i, label %common.resume.sink.split.i29, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i116.i: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #46
  br i1 %.04.i114.i, label %common.resume.sink.split.i29, label %common.resume

bb.cj:                                            ; preds = %bb.ch
  unreachable

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i
  %i.qm = call i64 @llvm.bswap.i64(i64 %i.pt)
  store i64 %i.qm, ptr %i.ok, align 1
  %i.qn = load ptr, ptr %i.ef, align 8, !tbaa !2026 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8 ; 3 uses
  store ptr %i.qo, ptr %i.ef, align 8, !tbaa !2026
  %i.qp = load ptr, ptr %i.y, align 8, !tbaa !2019 ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8 ; 2 uses
  %i.qr = load ptr, ptr %i.z, align 8, !tbaa !2081
  %i.qs = icmp ugt ptr %i.qq, %i.qr
  br i1 %i.qs, label %.noexc.i.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.1

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.1: ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i
  %i.qt = load i64, ptr %i.qp, align 1
  store ptr %i.qq, ptr %i.y, align 8, !tbaa !2019
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qv = load ptr, ptr %i.eg, align 8, !tbaa !2027
  %i.qw = icmp ugt ptr %i.qu, %i.qv
  br i1 %i.qw, label %.noexc.i143.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i.1

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i.1: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.1
  %i.qx = call i64 @llvm.bswap.i64(i64 %i.qt)
  store i64 %i.qx, ptr %i.qo, align 1
  %i.qy = load ptr, ptr %i.ef, align 8, !tbaa !2026 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 4 uses
  store ptr %i.qz, ptr %i.ef, align 8, !tbaa !2026
  br i1 %exitcond.not.i28.1, label %.split.i, label %bb.ck

bb.ck:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i.1
  %i.ra = load ptr, ptr %i.y, align 8, !tbaa !2019 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8 ; 2 uses
  %i.rc = load ptr, ptr %i.z, align 8, !tbaa !2081
  %i.rd = icmp ugt ptr %i.rb, %i.rc
  br i1 %i.rd, label %.noexc.i.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.2

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.2: ; preds = %bb.ck
  %i.re = load i64, ptr %i.ra, align 1
  store ptr %i.rb, ptr %i.y, align 8, !tbaa !2019
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.rg = load ptr, ptr %i.eg, align 8, !tbaa !2027
  %i.rh = icmp ugt ptr %i.rf, %i.rg
  br i1 %i.rh, label %.noexc.i143.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i.2

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i.2: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.2
  %i.ri = call i64 @llvm.bswap.i64(i64 %i.re)
  store i64 %i.ri, ptr %i.qz, align 1
  %i.rj = load ptr, ptr %i.ef, align 8, !tbaa !2026 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 4 uses
  store ptr %i.rk, ptr %i.ef, align 8, !tbaa !2026
  br i1 %exitcond.not.i28.2, label %.split.i, label %bb.cl

bb.cl:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i.2
  %i.rl = load ptr, ptr %i.y, align 8, !tbaa !2019 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8 ; 2 uses
  %i.rn = load ptr, ptr %i.z, align 8, !tbaa !2081
  %i.ro = icmp ugt ptr %i.rm, %i.rn
  br i1 %i.ro, label %.noexc.i.i, label %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.3

_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.3: ; preds = %bb.cl
  %i.rp = load i64, ptr %i.rl, align 1
  store ptr %i.rm, ptr %i.y, align 8, !tbaa !2019
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rr = load ptr, ptr %i.eg, align 8, !tbaa !2027
  %i.rs = icmp ugt ptr %i.rq, %i.rr
  br i1 %i.rs, label %.noexc.i143.i, label %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i.3

_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit117.i.3: ; preds = %_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIdLb0EEET_v.exit.i102.i.3
  %i.rt = call i64 @llvm.bswap.i64(i64 %i.rp)
  store i64 %i.rt, ptr %i.rk, align 1
  %i.ru = load ptr, ptr %i.ef, align 8, !tbaa !2026
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 2 uses
  store ptr %i.rv, ptr %i.ef, align 8, !tbaa !2026
  br label %.split.i

bb.cm:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.rw = call fastcc noundef i32 @_ZN6duckdb12_GLOBAL__N_110BlobReader4ReadIjEET_b(ptr noundef nonnull align 8 dereferenceable(24) %30, i1 noundef zeroext %i.ej)
  call fastcc void @_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIjEEvRKT_(ptr noundef nonnull align 8 dereferenceable(24) %34, i32 %i.rw)
  br label %.loopexit.i24

.loopexit.i24.loopexit:                           ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.3, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.2, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.1
  %.lcssa610 = phi ptr [ %i.fw, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.3 ], [ %i.fm, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.1 ], [ %i.fr, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.2 ]
  %.lcssa602 = phi ptr [ %i.fu, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.3 ], [ %i.fk, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.1 ], [ %i.fp, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.us.i.2 ]
  store ptr %.lcssa602, ptr %i.y, align 8
  store ptr %.lcssa610, ptr %i.ef, align 8
  br label %.loopexit.i24

.loopexit.i24.loopexit60:                         ; preds = %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.3, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.2, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.1
  %.lcssa599 = phi ptr [ %i.hy, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.3 ], [ %i.hm, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.1 ], [ %i.hs, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.2 ]
  %.lcssa591 = phi ptr [ %i.hw, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.3 ], [ %i.hk, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.1 ], [ %i.hq, %_ZN6duckdb12_GLOBAL__N_119FixedSizeBlobWriter5WriteIdEEvRKT_.exit.i.2 ]
  store ptr %.lcssa591, ptr %i.y, align 8
  store ptr %.lcssa599, ptr %i.ef, align 8
  br label %.loopexit.i24

.loopexit.i24.loopexit61:                         ; preds = %.split200.us.us.i
  store ptr %.lcssa580, ptr %i.y, align 8
  store ptr %.lcssa588, ptr %i.ef, align 8
  br label %.loopexit.i24

.loopexit.i24.loopexit62:                         ; preds = %.split200.i
  store ptr %.lcssa569, ptr %i.y, align 8
  store ptr %.lcssa577, ptr %i.ef, align 8
  br label %.loopexit.i24

.loopexit.i24:                                    ; preds = %._crit_edge.i, %.loopexit.i24.loopexit62, %.loopexit.i24.loopexit61, %.loopexit.i24.loopexit60, %.loopexit.i24.loopexit, %bb.cm, %bb.bh, %bb.ap, %bb.ab
  %.val.i25 = load ptr, ptr %i.y, align 8, !tbaa !2019
  %.val63.i = load ptr, ptr %i.z, align 8, !tbaa !2081
  %.not161.i = icmp ult ptr %.val.i25, %.val63.i
  br i1 %.not161.i, label %.lr.ph213.i, label %_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit.loopexit, !llvm.loop !2725

_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit.loopexit: ; preds = %.loopexit.i24
  %.pre = load i32, ptr %33, align 8, !tbaa !153
  br label %_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit

_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit: ; preds = %_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit.loopexit, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit
  %i.rx = phi i32 [ %.pre, %_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit.loopexit ], [ %i.ea, %_ZN6duckdb12StringVector11EmptyStringERNS_6VectorEm.exit ] ; 2 uses
  %i.ry = icmp ult i32 %i.rx, 13
  br i1 %i.ry, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit
  %i.rz = zext nneg i32 %i.rx to i64              ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.rz
  %i.sb = sub nuw nsw i64 12, %i.rz
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.sa, i8 0, i64 %i.sb, i1 false)
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

bb.co:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110ConvertWKBERNS0_10BlobReaderERNS0_19FixedSizeBlobWriterE.exit
  %i.sc = load ptr, ptr %i.dz, align 8
  %i.sd = load i32, ptr %i.sc, align 1
  store i32 %i.sd, ptr %i.ec, align 4
  br label %_ZN6duckdb8string_t8FinalizeEv.exit

_ZN6duckdb8string_t8FinalizeEv.exit:              ; preds = %bb.cn, %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %33, i64 16, i1 false), !tbaa.struct !707
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #46
  br label %bb.cw

bb.cp:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_110AnalyzeWKBERNS0_10BlobReaderE.exit.thread
  %i.se = load i32, ptr %0, align 8, !tbaa !153   ; 4 uses
  %i.sf = icmp ult i32 %i.se, 13
  %i.sg = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.sh = zext nneg i32 %i.se to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i32 %i.se, ptr %.sroa.0.i, align 8, !tbaa !153
  br i1 %i.sf, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %.sroa.0.i.4.i.4.i.4..sroa_idx638 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.i.4.i.4.i.4..sroa_idx638, i8 0, i64 12, i1 false)
  %i.si = icmp eq i32 %i.se, 0
  br i1 %i.si, label %_ZN6duckdb8string_tC2EPKcj.exit.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %.sroa.0.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.4.i.4.i.4..sroa_idx, ptr nonnull align 4 %i.t, i64 %i.sh, i1 false)
  %.sroa.0.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..pre.i = load ptr, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx, align 8
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i

bb.cs:                                            ; preds = %bb.cp
  %i.sj = load i32, ptr %i.sg, align 1
  %.sroa.0.i.4.i.4.i.4..sroa_idx637 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 4
  store i32 %i.sj, ptr %.sroa.0.i.4.i.4.i.4..sroa_idx637, align 4
  br label %_ZN6duckdb8string_tC2EPKcj.exit.i

_ZN6duckdb8string_tC2EPKcj.exit.i:                ; preds = %bb.cs, %bb.cr, %bb.cq
  %.sroa.0.8..sroa.0.8..sroa.0.8..i = phi ptr [ null, %bb.cq ], [ %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..sroa.0.8..pre.i, %bb.cr ], [ %i.sg, %bb.cs ] ; 2 uses
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i = load i64, ptr %.sroa.0.i, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i to i32
  %i.sk = icmp ult i32 %.sroa.0.0.extract.trunc.i.i, 13
  br i1 %i.sk, label %_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorEPKcm.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i
  %i.sl = tail call noundef nonnull align 8 dereferenceable(144) ptr @_ZN6duckdb12StringVector15GetStringBufferERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 48
  %i.sn = and i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i, 4294967295 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.so = tail call { i64, ptr } @_ZN6duckdb10StringHeap11EmptyStringEm(ptr noundef nonnull align 8 dereferenceable(72) %i.sm, i64 noundef %i.sn) ; 2 uses
  %i.sp = extractvalue { i64, ptr } %i.so, 0      ; 3 uses
  store i64 %i.sp, ptr %4, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.sr = extractvalue { i64, ptr } %i.so, 1      ; 2 uses
  store ptr %i.sr, ptr %i.sq, align 8
  %i.ss = trunc i64 %i.sp to i32
  %i.st = icmp ult i32 %i.ss, 13                  ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.sv = select i1 %i.st, ptr %i.su, ptr %i.sr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sv, ptr readonly align 1 %.sroa.0.8..sroa.0.8..sroa.0.8..i, i64 %i.sn, i1 false)
  br i1 %i.st, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.sw = and i64 %i.sp, 15                       ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sw
  %i.sy = sub nuw nsw i64 12, %i.sw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.sx, i8 0, i64 %i.sy, i1 false)
  %.fca.1.load.pre.i.i.i.i = load ptr, ptr %i.sq, align 8
  br label %_ZN6duckdb18VectorStringBuffer7AddBlobENS_8string_tE.exit.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.sz = load ptr, ptr %i.sq, align 8            ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 1
  store i32 %i.ta, ptr %i.su, align 4
  br label %_ZN6duckdb18VectorStringBuffer7AddBlobENS_8string_tE.exit.i.i

_ZN6duckdb18VectorStringBuffer7AddBlobENS_8string_tE.exit.i.i: ; preds = %bb.cv, %bb.cu
  %.fca.1.load.i.i.i.i = phi ptr [ %.fca.1.load.pre.i.i.i.i, %bb.cu ], [ %i.sz, %bb.cv ]
  %.fca.0.load.i.i.i.i = load i64, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorEPKcm.exit

_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorEPKcm.exit: ; preds = %_ZN6duckdb8string_tC2EPKcj.exit.i, %_ZN6duckdb18VectorStringBuffer7AddBlobENS_8string_tE.exit.i.i
  %.pn13.i.i = phi i64 [ %.fca.0.load.i.i.i.i, %_ZN6duckdb18VectorStringBuffer7AddBlobENS_8string_tE.exit.i.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..i, %_ZN6duckdb8string_tC2EPKcj.exit.i ]
  %.pn11.i.i = phi ptr [ %.fca.1.load.i.i.i.i, %_ZN6duckdb18VectorStringBuffer7AddBlobENS_8string_tE.exit.i.i ], [ %.sroa.0.8..sroa.0.8..sroa.0.8..i, %_ZN6duckdb8string_tC2EPKcj.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store i64 %.pn13.i.i, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.pn11.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !153
  br label %bb.cw

bb.cw:                                            ; preds = %bb.r, %_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorEPKcm.exit, %_ZN6duckdb8string_t8FinalizeEv.exit
  %.not50 = phi i1 [ false, %bb.r ], [ true, %_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorEPKcm.exit ], [ true, %_ZN6duckdb8string_t8FinalizeEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #46
  ret i1 %.not50

bb.cx:                                            ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb8Geometry10FromBinaryERNS_6VectorES2_mb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %5 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %7 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %8 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %10 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %11 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %12 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %13 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %14 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %15 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %16 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %17 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %18 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %19 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %20 = alloca %"struct.duckdb::string_t", align 8 ; 9 uses
  %21 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %22 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %23 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %24 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %25 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %26 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %27 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %28 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %29 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !483     ; 2 uses
  br i1 %3, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  switch i8 %i.a, label %bb.u [
    i8 2, label %bb.c
    i8 0, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !427  ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !427  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !519  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.g, align 8, !tbaa !108
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tES2_ZNS_8Geometry10FromBinaryERNS_6VectorES5_mbE3$_0EEvS5_S5_mT1_NS_14FunctionErrorsE.exit"

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.c
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  store i64 %.sroa.0.0.copyload.i.i, ptr %28, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  %i.k = call noundef zeroext i1 @_ZN6duckdb8Geometry10FromBinaryERKNS_8string_tERS1_RNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true) ; 0 uses
  %.fca.0.load.i.i.i.i = load i64, ptr %27, align 8
  %.fca.1.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.fca.1.load.i.i.i.i = load ptr, ptr %.fca.1.gep.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  store i64 %.fca.0.load.i.i.i.i, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.fca.1.load.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !153
  br label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tES2_ZNS_8Geometry10FromBinaryERNS_6VectorES5_mbE3$_0EEvS5_S5_mT1_NS_14FunctionErrorsE.exit"

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !427  ; 3 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !427  ; 3 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2726)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !519, !noalias !2731 ; 2 uses
  %.not.i.i60.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i60.i.i, label %.preheader.i.i.i, label %bb.f

.preheader.i.i.i:                                 ; preds = %bb.e
  %.not96.i.i.i = icmp eq i64 %2, 0
  br i1 %.not96.i.i.i, label %"_ZN6duckdb13UnaryExecutor7ExecuteINS_8string_tES2_ZNS_8Geometry10FromBinaryERNS_6VectorES5_mbE3$_0EEvS5_S5_mT1_NS_14FunctionErrorsE.exit", label %.lr.ph94.i.i.i

.lr.ph94.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.fca.1.gep.i.i75.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  br label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.q, ptr %i.s, align 8, !tbaa !519, !noalias !2731
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = icmp eq ptr %1, %0
  br i1 %i.u, label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit.i.i.i, label %bb.g

end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4304)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i29, i64 26, i1 false), !alias.scope !4306
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 32 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !1052, !alias.scope !4304, !noalias !4301
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !1052, !alias.scope !4301, !noalias !4304
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1008, !alias.scope !4304, !noalias !4301
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !1008, !alias.scope !4301, !noalias !4304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !4304, !noalias !4301
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i29, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 56 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i.i30, label %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, label %.lr.ph.i.i.i.i27, !llvm.loop !4300

_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32: ; preds = %.lr.ph.i.i.i.i27, %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i31 = phi ptr [ %i.ab, %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aj, %.lr.ph.i.i.i.i27 ]
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN6duckdb20ListSegmentFunctionsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #47
  br label %_ZNSt12_Vector_baseIN6duckdb20ListSegmentFunctionsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ListSegmentFunctionsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit32, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !1009
  store ptr %.0.lcssa.i.i.i.i31, ptr %i.a, align 8, !tbaa !1007
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !1008
  ret void

bb.d:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE12_M_check_lenEmPKc.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %i.ao) #46 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #47
  invoke void @__cxa_rethrow() #49
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.am

bb.g:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #50
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1007 ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1009   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.271) #49
  unreachable

_ZNKSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #48 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.q, i8 0, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i16 4, ptr %i.r, align 8, !tbaa !997
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.0911.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4310)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i, i64 26, i1 false), !alias.scope !4312
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.u, align 8, !tbaa !1052, !alias.scope !4310, !noalias !4307
  store <2 x ptr> %i.v, ptr %i.t, align 8, !tbaa !1052, !alias.scope !4307, !noalias !4310
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1008, !alias.scope !4310, !noalias !4307
  store ptr %i.y, ptr %i.w, align 8, !tbaa !1008, !alias.scope !4307, !noalias !4310
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false), !alias.scope !4310, !noalias !4307
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4300

_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i15, label %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21, label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i16
  %.012.i.i.i.i17 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i16 ], [ %i.ab, %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  %.0911.i.i.i.i18 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i16 ], [ %1, %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4316)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i.i17, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i.i18, i64 26, i1 false), !alias.scope !4318
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i18, i64 32 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !1052, !alias.scope !4316, !noalias !4313
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !1052, !alias.scope !4313, !noalias !4316
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i18, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1008, !alias.scope !4316, !noalias !4313
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !1008, !alias.scope !4313, !noalias !4316
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !4316, !noalias !4313
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i18, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i17, i64 56 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i.i19, label %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21, label %.lr.ph.i.i.i.i16, !llvm.loop !4300

_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21: ; preds = %.lr.ph.i.i.i.i16, %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i20 = phi ptr [ %i.ab, %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.aj, %.lr.ph.i.i.i.i16 ]
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN6duckdb20ListSegmentFunctionsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #47
  br label %_ZNSt12_Vector_baseIN6duckdb20ListSegmentFunctionsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ListSegmentFunctionsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ListSegmentFunctionsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit21, %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !1009
  store ptr %.0.lcssa.i.i.i.i20, ptr %i.a, align 8, !tbaa !1007
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !1008
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !4319

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.j, ptr %i.h, align 4, !tbaa !3
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.r, align 4, !tbaa !3
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = icmp ult i32 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !4320

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !3
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4321

_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.i, ptr %i.aq, align 4, !tbaa !3
  %i.ar = icmp sgt i64 %i.l, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !4322

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !3   ; 5 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !3  ; 5 uses
  %i.az = icmp ult i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !3  ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp ult i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ay, ptr %0, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp ult i32 %i.ax, %i.ba
  %i.be = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ba, ptr %0, align 4, !tbaa !3
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ax, ptr %0, align 4, !tbaa !3
  store i32 %i.be, ptr %i.e, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp ult i32 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ax, ptr %0, align 4, !tbaa !3
  store i32 %i.bg, ptr %i.e, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp ult i32 %i.ay, %i.ba
  %i.bi = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.ba, ptr %0, align 4, !tbaa !3
  store i32 %i.bi, ptr %i.aw, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.ay, ptr %0, align 4, !tbaa !3
  store i32 %i.bi, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i32, ptr %.1.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bl = icmp ult i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !4323

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load i32, ptr %.114.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bo = icmp ult i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !4324

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bn, ptr %.1.i.i, align 4, !tbaa !3
  store i32 %i.bk, ptr %.114.i.i, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !4325

_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 64
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !4319

_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 4, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i32, ptr %.019.i.ptr, align 4, !tbaa !3 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.g = icmp ult i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !469

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.pn18.i, align 4, !tbaa !3 ; 2 uses
  %i.k = icmp ult i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i32 %i.l, ptr %.0912.i.i, align 4, !tbaa !3
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.0.i.i, align 4, !tbaa !3 ; 2 uses
  %i.n = icmp ult i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i, !llvm.loop !4326

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !3
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !4327

_ZSt16__insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_1
