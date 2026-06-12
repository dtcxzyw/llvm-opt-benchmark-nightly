inline.NumInlined: 1056
inline.NumDeleted: 741
begin_hunk_0_@_Z4replRKN6hermes2vm13RuntimeConfigE:bb.a
  %.not.i62 = icmp eq ptr %i.im, null
  br i1 %.not.i62, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.i"
  %i.in = load i32, ptr %i.im, align 8, !tbaa !98 ; 3 uses
  switch i32 %i.in, label %.preheader.peel.next.i.backedge [
    i32 120, label %.loopexit.i
    i32 49, label %bb.at
    i32 53, label %bb.at
    i32 55, label %bb.at
    i32 51, label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i"
    i32 54, label %bb.aw
    i32 56, label %bb.ax
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 %i.in, ptr %i.a, align 4, !tbaa !110
  %i.io = load ptr, ptr %i.et, align 8, !tbaa !97 ; 3 uses
  %i.ip = load ptr, ptr %i.ew, align 8, !tbaa !112
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 -4
  %.not.i.i.i.i = icmp eq ptr %i.io, %i.iq
  br i1 %.not.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 %i.in, ptr %i.io, align 4, !tbaa !110
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store ptr %i.ir, ptr %i.et, align 8, !tbaa !97
  br label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.i

bb.av:                                            ; preds = %bb.at
  call void @_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.i: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.preheader.peel.next.i.backedge

bb.aw:                                            ; preds = %bb.as
  br label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i"

bb.ax:                                            ; preds = %bb.as
  br label %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i"

"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i": ; preds = %bb.ax, %bb.aw, %bb.as
  %.0.i13.i = phi i32 [ 55, %bb.ax ], [ 53, %bb.aw ], [ 49, %bb.as ] ; 2 uses
  %i.is = load ptr, ptr %i.et, align 8, !tbaa !106 ; 3 uses
  %i.it = load ptr, ptr %i.ep, align 8, !tbaa !106
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %.thread35.i, label %bb.ay

bb.ay:                                            ; preds = %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i"
  %i.iv = load ptr, ptr %i.ev, align 8, !tbaa !94, !noalias !107 ; 2 uses
  %i.iw = icmp eq ptr %i.is, %i.iv
  br i1 %i.iw, label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i, label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i: ; preds = %bb.ay
  %i.ix = load ptr, ptr %i.eu, align 8, !tbaa !93, !noalias !107
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !92
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 508
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !110
  %i.jc = icmp eq i32 %i.jb, %.0.i13.i
  br i1 %i.jc, label %bb.az, label %.thread35.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i: ; preds = %bb.ay
  %i.jd = getelementptr inbounds i8, ptr %i.is, i64 -4 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !110
  %i.jf = icmp eq i32 %i.je, %.0.i13.i
  br i1 %i.jf, label %.thread.i, label %.thread35.i

bb.az:                                            ; preds = %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef 512) #20
  %i.jg = load ptr, ptr %i.eu, align 8, !tbaa !111
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -8 ; 2 uses
  store ptr %i.jh, ptr %i.eu, align 8, !tbaa !93
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !92 ; 3 uses
  store ptr %i.ji, ptr %i.ev, align 8, !tbaa !94
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 512
  store ptr %i.jj, ptr %i.ew, align 8, !tbaa !95
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 508
  br label %.thread.i

.thread.i:                                        ; preds = %bb.az, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i
  %storemerge.i.i.i = phi ptr [ %i.jk, %bb.az ], [ %i.jd, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i ]
  store ptr %storemerge.i.i.i, ptr %i.et, align 8, !tbaa !97
  br label %.preheader.peel.next.i.backedge

.preheader.peel.next.i.backedge:                  ; preds = %.thread.i, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE4pushEOS2_.exit.i, %bb.as
  br label %.preheader.peel.next.i, !llvm.loop !113

.loopexit.i:                                      ; preds = %bb.as, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.i", %bb.ak, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_1clEN6hermes8OptValueINS2_6parser9TokenKindEEE.exit.peel.i"
  %i.jl = load ptr, ptr %i.et, align 8, !tbaa !106
  %i.jm = load ptr, ptr %i.ep, align 8, !tbaa !106
  %i.jn = icmp ne ptr %i.jl, %i.jm
  br label %.thread35.i

.thread35.i:                                      ; preds = %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i", %.loopexit.i, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.peel.i, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.peel.i, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i", %bb.aj, %_ZN6hermes6parser7JSLexerC2EN4llvh9StringRefERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb.exit.i
  %.5.i = phi i1 [ true, %bb.aj ], [ false, %_ZN6hermes6parser7JSLexerC2EN4llvh9StringRefERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb.exit.i ], [ %i.jn, %.loopexit.i ], [ false, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.peel.i ], [ false, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.peel.i ], [ false, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.peel.i" ], [ false, %"_ZZL16needsAnotherLineN4llvh9StringRefEENK3$_0clEN6hermes6parser9TokenKindE.exit.i" ], [ false, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.i ], [ false, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEE3topEv.exit.thread.i ]
  %i.jo = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %.not.i.i.i15.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i15.i, label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %.thread35.i
  %i.jp = load ptr, ptr %i.eq, align 8, !tbaa !115 ; 2 uses
  %i.jq = load ptr, ptr %i.eu, align 8, !tbaa !111 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = icmp ult ptr %i.jp, %i.jr
  br i1 %i.js, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ba, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i ], [ %i.jp, %bb.ba ] ; 3 uses
  %i.jt = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !92
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef 512) #20
  %i.ju = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.jv = icmp ult ptr %.06.i.i.i.i.i, %i.jq
  br i1 %i.jv, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, !llvm.loop !116

_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !91
  br label %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i

_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i, %bb.ba
  %i.jw = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i.i.i ], [ %i.jo, %bb.ba ]
  %i.jx = load i64, ptr %i.eo, align 8, !tbaa !88
  %i.jy = shl i64 %i.jx, 3
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jy) #20
  br label %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i

_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i: ; preds = %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i.i.i, %.thread35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.jz = load ptr, ptr %i.ex, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i
  %i.ka = load ptr, ptr %i.ey, align 8, !tbaa !120
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jz to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.kd) #20
  br label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bb, %_ZNSt5stackIN6hermes6parser9TokenKindESt5dequeIS2_SaIS2_EEED2Ev.exit.i
  %i.ke = load ptr, ptr %i.ez, align 8, !tbaa !121 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i
  %i.kf = load ptr, ptr %i.fa, align 8, !tbaa !124
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.ke to i64
  %i.ki = sub i64 %i.kg, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.ki) #20
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bc, %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EED2Ev.exit.i.i
  %i.kj = load ptr, ptr %i.fb, align 8, !tbaa !40 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.fc
  br i1 %i.kk, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i
  call void @free(ptr noundef %i.kj) #21
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i:      ; preds = %bb.bd, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EED2Ev.exit.i.i
  %i.kl = load ptr, ptr %i.fd, align 8, !tbaa !40 ; 2 uses
  %i.km = icmp eq ptr %i.kl, %i.fe
  br i1 %i.km, label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i, label %bb.be

bb.be:                                            ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i
  call void @free(ptr noundef %i.kl) #21
  br label %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i

_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i:     ; preds = %bb.be, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit.i.i
  %i.kn = load ptr, ptr %i.ff, align 8, !tbaa !125 ; 3 uses
  %.not.i.i16.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i16.i, label %_ZL16needsAnotherLineN4llvh9StringRefE.exit, label %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i: ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !127
  call void @_ZdlPv(ptr noundef %i.kp) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef 32) #20
  br label %_ZL16needsAnotherLineN4llvh9StringRefE.exit

_ZL16needsAnotherLineN4llvh9StringRefE.exit:      ; preds = %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit2.i.i, %_ZNKSt14default_deleteIN6hermes11StringTableEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.sroa.423.8.extract.trunc.i = trunc i64 %i.gp to i40
  store i40 %.sroa.423.8.extract.trunc.i, ptr %i.ek, align 8
  call void @_ZN6hermes18SourceErrorManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(464) dereferenceable(464) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.5.i, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %_ZL16needsAnotherLineN4llvh9StringRefE.exit
  %i.kq = load i64, ptr %i.p, align 8, !tbaa !47  ; 4 uses
  %i.kr = add i64 %i.kq, 1                        ; 3 uses
  %i.ks = load ptr, ptr %10, align 8, !tbaa !10   ; 2 uses
  %i.kt = icmp eq ptr %i.ks, %i.o
  br i1 %i.kt, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ku = icmp ult i64 %i.kq, 16
  call void @llvm.assume(i1 %i.ku)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bf
  %14 = load i64, ptr %i.o, align 8, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bg
  %15 = phi i64 [ %14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %bb.bg ]
  %i.kv = icmp ugt i64 %i.kr, %15
  br i1 %i.kv, label %bb.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.kq, i64 noundef 0, ptr noundef null, i64 noundef 1) #21
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !10
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %bb.bh
  %i.kw = phi ptr [ %.pre.i.i, %bb.bh ], [ %i.ks, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kq
  store i8 10, ptr %i.kx, align 1, !tbaa !16
  store i64 %i.kr, ptr %i.p, align 8, !tbaa !47
  %i.ky = load ptr, ptr %10, align 8, !tbaa !10
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kr
  store i8 0, ptr %i.kz, align 1, !tbaa !16
  br label %_ZN4llvh11raw_ostreamlsEc.exit.backedge

bb.bi:                                            ; preds = %_ZL16needsAnotherLineN4llvh9StringRefE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr %i.fg, ptr %11, align 8, !tbaa !40
  store i32 0, ptr %i.fh, align 8, !tbaa !42
  store i32 16, ptr %i.fi, align 4, !tbaa !41
  %i.la = load ptr, ptr %10, align 8, !tbaa !10
  %i.lb = load i64, ptr %i.p, align 8, !tbaa !47
  %i.lc = call noundef zeroext i1 @_ZN4llvh24convertUTF8ToUTF16StringENS_9StringRefERNS_15SmallVectorImplItEE(ptr %i.la, i64 %i.lb, ptr noundef nonnull align 8 dereferenceable(16) %11) #21
  br i1 %i.lc, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i64 0, ptr %i.p, align 8, !tbaa !47
  %i.ld = load ptr, ptr %10, align 8, !tbaa !10
  store i8 0, ptr %i.ld, align 1, !tbaa !16
  %i.le = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #21 ; 3 uses
  br i1 %.0.i, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = call noundef nonnull align 8 dereferenceable(36) ptr %i.lh(ptr noundef nonnull align 8 dereferenceable(36) %i.le, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #21, !inline_history !50
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.lj = phi ptr [ %i.li, %bb.bk ], [ %i.le, %bb.bj ] ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !51
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 24 ; 3 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !54 ; 2 uses
  %i.lo = ptrtoint ptr %i.ll to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = icmp ult i64 %i.lq, 22
  br i1 %i.lr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ls = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.lj, ptr noundef nonnull @.str.9, i64 noundef 22) #21 ; 0 uses
  br label %_ZL10printErrorPKcb.exit64

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ln, ptr noundef nonnull align 1 dereferenceable(22) @.str.9, i64 22, i1 false)
  %i.lt = load ptr, ptr %i.lm, align 8, !tbaa !54
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 22
  store ptr %i.lu, ptr %i.lm, align 8, !tbaa !54
  br label %_ZL10printErrorPKcb.exit64

_ZL10printErrorPKcb.exit64:                       ; preds = %bb.bm, %bb.bn
  %i.lv = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #21 ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = call noundef nonnull align 8 dereferenceable(36) ptr %i.ly(ptr noundef nonnull align 8 dereferenceable(36) %i.lv) #21, !inline_history !50 ; 0 uses
  br label %bb.cy, !llvm.loop !56

bb.bo:                                            ; preds = %bb.bi
  %i.ma = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.mb = load i32, ptr %i.fh, align 8, !tbaa !42 ; 2 uses
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = load ptr, ptr %7, align 8, !tbaa !21    ; 4 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !28 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 192 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !43
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 208 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !45 ; 2 uses
  %.not.i.i66 = icmp ult i32 %i.mb, 65536
  br i1 %.not.i.i66, label %bb.bp, label %bb.bq, !prof !49

bb.bp:                                            ; preds = %bb.bo
  %i.mk = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.md, ptr %i.ma, i64 %i.mc) #21
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.i

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.319") align 8 %1, ptr %i.ma, i64 %i.mc)
  %i.ml = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %i.md, ptr noundef nonnull align 8 dereferenceable(32) %1) #21
  %i.mm = load ptr, ptr %1, align 8, !tbaa !130   ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.fj
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bq
  %i.mo = load i64, ptr %i.fj, align 8, !tbaa !16
  %i.mp = shl i64 %i.mo, 1
  %i.mq = add i64 %i.mp, 2
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mq) #20
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i, %bb.bp
  %.pn.i.i67 = phi { i32, i64 } [ %i.mk, %bb.bp ], [ %i.ml, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i ] ; 2 uses
  %i.mr = extractvalue { i32, i64 } %.pn.i.i67, 0
  %i.ms = icmp eq i32 %i.mr, 0
  br i1 %i.ms, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.i
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.13) #23
  unreachable

bb.bs:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.i
  %i.mt = extractvalue { i32, i64 } %.pn.i.i67, 1
  %i.mu = and i64 %i.mt, 281474976710655
  %i.mv = or disjoint i64 %i.mu, -844424930131968 ; 3 uses
  %i.mw = load ptr, ptr %i.me, align 8, !tbaa !28 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 192 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !43 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 200
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !44
  %i.nb = icmp ult ptr %i.my, %i.na
  br i1 %i.nb, label %bb.bt, label %bb.bu, !prof !49

bb.bt:                                            ; preds = %bb.bs
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store ptr %i.nc, ptr %i.mx, align 8, !tbaa !43
  store i64 %i.mv, ptr %i.my, align 8, !tbaa !48
  br label %_ZN6hermes2vm15StringPrimitive13createNoThrowERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.bu:                                            ; preds = %bb.bs
  %i.nd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.mw, i64 %i.mv) #21
  %.sroa.0.0.copyload.i69.pre = load i64, ptr %i.nd, align 8, !tbaa !48
  br label %_ZN6hermes2vm15StringPrimitive13createNoThrowERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive13createNoThrowERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.bt, %bb.bu
  %.sroa.0.0.copyload.i69 = phi i64 [ %i.mv, %bb.bt ], [ %.sroa.0.0.copyload.i69.pre, %bb.bu ]
  %i.ne = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall2ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_b(ptr nonnull %.0.i.i.i.i.i.i55, ptr noundef nonnull align 8 dereferenceable(9816) %i.md, ptr %i.r, i64 %.sroa.0.0.copyload.i69, i64 %i.fl, i1 noundef zeroext false) #21 ; 2 uses
  %i.nf = extractvalue { i32, i64 } %i.ne, 0
  %i.ng = icmp eq i32 %i.nf, 0                    ; 4 uses
  br i1 %i.ng, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %_ZN6hermes2vm15StringPrimitive13createNoThrowERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %i.nh = load ptr, ptr %7, align 8, !tbaa !21
  %i.ni = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #21 ; 3 uses
  br i1 %.0.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = call noundef nonnull align 8 dereferenceable(36) ptr %i.nl(ptr noundef nonnull align 8 dereferenceable(36) %i.ni, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false) #21
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %i.nn = phi ptr [ %i.nm, %bb.bw ], [ %i.ni, %bb.bv ]
  %i.no = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 720
  %.sroa.0.0.copyload.i70 = load i64, ptr %i.np, align 8, !tbaa !48 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !28 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 192 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !43 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 200
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !44
  %i.nw = icmp ult ptr %i.nt, %i.nv
  br i1 %i.nw, label %bb.by, label %bb.bz, !prof !49

bb.by:                                            ; preds = %bb.bx
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store ptr %i.nx, ptr %i.ns, align 8, !tbaa !43
  store i64 %.sroa.0.0.copyload.i70, ptr %i.nt, align 8, !tbaa !48
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit72

bb.bz:                                            ; preds = %bb.bx
  %i.ny = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.nr, i64 %.sroa.0.0.copyload.i70) #21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit72

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit72: ; preds = %bb.by, %bb.bz
  %.0.i.i.i.i.i.i71 = phi ptr [ %i.nt, %bb.by ], [ %i.ny, %bb.bz ]
  call void @_ZN6hermes2vm7Runtime14printExceptionERN4llvh11raw_ostreamENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.nh, ptr noundef nonnull align 8 dereferenceable(36) %i.nn, ptr %.0.i.i.i.i.i.i71) #21
  %i.nz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #21 ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = call noundef nonnull align 8 dereferenceable(36) ptr %i.oc(ptr noundef nonnull align 8 dereferenceable(36) %i.nz) #21 ; 0 uses
  store i64 0, ptr %i.p, align 8, !tbaa !47
  %i.oe = load ptr, ptr %10, align 8, !tbaa !10
  store i8 0, ptr %i.oe, align 1, !tbaa !16
  br label %bb.cb

bb.ca:                                            ; preds = %_ZN6hermes2vm15StringPrimitive13createNoThrowERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
end_hunk_0
begin_hunk_1_@_ZN6hermes18SourceErrorManagerD2Ev:bb.a
  %.pre1.i9 = load ptr, ptr %i.ax, align 8, !tbaa !447 ; 3 uses
  br i1 %i.ba, label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21, label %.lr.ph.preheader.i.i10

.lr.ph.preheader.i.i10:                           ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit
  %i.bb = zext i32 %i.az to i64
  %.idx.i.i11 = mul nuw nsw i64 %i.bb, 40
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre1.i9, i64 %.idx.i.i11
  br label %.lr.ph.i.i12

.lr.ph.i.i12:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, %.lr.ph.preheader.i.i10
  %.010.i.i13 = phi ptr [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16 ], [ %.pre1.i9, %.lr.ph.preheader.i.i10 ] ; 4 uses
  %i.bd = load i32, ptr %.010.i.i13, align 4, !tbaa !4
  %switch.i.i14 = icmp ugt i32 %i.bd, -3
  br i1 %switch.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i12
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 24 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15: ; preds = %bb.e
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !16
  %i.bj = add i64 %i.bi, 1
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15, %.lr.ph.i.i12
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i13, i64 40 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.bk, %i.bc
  br i1 %.not.i.i17, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18, label %.lr.ph.i.i12, !llvm.loop !448

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i16
  %.pre.i19 = load ptr, ptr %i.ax, align 8, !tbaa !447
  br label %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21

_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21: ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18
  %i.bl = phi ptr [ %.pre.i19, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.loopexit.i18 ], [ %.pre1.i9, %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit ]
  tail call void @_ZdlPv(ptr noundef %i.bl) #21
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !449 ; 3 uses
  %i.bo = trunc i64 %i.bn to i1
  %i.bp = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.bp, %i.bo
  br i1 %or.cond.i, label %_ZN4llvh14SmallBitVectorD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21
  %i.bq = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !451
  tail call void @free(ptr noundef %i.br) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 24) #20
  br label %_ZN4llvh14SmallBitVectorD2Ev.exit

_ZN4llvh14SmallBitVectorD2Ev.exit:                ; preds = %_ZN4llvh8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit21, %bb.f
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !449 ; 3 uses
  %i.bu = trunc i64 %i.bt to i1
  %i.bv = icmp eq i64 %i.bt, 0
  %or.cond.i22 = or i1 %i.bv, %i.bu
  br i1 %or.cond.i22, label %_ZN4llvh14SmallBitVectorD2Ev.exit23, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit
  %i.bw = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !451
  tail call void @free(ptr noundef %i.bx) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 24) #20
  br label %_ZN4llvh14SmallBitVectorD2Ev.exit23

_ZN4llvh14SmallBitVectorD2Ev.exit23:              ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit, %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !452
  tail call void @_ZdlPv(ptr noundef %i.ca) #21
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cf = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !455, !noalias !457
  store <2 x ptr> %i.cf, ptr %1, align 16, !tbaa !455
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !92, !noalias !457
  store <2 x ptr> %i.ch, ptr %i.cg, align 16, !tbaa !92
  %i.ci = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !455, !noalias !460
  store <2 x ptr> %i.ci, ptr %2, align 16, !tbaa !455
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = load <2 x ptr>, ptr %i.ce, align 8, !tbaa !92, !noalias !460
  store <2 x ptr> %i.ck, ptr %i.cj, align 16, !tbaa !92
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(104) %i.by, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cl = load ptr, ptr %i.by, align 8, !tbaa !463 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i24, label %_ZN6hermes15StringSetVectorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit23
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !467 ; 2 uses
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !468 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = icmp ult ptr %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i ], [ %i.co, %bb.h ] ; 3 uses
  %i.cs = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !455
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef 512) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.cu = icmp ult ptr %.06.i.i.i.i, %i.cp
  br i1 %i.cu, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, !llvm.loop !469

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !463
  br label %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i

_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i, %bb.h
  %i.cv = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i.i.i ], [ %i.cl, %bb.h ]
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !470
  %i.cy = shl i64 %i.cx, 3
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #20
  br label %_ZN6hermes15StringSetVectorD2Ev.exit

_ZN6hermes15StringSetVectorD2Ev.exit:             ; preds = %_ZN4llvh14SmallBitVectorD2Ev.exit23, %_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !393 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.da, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes15StringSetVectorD2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.db, align 8, !tbaa !394
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !396
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #21, !inline_history !471
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #21, !inline_history !471
  br label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i26 = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.l ], [ %i.do, %bb.m ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.n, label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !379

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #21
  br label %_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes18SourceErrorManager16ICoordTranslatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6hermes15StringSetVectorD2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @_ZN4llvh9SourceMgrD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #21
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

declare void @_ZN4llvh12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.281") align 8, ptr, i64, ptr, i64, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN6hermes6parser7JSLexerC2ESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS4_EERNS_18SourceErrorManagerERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableEbb(ptr noundef nonnull align 8 dereferenceable(1160), ptr noundef, ptr noundef nonnull align 8 dereferenceable(464), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 7
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !95
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 2
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !88
  %i.ag = load ptr, ptr %0, align 8, !tbaa !91
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %2 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24
  %3 = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.am, align 8, !tbaa !92
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.ao = load i32, ptr %1, align 4, !tbaa !110
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !110
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !111
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !93
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !92 ; 3 uses
  store ptr %i.ar, ptr %i.o, align 8, !tbaa !94
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 512
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.as, ptr %i.at, align 8, !tbaa !95
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN6hermes6parser9TokenKindESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !88   ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !91
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !49

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !92
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !92
  br label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !49

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !92
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !92
  br label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE15_M_allocate_mapEm.exit, !prof !379

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !49

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN6hermes6parser9TokenKindESaIS2_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !92
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !92
  br label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit24

_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !91
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #20
  store ptr %i.aq, ptr %0, align 8, !tbaa !91
  store i64 %i.am, ptr %i.k, align 8, !tbaa !88
  br label %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit

_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN6hermes6parser9TokenKindES4_ET0_T_S6_S5_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !93
  %i.be = load ptr, ptr %.0, align 8, !tbaa !92   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !94
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !95
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !93
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !92 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !95
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh9SourceMgrD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !472  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !474  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !475

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !472
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
end_hunk_1
