Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/compact?download=true
inline.NumInlined: 1977
inline.NumDeleted: 984
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7CaDiCaL6Mapper25map_flush_and_shrink_litsERSt6vectorIiSaIiEE:bb.a
  %.pre = load ptr, ptr %1, align 8, !tbaa !172   ; 2 uses
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !187
  %.pre23 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.f:                                             ; preds = %._crit_edge
  %i.w = icmp uge i64 %i.q, %i.t
  %.not.i.i = icmp eq ptr %i.b, %.sroa.015.0.lcssa
  %or.cond = or i1 %i.w, %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !187
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre23, %bb.e ], [ %.cast, %bb.f ], [ %.cast, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.y = phi ptr [ %.pre22, %bb.e ], [ %i.b, %bb.f ], [ %i.x, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.z = phi ptr [ %.pre, %bb.e ], [ %i.c, %bb.f ], [ %i.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !200
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %.pre-phi
  %i.ae = ptrtoint ptr %i.y to i64
  %i.af = sub i64 %i.ae, %.pre-phi                ; 4 uses
  %i.ag = icmp ugt i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp ugt i64 %i.af, 9223372036854775804
  br i1 %i.ah, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !177

.noexc.i.i.i:                                     ; preds = %bb.h
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #15
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !171 ; 2 uses
  %.pre6.i = load ptr, ptr %i.a, align 8, !tbaa !171
  %.pre7.i = ptrtoint ptr %.pre6.i to i64
  %.pre8.i = ptrtoint ptr %.pre.i to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.g
  %.pre-phi9.i = phi i64 [ %.pre8.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.g ]
  %.pre-phi.i = phi i64 [ %.pre7.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.g ]
  %i.aj = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.z, %bb.g ] ; 4 uses
  %i.ak = phi ptr [ %i.ai, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.g ] ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.af ; 2 uses
  %i.am = sub i64 %.pre-phi.i, %.pre-phi9.i       ; 4 uses
  %i.an = icmp sgt i64 %i.am, 4
  br i1 %i.an, label %bb.j, label %bb.k, !prof !179

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ak, ptr align 4 %i.aj, i64 %i.am, i1 false)
  br label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ao = icmp eq i64 %i.am, 4
  br i1 %i.ao, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i, label %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i:       ; preds = %bb.k
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !167
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !167
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store ptr %i.ak, ptr %1, align 8, !tbaa !172
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !187
  store ptr %i.al, ptr %i.aa, align 8, !tbaa !200
  br label %bb.l

_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i:              ; preds = %bb.k, %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.am
  store ptr %i.ak, ptr %1, align 8, !tbaa !172
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !187
  store ptr %i.al, ptr %i.aa, align 8, !tbaa !200
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.thread.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aj) #16
  br label %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit

_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZNSt6vectorIiSaIiEEC2ERKS1_.exit.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL6Mapper10map_vectorINS_5FlagsEEEvRSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164, !nonnull !165, !align !166
  %i.d = load i32, ptr %i.c, align 4, !tbaa !167  ; 5 uses
  %.not1516 = icmp eq i32 %i.d, 0
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %xtraiter = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.d, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.d, -2
  br label %bb.j

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.n
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.sroa.012.017.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.cb, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod34 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.h = sext i32 %.sroa.012.017.epil.init to i64 ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !167  ; 2 uses
  %.not.epil = icmp eq i32 %i.j, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.k = load ptr, ptr %1, align 8, !tbaa !168    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  %i.o = load i32, ptr %i.l, align 1, !tbaa !169
  store i32 %i.o, ptr %i.n, align 1, !tbaa !169
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !170  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !201  ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !168    ; 5 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 4 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 3 uses
  %i.y = icmp ugt i64 %i.q, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.z = sub nuw i64 %i.q, %i.x
  tail call void @_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.z)
  %.pre = load ptr, ptr %1, align 8, !tbaa !168   ; 2 uses
  %.pre18 = load ptr, ptr %i.r, align 8, !tbaa !201
  %.pre19 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %._crit_edge
  %i.aa = icmp ult i64 %i.q, %i.x
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.q ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7CaDiCaL5FlagsES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7CaDiCaL5FlagsES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !201
  br label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN7CaDiCaL5FlagsES1_EvT_S3_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre19, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ], [ %i.v, %_ZSt8_DestroyIPN7CaDiCaL5FlagsES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ac = phi ptr [ %.pre18, %bb.c ], [ %i.s, %bb.d ], [ %i.s, %bb.e ], [ %i.ab, %_ZSt8_DestroyIPN7CaDiCaL5FlagsES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %_ZSt8_DestroyIPN7CaDiCaL5FlagsES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %.pre-phi
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = sub i64 %i.ai, %.pre-phi                ; 5 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN7CaDiCaL13shrink_vectorINS_5FlagsEEEvRSt6vectorIT_SaIS3_EE.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr null, i64 %i.aj
  br label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EEC2ERKS3_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.am = icmp ugt i64 %i.aj, 9223372036854775804
  br i1 %i.am, label %.noexc.i.i.i, label %bb.h, !prof !177

.noexc.i.i.i:                                     ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.an = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #15 ; 9 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !288 ; 8 uses
  %.pre5.i = load ptr, ptr %i.r, align 8, !tbaa !288 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %.pre.i, %.pre5.i
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.h
  %.pre.i29 = ptrtoaddr ptr %.pre.i to i64        ; 2 uses
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = ptrtoaddr ptr %.pre5.i to i64
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %.pre.i29                ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 44
  %2 = sub i64 %.pre.i29, %i.ap
  %diff.check = icmp ugt i64 %2, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2                       ; 2 uses
  %i.aw = getelementptr i8, ptr %i.an, i64 %i.av  ; 2 uses
  %i.ax = getelementptr i8, ptr %.pre.i, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.ay ; 2 uses
  %next.gep30 = getelementptr i8, ptr %.pre.i, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep30, align 1, !tbaa !169
  %wide.load31 = load <4 x i32>, ptr %i.az, align 1, !tbaa !169
  %i.ba = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 1, !tbaa !169
  store <4 x i32> %wide.load31, ptr %i.ba, align 1, !tbaa !169
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !286

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader33

.lr.ph.i.i.i.i.i.i.preheader33:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %.pre.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader33, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader33 ] ; 2 uses
  %i.bc = load i32, ptr %.sroa.04.08.i.i.i.i.i.i, align 1, !tbaa !169
  store i32 %i.bc, ptr %.09.i.i.i.i.i.i, align 1, !tbaa !169
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, %.pre5.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !287

_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.h, %.thread.i
  %i.bf = phi ptr [ %i.ao, %bb.h ], [ %i.al, %.thread.i ], [ %i.ao, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i.i.i ]
  %i.bg = phi ptr [ %i.an, %bb.h ], [ null, %.thread.i ], [ %i.an, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i.i ]
  %i.bh = phi ptr [ %.pre.i, %bb.h ], [ %i.ad, %.thread.i ], [ %.pre.i, %middle.block ], [ %.pre.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ null, %.thread.i ], [ %i.aw, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i.i ]
  store ptr %i.bg, ptr %1, align 8, !tbaa !168
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !201
  store ptr %i.bf, ptr %i.ae, align 8, !tbaa !202
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorINS_5FlagsEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EEC2ERKS3_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bh) #16
  br label %_ZN7CaDiCaL13shrink_vectorINS_5FlagsEEEvRSt6vectorIT_SaIS3_EE.exit

_ZN7CaDiCaL13shrink_vectorINS_5FlagsEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE6resizeEm.exit, %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EEC2ERKS3_.exit.i, %bb.i
  ret void

bb.j:                                             ; preds = %bb.n, %.lr.ph.new
  %.sroa.012.017 = phi i32 [ 1, %.lr.ph.new ], [ %i.cb, %bb.n ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.n ]
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.bj = sext i32 %.sroa.012.017 to i64          ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !167 ; 2 uses
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %1, align 8, !tbaa !168   ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bj
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i32, ptr %i.bn, align 1, !tbaa !169
  store i32 %i.bq, ptr %i.bp, align 1, !tbaa !169
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.br = add nuw i32 %.sroa.012.017, 1
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.bt = sext i32 %i.br to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !167 ; 2 uses
  %.not.1 = icmp eq i32 %i.bv, 0
  br i1 %.not.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %1, align 8, !tbaa !168   ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bt
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.by
  %i.ca = load i32, ptr %i.bx, align 1, !tbaa !169
  store i32 %i.ca, ptr %i.bz, align 1, !tbaa !169
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = add nuw i32 %.sroa.012.017, 2           ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL6Mapper10map_vectorIiEEvRSt6vectorIT_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164, !nonnull !165, !align !166
  %i.d = load i32, ptr %i.c, align 4, !tbaa !167  ; 5 uses
  %.not1516 = icmp eq i32 %i.d, 0
  %.pre18 = load ptr, ptr %1, align 8             ; 11 uses
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !163  ; 3 uses
  %xtraiter = and i32 %i.d, 1
  %i.g = icmp eq i32 %i.d, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.d, -2
  br label %bb.l

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.p
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.sroa.012.017.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.h = sext i32 %.sroa.012.017.epil.init to i64 ; 2 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !167  ; 2 uses
  %.not.epil = icmp eq i32 %i.j, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.pre18, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !167
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre18, i64 %i.m
  store i32 %i.l, ptr %i.n, align 4, !tbaa !167
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !170  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187  ; 4 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %.pre18 to i64              ; 4 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 3 uses
  %i.w = icmp ugt i64 %i.p, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.x = sub nuw i64 %i.p, %i.v
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.x)
  %.pre19 = load ptr, ptr %1, align 8, !tbaa !172 ; 2 uses
  %.pre20 = load ptr, ptr %i.q, align 8, !tbaa !187
  %.pre = ptrtoint ptr %.pre19 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.d:                                             ; preds = %._crit_edge
  %i.y = icmp ult i64 %i.p, %i.v
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre18, i64 %i.p ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, %i.z
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.z, ptr %i.q, align 8, !tbaa !187
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.aa = phi ptr [ %.pre20, %bb.c ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.z, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre19, %bb.c ], [ %.pre18, %bb.d ], [ %.pre18, %bb.e ], [ %.pre18, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !200
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %.pre-phi
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = sub i64 %i.ag, %.pre-phi                ; 4 uses
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN7CaDiCaL13shrink_vectorIiEEvRSt6vectorIT_SaIS2_EE.exit

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775804
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIjSaIjEE17_M_default_appendEm:bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !190    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !167
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !167
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !189
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #15 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !167
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !167
  br label %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36: ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !190
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !189
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !191
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPjmjET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !173    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !174
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !174
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !175
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #15 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !174
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !174
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !175
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !176
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !201  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !168    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %1, -8                         ; 3 uses
  %i.p = shl i64 %n.vec, 2
  %i.q = getelementptr i8, ptr %i.b, i64 %i.p     ; 2 uses
  %i.r = and i64 %1, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.s ; 3 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 1
  %wide.load41 = load <4 x i32>, ptr %i.t, align 1
  %i.u = and <4 x i32> %wide.load, splat (i32 -121601856)
  %i.v = and <4 x i32> %wide.load41, splat (i32 -121601856)
  %i.w = or disjoint <4 x i32> %i.u, splat (i32 26368)
  %i.x = or disjoint <4 x i32> %i.v, splat (i32 26368)
  store <4 x i32> %i.w, ptr %next.gep, align 1
  store <4 x i32> %i.x, ptr %i.t, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !292

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.preheader73

.lr.ph.i.i.i.preheader73:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.013.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.q, %middle.block ]
  %.01012.i.i.i.ph = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader73, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.013.i.i.i.ph, %.lr.ph.i.i.i.preheader73 ] ; 3 uses
  %.01012.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i ], [ %.01012.i.i.i.ph, %.lr.ph.i.i.i.preheader73 ]
  %i.z = load i32, ptr %.013.i.i.i, align 1
  %i.aa = and i32 %i.z, -121601856
  %i.ab = or disjoint i32 %i.aa, 26368
  store i32 %i.ab, ptr %.013.i.i.i, align 1
  %i.ac = add i64 %.01012.i.i.i, -1               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !293

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.q, %middle.block ], [ %i.ad, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !201
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.d, label %_ZNKSt6vectorIN7CaDiCaL5FlagsESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorIN7CaDiCaL5FlagsESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #15 ; 7 uses
  %2 = ptrtoaddr ptr %i.ai to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 4 uses
  %min.iters.check44 = icmp ult i64 %1, 8
  br i1 %min.iters.check44, label %.lr.ph.i.i.i30.preheader, label %vector.ph45

vector.ph45:                                      ; preds = %_ZNKSt6vectorIN7CaDiCaL5FlagsESaIS1_EE12_M_check_lenEmPKc.exit
  %n.vec46 = and i64 %1, -8                       ; 3 uses
  %i.ak = shl i64 %n.vec46, 2
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.am = and i64 %1, 7
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next52, %vector.body47 ] ; 2 uses
  %i.an = shl i64 %index48, 2
  %next.gep49 = getelementptr i8, ptr %i.aj, i64 %i.an ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep49, i64 16 ; 2 uses
  %wide.load50 = load <4 x i32>, ptr %next.gep49, align 1
  %wide.load51 = load <4 x i32>, ptr %i.ao, align 1
  %i.ap = and <4 x i32> %wide.load50, splat (i32 -121601856)
  %i.aq = and <4 x i32> %wide.load51, splat (i32 -121601856)
  %i.ar = or disjoint <4 x i32> %i.ap, splat (i32 26368)
  %i.as = or disjoint <4 x i32> %i.aq, splat (i32 26368)
  store <4 x i32> %i.ar, ptr %next.gep49, align 1
  store <4 x i32> %i.as, ptr %i.ao, align 1
  %index.next52 = add nuw i64 %index48, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.at, label %middle.block53, label %vector.body47, !llvm.loop !294

middle.block53:                                   ; preds = %vector.body47
  %cmp.n54 = icmp eq i64 %1, %n.vec46
  br i1 %cmp.n54, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNKSt6vectorIN7CaDiCaL5FlagsESaIS1_EE12_M_check_lenEmPKc.exit, %middle.block53
  %.013.i.i.i31.ph = phi ptr [ %i.aj, %_ZNKSt6vectorIN7CaDiCaL5FlagsESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.al, %middle.block53 ]
  %.01012.i.i.i32.ph = phi i64 [ %1, %_ZNKSt6vectorIN7CaDiCaL5FlagsESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.am, %middle.block53 ]
  br label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.preheader, %.lr.ph.i.i.i30
  %.013.i.i.i31 = phi ptr [ %i.ay, %.lr.ph.i.i.i30 ], [ %.013.i.i.i31.ph, %.lr.ph.i.i.i30.preheader ] ; 3 uses
  %.01012.i.i.i32 = phi i64 [ %i.ax, %.lr.ph.i.i.i30 ], [ %.01012.i.i.i32.ph, %.lr.ph.i.i.i30.preheader ]
  %i.au = load i32, ptr %.013.i.i.i31, align 1
  %i.av = and i32 %i.au, -121601856
  %i.aw = or disjoint i32 %i.av, 26368
  store i32 %i.aw, ptr %.013.i.i.i31, align 1
  %i.ax = add i64 %.01012.i.i.i32, -1             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i31, i64 4
  %.not.i.i.i33 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !295

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %middle.block53
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit35
  %i.az = add i64 %i.d, -4
  %i.ba = sub i64 %i.az, %i.e                     ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check58 = icmp ult i64 %i.ba, 44
  %3 = sub i64 %i.e, %2
  %diff.check = icmp ugt i64 %3, -32
  %or.cond = or i1 %min.iters.check58, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader72, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec60 = and i64 %i.bc, 9223372036854775800   ; 3 uses
  %i.bd = shl i64 %n.vec60, 2                     ; 2 uses
  %i.be = getelementptr i8, ptr %i.ai, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.c, i64 %i.bd
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body61 ] ; 2 uses
  %i.bg = shl i64 %index62, 2                     ; 2 uses
  %next.gep63 = getelementptr i8, ptr %i.ai, i64 %i.bg ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.c, i64 %i.bg ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.bh = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load65 = load <4 x i32>, ptr %next.gep64, align 1, !tbaa !169, !alias.scope !302, !noalias !301
  %wide.load66 = load <4 x i32>, ptr %i.bh, align 1, !tbaa !169, !alias.scope !302, !noalias !301
  %i.bi = getelementptr i8, ptr %next.gep63, i64 16
  store <4 x i32> %wide.load65, ptr %next.gep63, align 1, !tbaa !169, !alias.scope !301, !noalias !302
  store <4 x i32> %wide.load66, ptr %i.bi, align 1, !tbaa !169, !alias.scope !301, !noalias !302
  %index.next67 = add nuw i64 %index62, 8         ; 2 uses
  %i.bj = icmp eq i64 %index.next67, %n.vec60
  br i1 %i.bj, label %middle.block68, label %vector.body61, !llvm.loop !299

middle.block68:                                   ; preds = %vector.body61
  %cmp.n69 = icmp eq i64 %i.bc, %n.vec60
  br i1 %cmp.n69, label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i.preheader72

.lr.ph.i.i.i.i.preheader72:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block68
  %.012.i.i.i.i.ph = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.preheader ], [ %i.be, %middle.block68 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %middle.block68 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader72, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader72 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader72 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.bk = load i32, ptr %.0911.i.i.i.i, align 1, !tbaa !169, !alias.scope !302, !noalias !301
  store i32 %i.bk, ptr %.012.i.i.i.i, align 1, !tbaa !169, !alias.scope !301, !noalias !302
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bl, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !300

_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block68, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN7CaDiCaL5FlagsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.ai, ptr %0, align 8, !tbaa !168
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %1
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !201
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bo, ptr %i.h, align 8, !tbaa !202
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL5FlagsEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIaSaIaEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !204  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !196    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !169
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !204
  br label %_ZNSt6vectorIaSaIaEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #15 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !169
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit34.i

_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !196
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !204
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ac, ptr %i.i, align 8, !tbaa !203
  br label %_ZNSt6vectorIaSaIaEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ad = icmp ult i64 %1, %i.f
  br i1 %i.ad, label %bb.k, label %_ZNSt6vectorIaSaIaEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ae
  br i1 %.not.i4, label %_ZNSt6vectorIaSaIaEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !204
  br label %_ZNSt6vectorIaSaIaEE17_M_default_appendEm.exit

_ZNSt6vectorIaSaIaEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPaaEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit34.i, %_ZSt27__uninitialized_default_n_aIPamaET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !206    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !207
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v2i64
!87 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !88, i64 0}
!90 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !14, i64 0}
!91 = !{!"_ZTS4Reap", !12, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !7, i64 24}
!92 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !14, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!94 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !93, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !94, i64 0}
!96 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !95, i64 0}
!97 = !{!"_ZTSN7CaDiCaL3EMAE", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32}
!98 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !97, i64 0, !97, i64 40}
!99 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !97, i64 0, !97, i64 40}
!100 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !98, i64 0, !99, i64 80, !97, i64 160, !97, i64 200, !97, i64 240}
!101 = !{!"_ZTSN7CaDiCaL8AveragesE", !12, i64 0, !100, i64 8, !100, i64 288}
!102 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !8, i64 0, !8, i64 4}
!103 = !{!"_ZTSN7CaDiCaL5LimitE", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !8, i64 128, !8, i64 132, !7, i64 136, !12, i64 152, !102, i64 160}
!104 = !{!"_ZTSN7CaDiCaL4LastUt_E", !12, i64 0}
!105 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !12, i64 0, !12, i64 8, !12, i64 16}
!106 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !12, i64 0, !12, i64 8}
!107 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !12, i64 0}
!108 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !12, i64 0}
!109 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !12, i64 0}
!110 = !{!"_ZTSN7CaDiCaL4LastE", !104, i64 0, !104, i64 8, !105, i64 16, !106, i64 40, !107, i64 56, !107, i64 64, !108, i64 72, !109, i64 80}
!111 = !{!"_ZTSN7CaDiCaL3IncE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!112 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !14, i64 0}
!113 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !14, i64 0}
!114 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !20, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!116 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !115, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !116, i64 0}
!118 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !117, i64 0}
!119 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !20, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !122, i64 0}
!124 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !20, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!126 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !125, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !126, i64 0}
!128 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !127, i64 0}
!129 = !{!"_ZTSN7CaDiCaL7OptionsE", !53, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !8, i64 376, !8, i64 380, !8, i64 384, !8, i64 388, !8, i64 392, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !8, i64 424, !8, i64 428, !8, i64 432, !8, i64 436, !8, i64 440, !8, i64 444, !8, i64 448, !8, i64 452, !8, i64 456, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !8, i64 528, !8, i64 532, !8, i64 536, !8, i64 540, !8, i64 544, !8, i64 548, !8, i64 552, !8, i64 556, !8, i64 560, !8, i64 564, !8, i64 568, !8, i64 572, !8, i64 576, !8, i64 580, !8, i64 584, !8, i64 588, !8, i64 592, !8, i64 596, !8, i64 600, !8, i64 604, !8, i64 608, !8, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !8, i64 672, !8, i64 676, !8, i64 680, !8, i64 684, !8, i64 688, !8, i64 692, !8, i64 696, !8, i64 700, !8, i64 704, !8, i64 708, !8, i64 712, !8, i64 716}
!130 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!131 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!132 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!133 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !12, i64 0, !12, i64 8, !12, i64 16}
!134 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !52, i64 0, !52, i64 8}
!135 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!136 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut_E", !12, i64 0, !12, i64 8}
!137 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut0_E", !12, i64 0, !12, i64 8}
!138 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !12, i64 0, !12, i64 8, !136, i64 16, !136, i64 32, !136, i64 48, !137, i64 64}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !12, i64 0, !12, i64 8, !12, i64 16}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !12, i64 0, !12, i64 8}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !12, i64 0, !12, i64 8, !12, i64 16}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!145 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !12, i64 0, !12, i64 8}
!146 = !{!"_ZTSN7CaDiCaL5StatsE", !53, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !130, i64 32, !131, i64 88, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !132, i64 264, !133, i64 296, !133, i64 320, !134, i64 344, !135, i64 360, !138, i64 392, !139, i64 472, !140, i64 528, !141, i64 560, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !12, i64 704, !12, i64 712, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !12, i64 952, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !12, i64 1064, !12, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !12, i64 1176, !12, i64 1184, !12, i64 1192, !12, i64 1200, !12, i64 1208, !12, i64 1216, !12, i64 1224, !142, i64 1232, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !143, i64 1280, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !12, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !12, i64 1424, !12, i64 1432, !12, i64 1440, !12, i64 1448, !12, i64 1456, !12, i64 1464, !12, i64 1472, !12, i64 1480, !12, i64 1488, !12, i64 1496, !12, i64 1504, !12, i64 1512, !12, i64 1520, !12, i64 1528, !12, i64 1536, !144, i64 1544, !144, i64 1576, !145, i64 1608, !12, i64 1624, !12, i64 1632, !12, i64 1640}
!147 = !{!"_ZTSN7CaDiCaL7ProfileE", !11, i64 0, !52, i64 8, !52, i64 16, !31, i64 24, !8, i64 32}
!148 = !{!"_ZTSN7CaDiCaL8ProfilesE", !53, i64 0, !147, i64 8, !147, i64 48, !147, i64 88, !147, i64 128, !147, i64 168, !147, i64 208, !147, i64 248, !147, i64 288, !147, i64 328, !147, i64 368, !147, i64 408, !147, i64 448, !147, i64 488, !147, i64 528, !147, i64 568, !147, i64 608, !147, i64 648, !147, i64 688, !147, i64 728, !147, i64 768, !147, i64 808, !147, i64 848, !147, i64 888, !147, i64 928, !147, i64 968, !147, i64 1008, !147, i64 1048, !147, i64 1088, !147, i64 1128, !147, i64 1168, !147, i64 1208, !147, i64 1248, !147, i64 1288, !147, i64 1328, !147, i64 1368, !147, i64 1408, !147, i64 1448, !147, i64 1488, !147, i64 1528}
!149 = !{!"_ZTSN7CaDiCaL5ArenaUt_E", !31, i64 0, !31, i64 8, !31, i64 16}
!150 = !{!"_ZTSN7CaDiCaL5ArenaE", !53, i64 0, !149, i64 8, !149, i64 32}
!151 = !{!"_ZTSN7CaDiCaL6FormatE", !31, i64 0, !12, i64 8, !12, i64 16}
!152 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!153 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !152, i64 0, !12, i64 8, !7, i64 16}
!154 = !{!"p1 _ZTSN7CaDiCaL8ExternalE", !14, i64 0}
!155 = !{!"_ZTSN7CaDiCaL5RangeE", !37, i64 0}
!156 = !{!"_ZTSN7CaDiCaL5SangeE", !37, i64 0}
!157 = !{!"_ZTSN7CaDiCaL8InternalE", !8, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 12, !11, i64 13, !11, i64 14, !11, i64 15, !11, i64 16, !11, i64 17, !11, i64 18, !7, i64 19, !13, i64 24, !12, i64 72, !8, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !11, i64 120, !19, i64 128, !19, i64 152, !19, i64 176, !19, i64 200, !19, i64 224, !19, i64 248, !25, i64 272, !30, i64 296, !11, i64 320, !11, i64 321, !8, i64 324, !36, i64 328, !31, i64 472, !35, i64 480, !41, i64 504, !45, i64 528, !41, i64 552, !46, i64 576, !51, i64 600, !52, i64 624, !55, i64 632, !60, i64 688, !65, i64 712, !45, i64 736, !70, i64 760, !74, i64 784, !74, i64 808, !79, i64 832, !45, i64 856, !74, i64 880, !84, i64 904, !89, i64 928, !90, i64 952, !90, i64 960, !90, i64 968, !90, i64 976, !90, i64 984, !11, i64 992, !11, i64 993, !11, i64 994, !8, i64 996, !12, i64 1000, !90, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !45, i64 1064, !45, i64 1088, !45, i64 1112, !45, i64 1136, !11, i64 1160, !11, i64 1161, !45, i64 1168, !45, i64 1192, !45, i64 1216, !45, i64 1240, !45, i64 1264, !45, i64 1288, !45, i64 1312, !91, i64 1336, !12, i64 2152, !45, i64 2160, !96, i64 2184, !25, i64 2208, !101, i64 2232, !103, i64 2800, !110, i64 2968, !111, i64 3056, !112, i64 3104, !113, i64 3112, !118, i64 3120, !123, i64 3144, !128, i64 3168, !129, i64 3192, !146, i64 3912, !148, i64 5560, !11, i64 7128, !150, i64 7136, !151, i64 7192, !153, i64 7216, !53, i64 7248, !154, i64 7256, !11, i64 7264, !155, i64 7272, !156, i64 7280}
!158 = !{!157, !12, i64 3928}
!159 = !{!157, !12, i64 2840}
!160 = !{!157, !8, i64 80}
!161 = !{!"_ZTSN7CaDiCaL6MapperE", !53, i64 0, !8, i64 8, !37, i64 16, !8, i64 24, !8, i64 28, !7, i64 32, !12, i64 40}
!162 = !{!161, !53, i64 0}
!163 = !{!161, !37, i64 16}
!164 = !{!155, !37, i64 0}
!165 = !{}
!166 = !{i64 4}
!167 = !{!8, !8, i64 0}
!168 = !{!67, !66, i64 0}
!169 = !{!7, !7, i64 0}
!170 = !{!161, !12, i64 40}
!171 = !{!37, !37, i64 0}
!172 = !{!42, !37, i64 0}
!173 = !{!16, !15, i64 0}
!174 = !{!12, !12, i64 0}
!175 = !{!16, !15, i64 8}
!176 = !{!16, !15, i64 16}
!177 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!178 = !{!15, !15, i64 0}
!179 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!180 = !{!21, !21, i64 0}
!181 = !{!85, !85, i64 0}
!182 = !{!90, !90, i64 0}
!183 = !{!"p1 _ZTSN7CaDiCaL5WatchE", !14, i64 0}
!184 = !{!183, !183, i64 0}
!185 = !{!48, !47, i64 0}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !{!42, !37, i64 8}
!188 = !{!62, !61, i64 0}
!189 = !{!38, !37, i64 8}
!190 = !{!38, !37, i64 0}
!191 = !{!38, !37, i64 16}
!192 = !{!31, !31, i64 0}
!193 = !{!"llvm.loop.unroll.disable"}
!194 = !{!75, !75, i64 0}
!195 = !{!80, !80, i64 0}
!196 = !{!32, !31, i64 0}
!197 = !{!"llvm.loop.isvectorized", i32 1}
!198 = !{!"llvm.loop.unroll.runtime.disable"}
!199 = !{!52, !52, i64 0}
!200 = !{!42, !37, i64 16}
!201 = !{!67, !66, i64 8}
!202 = !{!67, !66, i64 16}
!203 = !{!32, !31, i64 16}
!204 = !{!32, !31, i64 8}
!205 = !{!71, !15, i64 8}
!206 = !{!71, !15, i64 0}
!207 = !{!71, !15, i64 16}
!208 = !{!48, !47, i64 8}
!209 = !{!48, !47, i64 16}
!210 = !{!62, !61, i64 8}
!211 = !{!62, !61, i64 16}
!212 = !{i64 0, i64 4, !167, i64 4, i64 4, !167, i64 8, i64 8, !182}
!213 = !{!86, !85, i64 8}
!214 = !{!86, !85, i64 0}
!215 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE17_Vector_impl_dataE", !183, i64 0, !183, i64 8, !183, i64 16}
!216 = !{!215, !183, i64 0}
!217 = !{!76, !75, i64 8}
!218 = !{!76, !75, i64 0}
!219 = !{!22, !21, i64 0}
!220 = !{!81, !80, i64 8}
!221 = !{!81, !80, i64 0}
!222 = !{!"p1 _ZTSN7CaDiCaL3BinE", !14, i64 0}
!223 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3BinESaIS1_EE17_Vector_impl_dataE", !222, i64 0, !222, i64 8, !222, i64 16}
!224 = !{!223, !222, i64 0}
!225 = !{!57, !56, i64 8}
!226 = !{!57, !56, i64 0}
!227 = !{!57, !56, i64 16}
!228 = !{!215, !183, i64 8}
!229 = !{!215, !183, i64 16}
!230 = !{i64 0, i64 8, !182, i64 8, i64 4, !167, i64 12, i64 4, !167}
!231 = !{!86, !85, i64 16}
!232 = !{!22, !21, i64 8}
!233 = !{!22, !21, i64 16}
!234 = !{!76, !75, i64 16}
!235 = !{!223, !222, i64 8}
!236 = !{!223, !222, i64 16}
!237 = !{i64 0, i64 4, !167, i64 8, i64 8, !174}
!238 = !{!81, !80, i64 16}
!239 = !{!222, !222, i64 0}
!240 = !{!54, !53, i64 0}
!241 = !{!157, !8, i64 324}
!242 = !{!157, !12, i64 5544}
!243 = !{!157, !8, i64 3304}
!244 = distinct !{!244, !186}
!245 = distinct !{!245, !193}
!246 = distinct !{!246, !186}
!247 = distinct !{!247, !197, !198}
!248 = distinct !{!248, !197}
!249 = !{!157, !53, i64 7248}
!250 = !{!157, !8, i64 5880}
!251 = !{!157, !8, i64 3608}
!252 = !{!157, !8, i64 3620}
!253 = !{!157, !12, i64 4496}
!254 = !{!161, !8, i64 8}
!255 = !{!161, !8, i64 28}
!256 = !{!161, !8, i64 24}
!257 = !{!157, !31, i64 472}
!258 = !{!161, !7, i64 32}
!259 = !{!157, !154, i64 7256}
!260 = !{!157, !11, i64 320}
!261 = !{i8 0, i8 2}
!262 = !{!157, !11, i64 321}
!263 = !{!156, !37, i64 0}
!264 = !{!"_ZTSN7CaDiCaL5WatchE", !90, i64 0, !8, i64 8, !8, i64 12}
!265 = !{!264, !8, i64 8}
!266 = !{!157, !8, i64 576}
!267 = !{!"_ZTSN7CaDiCaL4LinkE", !8, i64 0, !8, i64 4}
!268 = !{!267, !8, i64 4}
!269 = !{!267, !8, i64 0}
!270 = !{!157, !8, i64 580}
!271 = !{!157, !8, i64 584}
!272 = !{!157, !12, i64 1016}
!273 = !{!157, !12, i64 2152}
!274 = !{!"_ZTSN7CaDiCaL3VarE", !8, i64 0, !8, i64 4, !90, i64 8}
!275 = !{!274, !8, i64 4}
!276 = !{!157, !12, i64 72}
!277 = !{!157, !12, i64 1048}
!278 = !{!157, !12, i64 1040}
!279 = !{!157, !12, i64 1056}
!280 = !{!157, !12, i64 1000}
!281 = !{!157, !12, i64 5536}
!282 = !{!157, !12, i64 5488}
!283 = !{!157, !12, i64 5552}
!284 = !{!157, !8, i64 3300}
!285 = distinct !{!285, !186}
!286 = distinct !{!286, !186, !197, !198}
!287 = distinct !{!287, !186, !197}
!288 = !{!66, !66, i64 0}
!289 = !{!47, !47, i64 0}
!290 = !{!61, !61, i64 0}
!291 = !{!56, !56, i64 0}
!292 = distinct !{!292, !186, !197, !198}
!293 = distinct !{!293, !186, !198, !197}
!294 = distinct !{!294, !186, !197, !198}
!295 = distinct !{!295, !186, !198, !197}
!296 = distinct !{!296, !"_ZSt19__relocate_object_aIN7CaDiCaL5FlagsES1_SaIS1_EEvPT_PT0_RT1_"}
!297 = distinct !{!297, !296, !"_ZSt19__relocate_object_aIN7CaDiCaL5FlagsES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!298 = distinct !{!298, !296, !"_ZSt19__relocate_object_aIN7CaDiCaL5FlagsES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!299 = distinct !{!299, !186, !197, !198}
!300 = distinct !{!300, !186, !197}
!301 = !{!297}
!302 = !{!298}
!303 = distinct !{!303, !186, !197, !198}
!304 = distinct !{!304, !186, !198, !197}
!305 = distinct !{!305, !186, !197, !198}
!306 = distinct !{!306, !186, !198, !197}
!307 = distinct !{!307, !193}
!308 = distinct !{!308, !186}
!309 = distinct !{!309, !193}
!310 = distinct !{!310, !186}
!311 = distinct !{!311, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL5WatchESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!312 = distinct !{!312, !311, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL5WatchESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!313 = distinct !{!313, !311, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL5WatchESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!314 = distinct !{!314, !186}
!315 = !{!312}
!316 = !{!313}
!317 = distinct !{!317, !186}
!318 = distinct !{!318, !186}
!319 = distinct !{!319, !"_ZSt19__relocate_object_aISt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_"}
!320 = distinct !{!320, !319, !"_ZSt19__relocate_object_aISt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!321 = distinct !{!321, !319, !"_ZSt19__relocate_object_aISt6vectorIPN7CaDiCaL6ClauseESaIS3_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!322 = distinct !{!322, !186}
!323 = !{!320}
!324 = !{!321}
!325 = distinct !{!325, !186}
!326 = distinct !{!326, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL3BinESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!327 = distinct !{!327, !326, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL3BinESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!328 = distinct !{!328, !326, !"_ZSt19__relocate_object_aISt6vectorIN7CaDiCaL3BinESaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!329 = distinct !{!329, !186}
!330 = !{!327}
!331 = !{!328}
!332 = distinct !{!332, !186}
!333 = distinct !{!333, !186, !197, !198}
!334 = distinct !{!334, !186, !198, !197}
!335 = distinct !{!335, !186, !197, !198}
!336 = distinct !{!336, !186, !198, !197}
!337 = distinct !{!337, !186, !197, !198}
!338 = distinct !{!338, !186, !198, !197}
!339 = distinct !{!339, !186, !197, !198}
!340 = distinct !{!340, !186, !198, !197}
!341 = distinct !{!341, !186}
end_hunk_2
