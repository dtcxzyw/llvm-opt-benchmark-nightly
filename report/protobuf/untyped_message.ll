inline.NumInlined: 4308
inline.NumDeleted: 2132
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK6google8protobuf13json_internal12ResolverPool7Message13FieldsByIndexEv:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  store ptr %i.j, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  store ptr %.fr13, ptr %i.ah, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store ptr %0, ptr %i.ai, align 8, !tbaa !118
  %i.aj = add nuw i64 %.011.us, 4                 ; 2 uses
  %niter25.next.3 = add i64 %niter25, 4           ; 2 uses
  %niter25.ncmp.3 = icmp eq i64 %niter25.next.3, %unroll_iter24
  br i1 %niter25.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !119

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %.011 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.ax, %.lr.ph.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.011 ; 3 uses
  store ptr %i.j, ptr %i.ak, align 8, !tbaa !18
  %sext = shl i64 %.011, 32
  %i.al = ashr exact i64 %sext, 29
  %i.am = getelementptr inbounds i8, ptr %i.r, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !121
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %0, ptr %i.ap, align 8, !tbaa !118
  %i.aq = or disjoint i64 %.011, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.aq ; 3 uses
  store ptr %i.j, ptr %i.ar, align 8, !tbaa !18
  %sext.1 = shl i64 %i.aq, 32
  %i.as = ashr exact i64 %sext.1, 29
  %i.at = getelementptr inbounds i8, ptr %i.r, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !121
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %0, ptr %i.aw, align 8, !tbaa !118
  %i.ax = add nuw i64 %.011, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit19.unr-lcssa, label %.lr.ph.split, !llvm.loop !119

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.split.us
  %lcmp.mod22.not = icmp eq i64 %xtraiter21, 0
  br i1 %lcmp.mod22.not, label %.loopexit, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %.011.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.aj, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter21, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %.011.us.epil = phi i64 [ %i.bb, %.lr.ph.split.us.epil ], [ %.011.us.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.011.us.epil ; 3 uses
  store ptr %i.j, ptr %i.ay, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %.fr13, ptr %i.az, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %0, ptr %i.ba, align 8, !tbaa !118
  %i.bb = add nuw i64 %.011.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter21
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.split.us.epil, !llvm.loop !122

.loopexit.loopexit19.unr-lcssa:                   ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.loopexit.loopexit19.unr-lcssa, %.lr.ph.split.preheader
  %.011.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.ax, %.loopexit.loopexit19.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.011.epil.init ; 3 uses
  store ptr %i.j, ptr %i.bc, align 8, !tbaa !18
  %sext.epil = shl i64 %.011.epil.init, 32
  %i.bd = ashr exact i64 %sext.epil, 29
  %i.be = getelementptr inbounds i8, ptr %i.r, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !121
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %0, ptr %i.bh, align 8, !tbaa !118
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.epil.preheader, %.loopexit.loopexit19.unr-lcssa, %.loopexit.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %bb.a
  %i.bi = phi ptr [ %i.h, %.loopexit.loopexit.unr-lcssa ], [ %i.e, %bb.a ], [ %i.h, %.lr.ph.split.us.epil ], [ %i.h, %.loopexit.loopexit19.unr-lcssa ], [ %i.h, %.lr.ph.split.epil.preheader ]
  %i.bj = sext i32 %i.b to i64
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.bi, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.bj, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"struct.std::pair", align 8        ; 5 uses
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !113  ; 7 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i64, ptr %i.f, align 8, !tbaa !112
  %.not.i = icmp ult i64 %i.g, 131072
  br i1 %.not.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = icmp sgt i32 %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  %or.cond.i = select i1 %i.h, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = zext nneg i32 %i.c to i64                ; 5 uses
  %i.l = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #29 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %i.l, i1 false)
  store ptr %i.m, ptr %i.i, align 8, !tbaa !116
  %i.n = load ptr, ptr %0, align 8, !tbaa !33     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !117
  %.fr13.i = freeze ptr %i.p                      ; 6 uses
  %i.q = ptrtoint ptr %.fr13.i to i64             ; 2 uses
  %i.r = and i64 %i.q, 1
  %i.s = icmp eq i64 %i.r, 0
  %i.t = add i64 %i.q, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  br i1 %i.s, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %i.k, 1
  %i.w = icmp eq i32 %i.c, 1
  br i1 %i.w, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.k, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter50 = and i64 %i.k, 3                   ; 3 uses
  %i.x = icmp ult i32 %i.c, 4
  br i1 %i.x, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter53 = and i64 %i.k, 2147483644
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.011.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.an, %.lr.ph.split.us.i ] ; 5 uses
  %niter54 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter54.next.3, %.lr.ph.split.us.i ]
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.011.us.i ; 3 uses
  store ptr %i.n, ptr %i.y, align 8, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.fr13.i, ptr %i.z, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %0, ptr %i.aa, align 8, !tbaa !118
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.011.us.i ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %.fr13.i, ptr %i.ad, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %0, ptr %i.ae, align 8, !tbaa !118
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.011.us.i ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store ptr %i.n, ptr %i.ag, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr %.fr13.i, ptr %i.ah, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store ptr %0, ptr %i.ai, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.011.us.i ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  store ptr %.fr13.i, ptr %i.al, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  store ptr %0, ptr %i.am, align 8, !tbaa !118
  %i.an = add nuw nsw i64 %.011.us.i, 4           ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %.lr.ph.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !119

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.011.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.az, %.lr.ph.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.011.i ; 3 uses
  store ptr %i.n, ptr %i.ao, align 8, !tbaa !18
  %sext.i = shl i64 %.011.i, 32
  %6 = ashr exact i64 %sext.i, 29
  %i.ap = getelementptr inbounds i8, ptr %i.v, i64 %6
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !121
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %0, ptr %i.as, align 8, !tbaa !118
  %i.at = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.at ; 3 uses
  store ptr %i.n, ptr %i.au, align 8, !tbaa !18
  %sext.i.1 = shl i64 %i.at, 32
  %7 = ashr exact i64 %sext.i.1, 29
  %i.av = getelementptr inbounds i8, ptr %i.v, i64 %7
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !121
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %0, ptr %i.ay, align 8, !tbaa !118
  %i.az = add nuw nsw i64 %.011.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.loopexit48.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !119

.lr.ph.loopexit.unr-lcssa:                        ; preds = %.lr.ph.split.us.i
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %.lr.ph, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.011.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.an, %.lr.ph.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter50, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %.011.us.i.epil = phi i64 [ %i.bd, %.lr.ph.split.us.i.epil ], [ %.011.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.011.us.i.epil ; 3 uses
  store ptr %i.n, ptr %i.ba, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.fr13.i, ptr %i.bb, align 8, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %0, ptr %i.bc, align 8, !tbaa !118
  %i.bd = add nuw nsw i64 %.011.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter50
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.lr.ph.split.us.i.epil, !llvm.loop !124

.lr.ph.loopexit48.unr-lcssa:                      ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.lr.ph.loopexit48.unr-lcssa, %.lr.ph.split.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %i.az, %.lr.ph.loopexit48.unr-lcssa ] ; 2 uses
  %lcmp.mod49 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.011.i.epil.init ; 3 uses
  store ptr %i.n, ptr %i.be, align 8, !tbaa !18
  %sext.i.epil = shl i64 %.011.i.epil.init, 32
  %8 = ashr exact i64 %sext.i.epil, 29
  %i.bf = getelementptr inbounds i8, ptr %i.v, i64 %8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !121
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %0, ptr %i.bi, align 8, !tbaa !118
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.i.epil.preheader, %.lr.ph.loopexit48.unr-lcssa, %.lr.ph.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %bb.c
  %i.bj = phi ptr [ %i.m, %.lr.ph.loopexit.unr-lcssa ], [ %i.j, %bb.c ], [ %i.m, %.lr.ph.split.us.i.epil ], [ %i.m, %.lr.ph.loopexit48.unr-lcssa ], [ %i.m, %.lr.ph.split.i.epil.preheader ] ; 2 uses
  %i.bk = sext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.bk, 5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i.i30 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bo = icmp eq i64 %1, 0
  %i.bp = icmp eq i64 %1, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32
  %.02241 = phi ptr [ null, %.lr.ph ], [ %.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32 ]
  %.02340 = phi ptr [ %i.bj, %.lr.ph ], [ %i.df, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32 ] ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02340, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !7  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !19
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = and i64 %i.bu, -4
  %i.bw = inttoptr i64 %i.bv to ptr               ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26
  %i.ca = icmp eq i64 %i.bz, %1
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.e
  %bcmp.i = call i32 @bcmp(ptr %i.bx, ptr %2, i64 %1)
  %i.cb = icmp eq i32 %bcmp.i, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !19
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = and i64 %i.ce, -4
  %i.cg = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !26
  %i.ck = icmp eq i64 %i.cj, %1
  br i1 %i.ck, label %bb.g, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit29.thread

bb.g:                                             ; preds = %bb.f
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26: ; preds = %bb.g
  %bcmp.i27 = call i32 @bcmp(ptr %i.ch, ptr %2, i64 %1)
  %i.cl = icmp eq i32 %bcmp.i27, 0
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit29.thread

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit29.thread: ; preds = %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26
  br label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit29.thread
  %.1 = phi ptr [ %.02241, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit29.thread ], [ %.02340, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i26 ], [ %.02340, %bb.g ], [ %.02340, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.02340, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE30find_or_prepare_insert_non_sooINSt7__cxx1112basic_stringIcS6_SaIcEEEEESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
  %i.cm = load i8, ptr %i.bm, align 8, !tbaa !134, !range !86, !alias.scope !137, !noundef !88
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !137 ; 3 uses
  %i.co = load ptr, ptr %i.bw, align 8, !tbaa !21, !noalias !137
  %i.cp = load i64, ptr %i.by, align 8, !tbaa !26, !noalias !137
  store i64 %i.cp, ptr %.sroa.2.0.copyload.i.i.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store ptr %i.co, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16
  store ptr %.02340, ptr %i.cr, align 8, !tbaa !138
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.cs = load ptr, ptr %i.bq, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !19
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = and i64 %i.cv, -4
  %i.cx = inttoptr i64 %i.cw to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE30find_or_prepare_insert_non_sooINSt7__cxx1112basic_stringIcS6_SaIcEEEEESI_INSM_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
  %i.cy = load i8, ptr %i.bn, align 8, !tbaa !134, !range !86, !alias.scope !150, !noundef !88
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit
  %.sroa.2.0.copyload.i.i.i31 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i30, align 8, !alias.scope !150 ; 3 uses
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !21, !noalias !150
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !26, !noalias !150
  store i64 %i.dc, ptr %.sroa.2.0.copyload.i.i.i31, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i31, i64 8
  store ptr %i.da, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i31, i64 16
  store ptr %.02340, ptr %i.de, align 8, !tbaa !138
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.df = getelementptr inbounds nuw i8, ptr %.02340, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.df, %i.bl
  br i1 %.not, label %.loopexit, label %bb.d

bb.j:                                             ; preds = %bb.b
  %i.dg = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE4findIS7_EENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dj = extractvalue { ptr, ptr } %i.dg, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !151
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32, %bb.k, %bb.j, %bb.a
  %.0 = phi ptr [ null, %bb.j ], [ null, %bb.a ], [ %i.dl, %bb.k ], [ %.1, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE11try_emplaceINSt7__cxx1112basic_stringIcS6_SaIcEEEJSE_ETnNSt9enable_ifIXsr14LifetimeBoundKIT_Lb1EPST_EE5valueEiE4typeELi0ETnNSS_IXntsr3std14is_convertibleIST_NS1_12raw_hash_setISF_SG_SH_SL_E14const_iteratorEEE5valueEiE4typeELi0EEESI_INSY_8iteratorEbERKST_DpOT0_.exit32 ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE4findIS7_EENSM_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !111
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !112
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !13 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !63
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !63
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13, !nonnull !88, !noundef !88
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !112, !noalias !153
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !111, !noalias !153 ; 4 uses
  %i.t = lshr i64 %i.o, 7
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE4findIS7_EENSM_8iteratorERKT_:bb.a
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ah = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not43.i.us = icmp eq i16 %i.ai, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit, !prof !89

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aj = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !156

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.as, %bb.g ], [ %i.ag, %.split.us ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.us, %i.am
  %i.ao = and i64 %i.an, %i.s                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us = load i64, ptr %i.ap, align 8, !tbaa !62
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us, 0
  br i1 %i.aq, label %.thread32.i, label %bb.g, !prof !157

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = add i16 %.sroa.017.046.i.us.us, -1
  %i.as = and i16 %i.ar, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bl, %bb.i ], [ %i.u, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.s            ; 4 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !13 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.aa, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bh, %bb.h ], [ %i.ax, %.split ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.s                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10 = load i64, ptr %i.bc, align 8, !tbaa !62
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, label %bb.h, !prof !157

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i11, align 8, !tbaa !63
  %bcmp.i.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14, 0
  br i1 %i.be, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bg = add i16 %.sroa.017.046.i, -1
  %i.bh = and i16 %i.bg, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bi = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit, !prof !89

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !156

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_smallIS7_EENSM_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE10find_largeIS7_EENSM_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEEPKN6google8protobuf13json_internal12ResolverPool5FieldEEEvE5applyINS1_12raw_hash_setISF_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SE_EEE12EqualElementIS7_EEJRSN_ESF_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK6google8protobuf13json_internal12ResolverPool7Message9FindFieldEi(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 8 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, 8                     ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load i64, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %.not.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = icmp sgt i32 %i.b, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  %or.cond.i = select i1 %i.g, i1 %.not.i.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = zext nneg i32 %i.b to i64                ; 5 uses
  %i.k = shl nuw nsw i64 %i.j, 5                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #29 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.l, i8 0, i64 %i.k, i1 false)
  store ptr %i.l, ptr %i.h, align 8, !tbaa !116
  %i.m = load ptr, ptr %0, align 8, !tbaa !33     ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !117
  %.fr13.i = freeze ptr %i.o                      ; 6 uses
  %i.p = ptrtoint ptr %.fr13.i to i64             ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  %i.s = add i64 %i.p, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  br i1 %i.r, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %xtraiter = and i64 %i.j, 1
  %i.v = icmp eq i32 %i.b, 1
  br i1 %i.v, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.j, 2147483646
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %xtraiter90 = and i64 %i.j, 3                   ; 3 uses
  %i.w = icmp ult i32 %i.b, 4
  br i1 %i.w, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter93 = and i64 %i.j, 2147483644
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.011.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.am, %.lr.ph.split.us.i ] ; 5 uses
  %niter94 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter94.next.3, %.lr.ph.split.us.i ]
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i ; 3 uses
  store ptr %i.m, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.fr13.i, ptr %i.y, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %0, ptr %i.z, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %i.m, ptr %i.ab, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %.fr13.i, ptr %i.ac, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %0, ptr %i.ad, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.m, ptr %i.af, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr %.fr13.i, ptr %i.ag, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  store ptr %0, ptr %i.ah, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  store ptr %i.m, ptr %i.aj, align 8, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store ptr %.fr13.i, ptr %i.ak, align 8, !tbaa !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  store ptr %0, ptr %i.al, align 8, !tbaa !118
  %i.am = add nuw nsw i64 %.011.us.i, 4           ; 2 uses
  %niter94.next.3 = add i64 %niter94, 4           ; 2 uses
  %niter94.ncmp.3 = icmp eq i64 %niter94.next.3, %unroll_iter93
  br i1 %niter94.ncmp.3, label %.lr.ph.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !119

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.i.preheader.new
  %.011.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.ay, %.lr.ph.split.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %.lr.ph.split.i ]
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.i ; 3 uses
  store ptr %i.m, ptr %i.an, align 8, !tbaa !18
  %sext.i = shl i64 %.011.i, 32
  %2 = ashr exact i64 %sext.i, 29
  %i.ao = getelementptr inbounds i8, ptr %i.u, i64 %2
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !121
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %0, ptr %i.ar, align 8, !tbaa !118
  %i.as = or disjoint i64 %.011.i, 1              ; 2 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.as ; 3 uses
  store ptr %i.m, ptr %i.at, align 8, !tbaa !18
  %sext.i.1 = shl i64 %i.as, 32
  %3 = ashr exact i64 %sext.i.1, 29
  %i.au = getelementptr inbounds i8, ptr %i.u, i64 %3
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !121
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %0, ptr %i.ax, align 8, !tbaa !118
  %i.ay = add nuw nsw i64 %.011.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.loopexit84.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !119

.lr.ph.loopexit.unr-lcssa:                        ; preds = %.lr.ph.split.us.i
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.lr.ph.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.011.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.am, %.lr.ph.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter90, 0
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %.011.us.i.epil = phi i64 [ %i.bc, %.lr.ph.split.us.i.epil ], [ %.011.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.us.i.epil ; 3 uses
  store ptr %i.m, ptr %i.az, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %.fr13.i, ptr %i.ba, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %0, ptr %i.bb, align 8, !tbaa !118
  %i.bc = add nuw nsw i64 %.011.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter90
  br i1 %epil.iter.cmp.not, label %.lr.ph, label %.lr.ph.split.us.i.epil, !llvm.loop !158

.lr.ph.loopexit84.unr-lcssa:                      ; preds = %.lr.ph.split.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %.lr.ph.loopexit84.unr-lcssa, %.lr.ph.split.i.preheader
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %i.ay, %.lr.ph.loopexit84.unr-lcssa ] ; 2 uses
  %lcmp.mod89 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.011.i.epil.init ; 3 uses
  store ptr %i.m, ptr %i.bd, align 8, !tbaa !18
  %sext.i.epil = shl i64 %.011.i.epil.init, 32
  %4 = ashr exact i64 %sext.i.epil, 29
  %i.be = getelementptr inbounds i8, ptr %i.u, i64 %4
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !121
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %0, ptr %i.bh, align 8, !tbaa !118
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.split.i.epil.preheader, %.lr.ph.loopexit84.unr-lcssa, %.lr.ph.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %bb.d
  %i.bi = phi ptr [ %i.l, %.lr.ph.loopexit.unr-lcssa ], [ %i.i, %bb.d ], [ %i.l, %.lr.ph.split.us.i.epil ], [ %i.l, %.lr.ph.loopexit84.unr-lcssa ], [ %i.l, %.lr.ph.split.i.epil.preheader ] ; 4 uses
  %i.bj = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.bj, 5                    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br i1 %i.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader, label %.lr.ph.split

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader: ; preds = %.lr.ph
  %i.bp = add nsw i64 %.idx, -32                  ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 5
  %i.br = add nuw nsw i64 %i.bq, 1
  %xtraiter95 = and i64 %i.br, 3                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol
  %.01445.us.prol = phi ptr [ %spec.select.us.prol, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ], [ null, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ]
  %.01644.us.prol = phi ptr [ %i.bx, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ], [ %i.bi, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ], [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.01644.us.prol, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !13
  %i.bw = icmp eq i32 %i.bv, %1
  %spec.select.us.prol = select i1 %i.bw, ptr %.01644.us.prol, ptr %.01445.us.prol ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01644.us.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter95
  br i1 %prol.iter.cmp.not, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol, !llvm.loop !159

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader
  %spec.select.us.lcssa.unr = phi ptr [ poison, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ], [ %spec.select.us.prol, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ]
  %.01445.us.unr = phi ptr [ null, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ], [ %spec.select.us.prol, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ]
  %.01644.us.unr = phi ptr [ %i.bi, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.preheader ], [ %i.bx, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol ]
  %i.by = icmp ult i64 %i.bp, 96
  br i1 %i.by, label %.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us
  %.01445.us = phi ptr [ %spec.select.us.3, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us ], [ %.01445.us.unr, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit ]
  %.01644.us = phi ptr [ %i.cw, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us ], [ %.01644.us.unr, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us.prol.loopexit ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01644.us, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !13
  %i.cd = icmp eq i32 %i.cc, %1
  %spec.select.us = select i1 %i.cd, ptr %.01644.us, ptr %.01445.us
  %i.ce = getelementptr inbounds nuw i8, ptr %.01644.us, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.01644.us, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !13
  %i.cj = icmp eq i32 %i.ci, %1
  %spec.select.us.1 = select i1 %i.cj, ptr %i.ce, ptr %spec.select.us
  %i.ck = getelementptr inbounds nuw i8, ptr %.01644.us, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %.01644.us, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !13
  %i.cp = icmp eq i32 %i.co, %1
  %spec.select.us.2 = select i1 %i.cp, ptr %i.ck, ptr %spec.select.us.1
  %i.cq = getelementptr inbounds nuw i8, ptr %.01644.us, i64 96
  %i.cr = getelementptr inbounds nuw i8, ptr %.01644.us, i64 104
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !13
  %i.cv = icmp eq i32 %i.cu, %1
  %spec.select.us.3 = select i1 %i.cv, ptr %i.cq, ptr %spec.select.us.2 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01644.us, i64 128 ; 2 uses
  %.not.us.3 = icmp eq ptr %i.cw, %i.bk
  br i1 %.not.us.3, label %.loopexit, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit.us

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit
  %.01445 = phi ptr [ %spec.select, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit ], [ null, %.lr.ph ]
  %.01644 = phi ptr [ %i.fg, %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit ], [ %i.bi, %.lr.ph ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01644, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !13 ; 6 uses
  %i.db = icmp eq i32 %i.da, %1
  %spec.select = select i1 %i.db, ptr %.01644, ptr %.01445 ; 2 uses
  %i.dc = load i64, ptr %i.bl, align 8, !tbaa !111, !noalias !160 ; 5 uses
  %i.dd = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = icmp ult i64 %i.dc, 2
  br i1 %i.de, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph.split
  %i.df = load i64, ptr %i.bn, align 8, !tbaa !112, !noalias !167
  %.not.i.i.i.i.i = icmp ult i64 %i.df, 131072
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 131072, ptr %i.bn, align 8, !tbaa !62, !noalias !167
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.dg = load i32, ptr %i.bm, align 8, !tbaa !3, !noalias !167 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, %i.da
  br i1 %i.dh, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.di = zext i32 %i.dg to i64
  %i.dj = xor i64 %i.di, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dk = mul i64 %i.dj, 6679450291180483821
  %i.dl = lshr i64 %i.dk, 56
  %i.dm = trunc nuw i64 %i.dl to i8
  %i.dn = and i8 %i.dm, 127
  %i.do = zext i32 %i.da to i64
  %i.dp = xor i64 %i.do, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dq = mul i64 %i.dp, -2543921745674291987
  %i.dr = tail call noundef i64 @llvm.bswap.i64(i64 %i.dq)
  %i.ds = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_6ctrl_tE(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dr, i8 noundef signext %i.dn), !noalias !167
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !13, !noalias !167
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 %i.ds
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph.split
  %i.du = load ptr, ptr %i.bm, align 8, !tbaa !13, !noalias !170 ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.du, i32 0, i32 1, i32 1), !noalias !170
  %i.dv = zext i32 %i.da to i64
  %i.dw = xor i64 %i.dv, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dx = mul i64 %i.dw, -2543921745674291987
  %i.dy = tail call noundef i64 @llvm.bswap.i64(i64 %i.dx) ; 3 uses
  %i.dz = load i64, ptr %i.bn, align 8, !tbaa !112, !noalias !173
  %i.ea = and i64 %i.dz, 65535
  %i.eb = lshr i64 %i.dy, 7
  %i.ec = xor i64 %i.ea, %i.eb
  %i.ed = trunc i64 %i.dy to i8
  %i.ee = and i8 %i.ed, 127
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !13, !noalias !170 ; 2 uses
  %i.ef = insertelement <16 x i8> poison, i8 %i.ee, i64 0
  %i.eg = shufflevector <16 x i8> %i.ef, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.pn.i20 = phi i64 [ %i.ec, %bb.i ], [ %i.fe, %bb.k ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.i ], [ %i.fd, %bb.k ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i20, %i.dc          ; 5 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.eh, i32 0, i32 3, i32 1), !noalias !170
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.7.0.i
  %i.ej = load <16 x i8>, ptr %i.ei, align 1, !tbaa !13, !noalias !170 ; 2 uses
  %i.ek = icmp eq <16 x i8> %i.eg, %i.ej
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.el, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.j, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.eu, %.critedge.i ], [ %i.el, %bb.j ] ; 3 uses
  %i.em = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.en = zext nneg i16 %i.em to i64
  %i.eo = add i64 %.sroa.7.0.i, %i.en
  %i.ep = and i64 %i.eo, %i.dc
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3, !noalias !170
  %i.es = icmp eq i32 %i.er, %i.da
  br i1 %i.es, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE11try_emplaceIiLi0EJSA_ETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISB_SE_SG_SK_E14const_iteratorEEE5valueEiE4typeELi0EEESH_INSQ_8iteratorEbEOiDpOT1_.exit, label %.critedge.i, !prof !29

.critedge.i:                                      ; preds = %.lr.ph.i21
  %i.et = add i16 %.sroa.033.059.i, -1
  %i.eu = and i16 %i.et, %.sroa.033.059.i         ; 2 uses
  %.not.i22 = icmp eq i16 %i.eu, 0
  br i1 %.not.i22, label %.critedge18.i, label %.lr.ph.i21

.critedge18.i:                                    ; preds = %.critedge.i, %bb.j
  %i.ev = icmp eq <16 x i8> %i.ej, splat (i8 -128)
  %i.ew = bitcast <16 x i1> %i.ev to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.ew, 0
  br i1 %.not51.i, label %bb.k, label %.thread.i, !prof !89

.thread.i:                                        ; preds = %.critedge18.i
  %i.ex = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ew, i1 true)
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = add i64 %.sroa.7.0.i, %i.ey
  %i.fa = and i64 %i.ez, %i.dc
  %i.fb = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIiPKN6google8protobuf13json_internal12ResolverPool5FieldEEENS0_13hash_internal4HashIiEESt8equal_toIiESaISt4pairIKiSA_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dy, i64 %i.fa, i64 %.sroa.15.0.i), !noalias !170
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.bo, align 8, !tbaa !13, !noalias !170
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.fb
  br label %bb.l

bb.k:                                             ; preds = %.critedge18.i
  %i.fd = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.fe = add i64 %i.fd, %.sroa.7.0.i
  br label %bb.j

bb.l:                                             ; preds = %bb.h, %bb.f, %.thread.i
  %.sroa.426.0.ph = phi ptr [ %i.fc, %.thread.i ], [ %i.bm, %bb.f ], [ %i.dt, %bb.h ] ; 2 uses
  store i32 %i.da, ptr %.sroa.426.0.ph, align 8, !tbaa !176
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.426.0.ph, i64 8
end_hunk_1
