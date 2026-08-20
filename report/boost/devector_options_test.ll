inline.NumInlined: 1567
inline.NumDeleted: 484
begin_hunk_0_@_Z22test_growth_factor_100v:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optINS0_17growth_factor_100EvLm0EEEE9push_backEOi.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.p, null
  br i1 %.not.i.i6, label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optINS0_17growth_factor_100EvLm0EEEED2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i64, ptr %i.e, align 8, !tbaa !64
  %i.r = shl i64 %i.q, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.r) #23
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optINS0_17growth_factor_100EvLm0EEEED2Ev.exit7

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optINS0_17growth_factor_100EvLm0EEEED2Ev.exit7: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z23test_stored_reloc_on_66v() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit:
  %0 = alloca %"class.boost::container::devector.2", align 8 ; 19 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.e = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 16, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  store i64 16, ptr %i.g, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  store i64 32, ptr %i.h, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !17
  br label %bb.b

bb.a:                                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backERKi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.j = load i64, ptr %i.h, align 8, !tbaa !72
  %i.k = load i64, ptr %i.g, align 8, !tbaa !74
  %i.l = icmp eq i64 %i.j, %i.k
  %i.m = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 134, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.l)
          to label %bb.f unwind label %bb.o       ; 0 uses

bb.b:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backERKi.exit
  %storemerge31 = phi i32 [ 0, %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit ], [ %i.v, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backERKi.exit ]
  %i.n = load i64, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !74   ; 3 uses
  %.not.i.i = icmp eq i64 %i.n, %i.o
  %i.p = load ptr, ptr %0, align 8, !tbaa !75     ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o
  store i32 %storemerge31, ptr %i.q, align 4, !tbaa !17
  %i.r = add i64 %i.o, 1
  store i64 %i.r, ptr %i.g, align 8, !tbaa !74
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n
  %i.t = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEPiPSA_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.s, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backERKi.exit unwind label %bb.e ; 0 uses

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backERKi.exit: ; preds = %bb.d, %bb.c
  %i.u = load i32, ptr %i.a, align 4, !tbaa !17
  %i.v = add nsw i32 %i.u, 1                      ; 3 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !17
  %.not = icmp eq i32 %i.v, 16
  br i1 %.not, label %bb.a, label %bb.b, !llvm.loop !77

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.ab

bb.f:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %0, align 8, !tbaa !75
  %i.y = load i64, ptr %i.f, align 8, !tbaa !79
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = icmp eq ptr %i.i, %i.z
  %i.ab = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 135, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.aa)
          to label %bb.g unwind label %bb.o       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !17
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !74  ; 3 uses
  %.not.i.i15 = icmp eq i64 %i.ac, %i.ad
  %i.ae = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  br i1 %.not.i.i15, label %bb.i, label %bb.h, !prof !76

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ad
  store i32 0, ptr %i.af, align 4, !tbaa !17
  %i.ag = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.g, align 8, !tbaa !74
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ac
  %i.ai = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ah, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14_crit_edge unwind label %bb.p ; 0 uses

._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14_crit_edge: ; preds = %bb.i
  %.pre = load i64, ptr %i.g, align 8, !tbaa !74
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14: ; preds = %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14_crit_edge, %bb.h
  %i.aj = phi i64 [ %.pre, %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14_crit_edge ], [ %i.ag, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ak = load i64, ptr %i.f, align 8, !tbaa !79
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp eq i64 %i.al, 17
  %i.an = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 137, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.am)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !79  ; 2 uses
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !74
  %.neg = add i64 %i.ao, 32
  %i.aq = sub i64 %.neg, %i.ap
  %i.ar = lshr i64 %i.aq, 1
  %i.as = icmp eq i64 %i.ao, %i.ar
  %i.at = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 139, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.as)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %0, align 8, !tbaa !75
  %i.av = icmp eq ptr %i.au, %i.e
  %i.aw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 140, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.av)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.ax = load i64, ptr %i.h, align 8, !tbaa !72  ; 3 uses
  %.not.i17 = icmp eq i64 %i.ax, 0
  br i1 %.not.i17, label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = udiv i64 %i.ax, 3
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp eq i64 %i.az, 22
  br label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit18

_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit18: ; preds = %bb.l, %bb.m
  %i.bb = phi i1 [ %i.ba, %bb.m ], [ false, %bb.l ]
  %i.bc = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.bb)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit18
  %i.bd = load i64, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.be = load i64, ptr %i.g, align 8, !tbaa !74  ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %.not1132 = icmp eq i32 %i.bg, 0
  br i1 %.not1132, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit13
  %.pre34 = load i64, ptr %i.h, align 8, !tbaa !72
  %.pre35 = load i64, ptr %i.g, align 8, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.bh = phi i64 [ %.pre35, %._crit_edge.loopexit ], [ %i.be, %bb.n ]
  %i.bi = phi i64 [ %.pre34, %._crit_edge.loopexit ], [ %i.bd, %bb.n ]
  %i.bj = icmp eq i64 %i.bi, %i.bh
  %i.bk = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.bj)
          to label %bb.t unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit26, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit, %._crit_edge, %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit18, %bb.k, %bb.j, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit14, %bb.f, %bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.p:                                             ; preds = %bb.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ab

.lr.ph:                                           ; preds = %bb.n, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit13
  %.033 = phi i32 [ %i.bu, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit13 ], [ 0, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.bn = load i64, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !74  ; 3 uses
  %.not.i.i19 = icmp eq i64 %i.bn, %i.bo
  %i.bp = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  br i1 %.not.i.i19, label %bb.r, label %bb.q, !prof !76

bb.q:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  store i32 0, ptr %i.bq, align 4, !tbaa !17
  %i.br = add i64 %i.bo, 1
  store i64 %i.br, ptr %i.g, align 8, !tbaa !74
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit13

bb.r:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bn
  %i.bt = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bs, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit13 unwind label %bb.s ; 0 uses

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit13: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.bu = add nuw nsw i32 %.033, 1                ; 2 uses
  %.not11 = icmp eq i32 %i.bu, %i.bg
  br i1 %.not11, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !80

bb.s:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.ab

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 -1, ptr %i.d, align 4, !tbaa !17
  %i.bw = load i64, ptr %i.h, align 8, !tbaa !72  ; 3 uses
  %i.bx = load i64, ptr %i.g, align 8, !tbaa !74  ; 3 uses
  %.not.i.i22 = icmp eq i64 %i.bw, %i.bx
  %i.by = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  br i1 %.not.i.i22, label %bb.v, label %bb.u, !prof !76

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bx
  store i32 -1, ptr %i.bz, align 4, !tbaa !17
  %i.ca = add i64 %i.bx, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.g, align 8, !tbaa !74
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit

bb.v:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw
  %i.cc = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cb, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.d)
          to label %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit_crit_edge unwind label %bb.aa ; 0 uses

._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit_crit_edge: ; preds = %bb.v
  %.pre36 = load i64, ptr %i.h, align 8, !tbaa !72
  %.pre37 = load i64, ptr %i.g, align 8, !tbaa !74
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit: ; preds = %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit_crit_edge, %bb.u
  %i.cd = phi i64 [ %.pre37, %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit_crit_edge ], [ %i.ca, %bb.u ]
  %i.ce = phi i64 [ %.pre36, %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit_crit_edge ], [ %i.bw, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.cf = sub i64 %i.ce, %i.cd
  %i.cg = icmp ugt i64 %i.cf, 8
  %i.ch = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 151, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.cg)
          to label %bb.w unwind label %bb.o       ; 0 uses

bb.w:                                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE9push_backEOi.exit
  %i.ci = load i64, ptr %i.h, align 8, !tbaa !72  ; 3 uses
  %.not.i25 = icmp eq i64 %i.ci, 0
  br i1 %.not.i25, label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit26, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = udiv i64 %i.ci, 3
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = icmp ugt i64 %i.ck, 22
  br label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit26

_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit26: ; preds = %bb.w, %bb.x
  %i.cm = phi i1 [ %i.cl, %bb.x ], [ false, %bb.w ]
  %i.cn = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 152, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_66v, i1 noundef zeroext %i.cm)
          to label %bb.y unwind label %bb.o       ; 0 uses

bb.y:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEE8capacityEv.exit26
  %i.co = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.co, null
  br i1 %.not.i.i27, label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = load i64, ptr %i.h, align 8, !tbaa !72
  %i.cq = shl i64 %i.cp, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cq) #23
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEED2Ev.exit

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEED2Ev.exit: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret void

bb.aa:                                            ; preds = %bb.v
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.s, %bb.p, %bb.o, %bb.e
  %.pn = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.bv, %bb.s ], [ %i.bl, %bb.o ], [ %i.cr, %bb.aa ], [ %i.bm, %bb.p ]
  %i.cs = load ptr, ptr %0, align 8, !tbaa !75    ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i28, label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEED2Ev.exit29, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ct = load i64, ptr %i.h, align 8, !tbaa !72
  %i.cu = shl i64 %i.ct, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cu) #23
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEED2Ev.exit29

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm3EEEED2Ev.exit29: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z23test_stored_reloc_on_90v() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit:
  %0 = alloca %"class.boost::container::devector.3", align 8 ; 24 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  %i.g = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #24 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 16, ptr %i.h, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 21 uses
  store i64 16, ptr %i.i, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 17 uses
  store i64 32, ptr %i.j, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !17
  br label %bb.b

bb.a:                                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backERKi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.l = load i64, ptr %i.j, align 8, !tbaa !86
  %i.m = load i64, ptr %i.i, align 8, !tbaa !88
  %i.n = icmp eq i64 %i.l, %i.m
  %i.o = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 174, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.n)
          to label %bb.f unwind label %bb.o       ; 0 uses

bb.b:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backERKi.exit
  %storemerge51 = phi i32 [ 0, %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit ], [ %i.x, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backERKi.exit ]
  %i.p = load i64, ptr %i.j, align 8, !tbaa !86   ; 2 uses
  %i.q = load i64, ptr %i.i, align 8, !tbaa !88   ; 3 uses
  %.not.i.i = icmp eq i64 %i.p, %i.q
  %i.r = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !76

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q
  store i32 %storemerge51, ptr %i.s, align 4, !tbaa !17
  %i.t = add i64 %i.q, 1
  store i64 %i.t, ptr %i.i, align 8, !tbaa !88
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backERKi.exit

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  %i.v = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JRKiEEEEEPiPSA_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.u, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backERKi.exit unwind label %bb.e ; 0 uses

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backERKi.exit: ; preds = %bb.d, %bb.c
  %i.w = load i32, ptr %i.a, align 4, !tbaa !17
  %i.x = add nsw i32 %i.w, 1                      ; 3 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !17
  %.not = icmp eq i32 %i.x, 16
  br i1 %.not, label %bb.a, label %bb.b, !llvm.loop !90

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.al

bb.f:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %0, align 8, !tbaa !89
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !91
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = icmp eq ptr %i.k, %i.ab
  %i.ad = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 175, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.ac)
          to label %bb.g unwind label %bb.o       ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !17
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !88  ; 3 uses
  %.not.i.i25 = icmp eq i64 %i.ae, %i.af
  %i.ag = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  br i1 %.not.i.i25, label %bb.i, label %bb.h, !prof !76

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  store i32 0, ptr %i.ah, align 4, !tbaa !17
  %i.ai = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ai, ptr %i.i, align 8, !tbaa !88
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ae
  %i.ak = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.aj, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24_crit_edge unwind label %bb.p ; 0 uses

._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24_crit_edge: ; preds = %bb.i
  %.pre = load i64, ptr %i.i, align 8, !tbaa !88
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24: ; preds = %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24_crit_edge, %bb.h
  %i.al = phi i64 [ %.pre, %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24_crit_edge ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.am = load i64, ptr %i.h, align 8, !tbaa !91
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp eq i64 %i.an, 17
  %i.ap = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 177, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.ao)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !91  ; 2 uses
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !88
  %.neg = add i64 %i.aq, 32
  %i.as = sub i64 %.neg, %i.ar
  %i.at = lshr i64 %i.as, 1
  %i.au = icmp eq i64 %i.aq, %i.at
  %i.av = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 179, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.au)
          to label %bb.k unwind label %bb.o       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %0, align 8, !tbaa !89
  %i.ax = icmp eq ptr %i.aw, %i.g
  %i.ay = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 180, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.ax)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.az = load i64, ptr %i.j, align 8, !tbaa !86  ; 3 uses
  %.not.i27 = icmp eq i64 %i.az, 0
  br i1 %.not.i27, label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit28, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = udiv i64 %i.az, 10
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp eq i64 %i.bb, 29
  br label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit28

_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit28: ; preds = %bb.l, %bb.m
  %i.bd = phi i1 [ %i.bc, %bb.m ], [ false, %bb.l ]
  %i.be = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 181, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.bd)
          to label %bb.n unwind label %bb.o       ; 0 uses

bb.n:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit28
  %i.bf = load i64, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %i.bg = load i64, ptr %i.i, align 8, !tbaa !88  ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %.not1852 = icmp eq i32 %i.bi, 0
  br i1 %.not1852, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit23
  %.pre59 = load i64, ptr %i.j, align 8, !tbaa !86
  %.pre60 = load i64, ptr %i.i, align 8, !tbaa !88
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %i.bj = phi i64 [ %.pre60, %._crit_edge.loopexit ], [ %i.bg, %bb.n ]
  %i.bk = phi i64 [ %.pre59, %._crit_edge.loopexit ], [ %i.bf, %bb.n ]
  %i.bl = icmp eq i64 %i.bk, %i.bj
  %i.bm = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.bl)
          to label %bb.t unwind label %bb.o       ; 0 uses

bb.o:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit44, %._crit_edge58, %bb.y, %bb.x, %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit36, %._crit_edge, %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit28, %bb.k, %bb.j, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit24, %bb.f, %bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.p:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.al

.lr.ph:                                           ; preds = %bb.n, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit23
  %.01553 = phi i32 [ %i.bw, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit23 ], [ 0, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !17
  %i.bp = load i64, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %i.bq = load i64, ptr %i.i, align 8, !tbaa !88  ; 3 uses
  %.not.i.i29 = icmp eq i64 %i.bp, %i.bq
  %i.br = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  br i1 %.not.i.i29, label %bb.r, label %bb.q, !prof !76

bb.q:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bq
  store i32 0, ptr %i.bs, align 4, !tbaa !17
  %i.bt = add i64 %i.bq, 1
  store i64 %i.bt, ptr %i.i, align 8, !tbaa !88
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit23

bb.r:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  %i.bv = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bu, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit23 unwind label %bb.s ; 0 uses

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit23: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.bw = add nuw nsw i32 %.01553, 1              ; 2 uses
  %.not18 = icmp eq i32 %i.bw, %i.bi
  br i1 %.not18, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !92

bb.s:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.al

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 -1, ptr %i.d, align 4, !tbaa !17
  %i.by = load i64, ptr %i.j, align 8, !tbaa !86  ; 3 uses
  %i.bz = load i64, ptr %i.i, align 8, !tbaa !88  ; 3 uses
  %.not.i.i32 = icmp eq i64 %i.by, %i.bz
  %i.ca = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  br i1 %.not.i.i32, label %bb.v, label %bb.u, !prof !76

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bz
  store i32 -1, ptr %i.cb, align 4, !tbaa !17
  %i.cc = add i64 %i.bz, 1
  store i64 %i.cc, ptr %i.i, align 8, !tbaa !88
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22

bb.v:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.by
  %i.ce = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cd, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.d)
          to label %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22_crit_edge unwind label %bb.aa ; 0 uses

._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22_crit_edge: ; preds = %bb.v
  %.pre61 = load i64, ptr %i.j, align 8, !tbaa !86
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22: ; preds = %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22_crit_edge, %bb.u
  %i.cf = phi i64 [ %.pre61, %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22_crit_edge ], [ %i.by, %bb.u ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %.not.i35 = icmp eq i64 %i.cf, 0
  br i1 %.not.i35, label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit36, label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22
  %i.cg = udiv i64 %i.cf, 10
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp eq i64 %i.ch, 29
  br label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit36

_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit36: ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22, %bb.w
  %i.cj = phi i1 [ %i.ci, %bb.w ], [ false, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit22 ]
  %i.ck = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 191, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.cj)
          to label %bb.x unwind label %bb.o       ; 0 uses

bb.x:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit36
  %i.cl = load i64, ptr %i.h, align 8, !tbaa !91  ; 2 uses
  %i.cm = load i64, ptr %i.i, align 8, !tbaa !88
  %.neg48 = add i64 %i.cl, 32
  %i.cn = sub i64 %.neg48, %i.cm
  %i.co = lshr i64 %i.cn, 1
  %i.cp = icmp eq i64 %i.cl, %i.co
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.cp)
          to label %bb.y unwind label %bb.o       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %0, align 8, !tbaa !89
  %i.cs = icmp eq ptr %i.cr, %i.g
  %i.ct = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 193, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.cs)
          to label %bb.z unwind label %bb.o       ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.cu = load i64, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !88  ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i32                  ; 2 uses
  %.not1954 = icmp eq i32 %i.cx, 0
  br i1 %.not1954, label %._crit_edge58, label %.lr.ph57

._crit_edge58.loopexit:                           ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit21
  %.pre62 = load i64, ptr %i.j, align 8, !tbaa !86
  %.pre63 = load i64, ptr %i.i, align 8, !tbaa !88
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge58.loopexit, %bb.z
  %i.cy = phi i64 [ %.pre63, %._crit_edge58.loopexit ], [ %i.cv, %bb.z ]
  %i.cz = phi i64 [ %.pre62, %._crit_edge58.loopexit ], [ %i.cu, %bb.z ]
  %i.da = icmp eq i64 %i.cz, %i.cy
  %i.db = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.da)
          to label %bb.ae unwind label %bb.o      ; 0 uses

bb.aa:                                            ; preds = %bb.v
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.al

.lr.ph57:                                         ; preds = %bb.z, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit21
  %.055 = phi i32 [ %i.dk, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit21 ], [ 0, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i32 0, ptr %i.e, align 4, !tbaa !17
  %i.dd = load i64, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %i.de = load i64, ptr %i.i, align 8, !tbaa !88  ; 3 uses
  %.not.i.i37 = icmp eq i64 %i.dd, %i.de
  %i.df = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  br i1 %.not.i.i37, label %bb.ac, label %bb.ab, !prof !76

bb.ab:                                            ; preds = %.lr.ph57
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.de
  store i32 0, ptr %i.dg, align 4, !tbaa !17
  %i.dh = add i64 %i.de, 1
  store i64 %i.dh, ptr %i.i, align 8, !tbaa !88
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit21

bb.ac:                                            ; preds = %.lr.ph57
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dd
  %i.dj = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.di, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit21 unwind label %bb.ad ; 0 uses

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit21: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.dk = add nuw nsw i32 %.055, 1                ; 2 uses
  %.not19 = icmp eq i32 %i.dk, %i.cx
  br i1 %.not19, label %._crit_edge58.loopexit, label %.lr.ph57, !llvm.loop !93

bb.ad:                                            ; preds = %bb.ac
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.al

bb.ae:                                            ; preds = %._crit_edge58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i32 -1, ptr %i.f, align 4, !tbaa !17
  %i.dm = load i64, ptr %i.j, align 8, !tbaa !86  ; 3 uses
  %i.dn = load i64, ptr %i.i, align 8, !tbaa !88  ; 3 uses
  %.not.i.i40 = icmp eq i64 %i.dm, %i.dn
  %i.do = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  br i1 %.not.i.i40, label %bb.ag, label %bb.af, !prof !76

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dn
  store i32 -1, ptr %i.dp, align 4, !tbaa !17
  %i.dq = add i64 %i.dn, 1
  store i64 %i.dq, ptr %i.i, align 8, !tbaa !88
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dm
  %i.ds = invoke noundef ptr @_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dr, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.f)
          to label %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit_crit_edge unwind label %bb.ak ; 0 uses

._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit_crit_edge: ; preds = %bb.ag
  %.pre64 = load i64, ptr %i.j, align 8, !tbaa !86
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit: ; preds = %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit_crit_edge, %bb.af
  %i.dt = phi i64 [ %.pre64, %._ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit_crit_edge ], [ %i.dm, %bb.af ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %.not.i43 = icmp eq i64 %i.dt, 0
  br i1 %.not.i43, label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit44, label %bb.ah

bb.ah:                                            ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit
  %i.du = udiv i64 %i.dt, 10
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp ugt i64 %i.dv, 29
  br label %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit44

_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit44: ; preds = %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit, %bb.ah
  %i.dx = phi i1 [ %i.dw, %bb.ah ], [ false, %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE9push_backEOi.exit ]
  %i.dy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef nonnull @__PRETTY_FUNCTION__._Z23test_stored_reloc_on_90v, i1 noundef zeroext %i.dx)
          to label %bb.ai unwind label %bb.o      ; 0 uses

bb.ai:                                            ; preds = %_ZNK5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEE8capacityEv.exit44
  %i.dz = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i45, label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ea = load i64, ptr %i.j, align 8, !tbaa !86
  %i.eb = shl i64 %i.ea, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eb) #23
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEED2Ev.exit

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEED2Ev.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  ret void

bb.ak:                                            ; preds = %bb.ag
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ad, %bb.aa, %bb.s, %bb.p, %bb.o, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.bx, %bb.s ], [ %i.dl, %bb.ad ], [ %i.bn, %bb.o ], [ %i.ec, %bb.ak ], [ %i.dc, %bb.aa ], [ %i.bo, %bb.p ]
  %i.ed = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i46, label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEED2Ev.exit47, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ee = load i64, ptr %i.j, align 8, !tbaa !86
  %i.ef = shl i64 %i.ee, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ef) #23
  br label %_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEED2Ev.exit47

_ZN5boost9container8devectorIiNS0_13new_allocatorIiEENS0_12devector_optIvvLm10EEEED2Ev.exit47: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #3 {
bb.a:
  tail call void @_Z21test_growth_factor_50v()
  tail call void @_Z21test_growth_factor_60v()
  tail call void @_Z22test_growth_factor_100v()
  tail call void @_Z26test_stored_size_type_implIhN5boost9container8devectorIhNS1_13new_allocatorIhEENS1_12devector_optIvhLm0EEEEEEvv()
  tail call void @_Z26test_stored_size_type_implIhN5boost9container8devectorIhNS1_9allocatorIhLj2ELj0EEENS1_12devector_optIvhLm0EEEEEEvv()
  tail call void @_Z26test_stored_size_type_implItN5boost9container8devectorIhNS1_13new_allocatorIhEENS1_12devector_optIvtLm0EEEEEEvv()
  tail call void @_Z26test_stored_size_type_implItN5boost9container8devectorIhNS1_9allocatorIhLj2ELj0EEENS1_12devector_optIvtLm0EEEEEEvv()
  tail call void @_Z23test_stored_reloc_on_66v()
  tail call void @_Z23test_stored_reloc_on_90v()
  %i.a = tail call noundef i32 @_ZN5boost13report_errorsEv()
  ret i32 %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13report_errorsEv() local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail12test_resultsEv.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !22
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !25
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #23 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #23
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.a, %bb.b, %bb.c
  store i8 1, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !22
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !17 ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.18, i64 noundef 19) ; 0 uses
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !26
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !44
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !49
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !50
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  br label %bb.l

bb.h:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.e) ; 6 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.19, i64 noundef 6) ; 0 uses
  %i.y = icmp ne i32 %i.e, 1                      ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.21, ptr @.str.20
  %i.aa = zext i1 %i.y to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.22, i64 noundef 10) ; 0 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !26
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #25
end_hunk_0
