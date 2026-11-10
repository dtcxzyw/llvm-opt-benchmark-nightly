Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/datalog_parser?download=true
inline.NumInlined: 1550
inline.NumDeleted: 639
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE12expand_tableEv:bb.a

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.prol ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i32 [ %i.i, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  store i32 0, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !120
  %i.i = add i32 %.057.i.i.i.i.i.prol, -1         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !604

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i32 [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.i, %.lr.ph.i.i.i.i.i.prol ]
  %i.k = icmp ult i32 %i.c, 4
  br i1 %i.k, label %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i32 [ %i.w, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i.i, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i32 0, ptr %i.l, align 4, !tbaa !119
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store i32 0, ptr %i.n, align 8, !tbaa !118
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store ptr null, ptr %i.p, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i32 0, ptr %i.q, align 8, !tbaa !118
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 52
  store i32 0, ptr %i.r, align 4, !tbaa !119
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  store ptr null, ptr %i.s, align 8, !tbaa !120
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i32 0, ptr %i.t, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 76
  store i32 0, ptr %i.u, align 4, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store ptr null, ptr %i.v, align 8, !tbaa !120
  %i.w = add i32 %.057.i.i.i.i.i, -4              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %.not.i.i.i.i.i.3 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !605

_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !121    ; 3 uses
  %i.z = load i32, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.aa = add i32 %i.c, -1
  %i.ab = zext i32 %i.z to i64
  %.idx.i = mul nuw nsw i64 %i.ab, 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.d
  %.not38.i = icmp eq i32 %i.z, 0
  br i1 %.not38.i, label %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit, %bb.g
  %.02839.i = phi ptr [ %i.at, %bb.g ], [ %i.y, %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.02839.i, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !119
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph41.i
  %i.ah = load i32, ptr %.02839.i, align 8, !tbaa !118
  %i.ai = and i32 %i.ah, %i.aa                    ; 3 uses
  %i.aj = zext i32 %i.ai to i64
  %.idx43.i = mul nuw nsw i64 %i.aj, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx43.i ; 2 uses
  %.not2933.i = icmp eq i32 %i.ai, %i.c
  br i1 %.not2933.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d, %bb.b
  %.not3035.i = icmp eq i32 %i.ai, 0
  br i1 %.not3035.i, label %._crit_edge.i, label %.lr.ph37.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.034.i = phi ptr [ %i.ao, %bb.d ], [ %i.ak, %bb.b ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !119
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.034.i, ptr noundef nonnull align 8 dereferenceable(24) %.02839.i, i64 24, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.034.i, i64 24 ; 2 uses
  %.not29.i = icmp eq ptr %i.ao, %i.ad
  br i1 %.not29.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !606

.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.f
  %.136.i = phi ptr [ %i.as, %bb.f ], [ %i.f, %.preheader.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.136.i, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !119
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.136.i, ptr noundef nonnull align 8 dereferenceable(24) %.02839.i, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph37.i
  %i.as = getelementptr inbounds nuw i8, ptr %.136.i, i64 24 ; 2 uses
  %.not30.i = icmp eq ptr %i.as, %i.ak
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !607

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.17, i32 noundef 213, ptr noundef nonnull @.str.18)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.e, %bb.c, %.lr.ph41.i
  %i.at = getelementptr inbounds nuw i8, ptr %.02839.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.at, %i.ac
  br i1 %.not.i, label %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit.loopexit, label %.lr.ph41.i, !llvm.loop !608

_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit.loopexit: ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !121
  br label %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit

_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit: ; preds = %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit.loopexit, %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit
  %i.au = phi ptr [ %.pre, %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit.loopexit ], [ %i.y, %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE11alloc_tableEj.exit ] ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE12delete_tableEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.au)
  br label %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE12delete_tableEv.exit

_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE12delete_tableEv.exit: ; preds = %_ZN14core_hashtableI17default_map_entryIm6symbolEN9table2mapIS2_11uint64_hash10default_eqImEE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS2_jSB_j.exit, %bb.h
  store ptr %i.f, ptr %0, align 8, !tbaa !121
  store i32 %i.c, ptr %i.a, align 8, !tbaa !113
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #15 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN15wpa_parser_impl14parse_rel_lineEPcR7svectorImjE(ptr noundef nonnull align 8 dereferenceable(325) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi ptr [ %1, %bb.a ], [ %i.d, %bb.c ]  ; 3 uses
  %i.c = load i8, ptr %.0.i, align 1, !tbaa !63
  switch i8 %i.c, label %bb.c [
    i8 0, label %_ZN15wpa_parser_impl15cut_off_commentEPc.exit
    i8 35, label %_ZN15wpa_parser_impl15cut_off_commentEPc.exit
    i8 10, label %_ZN15wpa_parser_impl15cut_off_commentEPc.exit
    i8 13, label %_ZN15wpa_parser_impl15cut_off_commentEPc.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !15

_ZN15wpa_parser_impl15cut_off_commentEPc.exit:    ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  store i8 0, ptr %.0.i, align 1, !tbaa !63
  %i.e = load i8, ptr %1, align 1, !tbaa !63
  %i.f = icmp ne i8 %i.e, 0                       ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.t

bb.d:                                             ; preds = %_ZN15wpa_parser_impl15cut_off_commentEPc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr %1, ptr %i.a, align 8, !tbaa !188
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %i.g = phi ptr [ %1, %bb.d ], [ %.be, %.backedge ] ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !63
  switch i8 %i.h, label %bb.g [
    i8 32, label %bb.f
    i8 0, label %bb.r
  ]

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !188
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %_ZN6vectorImLb0EjE9push_backERKm.exit
  %.be = phi ptr [ %i.i, %bb.f ], [ %.promoted16, %_ZN6vectorImLb0EjE9push_backERKm.exit ]
  br label %bb.e, !llvm.loop !609

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.j = call noundef zeroext i1 @_ZN7datalog11read_uint64ERPKcRm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.j, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = load i32, ptr %i.l, align 8, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75
  invoke void (ptr, ptr, ...) @_ZN17default_exceptionC1ENS_3fmtEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull @.str.92, i32 noundef %i.m, ptr noundef %i.o)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #30
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !63
  switch i8 %i.r, label %bb.l [
    i8 32, label %bb.o
    i8 0, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.s = call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.u = load i32, ptr %i.t, align 8, !tbaa !280
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !188
  invoke void (ptr, ptr, ...) @_ZN17default_exceptionC1ENS_3fmtEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull @.str.93, i32 noundef %i.u, ptr noundef %i.w, ptr noundef %i.x)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #30
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %bb.k, %bb.k
  %i.z = load ptr, ptr %2, align 8, !tbaa !284    ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !176 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !176
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.q, label %_ZN6vectorImLb0EjE9push_backERKm.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZN6vectorImLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !284 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !176
  %.promoted.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  br label %_ZN6vectorImLb0EjE9push_backERKm.exit

_ZN6vectorImLb0EjE9push_backERKm.exit:            ; preds = %bb.p, %bb.q
  %.promoted16 = phi ptr [ %.promoted.pre, %bb.q ], [ %i.q, %bb.p ]
  %i.ag = phi i32 [ %.pre2.i, %bb.q ], [ %i.ac, %bb.p ] ; 2 uses
  %i.ah = phi ptr [ %.pre.i, %bb.q ], [ %i.z, %bb.p ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.aj = zext i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i64, ptr %i.b, align 8, !tbaa !209
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !209
  %i.am = add i32 %i.ag, 1
  store i32 %i.am, ptr %i.ai, align 4, !tbaa !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.backedge

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.t

bb.s:                                             ; preds = %bb.n, %bb.j
  %.sink = phi ptr [ %i.s, %bb.n ], [ %i.k, %bb.j ]
  %.pn = phi { ptr, i32 } [ %i.y, %bb.n ], [ %i.p, %bb.j ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %_ZN15wpa_parser_impl15cut_off_commentEPc.exit, %bb.r
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN15wpa_parser_impl18inp_num_to_elementEP4sortmRm(ptr noundef nonnull align 8 dereferenceable(325) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.symbol, align 8              ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = icmp eq ptr %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %1, %i.e
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200, !nonnull !109, !align !110
  %i.i = tail call noundef i32 @_ZN7datalog7context19get_constant_numberEP4sortm(ptr noundef nonnull align 8 dereferenceable(3028) %i.h, ptr noundef %1, i64 noundef %2)
  %i.j = zext i32 %i.i to i64
  store i64 %i.j, ptr %3, align 8, !tbaa !209
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.m = load i8, ptr %i.l, align 4, !tbaa !136, !range !145, !noundef !109
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !200, !nonnull !109, !align !110
  %i.q = tail call noundef i32 @_ZN7datalog7context19get_constant_numberEP4sortm(ptr noundef nonnull align 8 dereferenceable(3028) %i.p, ptr noundef %1, i64 noundef 0)
  %i.r = zext i32 %i.q to i64
  store i64 %i.r, ptr %3, align 8, !tbaa !209
  br label %bb.aj

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.94)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !200, !nonnull !109, !align !110
  %.sroa.0.0.copyload.i = load ptr, ptr %4, align 8, !tbaa !188
  %i.u = call noundef i32 @_ZN7datalog7context19get_constant_numberEP4sort6symbol(ptr noundef nonnull align 8 dereferenceable(3028) %i.t, ptr noundef %1, ptr %.sroa.0.0.copyload.i)
  %i.v = zext i32 %i.u to i64
  store i64 %i.v, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.aj

bb.g:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !188  ; 4 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 3 uses
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %_ZNK14core_hashtableI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEEN9table2mapIS8_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENSC_13entry_eq_procEE8get_hashERK9_key_dataIS1_S7_E.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = and i64 %i.y, 7
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = lshr i64 %i.y, 3
  %i.ae = trunc i64 %i.ad to i32
  br label %_ZNK14core_hashtableI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEEN9table2mapIS8_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENSC_13entry_eq_procEE8get_hashERK9_key_dataIS1_S7_E.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !209
  %i.ah = trunc i64 %i.ag to i32
  br label %_ZNK14core_hashtableI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEEN9table2mapIS8_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENSC_13entry_eq_procEE8get_hashERK9_key_dataIS1_S7_E.exit.i.i

_ZNK14core_hashtableI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEEN9table2mapIS8_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENSC_13entry_eq_procEE8get_hashERK9_key_dataIS1_S7_E.exit.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.j ], [ %i.ae, %bb.i ], [ -1640531495, %bb.g ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !124 ; 3 uses
  %i.ak = add i32 %i.aj, -1
  %i.al = and i32 %i.ak, %.0.i.i.i.i.i.i          ; 2 uses
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !127 ; 3 uses
  %i.an = zext i32 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.an
  %.not30.i.i = icmp eq i32 %i.al, %i.aj
  br i1 %.not30.i.i, label %.lr.ph34.i.i.preheader, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK14core_hashtableI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEEN9table2mapIS8_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENSC_13entry_eq_procEE8get_hashERK9_key_dataIS1_S7_E.exit.i.i
  %i.ap = zext i32 %i.al to i64
  %.idx.i.i = mul nuw nsw i64 %i.ap, 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.m
  %.031.i.i = phi ptr [ %i.ay, %bb.m ], [ %i.aq, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !261
  %cond = icmp eq i32 %i.as, 2
  br i1 %cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.at = load i32, ptr %.031.i.i, align 8, !tbaa !285
  %i.au = icmp eq i32 %i.at, %.0.i.i.i.i.i.i
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !120
  %i.ax = icmp eq ptr %i.aw, %i.z
  br i1 %i.ax, label %_ZNK9table2mapI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEE16symbol_hash_proc14symbol_eq_procE9find_coreERKS1_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i, %bb.l, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, %i.ao
  br i1 %.not.i.i, label %.lr.ph34.i.i.preheader, label %.lr.ph.i.i, !llvm.loop !610

.lr.ph34.i.i.preheader:                           ; preds = %bb.m, %_ZNK14core_hashtableI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEEN9table2mapIS8_16symbol_hash_proc14symbol_eq_procE15entry_hash_procENSC_13entry_eq_procEE8get_hashERK9_key_dataIS1_S7_E.exit.i.i
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.lr.ph34.i.i.preheader, %bb.p
  %.133.i.i = phi ptr [ %i.bg, %bb.p ], [ %i.am, %.lr.ph34.i.i.preheader ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !261
  %cond51 = icmp eq i32 %i.ba, 2
  br i1 %cond51, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph34.i.i
  %i.bb = load i32, ptr %.133.i.i, align 8, !tbaa !285
  %i.bc = icmp eq i32 %i.bb, %.0.i.i.i.i.i.i
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !120
  %i.bf = icmp eq ptr %i.be, %i.z
  br i1 %i.bf, label %_ZNK9table2mapI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEE16symbol_hash_proc14symbol_eq_procE9find_coreERKS1_.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph34.i.i, %bb.o, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %.133.i.i, i64 24
  br label %.lr.ph34.i.i

_ZNK9table2mapI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEE16symbol_hash_proc14symbol_eq_procE9find_coreERKS1_.exit: ; preds = %bb.l, %bb.o
  %.026.i.i = phi ptr [ %.133.i.i, %bb.o ], [ %.031.i.i, %bb.l ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !262 ; 2 uses
  %i.bj = trunc i64 %2 to i32                     ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !274 ; 3 uses
  %i.bm = add i32 %i.bl, -1
  %i.bn = and i32 %i.bm, %i.bj                    ; 3 uses
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !265 ; 3 uses
  %i.bp = zext i32 %i.bn to i64
  %.idx.i.i23 = shl nuw nsw i64 %i.bp, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i23 ; 2 uses
  %i.br = zext i32 %i.bl to i64
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.br
  %.not30.i.i24 = icmp eq i32 %i.bn, %i.bl
  br i1 %.not30.i.i24, label %.preheader.i.i29, label %.lr.ph.i.i25

.preheader.i.i29:                                 ; preds = %bb.s, %_ZNK9table2mapI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEE16symbol_hash_proc14symbol_eq_procE9find_coreERKS1_.exit
  %.not2732.i.i30 = icmp eq i32 %i.bn, 0
  br i1 %.not2732.i.i30, label %.loopexit55, label %.lr.ph34.i.i31

.lr.ph.i.i25:                                     ; preds = %_ZNK9table2mapI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEE16symbol_hash_proc14symbol_eq_procE9find_coreERKS1_.exit, %bb.s
  %.031.i.i26 = phi ptr [ %i.ca, %bb.s ], [ %i.bq, %_ZNK9table2mapI17default_map_entryI6symbolP9hashtableIm11uint64_hash10default_eqImEEE16symbol_hash_proc14symbol_eq_procE9find_coreERKS1_.exit ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.031.i.i26, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !279
  switch i32 %i.bu, label %bb.s [
    i32 2, label %bb.q
    i32 0, label %.loopexit55
  ]

bb.q:                                             ; preds = %.lr.ph.i.i25
  %i.bv = load i32, ptr %.031.i.i26, align 8, !tbaa !278
  %i.bw = icmp eq i32 %i.bv, %i.bj
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.031.i.i26, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !209
  %i.bz = icmp eq i64 %i.by, %2
  br i1 %i.bz, label %_ZNK14core_hashtableI18default_hash_entryImE11uint64_hash10default_eqImEE8containsERKm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph.i.i25
  %i.ca = getelementptr inbounds nuw i8, ptr %.031.i.i26, i64 16 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.ca, %i.bs
  br i1 %.not.i.i28, label %.preheader.i.i29, label %.lr.ph.i.i25, !llvm.loop !611

.lr.ph34.i.i31:                                   ; preds = %.preheader.i.i29, %bb.v
  %.133.i.i32 = phi ptr [ %i.ci, %bb.v ], [ %i.bo, %.preheader.i.i29 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.133.i.i32, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !279
  switch i32 %i.cc, label %bb.v [
    i32 2, label %bb.t
    i32 0, label %.loopexit55
  ]

bb.t:                                             ; preds = %.lr.ph34.i.i31
  %i.cd = load i32, ptr %.133.i.i32, align 8, !tbaa !278
  %i.ce = icmp eq i32 %i.cd, %i.bj
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.133.i.i32, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !209
  %i.ch = icmp eq i64 %i.cg, %2
  br i1 %i.ch, label %_ZNK14core_hashtableI18default_hash_entryImE11uint64_hash10default_eqImEE8containsERKm.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph34.i.i31
  %i.ci = getelementptr inbounds nuw i8, ptr %.133.i.i32, i64 16 ; 2 uses
  %.not27.i.i33 = icmp eq ptr %i.ci, %i.bq
  br i1 %.not27.i.i33, label %.loopexit55, label %.lr.ph34.i.i31, !llvm.loop !612

.loopexit55:                                      ; preds = %.lr.ph.i.i25, %.lr.ph34.i.i31, %bb.v, %.preheader.i.i29
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !280
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZNK6symbol3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.cn = load ptr, ptr %5, align 8, !tbaa !75
  invoke void (ptr, ...) @_Z11warning_msgPKcz(ptr noundef nonnull @.str.95, i64 noundef %2, i32 noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.cn)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.loopexit55
  %i.co = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !63
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.aj

bb.x:                                             ; preds = %.loopexit55
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %5, align 8, !tbaa !75    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.x
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !63
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ai

_ZNK14core_hashtableI18default_hash_entryImE11uint64_hash10default_eqImEE8containsERKm.exit: ; preds = %bb.r, %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !136, !range !145, !noundef !109
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNK14core_hashtableI18default_hash_entryImE11uint64_hash10default_eqImEE8containsERKm.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !200, !nonnull !109, !align !110
  %i.de = tail call noundef i32 @_ZN7datalog7context19get_constant_numberEP4sortm(ptr noundef nonnull align 8 dereferenceable(3028) %i.dd, ptr noundef nonnull %1, i64 noundef %2)
  %i.df = zext i32 %i.de to i64
  store i64 %i.df, ptr %3, align 8, !tbaa !209
  br label %bb.aj

bb.z:                                             ; preds = %_ZNK14core_hashtableI18default_hash_entryImE11uint64_hash10default_eqImEE8containsERKm.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !113 ; 3 uses
  %i.dj = add i32 %i.di, -1
  %i.dk = and i32 %i.dj, %i.bj                    ; 3 uses
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !121 ; 3 uses
  %i.dm = zext i32 %i.dk to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.dm, 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i.i ; 2 uses
  %i.do = zext i32 %i.di to i64
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.do
  %.not30.i.i.i = icmp eq i32 %i.dk, %i.di
  br i1 %.not30.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ac, %bb.z
  %.not2732.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not2732.i.i.i, label %.loopexit, label %.lr.ph34.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.z, %bb.ac
  %.031.i.i.i = phi ptr [ %i.dx, %bb.ac ], [ %i.dn, %bb.z ] ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !119
  switch i32 %i.dr, label %bb.ac [
    i32 2, label %bb.aa
    i32 0, label %.loopexit
  ]

bb.aa:                                            ; preds = %.lr.ph.i.i.i
  %i.ds = load i32, ptr %.031.i.i.i, align 8, !tbaa !118
  %i.dt = icmp eq i32 %i.ds, %i.bj
  br i1 %i.dt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.du = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !209
  %i.dw = icmp eq i64 %i.dv, %2
  br i1 %i.dw, label %.loopexit52, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dx, %i.dp
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !613

.lr.ph34.i.i.i:                                   ; preds = %.preheader.i.i.i, %bb.af
  %.133.i.i.i = phi ptr [ %i.ef, %bb.af ], [ %i.dl, %.preheader.i.i.i ] ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !119
  switch i32 %i.dz, label %bb.af [
    i32 2, label %bb.ad
    i32 0, label %.loopexit
  ]

bb.ad:                                            ; preds = %.lr.ph34.i.i.i
  %i.ea = load i32, ptr %.133.i.i.i, align 8, !tbaa !118
  %i.eb = icmp eq i32 %i.ea, %i.bj
  br i1 %i.eb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ec = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !209
  %i.ee = icmp eq i64 %i.ed, %2
  br i1 %i.ee, label %.loopexit52, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.lr.ph34.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.133.i.i.i, i64 24 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.ef, %i.dn
  br i1 %.not27.i.i.i, label %.loopexit, label %.lr.ph34.i.i.i, !llvm.loop !614

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.af, %.lr.ph34.i.i.i, %.preheader.i.i.i
  %i.eg = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !280
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !75
  invoke void (ptr, ptr, ...) @_ZN17default_exceptionC1ENS_3fmtEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %i.eg, ptr noundef nonnull @.str.96, i64 noundef %2, i32 noundef %i.ei, ptr noundef %i.ek)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  tail call void @__cxa_throw(ptr nonnull %i.eg, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #30
  unreachable

bb.ah:                                            ; preds = %.loopexit
  %i.el = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.eg) #27
  br label %bb.ai

.loopexit52:                                      ; preds = %bb.ab, %bb.ae
  %.026.i.i.i = phi ptr [ %.133.i.i.i, %bb.ae ], [ %.031.i.i.i, %bb.ab ]
  %i.em = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !188
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !200, !nonnull !109, !align !110
  %i.er = tail call noundef i32 @_ZN7datalog7context19get_constant_numberEP4sort6symbol(ptr noundef nonnull align 8 dereferenceable(3028) %i.eq, ptr noundef nonnull %1, ptr %i.eo)
  %i.es = zext i32 %i.er to i64
  store i64 %i.es, ptr %3, align 8, !tbaa !209
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn = phi { ptr, i32 } [ %i.el, %bb.ah ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ]
  resume { ptr, i32 } %.pn

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.y, %.loopexit52, %bb.e, %bb.f, %bb.b
  %.1 = phi i1 [ true, %bb.b ], [ true, %bb.e ], [ true, %bb.f ], [ true, %.loopexit52 ], [ true, %bb.y ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.1
}

declare void @_ZN7datalog7context14add_table_factEP9func_declRK7svectorImjE(ptr noundef nonnull align 8 dereferenceable(3028), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6vectorImLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !284    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorImLb0EjE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN6vectorImLb0EjE7destroyEv.exit unwind label %bb.c

_ZN6vectorImLb0EjE7destroyEv.exit:                ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorImLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !284    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !176
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !176
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !284
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !176  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 3
  %i.l = add i32 %i.k, 8                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 3
  %i.n = add i32 %i.m, 8
  %.not27 = icmp ugt i32 %i.l, %i.n
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 40) #27 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !61
  %i.r = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !62   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !75
  %i.y = load i64, ptr %i.s, align 8, !tbaa !63
  store i64 %i.y, ptr %i.q, align 8, !tbaa !63
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !62
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !62
  store ptr %i.s, ptr %1, align 8, !tbaa !75
  store i64 0, ptr %i.aa, align 8, !tbaa !62
  store i8 0, ptr %i.s, align 8, !tbaa !63
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #30
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !75    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !63
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @__cxa_free_exception(ptr %i.o) #27
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !284
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !176
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

end_hunk_0
begin_hunk_1_@bcmp
!414 = !{!"_ZTS19ref_manager_wrapperIN7datalog4ruleENS0_12rule_managerEE", !95, i64 0}
!415 = !{!"_ZTS15ref_vector_coreIN7datalog4ruleE19ref_manager_wrapperIS1_NS0_12rule_managerEEE", !414, i64 0, !383, i64 8}
!416 = !{!"_ZTS10ref_vectorIN7datalog4ruleENS0_12rule_managerEE", !415, i64 0}
!417 = !{!"p1 _ZTSN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE", !26, i64 0}
!418 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE13obj_map_entryE8obj_hashINS7_8key_dataEE10default_eqISA_EE", !417, i64 0, !21, i64 8, !21, i64 12, !21, i64 16}
!419 = !{!"_ZTS7obj_mapI9func_declP10ptr_vectorIN7datalog4ruleEEE", !418, i64 0}
!420 = !{!"p1 _ZTSN7obj_mapI9func_declP13obj_hashtableIS0_EE13obj_map_entryE", !26, i64 0}
!421 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE", !420, i64 0, !21, i64 8, !21, i64 12, !21, i64 16}
!422 = !{!"_ZTS7obj_mapI9func_declP13obj_hashtableIS0_EE", !421, i64 0}
!423 = !{!"_ZTSN7datalog17rule_dependenciesE", !422, i64 0, !27, i64 24, !307, i64 32, !338, i64 40, !408, i64 64}
!424 = !{!"p1 _ZTSN7datalog15rule_stratifierE", !26, i64 0}
!425 = !{!"_ZTS10scoped_ptrIN7datalog15rule_stratifierEE", !424, i64 0}
!426 = !{!"_ZTS19ref_manager_wrapperI9func_decl11ast_managerE", !28, i64 0}
!427 = !{!"_ZTS10ptr_vectorI9func_declE", !108, i64 0}
!428 = !{!"_ZTS15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE", !426, i64 0, !427, i64 8}
!429 = !{!"_ZTS10ref_vectorI9func_decl11ast_managerE", !428, i64 0}
!430 = !{!"_ZTSN7datalog8rule_setE", !27, i64 0, !95, i64 8, !416, i64 16, !419, i64 32, !423, i64 56, !425, i64 144, !408, i64 152, !106, i64 176, !106, i64 200, !429, i64 224, !383, i64 240}
!431 = !{!"_ZTS6vectorIjLb1EjE", !87, i64 0}
!432 = !{!"p1 _ZTS15model_converter", !26, i64 0}
!433 = !{!"_ZTS3refI15model_converterE", !432, i64 0}
!434 = !{!"p1 _ZTS15proof_converter", !26, i64 0}
!435 = !{!"_ZTS3refI15proof_converterE", !434, i64 0}
!436 = !{!"p1 _ZTSN7datalog16rel_context_baseE", !26, i64 0}
!437 = !{!"p1 _ZTSN7datalog11engine_baseE", !26, i64 0}
!438 = !{!"_ZTS10scoped_ptrIN7datalog11engine_baseEE", !437, i64 0}
!439 = !{!"_ZTSN7datalog16execution_resultE", !20, i64 0}
!440 = !{!"_ZTSN7datalog9DL_ENGINEE", !20, i64 0}
!441 = !{!"_ZTSN7datalog7contextE", !28, i64 0, !288, i64 8, !289, i64 16, !291, i64 24, !292, i64 32, !49, i64 40, !49, i64 41, !76, i64 48, !297, i64 56, !299, i64 88, !327, i64 104, !367, i64 656, !369, i64 1760, !384, i64 1776, !388, i64 2040, !392, i64 2072, !397, i64 2128, !404, i64 2144, !407, i64 2264, !408, i64 2288, !410, i64 2312, !413, i64 2336, !430, i64 2360, !430, i64 2608, !340, i64 2856, !21, i64 2896, !309, i64 2904, !99, i64 2920, !431, i64 2928, !309, i64 2936, !433, i64 2952, !435, i64 2960, !436, i64 2968, !438, i64 2976, !49, i64 2984, !49, i64 2985, !49, i64 2986, !439, i64 2988, !84, i64 2992, !84, i64 3008, !440, i64 3024}
!442 = !{!441, !28, i64 0}
!443 = !{!"_ZTSSi", !43, i64 8}
!444 = !{!443, !43, i64 8}
!445 = !{!50, !49, i64 192}
!446 = distinct !{!446, !137}
!447 = distinct !{!447, !172}
!448 = distinct !{!448, !137}
!449 = distinct !{!449, !172}
!450 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!451 = distinct !{!451, !137}
!452 = distinct !{!452, !137}
!453 = distinct !{!453, !137}
!454 = distinct !{!454, !137}
!455 = distinct !{!455, !137}
!456 = !{!181, !181, i64 0}
!457 = !{i64 0, i64 8, !188, i64 8, i64 4, !456}
!458 = distinct !{!458, !172}
!459 = distinct !{!459, !137}
!460 = distinct !{!460, !137}
!461 = distinct !{!461, !137}
!462 = distinct !{!462, !137}
!463 = distinct !{!463, !137}
!464 = distinct !{!464, !137}
!465 = distinct !{!465, !137}
!466 = distinct !{!466, !137}
!467 = distinct !{!467, !137}
!468 = distinct !{!468, !137}
!469 = distinct !{!469, !137}
!470 = distinct !{!470, !137}
!471 = distinct !{!471, !137}
!472 = distinct !{!472, i1 true, !"_ZNSt7__cxx119to_stringEi"}
!473 = distinct !{!473, !472, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!474 = distinct !{!474, !137}
!475 = distinct !{!475, !137}
!476 = distinct !{!476, !137}
!477 = !{!473}
!478 = distinct !{null}
!479 = !{!32, !32, i64 0}
!480 = distinct !{!480, !137}
!481 = !{!37, !28, i64 0}
!482 = distinct !{!482, !137}
!483 = distinct !{!483, !137}
!484 = distinct !{!484, !137}
!485 = distinct !{!485, !137}
!486 = distinct !{!486, !137}
!487 = distinct !{!487, !172}
!488 = distinct !{!488, !137}
!489 = distinct !{!489, !137}
!490 = distinct !{!490, !137}
!491 = distinct !{!491, !137}
!492 = distinct !{!492, !137}
!493 = !{!"_ZTSSt13__atomic_baseIjE", !21, i64 0}
!494 = !{!"_ZTSSt6atomicIjE", !493, i64 0}
!495 = !{!"_ZTS7svectorImjE", !219, i64 0}
!496 = !{!"p2 _ZTS8reslimit", !77, i64 0}
!497 = !{!"_ZTS6vectorIP8reslimitLb0EjE", !496, i64 0}
!498 = !{!"_ZTS10ptr_vectorI8reslimitE", !497, i64 0}
!499 = !{!"_ZTS8reslimit", !494, i64 0, !49, i64 4, !43, i64 8, !43, i64 16, !495, i64 24, !498, i64 32}
!500 = !{!"_ZTS22small_object_allocator", !20, i64 0, !20, i64 256, !43, i64 512}
!501 = !{!"p1 _ZTSN12symbol_tableIiE10hash_entryE", !26, i64 0}
!502 = !{!"_ZTS14core_hashtableIN12symbol_tableIiE10hash_entryENS1_18key_data_hash_procENS1_16key_data_eq_procEE", !501, i64 0, !21, i64 8, !21, i64 12, !21, i64 16}
!503 = !{!"p1 _ZTSN12symbol_tableIiE8key_dataE", !26, i64 0}
!504 = !{!"_ZTS6vectorIN12symbol_tableIiE8key_dataELb1EjE", !503, i64 0}
!505 = !{!"_ZTS6vectorIiLb0EjE", !87, i64 0}
!506 = !{!"_ZTS7svectorIijE", !505, i64 0}
!507 = !{!"_ZTS12symbol_tableIiE", !502, i64 0, !504, i64 24, !506, i64 32}
!508 = !{!"_ZTS14family_manager", !21, i64 0, !507, i64 8, !99, i64 48}
!509 = !{!"p1 _ZTS22small_object_allocator", !26, i64 0}
!510 = !{!"p2 _ZTSN14parray_managerIN11ast_manager17expr_array_configEE4cellE", !77, i64 0}
!511 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager17expr_array_configEE4cellELb0EjE", !510, i64 0}
!512 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager17expr_array_configEE4cellEE", !511, i64 0}
!513 = !{!"_ZTS14parray_managerIN11ast_manager17expr_array_configEE", !28, i64 0, !509, i64 8, !512, i64 16, !512, i64 24}
!514 = !{!"p2 _ZTSN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE", !77, i64 0}
!515 = !{!"_ZTS6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE", !514, i64 0}
!516 = !{!"_ZTS10ptr_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !515, i64 0}
!517 = !{!"_ZTS18dependency_managerIN11ast_manager22expr_dependency_configEE", !28, i64 0, !509, i64 8, !516, i64 16}
!518 = !{!"p2 _ZTSN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellE", !77, i64 0}
!519 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE", !518, i64 0}
!520 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellEE", !519, i64 0}
!521 = !{!"_ZTS14parray_managerIN11ast_manager28expr_dependency_array_configEE", !28, i64 0, !509, i64 8, !520, i64 16, !520, i64 24}
!522 = !{!"p2 _ZTS11decl_plugin", !77, i64 0}
!523 = !{!"_ZTS6vectorIP11decl_pluginLb0EjE", !522, i64 0}
!524 = !{!"_ZTS10ptr_vectorI11decl_pluginE", !523, i64 0}
!525 = !{!"_ZTS14proof_gen_mode", !20, i64 0}
!526 = !{!"p1 _ZTSN10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE4cellE", !26, i64 0}
!527 = !{!"_ZTS10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE", !526, i64 0, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !526, i64 40, !526, i64 48, !526, i64 56}
!528 = !{!"_ZTS9ast_table", !527, i64 0}
!529 = !{!"_ZTS6id_gen", !21, i64 0, !89, i64 8}
!530 = !{!"p1 _ZTS17default_map_entryIjjE", !26, i64 0}
!531 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !530, i64 0, !21, i64 8, !21, i64 12, !21, i64 16}
!532 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !531, i64 0}
!533 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !532, i64 0}
!534 = !{!"_ZTS5u_mapIjE", !533, i64 0}
!535 = !{!"p1 _ZTSSt13basic_fstreamIcSt11char_traitsIcEE", !26, i64 0}
!536 = !{!"p1 _ZTS15some_value_proc", !26, i64 0}
!537 = !{!"_ZTS11ast_manager", !499, i64 0, !500, i64 40, !508, i64 560, !513, i64 616, !517, i64 648, !521, i64 672, !524, i64 704, !525, i64 712, !49, i64 716, !528, i64 720, !529, i64 784, !529, i64 800, !69, i64 816, !69, i64 824, !85, i64 832, !85, i64 840, !85, i64 848, !21, i64 856, !49, i64 860, !534, i64 864, !535, i64 888, !49, i64 896, !49, i64 897, !28, i64 904, !76, i64 912, !106, i64 920, !536, i64 944}
!538 = !{!537, !69, i64 816}
!539 = !{!95, !95, i64 0}
!540 = distinct !{!540, !137}
!541 = distinct !{!541, !137}
!542 = distinct !{!542, !137}
!543 = distinct !{!543, !137}
!544 = distinct !{!544, !137}
!545 = distinct !{!545, !137}
!546 = distinct !{!546, !172}
!547 = distinct !{!547, !137}
!548 = distinct !{!548, !137}
!549 = distinct !{!549, !137}
!550 = distinct !{!550, !137}
!551 = distinct !{!551, !137}
!552 = !{!101, !21, i64 12}
!553 = distinct !{!553, !137}
!554 = distinct !{!554, !137}
!555 = distinct !{!555, !137}
!556 = !{ptr @_ZN15wpa_parser_implD0Ev}
!557 = distinct !{!557, !137}
!558 = distinct !{!558, !137}
!559 = distinct !{!559, !172}
!560 = distinct !{!560, !137}
!561 = distinct !{!561, !137}
!562 = distinct !{!562, !137}
!563 = distinct !{!563, !137}
!564 = distinct !{!564, !137}
!565 = distinct !{!565, !137}
!566 = distinct !{!566, !137}
!567 = distinct !{!567, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!568 = distinct !{!568, !567, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!569 = distinct !{!569, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!570 = distinct !{!570, !569, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!571 = distinct !{!571, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!572 = distinct !{!572, !571, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!573 = distinct !{!573, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!574 = distinct !{!574, !573, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!575 = distinct !{!575, i1 true, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!576 = distinct !{!576, !575, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!577 = !{!"branch_weights", i32 1, i32 1048575}
!578 = !{!568}
!579 = !{!570}
!580 = !{!572}
!581 = !{!574}
!582 = !{!576}
!583 = distinct !{!583, !137}
!584 = distinct !{!584, !137}
!585 = !{i64 0, i64 8, !188, i64 8, i64 8, !273}
!586 = distinct !{!586, !172}
!587 = distinct !{!587, !137}
!588 = distinct !{!588, !137}
!589 = distinct !{!589, !137}
!590 = distinct !{!590, !137}
!591 = distinct !{!591, !137}
!592 = !{!277, !43, i64 8}
!593 = distinct !{!593, !172}
!594 = distinct !{!594, !137}
!595 = distinct !{!595, !137}
!596 = distinct !{!596, !137}
!597 = distinct !{!597, !137}
!598 = !{!55, !55, i64 0}
!599 = !{i64 0, i64 4, !176, i64 4, i64 4, !598, i64 8, i64 8, !209}
!600 = distinct !{!600, !137}
!601 = distinct !{!601, !137}
!602 = !{!116, !43, i64 0}
!603 = !{i64 0, i64 8, !209, i64 8, i64 8, !188}
!604 = distinct !{!604, !172}
!605 = distinct !{!605, !137}
!606 = distinct !{!606, !137}
!607 = distinct !{!607, !137}
!608 = distinct !{!608, !137}
!609 = distinct !{!609, !137}
!610 = distinct !{!610, !137}
!611 = distinct !{!611, !137}
!612 = distinct !{!612, !137}
!613 = distinct !{!613, !137}
!614 = distinct !{!614, !137}
end_hunk_1
