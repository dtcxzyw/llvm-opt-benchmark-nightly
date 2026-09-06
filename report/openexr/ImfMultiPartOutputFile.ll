Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfMultiPartOutputFile?download=true
inline.NumInlined: 830
inline.NumDeleted: 364
begin_hunk_0_@_ZN7Imf_3_419MultiPartOutputFile13getOutputPartINS_19DeepTiledOutputFileEEEPT_i:bb.a
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.ag) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.i
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !26  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 96 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ak, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.al, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22
  %i.ao = icmp slt i32 %i.an, %1                  ; 2 uses
  %.19.i.i.i = select i1 %i.ao, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = icmp eq ptr %.19.i.i.i, %i.al
  br i1 %i.ap, label %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit

_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22
  %i.as = icmp slt i32 %1, %i.ar
  br i1 %i.as, label %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread, label %bb.u

_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit
  %i.at = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #27
          to label %bb.k unwind label %bb.r       ; 6 uses

bb.k:                                             ; preds = %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = zext nneg i32 %1 to i64
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  invoke void @_ZN7Imf_3_419DeepTiledOutputFileC1EPKNS_14OutputPartDataE(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef %i.az)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !26  ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 5 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bd, %bb.l ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.be, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22
  %i.bh = icmp slt i32 %i.bg, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.bh, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.bh, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.bi = icmp eq ptr %.19.i.i.i.i, %i.be
  br i1 %i.bi, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22
  %i.bl = icmp slt i32 %1, %i.bk
  br i1 %i.bl, label %.critedge.i, label %bb.x

.critedge.i:                                      ; preds = %bb.m, %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i, %bb.l
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.m ], [ %.19.i.i.i.i, %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE11lower_boundERS6_.exit.i ], [ %i.be, %bb.l ]
  %i.bm = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc21 unwind label %bb.t   ; 5 uses

.noexc21:                                         ; preds = %.critedge.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 3 uses
  store i32 %1, ptr %i.bn, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr %i.at, ptr %i.bo, align 8, !tbaa !47
  %i.bp = invoke { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bn)
          to label %bb.n unwind label %_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.n:                                             ; preds = %.noexc21
  %i.bq = extractvalue { ptr, ptr } %i.bp, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = extractvalue { ptr, ptr } %i.bp, 0
  %.not.i.i.i20 = icmp ne ptr %i.br, null
  %i.bs = icmp eq ptr %i.bq, %i.be
  %or.cond.i.i.i = select i1 %.not.i.i.i20, i1 true, i1 %i.bs
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bu = load i32, ptr %i.bn, align 8, !tbaa !22
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !22
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o
  %i.bx = phi i1 [ %i.bw, %bb.p ], [ true, %bb.o ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bx, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.be) #26
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 128 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !48
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !48
  br label %bb.x

_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc21
  %i.cb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 48) #28
  br label %.body

bb.q:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 48) #28
  br label %bb.x

bb.r:                                             ; preds = %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit.thread
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 16) #28
  br label %.body

bb.t:                                             ; preds = %.critedge.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEE4findERS6_.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN7Imf_3_417GenericOutputFileESt4lessIiESaISt4pairIKiS2_EEEixERS6_(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !49
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %.thread.i, %bb.q, %bb.m, %bb.v
  %.0 = phi ptr [ %i.cg, %bb.v ], [ %i.at, %bb.m ], [ %i.at, %bb.q ], [ %i.at, %.thread.i ]
  %i.ci = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #26 ; 0 uses
  ret ptr %.0

.body:                                            ; preds = %bb.t, %_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i, %bb.r, %bb.s, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.cb, %_ZNSt8_Rb_treeIiSt4pairIKiPN7Imf_3_417GenericOutputFileEESt10_Select1stIS5_ESt4lessIiESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %i.ch, %bb.w ], [ %i.cc, %bb.r ], [ %i.cd, %bb.s ], [ %i.ce, %bb.t ]
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #26 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.body, %bb.h
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.h ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %.pn13.pn

bb.z:                                             ; preds = %bb.e
  unreachable
}

declare void @_ZN7Imf_3_419DeepTiledOutputFileC1EPKNS_14OutputPartDataE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_419MultiPartOutputFile4Data23do_header_sanity_checksEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.19", align 8    ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !30   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = sdiv exact i64 %i.g, 56
  %i.i = icmp eq ptr %i.c, %i.d
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.j) #26
  br label %bb.ap

bb.e:                                             ; preds = %bb.a
  %i.l = icmp ne i64 %i.g, 56                     ; 2 uses
  %i.m = tail call noundef zeroext i1 @_ZNK7Imf_3_46Header18hasTileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.d)
  tail call void @_ZNK7Imf_3_46Header11sanityCheckEbb(ptr noundef nonnull align 8 dereferenceable(49) %i.d, i1 noundef zeroext %i.m, i1 noundef zeroext %i.l)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !30   ; 3 uses
  br i1 %i.l, label %bb.f, label %bb.al

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef i32 @_ZN7Imf_3_423getChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.n)
  tail call void @_ZN7Imf_3_46Header13setChunkCountEi(ptr noundef nonnull align 8 dereferenceable(49) %i.n, i32 noundef %i.o)
  %i.p = icmp ugt i64 %i.g, 56
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.h, i64 2) ; 2 uses
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %.02393.us = phi i64 [ %i.ad, %bb.g ], [ 1, %.lr.ph ] ; 5 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %.02393.us
  %i.u = tail call noundef zeroext i1 @_ZNK7Imf_3_46Header7hasTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.t)
  br i1 %i.u, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %.02393.us ; 2 uses
  %i.x = tail call noundef i32 @_ZN7Imf_3_423getChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.w)
  tail call void @_ZN7Imf_3_46Header13setChunkCountEi(ptr noundef nonnull align 8 dereferenceable(49) %i.w, i32 noundef %i.x)
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.y, i64 %.02393.us ; 2 uses
  %i.aa = tail call noundef zeroext i1 @_ZNK7Imf_3_46Header18hasTileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.z)
  tail call void @_ZNK7Imf_3_46Header11sanityCheckEbb(ptr noundef nonnull align 8 dereferenceable(49) %i.z, i1 noundef zeroext %i.aa, i1 noundef zeroext true)
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %.02393.us
  tail call void @_ZN7Imf_3_419MultiPartOutputFile4Data30overrideSharedAttributesValuesERKNS_6HeaderERS2_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(49) %i.ab, ptr noundef nonnull align 8 dereferenceable(49) %i.ac)
  %i.ad = add nuw i64 %.02393.us, 1               ; 2 uses
  %exitcond102.not = icmp eq i64 %i.ad, %umax102
  br i1 %exitcond102.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !99

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.g, %bb.f
  call void @_ZN7Imf_3_419MultiPartOutputFile4Data25headerNameUniquenessCheckERKSt6vectorINS_6HeaderESaIS3_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.ao

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.02393 = phi i64 [ %i.ep, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ 1, %.lr.ph ] ; 6 uses
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %.02393
  %i.ag = call noundef zeroext i1 @_ZNK7Imf_3_46Header7hasTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.af)
  br i1 %i.ag, label %bb.j, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %i.ah = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull @.str.11)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.split.us
  call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #25
  unreachable

bb.i:                                             ; preds = %.split.us
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ah) #26
  br label %bb.ap

bb.j:                                             ; preds = %.lr.ph.split
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.aj, i64 %.02393 ; 2 uses
  %i.al = call noundef i32 @_ZN7Imf_3_423getChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.ak)
  call void @_ZN7Imf_3_46Header13setChunkCountEi(ptr noundef nonnull align 8 dereferenceable(49) %i.ak, i32 noundef %i.al)
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.am, i64 %.02393 ; 2 uses
  %i.ao = call noundef zeroext i1 @_ZNK7Imf_3_46Header18hasTileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49) %i.an)
  call void @_ZNK7Imf_3_46Header11sanityCheckEbb(ptr noundef nonnull align 8 dereferenceable(49) %i.an, i1 noundef zeroext %i.ao, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.ap, i64 %.02393
  %i.ar = invoke noundef zeroext i1 @_ZNK7Imf_3_419MultiPartOutputFile4Data27checkSharedAttributesValuesERKNS_6HeaderES4_RSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(49) %i.ap, ptr noundef nonnull align 8 dereferenceable(49) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %i.ar, label %bb.l, label %bb.ai

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %.02393
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN7Imf_3_46Header4nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.at)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %.preheader unwind label %bb.q ; 0 uses

.preheader:                                       ; preds = %bb.n
  %i.aw = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.ax = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %.not = icmp eq ptr %i.aw, %i.ax
  br i1 %.not, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.r

._crit_edge96:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %.preheader
  invoke void @_Z13iex_debugTrapv()
          to label %bb.z unwind label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.p:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.q:                                             ; preds = %._crit_edge96, %bb.n, %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.r:                                             ; preds = %.lr.ph95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.bg = phi ptr [ %i.ax, %.lr.ph95 ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  %.094 = phi i64 [ 0, %.lr.ph95 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %.094 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19, !noalias !107
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !21, !noalias !107 ; 3 uses
  store ptr %i.ay, ptr %6, align 8, !tbaa !15, !alias.scope !108
  store i64 0, ptr %i.az, align 8, !tbaa !21, !alias.scope !108
  store i8 0, ptr %i.ay, align 8, !tbaa !20, !alias.scope !108
  %i.bl = add i64 %i.bk, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bl)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.bm = load i64, ptr %i.az, align 8, !tbaa !21, !alias.scope !108
  %i.bn = and i64 %i.bm, -2
  %i.bo = icmp eq i64 %i.bn, 4611686018427387902
  br i1 %i.bo, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.s
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.13, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bq = load i64, ptr %i.az, align 8, !tbaa !21, !alias.scope !108
  %i.br = sub i64 4611686018427387903, %i.bq
  %i.bs = icmp ult i64 %i.br, %i.bk
  br i1 %i.bs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #25
          to label %.cont.i.i unwind label %.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.bi, i64 noundef %i.bk)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp:                               ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bu = load ptr, ptr %6, align 8, !tbaa !19, !alias.scope !108 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ay
  br i1 %i.bv, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.bw = load i64, ptr %i.az, align 8, !tbaa !21, !noalias !109
  %i.bx = and i64 %i.bw, -2
  %i.by = icmp eq i64 %i.bx, 4611686018427387902
  br i1 %i.by, label %bb.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.u:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #25
          to label %.noexc unwind label %.loopexit.split-lp66

.noexc:                                           ; preds = %bb.u
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, i64 noundef 2)
          to label %.noexc48 unwind label %.loopexit65 ; 6 uses

.noexc48:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ba, ptr %5, align 8, !tbaa !15, !alias.scope !109
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !19 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 5 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.v:                                             ; preds = %.noexc48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !21 ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.cf)
  %i.cg = add nuw nsw i64 %i.ce, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.cb, i64 %i.cg, i1 false)
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc48
  store ptr %i.ca, ptr %5, align 8, !tbaa !19, !alias.scope !109
  %i.ch = load i64, ptr %i.cb, align 8, !tbaa !20
  store i64 %i.ch, ptr %i.ba, align 8, !tbaa !20, !alias.scope !109
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.w

end_hunk_0
begin_hunk_1_@_ZN7Imf_3_419MultiPartOutputFile4Data23do_header_sanity_checksEb:bb.a
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.co, i64 noundef %i.ck)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit70 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cq = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ba
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.cs = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.cu = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ay
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.cy = add nuw i64 %.094, 1                    ; 2 uses
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !52
  %i.da = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 5
  %i.df = icmp ult i64 %i.cy, %i.de
  br i1 %i.df, label %bb.r, label %._crit_edge96, !llvm.loop !106

.loopexit65:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %lpad.loopexit67 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

.loopexit.split-lp66:                             ; preds = %bb.u
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

.loopexit70:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp71:                             ; preds = %bb.x
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp71, %.loopexit70
  %lpad.phi74 = phi { ptr, i32 } [ %lpad.loopexit72, %.loopexit70 ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp71 ] ; 2 uses
  %i.dg = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.ba
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.y
  %i.di = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.y, %.loopexit65, %.loopexit.split-lp66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  %.pn38 = phi { ptr, i32 } [ %lpad.phi74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %lpad.loopexit.split-lp68, %.loopexit.split-lp66 ], [ %lpad.loopexit67, %.loopexit65 ], [ %lpad.phi74, %bb.y ] ; 2 uses
  %i.dk = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ay
  br i1 %i.dl, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.t
  %.sink = phi ptr [ %i.bu, %bb.t ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  %.pn38.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.t ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ]
  %i.dm = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dn) #28
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.t
  %.pn38.pn = phi { ptr, i32 } [ %lpad.phi, %bb.t ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn38.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ah

bb.z:                                             ; preds = %._crit_edge96
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dp = load ptr, ptr %3, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !21
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp, i64 noundef %i.dr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ad ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.aa
  %i.dt = call ptr @__cxa_allocate_exception(i64 72) #26 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.dt, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @__cxa_throw(ptr nonnull %i.dt, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #25
          to label %bb.aq unwind label %bb.ad

bb.ac:                                            ; preds = %bb.z
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ad:                                            ; preds = %bb.aa, %bb.ab
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dt) #26
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.ad ], [ %i.dw, %bb.ae ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.du, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body, %bb.q
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38.pn, %.body ], [ %.pn.pn, %bb.ag ], [ %i.bf, %bb.q ] ; 2 uses
  %i.dx = load ptr, ptr %3, align 8, !tbaa !19    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.ah
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !20
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.p
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %i.be, %bb.p ], [ %.pn38.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %.pn38.pn.pn, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.ak

bb.ai:                                            ; preds = %bb.k
  %i.ec = load ptr, ptr %2, align 8, !tbaa !53    ; 3 uses
  %i.ed = load ptr, ptr %i.q, align 8, !tbaa !52  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ec, %i.ed
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ej, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ec, %bb.ai ] ; 3 uses
  %i.ee = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !20
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ej, %i.ed
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.ai
  %i.ek = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ec, %bb.ai ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ek, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.el = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.eo) #28
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ep = add nuw i64 %.02393, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %umax102
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !99

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %bb.o
  %.pn38.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn38.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %i.bd, %bb.o ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ap

bb.al:                                            ; preds = %bb.e
  %i.eq = tail call noundef zeroext i1 @_ZNK7Imf_3_46Header7hasTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %i.n)
  br i1 %i.eq, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.es = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN7Imf_3_46Header4typeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.er)
  %i.et = tail call noundef zeroext i1 @_ZN7Imf_3_47isImageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.es)
  br i1 %i.et, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.ev = tail call noundef i32 @_ZN7Imf_3_423getChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.eu)
  tail call void @_ZN7Imf_3_46Header13setChunkCountEi(ptr noundef nonnull align 8 dereferenceable(49) %i.eu, i32 noundef %i.ev)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.am, %bb.an, %._crit_edge
  ret void

bb.ap:                                            ; preds = %bb.i, %bb.ak, %bb.d
  %.pn46 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.ai, %bb.i ], [ %.pn38.pn.pn.pn.pn, %bb.ak ]
  resume { ptr, i32 } %.pn46

bb.aq:                                            ; preds = %bb.ab
  unreachable
}

declare void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

declare void @_ZNK7Imf_3_46Header11sanityCheckEbb(ptr noundef nonnull align 8 dereferenceable(49), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK7Imf_3_46Header18hasTileDescriptionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare void @_ZN7Imf_3_46Header13setChunkCountEi(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN7Imf_3_423getChunkOffsetTableSizeERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK7Imf_3_46Header7hasTypeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7Imf_3_419MultiPartOutputFile4Data30overrideSharedAttributesValuesERKNS_6HeaderERS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(49) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  %4 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  %5 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  %6 = alloca %"class.Imf_3_4::Name", align 1     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.a = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %6, ptr noundef nonnull dereferenceable(14) @.str.19, i64 noundef 255) #26 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 255
  store i8 0, ptr %i.b, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %.not10.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.g = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.f, ptr noundef nonnull align 1 dereferenceable(256) %6) #29
  %i.h = icmp slt i32 %i.g, 0                     ; 2 uses
  %.19.i.i.i.i = select i1 %i.h, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.h, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i.i, %i.e
  br i1 %i.i, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i

_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit.thread

_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.k = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %6, ptr noundef nonnull align 1 dereferenceable(256) %i.j) #29
  %i.l = icmp slt i32 %i.k, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %i.l, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 288
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit.thread, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit

_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit: ; preds = %bb.b
  %i.p = call ptr @__dynamic_cast(ptr nonnull %i.n, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeIN9Imath_3_23BoxINS1_4Vec2IiEEEEEE, i64 0) #26 ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit
  call void @_ZN7Imf_3_46Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull @.str.19, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  br label %bb.d

_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit.thread: ; preds = %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, %bb.b, %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i, %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit
  call void @_ZN7Imf_3_46Header5eraseEPKc(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull @.str.19)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIN9Imath_3_23BoxINS3_4Vec2IiEEEEEEEEPKT_PKc.exit.thread, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.q = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %5, ptr noundef nonnull dereferenceable(17) @.str.20, i64 noundef 255) #26 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 255
  store i8 0, ptr %i.r, align 1, !tbaa !20
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %.not10.i.i.i.i26 = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i26, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i37, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i27
  %.012.i.i.i.i28 = phi ptr [ %.1.i.i.i.i33, %.lr.ph.i.i.i.i27 ], [ %i.s, %bb.d ] ; 3 uses
  %.0811.i.i.i.i29 = phi ptr [ %.19.i.i.i.i30, %.lr.ph.i.i.i.i27 ], [ %i.e, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 32
  %i.u = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.t, ptr noundef nonnull align 1 dereferenceable(256) %5) #29
  %i.v = icmp slt i32 %i.u, 0                     ; 2 uses
  %.19.i.i.i.i30 = select i1 %i.v, ptr %.0811.i.i.i.i29, ptr %.012.i.i.i.i28 ; 4 uses
  %.1.in.v.i.i.i.i31 = select i1 %i.v, i64 24, i64 16
  %.1.in.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i28, i64 %.1.in.v.i.i.i.i31
  %.1.i.i.i.i33 = load ptr, ptr %.1.in.i.i.i.i32, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %.1.i.i.i.i33, null
  br i1 %.not.i.i.i.i34, label %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i35, label %.lr.ph.i.i.i.i27, !llvm.loop !2

_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i35: ; preds = %.lr.ph.i.i.i.i27
  %i.w = icmp eq ptr %.19.i.i.i.i30, %i.e
  br i1 %i.w, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i37, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i36

_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i37: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i35, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit.thread

_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i36: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i35
  %i.x = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i30, i64 32
  %i.y = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %5, ptr noundef nonnull align 1 dereferenceable(256) %i.x) #29
  %i.z = icmp slt i32 %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.z, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i36
  %i.aa = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i30, i64 288
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit.thread, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit

_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit: ; preds = %bb.e
  %i.ad = call ptr @__dynamic_cast(ptr nonnull %i.ab, ptr nonnull @_ZTIN7Imf_3_49AttributeE, ptr nonnull @_ZTIN7Imf_3_414TypedAttributeIfEE, i64 0) #26 ; 2 uses
  %.not23 = icmp eq ptr %i.ad, null
  br i1 %.not23, label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit
  call void @_ZN7Imf_3_46Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull @.str.20, ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  br label %bb.g

_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit.thread: ; preds = %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i37, %bb.e, %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i36, %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit
  call void @_ZN7Imf_3_46Header5eraseEPKc(ptr noundef nonnull align 8 dereferenceable(49) %2, ptr noundef nonnull @.str.20)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeIfEEEEPKT_PKc.exit.thread, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ae = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %4, ptr noundef nonnull dereferenceable(9) @.str.21, i64 noundef 255) #26 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 255
  store i8 0, ptr %i.af, align 1, !tbaa !20
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !35  ; 2 uses
  %.not10.i.i.i.i38 = icmp eq ptr %i.ag, null
  br i1 %.not10.i.i.i.i38, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i49, label %.lr.ph.i.i.i.i39

.lr.ph.i.i.i.i39:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i39
  %.012.i.i.i.i40 = phi ptr [ %.1.i.i.i.i45, %.lr.ph.i.i.i.i39 ], [ %i.ag, %bb.g ] ; 3 uses
  %.0811.i.i.i.i41 = phi ptr [ %.19.i.i.i.i42, %.lr.ph.i.i.i.i39 ], [ %i.e, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i40, i64 32
  %i.ai = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.ah, ptr noundef nonnull align 1 dereferenceable(256) %4) #29
  %i.aj = icmp slt i32 %i.ai, 0                   ; 2 uses
  %.19.i.i.i.i42 = select i1 %i.aj, ptr %.0811.i.i.i.i41, ptr %.012.i.i.i.i40 ; 4 uses
  %.1.in.v.i.i.i.i43 = select i1 %i.aj, i64 24, i64 16
  %.1.in.i.i.i.i44 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i40, i64 %.1.in.v.i.i.i.i43
  %.1.i.i.i.i45 = load ptr, ptr %.1.in.i.i.i.i44, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i46 = icmp eq ptr %.1.i.i.i.i45, null
  br i1 %.not.i.i.i.i46, label %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i47, label %.lr.ph.i.i.i.i39, !llvm.loop !2

_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i47: ; preds = %.lr.ph.i.i.i.i39
  %i.ak = icmp eq ptr %.19.i.i.i.i42, %i.e
  br i1 %i.ak, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i49, label %_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i48

_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i49: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i47, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZNK7Imf_3_46Header18findTypedAttributeINS_14TypedAttributeINS_8TimeCodeEEEEEPKT_PKc.exit.thread

_ZNKSt3mapIN7Imf_3_44NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i48: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i47
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i42, i64 32
  %i.am = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %4, ptr noundef nonnull align 1 dereferenceable(256) %i.al) #29
end_hunk_1
