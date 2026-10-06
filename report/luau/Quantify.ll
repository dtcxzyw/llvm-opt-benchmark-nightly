Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Quantify?download=true
inline.NumInlined: 803
inline.NumDeleted: 458
begin_hunk_0_@_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_11TypePackVarE:bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull %.tr113121, ptr noundef nonnull align 8 dereferenceable(40) %i.g)
  br i1 %i.ab, label %bb.c, label %_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

bb.c:                                             ; preds = %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !26  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr113121, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %.not112119 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not112119, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.tr113121, i64 40
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !201, !range !40, !noundef !49
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.087.0120 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ai = load ptr, ptr %.sroa.087.0120, align 8, !tbaa !50
  tail call void @_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.087.0120, i64 8 ; 2 uses
  %.not112 = icmp eq ptr %i.aj, %i.ae
  br i1 %.not112, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr113121, i64 32
  br label %tailrecurse.backedge

_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit: ; preds = %bb.b
  %i.al = load ptr, ptr %0, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull %.tr113121, ptr noundef nonnull align 8 dereferenceable(9) %i.g)
  br i1 %i.ao, label %bb.e, label %_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

bb.e:                                             ; preds = %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !203
  tail call void @_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %i.ap)
  br label %_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

_ZN4Luau3getINS_15BlockedTypePackEEEPKT_PKNS_11TypePackVarE.exit: ; preds = %bb.b
  %i.aq = load ptr, ptr %0, align 8, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull %.tr113121, ptr noundef nonnull align 8 dereferenceable(16) %i.g) ; 0 uses
  br label %_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.au)
  %i.av = load ptr, ptr %0, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 264
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef nonnull %.tr113121, ptr noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit
  br i1 %i.ay, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %.tr113121, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr113121, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %.not124 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not124, label %._crit_edge128, label %.lr.ph127

._crit_edge128:                                   ; preds = %bb.i, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr113121, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr113121, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !28 ; 2 uses
  %.not111129 = icmp eq ptr %i.be, %i.bg
  br i1 %.not111129, label %.loopexit, label %.lr.ph132

bb.h:                                             ; preds = %_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph127:                                        ; preds = %bb.g, %bb.i
  %.sroa.083.0125 = phi ptr [ %i.bj, %bb.i ], [ %i.ba, %bb.g ] ; 2 uses
  %i.bi = load ptr, ptr %.sroa.083.0125, align 8, !tbaa !50
  invoke void @_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %i.bi)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph127
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.083.0125, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.bc
  br i1 %.not, label %._crit_edge128, label %.lr.ph127

bb.j:                                             ; preds = %.lr.ph127
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph132:                                        ; preds = %._crit_edge128, %bb.k
  %.sroa.079.0130 = phi ptr [ %i.bm, %bb.k ], [ %i.be, %._crit_edge128 ] ; 2 uses
  %i.bl = load ptr, ptr %.sroa.079.0130, align 8, !tbaa !81
  invoke void @_ZN4Luau18GenericTypeVisitorINS_12DenseHashSetIPvNS_16DenseHashPointerESt8equal_toIS2_EEEE8traverseEPKNS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr noundef %i.bl)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph132
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.079.0130, i64 8 ; 2 uses
  %.not111 = icmp eq ptr %i.bm, %i.bg
  br i1 %.not111, label %.loopexit, label %.lr.ph132

bb.l:                                             ; preds = %.lr.ph132
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.loopexit:                                        ; preds = %bb.k, %._crit_edge128, %bb.f
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.j ], [ %i.bn, %bb.l ], [ %i.bh, %bb.h ]
  call void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %.pn

_ZN4Luau3getINS_28TypeFunctionInstanceTypePackEEEPKT_PKNS_11TypePackVarE.exit.thread: ; preds = %.lr.ph123, %_ZN4Luau3getINS_9Unifiable5BoundIPKNS_11TypePackVarEEEEEPKT_S5_.exit, %._crit_edge, %_ZN4Luau3getINS_8TypePackEEEPKT_PKNS_11TypePackVarE.exit, %bb.b, %_ZN4Luau3getINS_15GenericTypePackEEEPKT_PKNS_11TypePackVarE.exit, %_ZN4Luau3getINS_15BlockedTypePackEEEPKT_PKNS_11TypePackVarE.exit, %.loopexit, %_ZN4Luau3getINS_16VariadicTypePackEEEPKT_PKNS_11TypePackVarE.exit, %bb.e, %_ZN4Luau3getINS_9Unifiable5ErrorIPKNS_11TypePackVarEEEEEPKT_S5_.exit, %_ZN4Luau3getINS_12FreeTypePackEEEPKT_PKNS_11TypePackVarE.exit, %tailrecurse._crit_edge
  ret void
}

declare noundef zeroext i1 @_ZNK4Luau8Property8isSharedEv(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #5

declare void @_ZN4Luau16RecursionCounterC1EPi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4Luau16RecursionCounterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN4Luau16RecursionCounterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !104  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 3 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 3 uses
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !88 ; 3 uses
  %min.iters.check = icmp ult i64 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %spec.select, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.i, align 8, !tbaa !88
  store <2 x ptr> %broadcast.splat, ptr %i.j, align 8, !tbaa !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.05.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.05.i.i
  store ptr %.pre.i.i, ptr %i.l, align 8, !tbaa !88
  %i.m = add nuw i64 %.05.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %spec.select
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !205

_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre = load i64, ptr %i.a, align 8, !tbaa !104
  br label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit

_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit, %bb.a
  %i.n = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit ]
  %i.o = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit ] ; 5 uses
  %.not = icmp eq i64 %i.o, 0
  %.pre30 = load ptr, ptr %0, align 8, !tbaa !209 ; 3 uses
  br i1 %.not, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit
  %i.p = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.c

._crit_edge28:                                    ; preds = %bb.f, %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EEC2ERKS2_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !209
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !82
  %.not.i11 = icmp eq ptr %.pre30, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge28
  tail call void @_ZdlPv(ptr noundef nonnull %.pre30) #18
  br label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %._crit_edge28, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph27, %bb.f
  %.026 = phi i64 [ 0, %.lr.ph27 ], [ %i.ah, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.pre30, i64 %.026
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88   ; 5 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %.02136.i22 = and i64 %i.w, %i.p                ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i22
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.f
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.02136.i.lcssa21 = phi i64 [ %.02136.i22, %bb.d ], [ %.02136.i, %bb.e ]
  %1 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i.lcssa21 ; 2 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !88
  br label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE13insert_unsafeERKS2_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.aa = phi ptr [ %i.af, %bb.e ], [ %i.y, %bb.d ]
  %.02136.i24 = phi i64 [ %.02136.i, %bb.e ], [ %.02136.i22, %bb.d ] ; 2 uses
  %.02035.i23 = phi i64 [ %i.ac, %bb.e ], [ 0, %bb.d ]
  %i.ab = icmp eq ptr %i.aa, %i.r
  br i1 %i.ab, label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ac = add i64 %.02035.i23, 1                  ; 3 uses
  %i.ad = add i64 %i.ac, %.02136.i24
  %.not.i12 = icmp ule i64 %i.ac, %i.p
  tail call void @llvm.assume(i1 %.not.i12)
  %.02136.i = and i64 %i.ad, %i.p                 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.f
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit: ; preds = %.lr.ph
  %2 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i24
  br label %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE13insert_unsafeERKS2_.exit

_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE13insert_unsafeERKS2_.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit, %._crit_edge
  %3 = phi ptr [ %1, %._crit_edge ], [ %2, %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit ]
  store ptr %i.r, ptr %3, align 8, !tbaa !88
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPvS2_S2_NS0_16ItemInterfaceSetIS2_EENS_16DenseHashPointerESt8equal_toIS2_EE13insert_unsafeERKS2_.exit, %bb.c
  %i.ah = add nuw i64 %.026, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.o
  br i1 %exitcond.not, label %._crit_edge28, label %bb.c, !llvm.loop !206
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKN4Luau4TypeESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not70 = icmp eq ptr %2, %3
  br i1 %.not70, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !89   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !105

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre72 = load ptr, ptr %i.g, align 8, !tbaa !89
  br label %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !50
  store ptr %i.u, ptr %i.h, align 8, !tbaa !50
  br label %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit

_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre72, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !89
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !105

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPPKN4Luau4TypeES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPPKN4Luau4TypeES4_ET0_T_S6_S5_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load ptr, ptr %1, align 8, !tbaa !50
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !50
  br label %_ZSt13move_backwardIPPKN4Luau4TypeES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPKN4Luau4TypeES4_ET0_T_S6_S5_.exit: ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !105

bb.k:                                             ; preds = %_ZSt13move_backwardIPPKN4Luau4TypeES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPPKN4Luau4TypeES4_ET0_T_S6_S5_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr %2, align 8, !tbaa !50
  store ptr %i.ag, ptr %1, align 8, !tbaa !50
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !105

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !89
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !50
  store ptr %i.an, ptr %i.h, align 8, !tbaa !50
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.ao = phi ptr [ %.pre, %bb.n ], [ %i.h, %bb.o ], [ %i.h, %bb.p ]
  %i.ap = sub nuw nsw i64 %i.d, %i.n
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap ; 5 uses
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !89
  %i.ar = icmp sgt i64 %i.m, 8
  br i1 %i.ar, label %bb.q, label %bb.r, !prof !105

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aq, ptr align 8 %1, i64 %i.m, i1 false)
  %.pre71 = load ptr, ptr %i.g, align 8, !tbaa !89
  br label %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  br i1 %i.ah, label %bb.s, label %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %1, align 8, !tbaa !50
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !50
  br label %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit51

_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit51: ; preds = %bb.q, %bb.r, %bb.s
  %i.at = phi ptr [ %.pre71, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.m
  store ptr %i.au, ptr %i.g, align 8, !tbaa !89
  %i.av = icmp sgt i64 %i.m, 8
  br i1 %i.av, label %bb.t, label %bb.u, !prof !105

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit51
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.m, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPPKN4Luau4TypeES4_SaIS3_EET0_T_S7_S6_RT1_.exit51
  %i.aw = icmp eq i64 %i.m, 8
  br i1 %i.aw, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.v:                                             ; preds = %bb.u
  %i.ax = load ptr, ptr %2, align 8, !tbaa !50
  store ptr %i.ax, ptr %1, align 8, !tbaa !50
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.w:                                             ; preds = %bb.b
  %i.ay = load ptr, ptr %0, align 8, !tbaa !33    ; 5 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = sub i64 %i.j, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = sub nsw i64 1152921504606846975, %i.bb
  %i.bd = icmp ult i64 %i.bc, %i.d
  br i1 %i.bd, label %bb.x, label %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #22
  unreachable

_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.d)
  %i.be = add nsw i64 %.sroa.speculated.i, %i.bb  ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #23
  br label %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.bk = phi ptr [ %i.bj, %bb.y ], [ null, %_ZNKSt6vectorIPKN4Luau4TypeESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bl = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bm = sub i64 %i.bl, %i.az                    ; 4 uses
  %i.bn = icmp sgt i64 %i.bm, 8
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !105

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIPKN4Luau4TypeESaIS3_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bk, ptr align 8 %i.ay, i64 %i.bm, i1 false)
end_hunk_0
