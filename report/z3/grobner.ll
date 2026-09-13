Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/grobner?download=true
inline.NumInlined: 1098
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN7grobner10set_weightEP4expri:bb.a
  store ptr %1, ptr %3, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %i.af, align 8, !tbaa !118
  call void @_ZN14core_hashtableIN7obj_mapI4expriE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE6insertEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNK7obj_mapI4expriE8containsEPS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7grobner12update_orderEPNS_8equationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(228) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK7grobner8equation17get_num_monomialsEv.exit.thread, label %_ZNK7grobner8equation17get_num_monomialsEv.exit

_ZNK7grobner8equation17get_num_monomialsEv.exit:  ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !87   ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK7grobner8equation17get_num_monomialsEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7grobner8equation17get_num_monomialsEv.exit
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !99
  %i.h = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !91  ; 4 uses
  %i.k = icmp eq ptr %.pre, null
  br i1 %i.k, label %_ZN6vectorIPN7grobner8monomialELb0EjE3endEv.exit21, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87
  %i.n = zext i32 %i.m to i64
  br label %_ZN6vectorIPN7grobner8monomialELb0EjE3endEv.exit21

_ZN6vectorIPN7grobner8monomialELb0EjE3endEv.exit21: ; preds = %._crit_edge, %bb.b
  %.0.i.i20 = phi i64 [ %i.n, %bb.b ], [ 0, %._crit_edge ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.0.i.i20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !50
  tail call void @_ZSt13__stable_sortIPPN7grobner8monomialEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11monomial_ltEEEEvT_S9_T0_(ptr noundef %.pre, ptr noundef %i.o, ptr %.sroa.0.0.copyload)
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = icmp ne ptr %i.r, %i.g
  br label %_ZNK7grobner8equation17get_num_monomialsEv.exit.thread

bb.c:                                             ; preds = %.lr.ph, %_ZN6vectorIP4exprLb0EjE3endEv.exit
  %.01825 = phi ptr [ %i.b, %.lr.ph ], [ %i.ab, %_ZN6vectorIP4exprLb0EjE3endEv.exit ] ; 2 uses
  %i.t = load ptr, ptr %.01825, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90   ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN6vectorIP4exprLb0EjE3endEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87
  %i.z = zext i32 %i.y to i64
  br label %_ZN6vectorIP4exprLb0EjE3endEv.exit

_ZN6vectorIP4exprLb0EjE3endEv.exit:               ; preds = %bb.c, %bb.d
  %.0.i.i22 = phi i64 [ %i.z, %bb.d ], [ 0, %bb.c ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0.i.i22
  %.sroa.01.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !48
  tail call void @_ZSt13__stable_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_(ptr noundef %i.v, ptr noundef %i.aa, ptr %.sroa.01.0.copyload)
  %i.ab = getelementptr inbounds nuw i8, ptr %.01825, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.i
  br i1 %.not, label %._crit_edge, label %bb.c

_ZNK7grobner8equation17get_num_monomialsEv.exit.thread: ; preds = %bb.a, %_ZNK7grobner8equation17get_num_monomialsEv.exit, %_ZN6vectorIPN7grobner8monomialELb0EjE3endEv.exit21
  %.0 = phi i1 [ %i.s, %_ZN6vectorIPN7grobner8monomialELb0EjE3endEv.exit21 ], [ false, %_ZNK7grobner8equation17get_num_monomialsEv.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7grobner12update_orderER13obj_hashtableINS_8equationEEb(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.ptr_buffer, align 8          ; 13 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.d, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store i32 16, ptr %i.e, align 4, !tbaa !122
  %i.f = load ptr, ptr %1, align 8, !tbaa !59     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !53   ; 2 uses
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr i8, ptr %i.f, i64 %.idx.i  ; 4 uses
  %.not1.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not1.i.i.i, label %.loopexit179, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !58
  %i.l = icmp ult ptr %i.k, inttoptr (i64 2 to ptr)
  br i1 %i.l, label %bb.b, label %.loopexit179

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.j
  br i1 %.not.i.i.i, label %.loopexit179, label %.lr.ph.i.i.i, !llvm.loop !4

.loopexit179:                                     ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.sroa.0.1.i = phi ptr [ %i.f, %bb.a ], [ %i.j, %bb.b ], [ %.sroa.0.0.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %.not161213 = icmp eq ptr %.sroa.0.1.i, %i.n
  br i1 %.not161213, label %_ZN6bufferIPN7grobner8equationELb0ELj16EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit179
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN14core_hashtableI14obj_hash_entryIN7grobner8equationEE12obj_ptr_hashIS2_E6ptr_eqIS2_EE8iteratorppEv.exit
  %.pre256.a = load ptr, ptr %3, align 8, !tbaa !120 ; 3 uses
  %.pre257.a = load i32, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %i.r = zext i32 %.pre257.a to i64
  %.idx220 = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %.pre256.a, i64 %.idx220
  %.not215 = icmp eq i32 %.pre257.a, 0
  br i1 %.not215, label %._crit_edge219, label %.lr.ph218

bb.c:                                             ; preds = %.lr.ph, %_ZN14core_hashtableI14obj_hash_entryIN7grobner8equationEE12obj_ptr_hashIS2_E6ptr_eqIS2_EE8iteratorppEv.exit
  %.sroa.0117.0214 = phi ptr [ %.sroa.0.1.i, %.lr.ph ], [ %.sroa.0117.2, %_ZN14core_hashtableI14obj_hash_entryIN7grobner8equationEE12obj_ptr_hashIS2_E6ptr_eqIS2_EE8iteratorppEv.exit ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.0117.0214, align 8, !tbaa !88 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91   ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN7grobner12update_orderEPNS_8equationE.exit.thread, label %_ZNK7grobner8equation17get_num_monomialsEv.exit.i

_ZNK7grobner8equation17get_num_monomialsEv.exit.i: ; preds = %bb.c
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !87   ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN7grobner12update_orderEPNS_8equationE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7grobner8equation17get_num_monomialsEv.exit.i
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !99
  %i.ab = zext i32 %i.y to i64
  %.idx.i26 = shl nuw nsw i64 %i.ab, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx.i26
  br label %bb.e

._crit_edge.i:                                    ; preds = %.noexc27
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !91 ; 4 uses
  %i.ad = icmp eq ptr %.pre.i, null
  br i1 %i.ad, label %_ZN6vectorIPN7grobner8monomialELb0EjE3endEv.exit21.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ae = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !87
  %i.ag = zext i32 %i.af to i64
  br label %_ZN6vectorIPN7grobner8monomialELb0EjE3endEv.exit21.i

_ZN6vectorIPN7grobner8monomialELb0EjE3endEv.exit21.i: ; preds = %bb.d, %._crit_edge.i
  %.0.i.i20.i = phi i64 [ %i.ag, %bb.d ], [ 0, %._crit_edge.i ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.0.i.i20.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.p, align 8, !tbaa !50
  invoke void @_ZSt13__stable_sortIPPN7grobner8monomialEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_11monomial_ltEEEEvT_S9_T0_(ptr noundef %.pre.i, ptr noundef %i.ah, ptr %.sroa.0.0.copyload.i)
          to label %_ZN7grobner12update_orderEPNS_8equationE.exit unwind label %bb.bl

bb.e:                                             ; preds = %.noexc27, %.lr.ph.i
  %.01825.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ig, %.noexc27 ] ; 2 uses
  %i.ai = load ptr, ptr %.01825.i, align 8, !tbaa !99
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !90 ; 15 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.noexc27, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.e
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !87 ; 4 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap ; 10 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !48 ; 16 uses
  %i.ar = icmp eq i32 %i.an, 0
  br i1 %i.ar, label %.noexc27, label %bb.f

bb.f:                                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = add nuw nsw i64 %i.ao, 1
  %i.au = lshr i64 %i.at, 1                       ; 16 uses
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %bb.f, %select.unfold.i.i.i
  %.010.i.i.i = phi i64 [ %i.az, %select.unfold.i.i.i ], [ %i.au, %bb.f ] ; 8 uses
  %i.av = shl nuw nsw i64 %.010.i.i.i, 3
  %i.aw = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.av, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #24 ; 42 uses
  %.not.i.i.i41 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i41, label %select.unfold.i.i.i, label %_ZNSt17_Temporary_bufferIPP4exprS1_EC2ES2_l.exit.i

select.unfold.i.i.i:                              ; preds = %.lr.ph.i.i.i40
  %i.ax = icmp eq i64 %.010.i.i.i, 1
  %i.ay = add nuw nsw i64 %.010.i.i.i, 1
  %i.az = lshr i64 %i.ay, 1
  br i1 %i.ax, label %_ZNSt17_Temporary_bufferIPP4exprS1_EC2ES2_l.exit.i.thread, label %.lr.ph.i.i.i40, !llvm.loop !7

_ZNSt17_Temporary_bufferIPP4exprS1_EC2ES2_l.exit.i: ; preds = %.lr.ph.i.i.i40
  %i.ba = icmp eq i64 %i.au, %.010.i.i.i
  br i1 %i.ba, label %bb.g, label %bb.bg, !prof !123

_ZNSt17_Temporary_bufferIPP4exprS1_EC2ES2_l.exit.i.thread: ; preds = %select.unfold.i.i.i
  %i.bb = icmp eq i64 %i.au, 0
  br i1 %i.bb, label %bb.g, label %bb.bf, !prof !123

bb.g:                                             ; preds = %_ZNSt17_Temporary_bufferIPP4exprS1_EC2ES2_l.exit.i.thread, %_ZNSt17_Temporary_bufferIPP4exprS1_EC2ES2_l.exit.i
  %.sroa.5.0.i326 = phi i64 [ 0, %_ZNSt17_Temporary_bufferIPP4exprS1_EC2ES2_l.exit.i.thread ], [ %.010.i.i.i, %_ZNSt17_Temporary_bufferIPP4exprS1_EC2ES2_l.exit.i ] ; 12 uses
  %.idx162 = shl nuw nsw i64 %i.au, 3             ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx162 ; 12 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx162 ; 3 uses
  %.not12.i.i55 = icmp ult i32 %i.an, 13
  br i1 %.not12.i.i55, label %_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.thread.i64, label %.lr.ph.i.i56

_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.thread.i64: ; preds = %bb.g
  invoke void @_ZSt16__insertion_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.bc, ptr %.sroa.01.0.copyload.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i56:                                     ; preds = %bb.g, %.noexc66
  %.013.i.i57 = phi ptr [ %i.bf, %.noexc66 ], [ %i.ak, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.013.i.i57, i64 56 ; 4 uses
  invoke void @_ZSt16__insertion_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_(ptr noundef nonnull %.013.i.i57, ptr noundef nonnull %i.bf, ptr %.sroa.01.0.copyload.i)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc66:                                         ; preds = %.lr.ph.i.i56
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bd, %i.bg
  %.not.i.i58 = icmp slt i64 %i.bh, 56
  br i1 %.not.i.i58, label %_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.i59, label %.lr.ph.i.i56, !llvm.loop !8

_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.i59: ; preds = %.noexc66
  invoke void @_ZSt16__insertion_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bc, ptr %.sroa.01.0.copyload.i)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.i59
  %.not.i60 = icmp eq i64 %i.au, 7
  br i1 %.not.i60, label %.noexc.i, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.noexc67, %.noexc69
  %.021.i62 = phi i64 [ %i.bj, %.noexc69 ], [ 7, %.noexc67 ] ; 3 uses
  invoke void @_ZSt17__merge_sort_loopIPP4exprS2_lN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_T2_(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.bc, ptr noundef %i.aw, i64 noundef %.021.i62, ptr %.sroa.01.0.copyload.i)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc68:                                         ; preds = %.lr.ph.i61
  %i.bi = shl nuw nsw i64 %.021.i62, 1
  invoke void @_ZSt17__merge_sort_loopIPP4exprS2_lN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_T2_(ptr noundef %i.aw, ptr noundef %i.be, ptr noundef nonnull %i.ak, i64 noundef %i.bi, ptr %.sroa.01.0.copyload.i)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc69:                                         ; preds = %.noexc68
  %i.bj = shl nsw i64 %.021.i62, 2                ; 2 uses
  %i.bk = icmp slt i64 %i.bj, %i.au
  br i1 %i.bk, label %.lr.ph.i61, label %.noexc.i, !llvm.loop !9

.noexc.i:                                         ; preds = %.noexc69, %.noexc67, %_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.thread.i64
  %gepdiff = sub nsw i64 %i.ap, %.idx162          ; 8 uses
  %i.bl = ashr exact i64 %gepdiff, 3              ; 6 uses
  %i.bm = getelementptr inbounds i8, ptr %i.aw, i64 %gepdiff ; 2 uses
  %.not12.i.i = icmp slt i64 %i.bl, 7
  br i1 %.not12.i.i, label %_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.thread.i, label %.lr.ph.i.i45

_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.thread.i: ; preds = %.noexc.i
  invoke void @_ZSt16__insertion_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.aq, ptr %.sroa.01.0.copyload.i)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i45:                                     ; preds = %.noexc.i, %.noexc51
  %.013.i.i = phi ptr [ %i.bn, %.noexc51 ], [ %i.bc, %.noexc.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 56 ; 4 uses
  invoke void @_ZSt16__insertion_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_(ptr noundef nonnull %.013.i.i, ptr noundef nonnull %i.bn, ptr %.sroa.01.0.copyload.i)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit

.noexc51:                                         ; preds = %.lr.ph.i.i45
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.as, %i.bo
  %.not.i.i46 = icmp slt i64 %i.bp, 56
  br i1 %.not.i.i46, label %_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.i, label %.lr.ph.i.i45, !llvm.loop !8

_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.i: ; preds = %.noexc51
  invoke void @_ZSt16__insertion_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.aq, ptr %.sroa.01.0.copyload.i)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc52:                                         ; preds = %_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.i
  %.not.i47 = icmp eq i64 %gepdiff, 56
  br i1 %.not.i47, label %.noexc17.i.thread, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.noexc52, %.noexc54
  %.021.i = phi i64 [ %i.br, %.noexc54 ], [ 7, %.noexc52 ] ; 3 uses
  invoke void @_ZSt17__merge_sort_loopIPP4exprS2_lN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_T2_(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.aq, ptr noundef %i.aw, i64 noundef %.021.i, ptr %.sroa.01.0.copyload.i)
          to label %.noexc53 unwind label %.loopexit

.noexc53:                                         ; preds = %.lr.ph.i48
  %i.bq = shl nuw nsw i64 %.021.i, 1
  invoke void @_ZSt17__merge_sort_loopIPP4exprS2_lN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_T2_(ptr noundef %i.aw, ptr noundef %i.bm, ptr noundef nonnull %i.bc, i64 noundef %i.bq, ptr %.sroa.01.0.copyload.i)
          to label %.noexc54 unwind label %.loopexit

.noexc54:                                         ; preds = %.noexc53
  %i.br = shl nsw i64 %.021.i, 2                  ; 2 uses
  %i.bs = icmp slt i64 %i.br, %i.bl
  br i1 %i.bs, label %.lr.ph.i48, label %.noexc17.i, !llvm.loop !9

.noexc17.i:                                       ; preds = %.noexc54, %_ZSt22__chunk_insertion_sortIPP4exprlN9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_T0_T1_.exit.thread.i
  %.not.i42 = icmp sgt i64 %i.au, %i.bl
  br i1 %.not.i42, label %bb.ad, label %bb.h

.noexc17.i.thread:                                ; preds = %.noexc52
  %.not.i42149 = icmp sgt i64 %i.au, %i.bl
  br i1 %.not.i42149, label %.thread150, label %bb.h

bb.h:                                             ; preds = %.noexc17.i.thread, %.noexc17.i
  %i.bt = icmp ugt i32 %i.an, 2
  br i1 %i.bt, label %bb.i, label %bb.j, !prof !123

bb.i:                                             ; preds = %bb.h
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aw, ptr nonnull align 8 %i.ak, i64 %.idx162, i1 false)
  br label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bu = icmp eq i64 %i.au, 1
  br i1 %i.bu, label %bb.k, label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !102
  store ptr %i.bv, ptr %i.aw, align 8, !tbaa !102
  br label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i

_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i:          ; preds = %bb.k, %bb.j, %bb.i
  %i.bw = icmp ne i64 %i.au, 0                    ; 2 uses
  %i.bx = icmp samesign ne i64 %.idx162, %i.ap
  %i.by = and i1 %i.bw, %i.bx
  br i1 %i.by, label %.lr.ph.i.i44.preheader, label %._crit_edge.i.i43

.lr.ph.i.i44.preheader:                           ; preds = %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 8
  br label %.lr.ph.i.i44

.lr.ph.i.i44:                                     ; preds = %.lr.ph.i.i44.preheader, %.thread139
  %.024.i.i = phi ptr [ %i.ej, %.thread139 ], [ %i.ak, %.lr.ph.i.i44.preheader ] ; 2 uses
  %.01823.i.i = phi ptr [ %.1.i.i, %.thread139 ], [ %i.aw, %.lr.ph.i.i44.preheader ] ; 2 uses
  %.01922.i.i = phi ptr [ %.120.i.i143, %.thread139 ], [ %i.bc, %.lr.ph.i.i44.preheader ] ; 6 uses
  %i.ca = load ptr, ptr %.01922.i.i, align 8, !tbaa !102 ; 7 uses
  %i.cb = load ptr, ptr %.01823.i.i, align 8, !tbaa !102 ; 8 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %.thread139, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i44
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !117 ; 3 uses
  %i.cf = load i32, ptr %i.bz, align 8, !tbaa !40 ; 4 uses
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  %i.ch = and i32 %i.cg, %i.ce                    ; 3 uses
  %i.ci = load ptr, ptr %.sroa.01.0.copyload.i, align 8, !tbaa !46 ; 5 uses
  %i.cj = zext i32 %i.ch to i64
  %.idx.i.i.i.i72 = shl nuw nsw i64 %i.cj, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx.i.i.i.i72 ; 3 uses
  %i.cl = zext i32 %i.cf to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cl ; 2 uses
  %.not34.i.i.i.i73 = icmp eq i32 %i.ch, %i.cf
  br i1 %.not34.i.i.i.i73, label %.preheader.i.i.i.i78, label %.lr.ph.i.i.i.i74

.preheader.i.i.i.i78:                             ; preds = %bb.o, %bb.l
  %.not2736.i.i.i.i79 = icmp eq i32 %i.ch, 0
  br i1 %.not2736.i.i.i.i79, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87, label %.lr.ph38.i.i.i.i80

.lr.ph.i.i.i.i74:                                 ; preds = %bb.l, %bb.o
  %.035.i.i.i.i75 = phi ptr [ %i.cu, %bb.o ], [ %i.ck, %bb.l ] ; 3 uses
  %i.cn = load ptr, ptr %.035.i.i.i.i75, align 8, !tbaa !94 ; 4 uses
  %i.co = icmp ult ptr %i.cn, inttoptr (i64 2 to ptr)
  br i1 %i.co, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i74
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !117
  %i.cr = icmp eq i32 %i.cq, %i.ce
  %i.cs = icmp eq ptr %i.cn, %i.ca
  %or.cond.i.i.i.i76 = and i1 %i.cs, %i.cr
  br i1 %or.cond.i.i.i.i76, label %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i111, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i74
  %i.ct = icmp eq ptr %i.cn, null
  br i1 %i.ct, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i75, i64 16 ; 2 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.cu, %i.cm
  br i1 %.not.i.i.i.i77, label %.preheader.i.i.i.i78, label %.lr.ph.i.i.i.i74, !llvm.loop !5

.lr.ph38.i.i.i.i80:                               ; preds = %.preheader.i.i.i.i78, %.lr.ph38.i.i.i.i80.backedge
  %.137.i.i.i.i81 = phi ptr [ %.137.i.i.i.i81.be, %.lr.ph38.i.i.i.i80.backedge ], [ %i.ci, %.preheader.i.i.i.i78 ] ; 4 uses
  %i.cv = load ptr, ptr %.137.i.i.i.i81, align 8, !tbaa !94 ; 4 uses
  %i.cw = icmp ult ptr %i.cv, inttoptr (i64 2 to ptr)
  br i1 %i.cw, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph38.i.i.i.i80
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !117
  %i.cz = icmp eq i32 %i.cy, %i.ce
  %i.da = icmp eq ptr %i.cv, %i.ca
  %or.cond31.i.i.i.i82 = and i1 %i.da, %i.cz
  br i1 %or.cond31.i.i.i.i82, label %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i111, label %bb.r

bb.q:                                             ; preds = %.lr.ph38.i.i.i.i80
  %i.db = icmp eq ptr %i.cv, null
  %i.dc = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i81, i64 16 ; 2 uses
  %.not27.i.i.i.i113 = icmp eq ptr %i.dc, %i.ck
  %or.cond43.i.i.i.i114 = select i1 %i.db, i1 true, i1 %.not27.i.i.i.i113
  br i1 %or.cond43.i.i.i.i114, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87, label %.lr.ph38.i.i.i.i80.backedge

bb.r:                                             ; preds = %bb.p
  %.old.i.i.i.i83 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i81, i64 16 ; 2 uses
  %.not27.old.i.i.i.i84 = icmp eq ptr %.old.i.i.i.i83, %i.ck
  br i1 %.not27.old.i.i.i.i84, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87, label %.lr.ph38.i.i.i.i80.backedge

.lr.ph38.i.i.i.i80.backedge:                      ; preds = %bb.r, %bb.q
  %.137.i.i.i.i81.be = phi ptr [ %i.dc, %bb.q ], [ %.old.i.i.i.i83, %bb.r ]
  br label %.lr.ph38.i.i.i.i80, !llvm.loop !6

_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i111:  ; preds = %bb.m, %bb.p
  %.026.i.i.i.i112 = phi ptr [ %.137.i.i.i.i81, %bb.p ], [ %.035.i.i.i.i75, %bb.m ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i112, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !118
  br label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87

_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87:        ; preds = %bb.n, %bb.r, %bb.q, %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i111, %.preheader.i.i.i.i78
  %.034.i88 = phi i32 [ 0, %.preheader.i.i.i.i78 ], [ 0, %bb.r ], [ %i.de, %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i111 ], [ 0, %bb.q ], [ 0, %bb.n ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !117 ; 3 uses
  %i.dh = and i32 %i.dg, %i.cg                    ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %.idx.i.i.i12.i89 = shl nuw nsw i64 %i.di, 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx.i.i.i12.i89 ; 3 uses
  %.not34.i.i.i13.i90 = icmp eq i32 %i.dh, %i.cf
  br i1 %.not34.i.i.i13.i90, label %.preheader.i.i.i18.i95, label %.lr.ph.i.i.i14.i91

.preheader.i.i.i18.i95:                           ; preds = %bb.u, %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87
  %.not2736.i.i.i19.i96 = icmp eq i32 %i.dh, 0
  br i1 %.not2736.i.i.i19.i96, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i104, label %.lr.ph38.i.i.i20.i97

.lr.ph.i.i.i14.i91:                               ; preds = %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87, %bb.u
  %.035.i.i.i15.i92 = phi ptr [ %i.dr, %bb.u ], [ %i.dj, %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i87 ] ; 3 uses
  %i.dk = load ptr, ptr %.035.i.i.i15.i92, align 8, !tbaa !94 ; 4 uses
  %i.dl = icmp ult ptr %i.dk, inttoptr (i64 2 to ptr)
  br i1 %i.dl, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i14.i91
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !117
  %i.do = icmp eq i32 %i.dn, %i.dg
  %i.dp = icmp eq ptr %i.dk, %i.cb
  %or.cond.i.i.i16.i93 = and i1 %i.dp, %i.do
  br i1 %or.cond.i.i.i16.i93, label %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i107, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i14.i91
  %i.dq = icmp eq ptr %i.dk, null
  br i1 %i.dq, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i104, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %.035.i.i.i15.i92, i64 16 ; 2 uses
  %.not.i.i.i17.i94 = icmp eq ptr %i.dr, %i.cm
  br i1 %.not.i.i.i17.i94, label %.preheader.i.i.i18.i95, label %.lr.ph.i.i.i14.i91, !llvm.loop !5

.lr.ph38.i.i.i20.i97:                             ; preds = %.preheader.i.i.i18.i95, %.lr.ph38.i.i.i20.i97.backedge
  %.137.i.i.i21.i98 = phi ptr [ %.137.i.i.i21.i98.be, %.lr.ph38.i.i.i20.i97.backedge ], [ %i.ci, %.preheader.i.i.i18.i95 ] ; 4 uses
  %i.ds = load ptr, ptr %.137.i.i.i21.i98, align 8, !tbaa !94 ; 4 uses
  %i.dt = icmp ult ptr %i.ds, inttoptr (i64 2 to ptr)
  br i1 %i.dt, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph38.i.i.i20.i97
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !117
  %i.dw = icmp eq i32 %i.dv, %i.dg
  %i.dx = icmp eq ptr %i.ds, %i.cb
  %or.cond31.i.i.i22.i99 = and i1 %i.dx, %i.dw
  br i1 %or.cond31.i.i.i22.i99, label %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i107, label %bb.x

bb.w:                                             ; preds = %.lr.ph38.i.i.i20.i97
  %i.dy = icmp eq ptr %i.ds, null
  %i.dz = getelementptr inbounds nuw i8, ptr %.137.i.i.i21.i98, i64 16 ; 2 uses
  %.not27.i.i.i29.i109 = icmp eq ptr %i.dz, %i.dj
  %or.cond43.i.i.i30.i110 = select i1 %i.dy, i1 true, i1 %.not27.i.i.i29.i109
  br i1 %or.cond43.i.i.i30.i110, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i104, label %.lr.ph38.i.i.i20.i97.backedge

bb.x:                                             ; preds = %bb.v
  %.old.i.i.i23.i100 = getelementptr inbounds nuw i8, ptr %.137.i.i.i21.i98, i64 16 ; 2 uses
  %.not27.old.i.i.i24.i101 = icmp eq ptr %.old.i.i.i23.i100, %i.dj
  br i1 %.not27.old.i.i.i24.i101, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i104, label %.lr.ph38.i.i.i20.i97.backedge

.lr.ph38.i.i.i20.i97.backedge:                    ; preds = %bb.x, %bb.w
  %.137.i.i.i21.i98.be = phi ptr [ %i.dz, %bb.w ], [ %.old.i.i.i23.i100, %bb.x ]
  br label %.lr.ph38.i.i.i20.i97, !llvm.loop !6

_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i107: ; preds = %bb.s, %bb.v
  %.026.i.i.i28.i108 = phi ptr [ %.137.i.i.i21.i98, %bb.v ], [ %.035.i.i.i15.i92, %bb.s ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.026.i.i.i28.i108, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !118
  br label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i104

_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i104:     ; preds = %bb.t, %bb.x, %bb.w, %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i107, %.preheader.i.i.i18.i95
  %.033.i105 = phi i32 [ 0, %.preheader.i.i.i18.i95 ], [ 0, %bb.x ], [ %i.eb, %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i107 ], [ 0, %bb.w ], [ 0, %bb.t ] ; 2 uses
  %i.ec = icmp sgt i32 %.034.i88, %.033.i105
  br i1 %i.ec, label %.split144.thread, label %bb.y

.split144.thread:                                 ; preds = %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i104
  %.120.i.i146159 = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 8
  br label %.thread139

bb.y:                                             ; preds = %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i104
  %i.ed = icmp eq i32 %.034.i88, %.033.i105
  br i1 %i.ed, label %_ZNK7grobner6var_ltclEP4exprS2_.exit115, label %.thread139

_ZNK7grobner6var_ltclEP4exprS2_.exit115:          ; preds = %bb.y
  %i.ee = load i32, ptr %i.ca, align 4, !tbaa !107
  %i.ef = load i32, ptr %i.cb, align 4, !tbaa !107
  %i.eg = icmp ult i32 %i.ee, %i.ef
  %cond.fr = freeze i1 %i.eg
  br i1 %cond.fr, label %.split144, label %.thread139

.split144:                                        ; preds = %_ZNK7grobner6var_ltclEP4exprS2_.exit115
  %.120.i.i146 = getelementptr inbounds nuw i8, ptr %.01922.i.i, i64 8
  br label %.thread139

.thread139:                                       ; preds = %_ZNK7grobner6var_ltclEP4exprS2_.exit115, %.split144, %.split144.thread, %bb.y, %.lr.ph.i.i44
  %.120.i.i143 = phi ptr [ %.01922.i.i, %bb.y ], [ %.120.i.i146159, %.split144.thread ], [ %.120.i.i146, %.split144 ], [ %.01922.i.i, %.lr.ph.i.i44 ], [ %.01922.i.i, %_ZNK7grobner6var_ltclEP4exprS2_.exit115 ] ; 2 uses
  %i.eh = phi ptr [ %i.cb, %bb.y ], [ %i.ca, %.split144.thread ], [ %i.ca, %.split144 ], [ %i.cb, %.lr.ph.i.i44 ], [ %i.cb, %_ZNK7grobner6var_ltclEP4exprS2_.exit115 ]
  %i.ei = phi i64 [ 8, %bb.y ], [ 0, %.split144.thread ], [ 0, %.split144 ], [ 8, %.lr.ph.i.i44 ], [ 8, %_ZNK7grobner6var_ltclEP4exprS2_.exit115 ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.01823.i.i, i64 %i.ei ; 3 uses
  store ptr %i.eh, ptr %.024.i.i, align 8, !tbaa !102
  %i.ej = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 2 uses
  %i.ek = icmp ne ptr %.1.i.i, %i.be              ; 2 uses
  %i.el = icmp ne ptr %.120.i.i143, %i.aq
  %i.em = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %i.em, label %.lr.ph.i.i44, label %._crit_edge.i.i43, !llvm.loop !10

._crit_edge.i.i43:                                ; preds = %.thread139, %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i
  %.018.lcssa.i.i = phi ptr [ %i.aw, %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i ], [ %.1.i.i, %.thread139 ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %i.ak, %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i ], [ %i.ej, %.thread139 ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.bw, %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit.i ], [ %i.ek, %.thread139 ]
  br i1 %.lcssa.i.i, label %bb.z, label %_ZSt22__stable_sort_adaptiveIPP4exprS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_S9_T0_T1_.exit.i

bb.z:                                             ; preds = %._crit_edge.i.i43
  %i.en = ptrtoint ptr %i.be to i64
  %i.eo = ptrtoint ptr %.018.lcssa.i.i to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 3 uses
  %i.eq = icmp sgt i64 %i.ep, 8
  br i1 %i.eq, label %bb.aa, label %bb.ab, !prof !123

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.lcssa.i.i, ptr align 8 %.018.lcssa.i.i, i64 %i.ep, i1 false)
  br label %_ZSt22__stable_sort_adaptiveIPP4exprS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_S9_T0_T1_.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.er = icmp eq i64 %i.ep, 8
  br i1 %i.er, label %bb.ac, label %_ZSt22__stable_sort_adaptiveIPP4exprS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_S9_T0_T1_.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %.018.lcssa.i.i, align 8, !tbaa !102
  store ptr %i.es, ptr %.0.lcssa.i.i, align 8, !tbaa !102
  br label %_ZSt22__stable_sort_adaptiveIPP4exprS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_S9_T0_T1_.exit.i

bb.ad:                                            ; preds = %.noexc17.i
  %i.et = icmp sgt i64 %gepdiff, 8
  br i1 %i.et, label %.thread150, label %bb.ae, !prof !197

.thread150:                                       ; preds = %.noexc17.i.thread, %bb.ad
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aw, ptr nonnull align 8 %i.bc, i64 %gepdiff, i1 false)
  br label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i

bb.ae:                                            ; preds = %bb.ad
  %i.eu = icmp eq i64 %gepdiff, 8
  br i1 %i.eu, label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i.thread, label %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i

_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i:        ; preds = %bb.ae, %.thread150
  %i.ev = icmp eq i64 %i.au, 0
  br i1 %i.ev, label %bb.af, label %bb.ai

_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i.thread: ; preds = %bb.ae
  %i.ew = load ptr, ptr %i.bc, align 8, !tbaa !102 ; 2 uses
  store ptr %i.ew, ptr %i.aw, align 8, !tbaa !102
  %4 = icmp eq i64 %i.au, 0
  br i1 %4, label %.thread152, label %bb.ai

bb.af:                                            ; preds = %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i
  %i.ex = icmp sgt i64 %i.bl, 1
  br i1 %i.ex, label %bb.ag, label %bb.ah, !prof !124

bb.ag:                                            ; preds = %bb.af
  %i.ey = sub nsw i64 0, %i.bl
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ey
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr align 8 %i.aw, i64 %gepdiff, i1 false)
  br label %_ZSt22__stable_sort_adaptiveIPP4exprS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_S9_T0_T1_.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.fa = icmp eq i64 %gepdiff, 8
  br i1 %i.fa, label %..thread152_crit_edge, label %_ZSt22__stable_sort_adaptiveIPP4exprS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_S9_T0_T1_.exit.i

..thread152_crit_edge:                            ; preds = %bb.ah
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !102
  br label %.thread152

.thread152:                                       ; preds = %..thread152_crit_edge, %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i.thread
  %5 = phi ptr [ %.pre, %..thread152_crit_edge ], [ %i.ew, %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i.thread ]
  %6 = getelementptr inbounds i8, ptr %i.aq, i64 -8
  store ptr %5, ptr %6, align 8, !tbaa !102
  br label %_ZSt22__stable_sort_adaptiveIPP4exprS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_S9_T0_T1_.exit.i

bb.ai:                                            ; preds = %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i.thread, %_ZSt4moveIPP4exprS2_ET0_T_S4_S3_.exit19.i
  %i.fb = icmp samesign eq i64 %i.ap, %.idx162
  br i1 %i.fb, label %_ZSt22__stable_sort_adaptiveIPP4exprS2_N9__gnu_cxx5__ops15_Iter_comp_iterIN7grobner6var_ltEEEEvT_S9_S9_T0_T1_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fc = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 8
  br label %.outer

.outer:                                           ; preds = %.loopexit421, %bb.aj
  %.026.i.i.ph.pn = phi ptr [ %i.bc, %bb.aj ], [ %.026.i.i.ph, %.loopexit421 ]
  %.024.i20.i.ph = phi ptr [ %i.fc, %bb.aj ], [ %.024.i20.i, %.loopexit421 ]
  %.0.i.i.ph = phi ptr [ %i.aq, %bb.aj ], [ %i.ho, %.loopexit421 ]
  %.026.i.i.ph = getelementptr inbounds i8, ptr %.026.i.i.ph.pn, i64 -8 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.outer, %bb.be
  %.024.i20.i = phi ptr [ %i.ie, %bb.be ], [ %.024.i20.i.ph, %.outer ] ; 5 uses
  %.0.i.i = phi ptr [ %i.ic, %bb.be ], [ %.0.i.i.ph, %.outer ] ; 5 uses
  %i.fe = load ptr, ptr %.024.i20.i, align 8, !tbaa !102 ; 6 uses
  %i.ff = load ptr, ptr %.026.i.i.ph, align 8, !tbaa !102 ; 6 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNK7grobner6var_ltclEP4exprS2_.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !117 ; 3 uses
  %i.fj = load i32, ptr %i.fd, align 8, !tbaa !40 ; 4 uses
  %i.fk = add i32 %i.fj, -1                       ; 2 uses
  %i.fl = and i32 %i.fk, %i.fi                    ; 3 uses
  %i.fm = load ptr, ptr %.sroa.01.0.copyload.i, align 8, !tbaa !46 ; 5 uses
  %i.fn = zext i32 %i.fl to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.fn, 4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx.i.i.i.i ; 3 uses
  %i.fp = zext i32 %i.fj to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fp ; 2 uses
  %.not34.i.i.i.i = icmp eq i32 %i.fl, %i.fj
  br i1 %.not34.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.ao, %bb.al
  %.not2736.i.i.i.i = icmp eq i32 %i.fl, 0
  br i1 %.not2736.i.i.i.i, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i, label %.lr.ph38.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %bb.ao
  %.035.i.i.i.i = phi ptr [ %i.fy, %bb.ao ], [ %i.fo, %bb.al ] ; 3 uses
  %i.fr = load ptr, ptr %.035.i.i.i.i, align 8, !tbaa !94 ; 4 uses
  %i.fs = icmp ult ptr %i.fr, inttoptr (i64 2 to ptr)
  br i1 %i.fs, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !117
  %i.fv = icmp eq i32 %i.fu, %i.fi
  %i.fw = icmp eq ptr %i.fr, %i.fe
  %or.cond.i.i.i.i = and i1 %i.fw, %i.fv
  br i1 %or.cond.i.i.i.i, label %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fx = icmp eq ptr %i.fr, null
  br i1 %i.fx, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fy = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fy, %i.fq
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

.lr.ph38.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i, %.lr.ph38.i.i.i.i.backedge
  %.137.i.i.i.i = phi ptr [ %.137.i.i.i.i.be, %.lr.ph38.i.i.i.i.backedge ], [ %i.fm, %.preheader.i.i.i.i ] ; 4 uses
  %i.fz = load ptr, ptr %.137.i.i.i.i, align 8, !tbaa !94 ; 4 uses
  %i.ga = icmp ult ptr %i.fz, inttoptr (i64 2 to ptr)
  br i1 %i.ga, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph38.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !117
  %i.gd = icmp eq i32 %i.gc, %i.fi
  %i.ge = icmp eq ptr %i.fz, %i.fe
  %or.cond31.i.i.i.i = and i1 %i.ge, %i.gd
  br i1 %or.cond31.i.i.i.i, label %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph38.i.i.i.i
  %i.gf = icmp eq ptr %i.fz, null
  %i.gg = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.gg, %i.fo
  %or.cond43.i.i.i.i = select i1 %i.gf, i1 true, i1 %.not27.i.i.i.i
  br i1 %or.cond43.i.i.i.i, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i, label %.lr.ph38.i.i.i.i.backedge

bb.ar:                                            ; preds = %bb.ap
  %.old.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i.i = icmp eq ptr %.old.i.i.i.i, %i.fo
  br i1 %.not27.old.i.i.i.i, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i, label %.lr.ph38.i.i.i.i.backedge

.lr.ph38.i.i.i.i.backedge:                        ; preds = %bb.ar, %bb.aq
  %.137.i.i.i.i.be = phi ptr [ %i.gg, %bb.aq ], [ %.old.i.i.i.i, %bb.ar ]
  br label %.lr.ph38.i.i.i.i, !llvm.loop !6

_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i:     ; preds = %bb.am, %bb.ap
  %.026.i.i.i.i = phi ptr [ %.137.i.i.i.i, %bb.ap ], [ %.035.i.i.i.i, %bb.am ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i, i64 8
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !118
  br label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i

_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i:          ; preds = %bb.an, %bb.ar, %bb.aq, %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i, %.preheader.i.i.i.i
  %.034.i = phi i32 [ 0, %.preheader.i.i.i.i ], [ 0, %bb.ar ], [ %i.gi, %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i.i ], [ 0, %bb.aq ], [ 0, %bb.an ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !117 ; 3 uses
  %i.gl = and i32 %i.gk, %i.fk                    ; 3 uses
  %i.gm = zext i32 %i.gl to i64
  %.idx.i.i.i12.i = shl nuw nsw i64 %i.gm, 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.idx.i.i.i12.i ; 3 uses
  %.not34.i.i.i13.i = icmp eq i32 %i.gl, %i.fj
  br i1 %.not34.i.i.i13.i, label %.preheader.i.i.i18.i, label %.lr.ph.i.i.i14.i

.preheader.i.i.i18.i:                             ; preds = %bb.au, %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i
  %.not2736.i.i.i19.i = icmp eq i32 %i.gl, 0
  br i1 %.not2736.i.i.i19.i, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i, label %.lr.ph38.i.i.i20.i

.lr.ph.i.i.i14.i:                                 ; preds = %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i, %bb.au
  %.035.i.i.i15.i = phi ptr [ %i.gv, %bb.au ], [ %i.gn, %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit.i ] ; 3 uses
  %i.go = load ptr, ptr %.035.i.i.i15.i, align 8, !tbaa !94 ; 4 uses
  %i.gp = icmp ult ptr %i.go, inttoptr (i64 2 to ptr)
  br i1 %i.gp, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i14.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !117
  %i.gs = icmp eq i32 %i.gr, %i.gk
  %i.gt = icmp eq ptr %i.go, %i.ff
  %or.cond.i.i.i16.i = and i1 %i.gt, %i.gs
  br i1 %or.cond.i.i.i16.i, label %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.i.i14.i
  %i.gu = icmp eq ptr %i.go, null
  br i1 %i.gu, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gv = getelementptr inbounds nuw i8, ptr %.035.i.i.i15.i, i64 16 ; 2 uses
  %.not.i.i.i17.i = icmp eq ptr %i.gv, %i.fq
  br i1 %.not.i.i.i17.i, label %.preheader.i.i.i18.i, label %.lr.ph.i.i.i14.i, !llvm.loop !5

.lr.ph38.i.i.i20.i:                               ; preds = %.preheader.i.i.i18.i, %.lr.ph38.i.i.i20.i.backedge
  %.137.i.i.i21.i = phi ptr [ %.137.i.i.i21.i.be, %.lr.ph38.i.i.i20.i.backedge ], [ %i.fm, %.preheader.i.i.i18.i ] ; 4 uses
  %i.gw = load ptr, ptr %.137.i.i.i21.i, align 8, !tbaa !94 ; 4 uses
  %i.gx = icmp ult ptr %i.gw, inttoptr (i64 2 to ptr)
  br i1 %i.gx, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph38.i.i.i20.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !117
  %i.ha = icmp eq i32 %i.gz, %i.gk
  %i.hb = icmp eq ptr %i.gw, %i.ff
  %or.cond31.i.i.i22.i = and i1 %i.hb, %i.ha
  br i1 %or.cond31.i.i.i22.i, label %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph38.i.i.i20.i
  %i.hc = icmp eq ptr %i.gw, null
  %i.hd = getelementptr inbounds nuw i8, ptr %.137.i.i.i21.i, i64 16 ; 2 uses
  %.not27.i.i.i29.i = icmp eq ptr %i.hd, %i.gn
  %or.cond43.i.i.i30.i = select i1 %i.hc, i1 true, i1 %.not27.i.i.i29.i
  br i1 %or.cond43.i.i.i30.i, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i, label %.lr.ph38.i.i.i20.i.backedge

bb.ax:                                            ; preds = %bb.av
  %.old.i.i.i23.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i21.i, i64 16 ; 2 uses
  %.not27.old.i.i.i24.i = icmp eq ptr %.old.i.i.i23.i, %i.gn
  br i1 %.not27.old.i.i.i24.i, label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i, label %.lr.ph38.i.i.i20.i.backedge

.lr.ph38.i.i.i20.i.backedge:                      ; preds = %bb.ax, %bb.aw
  %.137.i.i.i21.i.be = phi ptr [ %i.hd, %bb.aw ], [ %.old.i.i.i23.i, %bb.ax ]
  br label %.lr.ph38.i.i.i20.i, !llvm.loop !6

_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i:   ; preds = %bb.as, %bb.av
  %.026.i.i.i28.i = phi ptr [ %.137.i.i.i21.i, %bb.av ], [ %.035.i.i.i15.i, %bb.as ]
  %i.he = getelementptr inbounds nuw i8, ptr %.026.i.i.i28.i, i64 8
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !118
  br label %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i

_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i:        ; preds = %bb.at, %bb.ax, %bb.aw, %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i, %.preheader.i.i.i18.i
  %.033.i = phi i32 [ 0, %.preheader.i.i.i18.i ], [ 0, %bb.ax ], [ %i.hf, %_ZNK7obj_mapI4expriE9find_coreEPS0_.exit.i27.i ], [ 0, %bb.aw ], [ 0, %bb.at ] ; 2 uses
  %i.hg = icmp sgt i32 %.034.i, %.033.i
  br i1 %i.hg, label %_ZNK7grobner6var_ltclEP4exprS2_.exit.thread154, label %bb.ay

_ZNK7grobner6var_ltclEP4exprS2_.exit.thread154:   ; preds = %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i
  %i.hh = getelementptr inbounds i8, ptr %.0.i.i, i64 -8
  br label %.loopexit421

bb.ay:                                            ; preds = %_ZNK7obj_mapI4expriE4findEPS0_Ri.exit31.i
  %i.hi = icmp eq i32 %.034.i, %.033.i
  br i1 %i.hi, label %_ZNK7grobner6var_ltclEP4exprS2_.exit, label %_ZNK7grobner6var_ltclEP4exprS2_.exit.thread

_ZNK7grobner6var_ltclEP4exprS2_.exit.thread:      ; preds = %bb.ak, %bb.ay
  %i.hj = getelementptr inbounds i8, ptr %.0.i.i, i64 -8
  br label %bb.bd

_ZNK7grobner6var_ltclEP4exprS2_.exit:             ; preds = %bb.ay
  %i.hk = load i32, ptr %i.fe, align 4, !tbaa !107
  %i.hl = load i32, ptr %i.ff, align 4, !tbaa !107
  %i.hm = icmp ult i32 %i.hk, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %.0.i.i, i64 -8 ; 2 uses
end_hunk_0
