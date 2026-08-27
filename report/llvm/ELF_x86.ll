Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELF_x86?download=true
inline.NumInlined: 4330
inline.NumDeleted: 2075
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm7jitlink18visitExistingEdgesIJRNS0_3x8615GOTTableManagerERNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEDpOT_:bb.a
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !60, !noalias !713
  %i.if = and i32 %i.hz, 31
  %i.ig = lshr i32 %i.ie, %i.if
  %i.ih = trunc i32 %i.ig to i1
  br i1 %i.ih, label %.lr.ph.i73, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i, !prof !233

.lr.ph.i73:                                       ; preds = %bb.p, %bb.q
  %i.ii = phi ptr [ %i.io, %bb.q ], [ %i.ib, %bb.p ] ; 2 uses
  %.024.i = phi i32 [ %i.im, %bb.q ], [ %i.hz, %bb.p ]
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !146, !noalias !713
  %i.ik = icmp eq ptr %i.gb, %i.ij
  br i1 %i.ik, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i, label %bb.q, !prof !235

bb.q:                                             ; preds = %.lr.ph.i73
  %i.il = add nuw i32 %.024.i, 1
  %i.im = and i32 %i.il, %i.hu                    ; 3 uses
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.in ; 2 uses
  %i.ip = lshr i64 %i.in, 5
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !60, !noalias !713
  %i.is = and i32 %i.im, 31
  %i.it = lshr i32 %i.ir, %i.is
  %i.iu = trunc i32 %i.it to i1
  br i1 %i.iu, label %.lr.ph.i73, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i, !prof !234, !llvm.loop !714

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i: ; preds = %bb.q, %.lr.ph.i73, %bb.p, %.loopexit.i
  %i.iv = phi ptr [ %i.gg, %.loopexit.i ], [ %i.hq, %bb.p ], [ %i.hq, %.lr.ph.i73 ], [ %i.hq, %bb.q ]
  %i.iw = phi ptr [ %i.gh, %.loopexit.i ], [ %i.hr, %bb.p ], [ %i.hr, %.lr.ph.i73 ], [ %i.hr, %bb.q ]
  %i.ix = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.ib, %bb.p ], [ %i.io, %bb.q ], [ %i.ii, %.lr.ph.i73 ] ; 4 uses
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 4                 ; 2 uses
  %i.jc = trunc i64 %i.jb to i32
  %i.jd = and i32 %i.jc, 31
  %i.je = shl nuw i32 1, %i.jd
  %i.jf = lshr i64 %i.jb, 5
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.jf ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !60, !noalias !713
  %i.ji = or i32 %i.je, %i.jh
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !60, !noalias !713
  %i.jj = load i32, ptr %i.k, align 8, !tbaa !715, !noalias !713
  %i.jk = add i32 %i.jj, 1
  store i32 %i.jk, ptr %i.k, align 8, !tbaa !715, !noalias !713
  store ptr %i.gb, ptr %i.ix, align 8, !tbaa !721, !noalias !713
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.ga, ptr %i.jl, align 8, !tbaa !236, !noalias !713
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i
  %.sroa.087.0 = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i ], [ %i.gb, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.i31 = phi ptr [ %i.ix, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i ], [ %i.gy, %.lr.ph.i.i ] ; 2 uses
  %i.jm = ptrtoint ptr %.sroa.087.0 to i64
  %notsub.i.i.i.i.i21 = add i64 %i.jm, -1
  %i.jn = icmp ult i64 %notsub.i.i.i.i.i21, -32
  br i1 %i.jn, label %bb.r, label %_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.087.0, i64 8
  %i.jp = atomicrmw sub ptr %i.jo, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split

bb.s:                                             ; preds = %.lr.ph, %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit.i.i
  %i.jq = phi i8 [ %i.ad, %.lr.ph ], [ %.pr, %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit.i.i ]
  %i.jr = icmp eq i8 %i.jq, 9
  br i1 %i.jr, label %bb.t, label %_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit

bb.t:                                             ; preds = %bb.s
  %i.js = load ptr, ptr %.sroa.074.0114, align 8, !tbaa !682 ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !722
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i64, ptr %i.jv, align 8
  %i.jx = trunc i64 %i.jw to i1
  br i1 %i.jx, label %_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit, label %_ZN4llvm7jitlink3x8615PLTTableManager9visitEdgeERNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeE.exit.i.i

_ZN4llvm7jitlink3x8615PLTTableManager9visitEdgeERNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeE.exit.i.i: ; preds = %bb.t
  store i8 11, ptr %i.ac, align 8, !tbaa !644
  %i.jy = load ptr, ptr %2, align 8, !tbaa !144, !noalias !726 ; 3 uses
  %i.jz = load ptr, ptr %i.n, align 8, !tbaa !145, !noalias !726 ; 2 uses
  %i.ka = load i32, ptr %i.o, align 4, !tbaa !143, !noalias !726 ; 4 uses
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %.loopexit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm7jitlink3x8615PLTTableManager9visitEdgeERNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeE.exit.i.i
  %i.kc = add i32 %i.ka, -1                       ; 2 uses
  %i.kd = load ptr, ptr %i.js, align 8, !tbaa !146, !noalias !735 ; 2 uses
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = mul i64 %i.ke, -4658895280553007687     ; 2 uses
  %i.kg = lshr i64 %i.kf, 31
  %i.kh = xor i64 %i.kg, %i.kf
  %i.ki = trunc i64 %i.kh to i32
  %i.kj = and i32 %i.kc, %i.ki                    ; 3 uses
  %i.kk = zext i32 %i.kj to i64                   ; 2 uses
  %i.kl = lshr i64 %i.kk, 5
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !60, !noalias !735
  %i.ko = and i32 %i.kj, 31
  %i.kp = lshr i32 %i.kn, %i.ko
  %i.kq = trunc i32 %i.kp to i1
  br i1 %i.kq, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !233

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %bb.v
  %i.kr = phi i64 [ %i.kx, %bb.v ], [ %i.kk, %bb.u ]
  %.017.i.i.i.i.i = phi i32 [ %i.kw, %bb.v ], [ %i.kj, %bb.u ]
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.kr ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !146, !noalias !735
  %i.ku = icmp eq ptr %i.kd, %i.kt
  br i1 %i.ku, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i, label %bb.v, !prof !235

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.kv = add nuw i32 %.017.i.i.i.i.i, 1
  %i.kw = and i32 %i.kv, %i.kc                    ; 3 uses
  %i.kx = zext i32 %i.kw to i64                   ; 2 uses
  %i.ky = lshr i64 %i.kx, 5
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !60, !noalias !735
  %i.lb = and i32 %i.kw, 31
  %i.lc = lshr i32 %i.la, %i.lb
  %i.ld = trunc i32 %i.lc to i1
  br i1 %i.ld, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !234

.loopexit.i.i.i:                                  ; preds = %bb.v, %bb.u, %_ZN4llvm7jitlink3x8615PLTTableManager9visitEdgeERNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeE.exit.i.i
  %i.le = zext i32 %i.ka to i64                   ; 2 uses
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.le
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.ka to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i ], [ %i.le, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ks, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i ], [ %i.lf, %.loopexit.i.i.i ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %.pre-phi.i
  %i.lh = icmp eq ptr %.lcssa.sink.i.i.i, %i.lg
  br i1 %i.lh, label %bb.w, label %_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split

bb.w:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i
  %i.li = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm7jitlink3x8615PLTTableManager11createEntryERNS0_9LinkGraphERNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.js)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.lj = load ptr, ptr %i.js, align 8, !tbaa !146, !noalias !736 ; 3 uses
  store ptr %i.lj, ptr %4, align 8, !tbaa !146, !alias.scope !736
  %i.lk = ptrtoint ptr %i.lj to i64
  %notsub.i.i.i.i.i.i = add i64 %i.lk, -1
  %i.ll = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.ll, label %bb.x, label %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ln = atomicrmw add ptr %i.lm, i64 1 seq_cst, align 8, !noalias !736 ; 0 uses
  br label %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i

_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i: ; preds = %bb.x, %bb.w
  store ptr %i.li, ptr %i.p, align 8, !tbaa !739, !alias.scope !736
  %i.lo = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !741
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.lo, 0
  %i.lp = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.lq = ptrtoint ptr %i.lp to i64
  %notsub.i.i.i.i.i = add i64 %i.lq, -1
  %i.lr = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.lr, label %bb.y, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i

bb.y:                                             ; preds = %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lt = atomicrmw sub ptr %i.ls, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i: ; preds = %bb.y, %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split

_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split: ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit, %bb.r, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i14
  %.sroa.010.0.i17.sink = phi ptr [ %.sroa.0.0.i31, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit ], [ %.lcssa.sink.i.i.i16, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i14 ], [ %.sroa.0.0.i31, %bb.r ], [ %.fca.0.extract.i.i.i, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i ], [ %.lcssa.sink.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i17.sink, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !739
  store ptr %i.lv, ptr %.sroa.074.0114, align 8, !tbaa !682
  br label %_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit

_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit: ; preds = %_ZN4llvm7jitlink9visitEdgeIRNS0_3x8615GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split, %bb.d, %bb.s, %bb.t
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.074.0114, i64 32 ; 2 uses
  %.not102 = icmp eq ptr %i.lw, %i.aa
  br i1 %.not102, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph6blocksEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !660, !noalias !746 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !670, !noalias !746 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !671, !noalias !746 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !649, !noalias !746
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 3 uses
  %.idx230 = mul nuw nsw i64 %i.j, 24             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx230 ; 13 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 5                         ; 4 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !60, !noalias !751 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !754

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !60, !noalias !751 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !754

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph306
  %i.w = mul i64 %i.s, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow293 = mul nuw nsw i32 %i.x, 24
  %.idx292 = zext nneg i32 %narrow293 to i64
  %i.y = add i64 %.012.lcssa.i.i.i.i, %.idx292    ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 3 uses
  %.not.i.i = icmp eq i64 %i.y, %.idx230
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !681, !noalias !755 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !758, !noalias !759 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !768, !noalias !759 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !769, !noalias !759 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !770, !noalias !759
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.al ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !60, !noalias !771 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.thread

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader, label %.lr.ph307

._crit_edge.i.i.i.i.i.i.i.i.thread:               ; preds = %bb.d
  %3 = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ao, i1 true)
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr [8 x i8], ptr %i.ad, i64 %4
  br label %.lr.ph.preheader.a

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader, label %.lr.ph307, !llvm.loop !774

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !60, !noalias !771 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %.lr.ph.i.a, !llvm.loop !774

.lr.ph.i.a:                                       ; preds = %.lr.ph307
  %6 = shl i64 %i.at, 8
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.av, i1 true)
  %.idx294 = zext nneg i32 %i.ax to i64
  %i.ay = getelementptr i8, ptr %i.ad, i64 %6
  %7 = getelementptr [8 x i8], ptr %i.ay, i64 %.idx294
  br label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %.lr.ph.i.a, %._crit_edge.i.i.i.i.i.i.i.i.thread
  %.sroa.991.0228 = phi ptr [ %7, %.lr.ph.i.a ], [ %5, %._crit_edge.i.i.i.i.i.i.i.i.thread ] ; 2 uses
  %8 = icmp eq ptr %.sroa.991.0228, %2
  br i1 %8, label %.lr.ph.preheader, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.c, %.lr.ph.preheader.a
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %i.az = phi i64 [ %i.bt, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.y, %.lr.ph.preheader ]
  %i.ba = add i64 %i.az, 24
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bb, %i.j
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

bb.e:                                             ; preds = %.lr.ph
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !60
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i30.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

.lr.ph.i.i.i.i30.preheader:                       ; preds = %bb.e
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.m
  br i1 %i.bl, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph308
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.m
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !754

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !60 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !754

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph308, %bb.e
  %.012.lcssa.i.i.i.i28 = phi i64 [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph308 ]
  %.0.lcssa.i.i.i.i29 = phi i32 [ %i.bi, %bb.e ], [ %i.bq, %.lr.ph308 ]
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28, 768
  %narrow = mul nuw nsw i32 %i.bs, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.bt = add i64 %.idx.i.i.i.i, %.idx            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bt   ; 3 uses
  %.not.i.i18 = icmp eq i64 %i.bt, %.idx230
  br i1 %.not.i.i18, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !681, !noalias !775 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !758, !noalias !778 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !768, !noalias !778 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !769, !noalias !778 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !770, !noalias !778
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !60, !noalias !787 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !774

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !60, !noalias !787 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !774

._crit_edge.i.loopexit.i.i.i.i.i.i.i26:           ; preds = %.lr.ph309
  %i.ct = shl i64 %i.cp, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i.i.i21:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, %bb.g
  %.012.lcssa.i.i.i.i.i.i.i.i22 = phi i64 [ 0, %bb.g ], [ %i.ct, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %.0.lcssa.i.i.i.i.i.i.i.i23 = phi i32 [ %i.ck, %bb.g ], [ %i.cr, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.by, i64 %.012.lcssa.i.i.i.i.i.i.i.i22
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %._crit_edge.i.i.i.i.i.i.i.i21, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.i.i.i21 ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.0.0.i, %i.ch
  br i1 %i.cy, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph, %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i.preheader, %.lr.ph.preheader.a, %bb.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.sroa.989.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %.sroa.991.0228, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1490.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %2, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1691.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %i.ad, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1892.2 = phi ptr [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ null, %.lr.ph.i.i.i.i30 ], [ null, %bb.a ], [ %i.af, %.lr.ph.preheader.a ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.074.1 = phi ptr [ %i.z, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.k, %.lr.ph.i.i.i.i30 ], [ %i.k, %bb.a ], [ %i.z, %.lr.ph.preheader.a ], [ %i.k, %.lr.ph.i.i.i.i30.preheader ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.bu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %i.k, %.lr.ph ], [ %i.k, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.074.1, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 256, ptr %.sroa.8183.0..sroa_idx, align 8
  %.sroa.10185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.10185.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.12187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %.sroa.12187.0..sroa_idx, align 8
  %.sroa.13188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.d, ptr %.sroa.13188.0..sroa_idx, align 8
  %.sroa.15190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %.sroa.15190.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.989.2, ptr %.sroa.17.0..sroa_idx.a, align 8
  %.sroa.18192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1490.2, ptr %.sroa.18192.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1691.2, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1892.2, ptr %.sroa.20.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.cz, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 256, ptr %.sroa.8198.0..sroa_idx, align 8
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %.sroa.11201.0..sroa_idx, align 8
  %.sroa.12202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.b, ptr %.sroa.12202.0..sroa_idx, align 8
  %.sroa.13203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.d, ptr %.sroa.13203.0..sroa_idx, align 8
  %.sroa.15205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %.sroa.15205.0..sroa_idx, align 1
  %.sroa.17207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17207.0..sroa_idx, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE19_M_range_initializeINS1_9LinkGraph26nested_collection_iteratorINS0_15mapped_iteratorINS0_16DenseMapIteratorINS0_9StringRefESt10unique_ptrINS1_7SectionESt14default_deleteISD_EENS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_SG_EELb0EEENS7_23GetSectionMapEntryValueERSD_EENSJ_12DenseSetImplIS3_NS0_8DenseMapIS3_NSJ_13DenseSetEmptyENSH_IS3_vEENSJ_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEES3_XadL_ZNS7_16getSectionBlocksESO_EEEEEEvT_S11_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef byval(%"class.llvm::jitlink::LinkGraph::nested_collection_iterator") align 8 %1, ptr noundef byval(%"class.llvm::jitlink::LinkGraph::nested_collection_iterator") align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.024.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.425.0..sroa_idx, align 8 ; 2 uses
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.627.0.copyload = load ptr, ptr %.sroa.627.0..sroa_idx, align 8 ; 2 uses
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.829.0.copyload = load ptr, ptr %.sroa.829.0..sroa_idx, align 8 ; 2 uses
  %.sroa.045.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.347.0.copyload = load ptr, ptr %.sroa.347.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp ne ptr %.sroa.024.0.copyload, %.sroa.045.0.copyload
  %i.b = icmp ne ptr %.sroa.829.0.copyload, %.sroa.347.0.copyload
  %.not3.i4.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i4.i, label %.lr.ph.i.preheader, label %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE11_M_allocateEm.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.sroa.1132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.1132.0.copyload = load ptr, ptr %.sroa.1132.0..sroa_idx, align 8
  %.sroa.1031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.1031.0.copyload = load ptr, ptr %.sroa.1031.0..sroa_idx, align 8
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.930.0.copyload = load ptr, ptr %.sroa.930.0..sroa_idx, align 8
  %i.c = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.3.0.copyload to i64  ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = add nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.17.0 = phi ptr [ %.sroa.17.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.930.0.copyload, %.lr.ph.i.preheader ] ; 6 uses
  %.sroa.19.0 = phi ptr [ %.sroa.19.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.1031.0.copyload, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.21.0 = phi ptr [ %.sroa.21.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.1132.0.copyload, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.024.0.copyload, %.lr.ph.i.preheader ] ; 5 uses
  %i.i = phi ptr [ %.sroa.115.1, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.829.0.copyload, %.lr.ph.i.preheader ]
  %.05.i = phi i64 [ %i.cy, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = ptrtoint ptr %.sroa.17.0 to i64
  %i.l = ptrtoint ptr %.sroa.19.0 to i64          ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.o, %i.l
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add nsw i64 %i.n, 31
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = lshr i64 %i.q, 5                         ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.21.0, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !60, !noalias !790
  %i.w = trunc i64 %i.q to i32
  %i.x = and i32 %i.w, 31
  %i.y = shl nsw i32 -1, %i.x
  %i.z = and i32 %i.v, %i.y                       ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.ab = add nuw nsw i64 %i.t, 1                 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.s
  br i1 %i.ac, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i, label %.lr.ph100

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph100
  %i.ad = add i64 %i.af, 1                        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.s
  br i1 %i.ae, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i, label %.lr.ph100, !llvm.loop !774

.lr.ph100:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.af = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.21.0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !60, !noalias !790 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !774

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph100, %bb.b
  %.012.lcssa.i.i.i.i.i = phi i64 [ %i.t, %bb.b ], [ %i.af, %.lr.ph100 ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.z, %bb.b ], [ %i.ah, %.lr.ph100 ]
  %i.aj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %.idx.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i, 8
  %i.al = getelementptr i8, ptr %.sroa.19.0, i64 %.idx.i.i.i.i.i
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.ak
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i, %.lr.ph.i
  %storemerge16.i.i.i.i.i = phi ptr [ %.sroa.17.0, %.lr.ph.i ], [ %i.am, %._crit_edge.i.i.i.i.i ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not21.i = icmp eq ptr %.sroa.0.0, %.sroa.627.0.copyload
  br i1 %.not21.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !681, !noalias !790 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !758, !noalias !793
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !769, !noalias !793
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = icmp eq ptr %storemerge16.i.i.i.i.i, %i.au
  br i1 %i.av, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit

.lr.ph:                                           ; preds = %.lr.ph.i2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %.sroa.0.160 = phi ptr [ %storemerge16.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %.sroa.0.0, %.lr.ph.i2 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.160, i64 24
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.d
  %i.az = sdiv exact i64 %i.ay, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.az, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.ba = lshr i64 %i.az, 5                       ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !60, !noalias !790
  %i.bd = trunc i64 %i.az to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nsw i32 -1, %i.be
  %i.bg = and i32 %i.bc, %i.bf                    ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.bi = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.h
  br i1 %i.bj, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph101

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph101
  %i.bk = add i64 %i.bm, 1                        ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.h
  br i1 %i.bl, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph101, !llvm.loop !754

.lr.ph101:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.bm = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bi, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !60, !noalias !790 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !754

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph101, %bb.c
  %.012.lcssa.i.i.i.i = phi i64 [ %i.ba, %bb.c ], [ %i.bm, %.lr.ph101 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.bg, %bb.c ], [ %i.bo, %.lr.ph101 ]
  %i.bq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.br = zext nneg i32 %i.bq to i64
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i, 768
  %i.bs = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.idx.i.i.i.i
  %i.bt = getelementptr [24 x i8], ptr %i.bs, i64 %i.br
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge.i.i.i.i, %.lr.ph
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.2.0.copyload, %.lr.ph ], [ %i.bt, %._crit_edge.i.i.i.i ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.i ] ; 5 uses
  %.not.i.i = icmp eq ptr %storemerge16.i.i.i.i, %.sroa.627.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !681, !noalias !802 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !758, !noalias !805 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !768, !noalias !805 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !769, !noalias !805 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !770, !noalias !805
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = zext i32 %i.cb to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cf ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.cb, 0
  %or.cond.i.i.i.i.i = select i1 %i.ce, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.e

end_hunk_0
