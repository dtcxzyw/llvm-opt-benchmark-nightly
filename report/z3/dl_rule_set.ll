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
  br i1 %.not1.i.i.i.i.i, label %.loopexit100, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i = phi ptr [ %i.w, %bb.d ], [ %i.p, %bb.c ] ; 3 uses
  %i.u = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !90
  %i.v = icmp ult ptr %i.u, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %bb.d, label %.loopexit100

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.t
  br i1 %.not.i.i.i.i.i, label %.loopexit100, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit100:                                     ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.c
  %.sroa.0.1.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.t, %bb.d ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.s ; 2 uses
  %.not111 = icmp eq ptr %.sroa.0.1.i.i.i, %i.x
  br i1 %.not111, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit100
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.f

.preheader:                                       ; preds = %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, %.loopexit100
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
  br label %bb.ay

bb.f:                                             ; preds = %.lr.ph, %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit
  %.sroa.083.0112 = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph ], [ %.sroa.083.2, %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit ] ; 2 uses
  %i.af = load ptr, ptr %.sroa.083.0112, align 8, !tbaa !55 ; 5 uses
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
  br i1 %i.bk, label %bb.m, label %bb.q

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
          to label %.noexc unwind label %bb.p

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
  br label %bb.r

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %i.af, ptr %4, align 8, !tbaa !146
  store i32 %i.bj, ptr %i.z, align 8, !tbaa !148
  invoke void @_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE6insertEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(12) %4)
          to label %_ZN7obj_mapI9func_decljE6insertEPS0_RKj.exit unwind label %bb.p

_ZN7obj_mapI9func_decljE6insertEPS0_RKj.exit:     ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.r

bb.r:                                             ; preds = %_ZN7obj_mapI9func_decljE6insertEPS0_RKj.exit, %_ZN6vectorIP9func_declLb0EjE9push_backERKS1_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.083.0112, i64 16 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.bz, %i.t
  br i1 %.not1.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.s
  %.sroa.083.1 = phi ptr [ %i.cc, %bb.s ], [ %i.bz, %bb.r ] ; 3 uses
  %i.ca = load ptr, ptr %.sroa.083.1, align 8, !tbaa !90
  %i.cb = icmp ult ptr %i.ca, inttoptr (i64 2 to ptr)
  br i1 %i.cb, label %bb.s, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.083.1, i64 16 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cc, %i.t
  br i1 %.not.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZN14core_hashtableIN7obj_mapI9func_declP13obj_hashtableIS1_EE13obj_map_entryE8obj_hashINS5_8key_dataEE10default_eqIS8_EE8iteratorppEv.exit: ; preds = %.lr.ph.i.i, %bb.s, %bb.r
  %.sroa.083.2 = phi ptr [ %i.bz, %bb.r ], [ %.sroa.083.1, %.lr.ph.i.i ], [ %i.cc, %bb.s ] ; 2 uses
  %.not = icmp eq ptr %.sroa.083.2, %i.x
  br i1 %.not, label %.preheader, label %bb.f

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread.lr.ph, %._crit_edge
  %i.cd = phi ptr [ %i.aa, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread.lr.ph ], [ %i.du, %._crit_edge ] ; 6 uses
  %.035116 = phi i32 [ %.0.i, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread.lr.ph ], [ %8, %._crit_edge ] ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !111 ; 2 uses
  %i.cg = icmp ult i32 %.035116, %i.cf
  br i1 %i.cg, label %bb.t, label %.thread89

bb.t:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread
  %7 = zext i32 %.035116 to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %7
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !95 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !98 ; 3 uses
  %i.cl = load i32, ptr %i.ac, align 8, !tbaa !49 ; 3 uses
  %i.cm = add i32 %i.cl, -1
  %i.cn = and i32 %i.cm, %i.ck                    ; 3 uses
  %i.co = load ptr, ptr %6, align 8, !tbaa !56    ; 3 uses
  %i.cp = zext i32 %i.cn to i64
  %.idx.i.i.i53 = shl nuw nsw i64 %i.cp, 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i.i53 ; 3 uses
  %i.cr = zext i32 %i.cl to i64
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cr
  %.not34.i.i.i = icmp eq i32 %i.cn, %i.cl
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.w, %bb.t
  %.not2736.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not2736.i.i.i, label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.t, %bb.w
  %.035.i.i.i = phi ptr [ %i.da, %bb.w ], [ %i.cq, %bb.t ] ; 3 uses
  %i.ct = load ptr, ptr %.035.i.i.i, align 8, !tbaa !90 ; 4 uses
  %i.cu = icmp ult ptr %i.ct, inttoptr (i64 2 to ptr)
  br i1 %i.cu, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !98
  %i.cx = icmp eq i32 %i.cw, %i.ck
  %i.cy = icmp eq ptr %i.ct, %i.ci
  %or.cond.i.i.i = and i1 %i.cy, %i.cx
  br i1 %or.cond.i.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.cz = icmp eq ptr %i.ct, null
  br i1 %i.cz, label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, %i.cs
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.co, %.preheader.i.i.i ] ; 4 uses
  %i.db = load ptr, ptr %.137.i.i.i, align 8, !tbaa !90 ; 4 uses
  %i.dc = icmp ult ptr %i.db, inttoptr (i64 2 to ptr)
  br i1 %i.dc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph38.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !98
  %i.df = icmp eq i32 %i.de, %i.ck
  %i.dg = icmp eq ptr %i.db, %i.ci
  %or.cond31.i.i.i = and i1 %i.dg, %i.df
  br i1 %or.cond31.i.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i, label %bb.z

bb.y:                                             ; preds = %.lr.ph38.i.i.i
  %i.dh = icmp eq ptr %i.db, null
  %i.di = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.di, %i.cq
  %or.cond43.i.i.i = select i1 %i.dh, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, label %.lr.ph38.i.i.i.backedge

bb.z:                                             ; preds = %bb.x
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.cq
  br i1 %.not27.old.i.i.i, label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.z, %bb.y
  %.137.i.i.i.be = phi ptr [ %i.di, %bb.y ], [ %.old.i.i.i, %bb.z ]
  br label %.lr.ph38.i.i.i, !llvm.loop !14

_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i: ; preds = %bb.u, %bb.x
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.x ], [ %.035.i.i.i, %bb.u ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !92
  br label %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit

_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit: ; preds = %bb.v, %bb.y, %bb.z, %.preheader.i.i.i, %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i
  %.0.i54 = phi ptr [ %i.dk, %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit.i ], [ %i.ad, %bb.y ], [ %i.ad, %.preheader.i.i.i ], [ %i.ad, %bb.z ], [ %i.ad, %bb.v ] ; 2 uses
  %i.dl = load ptr, ptr %.0.i54, align 8, !tbaa !79 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i54, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !74 ; 2 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.do, 3
  %i.dp = getelementptr i8, ptr %i.dl, i64 %.idx.i ; 4 uses
  %.not1.i.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not1.i.i.i, label %.loopexit, label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit, %bb.aa
  %.sroa.0.0.i = phi ptr [ %i.ds, %bb.aa ], [ %i.dl, %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit ] ; 3 uses
  %i.dq = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !78
  %i.dr = icmp ult ptr %i.dq, inttoptr (i64 2 to ptr)
  br i1 %i.dr, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %.lr.ph.i.i.i55
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %.not.i.i.i56 = icmp eq ptr %i.ds, %i.dp
  br i1 %.not.i.i.i56, label %.loopexit, label %.lr.ph.i.i.i55, !llvm.loop !1

.loopexit:                                        ; preds = %.lr.ph.i.i.i55, %bb.aa, %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit
  %.sroa.0.1.i = phi ptr [ %i.dl, %_ZNK7datalog17rule_dependencies8get_depsEP9func_decl.exit ], [ %i.dp, %bb.aa ], [ %.sroa.0.0.i, %.lr.ph.i.i.i55 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.do ; 2 uses
  %.not93113 = icmp eq ptr %.sroa.0.1.i, %i.dt
  br i1 %.not93113, label %._crit_edge, label %.lr.ph115

._crit_edge:                                      ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit, %.loopexit
  %i.du = phi ptr [ %i.cd, %.loopexit ], [ %i.gv, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ] ; 2 uses
  %8 = add i32 %.035116, 1
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit52.thread, !llvm.loop !375

.lr.ph115:                                        ; preds = %.loopexit, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit
  %i.dw = phi ptr [ %i.gv, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ], [ %i.cd, %.loopexit ] ; 2 uses
  %i.dx = phi ptr [ %i.gw, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ], [ %i.cd, %.loopexit ] ; 5 uses
  %.sroa.076.0114 = phi ptr [ %.sroa.076.2, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit ], [ %.sroa.0.1.i, %.loopexit ] ; 2 uses
  %i.dy = load ptr, ptr %.sroa.076.0114, align 8, !tbaa !95 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !98 ; 3 uses
  %i.eb = load i32, ptr %i.e, align 8, !tbaa !142 ; 3 uses
  %i.ec = add i32 %i.eb, -1
  %i.ed = and i32 %i.ec, %i.ea                    ; 2 uses
  %i.ee = load ptr, ptr %5, align 8, !tbaa !147   ; 3 uses
  %i.ef = zext i32 %i.eb to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ef
  %.not34.i.i = icmp eq i32 %i.ed, %i.eb
  br i1 %.not34.i.i, label %.lr.ph38.i.i.preheader, label %.lr.ph.i.i59.preheader

.lr.ph.i.i59.preheader:                           ; preds = %.lr.ph115
  %i.eh = zext i32 %i.ed to i64
  %.idx.i.i = shl nuw nsw i64 %i.eh, 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx.i.i
  br label %.lr.ph.i.i59

.lr.ph.i.i59:                                     ; preds = %.lr.ph.i.i59.preheader, %bb.ad
  %.035.i.i = phi ptr [ %i.ep, %bb.ad ], [ %i.ei, %.lr.ph.i.i59.preheader ] ; 3 uses
  %i.ej = load ptr, ptr %.035.i.i, align 8, !tbaa !150 ; 4 uses
  %i.ek = icmp ult ptr %i.ej, inttoptr (i64 2 to ptr)
  br i1 %i.ek, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i59
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.em = load i32, ptr %i.el, align 4, !tbaa !98
  %i.en = icmp eq i32 %i.em, %i.ea
  %i.eo = icmp eq ptr %i.ej, %i.dy
  %or.cond.i.i = and i1 %i.eo, %i.en
  br i1 %or.cond.i.i, label %_ZNK7obj_mapI9func_decljE9find_coreEPS0_.exit, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i59
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ep = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 16 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.ep, %i.eg
  br i1 %.not.i.i60, label %.lr.ph38.i.i.preheader, label %.lr.ph.i.i59, !llvm.loop !20

.lr.ph38.i.i.preheader:                           ; preds = %bb.ad, %.lr.ph115
  br label %.lr.ph38.i.i

.lr.ph38.i.i:                                     ; preds = %.lr.ph38.i.i.preheader, %.lr.ph38.backedge.i.i
  %.137.i.i = phi ptr [ %.pn, %.lr.ph38.backedge.i.i ], [ %i.ee, %.lr.ph38.i.i.preheader ] ; 3 uses
  %i.eq = load ptr, ptr %.137.i.i, align 8, !tbaa !150 ; 4 uses
  %i.er = icmp ult ptr %i.eq, inttoptr (i64 2 to ptr)
  br i1 %i.er, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph38.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !98
  %i.eu = icmp eq i32 %i.et, %i.ea
  %i.ev = icmp eq ptr %i.eq, %i.dy
  %or.cond31.i.i = and i1 %i.ev, %i.eu
  br i1 %or.cond31.i.i, label %_ZNK7obj_mapI9func_decljE9find_coreEPS0_.exit, label %.lr.ph38.backedge.i.i

bb.af:                                            ; preds = %.lr.ph38.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  br label %.lr.ph38.backedge.i.i

.lr.ph38.backedge.i.i:                            ; preds = %bb.ae, %bb.af
  %.pn = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 16
  br label %.lr.ph38.i.i, !llvm.loop !21

_ZNK7obj_mapI9func_decljE9find_coreEPS0_.exit:    ; preds = %bb.ab, %bb.ae
  %.026.i.i = phi ptr [ %.137.i.i, %bb.ae ], [ %.035.i.i, %bb.ab ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !111
  %i.ey = add i32 %i.ex, -1                       ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !111
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ag, label %bb.at

bb.ag:                                            ; preds = %_ZNK7obj_mapI9func_decljE9find_coreEPS0_.exit
  %i.fa = icmp eq ptr %i.dx, null
  br i1 %i.fa, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fb = getelementptr inbounds i8, ptr %i.dx, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !111 ; 5 uses
  %i.fd = getelementptr inbounds i8, ptr %i.dx, i64 -8 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !111
  %i.ff = icmp eq i32 %i.fc, %i.fe
  br i1 %i.ff, label %bb.aj, label %_ZN6vectorIP9func_declLb0EjE9push_backERKS1_.exit65

bb.ai:                                            ; preds = %bb.ag
  %i.fg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc74 unwind label %bb.as  ; 3 uses

.noexc74:                                         ; preds = %bb.ai
  store i32 2, ptr %i.fg, align 4, !tbaa !111
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 0, ptr %i.fh, align 4, !tbaa !111
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  store ptr %i.fi, ptr %1, align 8, !tbaa !139
  br label %.noexc64

bb.aj:                                            ; preds = %bb.ah
  %i.fj = mul i32 %i.fc, 3
  %i.fk = add i32 %i.fj, 1
  %i.fl = lshr i32 %i.fk, 1                       ; 3 uses
  %i.fm = shl i32 %i.fl, 3
  %i.fn = add i32 %i.fm, 8                        ; 2 uses
  %.not.i71 = icmp ugt i32 %i.fl, %i.fc
  br i1 %.not.i71, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fo = shl i32 %i.fc, 3
  %i.fp = add i32 %i.fo, 8
  %.not27.i = icmp ugt i32 %i.fn, %i.fp
  br i1 %.not27.i, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fq = call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.fq, align 8, !tbaa !129
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 3 uses
  store ptr %i.fs, ptr %i.fr, align 8, !tbaa !131
  %i.ft = load ptr, ptr %2, align 8, !tbaa !134   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %bb.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !135 ; 3 uses
  %i.fy = icmp ult i64 %i.fx, 16
  call void @llvm.assume(i1 %i.fy)
  %i.fz = add nuw nsw i64 %i.fx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fs, ptr noundef nonnull align 8 dereferenceable(1) %i.fu, i64 %i.fz, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  store ptr %i.ft, ptr %i.fr, align 8, !tbaa !134
  %i.ga = load i64, ptr %i.fu, align 8, !tbaa !136
  store i64 %i.ga, ptr %i.fs, align 8, !tbaa !136
  %.phi.trans.insert.i72 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i73 = load i64, ptr %.phi.trans.insert.i72, align 8, !tbaa !135
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.an
  %i.gb = phi i64 [ %i.fx, %bb.an ], [ %.pre.i73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %i.gb, ptr %i.gd, align 8, !tbaa !135
  store ptr %i.fu, ptr %2, align 8, !tbaa !134
  store i64 0, ptr %i.gc, align 8, !tbaa !135
  store i8 0, ptr %i.fu, align 8, !tbaa !136
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.ar unwind label %bb.ao

bb.ao:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %2, align 8, !tbaa !134   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fu
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.ao
  %i.gh = load i64, ptr %i.fu, align 8, !tbaa !136
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.body

bb.ap:                                            ; preds = %bb.al
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @__cxa_free_exception(ptr %i.fq) #17
  br label %.body

bb.aq:                                            ; preds = %bb.ak
  %i.gk = zext i32 %i.fn to i64
  %i.gl = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fd, i64 noundef %i.gk)
          to label %.noexc75 unwind label %bb.as  ; 2 uses

.noexc75:                                         ; preds = %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  store ptr %i.gm, ptr %1, align 8, !tbaa !139
end_hunk_0
