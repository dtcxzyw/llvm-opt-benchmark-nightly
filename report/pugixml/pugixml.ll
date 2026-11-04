Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK4pugi8xml_node14find_attributeINS_4impl12_GLOBAL__N_123namespace_uri_predicateEEENS_13xml_attributeET_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.cf, ptr %4, align 8
  %.not.i4 = icmp eq ptr %i.cf, null
  br i1 %.not.i4, label %.loopexit.sink.split, label %_ZNK4pugi13xml_attribute4nameEv.exit.i, !llvm.loop !743

.loopexit.sink.split:                             ; preds = %_ZNK4pugi13xml_attribute14next_attributeEv.exit, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us11, %_ZNK4pugi13xml_attribute14next_attributeEv.exit.us, %_ZNK4pugi8xml_node15first_attributeEv.exit, %bb.a
  call void @_ZN4pugi13xml_attributeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i.i.loopexit, %._crit_edge.i.i.us, %_ZNK4pugi4impl12_GLOBAL__N_123namespace_uri_predicateclENS_13xml_attributeE.exit.us, %.loopexit.sink.split
  %i.cg = load ptr, ptr %4, align 8
  ret ptr %i.cg
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw6appendEPKNS_10xpath_nodeES5_PNS1_15xpath_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !270  ; 5 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !277
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.g                       ; 2 uses
  %i.n = ashr exact i64 %i.m, 4
  %i.o = ptrtoint ptr %2 to i64
  %i.p = ptrtoint ptr %1 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = ashr exact i64 %i.q, 4
  %i.s = add nsw i64 %i.i, %i.r                   ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.n
  br i1 %i.t, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.u = shl i64 %i.s, 4                          ; 4 uses
  %i.v = add i64 %i.m, 7
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %.not.i = icmp eq ptr %i.e, null                ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !224 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre30.i = load ptr, ptr %3, align 8, !tbaa !223 ; 2 uses
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.pre30.i, i64 8
  %.pre32.i = load i64, ptr %.phi.trans.insert31.i, align 8, !tbaa !250
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = sub i64 %.pre.i, %i.w
  %i.y = add i64 %i.x, %i.u                       ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !223    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !250 ; 2 uses
  %.not24.i = icmp ugt i64 %i.y, %i.ab
  br i1 %.not24.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.y, ptr %.phi.trans.insert.i, align 8, !tbaa !224
  br label %bb.o

bb.f:                                             ; preds = %bb.d, %._crit_edge.i
  %i.ac = phi i64 [ %.pre32.i, %._crit_edge.i ], [ %i.ab, %bb.d ]
  %i.ad = phi ptr [ %.pre30.i, %._crit_edge.i ], [ %i.z, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = add i64 %.pre.i, %i.u                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.af, %i.ac
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.pre.i
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ai = add i64 %i.u, 1024
  %i.aj = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 4096) ; 2 uses
  %i.ak = add i64 %i.aj, 16
  %i.al = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.am = tail call noundef ptr %i.al(i64 noundef %i.ak), !inline_history !51 ; 5 uses
  %.not23.i.i = icmp eq ptr %i.am, null
  br i1 %.not23.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i = icmp eq ptr %i.ao, null
  br i1 %.not24.i.i, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ao, align 1, !tbaa !251
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !240
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.aj, ptr %i.aq, align 8, !tbaa !250
  store ptr %i.am, ptr %3, align 8, !tbaa !223
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !224
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i: ; preds = %bb.k, %bb.g
  %.1.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.ar, %bb.k ] ; 5 uses
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.1.i.i, ptr nonnull readonly align 1 %i.e, i64 %i.w, i1 false)
  %i.as = load ptr, ptr %3, align 8, !tbaa !223
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !240 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = icmp eq ptr %i.au, %i.e
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !240 ; 2 uses
  %.not26.i = icmp eq ptr %i.aw, null
  br i1 %.not26.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.ax(ptr noundef nonnull %i.at), !inline_history !52
  %i.ay = load ptr, ptr %3, align 8, !tbaa !223
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !240
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i, %bb.m, %bb.n, %bb.l
  %.1.i.ph = phi ptr [ %.1.i.i, %bb.l ], [ %.1.i.i, %bb.n ], [ %.1.i.i, %bb.m ], [ %.1.i.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.i ], [ %i.e, %bb.e ] ; 2 uses
  store ptr %.1.i.ph, ptr %i.d, align 8, !tbaa !270
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i.ph, i64 %i.h ; 3 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !271
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.q
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !277
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.b
  %i.bb = phi ptr [ %i.az, %bb.o ], [ %i.c, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bb, ptr align 8 %1, i64 %i.q, i1 false)
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.q
  store ptr %i.bd, ptr %i.b, align 8, !tbaa !271
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.p, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_118xpath_node_set_raw17remove_duplicatesEPNS1_15xpath_allocatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %3 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !275
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !270
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre53 = load ptr, ptr %.phi.trans.insert52, align 8, !tbaa !271 ; 2 uses
  %.pre54 = ptrtoint ptr %.pre53 to i64
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !270  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 32
  br i1 %i.j, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  store ptr %1, ptr %3, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !266
  %i.l = lshr exact i64 %i.i, 4
  %i.m = lshr i64 %i.i, 5
  %i.n = add nuw nsw i64 %i.l, %i.m
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i64 [ 1, %bb.c ], [ %i.p, %bb.d ]   ; 4 uses
  %i.o = icmp ult i64 %.029, %i.n
  %i.p = shl i64 %.029, 1
  br i1 %i.o, label %bb.d, label %bb.e, !llvm.loop !744

bb.e:                                             ; preds = %bb.d
  %i.q = shl i64 %.029, 3                         ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !224  ; 2 uses
  %i.t = add i64 %i.s, %i.q                       ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !223    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !250
  %.not.i = icmp ugt i64 %i.t, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  store i64 %i.t, ptr %i.r, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %i.q, 1024
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.z, i64 4096) ; 2 uses
  %i.ab = add i64 %i.aa, 16
  %i.ac = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ad = invoke noundef ptr %i.ac(i64 noundef %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 5 uses

.noexc:                                           ; preds = %bb.g
  %.not23.i = icmp eq ptr %i.ad, null
  br i1 %.not23.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !225 ; 2 uses
  %.not24.i = icmp eq ptr %i.af, null
  br i1 %.not24.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.af, align 1, !tbaa !251
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread

bb.j:                                             ; preds = %.noexc
  %i.ag = load ptr, ptr %1, align 8, !tbaa !223
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !240
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.aa, ptr %i.ah, align 8, !tbaa !250
  store ptr %i.ad, ptr %1, align 8, !tbaa !223
  store i64 %i.q, ptr %i.r, align 8, !tbaa !224
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit: ; preds = %bb.f, %bb.j
  %.1.i = phi ptr [ %i.y, %bb.f ], [ %i.ai, %bb.j ] ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.1.i, i8 0, i64 %i.q, i1 false)
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !270 ; 4 uses
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !271
  %.not3246 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not3246, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %i.al = add i64 %.029, -1                       ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit
  %.026.lcssa = phi ptr [ %i.aj, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit ], [ %.1, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ]
  store ptr %.026.lcssa, ptr %i.c, align 8, !tbaa !271
  br label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread

bb.k:                                             ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread
  %.048 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bl, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ] ; 4 uses
  %.02647 = phi ptr [ %i.aj, %.lr.ph ], [ %.1, %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread ] ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.am, align 8, !tbaa !119 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i, label %.noexc36, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc36.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36.thread:                                  ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.m

.noexc36:                                         ; preds = %bb.k
  %i.an = load i64, ptr %.048, align 8, !tbaa !115 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not35 = icmp eq i64 %i.an, 0
  br i1 %.not35, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.noexc36.thread, %.noexc36
  %i.ap = phi ptr [ %.sroa.0.0.copyload.i, %.noexc36.thread ], [ %i.ao, %.noexc36 ] ; 3 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = lshr i32 %i.ar, 16
  %i.at = xor i32 %i.as, %i.ar
  %i.au = mul i32 %i.at, -2048144789              ; 2 uses
  %i.av = lshr i32 %i.au, 13
  %i.aw = xor i32 %i.av, %i.au
  %i.ax = mul i32 %i.aw, -1028477387              ; 2 uses
  %i.ay = lshr i32 %i.ax, 16
  %i.az = xor i32 %i.ay, %i.ax
  %i.ba = zext i32 %i.az to i64
  %i.bb = and i64 %i.al, %i.ba
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.02733.i = phi i64 [ 0, %bb.m ], [ %i.bg, %bb.p ]
  %.02832.i = phi i64 [ %i.bb, %bb.m ], [ %i.bi, %bb.p ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.02832.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !106 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp eq ptr %i.bd, %i.ap
  br i1 %i.bf, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = add i64 %.02733.i, 1                    ; 3 uses
  %i.bh = add i64 %i.bg, %.02832.i
  %i.bi = and i64 %i.bh, %i.al
  %.not.not.i = icmp ugt i64 %i.bg, %i.al
  br i1 %.not.not.i, label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread, label %bb.n, !llvm.loop !745

bb.q:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.02832.i
  store ptr %i.ap, ptr %i.bj, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %.02647, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02647, ptr noundef nonnull align 8 dereferenceable(16) %.048, i64 16, i1 false), !tbaa.struct !193
  br label %_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.g
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  resume { ptr, i32 } %lpad.loopexit.split-lp76

_ZN4pugi4impl12_GLOBAL__N_111hash_insertEPPKvmS3_.exit.thread: ; preds = %bb.p, %bb.o, %bb.q, %.noexc36
  %.1 = phi ptr [ %i.bk, %bb.q ], [ %.02647, %.noexc36 ], [ %.02647, %bb.o ], [ %.02647, %bb.p ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.048, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !271
  %.not32 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not32, label %._crit_edge, label %bb.k, !llvm.loop !746

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread: ; preds = %bb.h, %bb.i, %._crit_edge
  %i.bn = load ptr, ptr %1, align 8, !tbaa !223   ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not9.i.i, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread, %.noexc.i
  %.010.i.i = phi ptr [ %i.bp, %.noexc.i ], [ %i.bn, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread ] ; 2 uses
  %i.bp = load ptr, ptr %.010.i.i, align 8, !tbaa !240 ; 2 uses
  %i.bq = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.bq(ptr noundef nonnull %.010.i.i)
          to label %.noexc.i unwind label %bb.r, !inline_history !39

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %.not.i.i37 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i37, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !40

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit: ; preds = %.noexc.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator8allocateEm.exit.thread
  store ptr %i.bo, ptr %1, align 8, !tbaa !223
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !224
  store i64 %i.bu, ptr %i.r, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.w

bb.s:                                             ; preds = %._crit_edge51, %bb.b
  %.pre-phi = phi i64 [ %.pre54, %._crit_edge51 ], [ %i.g, %bb.b ] ; 2 uses
  %i.bv = phi ptr [ %.pre53, %._crit_edge51 ], [ %i.d, %bb.b ] ; 3 uses
  %i.bw = phi ptr [ %.pre, %._crit_edge51 ], [ %i.f, %bb.b ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %.pre-phi, %i.by
  %i.ca = icmp sgt i64 %i.bz, 16
  br i1 %i.ca, label %.lr.ph73, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph73
  %i.cb = ptrtoint ptr %i.ce to i64
  %i.cc = sub i64 %.pre-phi, %i.cb
  %i.cd = icmp sgt i64 %i.cc, 16
  br i1 %i.cd, label %.lr.ph73, label %.critedge.i, !llvm.loop !747

.lr.ph73:                                         ; preds = %bb.s, %bb.t
  %.019.i71 = phi ptr [ %i.ce, %bb.t ], [ %i.bw, %bb.s ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.019.i71, i64 16 ; 4 uses
  %i.cf = load <2 x ptr>, ptr %.019.i71, align 8
  %i.cg = load <2 x ptr>, ptr %i.ce, align 8
  %i.ch = icmp ne <2 x ptr> %i.cf, %i.cg          ; 2 uses
  %i.ci = extractelement <2 x i1> %i.ch, i64 0
  %i.cj = extractelement <2 x i1> %i.ch, i64 1
  %i.ck = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %i.ck, label %bb.t, label %..critedge.i_crit_edge, !llvm.loop !747

..critedge.i_crit_edge:                           ; preds = %.lr.ph73
  br label %.critedge.i, !llvm.loop !747

.critedge.i:                                      ; preds = %bb.t, %..critedge.i_crit_edge, %bb.s
  %.019.i.lcssa = phi ptr [ %.019.i71, %..critedge.i_crit_edge ], [ %i.bw, %bb.s ], [ %i.ce, %bb.t ] ; 5 uses
  %i.cl = icmp eq ptr %.019.i.lcssa, %i.bv
  br i1 %i.cl, label %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i
  %.12022.i = getelementptr inbounds nuw i8, ptr %.019.i.lcssa, i64 16 ; 2 uses
  %.not23.i38 = icmp eq ptr %.12022.i, %i.bv
  br i1 %.not23.i38, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.v
  %.12026.i = phi ptr [ %.120.i, %bb.v ], [ %.12022.i, %.preheader.i ] ; 3 uses
  %.025.i = phi ptr [ %.1.i39, %bb.v ], [ %.019.i.lcssa, %.preheader.i ] ; 3 uses
  %i.cm = load <2 x ptr>, ptr %.12026.i, align 8
  %i.cn = load <2 x ptr>, ptr %.025.i, align 8
  %i.co = icmp ne <2 x ptr> %i.cm, %i.cn          ; 2 uses
  %i.cp = extractelement <2 x i1> %i.co, i64 0
  %i.cq = extractelement <2 x i1> %i.co, i64 1
  %i.cr = select i1 %i.cp, i1 true, i1 %i.cq
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.025.i, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %.12026.i, i64 16, i1 false), !tbaa.struct !193
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %.1.i39 = phi ptr [ %i.cs, %bb.u ], [ %.025.i, %.lr.ph.i ] ; 2 uses
  %.120.i = getelementptr inbounds nuw i8, ptr %.12026.i, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %.120.i, %i.bv
  br i1 %.not.i40, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !748

._crit_edge.i:                                    ; preds = %bb.v, %.preheader.i
  %.0.lcssa.i = phi ptr [ %.019.i.lcssa, %.preheader.i ], [ %.1.i39, %bb.v ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit

_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit: ; preds = %.critedge.i, %._crit_edge.i
  %.018.i = phi ptr [ %i.ct, %._crit_edge.i ], [ %.019.i.lcssa, %.critedge.i ]
  store ptr %.018.i, ptr %i.bx, align 8, !tbaa !271
  br label %bb.w

bb.w:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, %_ZN4pugi4impl12_GLOBAL__N_16uniqueIPNS_10xpath_nodeEEET_S5_S5_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node15apply_predicateERNS1_18xpath_node_set_rawEmRKNS1_11xpath_stackEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef range(i64 -576460752303423488, 576460752303423488) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 11 uses
  %6 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 11 uses
  %7 = alloca %"class.pugi::xpath_node", align 8  ; 4 uses
  %8 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.a, align 8, !tbaa !270 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %.val15 = load ptr, ptr %i.b, align 8, !tbaa !271 ; 2 uses
  %i.c = ptrtoint ptr %.val15 to i64
  %i.d = ptrtoint ptr %.val14 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 3 uses
  %i.g = icmp eq i64 %i.f, %2
  br i1 %i.g, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !247
  %i.j = and i8 %i.i, -2
  %switch = icmp eq i8 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243  ; 6 uses
  br i1 %switch, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = sub nsw i64 %i.f, %2                     ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.val14, i64 %2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7), !inline_history !749
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !193
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 1, ptr %i.o, align 8, !tbaa !254
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %i.m, ptr %i.p, align 8, !tbaa !255
  %i.q = call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %3), !inline_history !749 ; 4 uses
  %i.r = fcmp ult double %i.q, 1.000000e+00
  %i.s = uitofp i64 %i.m to double
  %i.t = fcmp ugt double %i.q, %i.s
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %or.cond.i, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = fptoui double %i.q to i64                ; 2 uses
  %i.v = uitofp i64 %i.u to double
  %i.w = fcmp oeq double %i.q, %i.v
  br i1 %i.w, label %bb.e, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr [16 x i8], ptr %i.n, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 -16
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node28apply_predicate_number_constERNS1_18xpath_node_set_rawEmPS2_RKNS1_11xpath_stackE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.n, %bb.c ], [ %i.z, %bb.e ], [ %i.n, %bb.d ]
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !271
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.l, i64 1
  %.val = load i8, ptr %i.aa, align 1, !tbaa !246
  %i.ab = icmp eq i8 %.val, 2
  %i.ac = sub nsw i64 %i.f, %2                    ; 4 uses
end_hunk_0
