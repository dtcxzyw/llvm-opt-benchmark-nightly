Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/compact?download=true
inline.NumInlined: 1977
inline.NumDeleted: 984
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7CaDiCaL6Mapper11map2_vectorIiEEvRSt6vectorIT_SaIS3_EE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL6Mapper10map_vectorIlEEvRSt6vectorIT_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %i.h
  %i.l = load i64, ptr %i.k, align 8, !tbaa !174
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %i.m
  store i64 %i.l, ptr %i.n, align 8, !tbaa !174
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !170  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !205  ; 4 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %.pre18 to i64              ; 4 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 3 uses
  %i.w = icmp ugt i64 %i.p, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.x = sub nuw i64 %i.p, %i.v
  tail call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.x)
  %.pre19 = load ptr, ptr %1, align 8, !tbaa !206 ; 2 uses
  %.pre20 = load ptr, ptr %i.q, align 8, !tbaa !205
  %.pre = ptrtoint ptr %.pre19 to i64
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.d:                                             ; preds = %._crit_edge
  %i.y = icmp ult i64 %i.p, %i.v
  br i1 %i.y, label %bb.e, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %i.p ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, %i.z
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.e
  store ptr %i.z, ptr %i.q, align 8, !tbaa !205
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre, %bb.c ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.aa = phi ptr [ %.pre20, %bb.c ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.z, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre19, %bb.c ], [ %.pre18, %bb.d ], [ %.pre18, %bb.e ], [ %.pre18, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !207
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %.pre-phi
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = sub i64 %i.ag, %.pre-phi                ; 4 uses
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZN7CaDiCaL13shrink_vectorIlEEvRSt6vectorIT_SaIS2_EE.exit

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp ugt i64 %i.ah, 9223372036854775800
  br i1 %i.aj, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i, !prof !177

.noexc.i.i.i:                                     ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #15
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !178 ; 2 uses
  %.pre6.i = load ptr, ptr %i.q, align 8, !tbaa !178
  %.pre7.i = ptrtoint ptr %.pre6.i to i64
  %.pre8.i = ptrtoint ptr %.pre.i to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i, %bb.f
  %.pre-phi9.i = phi i64 [ %.pre8.i, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.f ]
  %.pre-phi.i = phi i64 [ %.pre7.i, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.f ]
  %i.al = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.ab, %bb.f ] ; 4 uses
  %i.am = phi ptr [ %i.ak, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.f ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 2 uses
  %i.ao = sub i64 %.pre-phi.i, %.pre-phi9.i       ; 4 uses
  %i.ap = icmp sgt i64 %i.ao, 8
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !179

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %i.ao, 8
  br i1 %i.aq, label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.thread.i, label %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i

_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.thread.i:       ; preds = %bb.j
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !174
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !174
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.am, ptr %1, align 8, !tbaa !206
  store ptr %i.as, ptr %i.q, align 8, !tbaa !205
  store ptr %i.an, ptr %i.ac, align 8, !tbaa !207
  br label %bb.k

_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i:              ; preds = %bb.j, %bb.i
  %i.at = getelementptr inbounds i8, ptr %i.am, i64 %i.ao
  store ptr %i.am, ptr %1, align 8, !tbaa !206
  store ptr %i.at, ptr %i.q, align 8, !tbaa !205
  store ptr %i.an, ptr %i.ac, align 8, !tbaa !207
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorIlEEvRSt6vectorIT_SaIS2_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i, %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.thread.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #16
  br label %_ZN7CaDiCaL13shrink_vectorIlEEvRSt6vectorIT_SaIS2_EE.exit

_ZN7CaDiCaL13shrink_vectorIlEEvRSt6vectorIT_SaIS2_EE.exit: ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit, %_ZNSt6vectorIlSaIlEEC2ERKS1_.exit.i, %bb.k
  ret void

bb.l:                                             ; preds = %bb.p, %.lr.ph.new
  %.sroa.012.017 = phi i32 [ 1, %.lr.ph.new ], [ %i.bj, %bb.p ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.p ]
  %i.au = sext i32 %.sroa.012.017 to i64          ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !167 ; 2 uses
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %i.au
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !174
  %i.az = sext i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %i.az
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !174
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bb = add nuw i32 %.sroa.012.017, 1
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !167 ; 2 uses
  %.not.1 = icmp eq i32 %i.be, 0
  br i1 %.not.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %i.bc
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !174
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.pre18, i64 %i.bh
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !174
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bj = add nuw i32 %.sroa.012.017, 2           ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL6Mapper10map_vectorINS_4LinkEEEvRSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  br label %bb.l

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.p
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.sroa.012.017.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.bi, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %2 = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.g = sext i32 %.sroa.012.017.epil.init to i64 ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !167  ; 2 uses
  %.not.epil = icmp eq i32 %i.i, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %3 = load ptr, ptr %1, align 8, !tbaa !185      ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.g
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.k
  %i.m = load i64, ptr %i.j, align 4
  store i64 %i.m, ptr %i.l, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !170  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %4 = load ptr, ptr %i.p, align 8, !tbaa !208    ; 4 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !185    ; 5 uses
  %i.r = ptrtoint ptr %4 to i64
  %i.s = ptrtoint ptr %i.q to i64                 ; 4 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  %i.v = icmp ugt i64 %i.o, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.w = sub nuw i64 %i.o, %i.u
  tail call void @_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.w)
  %.pre.a = load ptr, ptr %1, align 8, !tbaa !185 ; 2 uses
  %.pre18.a = load ptr, ptr %i.p, align 8, !tbaa !208
  %.pre19 = ptrtoint ptr %.pre.a to i64
  br label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %._crit_edge
  %i.x = icmp ult i64 %i.o, %i.u
  br i1 %i.x, label %bb.e, label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o ; 3 uses
  %.not.i.i = icmp eq ptr %4, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7CaDiCaL4LinkES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7CaDiCaL4LinkES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.y, ptr %i.p, align 8, !tbaa !208
  br label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN7CaDiCaL4LinkES1_EvT_S3_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre19, %bb.c ], [ %i.s, %bb.d ], [ %i.s, %bb.e ], [ %i.s, %_ZSt8_DestroyIPN7CaDiCaL4LinkES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.z = phi ptr [ %.pre18.a, %bb.c ], [ %4, %bb.d ], [ %4, %bb.e ], [ %i.y, %_ZSt8_DestroyIPN7CaDiCaL4LinkES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.aa = phi ptr [ %.pre.a, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %_ZSt8_DestroyIPN7CaDiCaL4LinkES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !209
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %.pre-phi
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %i.af, %.pre-phi                ; 4 uses
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZN7CaDiCaL13shrink_vectorINS_4LinkEEEvRSt6vectorIT_SaIS3_EE.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775800
  br i1 %i.ai, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7CaDiCaL4LinkEE8allocateEmPKv.exit.i.i.i.i.i, !prof !177

.noexc.i.i.i:                                     ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIN7CaDiCaL4LinkEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #15
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !289 ; 2 uses
  %.pre6.i = load ptr, ptr %i.p, align 8, !tbaa !289
  %.pre7.i = ptrtoint ptr %.pre6.i to i64
  %.pre8.i = ptrtoint ptr %.pre.i to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN7CaDiCaL4LinkEE8allocateEmPKv.exit.i.i.i.i.i, %bb.f
  %.pre-phi9.i = phi i64 [ %.pre8.i, %_ZNSt15__new_allocatorIN7CaDiCaL4LinkEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.f ]
  %.pre-phi.i = phi i64 [ %.pre7.i, %_ZNSt15__new_allocatorIN7CaDiCaL4LinkEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.f ]
  %i.ak = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIN7CaDiCaL4LinkEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.aa, %bb.f ] ; 4 uses
  %i.al = phi ptr [ %i.aj, %_ZNSt15__new_allocatorIN7CaDiCaL4LinkEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.f ] ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag ; 2 uses
  %i.an = sub i64 %.pre-phi.i, %.pre-phi9.i       ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 8
  br i1 %i.ao, label %bb.i, label %bb.j, !prof !179

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.al, ptr align 4 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EEC2ERKS3_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ap = icmp eq i64 %i.an, 8
  br i1 %i.ap, label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EEC2ERKS3_.exit.thread.i, label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EEC2ERKS3_.exit.i

_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EEC2ERKS3_.exit.thread.i: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ak, align 4
  store i64 %i.aq, ptr %i.al, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.al, ptr %1, align 8, !tbaa !185
  store ptr %i.ar, ptr %i.p, align 8, !tbaa !208
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !209
  br label %bb.k

_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EEC2ERKS3_.exit.i: ; preds = %bb.j, %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  store ptr %i.al, ptr %1, align 8, !tbaa !185
  store ptr %i.as, ptr %i.p, align 8, !tbaa !208
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !209
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorINS_4LinkEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EEC2ERKS3_.exit.i, %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EEC2ERKS3_.exit.thread.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #16
  br label %_ZN7CaDiCaL13shrink_vectorINS_4LinkEEEvRSt6vectorIT_SaIS3_EE.exit

_ZN7CaDiCaL13shrink_vectorINS_4LinkEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE6resizeEm.exit, %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EEC2ERKS3_.exit.i, %bb.k
  ret void

bb.l:                                             ; preds = %bb.p, %.lr.ph.new
  %.sroa.012.017 = phi i32 [ 1, %.lr.ph.new ], [ %i.bi, %bb.p ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.p ]
  %5 = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.at = sext i32 %.sroa.012.017 to i64          ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %5, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !167 ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %6 = load ptr, ptr %1, align 8, !tbaa !185      ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.at
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ax
  %i.az = load i64, ptr %i.aw, align 4
  store i64 %i.az, ptr %i.ay, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ba = add nuw i32 %.sroa.012.017, 1
  %7 = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %7, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !167 ; 2 uses
  %.not.1 = icmp eq i32 %i.bd, 0
  br i1 %.not.1, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %8 = load ptr, ptr %1, align 8, !tbaa !185      ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bb
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bf
  %i.bh = load i64, ptr %i.be, align 4
  store i64 %i.bh, ptr %i.bg, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bi = add nuw i32 %.sroa.012.017, 2           ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL6Mapper10map_vectorINS_3VarEEEvRSt6vectorIT_SaIS4_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164, !nonnull !165, !align !166
  %i.d = load i32, ptr %i.c, align 4, !tbaa !167  ; 2 uses
  %.not1516 = icmp eq i32 %i.d, 0
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !170  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !210  ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !188    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 3 uses
  %i.o = icmp ugt i64 %i.g, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.p = sub nuw i64 %i.g, %i.n
  tail call void @_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.p)
  %.pre = load ptr, ptr %1, align 8, !tbaa !188   ; 2 uses
  %.pre18 = load ptr, ptr %i.h, align 8, !tbaa !210
  %.pre19 = ptrtoint ptr %.pre to i64
  br label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %._crit_edge
  %i.q = icmp ult i64 %i.g, %i.n
  br i1 %i.q, label %bb.d, label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.g ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.r
  br i1 %.not.i.i, label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN7CaDiCaL3VarES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7CaDiCaL3VarES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.r, ptr %i.h, align 8, !tbaa !210
  br label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN7CaDiCaL3VarES1_EvT_S3_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre19, %bb.b ], [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %i.l, %_ZSt8_DestroyIPN7CaDiCaL3VarES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.s = phi ptr [ %.pre18, %bb.b ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.r, %_ZSt8_DestroyIPN7CaDiCaL3VarES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.t = phi ptr [ %.pre, %bb.b ], [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %_ZSt8_DestroyIPN7CaDiCaL3VarES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !211
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %.pre-phi
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.y, %.pre-phi                  ; 4 uses
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %_ZN7CaDiCaL13shrink_vectorINS_3VarEEEvRSt6vectorIT_SaIS3_EE.exit

bb.e:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE6resizeEm.exit
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ugt i64 %i.z, 9223372036854775792
  br i1 %i.ab, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN7CaDiCaL3VarEE8allocateEmPKv.exit.i.i.i.i.i, !prof !177

.noexc.i.i.i:                                     ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

_ZNSt15__new_allocatorIN7CaDiCaL3VarEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #15
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !290 ; 2 uses
  %.pre6.i = load ptr, ptr %i.h, align 8, !tbaa !290
  %.pre7.i = ptrtoint ptr %.pre6.i to i64
  %.pre8.i = ptrtoint ptr %.pre.i to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN7CaDiCaL3VarEE8allocateEmPKv.exit.i.i.i.i.i, %bb.e
  %.pre-phi9.i = phi i64 [ %.pre8.i, %_ZNSt15__new_allocatorIN7CaDiCaL3VarEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.e ]
  %.pre-phi.i = phi i64 [ %.pre7.i, %_ZNSt15__new_allocatorIN7CaDiCaL3VarEE8allocateEmPKv.exit.i.i.i.i.i ], [ %.pre-phi, %bb.e ]
  %i.ad = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIN7CaDiCaL3VarEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.t, %bb.e ] ; 4 uses
  %i.ae = phi ptr [ %i.ac, %_ZNSt15__new_allocatorIN7CaDiCaL3VarEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.e ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.z ; 2 uses
  %i.ag = sub i64 %.pre-phi.i, %.pre-phi9.i       ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 16
  br i1 %i.ah, label %bb.h, label %bb.i, !prof !179

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ae, ptr align 8 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EEC2ERKS3_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ag, 16
  br i1 %i.ai, label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EEC2ERKS3_.exit.thread.i, label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EEC2ERKS3_.exit.i

_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EEC2ERKS3_.exit.thread.i: ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !212
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ae, ptr %1, align 8, !tbaa !188
  store ptr %i.aj, ptr %i.h, align 8, !tbaa !210
  store ptr %i.af, ptr %i.u, align 8, !tbaa !211
  br label %bb.j

_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EEC2ERKS3_.exit.i: ; preds = %bb.i, %bb.h
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.ag
  store ptr %i.ae, ptr %1, align 8, !tbaa !188
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !210
  store ptr %i.af, ptr %i.u, align 8, !tbaa !211
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorINS_3VarEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EEC2ERKS3_.exit.i, %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EEC2ERKS3_.exit.thread.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #16
  br label %_ZN7CaDiCaL13shrink_vectorINS_3VarEEEvRSt6vectorIT_SaIS3_EE.exit

_ZN7CaDiCaL13shrink_vectorINS_3VarEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE6resizeEm.exit, %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EEC2ERKS3_.exit.i, %bb.j
  ret void

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %.sroa.012.017 = phi i32 [ 1, %.lr.ph ], [ %i.at, %bb.m ] ; 3 uses
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !163
  %i.am = sext i32 %.sroa.012.017 to i64          ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !167 ; 2 uses
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %1, align 8, !tbaa !188   ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.am
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !212
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.at = add i32 %.sroa.012.017, 1
  %.not15 = icmp eq i32 %.sroa.012.017, %i.d
  br i1 %.not15, label %._crit_edge, label %bb.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL6Mapper11map2_vectorIlEEvRSt6vectorIT_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !162
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7272
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164, !nonnull !165, !align !166
  %i.d = load i32, ptr %i.c, align 4, !tbaa !167  ; 5 uses
  %.not1920 = icmp eq i32 %i.d, 0
  %.pre22 = load ptr, ptr %1, align 8             ; 11 uses
  br i1 %.not1920, label %._crit_edge, label %.lr.ph

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
  %.sroa.016.021.epil.init = phi i32 [ 1, %.lr.ph ], [ %i.bt, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.h = sext i32 %.sroa.016.021.epil.init to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !167  ; 2 uses
  %.not.epil = icmp eq i32 %i.j, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.k = shl nsw i32 %.sroa.016.021.epil.init, 1
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [8 x i8], ptr %.pre22, i64 %i.l
  %i.n = shl nsw i32 %i.j, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [8 x i8], ptr %.pre22, i64 %i.o
  %i.q = load <2 x i64>, ptr %i.m, align 8, !tbaa !174
  store <2 x i64> %i.q, ptr %i.p, align 8, !tbaa !174
  br label %._crit_edge
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIaSaIaEE6resizeEm:bb.a
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

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !174
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !174
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !205
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #15 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !174
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !174
  br label %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36: ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !206
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !205
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPlmlET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !208  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !185    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !209
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 2305843009213693950
  %i.u = and i64 %i.t, 2305843009213693951        ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.u, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.y ; 2 uses
  %i.z = load i64, ptr %i.b, align 4
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 4
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %bb.d ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ac = load i64, ptr %i.b, align 4
  store i64 %i.ac, ptr %.06.i.i.i.i.i.i.i, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.s
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !304

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %middle.block ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !208
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ae = icmp ult i64 %i.n, %1
  br i1 %i.ae, label %bb.f, label %_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.af = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975) ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #15 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.f ; 5 uses
  store i64 0, ptr %i.aj, align 4
  %i.ak = add nsw i64 %1, -1                      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ak, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i30
  %i.ao = add i64 %1, 2305843009213693950
  %i.ap = and i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check45 = icmp samesign ult i64 %i.ap, 3
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i.i.i.i31.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %bb.g
  %n.vec47 = and i64 %i.aq, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec47, 3
  %i.as = getelementptr i8, ptr %i.am, i64 %i.ar
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body48 ] ; 2 uses
  %i.at = shl i64 %index49, 3
  %next.gep50 = getelementptr i8, ptr %i.am, i64 %i.at ; 2 uses
  %i.au = load i64, ptr %i.aj, align 4
  %broadcast.splatinsert51 = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %broadcast.splat52 = shufflevector <2 x i64> %broadcast.splatinsert51, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %broadcast.splat52, ptr %next.gep50, align 4
  store <2 x i64> %broadcast.splat52, ptr %i.av, align 4
  %index.next53 = add nuw i64 %index49, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.aw, label %middle.block54, label %vector.body48, !llvm.loop !305

middle.block54:                                   ; preds = %vector.body48
  %cmp.n55 = icmp eq i64 %i.aq, %n.vec47
  br i1 %cmp.n55, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31.preheader

.lr.ph.i.i.i.i.i.i.i31.preheader:                 ; preds = %bb.g, %middle.block54
  %.06.i.i.i.i.i.i.i32.ph = phi ptr [ %i.am, %bb.g ], [ %i.as, %middle.block54 ]
  br label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.preheader, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.ph, %.lr.ph.i.i.i.i.i.i.i31.preheader ] ; 2 uses
  %i.ax = load i64, ptr %i.aj, align 4
  store i64 %i.ax, ptr %.06.i.i.i.i.i.i.i32, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i33 = icmp eq ptr %i.ay, %i.an
  br i1 %.not.i.i.i.i.i.i.i33, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !306

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31, %middle.block54, %_ZNKSt6vectorIN7CaDiCaL4LinkESaIS1_EE12_M_check_lenEmPKc.exit
  %i.az = icmp sgt i64 %i.f, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN7CaDiCaL4LinkESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !185
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !208
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !209
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL4LinkEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !188    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !211
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !307

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !212
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !308

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !210
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #15 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !212
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !309

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !212
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !212
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !212
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !212
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !308

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN7CaDiCaL3VarESaIS1_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE13_M_deallocateEPS1_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE13_M_deallocateEPS1_m.exit38

_ZNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE13_M_deallocateEPS1_m.exit38: ; preds = %_ZNSt6vectorIN7CaDiCaL3VarESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !188
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %1
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !210
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ax, ptr %i.h, align 8, !tbaa !211
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL3VarEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE13_M_deallocateEPS1_m.exit38, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

end_hunk_1
