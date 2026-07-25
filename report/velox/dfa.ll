inline.NumInlined: 1926
inline.NumDeleted: 800
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3re23DFA18WorkqToCachedStateEPNS0_5WorkqES2_j:bb.a
_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %.critedge, %.noexc
  %spec.select133.idx = select i1 %.not127, i64 4, i64 0
  %spec.select133 = getelementptr inbounds nuw i8, ptr %.095.lcssa, i64 %spec.select133.idx ; 2 uses
  %i.dg = icmp ult ptr %spec.select133, %i.cu
  br i1 %i.dg, label %.preheader, label %thread-pre-split.loopexit, !llvm.loop !136

bb.ad:                                            ; preds = %.noexc, %bb.ac
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIiED2Ev.exit141

thread-pre-split.loopexit:                        ; preds = %_ZSt4sortIPiEvT_S1_.exit
  %.pr.pre = load i32, ptr %i.cq, align 8, !tbaa !36
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.y
  %i.di = phi i32 [ %i.cr, %bb.y ], [ %.pr.pre, %thread-pre-split.loopexit ]
  %i.dj = icmp eq i32 %i.di, 3
  br i1 %i.dj, label %bb.ae, label %_ZSt4sortIPiEvT_S1_.exit138

bb.ae:                                            ; preds = %thread-pre-split
  %i.dk = sext i32 %.6222 to i64                  ; 2 uses
  %.idx = shl nsw i64 %i.dk, 2
  %i.dl = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 2 uses
  %.not.i.i135 = icmp eq i32 %.6222, 0
  br i1 %.not.i.i135, label %_ZSt4sortIPiEvT_S1_.exit138, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.dn = shl nuw nsw i64 %i.dm, 1
  %i.do = xor i64 %i.dn, 126
  invoke void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dl, i64 noundef %i.do)
          to label %.noexc136 unwind label %bb.ag

.noexc136:                                        ; preds = %bb.af
  invoke void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dl)
          to label %_ZSt4sortIPiEvT_S1_.exit138 unwind label %bb.ag

bb.ag:                                            ; preds = %.noexc136, %bb.af
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIiED2Ev.exit141

_ZSt4sortIPiEvT_S1_.exit138:                      ; preds = %bb.z, %bb.ae, %.noexc136, %thread-pre-split
  %.not123 = icmp eq ptr %2, null
  br i1 %.not123, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4sortIPiEvT_S1_.exit138
  %i.dq = add nsw i32 %.6222, 1                   ; 4 uses
  %i.dr = sext i32 %.6222 to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.dr
  store i32 -2, ptr %i.ds, align 4, !tbaa !3
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !92 ; 4 uses
  %i.dv = load i32, ptr %2, align 8, !tbaa !81    ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %.idx198 = shl nsw i64 %i.dw, 2                 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %.idx198
  %.not124190 = icmp eq i32 %i.dv, 0
  br i1 %.not124190, label %.loopexit, label %.lr.ph194

.lr.ph194:                                        ; preds = %bb.ah
  %i.dy = load ptr, ptr %0, align 8, !tbaa !9
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 120
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !128 ; 3 uses
  %i.eb = add nsw i64 %.idx198, -4                ; 2 uses
  %i.ec = and i64 %i.eb, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ec, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph194
  %i.ed = load i32, ptr %i.du, align 4, !tbaa !3
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !129
  %i.eh = and i32 %i.eg, 7
  %i.ei = icmp eq i32 %i.eh, 5
  br i1 %i.ei, label %bb.ai, label %.prol.loopexit.unr-lcssa

bb.ai:                                            ; preds = %.prol.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !101
  %i.el = sext i32 %i.dq to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.el
  %i.en = add nsw i32 %.6222, 2
  store i32 %i.ek, ptr %i.em, align 4, !tbaa !3
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ai, %.prol.preheader
  %.8.prol = phi i32 [ %i.en, %bb.ai ], [ %i.dq, %.prol.preheader ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph194
  %.8.lcssa.unr = phi i32 [ poison, %.lr.ph194 ], [ %.8.prol, %.prol.loopexit.unr-lcssa ]
  %.7192.unr = phi i32 [ %i.dq, %.lr.ph194 ], [ %.8.prol, %.prol.loopexit.unr-lcssa ]
  %.085191.unr = phi ptr [ %i.du, %.lr.ph194 ], [ %i.eo, %.prol.loopexit.unr-lcssa ]
  %i.ep = icmp eq i64 %i.eb, 0
  br i1 %i.ep, label %.loopexit, label %.lr.ph194.new

.lr.ph194.new:                                    ; preds = %.prol.loopexit, %bb.am
  %.7192 = phi i32 [ %.8.1, %bb.am ], [ %.7192.unr, %.prol.loopexit ] ; 3 uses
  %.085191 = phi ptr [ %i.fn, %bb.am ], [ %.085191.unr, %.prol.loopexit ] ; 3 uses
  %i.eq = load i32, ptr %.085191, align 4, !tbaa !3
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !129
  %i.eu = and i32 %i.et, 7
  %i.ev = icmp eq i32 %i.eu, 5
  br i1 %i.ev, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph194.new
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !101
  %i.ey = sext i32 %.7192 to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ey
  %i.fa = add nsw i32 %.7192, 1
  store i32 %i.ex, ptr %i.ez, align 4, !tbaa !3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph194.new
  %.8 = phi i32 [ %i.fa, %bb.aj ], [ %.7192, %.lr.ph194.new ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.085191, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !3
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !129
  %i.fg = and i32 %i.ff, 7
  %i.fh = icmp eq i32 %i.fg, 5
  br i1 %i.fh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !101
  %i.fk = sext i32 %.8 to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fk
  %i.fm = add nsw i32 %.8, 1
  store i32 %i.fj, ptr %i.fl, align 4, !tbaa !3
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.8.1 = phi i32 [ %i.fm, %bb.al ], [ %.8, %bb.ak ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.085191, i64 8 ; 2 uses
  %.not124.1 = icmp eq ptr %i.fn, %i.dx
  br i1 %.not124.1, label %.loopexit, label %.lr.ph194.new, !llvm.loop !137

.loopexit:                                        ; preds = %.prol.loopexit, %bb.am, %bb.ah, %_ZSt4sortIPiEvT_S1_.exit138
  %.9 = phi i32 [ %.6222, %_ZSt4sortIPiEvT_S1_.exit138 ], [ %i.dq, %bb.ah ], [ %.8.lcssa.unr, %.prol.loopexit ], [ %.8.1, %bb.am ]
  %i.fo = invoke noundef ptr @_ZN3re23DFA11CachedStateEPiij(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %i.i, i32 noundef %.9, i32 noundef %.086.lcssa215220)
          to label %_ZN3re28PODArrayIiED2Ev.exit unwind label %bb.an

bb.an:                                            ; preds = %.loopexit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIiED2Ev.exit141

_ZN3re28PODArrayIiED2Ev.exit:                     ; preds = %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread, %_ZN3re24Prog4Inst6greedyEPS0_.exit.peel, %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread.peel, %.loopexit, %bb.x
  %.4 = phi ptr [ %i.fo, %.loopexit ], [ inttoptr (i64 1 to ptr), %bb.x ], [ inttoptr (i64 2 to ptr), %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread.peel ], [ inttoptr (i64 2 to ptr), %_ZN3re24Prog4Inst6greedyEPS0_.exit.peel ], [ inttoptr (i64 2 to ptr), %_ZN3re24Prog4Inst6greedyEPS0_.exit.thread ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #28
  ret ptr %.4

_ZN3re28PODArrayIiED2Ev.exit141:                  ; preds = %bb.an, %bb.ag, %bb.ad
  %.pn128 = phi { ptr, i32 } [ %i.dh, %bb.ad ], [ %i.dp, %bb.ag ], [ %i.fp, %bb.an ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #28
  resume { ptr, i32 } %.pn128
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re23DFA11CachedStateEPiij(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.re2::DFA::State", align 8  ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %1, ptr %4, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.c, align 8, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %3, ptr %i.d, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %4, ptr %i.a, align 8, !tbaa !104
  %i.f = call { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not41 = icmp eq ptr %i.g, null
  br i1 %.not41, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !79   ; 3 uses
  %i.m = add nsw i32 %i.l, 1                      ; 5 uses
  %i.n = shl i32 %i.m, 3
  %i.o = add i32 %i.n, 16                         ; 3 uses
  %i.p = zext nneg i32 %2 to i64
  %i.q = shl i32 %2, 2                            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38   ; 2 uses
  %i.t = add i32 %i.q, 18
  %i.u = add i32 %i.t, %i.o
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp slt i64 %i.s, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !tbaa !38
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.x = sub nsw i64 %i.s, %i.v
  store i64 %i.x, ptr %i.r, align 8, !tbaa !38
  %i.y = icmp slt i32 %i.o, 0
  br i1 %i.y, label %.noexc, label %_ZNSaIcE8allocateEm.exit, !prof !83

.noexc:                                           ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSaIcE8allocateEm.exit:                         ; preds = %bb.e
  %i.z = zext nneg i32 %i.o to i64
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !104
  %i.ab = icmp eq i32 %i.m, 0
  br i1 %i.ab, label %._crit_edge, label %.loopexit

.loopexit:                                        ; preds = %_ZNSaIcE8allocateEm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = sext i32 %i.l to i64
  %i.ae = shl nsw i64 %i.ad, 3
  %i.af = add nsw i64 %i.ae, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ac, i8 0, i64 %i.af, i1 false), !tbaa !138
  %.not42 = icmp slt i32 %i.l, 0
  br i1 %.not42, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.loopexit
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %min.iters.check = icmp ult i32 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i32 %i.m, 16
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !138
  store <4 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !138
  store <4 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !138
  store <4 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !138
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !143

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec51 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index52
  store <4 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !138
  %index.next53 = add nuw i64 %index52, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next53, %n.vec51
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !144

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %n.vec51, %wide.trip.count
  br i1 %cmp.n54, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec51, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZNSaIcE8allocateEm.exit, %.loopexit
  %i.ao = icmp slt i32 %2, 0
  br i1 %i.ao, label %.noexc32, label %_ZNSaIiE8allocateEm.exit, !prof !83

.noexc32:                                         ; preds = %._crit_edge
  call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSaIiE8allocateEm.exit:                         ; preds = %._crit_edge
  %i.ap = shl nuw nsw i64 %i.p, 2
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #26 ; 2 uses
  store ptr %i.aq, ptr %i.aa, align 8, !tbaa !92
  %i.ar = sext i32 %i.q to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aq, ptr align 4 %1, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %2, ptr %i.as, align 8, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %3, ptr %i.at, align 4, !tbaa !3
  %i.au = call { i64, i8 } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE22find_or_prepare_insertIS7_EESt4pairImbERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !145 ; 2 uses
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { i64, i8 } %i.au, 1
  %i.av = trunc i8 %.fca.1.extract.i.i.i.i.i.i to i1
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !104 ; 2 uses
  br i1 %i.av, label %bb.f, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store ptr null, ptr %i.aw, align 8, !tbaa !138
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

bb.f:                                             ; preds = %_ZNSaIiE8allocateEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !98, !noalias !145
  %.fca.0.extract.i.i.i.i.i.i = extractvalue { i64, i8 } %i.au, 0
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.fca.0.extract.i.i.i.i.i.i
  store ptr %.pre, ptr %i.az, align 8, !tbaa !104, !noalias !145
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit: ; preds = %_ZNSaIiE8allocateEm.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit, %bb.b
  %.1 = phi ptr [ %i.i, %bb.b ], [ null, %bb.d ], [ %.pre, %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE4findIS7_EENSC_8iteratorERKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !104    ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !3
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.copyload.i.i32.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = zext i32 %.0.copyload.i.i32.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.i = add i64 %i.h, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.j = zext i64 %i.i to i128
  %i.k = mul nuw i128 %i.j, 11376068507788127593  ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = xor i128 %i.l, %i.k
  %i.n = trunc i128 %i.m to i64
  %i.o = shl nsw i64 %i.f, 2
  %i.p = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.n, ptr noundef %i.c, i64 noundef %i.o)
  %i.q = add i64 %i.p, %i.f
  %i.r = zext i64 %i.q to i128
  %i.s = mul nuw i128 %i.r, 11376068507788127593  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = xor i128 %i.t, %i.s                      ; 2 uses
  %i.v = trunc i128 %i.u to i64
  %i.w = load ptr, ptr %0, align 8, !tbaa !95, !noalias !159 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !94, !noalias !159 ; 3 uses
  %i.z = lshr i64 %i.v, 7
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = lshr i64 %i.aa, 12
  %i.ac = xor i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !98 ; 3 uses
  %i.af = trunc i128 %i.u to i8
  %i.ag = and i8 %i.af, 127
  %i.ah = insertelement <16 x i8> poison, i8 %i.ag, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.aj = load ptr, ptr %1, align 8               ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn.i = phi i64 [ %i.ac, %bb.a ], [ %i.ce, %bb.e ]
  %.sroa.12.0.i = phi i64 [ 0, %bb.a ], [ %i.cd, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i, %i.y             ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.6.0.i
  %i.an = load <16 x i8>, ptr %i.am, align 1, !tbaa !101 ; 3 uses
  %i.ao = icmp eq <16 x i8> %i.ai, %i.an
end_hunk_0
begin_hunk_1_@_ZN3re23DFA14BuildAllStatesERKSt8functionIFvPKibEE:bb.a

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !96
  %i.r = lshr i64 %i.q, 1
  %i.s = trunc i64 %i.r to i32
  %i.t = load ptr, ptr %4, align 8, !tbaa !95, !noalias !249 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.t, i32 0, i32 1, i32 1), !noalias !249
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !104, !noalias !249 ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = add i64 %i.v, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.x = zext i64 %i.w to i128
  %i.y = mul nuw i128 %i.x, 11376068507788127593  ; 2 uses
  %i.z = lshr i128 %i.y, 64
  %i.aa = xor i128 %i.z, %i.y
  %i.ab = trunc i128 %i.aa to i64
  %i.ac = add i64 %i.ab, %i.v
  %i.ad = zext i64 %i.ac to i128
  %i.ae = mul nuw i128 %i.ad, 11376068507788127593 ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae                   ; 2 uses
  %i.ah = trunc i128 %i.ag to i64                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !94, !noalias !252 ; 2 uses
  %i.ak = lshr i64 %i.ah, 7
  %i.al = ptrtoint ptr %i.t to i64
  %i.am = lshr i64 %i.al, 12
  %i.an = xor i64 %i.ak, %i.am
  %i.ao = trunc i128 %i.ag to i8
  %i.ap = and i8 %i.ao, 127
  %i.aq = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.as = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !249
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i.i112 = phi i64 [ %i.an, %bb.f ], [ %i.bk, %bb.h ]
  %.sroa.12.0.i.i113 = phi i64 [ 0, %bb.f ], [ %i.bj, %bb.h ]
  %.sroa.6.0.i.i114 = and i64 %.pn.i.i112, %i.aj  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.6.0.i.i114
  %i.au = load <16 x i8>, ptr %i.at, align 1, !tbaa !101, !noalias !249 ; 3 uses
  %i.av = icmp eq <16 x i8> %i.ar, %i.au
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not50.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not50.i.i, label %._crit_edge.i.i117, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %bb.g, %.critedge.i.i
  %.sroa.019.051.i.i = phi i16 [ %i.bf, %.critedge.i.i ], [ %i.aw, %bb.g ] ; 3 uses
  %i.ax = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.019.051.i.i, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = add i64 %.sroa.6.0.i.i114, %i.ay
  %i.ba = and i64 %i.az, %i.aj
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !104, !noalias !249
  %i.bd = icmp eq ptr %i.bc, %i.u
  br i1 %i.bd, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit, label %.critedge.i.i, !prof !245

.critedge.i.i:                                    ; preds = %.lr.ph.i.i115
  %i.be = add i16 %.sroa.019.051.i.i, -1
  %i.bf = and i16 %i.be, %.sroa.019.051.i.i       ; 2 uses
  %.not.i.i116 = icmp eq i16 %i.bf, 0
  br i1 %.not.i.i116, label %._crit_edge.i.i117, label %.lr.ph.i.i115

._crit_edge.i.i117:                               ; preds = %.critedge.i.i, %bb.g
  %i.bg = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.au, <16 x i8> %i.au)
  %i.bh = icmp slt <16 x i8> %i.bg, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %.not49.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not49.i.i, label %bb.h, label %bb.i, !prof !83

bb.h:                                             ; preds = %._crit_edge.i.i117
  %i.bj = add i64 %.sroa.12.0.i.i113, 16          ; 2 uses
  %i.bk = add i64 %i.bj, %.sroa.6.0.i.i114
  br label %bb.g

bb.i:                                             ; preds = %._crit_edge.i.i117
  %i.bl = invoke noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ah)
          to label %.noexc118 unwind label %bb.p

.noexc118:                                        ; preds = %bb.i
  %i.bm = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98, !noalias !249
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bl ; 2 uses
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !104, !noalias !249
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !255, !noalias !249
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %i.s, ptr %i.bp, align 8, !tbaa !257, !noalias !249
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit: ; preds = %.lr.ph.i.i115, %.noexc118
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !258 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !265
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %.not.i = icmp eq ptr %i.br, %i.bu
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !104
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !104
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !258
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEE7emplaceIJRS7_iETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESD_INSH_8iteratorEbEDpOSL_.exit
  invoke void @_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit unwind label %bb.q

_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.j, %bb.k
  %i.bx = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !79 ; 2 uses
  %i.ca = add nsw i32 %i.bz, 1                    ; 2 uses
  %i.cb = sext i32 %i.ca to i64                   ; 6 uses
  %i.cc = icmp slt i32 %i.bz, -1
  br i1 %i.cc, label %bb.l, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.l:                                             ; preds = %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
          to label %.noexc79 unwind label %bb.r

.noexc79:                                         ; preds = %bb.l
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit
  %.not.i.i.i.i = icmp eq i32 %i.ca, 0            ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cd = shl nuw nsw i64 %i.cb, 2
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #26
          to label %.noexc80 unwind label %bb.r   ; 5 uses

.noexc80:                                         ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cb ; 2 uses
  store i32 0, ptr %i.ce, align 4, !tbaa !3
  %i.cg = getelementptr i8, ptr %i.ce, i64 4      ; 3 uses
  %i.ch = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc80
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ch, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc80, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi ptr [ %i.cf, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cf, %.noexc80 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0166.0 = phi ptr [ %i.ce, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ce, %.noexc80 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.0.i.i.i.i.i = phi ptr [ %i.cj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.cg, %.noexc80 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 168 ; 2 uses
  br label %bb.s

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81: ; preds = %.critedge, %.critedge.thread
  %i.cl = load i32, ptr %i.by, align 4, !tbaa !79
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0166.0, i64 %i.cm
  store i32 256, ptr %i.cn, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81
  %i.co = shl nuw nsw i64 %i.cb, 2
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #26
          to label %.noexc88 unwind label %_ZNSt6vectorIiSaIiEED2Ev.exit109.thread ; 5 uses

.noexc88:                                         ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cb ; 2 uses
  store i32 0, ptr %i.cp, align 4, !tbaa !3
  %i.cr = add nsw i64 %i.cb, -1                   ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83: ; preds = %.noexc88
  %i.ct = getelementptr i8, ptr %i.cp, i64 4
  %.idx.i.i.i.i.i.i.i84 = shl nuw nsw i64 %i.cr, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ct, i8 0, i64 %.idx.i.i.i.i.i.i.i84, i1 false), !tbaa !3
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89

bb.o:                                             ; preds = %bb.e
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.p:                                             ; preds = %bb.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.q:                                             ; preds = %bb.k
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.r:                                             ; preds = %bb.m, %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit111

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %.critedge
  %.054215 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ], [ %9, %.critedge ] ; 3 uses
  %6 = sext i32 %.054215 to i64                   ; 3 uses
  %7 = getelementptr inbounds i8, ptr %i.ck, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !101       ; 3 uses
  %smax221 = call i64 @llvm.smax.i64(i64 %6, i64 255)
  %exitcond.not259 = icmp sgt i32 %.054215, 254
  br i1 %exitcond.not259, label %.critedge.thread, label %.lr.ph258

bb.t:                                             ; preds = %.lr.ph258
  %exitcond.not = icmp eq i64 %indvars.iv.next, %smax221
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph258, !llvm.loop !266

.critedge.thread:                                 ; preds = %bb.s, %bb.t
  %smax.le = call i32 @llvm.smax.i32(i32 %.054215, i32 255)
  %i.cy = zext i8 %8 to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0166.0, i64 %i.cy
  store i32 %smax.le, ptr %i.cz, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81

.lr.ph258:                                        ; preds = %bb.s, %bb.t
  %indvars.iv257 = phi i64 [ %indvars.iv.next, %bb.t ], [ %6, %bb.s ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv257, 1 ; 3 uses
  %i.da = getelementptr inbounds i8, ptr %i.ck, i64 %indvars.iv.next
  %i.db = load i8, ptr %i.da, align 1, !tbaa !101
  %i.dc = icmp eq i8 %i.db, %8
  br i1 %i.dc, label %bb.t, label %.critedge, !llvm.loop !266

.critedge:                                        ; preds = %.lr.ph258
  %i.dd = trunc nsw i64 %indvars.iv257 to i32     ; 2 uses
  %i.de = zext i8 %8 to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0166.0, i64 %i.de
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !3
  %9 = add nsw i32 %i.dd, 1
  %i.dg = icmp slt i64 %indvars.iv257, 255
  br i1 %i.dg, label %bb.s, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81, !llvm.loop !267

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83, %.noexc88, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81
  %.sroa.12.0 = phi ptr [ %i.cq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.cq, %.noexc88 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81 ] ; 2 uses
  %.sroa.0159.0 = phi ptr [ %i.cp, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i83 ], [ %i.cp, %.noexc88 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i81 ] ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %.not216 = icmp eq ptr %.sroa.0166.0, %.0.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.bb, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit89
  %i.do = load ptr, ptr %i.bq, align 8, !tbaa !268
  %i.dp = load ptr, ptr %i.dh, align 8, !tbaa !268 ; 4 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %bb.bc, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !104 ; 3 uses
  %i.ds = load ptr, ptr %i.di, align 8, !tbaa !269
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %.not.i90 = icmp eq ptr %i.dp, %i.dt
  br i1 %.not.i90, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit

bb.x:                                             ; preds = %bb.v
  %i.dv = load ptr, ptr %i.dj, align 8, !tbaa !270
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef 512) #28
  %i.dw = load ptr, ptr %i.dk, align 8, !tbaa !271
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  store ptr %i.dx, ptr %i.dk, align 8, !tbaa !272
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !273 ; 3 uses
  store ptr %i.dy, ptr %i.dj, align 8, !tbaa !274
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 512
  store ptr %i.dz, ptr %i.di, align 8, !tbaa !275
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit

_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit: ; preds = %bb.w, %bb.x
  %storemerge.i = phi ptr [ %i.du, %bb.w ], [ %i.dy, %bb.x ]
  store ptr %storemerge.i, ptr %i.dh, align 8, !tbaa !276
  br i1 %.not216, label %.loopexit202, label %.lr.ph

_ZNSt6vectorIiSaIiEED2Ev.exit109.thread:          ; preds = %bb.n
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.lr.ph:                                           ; preds = %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit, %_ZN3re23DFA7ByteMapEi.exit
  %.sroa.0155.0217 = phi ptr [ %i.jw, %_ZN3re23DFA7ByteMapEi.exit ], [ %.sroa.0166.0, %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9pop_frontEv.exit ] ; 2 uses
  %i.eb = load i32, ptr %.sroa.0155.0217, align 4, !tbaa !3 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  invoke void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %.noexc91 unwind label %bb.ac

.noexc91:                                         ; preds = %.lr.ph
  %i.ec = invoke noundef ptr @_ZN3re23DFA14RunStateOnByteEPNS0_5StateEi(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %i.dr, i32 noundef %i.eb)
          to label %bb.y unwind label %bb.aa      ; 5 uses

bb.y:                                             ; preds = %.noexc91
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #30
  unreachable

bb.aa:                                            ; preds = %.noexc91
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dl)
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #30
  unreachable

_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit: ; preds = %bb.y
  store ptr %i.ec, ptr %i.c, align 8, !tbaa !104
  %magicptr78 = ptrtoint ptr %i.ec to i64         ; 3 uses
  switch i64 %magicptr78, label %bb.ag [
    i64 0, label %bb.aw
    i64 1, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.at, %bb.ap, %.lr.ph
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ad:                                            ; preds = %_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit
  %i.ej = icmp eq i32 %i.eb, 256
  %i.ek = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !79
  br label %_ZN3re23DFA7ByteMapEi.exit

bb.af:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 168
  %i.eo = sext i32 %i.eb to i64
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !101
  %i.er = zext i8 %i.eq to i32
  br label %_ZN3re23DFA7ByteMapEi.exit

bb.ag:                                            ; preds = %_ZN3re23DFA22RunStateOnByteUnlockedEPNS0_5StateEi.exit
  %i.es = load ptr, ptr %4, align 8, !tbaa !95    ; 6 uses
  call void @llvm.prefetch.p0(ptr %i.es, i32 0, i32 1, i32 1)
  %i.et = add i64 %magicptr78, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.eu = zext i64 %i.et to i128
  %i.ev = mul nuw i128 %i.eu, 11376068507788127593 ; 2 uses
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = xor i128 %i.ew, %i.ev
  %i.ey = trunc i128 %i.ex to i64
  %i.ez = add i64 %i.ey, %magicptr78
  %i.fa = zext i64 %i.ez to i128
  %i.fb = mul nuw i128 %i.fa, 11376068507788127593 ; 2 uses
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = xor i128 %i.fc, %i.fb                   ; 2 uses
  %i.fe = trunc i128 %i.fd to i64                 ; 2 uses
  %i.ff = load i64, ptr %i.ai, align 8, !tbaa !94, !noalias !277 ; 4 uses
  %i.fg = lshr i64 %i.fe, 7
  %i.fh = ptrtoint ptr %i.es to i64
  %i.fi = lshr i64 %i.fh, 12
  %i.fj = xor i64 %i.fi, %i.fg                    ; 2 uses
  %i.fk = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !98 ; 2 uses
  %i.fl = trunc i128 %i.fd to i8
  %i.fm = and i8 %i.fl, 127
  %i.fn = insertelement <16 x i8> poison, i8 %i.fm, i64 0
  %i.fo = shufflevector <16 x i8> %i.fn, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %.pn.i.i = phi i64 [ %i.fj, %bb.ag ], [ %i.gg, %bb.aj ]
  %.sroa.12.0.i.i = phi i64 [ 0, %bb.ag ], [ %i.gf, %bb.aj ]
  %.sroa.6.0.i.i = and i64 %.pn.i.i, %i.ff        ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.es, i64 %.sroa.6.0.i.i
  %i.fq = load <16 x i8>, ptr %i.fp, align 1, !tbaa !101 ; 3 uses
  %i.fr = icmp eq <16 x i8> %i.fo, %i.fq
  %i.fs = bitcast <16 x i1> %i.fr to i16          ; 2 uses
  %.not43.i.i = icmp eq i16 %i.fs, 0
  br i1 %.not43.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %bb.ai
  %.sroa.016.044.i.i = phi i16 [ %i.gb, %bb.ai ], [ %i.fs, %bb.ah ] ; 3 uses
  %i.ft = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.016.044.i.i, i1 true)
  %i.fu = zext nneg i16 %i.ft to i64
  %i.fv = add i64 %.sroa.6.0.i.i, %i.fu
  %i.fw = and i64 %i.fv, %i.ff
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !104
  %i.fz = icmp eq ptr %i.fy, %i.ec
  br i1 %i.fz, label %bb.ak, label %bb.ai, !prof !245

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.ga = add i16 %.sroa.016.044.i.i, -1
  %i.gb = and i16 %i.ga, %.sroa.016.044.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.gb, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.ai, %bb.ah
  %i.gc = call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.fq, <16 x i8> %i.fq)
  %i.gd = icmp slt <16 x i8> %i.gc, zeroinitializer
  %i.ge = bitcast <16 x i1> %i.gd to i16
  %.not41.i.i = icmp eq i16 %i.ge, 0
  br i1 %.not41.i.i, label %bb.aj, label %.thread, !prof !83

bb.aj:                                            ; preds = %._crit_edge.i.i
  %i.gf = add i64 %.sroa.12.0.i.i, 16             ; 2 uses
  %i.gg = add i64 %i.gf, %.sroa.6.0.i.i
  br label %bb.ah, !llvm.loop !280

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.gh = icmp eq ptr %i.es, null
  br i1 %i.gh, label %.thread, label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE9push_backERKS3_.exit96

.thread:                                          ; preds = %._crit_edge.i.i, %bb.ak
  %i.gi = load i64, ptr %i.p, align 8, !tbaa !96
  %i.gj = lshr i64 %i.gi, 1
  %i.gk = trunc i64 %i.gj to i32
  call void @llvm.prefetch.p0(ptr %i.es, i32 0, i32 1, i32 1), !noalias !281
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.thread
end_hunk_1
begin_hunk_2_@_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i:bb.a
  %.12 = phi i1 [ %.11, %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN3re23DFA5StateEiEENS1_6HashEqIS7_vE4HashENSA_2EqESaISt4pairIKS7_iEEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.12
}

declare void @_ZN3re215PrefixSuccessorEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re24Prog18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr %0, ptr %i.a, align 8, !tbaa !244
  %i.c = load atomic i32, ptr %i.b acquire, align 4
  %.not.i5.i = icmp eq i32 %i.c, 221
  br i1 %.not.i5.i, label %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit, label %bb.b, !prof !245

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN4absl12lts_2024011613base_internal12CallOnceImplIZN3re24Prog6GetDFAENS4_9MatchKindEE3$_2JPS4_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %i.a)
  br label %_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit

_ZN3re24Prog6GetDFAENS0_9MatchKindE.exit:         ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.0.i = load ptr, ptr %i.d, align 8, !tbaa !246
  %i.e = tail call noundef zeroext i1 @_ZN3re23DFA18PossibleMatchRangeEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_i(ptr noundef nonnull align 8 dereferenceable(176) %.0.i, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  ret i1 %i.e
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !111    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !101
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #27
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !83

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !101
  store i8 %i.t, ptr %i.s, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !101
  store i8 %i.x, ptr %i.w, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !101
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !101
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !101
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !111
  store i64 %.0, ptr %i.h, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !327

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 2 uses
  %i.j = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.j, ptr %i.h, align 4, !tbaa !3
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = lshr i64 %i.n, 1
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.r, align 4, !tbaa !3
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = icmp slt i32 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !328

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !3
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !329

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.i, ptr %i.aq, align 4, !tbaa !3
  %i.ar = icmp sgt i64 %i.l, 4
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !330

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ax = load i32, ptr %i.e, align 4, !tbaa !3   ; 5 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !3  ; 5 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !3  ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp slt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ay, ptr %0, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i32 %i.ax, %i.ba
  %i.be = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ba, ptr %0, align 4, !tbaa !3
  store i32 %i.be, ptr %i.aw, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %i.ax, ptr %0, align 4, !tbaa !3
  store i32 %i.be, ptr %i.e, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp slt i32 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i32, ptr %0, align 4, !tbaa !3
  store i32 %i.ax, ptr %0, align 4, !tbaa !3
  store i32 %i.bg, ptr %i.e, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i32 %i.ay, %i.ba
  %i.bi = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %i.ba, ptr %0, align 4, !tbaa !3
  store i32 %i.bi, ptr %i.aw, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i32 %i.ay, ptr %0, align 4, !tbaa !3
  store i32 %i.bi, ptr %i.av, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i32, ptr %0, align 4, !tbaa !3     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i32, ptr %.1.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !331

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bn = load i32, ptr %.114.i.i, align 4, !tbaa !3 ; 2 uses
  %i.bo = icmp slt i32 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !332

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bn, ptr %.1.i.i, align 4, !tbaa !3
  store i32 %i.bk, ptr %.114.i.i, align 4, !tbaa !3
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !333

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 64
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !327

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 4, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i32, ptr %.019.i.ptr, align 4, !tbaa !3 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !245

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !3
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.pn18.i, align 4, !tbaa !3 ; 2 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i32 %i.l, ptr %.0912.i.i, align 4, !tbaa !3
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.0.i.i, align 4, !tbaa !3 ; 2 uses
  %i.n = icmp slt i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i, !llvm.loop !334

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !3
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !335

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_2
begin_hunk_3_@_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !298
  %i.ag = load ptr, ptr %0, align 8, !tbaa !295
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #26 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !296
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !273
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !258
  %i.aq = load ptr, ptr %1, align 8, !tbaa !104
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !104
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !272
  store ptr %i.am, ptr %i.o, align 8, !tbaa !274
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !275
  store ptr %i.am, ptr %i.a, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIPN3re23DFA5StateESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !296  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !298  ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !295
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !245

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !273
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !273
  br label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !245

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !273
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !273
  br label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIPN3re23DFA5StateESaIS3_EE15_M_allocate_mapEm.exit, !prof !83

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt11_Deque_baseIPN3re23DFA5StateESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #26 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !245

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIPN3re23DFA5StateESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIPN3re23DFA5StateESaIS3_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !273
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !273
  br label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !295
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #28
  store ptr %i.aq, ptr %0, align 8, !tbaa !295
  store i64 %i.am, ptr %i.k, align 8, !tbaa !298
  br label %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPPN3re23DFA5StateES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !272
  %i.be = load ptr, ptr %.0, align 8, !tbaa !273  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !274
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !275
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !272
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !273 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !274
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !275
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { cold }
attributes #32 = { cold nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"bool", !5, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN3re23DFAE", !11, i64 0, !13, i64 8, !8, i64 12, !14, i64 16, !18, i64 24, !18, i64 32, !19, i64 40, !14, i64 56, !17, i64 64, !17, i64 72, !30, i64 80, !5, i64 112}
!11 = !{!"p1 _ZTSN3re24ProgE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSN3re24Prog9MatchKindE", !5, i64 0}
!14 = !{!"_ZTSN4absl12lts_202401165MutexE", !15, i64 0}
!15 = !{!"_ZTSSt6atomicIlE", !16, i64 0}
!16 = !{!"_ZTSSt13__atomic_baseIlE", !17, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 _ZTSN3re23DFA5WorkqE", !12, i64 0}
!19 = !{!"_ZTSN3re28PODArrayIiEE", !20, i64 0}
!20 = !{!"_ZTSSt10unique_ptrIA_iN3re28PODArrayIiE7DeleterEE", !21, i64 0}
!21 = !{!"_ZTSSt15__uniq_ptr_dataIiN3re28PODArrayIiE7DeleterELb1ELb1EE", !22, i64 0}
!22 = !{!"_ZTSSt15__uniq_ptr_implIiN3re28PODArrayIiE7DeleterEE", !23, i64 0}
!23 = !{!"_ZTSSt5tupleIJPiN3re28PODArrayIiE7DeleterEEE", !24, i64 0}
!24 = !{!"_ZTSSt11_Tuple_implILm0EJPiN3re28PODArrayIiE7DeleterEEE", !25, i64 0, !28, i64 8}
!25 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayIiE7DeleterEEE", !26, i64 0}
!26 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayIiE7DeleterELb0EE", !27, i64 0}
!27 = !{!"_ZTSN3re28PODArrayIiE7DeleterE", !4, i64 0}
!28 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !29, i64 0}
!29 = !{!"p1 int", !12, i64 0}
!30 = !{!"_ZTSN4absl12lts_2024011613flat_hash_setIPN3re23DFA5StateENS3_9StateHashENS3_10StateEqualESaIS5_EEE", !31, i64 0}
!31 = !{!"_ZTSN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EEE", !32, i64 0}
!32 = !{!"_ZTSN4absl12lts_2024011618container_internal15CompressedTupleIJNS1_12CommonFieldsEN3re23DFA9StateHashENS5_10StateEqualESaIPNS5_5StateEEEEE", !33, i64 0}
!33 = !{!"_ZTSN4absl12lts_2024011618container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsEN3re23DFA9StateHashENS7_10StateEqualESaIPNS7_5StateEEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !34, i64 0}
!34 = !{!"_ZTSN4absl12lts_2024011618container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !35, i64 0}
!35 = !{!"_ZTSN4absl12lts_2024011618container_internal12CommonFieldsE", !12, i64 0, !12, i64 8, !17, i64 16, !17, i64 24}
!36 = !{!10, !13, i64 8}
!37 = !{!10, !8, i64 12}
!38 = !{!10, !17, i64 64}
!39 = !{!40, !4, i64 16}
!40 = !{!"_ZTSN3re24ProgE", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !8, i64 24, !17, i64 32, !5, i64 40, !4, i64 48, !5, i64 52, !41, i64 88, !17, i64 104, !52, i64 112, !63, i64 128, !17, i64 144, !74, i64 152, !74, i64 160, !5, i64 168, !75, i64 424, !75, i64 428}
!41 = !{!"_ZTSN3re28PODArrayItEE", !42, i64 0}
!42 = !{!"_ZTSSt10unique_ptrIA_tN3re28PODArrayItE7DeleterEE", !43, i64 0}
!43 = !{!"_ZTSSt15__uniq_ptr_dataItN3re28PODArrayItE7DeleterELb1ELb1EE", !44, i64 0}
!44 = !{!"_ZTSSt15__uniq_ptr_implItN3re28PODArrayItE7DeleterEE", !45, i64 0}
!45 = !{!"_ZTSSt5tupleIJPtN3re28PODArrayItE7DeleterEEE", !46, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJPtN3re28PODArrayItE7DeleterEEE", !47, i64 0, !50, i64 8}
!47 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayItE7DeleterEEE", !48, i64 0}
!48 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayItE7DeleterELb0EE", !49, i64 0}
!49 = !{!"_ZTSN3re28PODArrayItE7DeleterE", !4, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EPtLb0EE", !51, i64 0}
!51 = !{!"p1 short", !12, i64 0}
!52 = !{!"_ZTSN3re28PODArrayINS_4Prog4InstEEE", !53, i64 0}
!53 = !{!"_ZTSSt10unique_ptrIA_N3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !54, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_dataIN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterELb1ELb1EE", !55, i64 0}
!55 = !{!"_ZTSSt15__uniq_ptr_implIN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEE", !56, i64 0}
!56 = !{!"_ZTSSt5tupleIJPN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !57, i64 0}
!57 = !{!"_ZTSSt11_Tuple_implILm0EJPN3re24Prog4InstENS0_8PODArrayIS2_E7DeleterEEE", !58, i64 0, !61, i64 8}
!58 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayINS0_4Prog4InstEE7DeleterEEE", !59, i64 0}
!59 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayINS0_4Prog4InstEE7DeleterELb0EE", !60, i64 0}
!60 = !{!"_ZTSN3re28PODArrayINS_4Prog4InstEE7DeleterE", !4, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm0EPN3re24Prog4InstELb0EE", !62, i64 0}
!62 = !{!"p1 _ZTSN3re24Prog4InstE", !12, i64 0}
!63 = !{!"_ZTSN3re28PODArrayIhEE", !64, i64 0}
!64 = !{!"_ZTSSt10unique_ptrIA_hN3re28PODArrayIhE7DeleterEE", !65, i64 0}
!65 = !{!"_ZTSSt15__uniq_ptr_dataIhN3re28PODArrayIhE7DeleterELb1ELb1EE", !66, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_implIhN3re28PODArrayIhE7DeleterEE", !67, i64 0}
!67 = !{!"_ZTSSt5tupleIJPhN3re28PODArrayIhE7DeleterEEE", !68, i64 0}
!68 = !{!"_ZTSSt11_Tuple_implILm0EJPhN3re28PODArrayIhE7DeleterEEE", !69, i64 0, !72, i64 8}
!69 = !{!"_ZTSSt11_Tuple_implILm1EJN3re28PODArrayIhE7DeleterEEE", !70, i64 0}
!70 = !{!"_ZTSSt10_Head_baseILm1EN3re28PODArrayIhE7DeleterELb0EE", !71, i64 0}
!71 = !{!"_ZTSN3re28PODArrayIhE7DeleterE", !4, i64 0}
!72 = !{!"_ZTSSt10_Head_baseILm0EPhLb0EE", !73, i64 0}
!73 = !{!"p1 omnipotent char", !12, i64 0}
!74 = !{!"p1 _ZTSN3re23DFAE", !12, i64 0}
!75 = !{!"_ZTSN4absl12lts_202401169once_flagE", !76, i64 0}
!76 = !{!"_ZTSSt6atomicIjE", !77, i64 0}
!77 = !{!"_ZTSSt13__atomic_baseIjE", !4, i64 0}
!78 = !{!10, !17, i64 72}
!79 = !{!40, !4, i64 20}
!80 = !{!40, !4, i64 48}
!81 = !{!82, !4, i64 0}
!82 = !{!"_ZTSN3re210SparseSetTIvEE", !4, i64 0, !19, i64 8, !19, i64 24}
!83 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!84 = !{!28, !29, i64 0}
!85 = !{!86, !4, i64 40}
!86 = !{!"_ZTSN3re23DFA5WorkqE", !82, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !8, i64 52}
!87 = !{!86, !4, i64 44}
!88 = !{!86, !4, i64 48}
!89 = !{!86, !8, i64 52}
!90 = !{!10, !18, i64 24}
!91 = !{!10, !18, i64 32}
!92 = !{!29, !29, i64 0}
!93 = !{!27, !4, i64 0}
!94 = !{!35, !17, i64 16}
!95 = !{!35, !12, i64 0}
!96 = !{!35, !17, i64 24}
!97 = !{}
!98 = !{!35, !12, i64 8}
!99 = !{!100, !100, i64 0}
!100 = !{!"_ZTSN4absl12lts_2024011618container_internal6ctrl_tE", !5, i64 0}
!101 = !{!5, !5, i64 0}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.mustprogress"}
!104 = !{!105, !105, i64 0}
!105 = !{!"p1 _ZTSN3re23DFA5StateE", !12, i64 0}
!106 = distinct !{!106, !103}
!107 = !{!108, !73, i64 0}
!108 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !73, i64 0}
!109 = !{!110, !17, i64 8}
!110 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !108, i64 0, !17, i64 8, !5, i64 16}
!111 = !{!110, !73, i64 0}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN4absl12lts_202401169StrFormatIJPKciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSC_: argument 0"}
!114 = distinct !{!114, !"_ZN4absl12lts_202401169StrFormatIJPKciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSC_"}
!115 = !{!116, !12, i64 8}
!116 = !{!"_ZTSN4absl12lts_2024011619str_format_internal13FormatArgImplE", !5, i64 0, !12, i64 8}
!117 = distinct !{!117, !103}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN4absl12lts_202401169StrFormatIJPN3re23DFA5StateEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSE_: argument 0"}
!120 = distinct !{!120, !"_ZN4absl12lts_202401169StrFormatIJPN3re23DFA5StateEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSE_"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN4absl12lts_202401169StrFormatIJPKciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSC_: argument 0"}
!123 = distinct !{!123, !"_ZN4absl12lts_202401169StrFormatIJPKciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSC_"}
!124 = distinct !{!124, !103}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN4absl12lts_202401169StrFormatIJjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_: argument 0"}
!127 = distinct !{!127, !"_ZN4absl12lts_202401169StrFormatIJjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19str_format_internal18FormatSpecTemplateIJXspclsr19str_format_internalE14ArgumentToConvIT_EEEEEEDpRKSA_"}
!128 = !{!62, !62, i64 0}
!129 = !{!130, !4, i64 0}
!130 = !{!"_ZTSN3re24Prog4InstE", !4, i64 0, !5, i64 4}
!131 = !{!40, !8, i64 1}
!132 = !{i8 0, i8 2}
!133 = distinct !{!133, !103, !134}
!134 = !{!"llvm.loop.peeled.count", i32 1}
!135 = distinct !{!135, !103}
!136 = distinct !{!136, !103}
!137 = distinct !{!137, !103}
!138 = !{!139, !105, i64 0}
!139 = !{!"_ZTSSt13__atomic_baseIPN3re23DFA5StateEE", !105, i64 0}
!140 = distinct !{!140, !103, !141, !142}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = !{!"branch_weights", i32 4, i32 12}
!144 = distinct !{!144, !103, !141, !142}
!145 = !{!146, !148, !150, !152, !154, !156}
!146 = distinct !{!146, !147, !"_ZNK4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE19EmplaceDecomposableclIS7_JRKS7_EEESt4pairINSC_8iteratorEbERKT_DpOT0_: argument 0"}
!147 = distinct !{!147, !"_ZNK4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE19EmplaceDecomposableclIS7_JRKS7_EEESt4pairINSC_8iteratorEbERKT_DpOT0_"}
!148 = distinct !{!148, !149, !"_ZN4absl12lts_2024011618container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS6_9StateHashENS6_10StateEqualESaIS8_EE19EmplaceDecomposableERKS8_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISI_EEEEOSH_OSI_: argument 0"}
!149 = distinct !{!149, !"_ZN4absl12lts_2024011618container_internal14DecomposeValueINS1_12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS6_9StateHashENS6_10StateEqualESaIS8_EE19EmplaceDecomposableERKS8_EEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalISI_EEEEOSH_OSI_"}
!150 = distinct !{!150, !151, !"_ZN4absl12lts_2024011618container_internal17FlatHashSetPolicyIPN3re23DFA5StateEE5applyINS1_12raw_hash_setIS7_NS4_9StateHashENS4_10StateEqualESaIS6_EE19EmplaceDecomposableEJRKS6_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSH_DpOSI_: argument 0"}
!151 = distinct !{!151, !"_ZN4absl12lts_2024011618container_internal17FlatHashSetPolicyIPN3re23DFA5StateEE5applyINS1_12raw_hash_setIS7_NS4_9StateHashENS4_10StateEqualESaIS6_EE19EmplaceDecomposableEJRKS6_EEEDTclsr4absl18container_internalE14DecomposeValueclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSH_DpOSI_"}
!152 = distinct !{!152, !153, !"_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE19EmplaceDecomposableEJRKS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_: argument 0"}
!153 = distinct !{!153, !"_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEEvE5applyINS1_12raw_hash_setIS8_NS5_9StateHashENS5_10StateEqualESaIS7_EE19EmplaceDecomposableEJRKS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_"}
!154 = distinct !{!154, !155, !"_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE7emplaceIJRKS7_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSH_: argument 0"}
!155 = distinct !{!155, !"_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE7emplaceIJRKS7_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbEDpOSH_"}
!156 = distinct !{!156, !157, !"_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_: argument 0"}
!157 = distinct !{!157, !"_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re23DFA5StateEEENS5_9StateHashENS5_10StateEqualESaIS7_EE6insertIS7_TnNSt9enable_ifIXsr4absl11disjunctionISt14is_convertibleIRKT_S7_ENSC_22SameAsElementReferenceISI_EEEE5valueEiE4typeELi0ETnNSE_IXsr14IsDecomposableISI_EE5valueEiE4typeELi0EEESt4pairINSC_8iteratorEbESI_"}
!158 = distinct !{!158, !103, !142, !141}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN4absl12lts_2024011618container_internal5probeERKNS1_12CommonFieldsEm: argument 0"}
end_hunk_3
