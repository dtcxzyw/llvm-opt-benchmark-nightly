inline.NumInlined: 4651
inline.NumDeleted: 1750
begin_hunk_0_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a
bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #24, !noalias !70
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %88, i64 8
  %.pre375.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !95, !noalias !70 ; 8 uses
  %.not.i.i176.i.i = icmp eq ptr %.pre375.i.i, null
  br i1 %.not.i.i176.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ir = getelementptr inbounds nuw i8, ptr %.pre375.i.i, i64 8 ; 4 uses
  %i.is = load atomic i64, ptr %i.ir acquire, align 8 ; 2 uses
  %i.it = icmp eq i64 %i.is, 4294967297
  %i.iu = trunc i64 %i.is to i32                  ; 2 uses
  br i1 %i.it, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ir, align 8, !tbaa !134
  %i.iv = getelementptr inbounds nuw i8, ptr %.pre375.i.i, i64 12
  store i32 0, ptr %i.iv, align 4, !tbaa !136
  %i.iw = load ptr, ptr %.pre375.i.i, align 8, !tbaa !90
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %.pre375.i.i) #24, !inline_history !137
  %i.iz = load ptr, ptr %.pre375.i.i, align 8, !tbaa !90
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %.pre375.i.i) #24, !inline_history !137
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.jc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !70
  %.not.i.i.i.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jd = add nsw i32 %i.iu, -1
  store i32 %i.jd, ptr %i.ir, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.je = atomicrmw volatile add ptr %i.ir, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i = phi i32 [ %i.iu, %bb.ar ], [ %i.je, %bb.as ]
  %i.jf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.jf, label %bb.at, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !104

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre375.i.i) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ap, %bb.an, %.thread420.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #24, !noalias !70
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #24, !noalias !70
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt16TypeEEE, i64 16), ptr %84, align 8, !tbaa !90, !noalias !70
  %i.jg = getelementptr inbounds nuw i8, ptr %84, i64 168
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !95, !noalias !70 ; 8 uses
  %.not.i.i.i.i.i177.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i177.i.i, label %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 4 uses
  %i.jj = load atomic i64, ptr %i.ji acquire, align 8 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 4294967297
  %i.jl = trunc i64 %i.jj to i32                  ; 2 uses
  br i1 %i.jk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.ji, align 8, !tbaa !134
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  store i32 0, ptr %i.jm, align 4, !tbaa !136
  %i.jn = load ptr, ptr %i.jh, align 8, !tbaa !90
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #24, !inline_history !138
  %i.jq = load ptr, ptr %i.jh, align 8, !tbaa !90
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #24, !inline_history !138
  br label %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.jt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !70
  %.not.i.i.i.i.i.i178.i.i = icmp eq i8 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i178.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ju = add nsw i32 %i.jl, -1
  store i32 %i.ju, ptr %i.ji, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.jv = atomicrmw volatile add ptr %i.ji, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jl, %bb.ay ], [ %i.jv, %bb.az ]
  %i.jw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.jw, label %bb.ba, label %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i.i, !prof !104

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #24, !inline_history !139
  br label %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i.i

_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i.i: ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aw, %bb.au
  %i.jx = load ptr, ptr %i.z, align 8, !tbaa !95, !noalias !70 ; 8 uses
  %.not.i.i.i179.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i179.i.i, label %_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 4 uses
  %i.jz = load atomic i64, ptr %i.jy acquire, align 8 ; 2 uses
  %i.ka = icmp eq i64 %i.jz, 4294967297
  %i.kb = trunc i64 %i.jz to i32                  ; 2 uses
  br i1 %i.ka, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.jy, align 8, !tbaa !134
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i32 0, ptr %i.kc, align 4, !tbaa !136
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !90
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #24, !inline_history !140
  %i.kg = load ptr, ptr %i.jx, align 8, !tbaa !90
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #24, !inline_history !140
  br label %_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.kj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !70
  %.not.i.i.i.i.i.i = icmp eq i8 %i.kj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kk = add nsw i32 %i.kb, -1
  store i32 %i.kk, ptr %i.jy, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bf:                                            ; preds = %bb.bd
  %i.kl = atomicrmw volatile add ptr %i.jy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.kb, %bb.be ], [ %i.kl, %bb.bf ]
  %i.km = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.km, label %bb.bg, label %_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev.exit.i.i, !prof !104

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #24, !inline_history !139
  br label %_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev.exit.i.i

_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev.exit.i.i: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bc, %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i.i
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %84) #24, !inline_history !139
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #24, !noalias !70
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE.exit

bb.bh:                                            ; preds = %bb.am, %bb.v
  %.pn140.pn.pn.i.i = phi { ptr, i32 } [ %i.io, %bb.am ], [ %i.eo, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %85) #24, !noalias !70
  call void @_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %84) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #24, !noalias !70
  br label %common.resume

bb.bi:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #24, !noalias !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %91, i8 0, i64 16, i1 false), !noalias !70
  %i.kn = getelementptr inbounds nuw i8, ptr %91, i64 16
  store ptr %3, ptr %i.kn, align 8, !tbaa !87, !noalias !70
  %i.ko = getelementptr inbounds nuw i8, ptr %91, i64 24 ; 11 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ko, align 8, !tbaa !88, !noalias !70
  %i.kp = getelementptr inbounds nuw i8, ptr %91, i64 32 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %91, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, i8 0, i64 16, i1 false), !noalias !70
  store i64 64, ptr %i.kq, align 8, !tbaa !89, !noalias !70
  br i1 %i.n, label %bb.bj, label %bb.cc

bb.bj:                                            ; preds = %bb.bi
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !99, !noalias !70 ; 3 uses
  %i.kt = srem i64 %i.ks, 8                       ; 6 uses
  %i.ku = sdiv i64 %i.ks, 8                       ; 2 uses
  %.not338.i.i = icmp sgt i64 %i.f, 0
  br i1 %.not338.i.i, label %.lr.ph345.i.i, label %.critedge151.i.i

.lr.ph345.i.i:                                    ; preds = %bb.bj
  %i.kv = getelementptr inbounds i8, ptr %i.l, i64 %i.ku
  %.not.i.i180.i.i = icmp eq ptr %i.i, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i181.i.i = select i1 %.not.i.i180.i.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.i, !prof !104
  %i.kw = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i181.i.i, i64 %i.ku
  %i.kx = icmp eq i64 %i.kt, 0                    ; 2 uses
  %i.ky = sub nsw i64 128, %i.kt
  %spec.select.i256.i.i = select i1 %i.kx, i64 64, i64 %i.ky
  %i.kz = getelementptr inbounds nuw i8, ptr %91, i64 40 ; 11 uses
  br label %bb.bk

..loopexit325_crit_edge.i.i:                      ; preds = %bb.ca
  %102 = add i64 %.082343.i.i, %i.pa
  br label %.backedge.i.i, !llvm.loop !141

bb.bk:                                            ; preds = %.backedge.i.i, %.lr.ph345.i.i
  %.082343.i.i = phi i64 [ %i.ks, %.lr.ph345.i.i ], [ %.082.be.i.i, %.backedge.i.i ] ; 5 uses
  %.086342.i.i = phi i16 [ 0, %.lr.ph345.i.i ], [ %.086.be.i.i, %.backedge.i.i ] ; 6 uses
  %.sroa.19.0341.i.i = phi i64 [ %i.f, %.lr.ph345.i.i ], [ %.sroa.19.2.i.i, %.backedge.i.i ] ; 5 uses
  %.sroa.11.0340.i.i = phi ptr [ %i.kv, %.lr.ph345.i.i ], [ %.sroa.11.2.i.i, %.backedge.i.i ] ; 9 uses
  %.sroa.0282.0339.i.i = phi ptr [ %i.kw, %.lr.ph345.i.i ], [ %.sroa.0282.2.i.i, %.backedge.i.i ] ; 8 uses
  %.not.i255.i.i = icmp eq i64 %.sroa.19.0341.i.i, 0
  br i1 %.not.i255.i.i, label %_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.la = icmp slt i64 %.sroa.19.0341.i.i, %spec.select.i256.i.i
  br i1 %i.la, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %.sroa.speculated27.i264.i.i = call i64 @llvm.smin.i64(i64 %.sroa.19.0341.i.i, i64 64) ; 5 uses
  %i.lb = trunc i64 %.sroa.speculated27.i264.i.i to i16
  %sext.i265.i.i = shl i64 %.sroa.speculated27.i264.i.i, 48 ; 2 uses
  %i.lc = ashr exact i64 %sext.i265.i.i, 48       ; 3 uses
  %i.ld = icmp sgt i64 %i.lc, 0
  br i1 %i.ld, label %.lr.ph.i269.i.i.preheader, label %._crit_edge.i267.i.i

.lr.ph.i269.i.i.preheader:                        ; preds = %bb.bm
  %xtraiter294 = and i64 %.sroa.speculated27.i264.i.i, 1 ; 2 uses
  %i.le = icmp eq i64 %sext.i265.i.i, 281474976710656
  br i1 %i.le, label %.lr.ph.i269.i.i.epil.preheader, label %.lr.ph.i269.i.i.preheader.new

.lr.ph.i269.i.i.preheader.new:                    ; preds = %.lr.ph.i269.i.i.preheader
  %unroll_iter298 = sub nsw i64 %i.lc, %xtraiter294
  br label %.lr.ph.i269.i.i

._crit_edge.i267.i.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i269.i.i
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %._crit_edge.i267.i.i, label %.lr.ph.i269.i.i.epil.preheader

.lr.ph.i269.i.i.epil.preheader:                   ; preds = %._crit_edge.i267.i.i.loopexit.unr-lcssa, %.lr.ph.i269.i.i.preheader
  %.01532.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i269.i.i.preheader ], [ %i.mx, %._crit_edge.i267.i.i.loopexit.unr-lcssa ]
  %.01631.i.i.i.epil.init = phi i16 [ 0, %.lr.ph.i269.i.i.preheader ], [ %spec.select20.i270.i.i.1, %._crit_edge.i267.i.i.loopexit.unr-lcssa ]
  %lcmp.mod297 = trunc i64 %.sroa.speculated27.i264.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.lf = add nsw i64 %.01532.i.i.i.epil.init, %i.kt ; 2 uses
  %i.lg = lshr i64 %i.lf, 3                       ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i.i, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !98, !noalias !70
  %i.lj = trunc i64 %i.lf to i8
  %i.lk = and i8 %i.lj, 7
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i.i, i64 %i.lg
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !98, !noalias !70
  %i.ln = and i8 %i.lm, %i.li
  %i.lo = lshr i8 %i.ln, %i.lk
  %i.lp = and i8 %i.lo, 1
  %i.lq = zext nneg i8 %i.lp to i16
  %spec.select20.i270.i.i.epil = add i16 %.01631.i.i.i.epil.init, %i.lq
  br label %._crit_edge.i267.i.i

._crit_edge.i267.i.i:                             ; preds = %.lr.ph.i269.i.i.epil.preheader, %._crit_edge.i267.i.i.loopexit.unr-lcssa, %bb.bm
  %.016.lcssa.i268.i.i = phi i16 [ 0, %bb.bm ], [ %spec.select20.i270.i.i.1, %._crit_edge.i267.i.i.loopexit.unr-lcssa ], [ %spec.select20.i270.i.i.epil, %.lr.ph.i269.i.i.epil.preheader ]
  %i.lr = sdiv i16 %i.lb, 8
  %i.ls = sext i16 %i.lr to i64                   ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %.sroa.0282.0339.i.i, i64 %i.ls
  %i.lu = getelementptr inbounds i8, ptr %.sroa.11.0340.i.i, i64 %i.ls
  %i.lv = sub nsw i64 %.sroa.19.0341.i.i, %i.lc
  %i.lw = trunc i64 %.sroa.speculated27.i264.i.i to i32
  %i.lx = and i32 %i.lw, 65535
  br label %bb.br

.lr.ph.i269.i.i:                                  ; preds = %.lr.ph.i269.i.i, %.lr.ph.i269.i.i.preheader.new
  %.01532.i.i.i = phi i64 [ 0, %.lr.ph.i269.i.i.preheader.new ], [ %i.mx, %.lr.ph.i269.i.i ] ; 3 uses
  %.01631.i.i.i = phi i16 [ 0, %.lr.ph.i269.i.i.preheader.new ], [ %spec.select20.i270.i.i.1, %.lr.ph.i269.i.i ]
  %niter299 = phi i64 [ 0, %.lr.ph.i269.i.i.preheader.new ], [ %niter299.next.1, %.lr.ph.i269.i.i ]
  %i.ly = add nsw i64 %.01532.i.i.i, %i.kt        ; 2 uses
  %i.lz = lshr i64 %i.ly, 3                       ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i.i, i64 %i.lz
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !98, !noalias !70
  %i.mc = trunc i64 %i.ly to i8
  %i.md = and i8 %i.mc, 7
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i.i, i64 %i.lz
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !98, !noalias !70
  %i.mg = and i8 %i.mf, %i.mb
  %i.mh = lshr i8 %i.mg, %i.md
  %i.mi = and i8 %i.mh, 1
  %i.mj = zext nneg i8 %i.mi to i16
  %spec.select20.i270.i.i = add i16 %.01631.i.i.i, %i.mj
  %i.mk = or disjoint i64 %.01532.i.i.i, 1
  %i.ml = add nsw i64 %i.mk, %i.kt                ; 2 uses
  %i.mm = lshr i64 %i.ml, 3                       ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i.i, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !98, !noalias !70
  %i.mp = trunc i64 %i.ml to i8
  %i.mq = and i8 %i.mp, 7
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i.i, i64 %i.mm
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !98, !noalias !70
  %i.mt = and i8 %i.ms, %i.mo
  %i.mu = lshr i8 %i.mt, %i.mq
  %i.mv = and i8 %i.mu, 1
  %i.mw = zext nneg i8 %i.mv to i16
  %spec.select20.i270.i.i.1 = add i16 %spec.select20.i270.i.i, %i.mw ; 3 uses
  %i.mx = add nuw nsw i64 %.01532.i.i.i, 2        ; 2 uses
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %._crit_edge.i267.i.i.loopexit.unr-lcssa, label %.lr.ph.i269.i.i, !llvm.loop !142

bb.bn:                                            ; preds = %bb.bl
  %i.my = load i64, ptr %.sroa.0282.0339.i.i, align 1, !noalias !70 ; 2 uses
  br i1 %i.kx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.mz = load i64, ptr %.sroa.11.0340.i.i, align 1, !noalias !70
  %i.na = and i64 %i.mz, %i.my
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i.i, i64 8
  %i.nc = load i64, ptr %i.nb, align 1, !noalias !70
  %i.nd = load i64, ptr %.sroa.11.0340.i.i, align 1, !noalias !70
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i.i, i64 8
  %i.nf = load i64, ptr %i.ne, align 1, !noalias !70
  %i.ng = and i64 %i.nf, %i.nc
  %i.nh = and i64 %i.nd, %i.my
  %i.ni = call i64 @llvm.fshr.i64(i64 %i.ng, i64 %i.nh, i64 %i.kt)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink.i.i.i = phi i64 [ %i.ni, %bb.bp ], [ %i.na, %bb.bo ]
  %i.nj = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i.i.i)
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i.i, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i.i, i64 8
  %i.nm = add nsw i64 %.sroa.19.0341.i.i, -64
  %i.nn = trunc nuw nsw i64 %i.nj to i16
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge.i267.i.i
  %.sroa.0282.1.i.i = phi ptr [ %i.lt, %._crit_edge.i267.i.i ], [ %i.nk, %bb.bq ]
  %.sroa.11.1.i.i = phi ptr [ %i.lu, %._crit_edge.i267.i.i ], [ %i.nl, %bb.bq ]
  %.sroa.19.1.i.i = phi i64 [ %i.lv, %._crit_edge.i267.i.i ], [ %i.nm, %bb.bq ]
  %.sroa.0.0.i261.i.i = phi i32 [ %i.lx, %._crit_edge.i267.i.i ], [ 64, %bb.bq ]
  %.sroa.4.0.i262.i.i = phi i16 [ %.016.lcssa.i268.i.i, %._crit_edge.i267.i.i ], [ %i.nn, %bb.bq ]
  %i.no = zext i16 %.sroa.4.0.i262.i.i to i32
  %i.np = shl nuw i32 %i.no, 16
  %i.nq = or disjoint i32 %i.np, %.sroa.0.0.i261.i.i
  br label %_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i.i

_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i.i: ; preds = %bb.br, %bb.bk
  %.sroa.0282.2.i.i = phi ptr [ %.sroa.0282.0339.i.i, %bb.bk ], [ %.sroa.0282.1.i.i, %bb.br ]
  %.sroa.11.2.i.i = phi ptr [ %.sroa.11.0340.i.i, %bb.bk ], [ %.sroa.11.1.i.i, %bb.br ]
  %.sroa.19.2.i.i = phi i64 [ 0, %bb.bk ], [ %.sroa.19.1.i.i, %bb.br ]
  %.sroa.0.0.insert.insert.i263.i.i = phi i32 [ 0, %bb.bk ], [ %i.nq, %bb.br ] ; 3 uses
  %.sroa.0276.0.extract.trunc.i.i = trunc i32 %.sroa.0.0.insert.insert.i263.i.i to i16 ; 9 uses
  %.sroa.8.0.extract.shift.i.i = lshr i32 %.sroa.0.0.insert.insert.i263.i.i, 16 ; 2 uses
  %.sroa.8.0.extract.trunc.i.i = trunc nuw i32 %.sroa.8.0.extract.shift.i.i to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #24, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #24, !noalias !70
  %i.nr = sext i16 %.sroa.8.0.extract.trunc.i.i to i64
  %i.ns = shl nsw i64 %i.nr, 1
  %i.nt = load i64, ptr %i.kz, align 8, !tbaa !131, !noalias !143
  %i.nu = add nsw i64 %i.ns, %i.nt                ; 2 uses
  %i.nv = load i64, ptr %i.kp, align 8, !tbaa !148, !noalias !143 ; 2 uses
  %.not.i.i185.i.i = icmp sgt i64 %i.nu, %i.nv
  br i1 %.not.i.i185.i.i, label %bb.bs, label %_ZN5arrow6StatusD2Ev.exit188.thread.i.i

_ZN5arrow6StatusD2Ev.exit188.thread.i.i:          ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #24, !noalias !70
  br label %_ZN5arrow6StatusD2Ev.exit194.i.i

bb.bs:                                            ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i.i
  %i.nw = shl nsw i64 %i.nv, 1
  %.sroa.speculated.i.i.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.nu, i64 %i.nw)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %93, ptr noundef nonnull align 8 dereferenceable(56) %91, i64 noundef %.sroa.speculated.i.i.i.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit188.i.i unwind label %bb.bv, !noalias !70

_ZN5arrow6StatusD2Ev.exit188.i.i:                 ; preds = %bb.bs
  %.pr317.i.i = load ptr, ptr %93, align 8, !tbaa !113, !noalias !70 ; 2 uses
  store ptr %.pr317.i.i, ptr %92, align 8, !tbaa !113, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #24, !noalias !70
  %i.nx = icmp eq ptr %.pr317.i.i, null
  br i1 %i.nx, label %_ZN5arrow6StatusD2Ev.exit194.i.i, label %bb.bt, !prof !116

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit188.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %92) #24
  %i.ny = load ptr, ptr %92, align 8, !tbaa !113, !noalias !70 ; 2 uses
  %.not.i189.i.i = icmp eq ptr %i.ny, null
  br i1 %.not.i189.i.i, label %.thread318.i.i, label %bb.bu, !prof !117

bb.bu:                                            ; preds = %bb.bt
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !118, !range !127, !noundef !128
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %.thread318.i.i, label %103

103:                                              ; preds = %bb.bu
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %92) #24
  br label %.thread318.i.i

.thread318.i.i:                                   ; preds = %103, %bb.bu, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #24, !noalias !70
  br label %bb.ee

bb.bv:                                            ; preds = %bb.bs
  %i.oc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #24, !noalias !70
  br label %bb.el

_ZN5arrow6StatusD2Ev.exit194.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit188.i.i, %_ZN5arrow6StatusD2Ev.exit188.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #24, !noalias !70
  %i.od = icmp eq i16 %.sroa.0276.0.extract.trunc.i.i, %.sroa.8.0.extract.trunc.i.i
  br i1 %i.od, label %.preheader323.i.i.a, label %bb.bw

.preheader323.i.i.a:                              ; preds = %_ZN5arrow6StatusD2Ev.exit194.i.i
  %i.oe = sext i16 %.sroa.0276.0.extract.trunc.i.i to i64 ; 2 uses
  %i.of = icmp sgt i16 %.sroa.0276.0.extract.trunc.i.i, 0
  br i1 %i.of, label %.lr.ph335.preheader.i.i, label %._crit_edge.i.i

.lr.ph335.preheader.i.i:                          ; preds = %.preheader323.i.i.a
  %.pre.i.i = load i64, ptr %i.kz, align 8, !tbaa !131, !noalias !70 ; 2 uses
  %i.og = icmp eq i16 %.sroa.0276.0.extract.trunc.i.i, 1
  br i1 %i.og, label %.lr.ph335.i.i.epil.preheader, label %.lr.ph335.preheader.i.i.new

.lr.ph335.preheader.i.i.new:                      ; preds = %.lr.ph335.preheader.i.i
  %unroll_iter306 = and i64 %i.oe, 32766
  br label %.lr.ph335.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph335.i.i
  %i.oh = and i16 %.sroa.0276.0.extract.trunc.i.i, 1
  %lcmp.mod303.not = icmp eq i16 %i.oh, 0
  br i1 %lcmp.mod303.not, label %._crit_edge.i.i, label %.lr.ph335.i.i.epil.preheader

.lr.ph335.i.i.epil.preheader:                     ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph335.preheader.i.i
  %.epil.init302 = phi i64 [ %.pre.i.i, %.lr.ph335.preheader.i.i ], [ %i.oy, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.187333.i.i.epil.init = phi i16 [ %.086342.i.i, %.lr.ph335.preheader.i.i ], [ %i.ou, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod305 = trunc i32 %.sroa.0.0.insert.insert.i263.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod305)
  %i.oi = add i16 %.187333.i.i.epil.init, 1
  %i.oj = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !70
  %i.ok = getelementptr inbounds i8, ptr %i.oj, i64 %.epil.init302
  store i16 %.187333.i.i.epil.init, ptr %i.ok, align 1, !noalias !70
  %i.ol = load i64, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  %i.om = add nsw i64 %i.ol, 2
  store i64 %i.om, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph335.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %.preheader323.i.i.a
  %.187.lcssa.i.i = phi i16 [ %.086342.i.i, %.preheader323.i.i.a ], [ %i.ou, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.oi, %.lr.ph335.i.i.epil.preheader ]
  %i.on = add nsw i64 %.082343.i.i, %i.oe
  br label %.backedge.i.i

.lr.ph335.i.i:                                    ; preds = %.lr.ph335.i.i, %.lr.ph335.preheader.i.i.new
  %i.oo = phi i64 [ %.pre.i.i, %.lr.ph335.preheader.i.i.new ], [ %i.oy, %.lr.ph335.i.i ]
  %.187333.i.i = phi i16 [ %.086342.i.i, %.lr.ph335.preheader.i.i.new ], [ %i.ou, %.lr.ph335.i.i ] ; 3 uses
  %niter307 = phi i64 [ 0, %.lr.ph335.preheader.i.i.new ], [ %niter307.next.1, %.lr.ph335.i.i ]
  %i.op = add i16 %.187333.i.i, 1
  %i.oq = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !70
  %i.or = getelementptr inbounds i8, ptr %i.oq, i64 %i.oo
  store i16 %.187333.i.i, ptr %i.or, align 1, !noalias !70
  %i.os = load i64, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  %i.ot = add nsw i64 %i.os, 2                    ; 2 uses
  store i64 %i.ot, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  %i.ou = add i16 %.187333.i.i, 2                 ; 3 uses
  %i.ov = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !70
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 %i.ot
  store i16 %i.op, ptr %i.ow, align 1, !noalias !70
  %i.ox = load i64, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  %i.oy = add nsw i64 %i.ox, 2                    ; 3 uses
  store i64 %i.oy, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  %niter307.next.1 = add i64 %niter307, 2         ; 2 uses
  %niter307.ncmp.1 = icmp eq i64 %niter307.next.1, %unroll_iter306
  br i1 %niter307.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph335.i.i, !llvm.loop !149

bb.bw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit194.i.i
  %i.oz = icmp eq i32 %.sroa.8.0.extract.shift.i.i, 0
  br i1 %i.oz, label %bb.cb, label %.preheader324.i.i

.preheader324.i.i:                                ; preds = %bb.bw
  %i.pa = sext i16 %.sroa.0276.0.extract.trunc.i.i to i64 ; 2 uses
  %i.pb = icmp sgt i16 %.sroa.0276.0.extract.trunc.i.i, 0
  br i1 %i.pb, label %.lr.ph.i.i, label %.backedge.i.i, !llvm.loop !141

.lr.ph.i.i:                                       ; preds = %.preheader324.i.i
  br label %bb.bx, !llvm.loop !141

bb.bx:                                            ; preds = %bb.ca, %.lr.ph.i.i
  %.080331.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.pu, %bb.ca ]
  %.183330.i.i = phi i64 [ %.082343.i.i, %.lr.ph.i.i ], [ %i.pt, %bb.ca ] ; 3 uses
  %.288329.i.i = phi i16 [ %.086342.i.i, %.lr.ph.i.i ], [ %i.ps, %bb.ca ] ; 2 uses
  %i.pc = lshr i64 %.183330.i.i, 3                ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !98, !noalias !70
  %i.pf = trunc i64 %.183330.i.i to i8
  %i.pg = and i8 %i.pf, 7                         ; 2 uses
  %i.ph = lshr i8 %i.pe, %i.pg
  %i.pi = trunc i8 %i.ph to i1
  br i1 %i.pi, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.pj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.pc
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !98, !noalias !70
  %i.pl = lshr i8 %i.pk, %i.pg
  %i.pm = trunc i8 %i.pl to i1
  br i1 %i.pm, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.pn = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !70
  %i.po = load i64, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  %i.pp = getelementptr inbounds i8, ptr %i.pn, i64 %i.po
  store i16 %.288329.i.i, ptr %i.pp, align 1, !noalias !70
  %i.pq = load i64, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  %i.pr = add nsw i64 %i.pq, 2
  store i64 %i.pr, ptr %i.kz, align 8, !tbaa !131, !noalias !70
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %i.ps = add i16 %.288329.i.i, 1                 ; 2 uses
  %i.pt = add nsw i64 %.183330.i.i, 1
  %i.pu = add nuw nsw i64 %.080331.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.pu, %i.pa
  br i1 %exitcond.not.i.i, label %..loopexit325_crit_edge.i.i, label %bb.bx, !llvm.loop !150

bb.cb:                                            ; preds = %bb.bw
  %i.pv = add i16 %.086342.i.i, %.sroa.0276.0.extract.trunc.i.i
  %i.pw = sext i16 %.sroa.0276.0.extract.trunc.i.i to i64
  %i.px = add nsw i64 %.082343.i.i, %i.pw
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.cb, %.preheader324.i.i, %._crit_edge.i.i, %..loopexit325_crit_edge.i.i
  %.086.be.i.i = phi i16 [ %i.pv, %bb.cb ], [ %.187.lcssa.i.i, %._crit_edge.i.i ], [ %i.ps, %..loopexit325_crit_edge.i.i ], [ %.086342.i.i, %.preheader324.i.i ] ; 2 uses
  %.082.be.i.i = phi i64 [ %i.px, %bb.cb ], [ %i.on, %._crit_edge.i.i ], [ %102, %..loopexit325_crit_edge.i.i ], [ %.082343.i.i, %.preheader324.i.i ]
  %i.py = zext i16 %.086.be.i.i to i64
  %i.pz = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !70
  %.not.i.i = icmp sgt i64 %i.pz, %i.py
  br i1 %.not.i.i, label %bb.bk, label %.critedge151.i.i, !llvm.loop !141

bb.cc:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #24, !noalias !70
  %i.qa = icmp eq ptr %i.i, null
  br i1 %i.qa, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #24, !noalias !151
  %i.qb = shl i64 %i.f, 1                         ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %91, i64 40 ; 7 uses
  %.not.i.i.i.i195.i.i = icmp sgt i64 %i.qb, 0
  br i1 %.not.i.i.i.i195.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i.i:         ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #24, !noalias !151
  br label %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i.i:                ; preds = %bb.cd
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %82, ptr noundef nonnull align 8 dereferenceable(56) %91, i64 noundef %i.qb, i1 noundef zeroext false)
          to label %.noexc196.i.i unwind label %.loopexit.split-lp.i.i, !noalias !70

.noexc196.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %82, align 8, !tbaa !113, !noalias !151 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #24, !noalias !151
  %i.qd = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %i.qd, label %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit202.thread422.i.i, !prof !156

_ZN5arrow6StatusD2Ev.exit13.i.i.i.i:              ; preds = %.noexc196.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i.i
  %i.qe = icmp sgt i64 %i.f, 0
  br i1 %i.qe, label %.lr.ph.i.preheader.i.i.i, label %_ZN5arrow6StatusD2Ev.exit208.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i
  %.pre9.i.i.i = load i64, ptr %i.qc, align 8, !tbaa !131, !noalias !151 ; 2 uses
  %xtraiter287.a = and i64 %i.f, 1
  %i.qf = icmp eq i64 %i.f, 1
  br i1 %i.qf, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter292 = and i64 %i.f, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.qg = phi i64 [ %.pre9.i.i.i, %.lr.ph.i.preheader.i.i.i.new ], [ %i.qr, %.lr.ph.i.i.i.i ]
  %.015.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.qs, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter293 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter293.next.1, %.lr.ph.i.i.i.i ]
  %i.qh = trunc i64 %.015.i.i.i.i to i16
  %i.qi = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !151
  %i.qj = getelementptr inbounds i8, ptr %i.qi, i64 %i.qg
  store i16 %i.qh, ptr %i.qj, align 1, !noalias !151
  %i.qk = load i64, ptr %i.qc, align 8, !tbaa !131, !noalias !151
  %i.ql = add nsw i64 %i.qk, 2                    ; 2 uses
  store i64 %i.ql, ptr %i.qc, align 8, !tbaa !131, !noalias !151
  %i.qm = trunc i64 %.015.i.i.i.i to i16
  %i.qn = or disjoint i16 %i.qm, 1
  %i.qo = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !151
  %i.qp = getelementptr inbounds i8, ptr %i.qo, i64 %i.ql
  store i16 %i.qn, ptr %i.qp, align 1, !noalias !151
  %i.qq = load i64, ptr %i.qc, align 8, !tbaa !131, !noalias !151
  %i.qr = add nsw i64 %i.qq, 2                    ; 3 uses
  store i64 %i.qr, ptr %i.qc, align 8, !tbaa !131, !noalias !151
  %i.qs = add nuw nsw i64 %.015.i.i.i.i, 2        ; 2 uses
  %niter293.next.1 = add i64 %niter293, 2         ; 2 uses
  %niter293.ncmp.1 = icmp eq i64 %niter293.next.1, %unroll_iter292
  br i1 %niter293.ncmp.1, label %_ZN5arrow6StatusD2Ev.exit208.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !157

bb.ce:                                            ; preds = %bb.cc
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.qu = load i64, ptr %i.qt, align 8, !tbaa !99, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #24, !noalias !158
  invoke void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %83, ptr noundef nonnull %i.i, i64 noundef %i.qu, i64 noundef %i.f)
          to label %.noexc197.i.i unwind label %.loopexit.split-lp.i.i, !noalias !70

.noexc197.i.i:                                    ; preds = %bb.ce
  %i.qv = invoke { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %83)
          to label %.noexc198.i.i unwind label %.loopexit.split-lp.i.i, !noalias !70 ; 2 uses

.noexc198.i.i:                                    ; preds = %.noexc197.i.i
  %i.qw = extractvalue { i64, i64 } %i.qv, 1      ; 2 uses
  %i.qx = icmp eq i64 %i.qw, 0
  br i1 %i.qx, label %_ZN5arrow6StatusD2Ev.exit202.thread424.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc198.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %91, i64 40 ; 8 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.noexc200.i.i, %.lr.ph.i.i.i
  %i.qz = phi i64 [ %i.qw, %.lr.ph.i.i.i ], [ %i.sg, %.noexc200.i.i ] ; 6 uses
  %i.ra = phi { i64, i64 } [ %i.qv, %.lr.ph.i.i.i ], [ %i.sf, %.noexc200.i.i ]
  %i.rb = extractvalue { i64, i64 } %i.ra, 0      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #24, !noalias !159
  %i.rc = shl i64 %i.qz, 1
  %i.rd = load i64, ptr %i.qy, align 8, !tbaa !131, !noalias !162
  %i.re = add nsw i64 %i.rd, %i.rc                ; 2 uses
  %i.rf = load i64, ptr %i.kp, align 8, !tbaa !148, !noalias !162 ; 2 uses
  %.not.i.i.i15.i.i.i = icmp sgt i64 %i.re, %i.rf
  br i1 %.not.i.i.i15.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i22.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i.i

_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i.i:       ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #24, !noalias !159
  br label %_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i

_ZN5arrow6StatusD2Ev.exit.i22.i.i.i:              ; preds = %bb.cf
  %i.rg = shl nsw i64 %i.rf, 1
  %.sroa.speculated.i.i.i.i23.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.re, i64 %i.rg)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %81, ptr noundef nonnull align 8 dereferenceable(56) %91, i64 noundef %.sroa.speculated.i.i.i.i23.i.i.i, i1 noundef zeroext false)
          to label %.noexc199.i.i unwind label %.loopexit326.i.i, !noalias !70

.noexc199.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i22.i.i.i
  %.pr.i24.i.i.i = load ptr, ptr %81, align 8, !tbaa !113, !noalias !159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #24, !noalias !159
  %i.rh = icmp eq ptr %.pr.i24.i.i.i, null
  br i1 %i.rh, label %_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i, label %_ZN5arrow6StatusD2Ev.exit202.i.i, !prof !156

_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i:            ; preds = %.noexc199.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i.i
  %i.ri = icmp sgt i64 %i.qz, 0
  br i1 %i.ri, label %.lr.ph.i19.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i19.preheader.i.i.i:                       ; preds = %_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i
  %.pre.i.i.i = load i64, ptr %i.qy, align 8, !tbaa !131, !noalias !159 ; 2 uses
  %xtraiter283 = and i64 %i.qz, 1
  %i.rj = icmp eq i64 %i.qz, 1
  br i1 %i.rj, label %.lr.ph.i19.i.i.i.epil.preheader, label %.lr.ph.i19.preheader.i.i.i.new

.lr.ph.i19.preheader.i.i.i.new:                   ; preds = %.lr.ph.i19.preheader.i.i.i
  %unroll_iter = and i64 %i.qz, 9223372036854775806
  br label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.lr.ph.i19.i.i.i, %.lr.ph.i19.preheader.i.i.i.new
  %i.rk = phi i64 [ %.pre.i.i.i, %.lr.ph.i19.preheader.i.i.i.new ], [ %i.rx, %.lr.ph.i19.i.i.i ]
  %.015.i20.i.i.i = phi i64 [ 0, %.lr.ph.i19.preheader.i.i.i.new ], [ %i.ry, %.lr.ph.i19.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i19.preheader.i.i.i.new ], [ %niter.next.1, %.lr.ph.i19.i.i.i ]
  %i.rl = add nsw i64 %.015.i20.i.i.i, %i.rb
  %i.rm = trunc i64 %i.rl to i16
  %i.rn = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !159
  %i.ro = getelementptr inbounds i8, ptr %i.rn, i64 %i.rk
  store i16 %i.rm, ptr %i.ro, align 1, !noalias !159
  %i.rp = load i64, ptr %i.qy, align 8, !tbaa !131, !noalias !159
  %i.rq = add nsw i64 %i.rp, 2                    ; 2 uses
  store i64 %i.rq, ptr %i.qy, align 8, !tbaa !131, !noalias !159
  %i.rr = or disjoint i64 %.015.i20.i.i.i, 1
  %i.rs = add nsw i64 %i.rr, %i.rb
  %i.rt = trunc i64 %i.rs to i16
  %i.ru = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !159
  %i.rv = getelementptr inbounds i8, ptr %i.ru, i64 %i.rq
  store i16 %i.rt, ptr %i.rv, align 1, !noalias !159
  %i.rw = load i64, ptr %i.qy, align 8, !tbaa !131, !noalias !159
  %i.rx = add nsw i64 %i.rw, 2                    ; 3 uses
  store i64 %i.rx, ptr %i.qy, align 8, !tbaa !131, !noalias !159
  %i.ry = add nuw nsw i64 %.015.i20.i.i.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i.i, !llvm.loop !157

.loopexit.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i19.i.i.i
  %lcmp.mod285.not.a = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod285.not.a, label %.loopexit.i.i.i, label %.lr.ph.i19.i.i.i.epil.preheader

.lr.ph.i19.i.i.i.epil.preheader:                  ; preds = %.loopexit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i19.preheader.i.i.i
  %.epil.init = phi i64 [ %.pre.i.i.i, %.lr.ph.i19.preheader.i.i.i ], [ %i.rx, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %.015.i20.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i19.preheader.i.i.i ], [ %i.ry, %.loopexit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod286 = trunc i64 %i.qz to i1
  call void @llvm.assume(i1 %lcmp.mod286)
  %i.rz = add nsw i64 %.015.i20.i.i.i.epil.init, %i.rb
  %i.sa = trunc i64 %i.rz to i16
  %i.sb = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !159
  %i.sc = getelementptr inbounds i8, ptr %i.sb, i64 %.epil.init
  store i16 %i.sa, ptr %i.sc, align 1, !noalias !159
  %i.sd = load i64, ptr %i.qy, align 8, !tbaa !131, !noalias !159
  %i.se = add nsw i64 %i.sd, 2
  store i64 %i.se, ptr %i.qy, align 8, !tbaa !131, !noalias !159
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i19.i.i.i.epil.preheader, %.loopexit.i.i.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit13.i17.i.i.i
  %i.sf = invoke { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %83)
          to label %.noexc200.i.i unwind label %.loopexit326.i.i, !noalias !70 ; 2 uses

.noexc200.i.i:                                    ; preds = %.loopexit.i.i.i
  %i.sg = extractvalue { i64, i64 } %i.sf, 1      ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %_ZN5arrow6StatusD2Ev.exit202.thread424.i.i, label %bb.cf

_ZN5arrow6StatusD2Ev.exit202.thread424.i.i:       ; preds = %.noexc200.i.i, %.noexc198.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #24, !noalias !158
  br label %_ZN5arrow6StatusD2Ev.exit208.i.i

_ZN5arrow6StatusD2Ev.exit202.i.i:                 ; preds = %.noexc199.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #24, !noalias !158
  br label %_ZN5arrow6StatusD2Ev.exit202.thread422.i.i

_ZN5arrow6StatusD2Ev.exit202.thread422.i.i:       ; preds = %_ZN5arrow6StatusD2Ev.exit202.i.i, %.noexc196.i.i
  %.pr.i24.i.lcssa.sink.i.i = phi ptr [ %.pr.i24.i.i.i, %_ZN5arrow6StatusD2Ev.exit202.i.i ], [ %.pr.i.i.i.i, %.noexc196.i.i ]
  store ptr %.pr.i24.i.lcssa.sink.i.i, ptr %94, align 8, !tbaa !113, !noalias !70
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %94) #24
  %i.si = load ptr, ptr %94, align 8, !tbaa !113, !noalias !70 ; 2 uses
  %.not.i203.i.i = icmp eq ptr %i.si, null
  br i1 %.not.i203.i.i, label %_ZN5arrow6StatusD2Ev.exit204.i.i, label %bb.cg, !prof !117

bb.cg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit202.thread422.i.i
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 1
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !118, !range !127, !noundef !128
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %_ZN5arrow6StatusD2Ev.exit204.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %94) #24
  br label %_ZN5arrow6StatusD2Ev.exit204.i.i

_ZN5arrow6StatusD2Ev.exit204.i.i:                 ; preds = %bb.ch, %bb.cg, %_ZN5arrow6StatusD2Ev.exit202.thread422.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #24, !noalias !70
  br label %bb.ee

.loopexit326.i.i:                                 ; preds = %.loopexit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i22.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp.i.i:                           ; preds = %.noexc197.i.i, %bb.ce, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit326.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit326.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #24, !noalias !70
  br label %bb.el

_ZN5arrow6StatusD2Ev.exit208.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod290.not = icmp eq i64 %xtraiter287.a, 0
  br i1 %lcmp.mod290.not, label %_ZN5arrow6StatusD2Ev.exit208.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5arrow6StatusD2Ev.exit208.i.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init289 = phi i64 [ %.pre9.i.i.i, %.lr.ph.i.preheader.i.i.i ], [ %i.qr, %_ZN5arrow6StatusD2Ev.exit208.i.i.loopexit.unr-lcssa ]
  %.015.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.qs, %_ZN5arrow6StatusD2Ev.exit208.i.i.loopexit.unr-lcssa ]
  %lcmp.mod291 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.sm = trunc i64 %.015.i.i.i.i.epil.init to i16
  %i.sn = load ptr, ptr %i.ko, align 8, !tbaa !88, !noalias !151
  %i.so = getelementptr inbounds i8, ptr %i.sn, i64 %.epil.init289
  store i16 %i.sm, ptr %i.so, align 1, !noalias !151
  %i.sp = load i64, ptr %i.qc, align 8, !tbaa !131, !noalias !151
  %i.sq = add nsw i64 %i.sp, 2
  store i64 %i.sq, ptr %i.qc, align 8, !tbaa !131, !noalias !151
  br label %_ZN5arrow6StatusD2Ev.exit208.i.i

_ZN5arrow6StatusD2Ev.exit208.i.i:                 ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5arrow6StatusD2Ev.exit208.i.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit202.thread424.i.i, %_ZN5arrow6StatusD2Ev.exit13.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #24, !noalias !70
  br label %.critedge151.i.i

.critedge151.i.i:                                 ; preds = %.backedge.i.i, %_ZN5arrow6StatusD2Ev.exit208.i.i, %bb.bj
  %i.sr = getelementptr inbounds nuw i8, ptr %91, i64 40
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !131, !noalias !70
  %i.st = lshr i64 %i.ss, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #24, !noalias !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %95, i8 0, i64 16, i1 false), !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #24, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #24, !noalias !70
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %97, ptr noundef nonnull align 8 dereferenceable(56) %91, ptr noundef nonnull %95, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit211.i.i unwind label %bb.cm, !noalias !70

_ZN5arrow6StatusD2Ev.exit211.i.i:                 ; preds = %.critedge151.i.i
  %i.su = load ptr, ptr %97, align 8, !tbaa !113, !noalias !70 ; 2 uses
  store ptr %i.su, ptr %96, align 8, !tbaa !113, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #24, !noalias !70
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %_ZN5arrow6StatusD2Ev.exit217.i.i, label %bb.cj, !prof !117

bb.cj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit211.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %96) #24
  %i.sw = load ptr, ptr %96, align 8, !tbaa !113, !noalias !70 ; 2 uses
  %.not.i212.i.i = icmp eq ptr %i.sw, null
  br i1 %.not.i212.i.i, label %_ZN5arrow6StatusD2Ev.exit213.i.i, label %bb.ck, !prof !117

bb.ck:                                            ; preds = %bb.cj
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 1
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !118, !range !127, !noundef !128
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %_ZN5arrow6StatusD2Ev.exit213.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %96) #24
  br label %_ZN5arrow6StatusD2Ev.exit213.i.i

_ZN5arrow6StatusD2Ev.exit213.i.i:                 ; preds = %bb.cl, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #24, !noalias !70
  br label %bb.dw

bb.cm:                                            ; preds = %.critedge151.i.i
  %i.ta = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #24, !noalias !70
  br label %bb.ed

_ZN5arrow6StatusD2Ev.exit217.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit211.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a
  br i1 %i.vs, label %bb.de, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !104

bb.de:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vd) #24, !noalias !70
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.i.i, %bb.da, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i.i
  %i.vt = load ptr, ptr %i.ty, align 8, !tbaa !95, !noalias !70 ; 8 uses
  %.not.i.i233.1.i.i = icmp eq ptr %i.vt, null
  br i1 %.not.i.i233.1.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i.i, label %bb.df

bb.df:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 8 ; 4 uses
  %i.vv = load atomic i64, ptr %i.vu acquire, align 8, !noalias !70 ; 2 uses
  %i.vw = icmp eq i64 %i.vv, 4294967297
  %i.vx = trunc i64 %i.vv to i32                  ; 2 uses
  br i1 %i.vw, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !70
  %.not.i.i.i234.1.i.i = icmp eq i8 %i.vy, 0
  br i1 %.not.i.i.i234.1.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.vz = add nsw i32 %i.vx, -1
  store i32 %i.vz, ptr %i.vu, align 4, !tbaa !3, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i.i

bb.di:                                            ; preds = %bb.dg
  %i.wa = atomicrmw volatile add ptr %i.vu, i32 -1 acq_rel, align 4, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i.i: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i236.1.i.i = phi i32 [ %i.vx, %bb.dh ], [ %i.wa, %bb.di ]
  %i.wb = icmp eq i32 %.0.i.i.i.i236.1.i.i, 1
  br i1 %i.wb, label %bb.dj, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i.i, !prof !104

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #24, !noalias !70
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i.i

bb.dk:                                            ; preds = %bb.df
  store i32 0, ptr %i.vu, align 8, !tbaa !134, !noalias !70
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vt, i64 12
  store i32 0, ptr %i.wc, align 4, !tbaa !136, !noalias !70
  %i.wd = load ptr, ptr %i.vt, align 8, !tbaa !90, !noalias !70
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wf = load ptr, ptr %i.we, align 8, !noalias !70
  call void %i.wf(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #24, !noalias !70, !inline_history !199
  %i.wg = load ptr, ptr %i.vt, align 8, !tbaa !90, !noalias !70
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 24
  %i.wi = load ptr, ptr %i.wh, align 8, !noalias !70
  call void %i.wi(ptr noundef nonnull align 8 dereferenceable(16) %i.vt) #24, !noalias !70, !inline_history !199
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i.i: ; preds = %bb.dk, %bb.dj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #24, !noalias !70
  %i.wj = load ptr, ptr %i.tc, align 8, !tbaa !95, !noalias !70 ; 8 uses
  %.not.i.i237.i.i = icmp eq ptr %i.wj, null
  br i1 %.not.i.i237.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i.i
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8 ; 4 uses
  %i.wl = load atomic i64, ptr %i.wk acquire, align 8, !noalias !70 ; 2 uses
  %i.wm = icmp eq i64 %i.wl, 4294967297
  %i.wn = trunc i64 %i.wl to i32                  ; 2 uses
  br i1 %i.wm, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.wk, align 8, !tbaa !134, !noalias !70
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wj, i64 12
  store i32 0, ptr %i.wo, align 4, !tbaa !136, !noalias !70
  %i.wp = load ptr, ptr %i.wj, align 8, !tbaa !90, !noalias !70
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8, !noalias !70
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #24, !noalias !70, !inline_history !200
  %i.ws = load ptr, ptr %i.wj, align 8, !tbaa !90, !noalias !70
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  %i.wu = load ptr, ptr %i.wt, align 8, !noalias !70
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #24, !noalias !70, !inline_history !200
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.dn:                                            ; preds = %bb.dl
  %i.wv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !70
  %.not.i.i.i238.i.i = icmp eq i8 %i.wv, 0
  br i1 %.not.i.i.i238.i.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ww = add nsw i32 %i.wn, -1
  store i32 %i.ww, ptr %i.wk, align 4, !tbaa !3, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.wx = atomicrmw volatile add ptr %i.wk, i32 -1 acq_rel, align 4, !noalias !70
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i.i: ; preds = %bb.dp, %bb.do
  %.0.i.i.i.i240.i.i = phi i32 [ %i.wn, %bb.do ], [ %i.wx, %bb.dp ]
  %i.wy = icmp eq i32 %.0.i.i.i.i240.i.i, 1
  br i1 %i.wy, label %bb.dq, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !104

bb.dq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wj) #24, !noalias !70
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.dq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i.i, %bb.dm, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #24, !noalias !70
  br label %bb.dw

bb.dr:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit217.i.i
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.ds:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i.i
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i.i
  %i.xb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %99) #24, !noalias !70
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn131.i.i = phi { ptr, i32 } [ %i.xb, %bb.dt ], [ %i.xa, %bb.ds ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.tl) #24, !noalias !70
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %100) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #24, !noalias !70
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %98) #24, !noalias !70
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dr
  %.pn131.pn.i.i = phi { ptr, i32 } [ %.pn131.i.i, %bb.du ], [ %i.wz, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #24, !noalias !70
  br label %bb.ed

bb.dw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit213.i.i
  %i.xc = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !95, !noalias !70 ; 8 uses
  %.not.i.i241.i.i = icmp eq ptr %i.xd, null
  br i1 %.not.i.i241.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 4 uses
  %i.xf = load atomic i64, ptr %i.xe acquire, align 8 ; 2 uses
  %i.xg = icmp eq i64 %i.xf, 4294967297
  %i.xh = trunc i64 %i.xf to i32                  ; 2 uses
  br i1 %i.xg, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i32 0, ptr %i.xe, align 8, !tbaa !134
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xd, i64 12
  store i32 0, ptr %i.xi, align 4, !tbaa !136
  %i.xj = load ptr, ptr %i.xd, align 8, !tbaa !90
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8
  call void %i.xl(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #24, !inline_history !199
  %i.xm = load ptr, ptr %i.xd, align 8, !tbaa !90
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8
  call void %i.xo(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #24, !inline_history !199
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.xp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !70
  %.not.i.i.i242.i.i = icmp eq i8 %i.xp, 0
  br i1 %.not.i.i.i242.i.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.xq = add nsw i32 %i.xh, -1
  store i32 %i.xq, ptr %i.xe, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.xr = atomicrmw volatile add ptr %i.xe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i244.i.i = phi i32 [ %i.xh, %bb.ea ], [ %i.xr, %bb.eb ]
  %i.xs = icmp eq i32 %.0.i.i.i.i244.i.i, 1
  br i1 %i.xs, label %bb.ec, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i.i, !prof !104

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xd) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i.i: ; preds = %bb.ec, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i.i, %bb.dy, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #24, !noalias !70
  br label %bb.ee

bb.ed:                                            ; preds = %bb.dv, %bb.cm
  %.pn131.pn.pn.i.i = phi { ptr, i32 } [ %.pn131.pn.i.i, %bb.dv ], [ %i.ta, %bb.cm ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %95) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #24, !noalias !70
  br label %bb.el

bb.ee:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i.i, %_ZN5arrow6StatusD2Ev.exit204.i.i, %.thread318.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !95, !noalias !70 ; 8 uses
  %.not.i.i.i.i246.i.i = icmp eq ptr %i.xu, null
  br i1 %.not.i.i.i.i246.i.i, label %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8 ; 4 uses
  %i.xw = load atomic i64, ptr %i.xv acquire, align 8 ; 2 uses
  %i.xx = icmp eq i64 %i.xw, 4294967297
  %i.xy = trunc i64 %i.xw to i32                  ; 2 uses
  br i1 %i.xx, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.xv, align 8, !tbaa !134
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 12
  store i32 0, ptr %i.xz, align 4, !tbaa !136
  %i.ya = load ptr, ptr %i.xu, align 8, !tbaa !90
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %i.yc = load ptr, ptr %i.yb, align 8
  call void %i.yc(ptr noundef nonnull align 8 dereferenceable(16) %i.xu) #24, !inline_history !201
  %i.yd = load ptr, ptr %i.xu, align 8, !tbaa !90
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8
  call void %i.yf(ptr noundef nonnull align 8 dereferenceable(16) %i.xu) #24, !inline_history !201
  br label %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.yg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !70
  %.not.i.i.i.i.i247.i.i = icmp eq i8 %i.yg, 0
  br i1 %.not.i.i.i.i.i247.i.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.yh = add nsw i32 %i.xy, -1
  store i32 %i.yh, ptr %i.xv, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %i.yi = atomicrmw volatile add ptr %i.xv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ej, %bb.ei
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.xy, %bb.ei ], [ %i.yi, %bb.ej ]
  %i.yj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.yj, label %bb.ek, label %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i, !prof !104

bb.ek:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xu) #24
  br label %_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i

_ZN5arrow18TypedBufferBuilderItvED2Ev.exit.i.i:   ; preds = %bb.ek, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.eg, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #24, !noalias !70
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE.exit

bb.el:                                            ; preds = %bb.ed, %bb.ci, %bb.bv
  %.pn131.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn131.pn.pn.i.i, %bb.ed ], [ %lpad.phi.i.i, %bb.ci ], [ %i.oc, %bb.bv ]
  call void @_ZN5arrow18TypedBufferBuilderItvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %91) #24, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #24, !noalias !70
  br label %common.resume

bb.em:                                            ; preds = %bb.b
  %.not7.i = icmp samesign ugt i64 %i.f, 4294967295
  br i1 %.not7.i, label %bb.jv, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.yk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !66, !noalias !205 ; 8 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !71, !noalias !205
  %.not.i.i8.i = icmp ne i64 %i.yo, 0
  %i.yp = load ptr, ptr %i.yk, align 8, !noalias !205 ; 5 uses
  %i.yq = icmp ne ptr %i.yp, null
  %i.yr = select i1 %.not.i.i8.i, i1 %i.yq, i1 false ; 2 uses
  %i.ys = icmp eq i32 %2, 1
  %or.cond.i9.i = and i1 %i.ys, %i.yr
  br i1 %or.cond.i9.i, label %bb.eo, label %bb.gt

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #24, !noalias !205
  %i.yt = getelementptr inbounds nuw i8, ptr %64, i64 8
  store ptr %3, ptr %i.yt, align 8, !tbaa !72, !noalias !205
  %i.yu = getelementptr inbounds nuw i8, ptr %64, i64 16
  store i64 64, ptr %i.yu, align 8, !tbaa !86, !noalias !205
  %i.yv = getelementptr inbounds nuw i8, ptr %64, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.yv, i8 0, i64 16, i1 false), !noalias !205
  %i.yw = getelementptr inbounds nuw i8, ptr %64, i64 40
  store ptr %3, ptr %i.yw, align 8, !tbaa !87, !noalias !205
  %i.yx = getelementptr inbounds nuw i8, ptr %64, i64 48 ; 4 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.yx, align 8, !tbaa !88, !noalias !205
  %i.yy = getelementptr inbounds nuw i8, ptr %64, i64 56
  %i.yz = getelementptr inbounds nuw i8, ptr %64, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yy, i8 0, i64 16, i1 false), !noalias !205
  store i64 64, ptr %i.yz, align 8, !tbaa !89, !noalias !205
  %i.za = getelementptr inbounds nuw i8, ptr %64, i64 80 ; 10 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.za, i8 0, i64 64, i1 false), !noalias !205
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt32TypeEEE, i64 16), ptr %64, align 8, !tbaa !90, !noalias !205
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.zb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev()
          to label %.noexc.i.i161.i unwind label %bb.es, !noalias !205 ; 2 uses

.noexc.i.i161.i:                                  ; preds = %bb.eo
  %i.zc = getelementptr inbounds nuw i8, ptr %64, i64 144
  %i.zd = getelementptr inbounds nuw i8, ptr %64, i64 152
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !95, !noalias !209 ; 2 uses
  %i.zg = load <2 x ptr>, ptr %i.zb, align 8, !tbaa !97, !noalias !209
  store <2 x ptr> %i.zg, ptr %i.zc, align 8, !tbaa !97, !alias.scope !206, !noalias !205
  %.not.i.i.i.i.i.i162.i = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i.i.i.i162.i, label %bb.et, label %bb.ep

bb.ep:                                            ; preds = %.noexc.i.i161.i
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 8 ; 3 uses
  %i.zi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !209
  %.not.i.i.i.i.i.i.i163.i = icmp eq i8 %i.zi, 0
  br i1 %.not.i.i.i.i.i.i.i163.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.zj = load i32, ptr %i.zh, align 4, !tbaa !3, !noalias !209
  %i.zk = add nsw i32 %i.zj, 1
  store i32 %i.zk, ptr %i.zh, align 4, !tbaa !3, !noalias !209
  br label %bb.et

bb.er:                                            ; preds = %bb.ep
  %i.zl = atomicrmw volatile add ptr %i.zh, i32 1 acq_rel, align 4, !noalias !209 ; 0 uses
  br label %bb.et

bb.es:                                            ; preds = %bb.eo
  %i.zm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %64) #24, !noalias !205
  br label %common.resume

bb.et:                                            ; preds = %bb.er, %bb.eq, %.noexc.i.i161.i
  %i.zn = getelementptr inbounds nuw i8, ptr %64, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.zn, i8 0, i64 16, i1 false), !noalias !205
  %i.zo = getelementptr inbounds nuw i8, ptr %64, i64 176
  store ptr %3, ptr %i.zo, align 8, !tbaa !87, !noalias !205
  %i.zp = getelementptr inbounds nuw i8, ptr %64, i64 184 ; 3 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.zp, align 8, !tbaa !88, !noalias !205
  %i.zq = getelementptr inbounds nuw i8, ptr %64, i64 192
  %i.zr = getelementptr inbounds nuw i8, ptr %64, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zq, i8 0, i64 16, i1 false), !noalias !205
  store i64 64, ptr %i.zr, align 8, !tbaa !89, !noalias !205
  %i.zs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !99, !noalias !205 ; 3 uses
  %i.zu = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !205 ; 3 uses
  %i.zv = sdiv i64 %i.zt, 8                       ; 2 uses
  %i.zw = srem i64 %i.zt, 8                       ; 8 uses
  %i.zx = getelementptr inbounds i8, ptr %i.yp, i64 %i.zv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #24, !noalias !205
  store ptr %i.zx, ptr %65, align 8, !tbaa !100, !noalias !205
  %i.zy = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 3 uses
  store i64 %i.zu, ptr %i.zy, align 8, !tbaa !102, !noalias !205
  %i.zz = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  store i64 %i.zw, ptr %i.zz, align 8, !tbaa !103, !noalias !205
  %i.aaa = icmp sgt i64 %i.zu, 0
  br i1 %i.aaa, label %.lr.ph364.i184.i, label %._crit_edge365.i164.i

.lr.ph364.i184.i:                                 ; preds = %bb.et
  %.not.i.i.i185.i = icmp eq ptr %i.ym, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i186.i = select i1 %.not.i.i.i185.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ym, !prof !104
  %i.aab = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i.i186.i, i64 %i.zv
  %i.aac = icmp eq i64 %i.zw, 0                   ; 2 uses
  %i.aad = sub nsw i64 128, %i.zw
  %spec.select.i.i187.i = select i1 %i.aac, i64 64, i64 %i.aad
  %i.aae = getelementptr inbounds nuw i8, ptr %64, i64 112
  %i.aaf = getelementptr inbounds nuw i8, ptr %64, i64 104 ; 4 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %64, i64 96 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %64, i64 200 ; 6 uses
  br label %bb.eu

bb.eu:                                            ; preds = %.loopexit.i220.i, %.lr.ph364.i184.i
  %.0362.i188.i = phi i32 [ 0, %.lr.ph364.i184.i ], [ %.4.i225.i, %.loopexit.i220.i ] ; 5 uses
  %.076361.i189.i = phi i64 [ %i.zt, %.lr.ph364.i184.i ], [ %.379.i224.i, %.loopexit.i220.i ] ; 5 uses
  %.sroa.18.0360.i190.i = phi i64 [ %i.zu, %.lr.ph364.i184.i ], [ %.sroa.18.2308.i221.i, %.loopexit.i220.i ] ; 5 uses
  %.sroa.10.0359.i191.i = phi ptr [ %i.zx, %.lr.ph364.i184.i ], [ %.sroa.10.2306.i222.i, %.loopexit.i220.i ] ; 9 uses
  %.sroa.0293.0358.i192.i = phi ptr [ %i.aab, %.lr.ph364.i184.i ], [ %.sroa.0293.2304.i223.i, %.loopexit.i220.i ] ; 8 uses
  %.not.i248.i193.i = icmp eq i64 %.sroa.18.0360.i190.i, 0
  br i1 %.not.i248.i193.i, label %_ZN5arrow8internal21BinaryBitBlockCounter13NextOrNotWordEv.exit.thread.i248.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aai = icmp slt i64 %.sroa.18.0360.i190.i, %spec.select.i.i187.i
  br i1 %i.aai, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %.sroa.speculated27.i.i253.i = call i64 @llvm.smin.i64(i64 %.sroa.18.0360.i190.i, i64 64) ; 4 uses
  %i.aaj = trunc i64 %.sroa.speculated27.i.i253.i to i16 ; 2 uses
  %sext.i.i254.i = shl i64 %.sroa.speculated27.i.i253.i, 48 ; 2 uses
  %i.aak = ashr exact i64 %sext.i.i254.i, 48      ; 3 uses
  %i.aal = icmp sgt i64 %i.aak, 0
  br i1 %i.aal, label %.lr.ph.i254.i257.i.preheader, label %._crit_edge.i.i255.i

.lr.ph.i254.i257.i.preheader:                     ; preds = %bb.ew
  %xtraiter342 = and i64 %.sroa.speculated27.i.i253.i, 1 ; 2 uses
  %i.aam = icmp eq i64 %sext.i.i254.i, 281474976710656
  br i1 %i.aam, label %.lr.ph.i254.i257.i.epil.preheader, label %.lr.ph.i254.i257.i.preheader.new

.lr.ph.i254.i257.i.preheader.new:                 ; preds = %.lr.ph.i254.i257.i.preheader
  %unroll_iter346 = sub nsw i64 %i.aak, %xtraiter342
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a
  %i.ahv = load <2 x ptr>, ptr %68, align 16, !tbaa !97, !noalias !205
  store <2 x ptr> %i.ahv, ptr %i.ahu, align 8, !tbaa !97, !alias.scope !205
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i174.i

bb.fy:                                            ; preds = %bb.fw, %bb.fv, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #24, !noalias !205
  %.phi.trans.insert.i168.i = getelementptr inbounds nuw i8, ptr %68, i64 8
  %.pre375.i169.i = load ptr, ptr %.phi.trans.insert.i168.i, align 8, !tbaa !95, !noalias !205 ; 8 uses
  %.not.i.i176.i170.i = icmp eq ptr %.pre375.i169.i, null
  br i1 %.not.i.i176.i170.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i174.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ahw = getelementptr inbounds nuw i8, ptr %.pre375.i169.i, i64 8 ; 4 uses
  %i.ahx = load atomic i64, ptr %i.ahw acquire, align 8 ; 2 uses
  %i.ahy = icmp eq i64 %i.ahx, 4294967297
  %i.ahz = trunc i64 %i.ahx to i32                ; 2 uses
  br i1 %i.ahy, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 0, ptr %i.ahw, align 8, !tbaa !134
  %i.aia = getelementptr inbounds nuw i8, ptr %.pre375.i169.i, i64 12
  store i32 0, ptr %i.aia, align 4, !tbaa !136
  %i.aib = load ptr, ptr %.pre375.i169.i, align 8, !tbaa !90
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %i.aid = load ptr, ptr %i.aic, align 8
  call void %i.aid(ptr noundef nonnull align 8 dereferenceable(16) %.pre375.i169.i) #24, !inline_history !216
  %i.aie = load ptr, ptr %.pre375.i169.i, align 8, !tbaa !90
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 24
  %i.aig = load ptr, ptr %i.aif, align 8
  call void %i.aig(ptr noundef nonnull align 8 dereferenceable(16) %.pre375.i169.i) #24, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i174.i

bb.gb:                                            ; preds = %bb.fz
  %i.aih = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !205
  %.not.i.i.i.i171.i = icmp eq i8 %i.aih, 0
  br i1 %.not.i.i.i.i171.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aii = add nsw i32 %i.ahz, -1
  store i32 %i.aii, ptr %i.ahw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i172.i

bb.gd:                                            ; preds = %bb.gb
  %i.aij = atomicrmw volatile add ptr %i.ahw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i172.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i172.i: ; preds = %bb.gd, %bb.gc
  %.0.i.i.i.i.i173.i = phi i32 [ %i.ahz, %bb.gc ], [ %i.aij, %bb.gd ]
  %i.aik = icmp eq i32 %.0.i.i.i.i.i173.i, 1
  br i1 %i.aik, label %bb.ge, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i174.i, !prof !104

bb.ge:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i172.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre375.i169.i) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i174.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i174.i: ; preds = %bb.ge, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i172.i, %bb.ga, %bb.fy, %.thread420.i183.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #24, !noalias !205
  br label %bb.gf

bb.gf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i174.i, %.thread.i247.i
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #24, !noalias !205
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_10UInt32TypeEEE, i64 16), ptr %64, align 8, !tbaa !90, !noalias !205
  %i.ail = getelementptr inbounds nuw i8, ptr %64, i64 168
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !95, !noalias !205 ; 8 uses
  %.not.i.i.i.i.i177.i175.i = icmp eq ptr %i.aim, null
  br i1 %.not.i.i.i.i.i177.i175.i, label %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8 ; 4 uses
  %i.aio = load atomic i64, ptr %i.ain acquire, align 8 ; 2 uses
  %i.aip = icmp eq i64 %i.aio, 4294967297
  %i.aiq = trunc i64 %i.aio to i32                ; 2 uses
  br i1 %i.aip, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  store i32 0, ptr %i.ain, align 8, !tbaa !134
  %i.air = getelementptr inbounds nuw i8, ptr %i.aim, i64 12
  store i32 0, ptr %i.air, align 4, !tbaa !136
  %i.ais = load ptr, ptr %i.aim, align 8, !tbaa !90
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16
  %i.aiu = load ptr, ptr %i.ait, align 8
  call void %i.aiu(ptr noundef nonnull align 8 dereferenceable(16) %i.aim) #24, !inline_history !217
  %i.aiv = load ptr, ptr %i.aim, align 8, !tbaa !90
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 24
  %i.aix = load ptr, ptr %i.aiw, align 8
  call void %i.aix(ptr noundef nonnull align 8 dereferenceable(16) %i.aim) #24, !inline_history !217
  br label %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i.i

bb.gi:                                            ; preds = %bb.gg
  %i.aiy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !205
  %.not.i.i.i.i.i.i178.i176.i = icmp eq i8 %i.aiy, 0
  br i1 %.not.i.i.i.i.i.i178.i176.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aiz = add nsw i32 %i.aiq, -1
  store i32 %i.aiz, ptr %i.ain, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i177.i

bb.gk:                                            ; preds = %bb.gi
  %i.aja = atomicrmw volatile add ptr %i.ain, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i177.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i177.i: ; preds = %bb.gk, %bb.gj
  %.0.i.i.i.i.i.i.i.i178.i = phi i32 [ %i.aiq, %bb.gj ], [ %i.aja, %bb.gk ]
  %i.ajb = icmp eq i32 %.0.i.i.i.i.i.i.i.i178.i, 1
  br i1 %i.ajb, label %bb.gl, label %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i.i, !prof !104

bb.gl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i177.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aim) #24, !inline_history !218
  br label %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i.i

_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i.i: ; preds = %bb.gl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i177.i, %bb.gh, %bb.gf
  %i.ajc = load ptr, ptr %i.zd, align 8, !tbaa !95, !noalias !205 ; 8 uses
  %.not.i.i.i179.i179.i = icmp eq ptr %i.ajc, null
  br i1 %.not.i.i.i179.i179.i, label %_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev.exit.i.i, label %bb.gm

bb.gm:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i.i
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ajc, i64 8 ; 4 uses
  %i.aje = load atomic i64, ptr %i.ajd acquire, align 8 ; 2 uses
  %i.ajf = icmp eq i64 %i.aje, 4294967297
  %i.ajg = trunc i64 %i.aje to i32                ; 2 uses
  br i1 %i.ajf, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  store i32 0, ptr %i.ajd, align 8, !tbaa !134
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajc, i64 12
  store i32 0, ptr %i.ajh, align 4, !tbaa !136
  %i.aji = load ptr, ptr %i.ajc, align 8, !tbaa !90
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajk = load ptr, ptr %i.ajj, align 8
  call void %i.ajk(ptr noundef nonnull align 8 dereferenceable(16) %i.ajc) #24, !inline_history !219
  %i.ajl = load ptr, ptr %i.ajc, align 8, !tbaa !90
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 24
  %i.ajn = load ptr, ptr %i.ajm, align 8
  call void %i.ajn(ptr noundef nonnull align 8 dereferenceable(16) %i.ajc) #24, !inline_history !219
  br label %_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev.exit.i.i

bb.go:                                            ; preds = %bb.gm
  %i.ajo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !205
  %.not.i.i.i.i.i180.i = icmp eq i8 %i.ajo, 0
  br i1 %.not.i.i.i.i.i180.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ajp = add nsw i32 %i.ajg, -1
  store i32 %i.ajp, ptr %i.ajd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i181.i

bb.gq:                                            ; preds = %bb.go
  %i.ajq = atomicrmw volatile add ptr %i.ajd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i181.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i181.i: ; preds = %bb.gq, %bb.gp
  %.0.i.i.i.i.i.i182.i = phi i32 [ %i.ajg, %bb.gp ], [ %i.ajq, %bb.gq ]
  %i.ajr = icmp eq i32 %.0.i.i.i.i.i.i182.i, 1
  br i1 %i.ajr, label %bb.gr, label %_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev.exit.i.i, !prof !104

bb.gr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i181.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ajc) #24, !inline_history !218
  br label %_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev.exit.i.i

_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev.exit.i.i: ; preds = %bb.gr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i181.i, %bb.gn, %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i.i
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %64) #24, !inline_history !218
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24, !noalias !205
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE.exit

bb.gs:                                            ; preds = %bb.fx, %bb.fg
  %.pn140.pn.pn.i165.i = phi { ptr, i32 } [ %i.aht, %bb.fx ], [ %i.adt, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #24, !noalias !205
  call void @_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %64) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #24, !noalias !205
  br label %common.resume

bb.gt:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #24, !noalias !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %71, i8 0, i64 16, i1 false), !noalias !205
  %i.ajs = getelementptr inbounds nuw i8, ptr %71, i64 16
  store ptr %3, ptr %i.ajs, align 8, !tbaa !87, !noalias !205
  %i.ajt = getelementptr inbounds nuw i8, ptr %71, i64 24 ; 11 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ajt, align 8, !tbaa !88, !noalias !205
  %i.aju = getelementptr inbounds nuw i8, ptr %71, i64 32 ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %71, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aju, i8 0, i64 16, i1 false), !noalias !205
  store i64 64, ptr %i.ajv, align 8, !tbaa !89, !noalias !205
  br i1 %i.yr, label %.lr.ph345.i100.i, label %bb.hm

.lr.ph345.i100.i:                                 ; preds = %bb.gt
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !99, !noalias !205 ; 3 uses
  %i.ajy = srem i64 %i.ajx, 8                     ; 6 uses
  %i.ajz = sdiv i64 %i.ajx, 8                     ; 2 uses
  %i.aka = getelementptr inbounds i8, ptr %i.yp, i64 %i.ajz
  %.not.i.i180.i101.i = icmp eq ptr %i.ym, null
  %_ZN5arrow4util8internalL14kNonNullFillerE..i.i181.i102.i = select i1 %.not.i.i180.i101.i, ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ym, !prof !104
  %i.akb = getelementptr inbounds i8, ptr %_ZN5arrow4util8internalL14kNonNullFillerE..i.i181.i102.i, i64 %i.ajz
  %i.akc = icmp eq i64 %i.ajy, 0                  ; 2 uses
  %i.akd = sub nsw i64 128, %i.ajy
  %spec.select.i256.i103.i = select i1 %i.akc, i64 64, i64 %i.akd
  %i.ake = getelementptr inbounds nuw i8, ptr %71, i64 40 ; 11 uses
  br label %bb.gu

..loopexit325_crit_edge.i137.i:                   ; preds = %bb.hk
  %104 = add i64 %.082343.i104.i, %i.aof
  br label %.backedge.i128.i, !llvm.loop !220

bb.gu:                                            ; preds = %.backedge.i128.i, %.lr.ph345.i100.i
  %.082343.i104.i = phi i64 [ %i.ajx, %.lr.ph345.i100.i ], [ %.082.be.i130.i, %.backedge.i128.i ] ; 5 uses
  %.086342.i105.i = phi i32 [ 0, %.lr.ph345.i100.i ], [ %.086.be.i129.i, %.backedge.i128.i ] ; 6 uses
  %.sroa.19.0341.i106.i = phi i64 [ %i.f, %.lr.ph345.i100.i ], [ %.sroa.19.2.i119.i, %.backedge.i128.i ] ; 5 uses
  %.sroa.11.0340.i107.i = phi ptr [ %i.aka, %.lr.ph345.i100.i ], [ %.sroa.11.2.i118.i, %.backedge.i128.i ] ; 9 uses
  %.sroa.0282.0339.i108.i = phi ptr [ %i.akb, %.lr.ph345.i100.i ], [ %.sroa.0282.2.i117.i, %.backedge.i128.i ] ; 8 uses
  %.not.i255.i109.i = icmp eq i64 %.sroa.19.0341.i106.i, 0
  br i1 %.not.i255.i109.i, label %_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i116.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.akf = icmp slt i64 %.sroa.19.0341.i106.i, %spec.select.i256.i103.i
  br i1 %i.akf, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %.sroa.speculated27.i264.i152.i = call i64 @llvm.smin.i64(i64 %.sroa.19.0341.i106.i, i64 64) ; 5 uses
  %i.akg = trunc i64 %.sroa.speculated27.i264.i152.i to i16
  %sext.i265.i153.i = shl i64 %.sroa.speculated27.i264.i152.i, 48 ; 2 uses
  %i.akh = ashr exact i64 %sext.i265.i153.i, 48   ; 3 uses
  %i.aki = icmp sgt i64 %i.akh, 0
  br i1 %i.aki, label %.lr.ph.i269.i156.i.preheader, label %._crit_edge.i267.i154.i

.lr.ph.i269.i156.i.preheader:                     ; preds = %bb.gw
  %xtraiter328 = and i64 %.sroa.speculated27.i264.i152.i, 1 ; 2 uses
  %i.akj = icmp eq i64 %sext.i265.i153.i, 281474976710656
  br i1 %i.akj, label %.lr.ph.i269.i156.i.epil.preheader, label %.lr.ph.i269.i156.i.preheader.new

.lr.ph.i269.i156.i.preheader.new:                 ; preds = %.lr.ph.i269.i156.i.preheader
  %unroll_iter332 = sub nsw i64 %i.akh, %xtraiter328
  br label %.lr.ph.i269.i156.i

._crit_edge.i267.i154.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i269.i156.i
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %._crit_edge.i267.i154.i, label %.lr.ph.i269.i156.i.epil.preheader

.lr.ph.i269.i156.i.epil.preheader:                ; preds = %._crit_edge.i267.i154.i.loopexit.unr-lcssa, %.lr.ph.i269.i156.i.preheader
  %.01532.i.i157.i.epil.init = phi i64 [ 0, %.lr.ph.i269.i156.i.preheader ], [ %i.amc, %._crit_edge.i267.i154.i.loopexit.unr-lcssa ]
  %.01631.i.i158.i.epil.init = phi i16 [ 0, %.lr.ph.i269.i156.i.preheader ], [ %spec.select20.i270.i159.i.1, %._crit_edge.i267.i154.i.loopexit.unr-lcssa ]
  %lcmp.mod331 = trunc i64 %.sroa.speculated27.i264.i152.i to i1
  call void @llvm.assume(i1 %lcmp.mod331)
  %i.akk = add nsw i64 %.01532.i.i157.i.epil.init, %i.ajy ; 2 uses
  %i.akl = lshr i64 %i.akk, 3                     ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i108.i, i64 %i.akl
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !98, !noalias !205
  %i.ako = trunc i64 %i.akk to i8
  %i.akp = and i8 %i.ako, 7
  %i.akq = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i107.i, i64 %i.akl
  %i.akr = load i8, ptr %i.akq, align 1, !tbaa !98, !noalias !205
  %i.aks = and i8 %i.akr, %i.akn
  %i.akt = lshr i8 %i.aks, %i.akp
  %i.aku = and i8 %i.akt, 1
  %i.akv = zext nneg i8 %i.aku to i16
  %spec.select20.i270.i159.i.epil = add i16 %.01631.i.i158.i.epil.init, %i.akv
  br label %._crit_edge.i267.i154.i

._crit_edge.i267.i154.i:                          ; preds = %.lr.ph.i269.i156.i.epil.preheader, %._crit_edge.i267.i154.i.loopexit.unr-lcssa, %bb.gw
  %.016.lcssa.i268.i155.i = phi i16 [ 0, %bb.gw ], [ %spec.select20.i270.i159.i.1, %._crit_edge.i267.i154.i.loopexit.unr-lcssa ], [ %spec.select20.i270.i159.i.epil, %.lr.ph.i269.i156.i.epil.preheader ]
  %i.akw = sdiv i16 %i.akg, 8
  %i.akx = sext i16 %i.akw to i64                 ; 2 uses
  %i.aky = getelementptr inbounds i8, ptr %.sroa.0282.0339.i108.i, i64 %i.akx
  %i.akz = getelementptr inbounds i8, ptr %.sroa.11.0340.i107.i, i64 %i.akx
  %i.ala = sub nsw i64 %.sroa.19.0341.i106.i, %i.akh
  %i.alb = trunc i64 %.sroa.speculated27.i264.i152.i to i32
  %i.alc = and i32 %i.alb, 65535
  br label %bb.hb

.lr.ph.i269.i156.i:                               ; preds = %.lr.ph.i269.i156.i, %.lr.ph.i269.i156.i.preheader.new
  %.01532.i.i157.i = phi i64 [ 0, %.lr.ph.i269.i156.i.preheader.new ], [ %i.amc, %.lr.ph.i269.i156.i ] ; 3 uses
  %.01631.i.i158.i = phi i16 [ 0, %.lr.ph.i269.i156.i.preheader.new ], [ %spec.select20.i270.i159.i.1, %.lr.ph.i269.i156.i ]
  %niter333 = phi i64 [ 0, %.lr.ph.i269.i156.i.preheader.new ], [ %niter333.next.1, %.lr.ph.i269.i156.i ]
  %i.ald = add nsw i64 %.01532.i.i157.i, %i.ajy   ; 2 uses
  %i.ale = lshr i64 %i.ald, 3                     ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i108.i, i64 %i.ale
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !98, !noalias !205
  %i.alh = trunc i64 %i.ald to i8
  %i.ali = and i8 %i.alh, 7
  %i.alj = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i107.i, i64 %i.ale
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !98, !noalias !205
  %i.all = and i8 %i.alk, %i.alg
  %i.alm = lshr i8 %i.all, %i.ali
  %i.aln = and i8 %i.alm, 1
  %i.alo = zext nneg i8 %i.aln to i16
  %spec.select20.i270.i159.i = add i16 %.01631.i.i158.i, %i.alo
  %i.alp = or disjoint i64 %.01532.i.i157.i, 1
  %i.alq = add nsw i64 %i.alp, %i.ajy             ; 2 uses
  %i.alr = lshr i64 %i.alq, 3                     ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i108.i, i64 %i.alr
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !98, !noalias !205
  %i.alu = trunc i64 %i.alq to i8
  %i.alv = and i8 %i.alu, 7
  %i.alw = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i107.i, i64 %i.alr
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !98, !noalias !205
  %i.aly = and i8 %i.alx, %i.alt
  %i.alz = lshr i8 %i.aly, %i.alv
  %i.ama = and i8 %i.alz, 1
  %i.amb = zext nneg i8 %i.ama to i16
  %spec.select20.i270.i159.i.1 = add i16 %spec.select20.i270.i159.i, %i.amb ; 3 uses
  %i.amc = add nuw nsw i64 %.01532.i.i157.i, 2    ; 2 uses
  %niter333.next.1 = add i64 %niter333, 2         ; 2 uses
  %niter333.ncmp.1 = icmp eq i64 %niter333.next.1, %unroll_iter332
  br i1 %niter333.ncmp.1, label %._crit_edge.i267.i154.i.loopexit.unr-lcssa, label %.lr.ph.i269.i156.i, !llvm.loop !142

bb.gx:                                            ; preds = %bb.gv
  %i.amd = load i64, ptr %.sroa.0282.0339.i108.i, align 1, !noalias !205 ; 2 uses
  br i1 %i.akc, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %i.ame = load i64, ptr %.sroa.11.0340.i107.i, align 1, !noalias !205
  %i.amf = and i64 %i.ame, %i.amd
  br label %bb.ha

bb.gz:                                            ; preds = %bb.gx
  %i.amg = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i108.i, i64 8
  %i.amh = load i64, ptr %i.amg, align 1, !noalias !205
  %i.ami = load i64, ptr %.sroa.11.0340.i107.i, align 1, !noalias !205
  %i.amj = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i107.i, i64 8
  %i.amk = load i64, ptr %i.amj, align 1, !noalias !205
  %i.aml = and i64 %i.amk, %i.amh
  %i.amm = and i64 %i.ami, %i.amd
  %i.amn = call i64 @llvm.fshr.i64(i64 %i.aml, i64 %i.amm, i64 %i.ajy)
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.sink.i.i110.i = phi i64 [ %i.amn, %bb.gz ], [ %i.amf, %bb.gy ]
  %i.amo = call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.sink.i.i110.i)
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.0282.0339.i108.i, i64 8
  %i.amq = getelementptr inbounds nuw i8, ptr %.sroa.11.0340.i107.i, i64 8
  %i.amr = add nsw i64 %.sroa.19.0341.i106.i, -64
  %i.ams = trunc nuw nsw i64 %i.amo to i16
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %._crit_edge.i267.i154.i
  %.sroa.0282.1.i111.i = phi ptr [ %i.aky, %._crit_edge.i267.i154.i ], [ %i.amp, %bb.ha ]
  %.sroa.11.1.i112.i = phi ptr [ %i.akz, %._crit_edge.i267.i154.i ], [ %i.amq, %bb.ha ]
  %.sroa.19.1.i113.i = phi i64 [ %i.ala, %._crit_edge.i267.i154.i ], [ %i.amr, %bb.ha ]
  %.sroa.0.0.i261.i114.i = phi i32 [ %i.alc, %._crit_edge.i267.i154.i ], [ 64, %bb.ha ]
  %.sroa.4.0.i262.i115.i = phi i16 [ %.016.lcssa.i268.i155.i, %._crit_edge.i267.i154.i ], [ %i.ams, %bb.ha ]
  %i.amt = zext i16 %.sroa.4.0.i262.i115.i to i32
  %i.amu = shl nuw i32 %i.amt, 16
  %i.amv = or disjoint i32 %i.amu, %.sroa.0.0.i261.i114.i
  br label %_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i116.i

_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i116.i: ; preds = %bb.hb, %bb.gu
  %.sroa.0282.2.i117.i = phi ptr [ %.sroa.0282.0339.i108.i, %bb.gu ], [ %.sroa.0282.1.i111.i, %bb.hb ]
  %.sroa.11.2.i118.i = phi ptr [ %.sroa.11.0340.i107.i, %bb.gu ], [ %.sroa.11.1.i112.i, %bb.hb ]
  %.sroa.19.2.i119.i = phi i64 [ 0, %bb.gu ], [ %.sroa.19.1.i113.i, %bb.hb ]
  %.sroa.0.0.insert.insert.i263.i120.i = phi i32 [ 0, %bb.gu ], [ %i.amv, %bb.hb ] ; 4 uses
  %.sroa.0276.0.extract.trunc.i121.i = trunc i32 %.sroa.0.0.insert.insert.i263.i120.i to i16 ; 8 uses
  %.sroa.8.0.extract.shift.i122.i = lshr i32 %.sroa.0.0.insert.insert.i263.i120.i, 16 ; 2 uses
  %.sroa.8.0.extract.trunc.i123.i = trunc nuw i32 %.sroa.8.0.extract.shift.i122.i to i16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #24, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #24, !noalias !205
  %i.amw = sext i16 %.sroa.8.0.extract.trunc.i123.i to i64
  %i.amx = shl nsw i64 %i.amw, 2
  %i.amy = load i64, ptr %i.ake, align 8, !tbaa !131, !noalias !221
  %i.amz = add nsw i64 %i.amx, %i.amy             ; 2 uses
  %i.ana = load i64, ptr %i.aju, align 8, !tbaa !148, !noalias !221 ; 2 uses
  %.not.i.i185.i124.i = icmp sgt i64 %i.amz, %i.ana
  br i1 %.not.i.i185.i124.i, label %bb.hc, label %_ZN5arrow6StatusD2Ev.exit188.thread.i125.i

_ZN5arrow6StatusD2Ev.exit188.thread.i125.i:       ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i116.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24, !noalias !205
  br label %_ZN5arrow6StatusD2Ev.exit194.i126.i

bb.hc:                                            ; preds = %_ZN5arrow8internal21BinaryBitBlockCounter11NextAndWordEv.exit.i116.i
  %i.anb = shl nsw i64 %i.ana, 1
  %.sroa.speculated.i.i.i.i147.i = call noundef i64 @llvm.smax.i64(i64 %i.amz, i64 %i.anb)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %73, ptr noundef nonnull align 8 dereferenceable(56) %71, i64 noundef %.sroa.speculated.i.i.i.i147.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit188.i148.i unwind label %bb.hf, !noalias !205

_ZN5arrow6StatusD2Ev.exit188.i148.i:              ; preds = %bb.hc
  %.pr317.i149.i = load ptr, ptr %73, align 8, !tbaa !113, !noalias !205 ; 2 uses
  store ptr %.pr317.i149.i, ptr %72, align 8, !tbaa !113, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24, !noalias !205
  %i.anc = icmp eq ptr %.pr317.i149.i, null
  br i1 %i.anc, label %_ZN5arrow6StatusD2Ev.exit194.i126.i, label %bb.hd, !prof !116

bb.hd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit188.i148.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #24
  %i.and = load ptr, ptr %72, align 8, !tbaa !113, !noalias !205 ; 2 uses
  %.not.i189.i150.i = icmp eq ptr %i.and, null
  br i1 %.not.i189.i150.i, label %.thread318.i151.i, label %bb.he, !prof !117

bb.he:                                            ; preds = %bb.hd
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 1
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !118, !range !127, !noundef !128
  %i.ang = trunc nuw i8 %i.anf to i1
  br i1 %i.ang, label %.thread318.i151.i, label %105

105:                                              ; preds = %bb.he
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %72) #24
  br label %.thread318.i151.i

.thread318.i151.i:                                ; preds = %105, %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24, !noalias !205
  br label %bb.jn

bb.hf:                                            ; preds = %bb.hc
  %i.anh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24, !noalias !205
  br label %bb.ju

_ZN5arrow6StatusD2Ev.exit194.i126.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit188.i148.i, %_ZN5arrow6StatusD2Ev.exit188.thread.i125.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #24, !noalias !205
  %i.ani = icmp eq i16 %.sroa.0276.0.extract.trunc.i121.i, %.sroa.8.0.extract.trunc.i123.i
  br i1 %i.ani, label %.preheader323.i138.i, label %bb.hg

.preheader323.i138.i:                             ; preds = %_ZN5arrow6StatusD2Ev.exit194.i126.i
  %i.anj = sext i16 %.sroa.0276.0.extract.trunc.i121.i to i64 ; 2 uses
  %i.ank = icmp sgt i16 %.sroa.0276.0.extract.trunc.i121.i, 0
  br i1 %i.ank, label %.lr.ph335.preheader.i141.i, label %._crit_edge.i139.i

.lr.ph335.preheader.i141.i:                       ; preds = %.preheader323.i138.i
  %.pre.i142.i = load i64, ptr %i.ake, align 8, !tbaa !131, !noalias !205 ; 2 uses
  %i.anl = icmp eq i16 %.sroa.0276.0.extract.trunc.i121.i, 1
  br i1 %i.anl, label %.lr.ph335.i143.i.epil.preheader, label %.lr.ph335.preheader.i141.i.new

.lr.ph335.preheader.i141.i.new:                   ; preds = %.lr.ph335.preheader.i141.i
  %unroll_iter340 = and i64 %i.anj, 32766
  br label %.lr.ph335.i143.i

._crit_edge.i139.i.loopexit.unr-lcssa:            ; preds = %.lr.ph335.i143.i
  %i.anm = and i16 %.sroa.0276.0.extract.trunc.i121.i, 1
  %lcmp.mod337.not = icmp eq i16 %i.anm, 0
  br i1 %lcmp.mod337.not, label %._crit_edge.i139.i, label %.lr.ph335.i143.i.epil.preheader

.lr.ph335.i143.i.epil.preheader:                  ; preds = %._crit_edge.i139.i.loopexit.unr-lcssa, %.lr.ph335.preheader.i141.i
  %.epil.init336 = phi i64 [ %.pre.i142.i, %.lr.ph335.preheader.i141.i ], [ %i.aod, %._crit_edge.i139.i.loopexit.unr-lcssa ]
  %.187333.i145.i.epil.init = phi i32 [ %.086342.i105.i, %.lr.ph335.preheader.i141.i ], [ %i.anz, %._crit_edge.i139.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod339 = trunc i32 %.sroa.0.0.insert.insert.i263.i120.i to i1
  call void @llvm.assume(i1 %lcmp.mod339)
  %i.ann = add i32 %.187333.i145.i.epil.init, 1
  %i.ano = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !205
  %i.anp = getelementptr inbounds i8, ptr %i.ano, i64 %.epil.init336
  store i32 %.187333.i145.i.epil.init, ptr %i.anp, align 1, !noalias !205
  %i.anq = load i64, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  %i.anr = add nsw i64 %i.anq, 4
  store i64 %i.anr, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  br label %._crit_edge.i139.i

._crit_edge.i139.i:                               ; preds = %.lr.ph335.i143.i.epil.preheader, %._crit_edge.i139.i.loopexit.unr-lcssa, %.preheader323.i138.i
  %.187.lcssa.i140.i = phi i32 [ %.086342.i105.i, %.preheader323.i138.i ], [ %i.anz, %._crit_edge.i139.i.loopexit.unr-lcssa ], [ %i.ann, %.lr.ph335.i143.i.epil.preheader ]
  %i.ans = add nsw i64 %.082343.i104.i, %i.anj
  br label %.backedge.i128.i

.lr.ph335.i143.i:                                 ; preds = %.lr.ph335.i143.i, %.lr.ph335.preheader.i141.i.new
  %i.ant = phi i64 [ %.pre.i142.i, %.lr.ph335.preheader.i141.i.new ], [ %i.aod, %.lr.ph335.i143.i ]
  %.187333.i145.i = phi i32 [ %.086342.i105.i, %.lr.ph335.preheader.i141.i.new ], [ %i.anz, %.lr.ph335.i143.i ] ; 3 uses
  %niter341 = phi i64 [ 0, %.lr.ph335.preheader.i141.i.new ], [ %niter341.next.1, %.lr.ph335.i143.i ]
  %i.anu = add i32 %.187333.i145.i, 1
  %i.anv = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !205
  %i.anw = getelementptr inbounds i8, ptr %i.anv, i64 %i.ant
  store i32 %.187333.i145.i, ptr %i.anw, align 1, !noalias !205
  %i.anx = load i64, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  %i.any = add nsw i64 %i.anx, 4                  ; 2 uses
  store i64 %i.any, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  %i.anz = add i32 %.187333.i145.i, 2             ; 3 uses
  %i.aoa = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !205
  %i.aob = getelementptr inbounds i8, ptr %i.aoa, i64 %i.any
  store i32 %i.anu, ptr %i.aob, align 1, !noalias !205
  %i.aoc = load i64, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  %i.aod = add nsw i64 %i.aoc, 4                  ; 3 uses
  store i64 %i.aod, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  %niter341.next.1 = add i64 %niter341, 2         ; 2 uses
  %niter341.ncmp.1 = icmp eq i64 %niter341.next.1, %unroll_iter340
  br i1 %niter341.ncmp.1, label %._crit_edge.i139.i.loopexit.unr-lcssa, label %.lr.ph335.i143.i, !llvm.loop !226

bb.hg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit194.i126.i
  %i.aoe = icmp eq i32 %.sroa.8.0.extract.shift.i122.i, 0
  br i1 %i.aoe, label %bb.hl, label %.preheader324.i127.i

.preheader324.i127.i:                             ; preds = %bb.hg
  %i.aof = sext i16 %.sroa.0276.0.extract.trunc.i121.i to i64 ; 2 uses
  %i.aog = icmp sgt i16 %.sroa.0276.0.extract.trunc.i121.i, 0
  br i1 %i.aog, label %.lr.ph.i132.i, label %.backedge.i128.i, !llvm.loop !220

.lr.ph.i132.i:                                    ; preds = %.preheader324.i127.i
  br label %bb.hh, !llvm.loop !220

bb.hh:                                            ; preds = %bb.hk, %.lr.ph.i132.i
  %.080331.i133.i = phi i64 [ 0, %.lr.ph.i132.i ], [ %i.aoz, %bb.hk ]
  %.183330.i134.i = phi i64 [ %.082343.i104.i, %.lr.ph.i132.i ], [ %i.aoy, %bb.hk ] ; 3 uses
  %.288329.i135.i = phi i32 [ %.086342.i105.i, %.lr.ph.i132.i ], [ %i.aox, %bb.hk ] ; 2 uses
  %i.aoh = lshr i64 %.183330.i134.i, 3            ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.yp, i64 %i.aoh
  %i.aoj = load i8, ptr %i.aoi, align 1, !tbaa !98, !noalias !205
  %i.aok = trunc i64 %.183330.i134.i to i8
  %i.aol = and i8 %i.aok, 7                       ; 2 uses
  %i.aom = lshr i8 %i.aoj, %i.aol
  %i.aon = trunc i8 %i.aom to i1
  br i1 %i.aon, label %bb.hi, label %bb.hk

bb.hi:                                            ; preds = %bb.hh
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.aoh
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !98, !noalias !205
  %i.aoq = lshr i8 %i.aop, %i.aol
  %i.aor = trunc i8 %i.aoq to i1
  br i1 %i.aor, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.aos = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !205
  %i.aot = load i64, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  %i.aou = getelementptr inbounds i8, ptr %i.aos, i64 %i.aot
  store i32 %.288329.i135.i, ptr %i.aou, align 1, !noalias !205
  %i.aov = load i64, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  %i.aow = add nsw i64 %i.aov, 4
  store i64 %i.aow, ptr %i.ake, align 8, !tbaa !131, !noalias !205
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi, %bb.hh
  %i.aox = add i32 %.288329.i135.i, 1             ; 2 uses
  %i.aoy = add nsw i64 %.183330.i134.i, 1
  %i.aoz = add nuw nsw i64 %.080331.i133.i, 1     ; 2 uses
  %exitcond.not.i136.i = icmp eq i64 %i.aoz, %i.aof
  br i1 %exitcond.not.i136.i, label %..loopexit325_crit_edge.i137.i, label %bb.hh, !llvm.loop !227

bb.hl:                                            ; preds = %bb.hg
  %sext.i.i = shl nuw i32 %.sroa.0.0.insert.insert.i263.i120.i, 16
  %i.apa = ashr exact i32 %sext.i.i, 16
  %i.apb = add i32 %i.apa, %.086342.i105.i
  %i.apc = sext i16 %.sroa.0276.0.extract.trunc.i121.i to i64
  %i.apd = add nsw i64 %.082343.i104.i, %i.apc
  br label %.backedge.i128.i

.backedge.i128.i:                                 ; preds = %bb.hl, %.preheader324.i127.i, %._crit_edge.i139.i, %..loopexit325_crit_edge.i137.i
  %.086.be.i129.i = phi i32 [ %i.apb, %bb.hl ], [ %.187.lcssa.i140.i, %._crit_edge.i139.i ], [ %i.aox, %..loopexit325_crit_edge.i137.i ], [ %.086342.i105.i, %.preheader324.i127.i ] ; 2 uses
  %.082.be.i130.i = phi i64 [ %i.apd, %bb.hl ], [ %i.ans, %._crit_edge.i139.i ], [ %104, %..loopexit325_crit_edge.i137.i ], [ %.082343.i104.i, %.preheader324.i127.i ]
  %i.ape = zext i32 %.086.be.i129.i to i64
  %i.apf = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !205
  %.not.i131.i = icmp sgt i64 %i.apf, %i.ape
  br i1 %.not.i131.i, label %bb.gu, label %.critedge151.i28.i, !llvm.loop !220

bb.hm:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #24, !noalias !205
  %i.apg = icmp eq ptr %i.ym, null
  br i1 %i.apg, label %_ZN5arrow6StatusD2Ev.exit.i.i.i96.i, label %bb.hn

_ZN5arrow6StatusD2Ev.exit.i.i.i96.i:              ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #24, !noalias !228
  %i.aph = shl nuw nsw i64 %i.f, 2
  %i.api = getelementptr inbounds nuw i8, ptr %71, i64 40 ; 7 uses
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %62, ptr noundef nonnull align 8 dereferenceable(56) %71, i64 noundef %i.aph, i1 noundef zeroext false)
          to label %.noexc196.i97.i unwind label %.loopexit.split-lp.i10.i, !noalias !205

.noexc196.i97.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i96.i
  %.pr.i.i.i98.i = load ptr, ptr %62, align 8, !tbaa !113, !noalias !228 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #24, !noalias !228
  %i.apj = icmp eq ptr %.pr.i.i.i98.i, null
  br i1 %i.apj, label %.lr.ph.i.preheader.i.i91.i, label %_ZN5arrow6StatusD2Ev.exit202.thread422.i84.i, !prof !156

.lr.ph.i.preheader.i.i91.i:                       ; preds = %.noexc196.i97.i
  %xtraiter321 = and i64 %i.f, 1
  %.pre9.i.i92.i = load i64, ptr %i.api, align 8, !tbaa !131, !noalias !228
  %unroll_iter326 = and i64 %i.f, 4294967294
  br label %.lr.ph.i.i.i93.i

.lr.ph.i.i.i93.i:                                 ; preds = %.lr.ph.i.i.i93.i, %.lr.ph.i.preheader.i.i91.i
  %i.apk = phi i64 [ %.pre9.i.i92.i, %.lr.ph.i.preheader.i.i91.i ], [ %i.apv, %.lr.ph.i.i.i93.i ]
  %.015.i.i.i94.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i91.i ], [ %i.apw, %.lr.ph.i.i.i93.i ] ; 3 uses
  %niter327 = phi i64 [ 0, %.lr.ph.i.preheader.i.i91.i ], [ %niter327.next.1, %.lr.ph.i.i.i93.i ]
  %i.apl = trunc i64 %.015.i.i.i94.i to i32
  %i.apm = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !228
  %i.apn = getelementptr inbounds i8, ptr %i.apm, i64 %i.apk
  store i32 %i.apl, ptr %i.apn, align 1, !noalias !228
  %i.apo = load i64, ptr %i.api, align 8, !tbaa !131, !noalias !228
  %i.app = add nsw i64 %i.apo, 4                  ; 2 uses
  store i64 %i.app, ptr %i.api, align 8, !tbaa !131, !noalias !228
  %i.apq = trunc i64 %.015.i.i.i94.i to i32
  %i.apr = or disjoint i32 %i.apq, 1
  %i.aps = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !228
  %i.apt = getelementptr inbounds i8, ptr %i.aps, i64 %i.app
  store i32 %i.apr, ptr %i.apt, align 1, !noalias !228
  %i.apu = load i64, ptr %i.api, align 8, !tbaa !131, !noalias !228
  %i.apv = add nsw i64 %i.apu, 4                  ; 3 uses
  store i64 %i.apv, ptr %i.api, align 8, !tbaa !131, !noalias !228
  %i.apw = add nuw nsw i64 %.015.i.i.i94.i, 2     ; 2 uses
  %niter327.next.1 = add nuw nsw i64 %niter327, 2 ; 2 uses
  %niter327.ncmp.1 = icmp eq i64 %niter327.next.1, %unroll_iter326
  br i1 %niter327.ncmp.1, label %_ZN5arrow6StatusD2Ev.exit208.i27.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i93.i, !llvm.loop !233

bb.hn:                                            ; preds = %bb.hm
  %i.apx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !99, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #24, !noalias !234
  invoke void @_ZN5arrow8internal19BaseSetBitRunReaderILb0EEC2EPKhll(ptr noundef nonnull align 8 dereferenceable(36) %63, ptr noundef nonnull %i.ym, i64 noundef %i.apy, i64 noundef %i.f)
          to label %.noexc197.i16.i unwind label %.loopexit.split-lp.i10.i, !noalias !205

.noexc197.i16.i:                                  ; preds = %bb.hn
  %i.apz = invoke { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %.noexc198.i17.i unwind label %.loopexit.split-lp.i10.i, !noalias !205 ; 2 uses

.noexc198.i17.i:                                  ; preds = %.noexc197.i16.i
  %i.aqa = extractvalue { i64, i64 } %i.apz, 1    ; 2 uses
  %i.aqb = icmp eq i64 %i.aqa, 0
  br i1 %i.aqb, label %_ZN5arrow6StatusD2Ev.exit202.thread424.i26.i, label %.lr.ph.i.i18.i

.lr.ph.i.i18.i:                                   ; preds = %.noexc198.i17.i
  %i.aqc = getelementptr inbounds nuw i8, ptr %71, i64 40 ; 8 uses
  br label %bb.ho

bb.ho:                                            ; preds = %.noexc200.i25.i, %.lr.ph.i.i18.i
  %i.aqd = phi i64 [ %i.aqa, %.lr.ph.i.i18.i ], [ %i.ark, %.noexc200.i25.i ] ; 6 uses
  %i.aqe = phi { i64, i64 } [ %i.apz, %.lr.ph.i.i18.i ], [ %i.arj, %.noexc200.i25.i ]
  %i.aqf = extractvalue { i64, i64 } %i.aqe, 0    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #24, !noalias !235
  %i.aqg = shl i64 %i.aqd, 2
  %i.aqh = load i64, ptr %i.aqc, align 8, !tbaa !131, !noalias !238
  %i.aqi = add nsw i64 %i.aqh, %i.aqg             ; 2 uses
  %i.aqj = load i64, ptr %i.aju, align 8, !tbaa !148, !noalias !238 ; 2 uses
  %.not.i.i.i15.i.i19.i = icmp sgt i64 %i.aqi, %i.aqj
  br i1 %.not.i.i.i15.i.i19.i, label %_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i20.i

_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i20.i:     ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24, !noalias !235
  br label %_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i

_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i:            ; preds = %bb.ho
  %i.aqk = shl nsw i64 %i.aqj, 1
  %.sroa.speculated.i.i.i.i23.i.i80.i = call noundef i64 @llvm.smax.i64(i64 %i.aqi, i64 %i.aqk)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %61, ptr noundef nonnull align 8 dereferenceable(56) %71, i64 noundef %.sroa.speculated.i.i.i.i23.i.i80.i, i1 noundef zeroext false)
          to label %.noexc199.i81.i unwind label %.loopexit326.i23.i, !noalias !205

.noexc199.i81.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i
  %.pr.i24.i.i82.i = load ptr, ptr %61, align 8, !tbaa !113, !noalias !235 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #24, !noalias !235
  %i.aql = icmp eq ptr %.pr.i24.i.i82.i, null
  br i1 %i.aql, label %_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i, label %_ZN5arrow6StatusD2Ev.exit202.i83.i, !prof !156

_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i:          ; preds = %.noexc199.i81.i, %_ZN5arrow6StatusD2Ev.exit.thread.i16.i.i20.i
  %i.aqm = icmp sgt i64 %i.aqd, 0
  br i1 %i.aqm, label %.lr.ph.i19.preheader.i.i74.i, label %.loopexit.i.i22.i

.lr.ph.i19.preheader.i.i74.i:                     ; preds = %_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i
  %.pre.i.i75.i = load i64, ptr %i.aqc, align 8, !tbaa !131, !noalias !235 ; 2 uses
  %xtraiter314 = and i64 %i.aqd, 1
  %i.aqn = icmp eq i64 %i.aqd, 1
  br i1 %i.aqn, label %.lr.ph.i19.i.i76.i.epil.preheader, label %.lr.ph.i19.preheader.i.i74.i.new

.lr.ph.i19.preheader.i.i74.i.new:                 ; preds = %.lr.ph.i19.preheader.i.i74.i
  %unroll_iter319 = and i64 %i.aqd, 9223372036854775806
  br label %.lr.ph.i19.i.i76.i

.lr.ph.i19.i.i76.i:                               ; preds = %.lr.ph.i19.i.i76.i, %.lr.ph.i19.preheader.i.i74.i.new
  %i.aqo = phi i64 [ %.pre.i.i75.i, %.lr.ph.i19.preheader.i.i74.i.new ], [ %i.arb, %.lr.ph.i19.i.i76.i ]
  %.015.i20.i.i77.i = phi i64 [ 0, %.lr.ph.i19.preheader.i.i74.i.new ], [ %i.arc, %.lr.ph.i19.i.i76.i ] ; 3 uses
  %niter320 = phi i64 [ 0, %.lr.ph.i19.preheader.i.i74.i.new ], [ %niter320.next.1, %.lr.ph.i19.i.i76.i ]
  %i.aqp = add nsw i64 %.015.i20.i.i77.i, %i.aqf
  %i.aqq = trunc i64 %i.aqp to i32
  %i.aqr = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !235
  %i.aqs = getelementptr inbounds i8, ptr %i.aqr, i64 %i.aqo
  store i32 %i.aqq, ptr %i.aqs, align 1, !noalias !235
  %i.aqt = load i64, ptr %i.aqc, align 8, !tbaa !131, !noalias !235
  %i.aqu = add nsw i64 %i.aqt, 4                  ; 2 uses
  store i64 %i.aqu, ptr %i.aqc, align 8, !tbaa !131, !noalias !235
  %i.aqv = or disjoint i64 %.015.i20.i.i77.i, 1
  %i.aqw = add nsw i64 %i.aqv, %i.aqf
  %i.aqx = trunc i64 %i.aqw to i32
  %i.aqy = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !235
  %i.aqz = getelementptr inbounds i8, ptr %i.aqy, i64 %i.aqu
  store i32 %i.aqx, ptr %i.aqz, align 1, !noalias !235
  %i.ara = load i64, ptr %i.aqc, align 8, !tbaa !131, !noalias !235
  %i.arb = add nsw i64 %i.ara, 4                  ; 3 uses
  store i64 %i.arb, ptr %i.aqc, align 8, !tbaa !131, !noalias !235
  %i.arc = add nuw nsw i64 %.015.i20.i.i77.i, 2   ; 2 uses
  %niter320.next.1 = add i64 %niter320, 2         ; 2 uses
  %niter320.ncmp.1 = icmp eq i64 %niter320.next.1, %unroll_iter319
  br i1 %niter320.ncmp.1, label %.loopexit.i.i22.i.loopexit.unr-lcssa, label %.lr.ph.i19.i.i76.i, !llvm.loop !233

.loopexit.i.i22.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i19.i.i76.i
  %lcmp.mod317.not = icmp eq i64 %xtraiter314, 0
  br i1 %lcmp.mod317.not, label %.loopexit.i.i22.i, label %.lr.ph.i19.i.i76.i.epil.preheader

.lr.ph.i19.i.i76.i.epil.preheader:                ; preds = %.loopexit.i.i22.i.loopexit.unr-lcssa, %.lr.ph.i19.preheader.i.i74.i
  %.epil.init316 = phi i64 [ %.pre.i.i75.i, %.lr.ph.i19.preheader.i.i74.i ], [ %i.arb, %.loopexit.i.i22.i.loopexit.unr-lcssa ]
  %.015.i20.i.i77.i.epil.init = phi i64 [ 0, %.lr.ph.i19.preheader.i.i74.i ], [ %i.arc, %.loopexit.i.i22.i.loopexit.unr-lcssa ]
  %lcmp.mod318 = trunc i64 %i.aqd to i1
  call void @llvm.assume(i1 %lcmp.mod318)
  %i.ard = add nsw i64 %.015.i20.i.i77.i.epil.init, %i.aqf
  %i.are = trunc i64 %i.ard to i32
  %i.arf = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !235
  %i.arg = getelementptr inbounds i8, ptr %i.arf, i64 %.epil.init316
  store i32 %i.are, ptr %i.arg, align 1, !noalias !235
  %i.arh = load i64, ptr %i.aqc, align 8, !tbaa !131, !noalias !235
  %i.ari = add nsw i64 %i.arh, 4
  store i64 %i.ari, ptr %i.aqc, align 8, !tbaa !131, !noalias !235
  br label %.loopexit.i.i22.i

.loopexit.i.i22.i:                                ; preds = %.lr.ph.i19.i.i76.i.epil.preheader, %.loopexit.i.i22.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit13.i17.i.i21.i
  %i.arj = invoke { i64, i64 } @_ZN5arrow8internal19BaseSetBitRunReaderILb0EE7NextRunEv(ptr noundef nonnull align 8 dereferenceable(36) %63)
          to label %.noexc200.i25.i unwind label %.loopexit326.i23.i, !noalias !205 ; 2 uses

.noexc200.i25.i:                                  ; preds = %.loopexit.i.i22.i
  %i.ark = extractvalue { i64, i64 } %i.arj, 1    ; 2 uses
  %i.arl = icmp eq i64 %i.ark, 0
  br i1 %i.arl, label %_ZN5arrow6StatusD2Ev.exit202.thread424.i26.i, label %bb.ho

_ZN5arrow6StatusD2Ev.exit202.thread424.i26.i:     ; preds = %.noexc200.i25.i, %.noexc198.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24, !noalias !234
  br label %_ZN5arrow6StatusD2Ev.exit208.i27.i

_ZN5arrow6StatusD2Ev.exit202.i83.i:               ; preds = %.noexc199.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #24, !noalias !234
  br label %_ZN5arrow6StatusD2Ev.exit202.thread422.i84.i

_ZN5arrow6StatusD2Ev.exit202.thread422.i84.i:     ; preds = %_ZN5arrow6StatusD2Ev.exit202.i83.i, %.noexc196.i97.i
  %.pr.i24.i.lcssa.sink.i85.i = phi ptr [ %.pr.i24.i.i82.i, %_ZN5arrow6StatusD2Ev.exit202.i83.i ], [ %.pr.i.i.i98.i, %.noexc196.i97.i ]
  store ptr %.pr.i24.i.lcssa.sink.i85.i, ptr %74, align 8, !tbaa !113, !noalias !205
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %74) #24
  %i.arm = load ptr, ptr %74, align 8, !tbaa !113, !noalias !205 ; 2 uses
  %.not.i203.i86.i = icmp eq ptr %i.arm, null
  br i1 %.not.i203.i86.i, label %_ZN5arrow6StatusD2Ev.exit204.i87.i, label %bb.hp, !prof !117

bb.hp:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit202.thread422.i84.i
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 1
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !118, !range !127, !noundef !128
  %i.arp = trunc nuw i8 %i.aro to i1
  br i1 %i.arp, label %_ZN5arrow6StatusD2Ev.exit204.i87.i, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %74) #24
  br label %_ZN5arrow6StatusD2Ev.exit204.i87.i

_ZN5arrow6StatusD2Ev.exit204.i87.i:               ; preds = %bb.hq, %bb.hp, %_ZN5arrow6StatusD2Ev.exit202.thread422.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24, !noalias !205
  br label %bb.jn

.loopexit326.i23.i:                               ; preds = %.loopexit.i.i22.i, %_ZN5arrow6StatusD2Ev.exit.i22.i.i79.i
  %lpad.loopexit.i24.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

.loopexit.split-lp.i10.i:                         ; preds = %.noexc197.i16.i, %bb.hn, %_ZN5arrow6StatusD2Ev.exit.i.i.i96.i
  %lpad.loopexit.split-lp.i11.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.hr

bb.hr:                                            ; preds = %.loopexit.split-lp.i10.i, %.loopexit326.i23.i
  %lpad.phi.i12.i = phi { ptr, i32 } [ %lpad.loopexit.i24.i, %.loopexit326.i23.i ], [ %lpad.loopexit.split-lp.i11.i, %.loopexit.split-lp.i10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24, !noalias !205
  br label %bb.ju

_ZN5arrow6StatusD2Ev.exit208.i27.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i93.i
  %lcmp.mod324.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod324.not, label %_ZN5arrow6StatusD2Ev.exit208.i27.i, label %.lr.ph.i.i.i93.i.epil.preheader

.lr.ph.i.i.i93.i.epil.preheader:                  ; preds = %_ZN5arrow6StatusD2Ev.exit208.i27.i.loopexit.unr-lcssa
  %lcmp.mod325 = trunc i64 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod325)
  %i.arq = trunc i64 %i.apw to i32
  %i.arr = load ptr, ptr %i.ajt, align 8, !tbaa !88, !noalias !228
  %i.ars = getelementptr inbounds i8, ptr %i.arr, i64 %i.apv
  store i32 %i.arq, ptr %i.ars, align 1, !noalias !228
  %i.art = load i64, ptr %i.api, align 8, !tbaa !131, !noalias !228
  %i.aru = add nsw i64 %i.art, 4
  store i64 %i.aru, ptr %i.api, align 8, !tbaa !131, !noalias !228
  br label %_ZN5arrow6StatusD2Ev.exit208.i27.i

_ZN5arrow6StatusD2Ev.exit208.i27.i:               ; preds = %.lr.ph.i.i.i93.i.epil.preheader, %_ZN5arrow6StatusD2Ev.exit208.i27.i.loopexit.unr-lcssa, %_ZN5arrow6StatusD2Ev.exit202.thread424.i26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #24, !noalias !205
  br label %.critedge151.i28.i

.critedge151.i28.i:                               ; preds = %.backedge.i128.i, %_ZN5arrow6StatusD2Ev.exit208.i27.i
  %i.arv = getelementptr inbounds nuw i8, ptr %71, i64 40
  %i.arw = load i64, ptr %i.arv, align 8, !tbaa !131, !noalias !205
  %i.arx = lshr i64 %i.arw, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #24, !noalias !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %75, i8 0, i64 16, i1 false), !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #24, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #24, !noalias !205
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %77, ptr noundef nonnull align 8 dereferenceable(56) %71, ptr noundef nonnull %75, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit211.i30.i unwind label %bb.hv, !noalias !205

_ZN5arrow6StatusD2Ev.exit211.i30.i:               ; preds = %.critedge151.i28.i
  %i.ary = load ptr, ptr %77, align 8, !tbaa !113, !noalias !205 ; 2 uses
  store ptr %i.ary, ptr %76, align 8, !tbaa !113, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24, !noalias !205
  %i.arz = icmp eq ptr %i.ary, null
  br i1 %i.arz, label %_ZN5arrow6StatusD2Ev.exit217.i42.i, label %bb.hs, !prof !117

bb.hs:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit211.i30.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %76) #24
  %i.asa = load ptr, ptr %76, align 8, !tbaa !113, !noalias !205 ; 2 uses
  %.not.i212.i31.i = icmp eq ptr %i.asa, null
  br i1 %.not.i212.i31.i, label %_ZN5arrow6StatusD2Ev.exit213.i32.i, label %bb.ht, !prof !117

bb.ht:                                            ; preds = %bb.hs
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 1
  %i.asc = load i8, ptr %i.asb, align 1, !tbaa !118, !range !127, !noundef !128
  %i.asd = trunc nuw i8 %i.asc to i1
  br i1 %i.asd, label %_ZN5arrow6StatusD2Ev.exit213.i32.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %76) #24
  br label %_ZN5arrow6StatusD2Ev.exit213.i32.i

_ZN5arrow6StatusD2Ev.exit213.i32.i:               ; preds = %bb.hu, %bb.ht, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24, !noalias !205
  br label %bb.jf

bb.hv:                                            ; preds = %.critedge151.i28.i
  %i.ase = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24, !noalias !205
  br label %bb.jm

_ZN5arrow6StatusD2Ev.exit217.i42.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit211.i30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #24, !noalias !205
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #24, !noalias !205
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a
  br i1 %i.auw, label %bb.in, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i63.i, !prof !104

bb.in:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.i61.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.auh) #24, !noalias !205
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i63.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i63.i: ; preds = %bb.in, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.i61.i, %bb.ij, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i58.i
  %i.aux = load ptr, ptr %i.atc, align 8, !tbaa !95, !noalias !205 ; 8 uses
  %.not.i.i233.1.i64.i = icmp eq ptr %i.aux, null
  br i1 %.not.i.i233.1.i64.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i68.i, label %bb.io

bb.io:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i63.i
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 8 ; 4 uses
  %i.auz = load atomic i64, ptr %i.auy acquire, align 8, !noalias !205 ; 2 uses
  %i.ava = icmp eq i64 %i.auz, 4294967297
  %i.avb = trunc i64 %i.auz to i32                ; 2 uses
  br i1 %i.ava, label %bb.it, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.avc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !205
  %.not.i.i.i234.1.i65.i = icmp eq i8 %i.avc, 0
  br i1 %.not.i.i.i234.1.i65.i, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.avd = add nsw i32 %i.avb, -1
  store i32 %i.avd, ptr %i.auy, align 4, !tbaa !3, !noalias !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i66.i

bb.ir:                                            ; preds = %bb.ip
  %i.ave = atomicrmw volatile add ptr %i.auy, i32 -1 acq_rel, align 4, !noalias !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i66.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i66.i: ; preds = %bb.ir, %bb.iq
  %.0.i.i.i.i236.1.i67.i = phi i32 [ %i.avb, %bb.iq ], [ %i.ave, %bb.ir ]
  %i.avf = icmp eq i32 %.0.i.i.i.i236.1.i67.i, 1
  br i1 %i.avf, label %bb.is, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i68.i, !prof !104

bb.is:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i66.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aux) #24, !noalias !205
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i68.i

bb.it:                                            ; preds = %bb.io
  store i32 0, ptr %i.auy, align 8, !tbaa !134, !noalias !205
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aux, i64 12
  store i32 0, ptr %i.avg, align 4, !tbaa !136, !noalias !205
  %i.avh = load ptr, ptr %i.aux, align 8, !tbaa !90, !noalias !205
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 16
  %i.avj = load ptr, ptr %i.avi, align 8, !noalias !205
  call void %i.avj(ptr noundef nonnull align 8 dereferenceable(16) %i.aux) #24, !noalias !205, !inline_history !250
  %i.avk = load ptr, ptr %i.aux, align 8, !tbaa !90, !noalias !205
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 24
  %i.avm = load ptr, ptr %i.avl, align 8, !noalias !205
  call void %i.avm(ptr noundef nonnull align 8 dereferenceable(16) %i.aux) #24, !noalias !205, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i68.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i68.i: ; preds = %bb.it, %bb.is, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i235.1.i66.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24, !noalias !205
  %i.avn = load ptr, ptr %i.asg, align 8, !tbaa !95, !noalias !205 ; 8 uses
  %.not.i.i237.i69.i = icmp eq ptr %i.avn, null
  br i1 %.not.i.i237.i69.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i73.i, label %bb.iu

bb.iu:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i68.i
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 8 ; 4 uses
  %i.avp = load atomic i64, ptr %i.avo acquire, align 8, !noalias !205 ; 2 uses
  %i.avq = icmp eq i64 %i.avp, 4294967297
  %i.avr = trunc i64 %i.avp to i32                ; 2 uses
  br i1 %i.avq, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  store i32 0, ptr %i.avo, align 8, !tbaa !134, !noalias !205
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avn, i64 12
  store i32 0, ptr %i.avs, align 4, !tbaa !136, !noalias !205
  %i.avt = load ptr, ptr %i.avn, align 8, !tbaa !90, !noalias !205
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 16
  %i.avv = load ptr, ptr %i.avu, align 8, !noalias !205
  call void %i.avv(ptr noundef nonnull align 8 dereferenceable(16) %i.avn) #24, !noalias !205, !inline_history !251
  %i.avw = load ptr, ptr %i.avn, align 8, !tbaa !90, !noalias !205
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 24
  %i.avy = load ptr, ptr %i.avx, align 8, !noalias !205
  call void %i.avy(ptr noundef nonnull align 8 dereferenceable(16) %i.avn) #24, !noalias !205, !inline_history !251
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i73.i

bb.iw:                                            ; preds = %bb.iu
  %i.avz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !205
  %.not.i.i.i238.i70.i = icmp eq i8 %i.avz, 0
  br i1 %.not.i.i.i238.i70.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.awa = add nsw i32 %i.avr, -1
  store i32 %i.awa, ptr %i.avo, align 4, !tbaa !3, !noalias !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i71.i

bb.iy:                                            ; preds = %bb.iw
  %i.awb = atomicrmw volatile add ptr %i.avo, i32 -1 acq_rel, align 4, !noalias !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i71.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i71.i: ; preds = %bb.iy, %bb.ix
  %.0.i.i.i.i240.i72.i = phi i32 [ %i.avr, %bb.ix ], [ %i.awb, %bb.iy ]
  %i.awc = icmp eq i32 %.0.i.i.i.i240.i72.i, 1
  br i1 %i.awc, label %bb.iz, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i73.i, !prof !104

bb.iz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i71.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avn) #24, !noalias !205
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i73.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i73.i: ; preds = %bb.iz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i239.i71.i, %bb.iv, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.1.i68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #24, !noalias !205
  br label %bb.jf

bb.ja:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit217.i42.i
  %i.awd = landingpad { ptr, i32 }
          cleanup
  br label %bb.je

bb.jb:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit.i49.i
  %i.awe = landingpad { ptr, i32 }
          cleanup
  br label %bb.jd

bb.jc:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1.i57.i
  %i.awf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %79) #24, !noalias !205
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %.pn131.i50.i = phi { ptr, i32 } [ %i.awf, %bb.jc ], [ %i.awe, %bb.jb ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.asp) #24, !noalias !205
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %80) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #24, !noalias !205
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %78) #24, !noalias !205
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.ja
  %.pn131.pn.i43.i = phi { ptr, i32 } [ %.pn131.i50.i, %bb.jd ], [ %i.awd, %bb.ja ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #24, !noalias !205
  br label %bb.jm

bb.jf:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i73.i, %_ZN5arrow6StatusD2Ev.exit213.i32.i
  %i.awg = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.awh = load ptr, ptr %i.awg, align 8, !tbaa !95, !noalias !205 ; 8 uses
  %.not.i.i241.i33.i = icmp eq ptr %i.awh, null
  br i1 %.not.i.i241.i33.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i37.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 8 ; 4 uses
  %i.awj = load atomic i64, ptr %i.awi acquire, align 8 ; 2 uses
  %i.awk = icmp eq i64 %i.awj, 4294967297
  %i.awl = trunc i64 %i.awj to i32                ; 2 uses
  br i1 %i.awk, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  store i32 0, ptr %i.awi, align 8, !tbaa !134
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awh, i64 12
  store i32 0, ptr %i.awm, align 4, !tbaa !136
  %i.awn = load ptr, ptr %i.awh, align 8, !tbaa !90
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 16
  %i.awp = load ptr, ptr %i.awo, align 8
  call void %i.awp(ptr noundef nonnull align 8 dereferenceable(16) %i.awh) #24, !inline_history !250
  %i.awq = load ptr, ptr %i.awh, align 8, !tbaa !90
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 24
  %i.aws = load ptr, ptr %i.awr, align 8
  call void %i.aws(ptr noundef nonnull align 8 dereferenceable(16) %i.awh) #24, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i37.i

bb.ji:                                            ; preds = %bb.jg
  %i.awt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !205
  %.not.i.i.i242.i34.i = icmp eq i8 %i.awt, 0
  br i1 %.not.i.i.i242.i34.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.awu = add nsw i32 %i.awl, -1
  store i32 %i.awu, ptr %i.awi, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i35.i

bb.jk:                                            ; preds = %bb.ji
  %i.awv = atomicrmw volatile add ptr %i.awi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i35.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i35.i: ; preds = %bb.jk, %bb.jj
  %.0.i.i.i.i244.i36.i = phi i32 [ %i.awl, %bb.jj ], [ %i.awv, %bb.jk ]
  %i.aww = icmp eq i32 %.0.i.i.i.i244.i36.i, 1
  br i1 %i.aww, label %bb.jl, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i37.i, !prof !104

bb.jl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i35.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awh) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i37.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i37.i: ; preds = %bb.jl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i243.i35.i, %bb.jh, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #24, !noalias !205
  br label %bb.jn

bb.jm:                                            ; preds = %bb.je, %bb.hv
  %.pn131.pn.pn.i29.i = phi { ptr, i32 } [ %.pn131.pn.i43.i, %bb.je ], [ %i.ase, %bb.hv ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %75) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #24, !noalias !205
  br label %bb.ju

bb.jn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit245.i37.i, %_ZN5arrow6StatusD2Ev.exit204.i87.i, %.thread318.i151.i
  %i.awx = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !95, !noalias !205 ; 8 uses
  %.not.i.i.i.i246.i38.i = icmp eq ptr %i.awy, null
  br i1 %.not.i.i.i.i246.i38.i, label %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 8 ; 4 uses
  %i.axa = load atomic i64, ptr %i.awz acquire, align 8 ; 2 uses
  %i.axb = icmp eq i64 %i.axa, 4294967297
  %i.axc = trunc i64 %i.axa to i32                ; 2 uses
  br i1 %i.axb, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  store i32 0, ptr %i.awz, align 8, !tbaa !134
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awy, i64 12
  store i32 0, ptr %i.axd, align 4, !tbaa !136
  %i.axe = load ptr, ptr %i.awy, align 8, !tbaa !90
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 16
  %i.axg = load ptr, ptr %i.axf, align 8
  call void %i.axg(ptr noundef nonnull align 8 dereferenceable(16) %i.awy) #24, !inline_history !252
  %i.axh = load ptr, ptr %i.awy, align 8, !tbaa !90
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 24
  %i.axj = load ptr, ptr %i.axi, align 8
  call void %i.axj(ptr noundef nonnull align 8 dereferenceable(16) %i.awy) #24, !inline_history !252
  br label %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i

bb.jq:                                            ; preds = %bb.jo
  %i.axk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !205
  %.not.i.i.i.i.i247.i39.i = icmp eq i8 %i.axk, 0
  br i1 %.not.i.i.i.i.i247.i39.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.axl = add nsw i32 %i.axc, -1
  store i32 %i.axl, ptr %i.awz, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40.i

bb.js:                                            ; preds = %bb.jq
  %i.axm = atomicrmw volatile add ptr %i.awz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40.i: ; preds = %bb.js, %bb.jr
  %.0.i.i.i.i.i.i.i41.i = phi i32 [ %i.axc, %bb.jr ], [ %i.axm, %bb.js ]
  %i.axn = icmp eq i32 %.0.i.i.i.i.i.i.i41.i, 1
  br i1 %i.axn, label %bb.jt, label %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i, !prof !104

bb.jt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.awy) #24
  br label %_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i

_ZN5arrow18TypedBufferBuilderIjvED2Ev.exit.i.i:   ; preds = %bb.jt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i40.i, %bb.jp, %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24, !noalias !205
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE.exit

bb.ju:                                            ; preds = %bb.jm, %bb.hr, %bb.hf
  %.pn131.pn.pn.pn.i13.i = phi { ptr, i32 } [ %.pn131.pn.pn.i29.i, %bb.jm ], [ %lpad.phi.i12.i, %bb.hr ], [ %i.anh, %bb.hf ]
  call void @_ZN5arrow18TypedBufferBuilderIjvED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %71) #24, !noalias !205
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #24, !noalias !205
  br label %common.resume

bb.jv:                                            ; preds = %bb.em
  call void @llvm.lifetime.start.p0(ptr nonnull %101) #24, !noalias !59
  call void @_ZN5arrow6Status8FromArgsIJRA87_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %101, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(87) @.str.6), !noalias !59
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %101) #24
  %i.axo = load ptr, ptr %101, align 8, !tbaa !113, !noalias !59 ; 2 uses
  %.not.i262.i = icmp eq ptr %i.axo, null
  br i1 %.not.i262.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.jw, !prof !117

bb.jw:                                            ; preds = %bb.jv
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 1
  %i.axq = load i8, ptr %i.axp, align 1, !tbaa !118, !range !127, !noundef !128
  %i.axr = trunc nuw i8 %i.axq to i1
  br i1 %i.axr, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %101) #24
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.jx, %bb.jw, %bb.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #24, !noalias !59
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE.exit

bb.jy:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.axs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !256, !noalias !253
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !257, !noalias !253
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 56
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !260, !noalias !253
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 40
  %i.axy = load i32, ptr %i.axx, align 8, !tbaa !42, !noalias !253
  %i.axz = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i32 %i.axy, label %bb.sh [
    i32 5, label %bb.jz
    i32 7, label %bb.od
  ]

bb.jz:                                            ; preds = %bb.jy
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ayc = load ptr, ptr %i.axz, align 8, !tbaa !264, !noalias !265 ; 7 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 152
  %i.aye = load i64, ptr %i.ayd, align 8, !tbaa !99, !noalias !265 ; 3 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.ayc, i64 160
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !66, !noalias !265 ; 3 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayc, i64 184
  %i.ayi = load ptr, ptr %i.ayh, align 8, !tbaa !66, !noalias !265 ; 3 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayc, i64 144
  %i.ayk = load i64, ptr %i.ayj, align 8, !tbaa !71, !noalias !265
  %.not.i.i.i8 = icmp ne i64 %i.ayk, 0
  %i.ayl = icmp ne ptr %i.ayg, null
  %i.aym = select i1 %.not.i.i.i8, i1 %i.ayl, i1 false ; 2 uses
  %i.ayn = load i64, ptr %i.aya, align 8, !tbaa !99, !noalias !265 ; 8 uses
  %i.ayo = load i64, ptr %i.ayb, align 8, !tbaa !62, !noalias !265 ; 12 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayc, i64 24
  %i.ayq = load i64, ptr %i.ayp, align 8, !tbaa !99, !noalias !265
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayc, i64 56
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !66, !noalias !265
  %i.ayt = getelementptr inbounds [2 x i8], ptr %i.ays, i64 %i.ayq ; 10 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayc, i64 8
  %i.ayv = load i64, ptr %i.ayu, align 8, !tbaa !62, !noalias !266 ; 2 uses
  %i.ayw = icmp sgt i64 %i.ayv, 0
  br i1 %i.ayw, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE5beginEv.exit.i.i

_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i: ; preds = %bb.jz, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ], [ %i.ayt, %bb.jz ] ; 2 uses
  %.01116.i.i.i.i.i.i.i = phi i64 [ %.112.i.i.i.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ], [ %i.ayv, %bb.jz ] ; 2 uses
  %i.ayx = lshr i64 %.01116.i.i.i.i.i.i.i, 1      ; 3 uses
  %i.ayy = getelementptr inbounds nuw [2 x i8], ptr %.017.i.i.i.i.i.i.i, i64 %i.ayx ; 2 uses
  %i.ayz = load i16, ptr %i.ayy, align 2, !tbaa !269, !noalias !266
  %i.aza = sext i16 %i.ayz to i64
  %i.azb = icmp slt i64 %i.ayn, %i.aza            ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayy, i64 2
  %i.azd = xor i64 %i.ayx, -1
  %i.aze = add nsw i64 %.01116.i.i.i.i.i.i.i, %i.azd
  %.112.i.i.i.i.i.i.i = select i1 %i.azb, i64 %i.ayx, i64 %i.aze ; 2 uses
  %.1.i.i.i.i.i.i.i = select i1 %i.azb, ptr %.017.i.i.i.i.i.i.i, ptr %i.azc ; 2 uses
  %i.azf = icmp sgt i64 %.112.i.i.i.i.i.i.i, 0
  br i1 %i.azf, label %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE5beginEv.exit.i.i, !llvm.loop !270

_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE5beginEv.exit.i.i: ; preds = %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, %bb.jz
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ayt, %bb.jz ], [ %.1.i.i.i.i.i.i.i, %_ZSt9__advanceIPKslEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ]
  %i.azg = ptrtoint ptr %i.ayt to i64
  %i.azh = ptrtoint ptr %.0.lcssa.i.i.i.i.i.i.i to i64
  %i.azi = sub i64 %i.azh, %i.azg
  %i.azj = ashr exact i64 %i.azi, 1               ; 3 uses
  %i.azk = icmp eq i32 %2, 1
  %or.cond.i.i9 = and i1 %i.azk, %i.aym
  br i1 %or.cond.i.i9, label %bb.ka, label %bb.lr

bb.ka:                                            ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE5beginEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24, !noalias !265
  %i.azl = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %3, ptr %i.azl, align 8, !tbaa !72, !noalias !265
  %i.azm = getelementptr inbounds nuw i8, ptr %43, i64 16
  store i64 64, ptr %i.azm, align 8, !tbaa !86, !noalias !265
  %i.azn = getelementptr inbounds nuw i8, ptr %43, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.azn, i8 0, i64 16, i1 false), !noalias !265
  %i.azo = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr %3, ptr %i.azo, align 8, !tbaa !87, !noalias !265
  %i.azp = getelementptr inbounds nuw i8, ptr %43, i64 48 ; 2 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.azp, align 8, !tbaa !88, !noalias !265
  %i.azq = getelementptr inbounds nuw i8, ptr %43, i64 56
  %i.azr = getelementptr inbounds nuw i8, ptr %43, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.azq, i8 0, i64 16, i1 false), !noalias !265
  store i64 64, ptr %i.azr, align 8, !tbaa !89, !noalias !265
  %i.azs = getelementptr inbounds nuw i8, ptr %43, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.azs, i8 0, i64 64, i1 false), !noalias !265
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int16TypeEEE, i64 16), ptr %43, align 8, !tbaa !90, !noalias !265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.azt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %.noexc.i.i.i27 unwind label %bb.ke, !noalias !265 ; 2 uses

.noexc.i.i.i27:                                   ; preds = %bb.ka
  %i.azu = getelementptr inbounds nuw i8, ptr %43, i64 144
  %i.azv = getelementptr inbounds nuw i8, ptr %43, i64 152
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azt, i64 8
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !95, !noalias !274 ; 2 uses
  %i.azy = load <2 x ptr>, ptr %i.azt, align 8, !tbaa !97, !noalias !274
  store <2 x ptr> %i.azy, ptr %i.azu, align 8, !tbaa !97, !alias.scope !271, !noalias !265
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.azx, null
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i.i, label %bb.kb

bb.kb:                                            ; preds = %.noexc.i.i.i27
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azx, i64 8 ; 3 uses
  %i.baa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !274
  %.not.i.i.i.i.i.i.i.i29 = icmp eq i8 %i.baa, 0
  br i1 %.not.i.i.i.i.i.i.i.i29, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bab = load i32, ptr %i.azz, align 4, !tbaa !3, !noalias !274
  %i.bac = add nsw i32 %i.bab, 1
  store i32 %i.bac, ptr %i.azz, align 4, !tbaa !3, !noalias !274
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i.i

bb.kd:                                            ; preds = %bb.kb
  %i.bad = atomicrmw volatile add ptr %i.azz, i32 1 acq_rel, align 4, !noalias !274 ; 0 uses
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEEC2IS1_EENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEPNS_10MemoryPoolEE4typeEl.exit.i.i

bb.ke:                                            ; preds = %bb.ka
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a

bb.la:                                            ; preds = %bb.ky
  %i.bep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !265
  %.not.i.i.i.i.i32 = icmp eq i8 %i.bep, 0
  br i1 %.not.i.i.i.i.i32, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.beq = add nsw i32 %i.beh, -1
  store i32 %i.beq, ptr %i.bee, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i33

bb.lc:                                            ; preds = %bb.la
  %i.ber = atomicrmw volatile add ptr %i.bee, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i33: ; preds = %bb.lc, %bb.lb
  %.0.i.i.i.i.i.i34 = phi i32 [ %i.beh, %bb.lb ], [ %i.ber, %bb.lc ]
  %i.bes = icmp eq i32 %.0.i.i.i.i.i.i34, 1
  br i1 %i.bes, label %bb.ld, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i35, !prof !104

bb.ld:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i33
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre331.i.i) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i35

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i35: ; preds = %bb.ld, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i33, %bb.kz, %bb.kx, %.thread.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24, !noalias !265
  br label %.critedge130.i.i

.critedge130.i.i:                                 ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i35, %_ZN5arrow6StatusD2Ev.exit164.i.i, %_ZN5arrow6StatusD2Ev.exit154.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int16TypeEEE, i64 16), ptr %43, align 8, !tbaa !90, !noalias !265
  %i.bet = getelementptr inbounds nuw i8, ptr %43, i64 168
  %i.beu = load ptr, ptr %i.bet, align 8, !tbaa !95, !noalias !265 ; 8 uses
  %.not.i.i.i.i.i182.i.i = icmp eq ptr %i.beu, null
  br i1 %.not.i.i.i.i.i182.i.i, label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i.i, label %bb.le

bb.le:                                            ; preds = %.critedge130.i.i
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 8 ; 4 uses
  %i.bew = load atomic i64, ptr %i.bev acquire, align 8 ; 2 uses
  %i.bex = icmp eq i64 %i.bew, 4294967297
  %i.bey = trunc i64 %i.bew to i32                ; 2 uses
  br i1 %i.bex, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  store i32 0, ptr %i.bev, align 8, !tbaa !134
  %i.bez = getelementptr inbounds nuw i8, ptr %i.beu, i64 12
  store i32 0, ptr %i.bez, align 4, !tbaa !136
  %i.bfa = load ptr, ptr %i.beu, align 8, !tbaa !90
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 16
  %i.bfc = load ptr, ptr %i.bfb, align 8
  call void %i.bfc(ptr noundef nonnull align 8 dereferenceable(16) %i.beu) #24, !inline_history !287
  %i.bfd = load ptr, ptr %i.beu, align 8, !tbaa !90
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bfd, i64 24
  %i.bff = load ptr, ptr %i.bfe, align 8
  call void %i.bff(ptr noundef nonnull align 8 dereferenceable(16) %i.beu) #24, !inline_history !287
  br label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i.i

bb.lg:                                            ; preds = %bb.le
  %i.bfg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !265
  %.not.i.i.i.i.i.i183.i.i = icmp eq i8 %i.bfg, 0
  br i1 %.not.i.i.i.i.i.i183.i.i, label %bb.li, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bfh = add nsw i32 %i.bey, -1
  store i32 %i.bfh, ptr %i.bev, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36

bb.li:                                            ; preds = %bb.lg
  %i.bfi = atomicrmw volatile add ptr %i.bev, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36: ; preds = %bb.li, %bb.lh
  %.0.i.i.i.i.i.i.i.i.i37 = phi i32 [ %i.bey, %bb.lh ], [ %i.bfi, %bb.li ]
  %i.bfj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i37, 1
  br i1 %i.bfj, label %bb.lj, label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i.i, !prof !104

bb.lj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.beu) #24, !inline_history !288
  br label %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i.i

_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i.i: ; preds = %bb.lj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36, %bb.lf, %.critedge130.i.i
  %i.bfk = load ptr, ptr %i.azv, align 8, !tbaa !95, !noalias !265 ; 8 uses
  %.not.i.i.i184.i.i = icmp eq ptr %i.bfk, null
  br i1 %.not.i.i.i184.i.i, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i.i, label %bb.lk

bb.lk:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i.i
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 8 ; 4 uses
  %i.bfm = load atomic i64, ptr %i.bfl acquire, align 8 ; 2 uses
  %i.bfn = icmp eq i64 %i.bfm, 4294967297
  %i.bfo = trunc i64 %i.bfm to i32                ; 2 uses
  br i1 %i.bfn, label %bb.ll, label %bb.lm

bb.ll:                                            ; preds = %bb.lk
  store i32 0, ptr %i.bfl, align 8, !tbaa !134
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfk, i64 12
  store i32 0, ptr %i.bfp, align 4, !tbaa !136
  %i.bfq = load ptr, ptr %i.bfk, align 8, !tbaa !90
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfq, i64 16
  %i.bfs = load ptr, ptr %i.bfr, align 8
  call void %i.bfs(ptr noundef nonnull align 8 dereferenceable(16) %i.bfk) #24, !inline_history !289
  %i.bft = load ptr, ptr %i.bfk, align 8, !tbaa !90
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 24
  %i.bfv = load ptr, ptr %i.bfu, align 8
  call void %i.bfv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfk) #24, !inline_history !289
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i.i

bb.lm:                                            ; preds = %bb.lk
  %i.bfw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !265
  %.not.i.i.i.i.i.i38 = icmp eq i8 %i.bfw, 0
  br i1 %.not.i.i.i.i.i.i38, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.bfx = add nsw i32 %i.bfo, -1
  store i32 %i.bfx, ptr %i.bfl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i39

bb.lo:                                            ; preds = %bb.lm
  %i.bfy = atomicrmw volatile add ptr %i.bfl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i39: ; preds = %bb.lo, %bb.ln
  %.0.i.i.i.i.i.i.i40 = phi i32 [ %i.bfo, %bb.ln ], [ %i.bfy, %bb.lo ]
  %i.bfz = icmp eq i32 %.0.i.i.i.i.i.i.i40, 1
  br i1 %i.bfz, label %bb.lp, label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i.i, !prof !104

bb.lp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfk) #24, !inline_history !288
  br label %_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i.i

_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev.exit.i.i: ; preds = %bb.lp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i39, %bb.ll, %_ZN5arrow18TypedBufferBuilderIsvED2Ev.exit.i.i.i
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %43) #24, !inline_history !288
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24, !noalias !265
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE.exit

bb.lq:                                            ; preds = %bb.kw, %bb.ks, %bb.kl
  %.pn124.i.i = phi { ptr, i32 } [ %i.bcu, %bb.ks ], [ %i.beb, %bb.kw ], [ %i.bbv, %bb.kl ]
  call void @_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %43) #24, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24, !noalias !265
  br label %common.resume

bb.lr:                                            ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE5beginEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #24, !noalias !265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %50, i8 0, i64 16, i1 false), !noalias !265
  %i.bga = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr %3, ptr %i.bga, align 8, !tbaa !87, !noalias !265
  %i.bgb = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 7 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.bgb, align 8, !tbaa !88, !noalias !265
  %i.bgc = getelementptr inbounds nuw i8, ptr %50, i64 32 ; 3 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %50, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bgc, i8 0, i64 16, i1 false), !noalias !265
  store i64 64, ptr %i.bgd, align 8, !tbaa !89, !noalias !265
  %.not306317.i.i = icmp sgt i64 %i.ayo, 0        ; 2 uses
  br i1 %i.aym, label %.preheader.i.i26, label %.preheader308.i.i

.preheader308.i.i:                                ; preds = %bb.lr
  br i1 %.not306317.i.i, label %.lr.ph314.i.i, label %.loopexit.i.i10

.lr.ph314.i.i:                                    ; preds = %.preheader308.i.i
  %i.bge = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 8 uses
  br label %bb.ma

.preheader.i.i26:                                 ; preds = %bb.lr
  br i1 %.not306317.i.i, label %.lr.ph320.i.i, label %.loopexit.i.i10

.lr.ph320.i.i:                                    ; preds = %.preheader.i.i26
  %i.bgf = getelementptr inbounds nuw i8, ptr %50, i64 40 ; 8 uses
  br label %bb.ls

bb.ls:                                            ; preds = %.critedge136.i.i, %.lr.ph320.i.i
  %.sroa.25.1319.i.i = phi i64 [ %i.azj, %.lr.ph320.i.i ], [ %i.bii, %.critedge136.i.i ] ; 4 uses
  %.sroa.11.1318.i.i = phi i64 [ 0, %.lr.ph320.i.i ], [ %.sroa.speculated.i.i199.i.i, %.critedge136.i.i ] ; 7 uses
  %i.bgg = add nsw i64 %.sroa.25.1319.i.i, %i.aye ; 2 uses
  %i.bgh = lshr i64 %i.bgg, 3                     ; 2 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %i.ayg, i64 %i.bgh
  %i.bgj = load i8, ptr %i.bgi, align 1, !tbaa !98, !noalias !265
  %i.bgk = trunc i64 %i.bgg to i8
  %i.bgl = and i8 %i.bgk, 7                       ; 2 uses
  %i.bgm = lshr i8 %i.bgj, %i.bgl
  %i.bgn = trunc i8 %i.bgm to i1
  br i1 %i.bgn, label %bb.lt, label %.critedge136.i.i

bb.lt:                                            ; preds = %bb.ls
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.ayi, i64 %i.bgh
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !98, !noalias !265
  %i.bgq = lshr i8 %i.bgp, %i.bgl
  %i.bgr = trunc i8 %i.bgq to i1
  br i1 %i.bgr, label %bb.lu, label %.critedge136.i.i

bb.lu:                                            ; preds = %bb.lt
  %i.bgs = getelementptr inbounds [2 x i8], ptr %i.ayt, i64 %.sroa.25.1319.i.i
  %i.bgt = load i16, ptr %i.bgs, align 2, !tbaa !269, !noalias !265
  %i.bgu = sext i16 %i.bgt to i64
  %i.bgv = sub nsw i64 %i.bgu, %i.ayn
  %.sroa.speculated4.i.i185.i.i = call i64 @llvm.smax.i64(i64 %i.bgv, i64 0)
  %.sroa.speculated.i.i186.i.i = call noundef i64 @llvm.smin.i64(i64 %i.ayo, i64 %.sroa.speculated4.i.i185.i.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #24, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #24, !noalias !265
  %i.bgw = sub nsw i64 %.sroa.speculated.i.i186.i.i, %.sroa.11.1318.i.i
  %i.bgx = shl i64 %i.bgw, 1
  %i.bgy = load i64, ptr %i.bgf, align 8, !tbaa !131, !noalias !290
  %i.bgz = add nsw i64 %i.bgx, %i.bgy             ; 2 uses
  %i.bha = load i64, ptr %i.bgc, align 8, !tbaa !148, !noalias !290 ; 2 uses
  %.not.i.i187.i.i = icmp sgt i64 %i.bgz, %i.bha
  br i1 %.not.i.i187.i.i, label %bb.lv, label %_ZN5arrow6StatusD2Ev.exit191.thread.i.i

_ZN5arrow6StatusD2Ev.exit191.thread.i.i:          ; preds = %bb.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24, !noalias !265
  br label %_ZN5arrow6StatusD2Ev.exit197.i.i

bb.lv:                                            ; preds = %bb.lu
  %i.bhb = shl nsw i64 %i.bha, 1
  %.sroa.speculated.i.i.i188.i.i = call noundef i64 @llvm.smax.i64(i64 %i.bgz, i64 %i.bhb)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %52, ptr noundef nonnull align 8 dereferenceable(56) %50, i64 noundef %.sroa.speculated.i.i.i188.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit191.i.i unwind label %bb.lz, !noalias !265

_ZN5arrow6StatusD2Ev.exit191.i.i:                 ; preds = %bb.lv
  %.pr304.i.i = load ptr, ptr %52, align 8, !tbaa !113, !noalias !265 ; 2 uses
  store ptr %.pr304.i.i, ptr %51, align 8, !tbaa !113, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24, !noalias !265
  %i.bhc = icmp eq ptr %.pr304.i.i, null
  br i1 %i.bhc, label %_ZN5arrow6StatusD2Ev.exit197.i.i, label %bb.lw, !prof !116

bb.lw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit191.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %51) #24
  %i.bhd = load ptr, ptr %51, align 8, !tbaa !113, !noalias !265 ; 2 uses
  %.not.i192.i.i = icmp eq ptr %i.bhd, null
  br i1 %.not.i192.i.i, label %_ZN5arrow6StatusD2Ev.exit193.i.i, label %bb.lx, !prof !117

bb.lx:                                            ; preds = %bb.lw
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.bhd, i64 1
  %i.bhf = load i8, ptr %i.bhe, align 1, !tbaa !118, !range !127, !noundef !128
  %i.bhg = trunc nuw i8 %i.bhf to i1
  br i1 %i.bhg, label %_ZN5arrow6StatusD2Ev.exit193.i.i, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %51) #24
  br label %_ZN5arrow6StatusD2Ev.exit193.i.i

_ZN5arrow6StatusD2Ev.exit193.i.i:                 ; preds = %bb.ly, %bb.lx, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24, !noalias !265
  br label %.critedge140.i.i

bb.lz:                                            ; preds = %bb.lv
  %i.bhh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24, !noalias !265
  br label %bb.oc

_ZN5arrow6StatusD2Ev.exit197.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit191.i.i, %_ZN5arrow6StatusD2Ev.exit191.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24, !noalias !265
  %i.bhi = icmp slt i64 %.sroa.11.1318.i.i, %.sroa.speculated.i.i186.i.i
  br i1 %i.bhi, label %.lr.ph316.preheader.i.i, label %.critedge136.i.i

.lr.ph316.preheader.i.i:                          ; preds = %_ZN5arrow6StatusD2Ev.exit197.i.i
  %.pre330.i.i = load i64, ptr %i.bgf, align 8, !tbaa !131, !noalias !265 ; 2 uses
  %i.bhj = sub i64 %.sroa.speculated.i.i186.i.i, %.sroa.11.1318.i.i
  %.neg350 = add i64 %.sroa.11.1318.i.i, 1
  %xtraiter274 = and i64 %i.bhj, 1
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %.lr.ph316.i.i.prol.loopexit, label %.lr.ph316.i.i.prol

.lr.ph316.i.i.prol:                               ; preds = %.lr.ph316.preheader.i.i
  %i.bhk = trunc i64 %.sroa.11.1318.i.i to i16
  %i.bhl = load ptr, ptr %i.bgb, align 8, !tbaa !88, !noalias !265
  %i.bhm = getelementptr inbounds i8, ptr %i.bhl, i64 %.pre330.i.i
  store i16 %i.bhk, ptr %i.bhm, align 1, !noalias !265
  %i.bhn = load i64, ptr %i.bgf, align 8, !tbaa !131, !noalias !265
  %i.bho = add nsw i64 %i.bhn, 2                  ; 2 uses
  store i64 %i.bho, ptr %i.bgf, align 8, !tbaa !131, !noalias !265
  %i.bhp = add nsw i64 %.sroa.11.1318.i.i, 1
  br label %.lr.ph316.i.i.prol.loopexit

.lr.ph316.i.i.prol.loopexit:                      ; preds = %.lr.ph316.i.i.prol, %.lr.ph316.preheader.i.i
  %.unr276 = phi i64 [ %.pre330.i.i, %.lr.ph316.preheader.i.i ], [ %i.bho, %.lr.ph316.i.i.prol ]
  %.0101315.i.i.unr = phi i64 [ %.sroa.11.1318.i.i, %.lr.ph316.preheader.i.i ], [ %i.bhp, %.lr.ph316.i.i.prol ]
  %i.bhq = icmp eq i64 %.sroa.speculated.i.i186.i.i, %.neg350
  br i1 %i.bhq, label %.critedge136.i.i, label %.lr.ph316.i.i

.lr.ph316.i.i:                                    ; preds = %.lr.ph316.i.i.prol.loopexit, %.lr.ph316.i.i
  %i.bhr = phi i64 [ %i.bic, %.lr.ph316.i.i ], [ %.unr276, %.lr.ph316.i.i.prol.loopexit ]
  %.0101315.i.i = phi i64 [ %i.bid, %.lr.ph316.i.i ], [ %.0101315.i.i.unr, %.lr.ph316.i.i.prol.loopexit ] ; 3 uses
  %i.bhs = trunc i64 %.0101315.i.i to i16
  %i.bht = load ptr, ptr %i.bgb, align 8, !tbaa !88, !noalias !265
  %i.bhu = getelementptr inbounds i8, ptr %i.bht, i64 %i.bhr
  store i16 %i.bhs, ptr %i.bhu, align 1, !noalias !265
  %i.bhv = load i64, ptr %i.bgf, align 8, !tbaa !131, !noalias !265
  %i.bhw = add nsw i64 %i.bhv, 2                  ; 2 uses
  store i64 %i.bhw, ptr %i.bgf, align 8, !tbaa !131, !noalias !265
  %i.bhx = trunc i64 %.0101315.i.i to i16
  %i.bhy = add i16 %i.bhx, 1
  %i.bhz = load ptr, ptr %i.bgb, align 8, !tbaa !88, !noalias !265
  %i.bia = getelementptr inbounds i8, ptr %i.bhz, i64 %i.bhw
  store i16 %i.bhy, ptr %i.bia, align 1, !noalias !265
  %i.bib = load i64, ptr %i.bgf, align 8, !tbaa !131, !noalias !265
  %i.bic = add nsw i64 %i.bib, 2                  ; 2 uses
  store i64 %i.bic, ptr %i.bgf, align 8, !tbaa !131, !noalias !265
  %i.bid = add nsw i64 %.0101315.i.i, 2           ; 2 uses
  %exitcond328.not.i.i.1 = icmp eq i64 %i.bid, %.sroa.speculated.i.i186.i.i
  br i1 %exitcond328.not.i.i.1, label %.critedge136.i.i, label %.lr.ph316.i.i, !llvm.loop !295

.critedge136.i.i:                                 ; preds = %.lr.ph316.i.i.prol.loopexit, %.lr.ph316.i.i, %_ZN5arrow6StatusD2Ev.exit197.i.i, %bb.lt, %bb.ls
  %i.bie = getelementptr inbounds [2 x i8], ptr %i.ayt, i64 %.sroa.25.1319.i.i
  %i.bif = load i16, ptr %i.bie, align 2, !tbaa !269, !noalias !265
  %i.big = sext i16 %i.bif to i64
  %i.bih = sub nsw i64 %i.big, %i.ayn             ; 2 uses
  %.sroa.speculated4.i.i198.i.i = call i64 @llvm.smax.i64(i64 %i.bih, i64 0)
  %.sroa.speculated.i.i199.i.i = call noundef i64 @llvm.smin.i64(i64 %i.ayo, i64 %.sroa.speculated4.i.i198.i.i)
  %i.bii = add nsw i64 %.sroa.25.1319.i.i, 1
  %.not306.i.i = icmp slt i64 %i.bih, %i.ayo
  br i1 %.not306.i.i, label %bb.ls, label %.loopexit.i.i10

bb.ma:                                            ; preds = %.critedge146.i.i, %.lr.ph314.i.i
  %.sroa.25.2313.i.i = phi i64 [ %i.azj, %.lr.ph314.i.i ], [ %i.bkh, %.critedge146.i.i ] ; 4 uses
  %.sroa.11.2312.i.i = phi i64 [ 0, %.lr.ph314.i.i ], [ %.sroa.speculated.i.i215.i.i, %.critedge146.i.i ] ; 7 uses
  %i.bij = add nsw i64 %.sroa.25.2313.i.i, %i.aye ; 2 uses
  %i.bik = lshr i64 %i.bij, 3
  %i.bil = getelementptr inbounds nuw i8, ptr %i.ayi, i64 %i.bik
  %i.bim = load i8, ptr %i.bil, align 1, !tbaa !98, !noalias !265
  %i.bin = trunc i64 %i.bij to i8
  %i.bio = and i8 %i.bin, 7
  %i.bip = lshr i8 %i.bim, %i.bio
  %i.biq = trunc i8 %i.bip to i1
  br i1 %i.biq, label %bb.mb, label %.critedge146.i.i

bb.mb:                                            ; preds = %bb.ma
  %i.bir = getelementptr inbounds [2 x i8], ptr %i.ayt, i64 %.sroa.25.2313.i.i
  %i.bis = load i16, ptr %i.bir, align 2, !tbaa !269, !noalias !265
  %i.bit = sext i16 %i.bis to i64
  %i.biu = sub nsw i64 %i.bit, %i.ayn
  %.sroa.speculated4.i.i200.i.i = call i64 @llvm.smax.i64(i64 %i.biu, i64 0)
  %.sroa.speculated.i.i201.i.i = call noundef i64 @llvm.smin.i64(i64 %i.ayo, i64 %.sroa.speculated4.i.i200.i.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #24, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24, !noalias !265
  %i.biv = sub nsw i64 %.sroa.speculated.i.i201.i.i, %.sroa.11.2312.i.i
  %i.biw = shl i64 %i.biv, 1
  %i.bix = load i64, ptr %i.bge, align 8, !tbaa !131, !noalias !296
  %i.biy = add nsw i64 %i.biw, %i.bix             ; 2 uses
  %i.biz = load i64, ptr %i.bgc, align 8, !tbaa !148, !noalias !296 ; 2 uses
  %.not.i.i202.i.i = icmp sgt i64 %i.biy, %i.biz
  br i1 %.not.i.i202.i.i, label %bb.mc, label %_ZN5arrow6StatusD2Ev.exit207.thread.i.i

_ZN5arrow6StatusD2Ev.exit207.thread.i.i:          ; preds = %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24, !noalias !265
  br label %_ZN5arrow6StatusD2Ev.exit213.i.i22

bb.mc:                                            ; preds = %bb.mb
  %i.bja = shl nsw i64 %i.biz, 1
  %.sroa.speculated.i.i.i203.i.i = call noundef i64 @llvm.smax.i64(i64 %i.biy, i64 %i.bja)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %54, ptr noundef nonnull align 8 dereferenceable(56) %50, i64 noundef %.sroa.speculated.i.i.i203.i.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit207.i.i unwind label %bb.mg, !noalias !265

_ZN5arrow6StatusD2Ev.exit207.i.i:                 ; preds = %bb.mc
  %.pr305.i.i = load ptr, ptr %54, align 8, !tbaa !113, !noalias !265 ; 2 uses
  store ptr %.pr305.i.i, ptr %53, align 8, !tbaa !113, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24, !noalias !265
  %i.bjb = icmp eq ptr %.pr305.i.i, null
  br i1 %i.bjb, label %_ZN5arrow6StatusD2Ev.exit213.i.i22, label %bb.md, !prof !116

bb.md:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit207.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %53) #24
  %i.bjc = load ptr, ptr %53, align 8, !tbaa !113, !noalias !265 ; 2 uses
  %.not.i208.i.i = icmp eq ptr %i.bjc, null
  br i1 %.not.i208.i.i, label %_ZN5arrow6StatusD2Ev.exit209.i.i, label %bb.me, !prof !117

bb.me:                                            ; preds = %bb.md
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 1
  %i.bje = load i8, ptr %i.bjd, align 1, !tbaa !118, !range !127, !noundef !128
  %i.bjf = trunc nuw i8 %i.bje to i1
  br i1 %i.bjf, label %_ZN5arrow6StatusD2Ev.exit209.i.i, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #24
  br label %_ZN5arrow6StatusD2Ev.exit209.i.i

_ZN5arrow6StatusD2Ev.exit209.i.i:                 ; preds = %bb.mf, %bb.me, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24, !noalias !265
  br label %.critedge140.i.i

bb.mg:                                            ; preds = %bb.mc
  %i.bjg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #24, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24, !noalias !265
  br label %bb.oc

_ZN5arrow6StatusD2Ev.exit213.i.i22:               ; preds = %_ZN5arrow6StatusD2Ev.exit207.i.i, %_ZN5arrow6StatusD2Ev.exit207.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24, !noalias !265
  %i.bjh = icmp slt i64 %.sroa.11.2312.i.i, %.sroa.speculated.i.i201.i.i
  br i1 %i.bjh, label %.lr.ph.preheader.i.i, label %.critedge146.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5arrow6StatusD2Ev.exit213.i.i22
  %.pre.i.i23 = load i64, ptr %i.bge, align 8, !tbaa !131, !noalias !265 ; 2 uses
  %i.bji = sub i64 %.sroa.speculated.i.i201.i.i, %.sroa.11.2312.i.i
  %.neg349 = add i64 %.sroa.11.2312.i.i, 1
  %xtraiter271 = and i64 %i.bji, 1
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %.lr.ph.i.i24.prol.loopexit, label %.lr.ph.i.i24.prol

.lr.ph.i.i24.prol:                                ; preds = %.lr.ph.preheader.i.i
  %i.bjj = trunc i64 %.sroa.11.2312.i.i to i16
  %i.bjk = load ptr, ptr %i.bgb, align 8, !tbaa !88, !noalias !265
  %i.bjl = getelementptr inbounds i8, ptr %i.bjk, i64 %.pre.i.i23
  store i16 %i.bjj, ptr %i.bjl, align 1, !noalias !265
  %i.bjm = load i64, ptr %i.bge, align 8, !tbaa !131, !noalias !265
  %i.bjn = add nsw i64 %i.bjm, 2                  ; 2 uses
  store i64 %i.bjn, ptr %i.bge, align 8, !tbaa !131, !noalias !265
  %i.bjo = add nsw i64 %.sroa.11.2312.i.i, 1
  br label %.lr.ph.i.i24.prol.loopexit

.lr.ph.i.i24.prol.loopexit:                       ; preds = %.lr.ph.i.i24.prol, %.lr.ph.preheader.i.i
  %.unr273 = phi i64 [ %.pre.i.i23, %.lr.ph.preheader.i.i ], [ %i.bjn, %.lr.ph.i.i24.prol ]
  %.086310.i.i.unr = phi i64 [ %.sroa.11.2312.i.i, %.lr.ph.preheader.i.i ], [ %i.bjo, %.lr.ph.i.i24.prol ]
  %i.bjp = icmp eq i64 %.sroa.speculated.i.i201.i.i, %.neg349
  br i1 %i.bjp, label %.critedge146.i.i, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %.lr.ph.i.i24.prol.loopexit, %.lr.ph.i.i24
  %i.bjq = phi i64 [ %i.bkb, %.lr.ph.i.i24 ], [ %.unr273, %.lr.ph.i.i24.prol.loopexit ]
  %.086310.i.i = phi i64 [ %i.bkc, %.lr.ph.i.i24 ], [ %.086310.i.i.unr, %.lr.ph.i.i24.prol.loopexit ] ; 3 uses
  %i.bjr = trunc i64 %.086310.i.i to i16
  %i.bjs = load ptr, ptr %i.bgb, align 8, !tbaa !88, !noalias !265
  %i.bjt = getelementptr inbounds i8, ptr %i.bjs, i64 %i.bjq
  store i16 %i.bjr, ptr %i.bjt, align 1, !noalias !265
  %i.bju = load i64, ptr %i.bge, align 8, !tbaa !131, !noalias !265
  %i.bjv = add nsw i64 %i.bju, 2                  ; 2 uses
  store i64 %i.bjv, ptr %i.bge, align 8, !tbaa !131, !noalias !265
  %i.bjw = trunc i64 %.086310.i.i to i16
  %i.bjx = add i16 %i.bjw, 1
  %i.bjy = load ptr, ptr %i.bgb, align 8, !tbaa !88, !noalias !265
  %i.bjz = getelementptr inbounds i8, ptr %i.bjy, i64 %i.bjv
  store i16 %i.bjx, ptr %i.bjz, align 1, !noalias !265
  %i.bka = load i64, ptr %i.bge, align 8, !tbaa !131, !noalias !265
  %i.bkb = add nsw i64 %i.bka, 2                  ; 2 uses
  store i64 %i.bkb, ptr %i.bge, align 8, !tbaa !131, !noalias !265
  %i.bkc = add nsw i64 %.086310.i.i, 2            ; 2 uses
  %exitcond.not.i.i25.1 = icmp eq i64 %i.bkc, %.sroa.speculated.i.i201.i.i
  br i1 %exitcond.not.i.i25.1, label %.critedge146.i.i, label %.lr.ph.i.i24, !llvm.loop !301

.critedge146.i.i:                                 ; preds = %.lr.ph.i.i24.prol.loopexit, %.lr.ph.i.i24, %_ZN5arrow6StatusD2Ev.exit213.i.i22, %bb.ma
  %i.bkd = getelementptr inbounds [2 x i8], ptr %i.ayt, i64 %.sroa.25.2313.i.i
  %i.bke = load i16, ptr %i.bkd, align 2, !tbaa !269, !noalias !265
  %i.bkf = sext i16 %i.bke to i64
  %i.bkg = sub nsw i64 %i.bkf, %i.ayn             ; 2 uses
  %.sroa.speculated4.i.i214.i.i = call i64 @llvm.smax.i64(i64 %i.bkg, i64 0)
  %.sroa.speculated.i.i215.i.i = call noundef i64 @llvm.smin.i64(i64 %i.ayo, i64 %.sroa.speculated4.i.i214.i.i)
  %i.bkh = add nsw i64 %.sroa.25.2313.i.i, 1
  %.not.i.i21 = icmp slt i64 %i.bkg, %i.ayo
  br i1 %.not.i.i21, label %bb.ma, label %.loopexit.i.i10

.loopexit.i.i10:                                  ; preds = %.critedge146.i.i, %.critedge136.i.i, %.preheader.i.i26, %.preheader308.i.i
  %i.bki = getelementptr inbounds nuw i8, ptr %50, i64 40
  %i.bkj = load i64, ptr %i.bki, align 8, !tbaa !131, !noalias !265
  %i.bkk = lshr i64 %i.bkj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24, !noalias !265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, i8 0, i64 16, i1 false), !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #24, !noalias !265
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %57, ptr noundef nonnull align 8 dereferenceable(56) %50, ptr noundef nonnull %55, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit218.i.i unwind label %bb.mk, !noalias !265

_ZN5arrow6StatusD2Ev.exit218.i.i:                 ; preds = %.loopexit.i.i10
  %i.bkl = load ptr, ptr %57, align 8, !tbaa !113, !noalias !265 ; 2 uses
  store ptr %i.bkl, ptr %56, align 8, !tbaa !113, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24, !noalias !265
  %i.bkm = icmp eq ptr %i.bkl, null
  br i1 %i.bkm, label %_ZN5arrow6StatusD2Ev.exit224.i.i, label %bb.mh, !prof !117

bb.mh:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit218.i.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %56) #24
  %i.bkn = load ptr, ptr %56, align 8, !tbaa !113, !noalias !265 ; 2 uses
  %.not.i219.i.i = icmp eq ptr %i.bkn, null
  br i1 %.not.i219.i.i, label %_ZN5arrow6StatusD2Ev.exit220.i.i, label %bb.mi, !prof !117

bb.mi:                                            ; preds = %bb.mh
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkn, i64 1
  %i.bkp = load i8, ptr %i.bko, align 1, !tbaa !118, !range !127, !noundef !128
  %i.bkq = trunc nuw i8 %i.bkp to i1
  br i1 %i.bkq, label %_ZN5arrow6StatusD2Ev.exit220.i.i, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %56) #24
  br label %_ZN5arrow6StatusD2Ev.exit220.i.i

_ZN5arrow6StatusD2Ev.exit220.i.i:                 ; preds = %bb.mj, %bb.mi, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24, !noalias !265
  br label %bb.no

bb.mk:                                            ; preds = %.loopexit.i.i10
  %i.bkr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #24, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24, !noalias !265
  br label %bb.nv

_ZN5arrow6StatusD2Ev.exit224.i.i:                 ; preds = %_ZN5arrow6StatusD2Ev.exit218.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #24, !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.bks = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int16Ev()
          to label %.noexc227.i.i unwind label %bb.nj, !noalias !265 ; 2 uses

.noexc227.i.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit224.i.i
  %i.bkt = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bks, i64 8
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !95, !noalias !305 ; 2 uses
  %i.bkw = load <2 x ptr>, ptr %i.bks, align 8, !tbaa !97, !noalias !305
  store <2 x ptr> %i.bkw, ptr %58, align 16, !tbaa !97, !alias.scope !302, !noalias !265
  %.not.i.i.i.i225.i.i = icmp eq ptr %i.bkv, null
  br i1 %.not.i.i.i.i225.i.i, label %_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv.exit.i.i, label %bb.ml

bb.ml:                                            ; preds = %.noexc227.i.i
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bkv, i64 8 ; 3 uses
  %i.bky = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !305
  %.not.i.i.i.i.i226.i.i = icmp eq i8 %i.bky, 0
  br i1 %.not.i.i.i.i.i226.i.i, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bkz = load i32, ptr %i.bkx, align 4, !tbaa !3, !noalias !305
  %i.bla = add nsw i32 %i.bkz, 1
  store i32 %i.bla, ptr %i.bkx, align 4, !tbaa !3, !noalias !305
  br label %_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv.exit.i.i

bb.mn:                                            ; preds = %bb.ml
  %i.blb = atomicrmw volatile add ptr %i.bkx, i32 1 acq_rel, align 4, !noalias !305 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv.exit.i.i

_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv.exit.i.i: ; preds = %bb.mn, %bb.mm, %.noexc227.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #24, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #24, !noalias !265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false), !noalias !265
  %i.blc = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.bld = load ptr, ptr %55, align 8, !tbaa !306, !noalias !265 ; 2 uses
  store ptr %i.bld, ptr %i.blc, align 8, !tbaa !306, !noalias !265
  %i.ble = getelementptr inbounds nuw i8, ptr %60, i64 24 ; 2 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.blg = load ptr, ptr %i.blf, align 8, !tbaa !95, !noalias !265 ; 4 uses
  store ptr null, ptr %i.blf, align 8, !tbaa !95, !noalias !265
  store ptr %i.blg, ptr %i.ble, align 8, !tbaa !95, !noalias !265
  store ptr null, ptr %55, align 8, !tbaa !306, !noalias !265
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a

bb.pe:                                            ; preds = %bb.pc
  %i.bwb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !318
  %.not.i.i.i.i115.i = icmp eq i8 %i.bwb, 0
  br i1 %.not.i.i.i.i115.i, label %bb.pg, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.bwc = add nsw i32 %i.bvt, -1
  store i32 %i.bwc, ptr %i.bvq, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116.i

bb.pg:                                            ; preds = %bb.pe
  %i.bwd = atomicrmw volatile add ptr %i.bvq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116.i: ; preds = %bb.pg, %bb.pf
  %.0.i.i.i.i.i117.i = phi i32 [ %i.bvt, %bb.pf ], [ %i.bwd, %bb.pg ]
  %i.bwe = icmp eq i32 %.0.i.i.i.i.i117.i, 1
  br i1 %i.bwe, label %bb.ph, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118.i, !prof !104

bb.ph:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre331.i113.i) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118.i: ; preds = %bb.ph, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i116.i, %bb.pd, %bb.pb, %.thread.i128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #24, !noalias !318
  br label %.critedge130.i119.i

.critedge130.i119.i:                              ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i118.i, %_ZN5arrow6StatusD2Ev.exit164.i163.i, %_ZN5arrow6StatusD2Ev.exit154.i149.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int32TypeEEE, i64 16), ptr %24, align 8, !tbaa !90, !noalias !318
  %i.bwf = getelementptr inbounds nuw i8, ptr %24, i64 168
  %i.bwg = load ptr, ptr %i.bwf, align 8, !tbaa !95, !noalias !318 ; 8 uses
  %.not.i.i.i.i.i182.i120.i = icmp eq ptr %i.bwg, null
  br i1 %.not.i.i.i.i.i182.i120.i, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i.i, label %bb.pi

bb.pi:                                            ; preds = %.critedge130.i119.i
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwg, i64 8 ; 4 uses
  %i.bwi = load atomic i64, ptr %i.bwh acquire, align 8 ; 2 uses
  %i.bwj = icmp eq i64 %i.bwi, 4294967297
  %i.bwk = trunc i64 %i.bwi to i32                ; 2 uses
  br i1 %i.bwj, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  store i32 0, ptr %i.bwh, align 8, !tbaa !134
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwg, i64 12
  store i32 0, ptr %i.bwl, align 4, !tbaa !136
  %i.bwm = load ptr, ptr %i.bwg, align 8, !tbaa !90
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.bwm, i64 16
  %i.bwo = load ptr, ptr %i.bwn, align 8
  call void %i.bwo(ptr noundef nonnull align 8 dereferenceable(16) %i.bwg) #24, !inline_history !339
  %i.bwp = load ptr, ptr %i.bwg, align 8, !tbaa !90
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwp, i64 24
  %i.bwr = load ptr, ptr %i.bwq, align 8
  call void %i.bwr(ptr noundef nonnull align 8 dereferenceable(16) %i.bwg) #24, !inline_history !339
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i.i

bb.pk:                                            ; preds = %bb.pi
  %i.bws = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !318
  %.not.i.i.i.i.i.i183.i121.i = icmp eq i8 %i.bws, 0
  br i1 %.not.i.i.i.i.i.i183.i121.i, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.bwt = add nsw i32 %i.bwk, -1
  store i32 %i.bwt, ptr %i.bwh, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i122.i

bb.pm:                                            ; preds = %bb.pk
  %i.bwu = atomicrmw volatile add ptr %i.bwh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i122.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i122.i: ; preds = %bb.pm, %bb.pl
  %.0.i.i.i.i.i.i.i.i123.i = phi i32 [ %i.bwk, %bb.pl ], [ %i.bwu, %bb.pm ]
  %i.bwv = icmp eq i32 %.0.i.i.i.i.i.i.i.i123.i, 1
  br i1 %i.bwv, label %bb.pn, label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i.i, !prof !104

bb.pn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i122.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bwg) #24, !inline_history !340
  br label %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i.i

_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i.i: ; preds = %bb.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i122.i, %bb.pj, %.critedge130.i119.i
  %i.bww = load ptr, ptr %i.brh, align 8, !tbaa !95, !noalias !318 ; 8 uses
  %.not.i.i.i184.i124.i = icmp eq ptr %i.bww, null
  br i1 %.not.i.i.i184.i124.i, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i.i, label %bb.po

bb.po:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i.i
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bww, i64 8 ; 4 uses
  %i.bwy = load atomic i64, ptr %i.bwx acquire, align 8 ; 2 uses
  %i.bwz = icmp eq i64 %i.bwy, 4294967297
  %i.bxa = trunc i64 %i.bwy to i32                ; 2 uses
  br i1 %i.bwz, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  store i32 0, ptr %i.bwx, align 8, !tbaa !134
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bww, i64 12
  store i32 0, ptr %i.bxb, align 4, !tbaa !136
  %i.bxc = load ptr, ptr %i.bww, align 8, !tbaa !90
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxc, i64 16
  %i.bxe = load ptr, ptr %i.bxd, align 8
  call void %i.bxe(ptr noundef nonnull align 8 dereferenceable(16) %i.bww) #24, !inline_history !341
  %i.bxf = load ptr, ptr %i.bww, align 8, !tbaa !90
  %i.bxg = getelementptr inbounds nuw i8, ptr %i.bxf, i64 24
  %i.bxh = load ptr, ptr %i.bxg, align 8
  call void %i.bxh(ptr noundef nonnull align 8 dereferenceable(16) %i.bww) #24, !inline_history !341
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i.i

bb.pq:                                            ; preds = %bb.po
  %i.bxi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !318
  %.not.i.i.i.i.i125.i = icmp eq i8 %i.bxi, 0
  br i1 %.not.i.i.i.i.i125.i, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.bxj = add nsw i32 %i.bxa, -1
  store i32 %i.bxj, ptr %i.bwx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126.i

bb.ps:                                            ; preds = %bb.pq
  %i.bxk = atomicrmw volatile add ptr %i.bwx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126.i: ; preds = %bb.ps, %bb.pr
  %.0.i.i.i.i.i.i127.i = phi i32 [ %i.bxa, %bb.pr ], [ %i.bxk, %bb.ps ]
  %i.bxl = icmp eq i32 %.0.i.i.i.i.i.i127.i, 1
  br i1 %i.bxl, label %bb.pt, label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i.i, !prof !104

bb.pt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bww) #24, !inline_history !340
  br label %_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i.i

_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev.exit.i.i: ; preds = %bb.pt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i126.i, %bb.pp, %_ZN5arrow18TypedBufferBuilderIivED2Ev.exit.i.i.i
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %24) #24, !inline_history !340
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24, !noalias !318
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE.exit

bb.pu:                                            ; preds = %bb.pa, %bb.ow, %bb.op
  %.pn124.i109.i = phi { ptr, i32 } [ %i.bug, %bb.ow ], [ %i.bvn, %bb.pa ], [ %i.bth, %bb.op ]
  call void @_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %24) #24, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24, !noalias !318
  br label %common.resume

bb.pv:                                            ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE5beginEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #24, !noalias !318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, i8 0, i64 16, i1 false), !noalias !318
  %i.bxm = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %3, ptr %i.bxm, align 8, !tbaa !87, !noalias !318
  %i.bxn = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 7 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.bxn, align 8, !tbaa !88, !noalias !318
  %i.bxo = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 3 uses
  %i.bxp = getelementptr inbounds nuw i8, ptr %31, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bxo, i8 0, i64 16, i1 false), !noalias !318
  store i64 64, ptr %i.bxp, align 8, !tbaa !89, !noalias !318
  %.not306317.i13.i = icmp sgt i64 %i.bqa, 0      ; 2 uses
  br i1 %i.bpy, label %.preheader.i81.i, label %.preheader308.i14.i

.preheader308.i14.i:                              ; preds = %bb.pv
  br i1 %.not306317.i13.i, label %.lr.ph314.i59.i, label %.loopexit.i15.i

.lr.ph314.i59.i:                                  ; preds = %.preheader308.i14.i
  %i.bxq = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 8 uses
  br label %bb.qe

.preheader.i81.i:                                 ; preds = %bb.pv
  br i1 %.not306317.i13.i, label %.lr.ph320.i82.i, label %.loopexit.i15.i

.lr.ph320.i82.i:                                  ; preds = %.preheader.i81.i
  %i.bxr = getelementptr inbounds nuw i8, ptr %31, i64 40 ; 8 uses
  br label %bb.pw

bb.pw:                                            ; preds = %.critedge136.i85.i, %.lr.ph320.i82.i
  %.sroa.25.1319.i83.i = phi i64 [ %i.bqv, %.lr.ph320.i82.i ], [ %i.bzu, %.critedge136.i85.i ] ; 4 uses
  %.sroa.11.1318.i84.i = phi i64 [ 0, %.lr.ph320.i82.i ], [ %.sroa.speculated.i.i199.i87.i, %.critedge136.i85.i ] ; 7 uses
  %i.bxs = add nsw i64 %.sroa.25.1319.i83.i, %i.bpq ; 2 uses
  %i.bxt = lshr i64 %i.bxs, 3                     ; 2 uses
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.bps, i64 %i.bxt
  %i.bxv = load i8, ptr %i.bxu, align 1, !tbaa !98, !noalias !318
  %i.bxw = trunc i64 %i.bxs to i8
  %i.bxx = and i8 %i.bxw, 7                       ; 2 uses
  %i.bxy = lshr i8 %i.bxv, %i.bxx
  %i.bxz = trunc i8 %i.bxy to i1
  br i1 %i.bxz, label %bb.px, label %.critedge136.i85.i

bb.px:                                            ; preds = %bb.pw
  %i.bya = getelementptr inbounds nuw i8, ptr %i.bpu, i64 %i.bxt
  %i.byb = load i8, ptr %i.bya, align 1, !tbaa !98, !noalias !318
  %i.byc = lshr i8 %i.byb, %i.bxx
  %i.byd = trunc i8 %i.byc to i1
  br i1 %i.byd, label %bb.py, label %.critedge136.i85.i

bb.py:                                            ; preds = %bb.px
  %i.bye = getelementptr inbounds [4 x i8], ptr %i.bqf, i64 %.sroa.25.1319.i83.i
  %i.byf = load i32, ptr %i.bye, align 4, !tbaa !3, !noalias !318
  %i.byg = sext i32 %i.byf to i64
  %i.byh = sub nsw i64 %i.byg, %i.bpz
  %.sroa.speculated4.i.i185.i89.i = call i64 @llvm.smax.i64(i64 %i.byh, i64 0)
  %.sroa.speculated.i.i186.i90.i = call noundef i64 @llvm.smin.i64(i64 %i.bqa, i64 %.sroa.speculated4.i.i185.i89.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #24, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24, !noalias !318
  %i.byi = sub nsw i64 %.sroa.speculated.i.i186.i90.i, %.sroa.11.1318.i84.i
  %i.byj = shl i64 %i.byi, 2
  %i.byk = load i64, ptr %i.bxr, align 8, !tbaa !131, !noalias !342
  %i.byl = add nsw i64 %i.byj, %i.byk             ; 2 uses
  %i.bym = load i64, ptr %i.bxo, align 8, !tbaa !148, !noalias !342 ; 2 uses
  %.not.i.i187.i91.i = icmp sgt i64 %i.byl, %i.bym
  br i1 %.not.i.i187.i91.i, label %bb.pz, label %_ZN5arrow6StatusD2Ev.exit191.thread.i92.i

_ZN5arrow6StatusD2Ev.exit191.thread.i92.i:        ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24, !noalias !318
  br label %_ZN5arrow6StatusD2Ev.exit197.i93.i

bb.pz:                                            ; preds = %bb.py
  %i.byn = shl nsw i64 %i.bym, 1
  %.sroa.speculated.i.i.i188.i99.i = call noundef i64 @llvm.smax.i64(i64 %i.byl, i64 %i.byn)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %33, ptr noundef nonnull align 8 dereferenceable(56) %31, i64 noundef %.sroa.speculated.i.i.i188.i99.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit191.i100.i unwind label %bb.qd, !noalias !318

_ZN5arrow6StatusD2Ev.exit191.i100.i:              ; preds = %bb.pz
  %.pr304.i101.i = load ptr, ptr %33, align 8, !tbaa !113, !noalias !318 ; 2 uses
  store ptr %.pr304.i101.i, ptr %32, align 8, !tbaa !113, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24, !noalias !318
  %i.byo = icmp eq ptr %.pr304.i101.i, null
  br i1 %i.byo, label %_ZN5arrow6StatusD2Ev.exit197.i93.i, label %bb.qa, !prof !116

bb.qa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit191.i100.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %32) #24
  %i.byp = load ptr, ptr %32, align 8, !tbaa !113, !noalias !318 ; 2 uses
  %.not.i192.i102.i = icmp eq ptr %i.byp, null
  br i1 %.not.i192.i102.i, label %_ZN5arrow6StatusD2Ev.exit193.i103.i, label %bb.qb, !prof !117

bb.qb:                                            ; preds = %bb.qa
  %i.byq = getelementptr inbounds nuw i8, ptr %i.byp, i64 1
  %i.byr = load i8, ptr %i.byq, align 1, !tbaa !118, !range !127, !noundef !128
  %i.bys = trunc nuw i8 %i.byr to i1
  br i1 %i.bys, label %_ZN5arrow6StatusD2Ev.exit193.i103.i, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #24
  br label %_ZN5arrow6StatusD2Ev.exit193.i103.i

_ZN5arrow6StatusD2Ev.exit193.i103.i:              ; preds = %bb.qc, %bb.qb, %bb.qa
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24, !noalias !318
  br label %.critedge140.i28.i

bb.qd:                                            ; preds = %bb.pz
  %i.byt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24, !noalias !318
  br label %bb.sg

_ZN5arrow6StatusD2Ev.exit197.i93.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit191.i100.i, %_ZN5arrow6StatusD2Ev.exit191.thread.i92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24, !noalias !318
  %i.byu = icmp slt i64 %.sroa.11.1318.i84.i, %.sroa.speculated.i.i186.i90.i
  br i1 %i.byu, label %.lr.ph316.preheader.i94.i, label %.critedge136.i85.i

.lr.ph316.preheader.i94.i:                        ; preds = %_ZN5arrow6StatusD2Ev.exit197.i93.i
  %.pre330.i95.i = load i64, ptr %i.bxr, align 8, !tbaa !131, !noalias !318 ; 2 uses
  %i.byv = sub i64 %.sroa.speculated.i.i186.i90.i, %.sroa.11.1318.i84.i
  %.neg348 = add i64 %.sroa.11.1318.i84.i, 1
  %xtraiter268 = and i64 %i.byv, 1
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %.lr.ph316.i96.i.prol.loopexit, label %.lr.ph316.i96.i.prol

.lr.ph316.i96.i.prol:                             ; preds = %.lr.ph316.preheader.i94.i
  %i.byw = trunc i64 %.sroa.11.1318.i84.i to i32
  %i.byx = load ptr, ptr %i.bxn, align 8, !tbaa !88, !noalias !318
  %i.byy = getelementptr inbounds i8, ptr %i.byx, i64 %.pre330.i95.i
  store i32 %i.byw, ptr %i.byy, align 1, !noalias !318
  %i.byz = load i64, ptr %i.bxr, align 8, !tbaa !131, !noalias !318
  %i.bza = add nsw i64 %i.byz, 4                  ; 2 uses
  store i64 %i.bza, ptr %i.bxr, align 8, !tbaa !131, !noalias !318
  %i.bzb = add nsw i64 %.sroa.11.1318.i84.i, 1
  br label %.lr.ph316.i96.i.prol.loopexit

.lr.ph316.i96.i.prol.loopexit:                    ; preds = %.lr.ph316.i96.i.prol, %.lr.ph316.preheader.i94.i
  %.unr270 = phi i64 [ %.pre330.i95.i, %.lr.ph316.preheader.i94.i ], [ %i.bza, %.lr.ph316.i96.i.prol ]
  %.0101315.i97.i.unr = phi i64 [ %.sroa.11.1318.i84.i, %.lr.ph316.preheader.i94.i ], [ %i.bzb, %.lr.ph316.i96.i.prol ]
  %i.bzc = icmp eq i64 %.sroa.speculated.i.i186.i90.i, %.neg348
  br i1 %i.bzc, label %.critedge136.i85.i, label %.lr.ph316.i96.i

.lr.ph316.i96.i:                                  ; preds = %.lr.ph316.i96.i.prol.loopexit, %.lr.ph316.i96.i
  %i.bzd = phi i64 [ %i.bzo, %.lr.ph316.i96.i ], [ %.unr270, %.lr.ph316.i96.i.prol.loopexit ]
  %.0101315.i97.i = phi i64 [ %i.bzp, %.lr.ph316.i96.i ], [ %.0101315.i97.i.unr, %.lr.ph316.i96.i.prol.loopexit ] ; 3 uses
  %i.bze = trunc i64 %.0101315.i97.i to i32
  %i.bzf = load ptr, ptr %i.bxn, align 8, !tbaa !88, !noalias !318
  %i.bzg = getelementptr inbounds i8, ptr %i.bzf, i64 %i.bzd
  store i32 %i.bze, ptr %i.bzg, align 1, !noalias !318
  %i.bzh = load i64, ptr %i.bxr, align 8, !tbaa !131, !noalias !318
  %i.bzi = add nsw i64 %i.bzh, 4                  ; 2 uses
  store i64 %i.bzi, ptr %i.bxr, align 8, !tbaa !131, !noalias !318
  %i.bzj = trunc i64 %.0101315.i97.i to i32
  %i.bzk = add i32 %i.bzj, 1
  %i.bzl = load ptr, ptr %i.bxn, align 8, !tbaa !88, !noalias !318
  %i.bzm = getelementptr inbounds i8, ptr %i.bzl, i64 %i.bzi
  store i32 %i.bzk, ptr %i.bzm, align 1, !noalias !318
  %i.bzn = load i64, ptr %i.bxr, align 8, !tbaa !131, !noalias !318
  %i.bzo = add nsw i64 %i.bzn, 4                  ; 2 uses
  store i64 %i.bzo, ptr %i.bxr, align 8, !tbaa !131, !noalias !318
  %i.bzp = add nsw i64 %.0101315.i97.i, 2         ; 2 uses
  %exitcond328.not.i98.i.1 = icmp eq i64 %i.bzp, %.sroa.speculated.i.i186.i90.i
  br i1 %exitcond328.not.i98.i.1, label %.critedge136.i85.i, label %.lr.ph316.i96.i, !llvm.loop !347

.critedge136.i85.i:                               ; preds = %.lr.ph316.i96.i.prol.loopexit, %.lr.ph316.i96.i, %_ZN5arrow6StatusD2Ev.exit197.i93.i, %bb.px, %bb.pw
  %i.bzq = getelementptr inbounds [4 x i8], ptr %i.bqf, i64 %.sroa.25.1319.i83.i
  %i.bzr = load i32, ptr %i.bzq, align 4, !tbaa !3, !noalias !318
  %i.bzs = sext i32 %i.bzr to i64
  %i.bzt = sub nsw i64 %i.bzs, %i.bpz             ; 2 uses
  %.sroa.speculated4.i.i198.i86.i = call i64 @llvm.smax.i64(i64 %i.bzt, i64 0)
  %.sroa.speculated.i.i199.i87.i = call noundef i64 @llvm.smin.i64(i64 %i.bqa, i64 %.sroa.speculated4.i.i198.i86.i)
  %i.bzu = add nsw i64 %.sroa.25.1319.i83.i, 1
  %.not306.i88.i = icmp slt i64 %i.bzt, %i.bqa
  br i1 %.not306.i88.i, label %bb.pw, label %.loopexit.i15.i

bb.qe:                                            ; preds = %.critedge146.i62.i, %.lr.ph314.i59.i
  %.sroa.25.2313.i60.i = phi i64 [ %i.bqv, %.lr.ph314.i59.i ], [ %i.cbt, %.critedge146.i62.i ] ; 4 uses
  %.sroa.11.2312.i61.i = phi i64 [ 0, %.lr.ph314.i59.i ], [ %.sroa.speculated.i.i215.i64.i, %.critedge146.i62.i ] ; 7 uses
  %i.bzv = add nsw i64 %.sroa.25.2313.i60.i, %i.bpq ; 2 uses
  %i.bzw = lshr i64 %i.bzv, 3
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bpu, i64 %i.bzw
  %i.bzy = load i8, ptr %i.bzx, align 1, !tbaa !98, !noalias !318
  %i.bzz = trunc i64 %i.bzv to i8
  %i.caa = and i8 %i.bzz, 7
  %i.cab = lshr i8 %i.bzy, %i.caa
  %i.cac = trunc i8 %i.cab to i1
  br i1 %i.cac, label %bb.qf, label %.critedge146.i62.i

bb.qf:                                            ; preds = %bb.qe
  %i.cad = getelementptr inbounds [4 x i8], ptr %i.bqf, i64 %.sroa.25.2313.i60.i
  %i.cae = load i32, ptr %i.cad, align 4, !tbaa !3, !noalias !318
  %i.caf = sext i32 %i.cae to i64
  %i.cag = sub nsw i64 %i.caf, %i.bpz
  %.sroa.speculated4.i.i200.i66.i = call i64 @llvm.smax.i64(i64 %i.cag, i64 0)
  %.sroa.speculated.i.i201.i67.i = call noundef i64 @llvm.smin.i64(i64 %i.bqa, i64 %.sroa.speculated4.i.i200.i66.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24, !noalias !318
  %i.cah = sub nsw i64 %.sroa.speculated.i.i201.i67.i, %.sroa.11.2312.i61.i
  %i.cai = shl i64 %i.cah, 2
  %i.caj = load i64, ptr %i.bxq, align 8, !tbaa !131, !noalias !348
  %i.cak = add nsw i64 %i.cai, %i.caj             ; 2 uses
  %i.cal = load i64, ptr %i.bxo, align 8, !tbaa !148, !noalias !348 ; 2 uses
  %.not.i.i202.i68.i = icmp sgt i64 %i.cak, %i.cal
  br i1 %.not.i.i202.i68.i, label %bb.qg, label %_ZN5arrow6StatusD2Ev.exit207.thread.i69.i

_ZN5arrow6StatusD2Ev.exit207.thread.i69.i:        ; preds = %bb.qf
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24, !noalias !318
  br label %_ZN5arrow6StatusD2Ev.exit213.i70.i

bb.qg:                                            ; preds = %bb.qf
  %i.cam = shl nsw i64 %i.cal, 1
  %.sroa.speculated.i.i.i203.i76.i = call noundef i64 @llvm.smax.i64(i64 %i.cak, i64 %i.cam)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %35, ptr noundef nonnull align 8 dereferenceable(56) %31, i64 noundef %.sroa.speculated.i.i.i203.i76.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit207.i77.i unwind label %bb.qk, !noalias !318

_ZN5arrow6StatusD2Ev.exit207.i77.i:               ; preds = %bb.qg
  %.pr305.i78.i = load ptr, ptr %35, align 8, !tbaa !113, !noalias !318 ; 2 uses
  store ptr %.pr305.i78.i, ptr %34, align 8, !tbaa !113, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24, !noalias !318
  %i.can = icmp eq ptr %.pr305.i78.i, null
  br i1 %i.can, label %_ZN5arrow6StatusD2Ev.exit213.i70.i, label %bb.qh, !prof !116

bb.qh:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit207.i77.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %34) #24
  %i.cao = load ptr, ptr %34, align 8, !tbaa !113, !noalias !318 ; 2 uses
  %.not.i208.i79.i = icmp eq ptr %i.cao, null
  br i1 %.not.i208.i79.i, label %_ZN5arrow6StatusD2Ev.exit209.i80.i, label %bb.qi, !prof !117

bb.qi:                                            ; preds = %bb.qh
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cao, i64 1
  %i.caq = load i8, ptr %i.cap, align 1, !tbaa !118, !range !127, !noundef !128
  %i.car = trunc nuw i8 %i.caq to i1
  br i1 %i.car, label %_ZN5arrow6StatusD2Ev.exit209.i80.i, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #24
  br label %_ZN5arrow6StatusD2Ev.exit209.i80.i

_ZN5arrow6StatusD2Ev.exit209.i80.i:               ; preds = %bb.qj, %bb.qi, %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24, !noalias !318
  br label %.critedge140.i28.i

bb.qk:                                            ; preds = %bb.qg
  %i.cas = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24, !noalias !318
  br label %bb.sg

_ZN5arrow6StatusD2Ev.exit213.i70.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit207.i77.i, %_ZN5arrow6StatusD2Ev.exit207.thread.i69.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #24, !noalias !318
  %i.cat = icmp slt i64 %.sroa.11.2312.i61.i, %.sroa.speculated.i.i201.i67.i
  br i1 %i.cat, label %.lr.ph.preheader.i71.i, label %.critedge146.i62.i

.lr.ph.preheader.i71.i:                           ; preds = %_ZN5arrow6StatusD2Ev.exit213.i70.i
  %.pre.i72.i = load i64, ptr %i.bxq, align 8, !tbaa !131, !noalias !318 ; 2 uses
  %i.cau = sub i64 %.sroa.speculated.i.i201.i67.i, %.sroa.11.2312.i61.i
  %.neg = add i64 %.sroa.11.2312.i61.i, 1
  %xtraiter = and i64 %i.cau, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i73.i.prol.loopexit, label %.lr.ph.i73.i.prol

.lr.ph.i73.i.prol:                                ; preds = %.lr.ph.preheader.i71.i
  %i.cav = trunc i64 %.sroa.11.2312.i61.i to i32
  %i.caw = load ptr, ptr %i.bxn, align 8, !tbaa !88, !noalias !318
  %i.cax = getelementptr inbounds i8, ptr %i.caw, i64 %.pre.i72.i
  store i32 %i.cav, ptr %i.cax, align 1, !noalias !318
  %i.cay = load i64, ptr %i.bxq, align 8, !tbaa !131, !noalias !318
  %i.caz = add nsw i64 %i.cay, 4                  ; 2 uses
  store i64 %i.caz, ptr %i.bxq, align 8, !tbaa !131, !noalias !318
  %i.cba = add nsw i64 %.sroa.11.2312.i61.i, 1
  br label %.lr.ph.i73.i.prol.loopexit

.lr.ph.i73.i.prol.loopexit:                       ; preds = %.lr.ph.i73.i.prol, %.lr.ph.preheader.i71.i
  %.unr = phi i64 [ %.pre.i72.i, %.lr.ph.preheader.i71.i ], [ %i.caz, %.lr.ph.i73.i.prol ]
  %.086310.i74.i.unr = phi i64 [ %.sroa.11.2312.i61.i, %.lr.ph.preheader.i71.i ], [ %i.cba, %.lr.ph.i73.i.prol ]
  %i.cbb = icmp eq i64 %.sroa.speculated.i.i201.i67.i, %.neg
  br i1 %i.cbb, label %.critedge146.i62.i, label %.lr.ph.i73.i

.lr.ph.i73.i:                                     ; preds = %.lr.ph.i73.i.prol.loopexit, %.lr.ph.i73.i
  %i.cbc = phi i64 [ %i.cbn, %.lr.ph.i73.i ], [ %.unr, %.lr.ph.i73.i.prol.loopexit ]
  %.086310.i74.i = phi i64 [ %i.cbo, %.lr.ph.i73.i ], [ %.086310.i74.i.unr, %.lr.ph.i73.i.prol.loopexit ] ; 3 uses
  %i.cbd = trunc i64 %.086310.i74.i to i32
  %i.cbe = load ptr, ptr %i.bxn, align 8, !tbaa !88, !noalias !318
  %i.cbf = getelementptr inbounds i8, ptr %i.cbe, i64 %i.cbc
  store i32 %i.cbd, ptr %i.cbf, align 1, !noalias !318
  %i.cbg = load i64, ptr %i.bxq, align 8, !tbaa !131, !noalias !318
  %i.cbh = add nsw i64 %i.cbg, 4                  ; 2 uses
  store i64 %i.cbh, ptr %i.bxq, align 8, !tbaa !131, !noalias !318
  %i.cbi = trunc i64 %.086310.i74.i to i32
  %i.cbj = add i32 %i.cbi, 1
  %i.cbk = load ptr, ptr %i.bxn, align 8, !tbaa !88, !noalias !318
  %i.cbl = getelementptr inbounds i8, ptr %i.cbk, i64 %i.cbh
  store i32 %i.cbj, ptr %i.cbl, align 1, !noalias !318
  %i.cbm = load i64, ptr %i.bxq, align 8, !tbaa !131, !noalias !318
  %i.cbn = add nsw i64 %i.cbm, 4                  ; 2 uses
  store i64 %i.cbn, ptr %i.bxq, align 8, !tbaa !131, !noalias !318
  %i.cbo = add nsw i64 %.086310.i74.i, 2          ; 2 uses
  %exitcond.not.i75.i.1 = icmp eq i64 %i.cbo, %.sroa.speculated.i.i201.i67.i
  br i1 %exitcond.not.i75.i.1, label %.critedge146.i62.i, label %.lr.ph.i73.i, !llvm.loop !353

.critedge146.i62.i:                               ; preds = %.lr.ph.i73.i.prol.loopexit, %.lr.ph.i73.i, %_ZN5arrow6StatusD2Ev.exit213.i70.i, %bb.qe
  %i.cbp = getelementptr inbounds [4 x i8], ptr %i.bqf, i64 %.sroa.25.2313.i60.i
  %i.cbq = load i32, ptr %i.cbp, align 4, !tbaa !3, !noalias !318
  %i.cbr = sext i32 %i.cbq to i64
  %i.cbs = sub nsw i64 %i.cbr, %i.bpz             ; 2 uses
  %.sroa.speculated4.i.i214.i63.i = call i64 @llvm.smax.i64(i64 %i.cbs, i64 0)
  %.sroa.speculated.i.i215.i64.i = call noundef i64 @llvm.smin.i64(i64 %i.bqa, i64 %.sroa.speculated4.i.i214.i63.i)
  %i.cbt = add nsw i64 %.sroa.25.2313.i60.i, 1
  %.not.i65.i = icmp slt i64 %i.cbs, %i.bqa
  br i1 %.not.i65.i, label %bb.qe, label %.loopexit.i15.i

.loopexit.i15.i:                                  ; preds = %.critedge146.i62.i, %.critedge136.i85.i, %.preheader.i81.i, %.preheader308.i14.i
  %i.cbu = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.cbv = load i64, ptr %i.cbu, align 8, !tbaa !131, !noalias !318
  %i.cbw = lshr i64 %i.cbv, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24, !noalias !318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false), !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24, !noalias !318
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %38, ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull %36, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit218.i20.i unwind label %bb.qo, !noalias !318

_ZN5arrow6StatusD2Ev.exit218.i20.i:               ; preds = %.loopexit.i15.i
  %i.cbx = load ptr, ptr %38, align 8, !tbaa !113, !noalias !318 ; 2 uses
  store ptr %i.cbx, ptr %37, align 8, !tbaa !113, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24, !noalias !318
  %i.cby = icmp eq ptr %i.cbx, null
  br i1 %i.cby, label %_ZN5arrow6StatusD2Ev.exit224.i33.i, label %bb.ql, !prof !117

bb.ql:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit218.i20.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %37) #24
  %i.cbz = load ptr, ptr %37, align 8, !tbaa !113, !noalias !318 ; 2 uses
  %.not.i219.i21.i = icmp eq ptr %i.cbz, null
  br i1 %.not.i219.i21.i, label %_ZN5arrow6StatusD2Ev.exit220.i22.i, label %bb.qm, !prof !117

bb.qm:                                            ; preds = %bb.ql
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbz, i64 1
  %i.ccb = load i8, ptr %i.cca, align 1, !tbaa !118, !range !127, !noundef !128
  %i.ccc = trunc nuw i8 %i.ccb to i1
  br i1 %i.ccc, label %_ZN5arrow6StatusD2Ev.exit220.i22.i, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %37) #24
  br label %_ZN5arrow6StatusD2Ev.exit220.i22.i

_ZN5arrow6StatusD2Ev.exit220.i22.i:               ; preds = %bb.qn, %bb.qm, %bb.ql
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24, !noalias !318
  br label %bb.rs

bb.qo:                                            ; preds = %.loopexit.i15.i
  %i.ccd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24, !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24, !noalias !318
  br label %bb.rz

_ZN5arrow6StatusD2Ev.exit224.i33.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit218.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24, !noalias !318
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.cce = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %.noexc227.i35.i unwind label %bb.rn, !noalias !318 ; 2 uses

.noexc227.i35.i:                                  ; preds = %_ZN5arrow6StatusD2Ev.exit224.i33.i
  %i.ccf = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.cce, i64 8
  %i.cch = load ptr, ptr %i.ccg, align 8, !tbaa !95, !noalias !357 ; 2 uses
  %i.cci = load <2 x ptr>, ptr %i.cce, align 8, !tbaa !97, !noalias !357
  store <2 x ptr> %i.cci, ptr %39, align 16, !tbaa !97, !alias.scope !354, !noalias !318
  %.not.i.i.i.i225.i36.i = icmp eq ptr %i.cch, null
  br i1 %.not.i.i.i.i225.i36.i, label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit.i.i, label %bb.qp

bb.qp:                                            ; preds = %.noexc227.i35.i
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cch, i64 8 ; 3 uses
  %i.cck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !357
  %.not.i.i.i.i.i226.i37.i = icmp eq i8 %i.cck, 0
  br i1 %.not.i.i.i.i.i226.i37.i, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.ccl = load i32, ptr %i.ccj, align 4, !tbaa !3, !noalias !357
  %i.ccm = add nsw i32 %i.ccl, 1
  store i32 %i.ccm, ptr %i.ccj, align 4, !tbaa !3, !noalias !357
  br label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit.i.i

bb.qr:                                            ; preds = %bb.qp
  %i.ccn = atomicrmw volatile add ptr %i.ccj, i32 1 acq_rel, align 4, !noalias !357 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit.i.i

_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv.exit.i.i: ; preds = %bb.qr, %bb.qq, %.noexc227.i35.i
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24, !noalias !318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false), !noalias !318
  %i.cco = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 2 uses
  %i.ccp = load ptr, ptr %36, align 8, !tbaa !306, !noalias !318 ; 2 uses
  store ptr %i.ccp, ptr %i.cco, align 8, !tbaa !306, !noalias !318
  %i.ccq = getelementptr inbounds nuw i8, ptr %41, i64 24 ; 2 uses
  %i.ccr = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.ccs = load ptr, ptr %i.ccr, align 8, !tbaa !95, !noalias !318 ; 4 uses
  store ptr null, ptr %i.ccr, align 8, !tbaa !95, !noalias !318
  store ptr %i.ccs, ptr %i.ccq, align 8, !tbaa !95, !noalias !318
  store ptr null, ptr %36, align 8, !tbaa !306, !noalias !318
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal14GetTakeIndicesERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i278.i

bb.ti:                                            ; preds = %bb.tg
  %i.cni = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !367
  %.not.i.i.i.i275.i = icmp eq i8 %i.cni, 0
  br i1 %.not.i.i.i.i275.i, label %bb.tk, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  %i.cnj = add nsw i32 %i.cna, -1
  store i32 %i.cnj, ptr %i.cmx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i276.i

bb.tk:                                            ; preds = %bb.ti
  %i.cnk = atomicrmw volatile add ptr %i.cmx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i276.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i276.i: ; preds = %bb.tk, %bb.tj
  %.0.i.i.i.i.i277.i = phi i32 [ %i.cna, %bb.tj ], [ %i.cnk, %bb.tk ]
  %i.cnl = icmp eq i32 %.0.i.i.i.i.i277.i, 1
  br i1 %i.cnl, label %bb.tl, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i278.i, !prof !104

bb.tl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i276.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre331.i273.i) #24
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i278.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i278.i: ; preds = %bb.tl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i276.i, %bb.th, %bb.tf, %.thread.i288.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24, !noalias !367
  br label %.critedge130.i279.i

.critedge130.i279.i:                              ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i278.i, %_ZN5arrow6StatusD2Ev.exit164.i323.i, %_ZN5arrow6StatusD2Ev.exit154.i309.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow14NumericBuilderINS_9Int64TypeEEE, i64 16), ptr %5, align 8, !tbaa !90, !noalias !367
  %i.cnm = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.cnn = load ptr, ptr %i.cnm, align 8, !tbaa !95, !noalias !367 ; 8 uses
  %.not.i.i.i.i.i182.i280.i = icmp eq ptr %i.cnn, null
  br i1 %.not.i.i.i.i.i182.i280.i, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i.i, label %bb.tm

bb.tm:                                            ; preds = %.critedge130.i279.i
  %i.cno = getelementptr inbounds nuw i8, ptr %i.cnn, i64 8 ; 4 uses
  %i.cnp = load atomic i64, ptr %i.cno acquire, align 8 ; 2 uses
  %i.cnq = icmp eq i64 %i.cnp, 4294967297
  %i.cnr = trunc i64 %i.cnp to i32                ; 2 uses
  br i1 %i.cnq, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  store i32 0, ptr %i.cno, align 8, !tbaa !134
  %i.cns = getelementptr inbounds nuw i8, ptr %i.cnn, i64 12
  store i32 0, ptr %i.cns, align 4, !tbaa !136
  %i.cnt = load ptr, ptr %i.cnn, align 8, !tbaa !90
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cnt, i64 16
  %i.cnv = load ptr, ptr %i.cnu, align 8
  call void %i.cnv(ptr noundef nonnull align 8 dereferenceable(16) %i.cnn) #24, !inline_history !388
  %i.cnw = load ptr, ptr %i.cnn, align 8, !tbaa !90
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cnw, i64 24
  %i.cny = load ptr, ptr %i.cnx, align 8
  call void %i.cny(ptr noundef nonnull align 8 dereferenceable(16) %i.cnn) #24, !inline_history !388
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i.i

bb.to:                                            ; preds = %bb.tm
  %i.cnz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !367
  %.not.i.i.i.i.i.i183.i281.i = icmp eq i8 %i.cnz, 0
  br i1 %.not.i.i.i.i.i.i183.i281.i, label %bb.tq, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.coa = add nsw i32 %i.cnr, -1
  store i32 %i.coa, ptr %i.cno, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i282.i

bb.tq:                                            ; preds = %bb.to
  %i.cob = atomicrmw volatile add ptr %i.cno, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i282.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i282.i: ; preds = %bb.tq, %bb.tp
  %.0.i.i.i.i.i.i.i.i283.i = phi i32 [ %i.cnr, %bb.tp ], [ %i.cob, %bb.tq ]
  %i.coc = icmp eq i32 %.0.i.i.i.i.i.i.i.i283.i, 1
  br i1 %i.coc, label %bb.tr, label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i.i, !prof !104

bb.tr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i282.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cnn) #24, !inline_history !389
  br label %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i.i

_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i.i: ; preds = %bb.tr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i282.i, %bb.tn, %.critedge130.i279.i
  %i.cod = load ptr, ptr %i.cis, align 8, !tbaa !95, !noalias !367 ; 8 uses
  %.not.i.i.i184.i284.i = icmp eq ptr %i.cod, null
  br i1 %.not.i.i.i184.i284.i, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i.i, label %bb.ts

bb.ts:                                            ; preds = %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i.i
  %i.coe = getelementptr inbounds nuw i8, ptr %i.cod, i64 8 ; 4 uses
  %i.cof = load atomic i64, ptr %i.coe acquire, align 8 ; 2 uses
  %i.cog = icmp eq i64 %i.cof, 4294967297
  %i.coh = trunc i64 %i.cof to i32                ; 2 uses
  br i1 %i.cog, label %bb.tt, label %bb.tu

bb.tt:                                            ; preds = %bb.ts
  store i32 0, ptr %i.coe, align 8, !tbaa !134
  %i.coi = getelementptr inbounds nuw i8, ptr %i.cod, i64 12
  store i32 0, ptr %i.coi, align 4, !tbaa !136
  %i.coj = load ptr, ptr %i.cod, align 8, !tbaa !90
  %i.cok = getelementptr inbounds nuw i8, ptr %i.coj, i64 16
  %i.col = load ptr, ptr %i.cok, align 8
  call void %i.col(ptr noundef nonnull align 8 dereferenceable(16) %i.cod) #24, !inline_history !390
  %i.com = load ptr, ptr %i.cod, align 8, !tbaa !90
  %i.con = getelementptr inbounds nuw i8, ptr %i.com, i64 24
  %i.coo = load ptr, ptr %i.con, align 8
  call void %i.coo(ptr noundef nonnull align 8 dereferenceable(16) %i.cod) #24, !inline_history !390
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i.i

bb.tu:                                            ; preds = %bb.ts
  %i.cop = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !367
  %.not.i.i.i.i.i285.i = icmp eq i8 %i.cop, 0
  br i1 %.not.i.i.i.i.i285.i, label %bb.tw, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.coq = add nsw i32 %i.coh, -1
  store i32 %i.coq, ptr %i.coe, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i286.i

bb.tw:                                            ; preds = %bb.tu
  %i.cor = atomicrmw volatile add ptr %i.coe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i286.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i286.i: ; preds = %bb.tw, %bb.tv
  %.0.i.i.i.i.i.i287.i = phi i32 [ %i.coh, %bb.tv ], [ %i.cor, %bb.tw ]
  %i.cos = icmp eq i32 %.0.i.i.i.i.i.i287.i, 1
  br i1 %i.cos, label %bb.tx, label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i.i, !prof !104

bb.tx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i286.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cod) #24, !inline_history !389
  br label %_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i.i

_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev.exit.i.i: ; preds = %bb.tx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i286.i, %bb.tt, %_ZN5arrow18TypedBufferBuilderIlvED2Ev.exit.i.i.i
  call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %5) #24, !inline_history !389
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !367
  br label %_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE.exit

bb.ty:                                            ; preds = %bb.te, %bb.ta, %bb.st
  %.pn124.i269.i = phi { ptr, i32 } [ %i.clp, %bb.ta ], [ %i.cmu, %bb.te ], [ %i.ckr, %bb.st ]
  call void @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(216) %5) #24, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !367
  br label %common.resume

bb.tz:                                            ; preds = %_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE5beginEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, i8 0, i64 16, i1 false), !noalias !367
  %i.cot = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %3, ptr %i.cot, align 8, !tbaa !87, !noalias !367
  %i.cou = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 7 uses
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.cou, align 8, !tbaa !88, !noalias !367
  %i.cov = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.cow = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cov, i8 0, i64 16, i1 false), !noalias !367
  store i64 64, ptr %i.cow, align 8, !tbaa !89, !noalias !367
  %.not306317.i173.i = icmp sgt i64 %i.chm, 0     ; 2 uses
  br i1 %i.chk, label %.preheader.i241.i, label %.preheader308.i174.i

.preheader308.i174.i:                             ; preds = %bb.tz
  br i1 %.not306317.i173.i, label %.lr.ph314.i219.i, label %.loopexit.i175.i

.lr.ph314.i219.i:                                 ; preds = %.preheader308.i174.i
  %i.cox = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 8 uses
  br label %bb.ui

.preheader.i241.i:                                ; preds = %bb.tz
  br i1 %.not306317.i173.i, label %.lr.ph320.i242.i, label %.loopexit.i175.i

.lr.ph320.i242.i:                                 ; preds = %.preheader.i241.i
  %i.coy = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 8 uses
  br label %bb.ua

bb.ua:                                            ; preds = %.critedge136.i245.i, %.lr.ph320.i242.i
  %.sroa.25.1319.i243.i = phi i64 [ %i.cig, %.lr.ph320.i242.i ], [ %i.cqw, %.critedge136.i245.i ] ; 4 uses
  %.sroa.11.1318.i244.i = phi i64 [ 0, %.lr.ph320.i242.i ], [ %.sroa.speculated.i.i199.i247.i, %.critedge136.i245.i ] ; 7 uses
  %i.coz = add nsw i64 %.sroa.25.1319.i243.i, %i.chc ; 2 uses
  %i.cpa = lshr i64 %i.coz, 3                     ; 2 uses
  %i.cpb = getelementptr inbounds nuw i8, ptr %i.che, i64 %i.cpa
  %i.cpc = load i8, ptr %i.cpb, align 1, !tbaa !98, !noalias !367
  %i.cpd = trunc i64 %i.coz to i8
  %i.cpe = and i8 %i.cpd, 7                       ; 2 uses
  %i.cpf = lshr i8 %i.cpc, %i.cpe
  %i.cpg = trunc i8 %i.cpf to i1
  br i1 %i.cpg, label %bb.ub, label %.critedge136.i245.i

bb.ub:                                            ; preds = %bb.ua
  %i.cph = getelementptr inbounds nuw i8, ptr %i.chg, i64 %i.cpa
  %i.cpi = load i8, ptr %i.cph, align 1, !tbaa !98, !noalias !367
  %i.cpj = lshr i8 %i.cpi, %i.cpe
  %i.cpk = trunc i8 %i.cpj to i1
  br i1 %i.cpk, label %bb.uc, label %.critedge136.i245.i

bb.uc:                                            ; preds = %bb.ub
  %i.cpl = getelementptr inbounds [8 x i8], ptr %i.chr, i64 %.sroa.25.1319.i243.i
  %i.cpm = load i64, ptr %i.cpl, align 8, !tbaa !130, !noalias !367
  %i.cpn = sub nsw i64 %i.cpm, %i.chl
  %.sroa.speculated4.i.i185.i249.i = call i64 @llvm.smax.i64(i64 %i.cpn, i64 0)
  %.sroa.speculated.i.i186.i250.i = call noundef i64 @llvm.smin.i64(i64 %i.chm, i64 %.sroa.speculated4.i.i185.i249.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24, !noalias !367
  %i.cpo = sub nsw i64 %.sroa.speculated.i.i186.i250.i, %.sroa.11.1318.i244.i
  %i.cpp = shl i64 %i.cpo, 3
  %i.cpq = load i64, ptr %i.coy, align 8, !tbaa !131, !noalias !391
  %i.cpr = add nsw i64 %i.cpp, %i.cpq             ; 2 uses
  %i.cps = load i64, ptr %i.cov, align 8, !tbaa !148, !noalias !391 ; 2 uses
  %.not.i.i187.i251.i = icmp sgt i64 %i.cpr, %i.cps
  br i1 %.not.i.i187.i251.i, label %bb.ud, label %_ZN5arrow6StatusD2Ev.exit191.thread.i252.i

_ZN5arrow6StatusD2Ev.exit191.thread.i252.i:       ; preds = %bb.uc
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !367
  br label %_ZN5arrow6StatusD2Ev.exit197.i253.i

bb.ud:                                            ; preds = %bb.uc
  %i.cpt = shl nsw i64 %i.cps, 1
  %.sroa.speculated.i.i.i188.i259.i = call noundef i64 @llvm.smax.i64(i64 %i.cpr, i64 %i.cpt)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %.sroa.speculated.i.i.i188.i259.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit191.i260.i unwind label %bb.uh, !noalias !367

_ZN5arrow6StatusD2Ev.exit191.i260.i:              ; preds = %bb.ud
  %.pr304.i261.i = load ptr, ptr %14, align 8, !tbaa !113, !noalias !367 ; 2 uses
  store ptr %.pr304.i261.i, ptr %13, align 8, !tbaa !113, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !367
  %i.cpu = icmp eq ptr %.pr304.i261.i, null
  br i1 %i.cpu, label %_ZN5arrow6StatusD2Ev.exit197.i253.i, label %bb.ue, !prof !116

bb.ue:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit191.i260.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  %i.cpv = load ptr, ptr %13, align 8, !tbaa !113, !noalias !367 ; 2 uses
  %.not.i192.i262.i = icmp eq ptr %i.cpv, null
  br i1 %.not.i192.i262.i, label %_ZN5arrow6StatusD2Ev.exit193.i263.i, label %bb.uf, !prof !117

bb.uf:                                            ; preds = %bb.ue
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpv, i64 1
  %i.cpx = load i8, ptr %i.cpw, align 1, !tbaa !118, !range !127, !noundef !128
  %i.cpy = trunc nuw i8 %i.cpx to i1
  br i1 %i.cpy, label %_ZN5arrow6StatusD2Ev.exit193.i263.i, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #24
  br label %_ZN5arrow6StatusD2Ev.exit193.i263.i

_ZN5arrow6StatusD2Ev.exit193.i263.i:              ; preds = %bb.ug, %bb.uf, %bb.ue
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !367
  br label %.critedge140.i188.i

bb.uh:                                            ; preds = %bb.ud
  %i.cpz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !367
  br label %bb.wk

_ZN5arrow6StatusD2Ev.exit197.i253.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit191.i260.i, %_ZN5arrow6StatusD2Ev.exit191.thread.i252.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !367
  %i.cqa = icmp slt i64 %.sroa.11.1318.i244.i, %.sroa.speculated.i.i186.i250.i
  br i1 %i.cqa, label %.lr.ph316.preheader.i254.i, label %.critedge136.i245.i

.lr.ph316.preheader.i254.i:                       ; preds = %_ZN5arrow6StatusD2Ev.exit197.i253.i
  %.pre330.i255.i = load i64, ptr %i.coy, align 8, !tbaa !131, !noalias !367 ; 2 uses
  %i.cqb = sub i64 %.sroa.speculated.i.i186.i250.i, %.sroa.11.1318.i244.i
  %.neg352 = add i64 %.sroa.11.1318.i244.i, 1
  %xtraiter280 = and i64 %i.cqb, 1
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %.lr.ph316.i256.i.prol.loopexit, label %.lr.ph316.i256.i.prol

.lr.ph316.i256.i.prol:                            ; preds = %.lr.ph316.preheader.i254.i
  %i.cqc = load ptr, ptr %i.cou, align 8, !tbaa !88, !noalias !367
  %i.cqd = getelementptr inbounds i8, ptr %i.cqc, i64 %.pre330.i255.i
  store i64 %.sroa.11.1318.i244.i, ptr %i.cqd, align 1, !noalias !367
  %i.cqe = load i64, ptr %i.coy, align 8, !tbaa !131, !noalias !367
  %i.cqf = add nsw i64 %i.cqe, 8                  ; 2 uses
  store i64 %i.cqf, ptr %i.coy, align 8, !tbaa !131, !noalias !367
  %i.cqg = add nsw i64 %.sroa.11.1318.i244.i, 1
  br label %.lr.ph316.i256.i.prol.loopexit

.lr.ph316.i256.i.prol.loopexit:                   ; preds = %.lr.ph316.i256.i.prol, %.lr.ph316.preheader.i254.i
  %.unr282 = phi i64 [ %.pre330.i255.i, %.lr.ph316.preheader.i254.i ], [ %i.cqf, %.lr.ph316.i256.i.prol ]
  %.0101315.i257.i.unr = phi i64 [ %.sroa.11.1318.i244.i, %.lr.ph316.preheader.i254.i ], [ %i.cqg, %.lr.ph316.i256.i.prol ]
  %i.cqh = icmp eq i64 %.sroa.speculated.i.i186.i250.i, %.neg352
  br i1 %i.cqh, label %.critedge136.i245.i, label %.lr.ph316.i256.i

.lr.ph316.i256.i:                                 ; preds = %.lr.ph316.i256.i.prol.loopexit, %.lr.ph316.i256.i
  %i.cqi = phi i64 [ %i.cqr, %.lr.ph316.i256.i ], [ %.unr282, %.lr.ph316.i256.i.prol.loopexit ]
  %.0101315.i257.i = phi i64 [ %i.cqs, %.lr.ph316.i256.i ], [ %.0101315.i257.i.unr, %.lr.ph316.i256.i.prol.loopexit ] ; 3 uses
  %i.cqj = load ptr, ptr %i.cou, align 8, !tbaa !88, !noalias !367
  %i.cqk = getelementptr inbounds i8, ptr %i.cqj, i64 %i.cqi
  store i64 %.0101315.i257.i, ptr %i.cqk, align 1, !noalias !367
  %i.cql = load i64, ptr %i.coy, align 8, !tbaa !131, !noalias !367
  %i.cqm = add nsw i64 %i.cql, 8                  ; 2 uses
  store i64 %i.cqm, ptr %i.coy, align 8, !tbaa !131, !noalias !367
  %i.cqn = add nsw i64 %.0101315.i257.i, 1
  %i.cqo = load ptr, ptr %i.cou, align 8, !tbaa !88, !noalias !367
  %i.cqp = getelementptr inbounds i8, ptr %i.cqo, i64 %i.cqm
  store i64 %i.cqn, ptr %i.cqp, align 1, !noalias !367
  %i.cqq = load i64, ptr %i.coy, align 8, !tbaa !131, !noalias !367
  %i.cqr = add nsw i64 %i.cqq, 8                  ; 2 uses
  store i64 %i.cqr, ptr %i.coy, align 8, !tbaa !131, !noalias !367
  %i.cqs = add nsw i64 %.0101315.i257.i, 2        ; 2 uses
  %exitcond328.not.i258.i.1 = icmp eq i64 %i.cqs, %.sroa.speculated.i.i186.i250.i
  br i1 %exitcond328.not.i258.i.1, label %.critedge136.i245.i, label %.lr.ph316.i256.i, !llvm.loop !396

.critedge136.i245.i:                              ; preds = %.lr.ph316.i256.i.prol.loopexit, %.lr.ph316.i256.i, %_ZN5arrow6StatusD2Ev.exit197.i253.i, %bb.ub, %bb.ua
  %i.cqt = getelementptr inbounds [8 x i8], ptr %i.chr, i64 %.sroa.25.1319.i243.i
  %i.cqu = load i64, ptr %i.cqt, align 8, !tbaa !130, !noalias !367
  %i.cqv = sub nsw i64 %i.cqu, %i.chl             ; 2 uses
  %.sroa.speculated4.i.i198.i246.i = call i64 @llvm.smax.i64(i64 %i.cqv, i64 0)
  %.sroa.speculated.i.i199.i247.i = call noundef i64 @llvm.smin.i64(i64 %i.chm, i64 %.sroa.speculated4.i.i198.i246.i)
  %i.cqw = add nsw i64 %.sroa.25.1319.i243.i, 1
  %.not306.i248.i = icmp slt i64 %i.cqv, %i.chm
  br i1 %.not306.i248.i, label %bb.ua, label %.loopexit.i175.i

bb.ui:                                            ; preds = %.critedge146.i222.i, %.lr.ph314.i219.i
  %.sroa.25.2313.i220.i = phi i64 [ %i.cig, %.lr.ph314.i219.i ], [ %i.csq, %.critedge146.i222.i ] ; 4 uses
  %.sroa.11.2312.i221.i = phi i64 [ 0, %.lr.ph314.i219.i ], [ %.sroa.speculated.i.i215.i224.i, %.critedge146.i222.i ] ; 7 uses
  %i.cqx = add nsw i64 %.sroa.25.2313.i220.i, %i.chc ; 2 uses
  %i.cqy = lshr i64 %i.cqx, 3
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.chg, i64 %i.cqy
  %i.cra = load i8, ptr %i.cqz, align 1, !tbaa !98, !noalias !367
  %i.crb = trunc i64 %i.cqx to i8
  %i.crc = and i8 %i.crb, 7
  %i.crd = lshr i8 %i.cra, %i.crc
  %i.cre = trunc i8 %i.crd to i1
  br i1 %i.cre, label %bb.uj, label %.critedge146.i222.i

bb.uj:                                            ; preds = %bb.ui
  %i.crf = getelementptr inbounds [8 x i8], ptr %i.chr, i64 %.sroa.25.2313.i220.i
  %i.crg = load i64, ptr %i.crf, align 8, !tbaa !130, !noalias !367
  %i.crh = sub nsw i64 %i.crg, %i.chl
  %.sroa.speculated4.i.i200.i226.i = call i64 @llvm.smax.i64(i64 %i.crh, i64 0)
  %.sroa.speculated.i.i201.i227.i = call noundef i64 @llvm.smin.i64(i64 %i.chm, i64 %.sroa.speculated4.i.i200.i226.i) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24, !noalias !367
  %i.cri = sub nsw i64 %.sroa.speculated.i.i201.i227.i, %.sroa.11.2312.i221.i
  %i.crj = shl i64 %i.cri, 3
  %i.crk = load i64, ptr %i.cox, align 8, !tbaa !131, !noalias !397
  %i.crl = add nsw i64 %i.crj, %i.crk             ; 2 uses
  %i.crm = load i64, ptr %i.cov, align 8, !tbaa !148, !noalias !397 ; 2 uses
  %.not.i.i202.i228.i = icmp sgt i64 %i.crl, %i.crm
  br i1 %.not.i.i202.i228.i, label %bb.uk, label %_ZN5arrow6StatusD2Ev.exit207.thread.i229.i

_ZN5arrow6StatusD2Ev.exit207.thread.i229.i:       ; preds = %bb.uj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !367
  br label %_ZN5arrow6StatusD2Ev.exit213.i230.i

bb.uk:                                            ; preds = %bb.uj
  %i.crn = shl nsw i64 %i.crm, 1
  %.sroa.speculated.i.i.i203.i236.i = call noundef i64 @llvm.smax.i64(i64 %i.crl, i64 %i.crn)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 noundef %.sroa.speculated.i.i.i203.i236.i, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit207.i237.i unwind label %bb.uo, !noalias !367

_ZN5arrow6StatusD2Ev.exit207.i237.i:              ; preds = %bb.uk
  %.pr305.i238.i = load ptr, ptr %16, align 8, !tbaa !113, !noalias !367 ; 2 uses
  store ptr %.pr305.i238.i, ptr %15, align 8, !tbaa !113, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !367
  %i.cro = icmp eq ptr %.pr305.i238.i, null
  br i1 %i.cro, label %_ZN5arrow6StatusD2Ev.exit213.i230.i, label %bb.ul, !prof !116

bb.ul:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit207.i237.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #24
  %i.crp = load ptr, ptr %15, align 8, !tbaa !113, !noalias !367 ; 2 uses
  %.not.i208.i239.i = icmp eq ptr %i.crp, null
  br i1 %.not.i208.i239.i, label %_ZN5arrow6StatusD2Ev.exit209.i240.i, label %bb.um, !prof !117

bb.um:                                            ; preds = %bb.ul
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 1
  %i.crr = load i8, ptr %i.crq, align 1, !tbaa !118, !range !127, !noundef !128
  %i.crs = trunc nuw i8 %i.crr to i1
  br i1 %i.crs, label %_ZN5arrow6StatusD2Ev.exit209.i240.i, label %bb.un

bb.un:                                            ; preds = %bb.um
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #24
  br label %_ZN5arrow6StatusD2Ev.exit209.i240.i

_ZN5arrow6StatusD2Ev.exit209.i240.i:              ; preds = %bb.un, %bb.um, %bb.ul
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !367
  br label %.critedge140.i188.i

bb.uo:                                            ; preds = %bb.uk
  %i.crt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !367
  br label %bb.wk

_ZN5arrow6StatusD2Ev.exit213.i230.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit207.i237.i, %_ZN5arrow6StatusD2Ev.exit207.thread.i229.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24, !noalias !367
  %i.cru = icmp slt i64 %.sroa.11.2312.i221.i, %.sroa.speculated.i.i201.i227.i
  br i1 %i.cru, label %.lr.ph.preheader.i231.i, label %.critedge146.i222.i

.lr.ph.preheader.i231.i:                          ; preds = %_ZN5arrow6StatusD2Ev.exit213.i230.i
  %.pre.i232.i = load i64, ptr %i.cox, align 8, !tbaa !131, !noalias !367 ; 2 uses
  %i.crv = sub i64 %.sroa.speculated.i.i201.i227.i, %.sroa.11.2312.i221.i
  %.neg351 = add i64 %.sroa.11.2312.i221.i, 1
  %xtraiter277 = and i64 %i.crv, 1
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %.lr.ph.i233.i.prol.loopexit, label %.lr.ph.i233.i.prol

.lr.ph.i233.i.prol:                               ; preds = %.lr.ph.preheader.i231.i
  %i.crw = load ptr, ptr %i.cou, align 8, !tbaa !88, !noalias !367
  %i.crx = getelementptr inbounds i8, ptr %i.crw, i64 %.pre.i232.i
  store i64 %.sroa.11.2312.i221.i, ptr %i.crx, align 1, !noalias !367
  %i.cry = load i64, ptr %i.cox, align 8, !tbaa !131, !noalias !367
  %i.crz = add nsw i64 %i.cry, 8                  ; 2 uses
  store i64 %i.crz, ptr %i.cox, align 8, !tbaa !131, !noalias !367
  %i.csa = add nsw i64 %.sroa.11.2312.i221.i, 1
  br label %.lr.ph.i233.i.prol.loopexit

.lr.ph.i233.i.prol.loopexit:                      ; preds = %.lr.ph.i233.i.prol, %.lr.ph.preheader.i231.i
  %.unr279 = phi i64 [ %.pre.i232.i, %.lr.ph.preheader.i231.i ], [ %i.crz, %.lr.ph.i233.i.prol ]
  %.086310.i234.i.unr = phi i64 [ %.sroa.11.2312.i221.i, %.lr.ph.preheader.i231.i ], [ %i.csa, %.lr.ph.i233.i.prol ]
  %i.csb = icmp eq i64 %.sroa.speculated.i.i201.i227.i, %.neg351
  br i1 %i.csb, label %.critedge146.i222.i, label %.lr.ph.i233.i

.lr.ph.i233.i:                                    ; preds = %.lr.ph.i233.i.prol.loopexit, %.lr.ph.i233.i
  %i.csc = phi i64 [ %i.csl, %.lr.ph.i233.i ], [ %.unr279, %.lr.ph.i233.i.prol.loopexit ]
  %.086310.i234.i = phi i64 [ %i.csm, %.lr.ph.i233.i ], [ %.086310.i234.i.unr, %.lr.ph.i233.i.prol.loopexit ] ; 3 uses
  %i.csd = load ptr, ptr %i.cou, align 8, !tbaa !88, !noalias !367
  %i.cse = getelementptr inbounds i8, ptr %i.csd, i64 %i.csc
  store i64 %.086310.i234.i, ptr %i.cse, align 1, !noalias !367
  %i.csf = load i64, ptr %i.cox, align 8, !tbaa !131, !noalias !367
  %i.csg = add nsw i64 %i.csf, 8                  ; 2 uses
  store i64 %i.csg, ptr %i.cox, align 8, !tbaa !131, !noalias !367
  %i.csh = add nsw i64 %.086310.i234.i, 1
  %i.csi = load ptr, ptr %i.cou, align 8, !tbaa !88, !noalias !367
  %i.csj = getelementptr inbounds i8, ptr %i.csi, i64 %i.csg
  store i64 %i.csh, ptr %i.csj, align 1, !noalias !367
  %i.csk = load i64, ptr %i.cox, align 8, !tbaa !131, !noalias !367
  %i.csl = add nsw i64 %i.csk, 8                  ; 2 uses
  store i64 %i.csl, ptr %i.cox, align 8, !tbaa !131, !noalias !367
  %i.csm = add nsw i64 %.086310.i234.i, 2         ; 2 uses
  %exitcond.not.i235.i.1 = icmp eq i64 %i.csm, %.sroa.speculated.i.i201.i227.i
  br i1 %exitcond.not.i235.i.1, label %.critedge146.i222.i, label %.lr.ph.i233.i, !llvm.loop !402

.critedge146.i222.i:                              ; preds = %.lr.ph.i233.i.prol.loopexit, %.lr.ph.i233.i, %_ZN5arrow6StatusD2Ev.exit213.i230.i, %bb.ui
  %i.csn = getelementptr inbounds [8 x i8], ptr %i.chr, i64 %.sroa.25.2313.i220.i
  %i.cso = load i64, ptr %i.csn, align 8, !tbaa !130, !noalias !367
  %i.csp = sub nsw i64 %i.cso, %i.chl             ; 2 uses
  %.sroa.speculated4.i.i214.i223.i = call i64 @llvm.smax.i64(i64 %i.csp, i64 0)
  %.sroa.speculated.i.i215.i224.i = call noundef i64 @llvm.smin.i64(i64 %i.chm, i64 %.sroa.speculated4.i.i214.i223.i)
  %i.csq = add nsw i64 %.sroa.25.2313.i220.i, 1
  %.not.i225.i = icmp slt i64 %i.csp, %i.chm
  br i1 %.not.i225.i, label %bb.ui, label %.loopexit.i175.i

.loopexit.i175.i:                                 ; preds = %.critedge146.i222.i, %.critedge136.i245.i, %.preheader.i241.i, %.preheader308.i174.i
  %i.csr = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.css = load i64, ptr %i.csr, align 8, !tbaa !131, !noalias !367
  %i.cst = lshr i64 %i.css, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false), !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !367
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %19, ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull %17, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit218.i180.i unwind label %bb.us, !noalias !367

_ZN5arrow6StatusD2Ev.exit218.i180.i:              ; preds = %.loopexit.i175.i
  %i.csu = load ptr, ptr %19, align 8, !tbaa !113, !noalias !367 ; 2 uses
  store ptr %i.csu, ptr %18, align 8, !tbaa !113, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !367
  %i.csv = icmp eq ptr %i.csu, null
  br i1 %i.csv, label %_ZN5arrow6StatusD2Ev.exit224.i193.i, label %bb.up, !prof !117

bb.up:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit218.i180.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %18) #24
  %i.csw = load ptr, ptr %18, align 8, !tbaa !113, !noalias !367 ; 2 uses
  %.not.i219.i181.i = icmp eq ptr %i.csw, null
  br i1 %.not.i219.i181.i, label %_ZN5arrow6StatusD2Ev.exit220.i182.i, label %bb.uq, !prof !117

bb.uq:                                            ; preds = %bb.up
  %i.csx = getelementptr inbounds nuw i8, ptr %i.csw, i64 1
  %i.csy = load i8, ptr %i.csx, align 1, !tbaa !118, !range !127, !noundef !128
  %i.csz = trunc nuw i8 %i.csy to i1
  br i1 %i.csz, label %_ZN5arrow6StatusD2Ev.exit220.i182.i, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #24
  br label %_ZN5arrow6StatusD2Ev.exit220.i182.i

_ZN5arrow6StatusD2Ev.exit220.i182.i:              ; preds = %bb.ur, %bb.uq, %bb.up
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !367
  br label %bb.vw

bb.us:                                            ; preds = %.loopexit.i175.i
  %i.cta = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24, !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !367
  br label %bb.wd

_ZN5arrow6StatusD2Ev.exit224.i193.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit218.i180.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24, !noalias !367
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.ctb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int64Ev()
          to label %.noexc227.i195.i unwind label %bb.vr, !noalias !367 ; 2 uses

.noexc227.i195.i:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit224.i193.i
  %i.ctc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.ctb, i64 8
  %i.cte = load ptr, ptr %i.ctd, align 8, !tbaa !95, !noalias !406 ; 2 uses
  %i.ctf = load <2 x ptr>, ptr %i.ctb, align 8, !tbaa !97, !noalias !406
  store <2 x ptr> %i.ctf, ptr %20, align 16, !tbaa !97, !alias.scope !403, !noalias !367
  %.not.i.i.i.i225.i196.i = icmp eq ptr %i.cte, null
  br i1 %.not.i.i.i.i225.i196.i, label %_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit.i.i, label %bb.ut

bb.ut:                                            ; preds = %.noexc227.i195.i
  %i.ctg = getelementptr inbounds nuw i8, ptr %i.cte, i64 8 ; 3 uses
  %i.cth = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98, !noalias !406
  %.not.i.i.i.i.i226.i197.i = icmp eq i8 %i.cth, 0
  br i1 %.not.i.i.i.i.i226.i197.i, label %bb.uv, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.cti = load i32, ptr %i.ctg, align 4, !tbaa !3, !noalias !406
  %i.ctj = add nsw i32 %i.cti, 1
  store i32 %i.ctj, ptr %i.ctg, align 4, !tbaa !3, !noalias !406
  br label %_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit.i.i

bb.uv:                                            ; preds = %bb.ut
  %i.ctk = atomicrmw volatile add ptr %i.ctg, i32 1 acq_rel, align 4, !noalias !406 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit.i.i

_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv.exit.i.i: ; preds = %bb.uv, %bb.uu, %.noexc227.i195.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24, !noalias !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false), !noalias !367
  %i.ctl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ctm = load ptr, ptr %17, align 8, !tbaa !306, !noalias !367 ; 2 uses
  store ptr %i.ctm, ptr %i.ctl, align 8, !tbaa !306, !noalias !367
  %i.ctn = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.cto = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ctp = load ptr, ptr %i.cto, align 8, !tbaa !95, !noalias !367 ; 4 uses
  store ptr null, ptr %i.cto, align 8, !tbaa !95, !noalias !367
  store ptr %i.ctp, ptr %i.ctn, align 8, !tbaa !95, !noalias !367
  store ptr null, ptr %17, align 8, !tbaa !306, !noalias !367
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !367
  %i.ctq = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #25
          to label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i199.i unwind label %bb.vs, !noalias !367 ; 5 uses

end_hunk_6
begin_hunk_7_@_ZN5arrow8internal12JoinToStringIJRA36_KcRlRA19_S2_S5_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.f, %bb.d, %bb.h
  %.pn15 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.s, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__shared_ptr.80", align 16 ; 5 uses
  %5 = alloca %"class.arrow::Result.108", align 8 ; 12 uses
  %6 = alloca %"class.std::unique_ptr.112", align 8 ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !977    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87
  call void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.108") align 8 %5, i64 noundef %2, i64 noundef %i.c, ptr noundef %i.e)
  %i.f = load ptr, ptr %5, align 8, !tbaa !113
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.c, !prof !117

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !113
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !932, !noalias !984
  store i64 %i.j, ptr %6, align 8, !tbaa !932, !alias.scope !984
  store ptr null, ptr %i.i, align 8, !tbaa !932, !noalias !984
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95   ; 8 uses
  %i.m = load <2 x ptr>, ptr %1, align 8, !tbaa !97
  %i.n = load <2 x ptr>, ptr %4, align 16, !tbaa !97
  store <2 x ptr> %i.n, ptr %1, align 8, !tbaa !97
  store <2 x ptr> %i.m, ptr %4, align 16, !tbaa !97
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !134
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !136
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !985
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !985
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !104

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ad = load ptr, ptr %6, align 8, !tbaa !932   ; 3 uses
  %.not.i22 = icmp eq ptr %i.ad, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i: ; preds = %bb.l
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(80) %i.ad) #24, !inline_history !986
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.c, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ah = load ptr, ptr %5, align 8, !tbaa !113   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !117

bb.m:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !932 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(80) %i.ak) #24, !inline_history !987
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !113 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !863

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ao = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !118, !range !127, !noundef !128
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  br label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.m, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %i.g, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %6, align 8, !tbaa !932   ; 3 uses
  %.not.i24 = icmp eq ptr %i.at, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25: ; preds = %bb.o
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !90
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(80) %i.at) #24, !inline_history !986
  br label %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26

_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26: ; preds = %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit.i25, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26, %bb.d
  %.pn18 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.as, %_ZNSt10unique_ptrIN5arrow15ResizableBufferESt14default_deleteIS1_EED2Ev.exit26 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn18

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef %2, i1 noundef zeroext %3)
  %i.ba = load ptr, ptr %7, align 8, !tbaa !113   ; 2 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !977   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !988
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !148
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !439, !range !127, !noundef !128
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !range !127
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false, !prof !117
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = select i1 %i.bm, ptr %i.bo, ptr null, !prof !117
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !88
  store ptr null, ptr %0, align 8, !tbaa !113, !alias.scope !989
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev.exit, %bb.q
  ret void
}

declare void @_ZN5arrow23AllocateResizableBufferEllPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.108") align 8, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !932  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #24, !inline_history !992
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !113 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !863

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !118, !range !127, !noundef !128
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !932    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !977
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !95
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !932
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !134
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !136
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !993
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 4, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !95 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !136
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !995
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !995
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !104

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !95
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !134
  store i32 0, ptr %i.f, align 4, !tbaa !136
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !882
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !882
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !98
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !104

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24
  resume { ptr, i32 } %i.al
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

end_hunk_7
begin_hunk_8_@_GLOBAL__sub_I_vector_selection_take_internal.cc:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold noreturn }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN5arrow18TypedChunkLocationIiEE", !4, i64 0, !4, i64 4}
!9 = !{!8, !4, i64 4}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSN5arrow18TypedChunkLocationIsEE", !12, i64 0, !12, i64 2}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 2}
!14 = !{!15, !5, i64 0}
!15 = !{!"_ZTSN5arrow18TypedChunkLocationIaEE", !5, i64 0, !5, i64 1}
!16 = !{!15, !5, i64 1}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN5arrow18TypedChunkLocationIhEE", !5, i64 0, !5, i64 1}
!19 = !{!18, !5, i64 1}
!20 = !{!21, !12, i64 0}
!21 = !{!"_ZTSN5arrow18TypedChunkLocationItEE", !12, i64 0, !12, i64 2}
!22 = !{!21, !12, i64 2}
!23 = !{!24, !4, i64 0}
!24 = !{!"_ZTSN5arrow18TypedChunkLocationIjEE", !4, i64 0, !4, i64 4}
!25 = !{!24, !4, i64 4}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSN5arrow18TypedChunkLocationIlEE", !28, i64 0, !28, i64 8}
!28 = !{!"long", !5, i64 0}
!29 = !{!27, !28, i64 8}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSN5arrow18TypedChunkLocationImEE", !28, i64 0, !28, i64 8}
!32 = !{!31, !28, i64 8}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSN5arrow9ArraySpanE", !35, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !5, i64 32, !37, i64 104}
!35 = !{!"p1 _ZTSN5arrow8DataTypeE", !36, i64 0}
!36 = !{!"any pointer", !5, i64 0}
!37 = !{!"_ZTSSt6vectorIN5arrow9ArraySpanESaIS1_EE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN5arrow9ArraySpanESaIS1_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 _ZTSN5arrow9ArraySpanE", !36, i64 0}
!42 = !{!43, !53, i64 40}
!43 = !{!"_ZTSN5arrow8DataTypeE", !44, i64 0, !48, i64 24, !53, i64 40, !54, i64 48}
!44 = !{!"_ZTSN5arrow6detail15FingerprintableE", !45, i64 8, !45, i64 16}
!45 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !46, i64 0}
!46 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !47, i64 0}
!47 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0}
!48 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !49, i64 0}
!49 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !50, i64 0}
!50 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !51, i64 8}
!51 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0}
!52 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0}
!53 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!54 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !36, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !61, !"_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE: argument 0"}
!61 = distinct !{!61, !"_ZN5arrow7compute8internal12_GLOBAL__N_124GetTakeIndicesFromBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE"}
!62 = !{!34, !28, i64 8}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE: argument 0"}
!65 = distinct !{!65, !"_ZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE"}
!66 = !{!67, !68, i64 0}
!67 = !{!"_ZTSN5arrow10BufferSpanE", !68, i64 0, !28, i64 8, !69, i64 16}
!68 = !{!"p1 omnipotent char", !36, i64 0}
!69 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6BufferEE", !36, i64 0}
!70 = !{!64, !60}
!71 = !{!34, !28, i64 16}
!72 = !{!73, !74, i64 8}
!73 = !{!"_ZTSN5arrow12ArrayBuilderE", !74, i64 8, !28, i64 16, !75, i64 24, !28, i64 96, !28, i64 104, !28, i64 112, !81, i64 120}
!74 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !36, i64 0}
!75 = !{!"_ZTSN5arrow18TypedBufferBuilderIbvEE", !76, i64 0, !28, i64 56, !28, i64 64}
!76 = !{!"_ZTSN5arrow13BufferBuilderE", !77, i64 0, !74, i64 16, !68, i64 24, !28, i64 32, !28, i64 40, !28, i64 48}
!77 = !{!"_ZTSSt10shared_ptrIN5arrow15ResizableBufferEE", !78, i64 0}
!78 = !{!"_ZTSSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !80, i64 8}
!79 = !{!"p1 _ZTSN5arrow15ResizableBufferE", !36, i64 0}
!80 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !52, i64 0}
!81 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE", !82, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE12_Vector_implE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!85 = !{!"p1 _ZTSSt10shared_ptrIN5arrow12ArrayBuilderEE", !36, i64 0}
!86 = !{!73, !28, i64 16}
!87 = !{!76, !74, i64 16}
!88 = !{!76, !68, i64 24}
!89 = !{!76, !28, i64 48}
!90 = !{!91, !91, i64 0}
!91 = !{!"vtable pointer", !6, i64 0}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv: argument 0"}
!94 = distinct !{!94, !"_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv"}
!95 = !{!80, !52, i64 0}
!96 = !{!93, !64, !60}
!97 = !{!36, !36, i64 0}
!98 = !{!5, !5, i64 0}
!99 = !{!34, !28, i64 24}
!100 = !{!101, !68, i64 0}
!101 = !{!"_ZTSN5arrow8internal15BitBlockCounterE", !68, i64 0, !28, i64 8, !28, i64 16}
!102 = !{!101, !28, i64 8}
!103 = !{!101, !28, i64 16}
!104 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.mustprogress"}
!107 = distinct !{!107, !106}
!108 = !{!73, !28, i64 112}
!109 = !{!110, !64, !60}
!110 = distinct !{!110, !111, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!111 = distinct !{!111, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!112 = distinct !{null}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTSN5arrow6StatusE", !115, i64 0}
!115 = !{!"p1 _ZTSN5arrow6Status5StateE", !36, i64 0}
!116 = !{!"branch_weights", !"expected", i32 2145337237, i32 2146411}
!117 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!118 = !{!119, !121, i64 1}
!119 = !{!"_ZTSN5arrow6Status5StateE", !120, i64 0, !121, i64 1, !122, i64 8, !124, i64 40}
!120 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!121 = !{!"bool", !5, i64 0}
!122 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !123, i64 0, !28, i64 8, !5, i64 16}
!123 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !68, i64 0}
!124 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !125, i64 0}
!125 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !126, i64 0, !80, i64 8}
!126 = !{!"p1 _ZTSN5arrow12StatusDetailE", !36, i64 0}
!127 = !{i8 0, i8 2}
!128 = !{}
!129 = !{!75, !28, i64 56}
!130 = !{!28, !28, i64 0}
!131 = !{!76, !28, i64 40}
!132 = distinct !{!132, !106}
!133 = distinct !{!133, !106}
!134 = !{!135, !4, i64 8}
!135 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!136 = !{!135, !4, i64 12}
!137 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!138 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev, ptr @_ZN5arrow18TypedBufferBuilderItvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!139 = !{ptr @_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev}
!140 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_10UInt16TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!141 = distinct !{!141, !106}
!142 = distinct !{!142, !106}
!143 = !{!144, !146, !64, !60}
!144 = distinct !{!144, !145, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!145 = distinct !{!145, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!146 = distinct !{!146, !147, !"_ZN5arrow18TypedBufferBuilderItvE7ReserveEl: argument 0"}
!147 = distinct !{!147, !"_ZN5arrow18TypedBufferBuilderItvE7ReserveEl"}
!148 = !{!76, !28, i64 32}
!149 = distinct !{!149, !106}
!150 = distinct !{!150, !106}
!151 = !{!152, !154, !64, !60}
!152 = distinct !{!152, !153, !"_ZZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEENKUlllE_clEll: argument 0"}
!153 = distinct !{!153, !"_ZZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEENKUlllE_clEll"}
!154 = distinct !{!154, !155, !"_ZN5arrow8internal15VisitSetBitRunsIZNS_7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS2_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEEUlllE_EENS_6StatusEPKhllOT_: argument 0"}
!155 = distinct !{!155, !"_ZN5arrow8internal15VisitSetBitRunsIZNS_7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS2_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEEUlllE_EENS_6StatusEPKhllOT_"}
!156 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!157 = distinct !{!157, !106}
!158 = !{!154, !64, !60}
!159 = !{!160, !154, !64, !60}
!160 = distinct !{!160, !161, !"_ZZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEENKUlllE_clEll: argument 0"}
!161 = distinct !{!161, !"_ZZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEENKUlllE_clEll"}
!162 = !{!163, !165, !160, !154, !64, !60}
!163 = distinct !{!163, !164, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!164 = distinct !{!164, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!165 = distinct !{!165, !166, !"_ZN5arrow18TypedBufferBuilderItvE7ReserveEl: argument 0"}
!166 = distinct !{!166, !"_ZN5arrow18TypedBufferBuilderItvE7ReserveEl"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv: argument 0"}
!169 = distinct !{!169, !"_ZN5arrow10TypeTraitsINS_10UInt16TypeEE14type_singletonEv"}
!170 = !{!168, !64, !60}
!171 = !{!172, !69, i64 0}
!172 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!173 = !{!172, !69, i64 16}
!174 = !{!172, !69, i64 8}
!175 = !{!176, !64, !60}
!176 = distinct !{!176, !177, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_: argument 0"}
!177 = distinct !{!177, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_"}
!178 = !{!179, !28, i64 16}
!179 = !{!"_ZTSN5arrow9ArrayDataE", !180, i64 0, !28, i64 16, !182, i64 24, !28, i64 32, !184, i64 40, !187, i64 64, !192, i64 88, !195, i64 104}
!180 = !{!"_ZTSSt10shared_ptrIN5arrow8DataTypeEE", !181, i64 0}
!181 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !35, i64 0, !80, i64 8}
!182 = !{!"_ZTSSt6atomicIlE", !183, i64 0}
!183 = !{!"_ZTSSt13__atomic_baseIlE", !28, i64 0}
!184 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !185, i64 0}
!185 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE", !186, i64 0}
!186 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_Vector_implE", !172, i64 0}
!187 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !188, i64 0}
!188 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE", !189, i64 0}
!189 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE12_Vector_implE", !190, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_Vector_impl_dataE", !191, i64 0, !191, i64 8, !191, i64 16}
!191 = !{!"p1 _ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !36, i64 0}
!192 = !{!"_ZTSSt10shared_ptrIN5arrow9ArrayDataEE", !193, i64 0}
!193 = !{!"_ZTSSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EE", !194, i64 0, !80, i64 8}
!194 = !{!"p1 _ZTSN5arrow9ArrayDataE", !36, i64 0}
!195 = !{!"_ZTSSt10shared_ptrIN5arrow15ArrayStatisticsEE", !196, i64 0}
!196 = !{!"_ZTSSt12__shared_ptrIN5arrow15ArrayStatisticsELN9__gnu_cxx12_Lock_policyE2EE", !197, i64 0, !80, i64 8}
!197 = !{!"p1 _ZTSN5arrow15ArrayStatisticsE", !36, i64 0}
!198 = !{!193, !194, i64 0}
!199 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!200 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!201 = distinct !{null, null, ptr @_ZN5arrow18TypedBufferBuilderItvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE: argument 0"}
!204 = distinct !{!204, !"_ZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE"}
!205 = !{!203, !60}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv: argument 0"}
!208 = distinct !{!208, !"_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv"}
!209 = !{!207, !203, !60}
!210 = distinct !{!210, !106}
!211 = !{!212, !203, !60}
!212 = distinct !{!212, !213, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!213 = distinct !{!213, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!214 = distinct !{!214, !106}
!215 = distinct !{!215, !106}
!216 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!217 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev, ptr @_ZN5arrow18TypedBufferBuilderIjvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!218 = !{ptr @_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev}
!219 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_10UInt32TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!220 = distinct !{!220, !106}
!221 = !{!222, !224, !203, !60}
!222 = distinct !{!222, !223, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!223 = distinct !{!223, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!224 = distinct !{!224, !225, !"_ZN5arrow18TypedBufferBuilderIjvE7ReserveEl: argument 0"}
!225 = distinct !{!225, !"_ZN5arrow18TypedBufferBuilderIjvE7ReserveEl"}
!226 = distinct !{!226, !106}
!227 = distinct !{!227, !106}
!228 = !{!229, !231, !203, !60}
!229 = distinct !{!229, !230, !"_ZZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEENKUlllE_clEll: argument 0"}
!230 = distinct !{!230, !"_ZZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEENKUlllE_clEll"}
!231 = distinct !{!231, !232, !"_ZN5arrow8internal15VisitSetBitRunsIZNS_7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS2_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEEUlllE_EENS_6StatusEPKhllOT_: argument 0"}
!232 = distinct !{!232, !"_ZN5arrow8internal15VisitSetBitRunsIZNS_7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS2_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEEUlllE_EENS_6StatusEPKhllOT_"}
!233 = distinct !{!233, !106}
!234 = !{!231, !203, !60}
!235 = !{!236, !231, !203, !60}
!236 = distinct !{!236, !237, !"_ZZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEENKUlllE_clEll: argument 0"}
!237 = distinct !{!237, !"_ZZN5arrow7compute8internal12_GLOBAL__N_128GetTakeIndicesFromBitmapImplINS_10UInt32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolEENKUlllE_clEll"}
!238 = !{!239, !241, !236, !231, !203, !60}
!239 = distinct !{!239, !240, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!240 = distinct !{!240, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!241 = distinct !{!241, !242, !"_ZN5arrow18TypedBufferBuilderIjvE7ReserveEl: argument 0"}
!242 = distinct !{!242, !"_ZN5arrow18TypedBufferBuilderIjvE7ReserveEl"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv: argument 0"}
!245 = distinct !{!245, !"_ZN5arrow10TypeTraitsINS_10UInt32TypeEE14type_singletonEv"}
!246 = !{!244, !203, !60}
!247 = !{!248, !203, !60}
!248 = distinct !{!248, !249, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_: argument 0"}
!249 = distinct !{!249, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_"}
!250 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!251 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!252 = distinct !{null, null, ptr @_ZN5arrow18TypedBufferBuilderIjvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN5arrow7compute8internal12_GLOBAL__N_127GetTakeIndicesFromREEBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE: argument 0"}
!255 = distinct !{!255, !"_ZN5arrow7compute8internal12_GLOBAL__N_127GetTakeIndicesFromREEBitmapERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE"}
!256 = !{!57, !58, i64 0}
!257 = !{!258, !259, i64 0}
!258 = !{!"_ZTSSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EE", !259, i64 0, !80, i64 8}
!259 = !{!"p1 _ZTSN5arrow5FieldE", !36, i64 0}
!260 = !{!181, !35, i64 0}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN5arrow7compute8internal12_GLOBAL__N_131GetTakeIndicesFromREEBitmapImplINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE: argument 0"}
!263 = distinct !{!263, !"_ZN5arrow7compute8internal12_GLOBAL__N_131GetTakeIndicesFromREEBitmapImplINS_9Int16TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE"}
!264 = !{!40, !41, i64 0}
!265 = !{!262, !254}
!266 = !{!267, !262, !254}
!267 = distinct !{!267, !268, !"_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE5beginEv: argument 0"}
!268 = distinct !{!268, !"_ZNK5arrow8ree_util22RunEndEncodedArraySpanIsE5beginEv"}
!269 = !{!12, !12, i64 0}
!270 = distinct !{!270, !106}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv: argument 0"}
!273 = distinct !{!273, !"_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv"}
!274 = !{!272, !262, !254}
!275 = !{!276, !262, !254}
!276 = distinct !{!276, !277, !"_ZN5arrow14NumericBuilderINS_9Int16TypeEE11AppendNullsEl: argument 0"}
!277 = distinct !{!277, !"_ZN5arrow14NumericBuilderINS_9Int16TypeEE11AppendNullsEl"}
!278 = !{!279, !276, !262, !254}
!279 = distinct !{!279, !280, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!280 = distinct !{!280, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!281 = !{ptr @_ZN5arrow14NumericBuilderINS_9Int16TypeEE11AppendNullsEl}
!282 = !{!283, !262, !254}
!283 = distinct !{!283, !284, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!284 = distinct !{!284, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!285 = distinct !{!285, !106}
!286 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!287 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev, ptr @_ZN5arrow18TypedBufferBuilderIsvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!288 = !{ptr @_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev}
!289 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_9Int16TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!290 = !{!291, !293, !262, !254}
!291 = distinct !{!291, !292, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!292 = distinct !{!292, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!293 = distinct !{!293, !294, !"_ZN5arrow18TypedBufferBuilderIsvE7ReserveEl: argument 0"}
!294 = distinct !{!294, !"_ZN5arrow18TypedBufferBuilderIsvE7ReserveEl"}
!295 = distinct !{!295, !106}
!296 = !{!297, !299, !262, !254}
!297 = distinct !{!297, !298, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!298 = distinct !{!298, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!299 = distinct !{!299, !300, !"_ZN5arrow18TypedBufferBuilderIsvE7ReserveEl: argument 0"}
!300 = distinct !{!300, !"_ZN5arrow18TypedBufferBuilderIsvE7ReserveEl"}
!301 = distinct !{!301, !106}
!302 = !{!303}
!303 = distinct !{!303, !304, !"_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv: argument 0"}
!304 = distinct !{!304, !"_ZN5arrow10TypeTraitsINS_9Int16TypeEE14type_singletonEv"}
!305 = !{!303, !262, !254}
!306 = !{!307, !308, i64 0}
!307 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !308, i64 0, !80, i64 8}
!308 = !{!"p1 _ZTSN5arrow6BufferE", !36, i64 0}
!309 = !{!310, !262, !254}
!310 = distinct !{!310, !311, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_: argument 0"}
!311 = distinct !{!311, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_"}
!312 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!313 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!314 = distinct !{null, null, ptr @_ZN5arrow18TypedBufferBuilderIsvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!315 = !{!316}
!316 = distinct !{!316, !317, !"_ZN5arrow7compute8internal12_GLOBAL__N_131GetTakeIndicesFromREEBitmapImplINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE: argument 0"}
!317 = distinct !{!317, !"_ZN5arrow7compute8internal12_GLOBAL__N_131GetTakeIndicesFromREEBitmapImplINS_9Int32TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE"}
!318 = !{!316, !254}
!319 = !{!320, !316, !254}
!320 = distinct !{!320, !321, !"_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE5beginEv: argument 0"}
!321 = distinct !{!321, !"_ZNK5arrow8ree_util22RunEndEncodedArraySpanIiE5beginEv"}
!322 = distinct !{!322, !106}
!323 = !{!324}
!324 = distinct !{!324, !325, !"_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv: argument 0"}
!325 = distinct !{!325, !"_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv"}
!326 = !{!324, !316, !254}
!327 = !{!328, !316, !254}
!328 = distinct !{!328, !329, !"_ZN5arrow14NumericBuilderINS_9Int32TypeEE11AppendNullsEl: argument 0"}
!329 = distinct !{!329, !"_ZN5arrow14NumericBuilderINS_9Int32TypeEE11AppendNullsEl"}
!330 = !{!331, !328, !316, !254}
!331 = distinct !{!331, !332, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!332 = distinct !{!332, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!333 = !{ptr @_ZN5arrow14NumericBuilderINS_9Int32TypeEE11AppendNullsEl}
!334 = !{!335, !316, !254}
!335 = distinct !{!335, !336, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!336 = distinct !{!336, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!337 = distinct !{!337, !106}
!338 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!339 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev, ptr @_ZN5arrow18TypedBufferBuilderIivED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!340 = !{ptr @_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev}
!341 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_9Int32TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!342 = !{!343, !345, !316, !254}
!343 = distinct !{!343, !344, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!344 = distinct !{!344, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!345 = distinct !{!345, !346, !"_ZN5arrow18TypedBufferBuilderIivE7ReserveEl: argument 0"}
!346 = distinct !{!346, !"_ZN5arrow18TypedBufferBuilderIivE7ReserveEl"}
!347 = distinct !{!347, !106}
!348 = !{!349, !351, !316, !254}
!349 = distinct !{!349, !350, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!350 = distinct !{!350, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!351 = distinct !{!351, !352, !"_ZN5arrow18TypedBufferBuilderIivE7ReserveEl: argument 0"}
!352 = distinct !{!352, !"_ZN5arrow18TypedBufferBuilderIivE7ReserveEl"}
!353 = distinct !{!353, !106}
!354 = !{!355}
!355 = distinct !{!355, !356, !"_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv: argument 0"}
!356 = distinct !{!356, !"_ZN5arrow10TypeTraitsINS_9Int32TypeEE14type_singletonEv"}
!357 = !{!355, !316, !254}
!358 = !{!359, !316, !254}
!359 = distinct !{!359, !360, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_: argument 0"}
!360 = distinct !{!360, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_"}
!361 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!362 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!363 = distinct !{null, null, ptr @_ZN5arrow18TypedBufferBuilderIivED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN5arrow7compute8internal12_GLOBAL__N_131GetTakeIndicesFromREEBitmapImplINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE: argument 0"}
!366 = distinct !{!366, !"_ZN5arrow7compute8internal12_GLOBAL__N_131GetTakeIndicesFromREEBitmapImplINS_9Int64TypeEEENS_6ResultISt10shared_ptrINS_9ArrayDataEEEERKNS_9ArraySpanENS0_13FilterOptions21NullSelectionBehaviorEPNS_10MemoryPoolE"}
!367 = !{!365, !254}
!368 = !{!369, !365, !254}
!369 = distinct !{!369, !370, !"_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE5beginEv: argument 0"}
!370 = distinct !{!370, !"_ZNK5arrow8ree_util22RunEndEncodedArraySpanIlE5beginEv"}
!371 = distinct !{!371, !106}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv: argument 0"}
!374 = distinct !{!374, !"_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv"}
!375 = !{!373, !365, !254}
!376 = !{!377, !365, !254}
!377 = distinct !{!377, !378, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE11AppendNullsEl: argument 0"}
!378 = distinct !{!378, !"_ZN5arrow14NumericBuilderINS_9Int64TypeEE11AppendNullsEl"}
!379 = !{!380, !377, !365, !254}
!380 = distinct !{!380, !381, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!381 = distinct !{!381, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!382 = !{ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEE11AppendNullsEl}
!383 = !{!384, !365, !254}
!384 = distinct !{!384, !385, !"_ZN5arrow12ArrayBuilder7ReserveEl: argument 0"}
!385 = distinct !{!385, !"_ZN5arrow12ArrayBuilder7ReserveEl"}
!386 = distinct !{!386, !106}
!387 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!388 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, ptr @_ZN5arrow18TypedBufferBuilderIlvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!389 = !{ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev}
!390 = distinct !{null, null, ptr @_ZN5arrow14NumericBuilderINS_9Int64TypeEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!391 = !{!392, !394, !365, !254}
!392 = distinct !{!392, !393, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!393 = distinct !{!393, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!394 = distinct !{!394, !395, !"_ZN5arrow18TypedBufferBuilderIlvE7ReserveEl: argument 0"}
!395 = distinct !{!395, !"_ZN5arrow18TypedBufferBuilderIlvE7ReserveEl"}
!396 = distinct !{!396, !106}
!397 = !{!398, !400, !365, !254}
!398 = distinct !{!398, !399, !"_ZN5arrow13BufferBuilder7ReserveEl: argument 0"}
!399 = distinct !{!399, !"_ZN5arrow13BufferBuilder7ReserveEl"}
!400 = distinct !{!400, !401, !"_ZN5arrow18TypedBufferBuilderIlvE7ReserveEl: argument 0"}
!401 = distinct !{!401, !"_ZN5arrow18TypedBufferBuilderIlvE7ReserveEl"}
!402 = distinct !{!402, !106}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv: argument 0"}
!405 = distinct !{!405, !"_ZN5arrow10TypeTraitsINS_9Int64TypeEE14type_singletonEv"}
!406 = !{!404, !365, !254}
!407 = !{!408, !365, !254}
!408 = distinct !{!408, !409, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_: argument 0"}
!409 = distinct !{!409, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlSt6vectorIS2_INS0_6BufferEESaIS9_EEiEES2_IT_EDpOT0_"}
!410 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!411 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!412 = distinct !{null, null, ptr @_ZN5arrow18TypedBufferBuilderIlvED2Ev, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!413 = !{!414, !415, i64 0}
!414 = !{!"_ZTSNSt12_Vector_baseIN5arrow7compute9ExecValueESaIS2_EE17_Vector_impl_dataE", !415, i64 0, !415, i64 8, !415, i64 16}
!415 = !{!"p1 _ZTSN5arrow7compute9ExecValueE", !36, i64 0}
!416 = !{!417, !419, i64 8}
!417 = !{!"_ZTSN5arrow7compute13KernelContextE", !418, i64 0, !419, i64 8, !420, i64 16}
!418 = !{!"p1 _ZTSN5arrow7compute11ExecContextE", !36, i64 0}
!419 = !{!"p1 _ZTSN5arrow7compute11KernelStateE", !36, i64 0}
!420 = !{!"p1 _ZTSN5arrow7compute6KernelE", !36, i64 0}
!421 = !{!422, !121, i64 16}
!422 = !{!"_ZTSN5arrow7compute11TakeOptionsE", !423, i64 0, !121, i64 16}
!423 = !{!"_ZTSN5arrow7compute15FunctionOptionsE", !424, i64 8}
!424 = !{!"p1 _ZTSN5arrow7compute19FunctionOptionsTypeE", !36, i64 0}
!425 = !{!426, !5, i64 128}
end_hunk_8
