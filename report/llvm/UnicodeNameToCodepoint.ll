Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UnicodeNameToCodepoint?download=true
inline.NumInlined: 745
inline.NumDeleted: 401
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEm:bb.a
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #18
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %._crit_edge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  %i.bu = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.k
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.k, align 8, !tbaa !14
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.010 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cj, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.by = trunc i64 %.010 to i8
  %.val.val = load ptr, ptr %6, align 8, !tbaa !38
  %i.bz = getelementptr i8, ptr %.val.val, i64 %.010
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !14
  %i.ca = or disjoint i64 %.010, 1                ; 2 uses
  %i.cb = trunc i64 %i.ca to i8
  %.val.val.1 = load ptr, ptr %6, align 8, !tbaa !38
  %i.cc = getelementptr i8, ptr %.val.val.1, i64 %i.ca
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !14
  %i.cd = or disjoint i64 %.010, 2                ; 2 uses
  %i.ce = trunc i64 %i.cd to i8
  %.val.val.2 = load ptr, ptr %6, align 8, !tbaa !38
  %i.cf = getelementptr i8, ptr %.val.val.2, i64 %i.cd
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !14
  %i.cg = or disjoint i64 %.010, 3                ; 2 uses
  %i.ch = trunc i64 %i.cg to i8
  %.val.val.3 = load ptr, ptr %6, align 8, !tbaa !38
  %i.ci = getelementptr i8, ptr %.val.val.3, i64 %i.cg
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !14
  %i.cj = add nuw i64 %.010, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !84
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_1clIS3_EEvRKNS1_4NodeEmRT_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %class.anon.46, align 8             ; 6 uses
  %7 = alloca %"struct.llvm::sys::unicode::MatchForCodepointName", align 8 ; 8 uses
  %8 = alloca %"struct.llvm::sys::unicode::Node", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %.not68 = icmp eq i64 %i.c, 0
  br i1 %.not68, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph66, %bb.d
  %i.f = phi i64 [ %i.c, %.lr.ph66 ], [ %i.bi, %bb.d ]
  %.03964 = phi i64 [ %2, %.lr.ph66 ], [ %.1, %bb.d ] ; 6 uses
  %.04062 = phi i64 [ 0, %.lr.ph66 ], [ %i.bj, %bb.d ] ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.04062
  %i.i = load i8, ptr %i.h, align 1, !tbaa !14    ; 2 uses
  %i.j = and i8 %i.i, -33
  %i.k = add i8 %i.j, -65
  %i.l = icmp ult i8 %i.k, 26
  %i.m = add i8 %i.i, -48
  %i.n = icmp ult i8 %i.m, 10
  %i.o = or i1 %i.n, %i.l
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = trunc i64 %.03964 to i8
  %i.q = load ptr, ptr %0, align 8, !tbaa !103, !nonnull !28, !align !53 ; 2 uses
  %.val53 = load ptr, ptr %i.q, align 8, !tbaa !104
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %.val54 = load i64, ptr %i.r, align 8, !tbaa !41
  %.val53.val = load ptr, ptr %.val53, align 8, !tbaa !38
  %i.s = mul i64 %.val54, %.03964
  %i.t = getelementptr i8, ptr %.val53.val, i64 %i.s
  store i8 %i.p, ptr %i.t, align 1, !tbaa !14
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !105, !nonnull !28, !align !53
  %i.v = load i64, ptr %i.u, align 8, !tbaa !15
  %i.w = icmp ugt i64 %i.v, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.x = add i64 %.03964, -1
  br label %.lr.ph.i.i

._crit_edge:                                      ; preds = %.lr.ph.i.i, %bb.c
  %i.y = add i64 %.03964, 1
  %.pre = load i64, ptr %i.b, align 8, !tbaa !51
  br label %bb.d

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.04161 = phi i64 [ 1, %.lr.ph ], [ %i.be, %.lr.ph.i.i ] ; 4 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !103, !nonnull !28, !align !53 ; 2 uses
  %i.aa = add i64 %.04161, -1                     ; 3 uses
  %.val51 = load ptr, ptr %i.z, align 8, !tbaa !104
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val52 = load i64, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %.val51.val = load ptr, ptr %.val51, align 8, !tbaa !38 ; 2 uses
  %i.ac = mul i64 %.val52, %.03964
  %i.ad = getelementptr i8, ptr %.val51.val, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.aa
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = sext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, 1                    ; 2 uses
  %i.ai = mul i64 %.val52, %i.x
  %i.aj = getelementptr i8, ptr %.val51.val, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.04161
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %i.am = sext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.aj, i64 %i.aa
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = sext i8 %i.ap to i32
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !106, !nonnull !28, !align !53
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aa
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.04062
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %.not43 = icmp ne i8 %i.au, %i.ax
  %i.ay = zext i1 %.not43 to i32
  %i.az = add nsw i32 %i.ay, %i.aq                ; 2 uses
  %i.ba = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.an)
  %i.bb = icmp slt i32 %i.az, %i.ba
  %.sroa.speculate.load.false.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.an)
  %.sroa.speculated = select i1 %i.bb, i32 %i.az, i32 %.sroa.speculate.load.false.sroa.speculated
  %i.bc = trunc i32 %.sroa.speculated to i8
  %i.bd = getelementptr i8, ptr %i.ad, i64 %.04161
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !14
  %i.be = add nuw i64 %.04161, 1                  ; 2 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !105, !nonnull !28, !align !53
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !15
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %.lr.ph.i.i, label %._crit_edge, !llvm.loop !95

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.bi = phi i64 [ %.pre, %._crit_edge ], [ %i.f, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %i.y, %._crit_edge ], [ %.03964, %bb.b ] ; 2 uses
  %i.bj = add nuw i64 %.04062, 1                  ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  br i1 %i.bk, label %bb.b, label %._crit_edge67, !llvm.loop !96

._crit_edge67:                                    ; preds = %bb.d, %bb.a
  %.039.lcssa = phi i64 [ %2, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !46 ; 2 uses
  %.not = icmp eq i32 %i.bm, -1
  br i1 %.not, label %"_ZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS1_4NodeEjDi.exit", label %bb.e

bb.e:                                             ; preds = %._crit_edge67
  %i.bn = load ptr, ptr %0, align 8, !tbaa !103, !nonnull !28, !align !53 ; 2 uses
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !104
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !38
  %i.bo = add i64 %.039.lcssa, -1
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  %.val44 = load i64, ptr %i.bp, align 8, !tbaa !41
  %i.bq = mul i64 %.val44, %i.bo
  %i.br = getelementptr i8, ptr %.val.val, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !105, !nonnull !28, !align !53
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !15
  %i.bv = getelementptr i8, ptr %i.br, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !14
  %i.by = sext i8 %i.bx to i32                    ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !107, !nonnull !28, !align !53 ; 5 uses
  %i.cb = zext i32 %i.by to i64                   ; 2 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !109, !nonnull !28, !align !53 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.ce = icmp ult i64 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !110 ; 2 uses
  %9 = getelementptr i8, ptr %i.cg, i64 8
  %10 = load i32, ptr %9, align 8, !tbaa !33      ; 3 uses
  br i1 %i.ce, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.ch = zext i32 %10 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !111, !nonnull !28, !align !53
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !15
  %i.cl = icmp eq i64 %i.ck, %i.ch
  br i1 %i.cl, label %"_ZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS1_4NodeEjDi.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.cm, ptr %5, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !23
  store i8 0, ptr %i.cm, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store ptr %5, ptr %6, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.co, align 8, !tbaa !112
  %.val.i = load ptr, ptr %i.cg, align 8, !tbaa !32 ; 3 uses
  %.not.i.i55 = icmp eq i32 %10, 0
  br i1 %.not.i.i55, label %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.i", label %_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i

_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i: ; preds = %._crit_edge.i
  %i.cp = zext i32 %10 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS2_9StringRefEmENK3$_0clERKNS4_4NodeEjDiEUlRKNS4_21MatchForCodepointNameEmE_EclIPSA_KjEEbT_RT0_.exit.i.i.i.i", %_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.cp, %_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS2_9StringRefEmENK3$_0clERKNS4_4NodeEjDiEUlRKNS4_21MatchForCodepointNameEmE_EclIPSA_KjEEbT_RT0_.exit.i.i.i.i" ] ; 2 uses
  %.01117.i.i.i.i = phi ptr [ %.val.i, %_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.112.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS2_9StringRefEmENK3$_0clERKNS4_4NodeEjDiEUlRKNS4_21MatchForCodepointNameEmE_EclIPSA_KjEEbT_RT0_.exit.i.i.i.i" ] ; 2 uses
  %i.cs = lshr i64 %.018.i.i.i.i, 1               ; 3 uses
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %.01117.i.i.i.i, i64 %i.cs ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !114 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, %i.by
  br i1 %i.cw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call fastcc void @"_ZZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS1_4NodeEjDiENKUlvE_clB5cxx11Ev"(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(16) %6)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !23 ; 2 uses
  %i.cz = load i64, ptr %i.cq, align 8, !tbaa !23 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.cy) ; 2 uses
  %i.da = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  %.pre.pre.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !24 ; 3 uses
  br i1 %i.da, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !24
  %i.dc = call i32 @memcmp(ptr noundef %i.db, ptr noundef %.pre.pre.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #17 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.h
  %i.dd = sub i64 %i.cy, %i.cz
  %spec.select7.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.dc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.de = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  %i.df = icmp eq ptr %.pre.pre.i.i.i.i.i.i, %i.cr
  br i1 %i.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i
  %i.dg = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.dg)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i
  %i.dh = load i64, ptr %i.cr, align 8, !tbaa !14
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre.i.i.i.i.i.i, i64 noundef %i.di) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS2_9StringRefEmENK3$_0clERKNS4_4NodeEjDiEUlRKNS4_21MatchForCodepointNameEmE_EclIPSA_KjEEbT_RT0_.exit.i.i.i.i"

bb.i:                                             ; preds = %_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.dj = icmp ult i32 %i.cv, %i.by
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS2_9StringRefEmENK3$_0clERKNS4_4NodeEjDiEUlRKNS4_21MatchForCodepointNameEmE_EclIPSA_KjEEbT_RT0_.exit.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS2_9StringRefEmENK3$_0clERKNS4_4NodeEjDiEUlRKNS4_21MatchForCodepointNameEmE_EclIPSA_KjEEbT_RT0_.exit.i.i.i.i": ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i1 [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i ], [ %i.dj, %bb.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.dl = xor i64 %i.cs, -1
  %i.dm = add nsw i64 %.018.i.i.i.i, %i.dl
  %.112.i.i.i.i = select i1 %.0.i.i.i.i.i.i, ptr %i.dk, ptr %.01117.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %.0.i.i.i.i.i.i, i64 %i.dm, i64 %i.cs ; 2 uses
  %i.dn = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.dn, label %_ZSt9__advanceIPN4llvm3sys7unicode21MatchForCodepointNameElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.loopexit.i", !llvm.loop !97

"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.loopexit.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS2_9StringRefEmENK3$_0clERKNS4_4NodeEjDiEUlRKNS4_21MatchForCodepointNameEmE_EclIPSA_KjEEbT_RT0_.exit.i.i.i.i"
  %.pre11.i = load ptr, ptr %i.cf, align 8, !tbaa !110 ; 2 uses
  %.pre12.i.a = load ptr, ptr %.pre11.i, align 8, !tbaa !32
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.pre11.i, i64 8
  %.pre14.i = load i32, ptr %.phi.trans.insert13.i, align 8, !tbaa !33
  %i.do = zext i32 %.pre14.i to i64
  br label %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.i"

"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.i": ; preds = %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.loopexit.i", %._crit_edge.i
  %i.dp = phi i64 [ 0, %._crit_edge.i ], [ %i.do, %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.loopexit.i" ] ; 2 uses
  %i.dq = phi ptr [ %.val.i, %._crit_edge.i ], [ %.pre12.i.a, %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.loopexit.i" ]
  %.011.lcssa.i.i.i.i = phi ptr [ %.val.i, %._crit_edge.i ], [ %.112.i.i.i.i, %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.loopexit.i" ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.dq, i64 %i.dp
  %i.ds = icmp eq ptr %.011.lcssa.i.i.i.i, %i.dr
  br i1 %i.ds, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.i"
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !111, !nonnull !28, !align !53
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !15
  %i.dw = icmp eq i64 %i.dv, %i.dp
  br i1 %i.dw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %"_ZN4llvm11lower_boundIRNS_11SmallVectorINS_3sys7unicode21MatchForCodepointNameELj1EEERjZZNS3_30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS3_4NodeEjDiEUlRKS4_mE_EEDaOT_OT0_T1_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call fastcc void @"_ZZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS1_4NodeEjDiENKUlvE_clB5cxx11Ev"(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.by, ptr %i.dx, align 8, !tbaa !114
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 %i.bm, ptr %i.dy, align 4, !tbaa !115
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !110, !nonnull !28, !align !53
  %i.ea = call noundef ptr @_ZN4llvm15SmallVectorImplINS_3sys7unicode21MatchForCodepointNameEE15insert_one_implIS3_EEPS3_S6_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef %.011.lcssa.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %7) ; 0 uses
  %i.eb = load ptr, ptr %i.cf, align 8, !tbaa !110, !nonnull !28, !align !53 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !33 ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !111, !nonnull !28, !align !53
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !15
  %i.ei = icmp ult i64 %i.eh, %i.ee
  br i1 %i.ei, label %bb.l, label %_ZN4llvm23SmallVectorTemplateBaseINS_3sys7unicode21MatchForCodepointNameELb0EE8pop_backEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ej = add i32 %i.ed, -1                       ; 2 uses
  store i32 %i.ej, ptr %i.ec, align 8, !tbaa !33
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !32
  %i.el = zext i32 %i.ej to i64
  %i.em = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %i.el ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZN4llvm23SmallVectorTemplateBaseINS_3sys7unicode21MatchForCodepointNameELb0EE8pop_backEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !14
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #18
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3sys7unicode21MatchForCodepointNameELb0EE8pop_backEv.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_3sys7unicode21MatchForCodepointNameELb0EE8pop_backEv.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.k
  %i.es = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZN4llvm3sys7unicode21MatchForCodepointNameD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3sys7unicode21MatchForCodepointNameELb0EE8pop_backEv.exit.i
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !14
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #18
  br label %_ZN4llvm3sys7unicode21MatchForCodepointNameD2Ev.exit.i

_ZN4llvm3sys7unicode21MatchForCodepointNameD2Ev.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3sys7unicode21MatchForCodepointNameELb0EE8pop_backEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm3sys7unicode21MatchForCodepointNameD2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ex = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.cm
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ez = load i64, ptr %i.cm, align 8, !tbaa !14
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %"_ZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS1_4NodeEjDi.exit"

"_ZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS1_4NodeEjDi.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.f, %._crit_edge67
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !49 ; 2 uses
  %.not.i = icmp ne i32 %i.fc, 0
  %i.fd = load i8, ptr %1, align 8, !range !27
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = select i1 %.not.i, i1 true, i1 %i.fe
  br i1 %i.ff, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %"_ZZN4llvm3sys7unicode30nearestMatchesForCodepointNameENS_9StringRefEmENK3$_0clERKNS1_4NodeEjDi.exit"
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fn = load ptr, ptr @_ZN4llvm3sys7unicode27UnicodeNameToCodepointIndexE, align 8 ; 9 uses
  %i.fo = load i64, ptr @_ZN4llvm3sys7unicode31UnicodeNameToCodepointIndexSizeE, align 8
  %i.fp = load ptr, ptr @_ZN4llvm3sys7unicode26UnicodeNameToCodepointDictE, align 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.z
  %.038 = phi i32 [ %i.il, %bb.z ], [ %i.fc, %.preheader ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.fq = icmp eq i32 %.038, 0
  br i1 %i.fq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 -1, ptr %i.fi, align 4, !tbaa !46, !alias.scope !117
  store i8 0, ptr %i.fk, align 4, !tbaa !47, !alias.scope !117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i8 0, i64 24, i1 false), !alias.scope !117
  store i8 1, ptr %8, align 8, !tbaa !48, !alias.scope !117
  store i32 1, ptr %i.fj, align 8, !tbaa !49, !alias.scope !117
  store i32 1, ptr %i.fg, align 8, !tbaa !50, !alias.scope !117
end_hunk_0
