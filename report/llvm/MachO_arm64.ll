Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachO_arm64?download=true
inline.NumInlined: 4275
inline.NumDeleted: 2048
begin_hunk_0_@_ZN4llvm7jitlink18visitExistingEdgesIJRNS0_7aarch6415GOTTableManagerERNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEDpOT_:bb.a
_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i: ; preds = %bb.q, %.lr.ph.i, %bb.p, %.loopexit.i
  %i.ii = phi ptr [ %i.ft, %.loopexit.i ], [ %i.hd, %bb.p ], [ %i.hd, %.lr.ph.i ], [ %i.hd, %bb.q ]
  %i.ij = phi ptr [ %i.fu, %.loopexit.i ], [ %i.he, %bb.p ], [ %i.he, %.lr.ph.i ], [ %i.he, %bb.q ]
  %i.ik = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.ho, %bb.p ], [ %i.ib, %bb.q ], [ %i.hv, %.lr.ph.i ] ; 4 uses
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = ashr exact i64 %i.in, 4                 ; 2 uses
  %i.ip = trunc i64 %i.io to i32
  %i.iq = and i32 %i.ip, 31
  %i.ir = shl nuw i32 1, %i.iq
  %i.is = lshr i64 %i.io, 5
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !43, !noalias !337
  %i.iv = or i32 %i.ir, %i.iu
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !43, !noalias !337
  %i.iw = load i32, ptr %i.o, align 8, !tbaa !92, !noalias !337
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr %i.o, align 8, !tbaa !92, !noalias !337
  store ptr %i.fo, ptr %i.ik, align 8, !tbaa !93, !noalias !337
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.fn, ptr %i.iy, align 8, !tbaa !94, !noalias !337
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i
  %.sroa.076.0 = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i ], [ %i.fo, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ik, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit.i ], [ %i.gl, %.lr.ph.i.i ] ; 2 uses
  %i.iz = ptrtoint ptr %.sroa.076.0 to i64
  %notsub.i.i.i.i.i21 = add i64 %i.iz, -1
  %i.ja = icmp ult i64 %notsub.i.i.i.i.i21, -32
  br i1 %i.ja, label %bb.r, label %_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415PLTTableManagerEJEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split.i

bb.r:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.076.0, i64 8
  %i.jc = atomicrmw sub ptr %i.jb, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415PLTTableManagerEJEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split.i

bb.s:                                             ; preds = %.lr.ph
  %i.jd = load ptr, ptr %.sroa.067.0106, align 8, !tbaa !61 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !98
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load i64, ptr %i.jg, align 8
  %i.ji = trunc i64 %i.jh to i1
  br i1 %i.ji, label %_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit, label %_ZN4llvm7jitlink7aarch6415PLTTableManager9visitEdgeERNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeE.exit.i.i

_ZN4llvm7jitlink7aarch6415PLTTableManager9visitEdgeERNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeE.exit.i.i: ; preds = %bb.s
  %i.jj = load ptr, ptr %2, align 8, !tbaa !41, !noalias !339 ; 3 uses
  %i.jk = load ptr, ptr %i.e, align 8, !tbaa !42, !noalias !339 ; 2 uses
  %i.jl = load i32, ptr %i.f, align 4, !tbaa !40, !noalias !339 ; 4 uses
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %.loopexit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm7jitlink7aarch6415PLTTableManager9visitEdgeERNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeE.exit.i.i
  %i.jn = add i32 %i.jl, -1                       ; 2 uses
  %i.jo = load ptr, ptr %i.jd, align 8, !tbaa !46, !noalias !340 ; 2 uses
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = mul i64 %i.jp, -4658895280553007687     ; 2 uses
  %i.jr = lshr i64 %i.jq, 31
  %i.js = xor i64 %i.jr, %i.jq
  %i.jt = trunc i64 %i.js to i32
  %i.ju = and i32 %i.jn, %i.jt                    ; 3 uses
  %i.jv = zext i32 %i.ju to i64                   ; 2 uses
  %i.jw = lshr i64 %i.jv, 5
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !43, !noalias !340
  %i.jz = and i32 %i.ju, 31
  %i.ka = lshr i32 %i.jy, %i.jz
  %i.kb = trunc i32 %i.ka to i1
  br i1 %i.kb, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !62

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t, %bb.u
  %i.kc = phi i64 [ %i.ki, %bb.u ], [ %i.jv, %bb.t ]
  %.017.i.i.i.i.i = phi i32 [ %i.kh, %bb.u ], [ %i.ju, %bb.t ]
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.kc ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !46, !noalias !340
  %i.kf = icmp eq ptr %i.jo, %i.ke
  br i1 %i.kf, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i, label %bb.u, !prof !63

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.kg = add nuw i32 %.017.i.i.i.i.i, 1
  %i.kh = and i32 %i.kg, %i.jn                    ; 3 uses
  %i.ki = zext i32 %i.kh to i64                   ; 2 uses
  %i.kj = lshr i64 %i.ki, 5
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !43, !noalias !340
  %i.km = and i32 %i.kh, 31
  %i.kn = lshr i32 %i.kl, %i.km
  %i.ko = trunc i32 %i.kn to i1
  br i1 %i.ko, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i, !prof !64

.loopexit.i.i.i:                                  ; preds = %bb.u, %bb.t, %_ZN4llvm7jitlink7aarch6415PLTTableManager9visitEdgeERNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeE.exit.i.i
  %i.kp = zext i32 %i.jl to i64                   ; 2 uses
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.kp
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i = zext i32 %i.jl to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i ], [ %i.kp, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.kd, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit.i ], [ %i.kq, %.loopexit.i.i.i ] ; 2 uses
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %.pre-phi.i
  %i.ks = icmp eq ptr %.lcssa.sink.i.i.i, %i.kr
  br i1 %i.ks, label %bb.v, label %_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415PLTTableManagerEJEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split.i

bb.v:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i
  %i.kt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm7jitlink7aarch6415PLTTableManager11createEntryERNS0_9LinkGraphERNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.jd)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ku = load ptr, ptr %i.jd, align 8, !tbaa !46, !noalias !341 ; 3 uses
  store ptr %i.ku, ptr %3, align 8, !tbaa !46, !alias.scope !341
  %i.kv = ptrtoint ptr %i.ku to i64
  %notsub.i.i.i.i.i.i = add i64 %i.kv, -1
  %i.kw = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.kw, label %bb.w, label %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i

bb.w:                                             ; preds = %bb.v
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.ky = atomicrmw add ptr %i.kx, i64 1 seq_cst, align 8, !noalias !341 ; 0 uses
  br label %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i

_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i: ; preds = %bb.w, %bb.v
  store ptr %i.kt, ptr %i.g, align 8, !tbaa !100, !alias.scope !341
  %i.kz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.g), !noalias !342
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.kz, 0
  %i.la = load ptr, ptr %3, align 8, !tbaa !46    ; 2 uses
  %i.lb = ptrtoint ptr %i.la to i64
  %notsub.i.i.i.i.i = add i64 %i.lb, -1
  %i.lc = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.lc, label %bb.x, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i

bb.x:                                             ; preds = %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.le = atomicrmw sub ptr %i.ld, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i: ; preds = %bb.x, %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415PLTTableManagerEJEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split.i

_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415PLTTableManagerEJEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split.i: ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i14, %bb.r, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit
  %.sroa.010.0.i.pn = phi ptr [ %.sroa.0.0.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_.exit ], [ %.lcssa.sink.i.i.i16, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i14 ], [ %.sroa.0.0.i, %bb.r ], [ %.fca.0.extract.i.i.i, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit.i ], [ %.lcssa.sink.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.i ]
  %.sink.i.in = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.pn, i64 8
  %.sink.i = load ptr, ptr %.sink.i.in, align 8, !tbaa !100
  store ptr %.sink.i, ptr %.sroa.067.0106, align 8, !tbaa !61
  br label %_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit

_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415GOTTableManagerEJRNS2_15PLTTableManagerEEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit: ; preds = %.lr.ph, %bb.s, %_ZN4llvm7jitlink9visitEdgeIRNS0_7aarch6415PLTTableManagerEJEEEvRNS0_9LinkGraphEPNS0_5BlockERNS0_4EdgeEOT_DpOT0_.exit.sink.split.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.067.0106, i64 32 ; 2 uses
  %.not94 = icmp eq ptr %i.lf, %i.z
  br i1 %.not94, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink36createLinkGraphFromMachOObject_arm64ENS_15MemoryBufferRefESt10shared_ptrINS_3orc16SymbolStringPoolEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 %0, ptr nofree noundef readonly byval(%"class.llvm::MemoryBufferRef") align 8 captures(none) %1, ptr nofree noundef align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %4 = alloca %"class.llvm::Triple", align 8      ; 6 uses
  %5 = alloca %"class.llvm::SubtargetFeatures", align 16 ; 8 uses
  %6 = alloca %"struct.llvm::MachO::symtab_command", align 4 ; 4 uses
  %7 = alloca %"class.llvm::Expected.32", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Expected.43", align 16 ; 13 uses
  %9 = alloca %"class.(anonymous namespace)::MachOLinkGraphBuilder_arm64", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN4llvm6object10ObjectFile21createMachOObjectFileENS_15MemoryBufferRefEjjm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.32") align 8 %7, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %1, i32 noundef 0, i32 noundef 0, i64 noundef 0) #18
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.a
  %i.d = load i64, ptr %7, align 8, !tbaa !101, !noalias !357
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8
  store ptr %i.e, ptr %0, align 8, !tbaa !101, !alias.scope !358
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object15MachOObjectFileESt14default_deleteIS3_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.i = load ptr, ptr %7, align 8, !tbaa !359    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 408
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.43") align 8 %8, ptr noundef nonnull align 8 dereferenceable(360) %i.i) #18
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.p = load ptr, ptr %7, align 8, !tbaa !359    ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %10, align 16, !tbaa !361
  %i.u = load <2 x ptr>, ptr %8, align 16, !tbaa !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x ptr> %i.s, ptr %3, align 16, !tbaa !105
  %i.v = call { ptr, i64 } @_ZNK4llvm6object6Binary7getDataEv(ptr noundef nonnull align 8 dereferenceable(360) %i.p) #18, !noalias !362
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.x, align 1, !noalias !362
  %i.y = and i32 %.0.copyload.i.i.i.i.i, 16777215
  %i.z = icmp eq i32 %i.y, 2
  %.str.2..str.3.i.i = select i1 %i.z, ptr @.str.2, ptr @.str.3
  call void @_ZN4llvm6TripleC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %.str.2..str.3.i.i)
  store <2 x ptr> %i.u, ptr %5, align 16, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.aa, align 16, !tbaa !361
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilderC2ERKNS_6object15MachOObjectFileESt10shared_ptrINS_3orc16SymbolStringPoolEENS_6TripleENS_17SubtargetFeaturesEPFPKchE(ptr noundef nonnull align 8 dereferenceable(196) %9, ptr noundef nonnull align 8 dereferenceable(360) %i.p, ptr nofree noundef nonnull align 8 dereferenceable(16) %3, ptr nofree noundef nonnull align 8 dereferenceable(56) %4, ptr nofree noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @_ZN4llvm7jitlink7aarch6415getEdgeKindNameEh) #18
  %i.ab = load ptr, ptr %5, align 16, !tbaa !363  ; 3 uses
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !364 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.ab, %bb.c ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !111
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !349

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %5, align 16, !tbaa !363
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i, %bb.c
  %i.aj = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i ], [ %i.ab, %bb.c ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i, label %_ZN4llvm17SubtargetFeaturesD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  %i.ak = load ptr, ptr %i.aa, align 16, !tbaa !361
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #19
  br label %_ZN4llvm17SubtargetFeaturesD2Ev.exit.i

_ZN4llvm17SubtargetFeaturesD2Ev.exit.i:           ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i
  %i.ao = load ptr, ptr %4, align 8, !tbaa !110   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN4llvm6TripleD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvm17SubtargetFeaturesD2Ev.exit.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !111
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #19
  br label %_ZN4llvm6TripleD2Ev.exit.i

_ZN4llvm6TripleD2Ev.exit.i:                       ; preds = %_ZN4llvm17SubtargetFeaturesD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.at = load ptr, ptr %i.q, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm6TripleD2Ev.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.au, align 8, !tbaa !116
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !117
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #18, !inline_history !350
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #18, !inline_history !350
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !43
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.ax, %bb.h ], [ %i.bh, %bb.i ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.j, label %bb.k, !prof !118

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #18
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm6TripleD2Ev.exit.i, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12_GLOBAL__N_127MachOLinkGraphBuilder_arm64E, i64 16), ptr %9, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::symtab_command") align 4 %6, ptr noundef nonnull align 8 dereferenceable(360) %i.p) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !366
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !368
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilder10buildGraphEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(192) %9) #18
  call void @_ZN4llvm7jitlink21MachOLinkGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(196) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %.pre = load i8, ptr %i.m, align 8
  %.pre28 = load ptr, ptr %8, align 16, !tbaa !105 ; 6 uses
  %i.bm = trunc i8 %.pre to i1
  br i1 %i.bm, label %bb.n, label %bb.l

.thread:                                          ; preds = %bb.b
  %i.bn = load i64, ptr %8, align 16, !tbaa !101, !noalias !369
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr null, ptr %8, align 16, !tbaa !101, !noalias !369
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = or i8 %i.bq, 1
  store i8 %i.br, ptr %i.bp, align 8
  store ptr %i.bo, ptr %0, align 8, !tbaa !101, !alias.scope !370
  br label %.thread46

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !364 ; 2 uses
  %.not4.i.i.i.i.i6 = icmp eq ptr %.pre28, %i.bt
  br i1 %.not4.i.i.i.i.i6, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i14, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %bb.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i10
  %.05.i.i.i.i.i8 = phi ptr [ %i.bz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i10 ], [ %.pre28, %bb.l ] ; 3 uses
  %i.bu = load ptr, ptr %.05.i.i.i.i.i8, align 8, !tbaa !110 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9: ; preds = %.lr.ph.i.i.i.i.i7
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !111
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #19
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i10

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i10: ; preds = %.lr.ph.i.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i9
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 32 ; 2 uses
  %.not.i.i.i.i.i11 = icmp eq ptr %i.bz, %i.bt
  br i1 %.not.i.i.i.i.i11, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i12, label %.lr.ph.i.i.i.i.i7, !llvm.loop !349

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i12: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i10
  %.pr.i.i.i13 = load ptr, ptr %8, align 16, !tbaa !363
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i14

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i14: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i12, %bb.l
  %i.ca = phi ptr [ %.pr.i.i.i13, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i12 ], [ %.pre28, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i15 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i1.i.i.i15, label %.thread46, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i14
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !361
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #19
  br label %.thread46

bb.n:                                             ; preds = %bb.k
  %.not.i.i18 = icmp eq ptr %.pre28, null
  br i1 %.not.i.i18, label %.thread46, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.n
  %i.cg = load ptr, ptr %.pre28, align 8, !tbaa !104
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %.pre28) #18, !inline_history !355
  br label %.thread46

.thread46:                                        ; preds = %.thread, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.n, %bb.m, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pre29 = load ptr, ptr %7, align 8, !tbaa !105 ; 3 uses
  %.not.i1.i = icmp eq ptr %.pre29, null
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object15MachOObjectFileESt14default_deleteIS3_EEED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm6object15MachOObjectFileESt14default_deleteIS2_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4llvm6object15MachOObjectFileESt14default_deleteIS2_EED2Ev.exit.sink.split.i: ; preds = %.thread46
  %i.cj = load ptr, ptr %.pre29, align 8, !tbaa !104
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %.pre29) #18, !inline_history !356
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_6object15MachOObjectFileESt14default_deleteIS3_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_6object15MachOObjectFileESt14default_deleteIS3_EEED2Ev.exit: ; preds = %.thread48, %.thread46, %_ZNSt10unique_ptrIN4llvm6object15MachOObjectFileESt14default_deleteIS2_EED2Ev.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  ret void
}

declare void @_ZN4llvm6object10ObjectFile21createMachOObjectFileENS_15MemoryBufferRefEjjm(ptr dead_on_unwind writable sret(%"class.llvm::Expected.32") align 8, ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm7jitlink21MachOLinkGraphBuilder10buildGraphEv(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm7jitlink21MachOLinkGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink16link_MachO_arm64ESt10unique_ptrINS0_9LinkGraphESt14default_deleteIS2_EES1_INS0_14JITLinkContextES3_IS6_EE(ptr nofree noundef align 8 dereferenceable(8) %0, ptr nofree noundef align 8 dereferenceable(8) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::jitlink::EHFrameEdgeFixer", align 8 ; 4 uses
  %3 = alloca %"class.llvm::jitlink::EHFrameEdgeFixer", align 8 ; 4 uses
  %4 = alloca %"class.llvm::jitlink::DWARFRecordSectionSplitter", align 8 ; 5 uses
  %5 = alloca %"struct.llvm::jitlink::PassConfiguration", align 8 ; 29 uses
  %6 = alloca %"class.llvm::unique_function", align 8 ; 10 uses
  %7 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %8 = alloca %"class.llvm::unique_function", align 8 ; 9 uses
  %9 = alloca %"class.llvm::unique_function", align 8 ; 7 uses
  %10 = alloca %"class.llvm::unique_function", align 8 ; 9 uses
  %11 = alloca %"class.llvm::unique_function", align 8 ; 7 uses
  %12 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %13 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %14 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %15 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %16 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %17 = alloca %"class.llvm::unique_function", align 8 ; 8 uses
  %18 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %5, i8 0, i64 120, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c) #18
  br i1 %i.g, label %bb.b, label %_ZNSt12__shared_ptrIN4llvm7jitlink20CompactUnwindManagerINS1_31CompactUnwindTraits_MachO_arm64EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.h = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !148
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.llvm::unique_function") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.j) #18
end_hunk_0
