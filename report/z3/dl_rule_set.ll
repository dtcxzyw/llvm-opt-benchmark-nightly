Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_rule_set?download=true
inline.NumInlined: 1203
inline.NumDeleted: 470
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZNK7datalog17rule_dependencies10out_degreeEP9func_decl:bb.a
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7datalog17rule_dependencies5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !98   ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, %_ZNK7datalog17rule_dependencies5beginEv.exit
  %.0.lcssa = phi i32 [ 0, %_ZNK7datalog17rule_dependencies5beginEv.exit ], [ %i.am, %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit ]
  ret i32 %.0.lcssa

bb.c:                                             ; preds = %.lr.ph, %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit
  %.018 = phi i32 [ 0, %.lr.ph ], [ %i.am, %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit ] ; 5 uses
  %.sroa.010.017 = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph ], [ %.sroa.010.2, %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !74   ; 3 uses
  %i.p = add i32 %i.o, -1
  %i.q = and i32 %i.p, %i.k                       ; 3 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !79   ; 3 uses
  %i.s = zext i32 %i.q to i64
  %.idx.i.i = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i ; 3 uses
  %i.u = zext i32 %i.o to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %.not34.i.i = icmp eq i32 %i.q, %i.o
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.f, %bb.c
  %.not2736.i.i = icmp eq i32 %i.q, 0
  br i1 %.not2736.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.f
  %.035.i.i = phi ptr [ %i.ac, %bb.f ], [ %i.t, %bb.c ] ; 2 uses
  %i.w = load ptr, ptr %.035.i.i, align 8, !tbaa !78 ; 4 uses
  %.not.i = icmp ult ptr %i.w, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !98
  %i.z = icmp eq i32 %i.y, %i.k
  %i.aa = icmp eq ptr %i.w, %1
  %or.cond.i.i = and i1 %i.aa, %i.z
  br i1 %or.cond.i.i, label %.loopexit, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ab = icmp eq ptr %i.w, null
  br i1 %i.ab, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, %i.v
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !16

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.r, %.preheader.i.i ] ; 3 uses
  %i.ad = load ptr, ptr %.137.i.i, align 8, !tbaa !78 ; 4 uses
  %i.ae = icmp ult ptr %i.ad, inttoptr (i64 2 to ptr)
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph38.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !98
  %i.ah = icmp eq i32 %i.ag, %i.k
  %i.ai = icmp eq ptr %i.ad, %1
  %or.cond31.i.i = and i1 %i.ai, %i.ah
  br i1 %or.cond31.i.i, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %.lr.ph38.i.i
  %i.aj = icmp eq ptr %i.ad, null
  %i.ak = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.ak, %i.t
  %or.cond43.i.i = select i1 %i.aj, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread, label %.lr.ph38.i.i.backedge

bb.i:                                             ; preds = %bb.g
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.t
  br i1 %.not27.old.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.i, %bb.h
  %.137.i.i.be = phi ptr [ %i.ak, %bb.h ], [ %.old.i.i, %bb.i ]
  br label %.lr.ph38.i.i, !llvm.loop !17

.loopexit:                                        ; preds = %bb.d, %bb.g
  %i.al = add i32 %.018, 1
  br label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread

_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread: ; preds = %bb.e, %bb.h, %bb.i, %.preheader.i.i, %.loopexit
  %i.am = phi i32 [ %i.al, %.loopexit ], [ %.018, %.preheader.i.i ], [ %.018, %bb.h ], [ %.018, %bb.i ], [ %.018, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 16 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.an, %i.e
  br i1 %.not1.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, label %.lr.ph.i.i8

.lr.ph.i.i8:                                      ; preds = %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread, %bb.j
  %.sroa.010.1 = phi ptr [ %i.aq, %bb.j ], [ %i.an, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread ] ; 3 uses
  %i.ao = load ptr, ptr %.sroa.010.1, align 8, !tbaa !90
  %i.ap = icmp ult ptr %i.ao, inttoptr (i64 2 to ptr)
  br i1 %i.ap, label %bb.j, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit

bb.j:                                             ; preds = %.lr.ph.i.i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 16 ; 3 uses
  %.not.i.i9 = icmp eq ptr %i.aq, %i.e
  br i1 %.not.i.i9, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, label %.lr.ph.i.i8, !llvm.loop !0

_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i8, %bb.j, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread
  %.sroa.010.2 = phi ptr [ %i.an, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit.thread ], [ %.sroa.010.1, %.lr.ph.i.i8 ], [ %i.aq, %bb.j ] ; 2 uses
  %.not = icmp eq ptr %.sroa.010.2, %i.i
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7datalog17rule_dependencies9sort_depsER10ptr_vectorI9func_declE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"struct.obj_map<func_decl, unsigned int>::key_data", align 8 ; 5 uses
  %5 = alloca %class.obj_map.104, align 8         ; 11 uses
  %6 = alloca %"class.datalog::rule_dependencies", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !139    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !111
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit:        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 8, ptr %i.e, align 8, !tbaa !142
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !144
  %i.h = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128) ; 9 uses
  store ptr null, ptr %i.h, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr null, ptr %i.i, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !146
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr null, ptr %i.k, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr null, ptr %i.l, align 8, !tbaa !146
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr null, ptr %i.m, align 8, !tbaa !146
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store ptr null, ptr %i.n, align 8, !tbaa !146
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr null, ptr %i.o, align 8, !tbaa !146
  store ptr %i.h, ptr %5, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN7datalog17rule_dependenciesC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(88) %6, ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !56     ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.s, 4
  %i.t = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i ; 4 uses
  %.not1.i.i.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not1.i.i.i.i.i, label %.loopexit101, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.u = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !90
  %i.v = icmp ult ptr %i.u, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %bb.d, label %.loopexit101

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.t
  br i1 %.not.i.i.i.i.i, label %.loopexit101, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit101:                                     ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.0.1.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.s ; 2 uses
  %.not112 = icmp eq ptr %.sroa.0.1.i.i.i, %i.x
  br i1 %.not112, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit101
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.f

.preheader:                                       ; preds = %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, %.loopexit101
  %i.aa = load ptr, ptr %1, align 8, !tbaa !139   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread.lr.ph

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread.lr.ph: ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 4 uses
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread

bb.e:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.f:                                             ; preds = %.lr.ph, %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit
  %.sroa.083.0113 = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph ], [ %.sroa.083.2, %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.083.0113, align 8, !tbaa !55 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !98 ; 3 uses
  %i.ai = load i32, ptr %i.q, align 8, !tbaa !49  ; 3 uses
  %i.aj = add i32 %i.ai, -1
  %i.ak = and i32 %i.aj, %i.ah                    ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !56    ; 3 uses
  %i.am = zext i32 %i.ak to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i.i ; 3 uses
  %i.ao = zext i32 %i.ai to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ao
  %.not34.i.i.i.i = icmp eq i32 %i.ak, %i.ai
  br i1 %.not34.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.i, %bb.f
  %.not2736.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not2736.i.i.i.i, label %.loopexit.i.i, label %.lr.ph38.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.i
  %.035.i.i.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.an, %bb.f ] ; 3 uses
  %i.aq = load ptr, ptr %.035.i.i.i.i, align 8, !tbaa !90 ; 4 uses
  %i.ar = icmp ult ptr %i.aq, inttoptr (i64 2 to ptr)
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !98
  %i.au = icmp eq i32 %i.at, %i.ah
  %i.av = icmp eq ptr %i.aq, %i.af
  %or.cond.i.i.i.i = and i1 %i.av, %i.au
  br i1 %or.cond.i.i.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i.i, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = icmp eq ptr %i.aq, null
  br i1 %i.aw, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.ap
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph38.i.i.i.i.backedge
  %.137.i.i.i.i = phi ptr [ %.137.i.i.i.i.be, %.lr.ph38.i.i.i.i.backedge ], [ %i.al, %.preheader.i.i.i.i ] ; 4 uses
  %i.ay = load ptr, ptr %.137.i.i.i.i, align 8, !tbaa !90 ; 4 uses
  %i.az = icmp ult ptr %i.ay, inttoptr (i64 2 to ptr)
  br i1 %i.az, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph38.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !98
  %i.bc = icmp eq i32 %i.bb, %i.ah
  %i.bd = icmp eq ptr %i.ay, %i.af
  %or.cond31.i.i.i.i = and i1 %i.bd, %i.bc
  br i1 %or.cond31.i.i.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i.i, label %bb.l

bb.k:                                             ; preds = %.lr.ph38.i.i.i.i
  %i.be = icmp eq ptr %i.ay, null
  %i.bf = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.bf, %i.an
  %or.cond43.i.i.i.i = select i1 %i.be, i1 true, i1 %.not27.i.i.i.i
  br i1 %or.cond43.i.i.i.i, label %.loopexit.i.i, label %.lr.ph38.i.i.i.i.backedge

bb.l:                                             ; preds = %bb.j
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i.i = icmp eq ptr %.old.i.i.i.i, %i.an
  br i1 %.not27.old.i.i.i.i, label %.loopexit.i.i, label %.lr.ph38.i.i.i.i.backedge

.lr.ph38.i.i.i.i.backedge:                        ; preds = %bb.l, %bb.k
  %.137.i.i.i.i.be = phi ptr [ %i.bf, %bb.k ], [ %.old.i.i.i.i, %bb.l ]
  br label %.lr.ph38.i.i.i.i, !llvm.loop !14

_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i.i: ; preds = %bb.g, %bb.j
  %.026.i.i.i.i = phi ptr [ %.137.i.i.i.i, %bb.j ], [ %.035.i.i.i.i, %bb.g ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !92
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.h, %bb.k, %bb.l, %.preheader.i.i.i.i, %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i.i
  %.0.i.i = phi ptr [ %i.bh, %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i.i ], [ %i.y, %bb.k ], [ %i.y, %.preheader.i.i.i.i ], [ %i.y, %bb.l ], [ %i.y, %bb.h ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !75 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.loopexit.i.i
  %i.bl = load ptr, ptr %1, align 8, !tbaa !139   ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !111 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !111
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.o, label %_ZN6vectorIP9func_declLb0EjE9push_backERKS1_.exit

bb.o:                                             ; preds = %bb.n, %bb.m
  invoke void @_ZN6vectorIP9func_declLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.o
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !139 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !111
  br label %_ZN6vectorIP9func_declLb0EjE9push_backERKS1_.exit

_ZN6vectorIP9func_declLb0EjE9push_backERKS1_.exit: ; preds = %bb.n, %.noexc
  %i.bs = phi i32 [ %.pre2.i, %.noexc ], [ %i.bo, %bb.n ] ; 2 uses
  %i.bt = phi ptr [ %.pre.i, %.noexc ], [ %i.bl, %bb.n ] ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv
  store ptr %i.af, ptr %i.bw, align 8, !tbaa !95
  %i.bx = add i32 %i.bs, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !111
  br label %bb.q

bb.p:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.af, ptr %4, align 8, !tbaa !146
  store i32 %i.bj, ptr %i.z, align 8, !tbaa !148
  invoke void @_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE6insertEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN7obj_mapI9func_decljE6insertEPS0_RKj.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_mapI9func_decljE6insertEPS0_RKj.exit:     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.q

bb.q:                                             ; preds = %_ZN7obj_mapI9func_decljE6insertEPS0_RKj.exit, %_ZN6vectorIP9func_declLb0EjE9push_backERKS1_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.083.0113, i64 16 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.by, %i.t
  br i1 %.not1.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.r
  %.sroa.083.1 = phi ptr [ %i.cb, %bb.r ], [ %i.by, %bb.q ] ; 3 uses
  %i.bz = load ptr, ptr %.sroa.083.1, align 8, !tbaa !90
  %i.ca = icmp ult ptr %i.bz, inttoptr (i64 2 to ptr)
  br i1 %i.ca, label %bb.r, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.083.1, i64 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cb, %i.t
  br i1 %.not.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.r, %bb.q
  %.sroa.083.2 = phi ptr [ %i.by, %bb.q ], [ %.sroa.083.1, %.lr.ph.i.i ], [ %i.cb, %bb.r ] ; 2 uses
  %.not = icmp eq ptr %.sroa.083.2, %i.x
  br i1 %.not, label %.preheader, label %bb.f

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread.lr.ph, %._crit_edge
  %i.cc = phi ptr [ %i.aa, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread.lr.ph ], [ %i.dt, %._crit_edge ] ; 6 uses
  %.035117 = phi i32 [ %.0.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread.lr.ph ], [ %8, %._crit_edge ] ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !111 ; 2 uses
  %i.cf = icmp ult i32 %.035117, %i.ce
  br i1 %i.cf, label %bb.s, label %.thread89

bb.s:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread
  %7 = zext i32 %.035117 to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %7
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !95 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !98 ; 3 uses
  %i.ck = load i32, ptr %i.ac, align 8, !tbaa !49 ; 3 uses
  %i.cl = add i32 %i.ck, -1
  %i.cm = and i32 %i.cl, %i.cj                    ; 3 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !56    ; 3 uses
  %i.co = zext i32 %i.cm to i64
  %.idx.i.i.i53 = shl nuw nsw i64 %i.co, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i.i53 ; 3 uses
  %i.cq = zext i32 %i.ck to i64
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.cq
  %.not34.i.i.i = icmp eq i32 %i.cm, %i.ck
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.v, %bb.s
  %.not2736.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not2736.i.i.i, label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %bb.v
  %.035.i.i.i = phi ptr [ %i.cz, %bb.v ], [ %i.cp, %bb.s ] ; 3 uses
  %i.cs = load ptr, ptr %.035.i.i.i, align 8, !tbaa !90 ; 4 uses
  %i.ct = icmp ult ptr %i.cs, inttoptr (i64 2 to ptr)
  br i1 %i.ct, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !98
  %i.cw = icmp eq i32 %i.cv, %i.cj
  %i.cx = icmp eq ptr %i.cs, %i.ch
  %or.cond.i.i.i = and i1 %i.cx, %i.cw
  br i1 %or.cond.i.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.cy = icmp eq ptr %i.cs, null
  br i1 %i.cy, label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cz, %i.cr
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.cn, %.preheader.i.i.i ] ; 4 uses
  %i.da = load ptr, ptr %.137.i.i.i, align 8, !tbaa !90 ; 4 uses
  %i.db = icmp ult ptr %i.da, inttoptr (i64 2 to ptr)
  br i1 %i.db, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph38.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !98
  %i.de = icmp eq i32 %i.dd, %i.cj
  %i.df = icmp eq ptr %i.da, %i.ch
  %or.cond31.i.i.i = and i1 %i.df, %i.de
  br i1 %or.cond31.i.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i, label %bb.y

bb.x:                                             ; preds = %.lr.ph38.i.i.i
  %i.dg = icmp eq ptr %i.da, null
  %i.dh = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.dh, %i.cp
  %or.cond43.i.i.i = select i1 %i.dg, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, label %.lr.ph38.i.i.i.backedge

bb.y:                                             ; preds = %bb.w
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.cp
  br i1 %.not27.old.i.i.i, label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.y, %bb.x
  %.137.i.i.i.be = phi ptr [ %i.dh, %bb.x ], [ %.old.i.i.i, %bb.y ]
  br label %.lr.ph38.i.i.i, !llvm.loop !14

_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i: ; preds = %bb.t, %bb.w
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.w ], [ %.035.i.i.i, %bb.t ]
  %i.di = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !92
  br label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit

_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit: ; preds = %bb.u, %bb.x, %bb.y, %.preheader.i.i.i, %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i
  %.0.i54 = phi ptr [ %i.dj, %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i ], [ %i.ad, %bb.x ], [ %i.ad, %.preheader.i.i.i ], [ %i.ad, %bb.y ], [ %i.ad, %bb.u ] ; 2 uses
  %i.dk = load ptr, ptr %.0.i54, align 8, !tbaa !79 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i54, i64 8
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !74 ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.dn, 3
  %i.do = getelementptr i8, ptr %i.dk, i64 %.idx.i ; 4 uses
  %.not1.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not1.i.i.i, label %.loopexit96, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, %bb.z
  %.sroa.0.0.i = phi ptr [ %i.dr, %bb.z ], [ %i.dk, %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit ] ; 3 uses
  %i.dp = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !78
  %i.dq = icmp ult ptr %i.dp, inttoptr (i64 2 to ptr)
  br i1 %i.dq, label %bb.z, label %.loopexit96

bb.z:                                             ; preds = %.lr.ph.i.i.i55
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.dr, %i.do
  br i1 %.not.i.i.i56, label %.loopexit96, label %.lr.ph.i.i.i55, !llvm.loop !1

.loopexit96:                                      ; preds = %.lr.ph.i.i.i55, %bb.z, %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit
  %.sroa.0.1.i = phi ptr [ %i.dk, %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit ], [ %i.do, %bb.z ], [ %.sroa.0.0.i, %.lr.ph.i.i.i55 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dn ; 2 uses
  %.not93114 = icmp eq ptr %.sroa.0.1.i, %i.ds
  br i1 %.not93114, label %._crit_edge, label %.lr.ph116

._crit_edge:                                      ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit, %.loopexit96
  %i.dt = phi ptr [ %i.cc, %.loopexit96 ], [ %i.gt, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ] ; 2 uses
  %8 = add i32 %.035117, 1
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread, !llvm.loop !375

.lr.ph116:                                        ; preds = %.loopexit96, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit
  %i.dv = phi ptr [ %i.gt, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ], [ %i.cc, %.loopexit96 ] ; 2 uses
  %i.dw = phi ptr [ %i.gu, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ], [ %i.cc, %.loopexit96 ] ; 5 uses
  %.sroa.076.0115 = phi ptr [ %.sroa.076.2, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ], [ %.sroa.0.1.i, %.loopexit96 ] ; 2 uses
  %i.dx = load ptr, ptr %.sroa.076.0115, align 8, !tbaa !95 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !98 ; 3 uses
  %i.ea = load i32, ptr %i.e, align 8, !tbaa !142 ; 3 uses
  %i.eb = add i32 %i.ea, -1
  %i.ec = and i32 %i.eb, %i.dz                    ; 2 uses
  %i.ed = load ptr, ptr %5, align 8, !tbaa !147   ; 3 uses
  %i.ee = zext i32 %i.ea to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.ee
  %.not34.i.i = icmp eq i32 %i.ec, %i.ea
  br i1 %.not34.i.i, label %.lr.ph38.i.i.preheader, label %.lr.ph.i.i59.preheader

.lr.ph.i.i59.preheader:                           ; preds = %.lr.ph116
  %i.eg = zext i32 %i.ec to i64
  %.idx.i.i = shl nuw nsw i64 %i.eg, 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx.i.i
  br label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %.lr.ph.i.i59.preheader, %bb.ac
  %.035.i.i = phi ptr [ %i.eo, %bb.ac ], [ %i.eh, %.lr.ph.i.i59.preheader ] ; 3 uses
  %i.ei = load ptr, ptr %.035.i.i, align 8, !tbaa !150 ; 4 uses
  %i.ej = icmp ult ptr %i.ei, inttoptr (i64 2 to ptr)
  br i1 %i.ej, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i59
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !98
  %i.em = icmp eq i32 %i.el, %i.dz
  %i.en = icmp eq ptr %i.ei, %i.dx
  %or.cond.i.i = and i1 %i.en, %i.em
  br i1 %or.cond.i.i, label %_ZNK7obj_mapI9func_decljE9find_coreEPS0_.exit, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i59
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.eo = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 16 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.eo, %i.ef
  br i1 %.not.i.i60, label %.lr.ph38.i.i.preheader, label %.lr.ph.i.i59, !llvm.loop !20

.lr.ph38.i.i.preheader:                           ; preds = %bb.ac, %.lr.ph116
  br label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i.preheader, %.lr.ph38.backedge.i.i
  %.137.i.i = phi ptr [ %.pn, %.lr.ph38.backedge.i.i ], [ %i.ed, %.lr.ph38.i.i.preheader ] ; 3 uses
  %i.ep = load ptr, ptr %.137.i.i, align 8, !tbaa !150 ; 4 uses
  %i.eq = icmp ult ptr %i.ep, inttoptr (i64 2 to ptr)
  br i1 %i.eq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph38.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !98
  %i.et = icmp eq i32 %i.es, %i.dz
  %i.eu = icmp eq ptr %i.ep, %i.dx
  %or.cond31.i.i = and i1 %i.eu, %i.et
  br i1 %or.cond31.i.i, label %_ZNK7obj_mapI9func_decljE9find_coreEPS0_.exit, label %.lr.ph38.backedge.i.i

bb.ae:                                            ; preds = %.lr.ph38.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  br label %.lr.ph38.backedge.i.i

.lr.ph38.backedge.i.i:                            ; preds = %bb.ad, %bb.ae
  %.pn = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 16
  br label %.lr.ph38.i.i, !llvm.loop !21

_ZNK7obj_mapI9func_decljE9find_coreEPS0_.exit:    ; preds = %bb.aa, %bb.ad
  %.026.i.i = phi ptr [ %.137.i.i, %bb.ad ], [ %.035.i.i, %bb.aa ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !111
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !111
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %_ZNK7obj_mapI9func_decljE9find_coreEPS0_.exit
  %i.ez = icmp eq ptr %i.dw, null
  br i1 %i.ez, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds i8, ptr %i.dw, i64 -4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !111 ; 5 uses
  %i.fc = getelementptr inbounds i8, ptr %i.dw, i64 -8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !111
  %i.fe = icmp eq i32 %i.fb, %i.fd
  br i1 %i.fe, label %bb.ai, label %_ZN6vectorIP9func_declLb0EjE9push_backERKS1_.exit65

bb.ah:                                            ; preds = %bb.af
  %i.ff = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc74:                                         ; preds = %bb.ah
  store i32 2, ptr %i.ff, align 4, !tbaa !111
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  store i32 0, ptr %i.fg, align 4, !tbaa !111
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  store ptr %i.fh, ptr %1, align 8, !tbaa !139
  br label %.noexc64

bb.ai:                                            ; preds = %bb.ag
  %i.fi = mul i32 %i.fb, 3
  %i.fj = add i32 %i.fi, 1
  %i.fk = lshr i32 %i.fj, 1                       ; 3 uses
  %i.fl = shl i32 %i.fk, 3
  %i.fm = add i32 %i.fl, 8                        ; 2 uses
  %.not.i71 = icmp ugt i32 %i.fk, %i.fb
  br i1 %.not.i71, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fn = shl i32 %i.fb, 3
  %i.fo = add i32 %i.fn, 8
  %.not27.i = icmp ugt i32 %i.fm, %i.fo
  br i1 %.not27.i, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fp = call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.fp, align 8, !tbaa !129
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 24 ; 3 uses
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !131
  %i.fs = load ptr, ptr %2, align 8, !tbaa !134   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.am:                                            ; preds = %bb.al
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !135 ; 3 uses
  %i.fx = icmp ult i64 %i.fw, 16
  call void @llvm.assume(i1 %i.fx)
  %i.fy = add nuw nsw i64 %i.fw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fr, ptr noundef nonnull align 8 dereferenceable(1) %i.ft, i64 %i.fy, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.al
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !134
  %i.fz = load i64, ptr %i.ft, align 8, !tbaa !136
  store i64 %i.fz, ptr %i.fr, align 8, !tbaa !136
  %.phi.trans.insert.i72 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i73 = load i64, ptr %.phi.trans.insert.i72, align 8, !tbaa !135
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.am
  %i.ga = phi i64 [ %i.fw, %bb.am ], [ %.pre.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 %i.ga, ptr %i.gc, align 8, !tbaa !135
  store ptr %i.ft, ptr %2, align 8, !tbaa !134
  store i64 0, ptr %i.gb, align 8, !tbaa !135
  store i8 0, ptr %i.ft, align 8, !tbaa !136
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.aq unwind label %bb.an

bb.an:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = load ptr, ptr %2, align 8, !tbaa !134   ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.ft
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.an
  %i.gg = load i64, ptr %i.ft, align 8, !tbaa !136
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body

bb.ao:                                            ; preds = %bb.ak
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @__cxa_free_exception(ptr %i.fp) #17
  br label %.body

bb.ap:                                            ; preds = %bb.aj
  %i.gj = zext i32 %i.fm to i64
  %i.gk = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fc, i64 noundef %i.gj)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc75:                                         ; preds = %bb.ap
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  store ptr %i.gl, ptr %1, align 8, !tbaa !139
end_hunk_0
