Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/manifests?download=true
inline.NumInlined: 5244
inline.NumDeleted: 1056
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !251
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !252
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !10
  %.pre.i.i28 = load i64, ptr %i.n, align 8, !tbaa !250 ; 2 uses
  %.pre2.i.i29 = add i64 %.pre.i.i28, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

_ZN3fmt3v1214basic_appenderIcEaSEc.exit30:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i27 = phi i64 [ %i.p, %bb.d ], [ %.pre2.i.i29, %bb.e ]
  %i.v = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i28, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i27, ptr %i.n, align 8, !tbaa !250
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 92, ptr %i.x, align 1, !tbaa !119
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !250  ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !251
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !252
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa), !inline_history !10
  %.pre.i.i33 = load i64, ptr %i.y, align 8, !tbaa !250 ; 2 uses
  %.pre2.i.i34 = add i64 %.pre.i.i33, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

_ZN3fmt3v1214basic_appenderIcEaSEc.exit35:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i32 = phi i64 [ %i.aa, %bb.f ], [ %.pre2.i.i34, %bb.g ]
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %.pre.i.i33, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i32, ptr %i.y, align 8, !tbaa !250
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 92, ptr %i.ai, align 1, !tbaa !119
  br label %bb.q

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = trunc nuw nsw i32 %i.b to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !250 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !251
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !252
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am), !inline_history !10
  %.pre.i.i38 = load i64, ptr %i.ak, align 8, !tbaa !250 ; 2 uses
  %.pre2.i.i39 = add i64 %.pre.i.i38, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40

_ZN3fmt3v1214basic_appenderIcEaSEc.exit40:        ; preds = %bb.h, %bb.i
  %.pre-phi.i.i37 = phi i64 [ %i.am, %bb.h ], [ %.pre2.i.i39, %bb.i ]
  %i.as = phi i64 [ %i.al, %bb.h ], [ %.pre.i.i38, %bb.i ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i37, ptr %i.ak, align 8, !tbaa !250
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 92, ptr %i.au, align 1, !tbaa !119
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.av = icmp ult i32 %i.b, 256
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v126detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !266   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !267 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !119
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !250 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !251
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !252
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk), !inline_history !10
  %.pre.i.i43 = load i64, ptr %i.bi, align 8, !tbaa !250 ; 2 uses
  %.pre2.i.i44 = add i64 %.pre.i.i43, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

_ZN3fmt3v1214basic_appenderIcEaSEc.exit45:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i42 = phi i64 [ %i.bk, %bb.q ], [ %.pre2.i.i44, %bb.r ]
  %i.bq = phi i64 [ %i.bj, %bb.q ], [ %.pre.i.i43, %bb.r ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i42, ptr %i.bi, align 8, !tbaa !250
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %.0, ptr %i.bs, align 1, !tbaa !119
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45, %bb.o, %bb.m, %bb.k
  %.sroa.022.0 = phi ptr [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45 ], [ %0, %bb.p ], [ %i.bg, %.lr.ph ]
  ret ptr %.sroa.022.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02455, align 1, !tbaa !119
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.467, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !119
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02455, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !147
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !119   ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !119 ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !119 ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !147
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !147
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !147
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bq
  store ptr %.02455, ptr %2, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !147
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !1738

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.cb = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !119
  %wide.load109 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !119
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !119
  store <16 x i8> %wide.load109, ptr %i.cd, align 1, !tbaa !119
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1739

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !269

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.bw, -8                   ; 4 uses
  %i.cf = getelementptr i8, ptr %i.b, i64 %n.vec110
  %i.cg = getelementptr i8, ptr %.2, i64 %n.vec110
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %next.gep112 = getelementptr i8, ptr %i.b, i64 %index111
  %next.gep113 = getelementptr i8, ptr %.2, i64 %index111
  %wide.load114 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !119
  store <8 x i8> %wide.load114, ptr %next.gep112, align 1, !tbaa !119
  %index.next115 = add nuw i64 %index111, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1740

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.bw, %n.vec110
  br i1 %cmp.n116, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ] ; 3 uses
  %i.ci = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph134 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.cj = sub i64 %i.ci, %.057.i.ph134
  %xtraiter = and i64 %i.cj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cm, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cl = load i8, ptr %.057.i.prol, align 1, !tbaa !119
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cl, ptr %.08.i.prol, align 1, !tbaa !119
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1741

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %i.cn = sub i64 %.057.i.ph134, %i.ci
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cq = load i8, ptr %.057.i, align 1, !tbaa !119
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cq, ptr %.08.i, align 1, !tbaa !119
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !119
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !119
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !119
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !119
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !119
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !119
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !119
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !119
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.df = load i8, ptr %i.db, align 1, !tbaa !119
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !119
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.di = load i8, ptr %i.de, align 1, !tbaa !119
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !119
  %i.dk = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !119
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !119
  %.not.i33.7 = icmp eq ptr %i.dk, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1742

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.ga, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 6 uses
  %i.do = load i8, ptr %.0, align 1, !tbaa !119
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %i.dq = lshr i32 %i.dp, 3                       ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @.str.467, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !119
  %i.du = sext i8 %i.dt to i64                    ; 6 uses
  %i.dv = getelementptr inbounds i8, ptr %.0, i64 %i.du
  %.not.i.i34 = lshr i32 -2130771968, %i.dq
  %i.dw = and i32 %.not.i.i34, 1
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx
  %i.dz = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.du
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !147
  %i.eb = and i32 %i.ea, %i.dp
  %i.ec = shl nuw nsw i32 %i.eb, 18
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !119 ; 2 uses
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 12
  %i.ei = or disjoint i32 %i.eh, %i.ec
  %i.ej = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !119 ; 2 uses
  %i.el = and i8 %i.ek, 63
  %i.em = zext nneg i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 6
  %i.eo = or disjoint i32 %i.en, %i.ei
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !119 ; 2 uses
  %i.er = and i8 %i.eq, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eo, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.du
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !147
  %i.ew = lshr i32 %i.et, %i.ev                   ; 4 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.du
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !147
  %i.ez = icmp ult i32 %i.ew, %i.ey
  %i.fa = select i1 %i.ez, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ew, 2147481600
  %i.fb = icmp eq i32 %.mask.i.i35, 55296
  %i.fc = select i1 %i.fb, i32 128, i32 0
  %i.fd = icmp samesign ugt i32 %i.ew, 1114111
  %i.fe = select i1 %i.fd, i32 256, i32 0
  %i.ff = lshr i8 %i.ee, 2
  %i.fg = and i8 %i.ff, 48
  %i.fh = lshr i8 %i.ek, 4
  %i.fi = and i8 %i.fh, 12
  %i.fj = lshr i8 %i.eq, 6
  %i.fk = or disjoint i8 %i.fi, %i.fg
  %i.fl = or disjoint i8 %i.fk, %i.fj
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fa, %i.fm
  %i.fo = or disjoint i32 %i.fn, %i.fe
  %i.fp = or disjoint i32 %i.fo, %i.fc
  %i.fq = xor i32 %i.fp, 42
  %i.fr = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.du
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !147
  %i.ft = lshr i32 %i.fq, %i.fs
  %.not.i36 = icmp eq i32 %i.ft, 0                ; 3 uses
  %i.fu = select i1 %.not.i36, i32 %i.ew, i32 -1  ; 4 uses
  %i.fv = icmp ult i32 %i.fu, 32
  br i1 %i.fv, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

switch.early.test.i.i.i37:                        ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  switch i32 %i.fu, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41 [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41:    ; preds = %switch.early.test.i.i.i37
  %i.fw = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.fu)
  br i1 %i.fw, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.fx = add nsw i64 %i.dx, %i.du
  %i.fy = select i1 %.not.i36, i64 %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fy
  store ptr %.3, ptr %2, align 8, !tbaa !62
  store ptr %i.fz, ptr %.sroa.4.0..sroa_idx.i.i39, align 8, !tbaa !62
  store i32 %i.fu, ptr %.sroa.5.0..sroa_idx.i.i40, align 8, !tbaa !147
  br label %.loopexit75

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.ga = select i1 %.not.i36, ptr %i.dy, ptr %i.ed ; 3 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %.0 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %i.gd
  %i.ge = icmp ult ptr %i.ga, %i.dn
  br i1 %i.ge, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.loopexit75, !llvm.loop !1743

.loopexit75:                                      ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, %.loopexit75, %.loopexit
  ret void
}

declare noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !250  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !251
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !252
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !10
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !250 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !250
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 92, ptr %i.l, align 1, !tbaa !119
  %i.m = load i64, ptr %i.b, align 8, !tbaa !250  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !251
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !252
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n), !inline_history !10
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !250 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit7:         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.s = phi i64 [ %i.m, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !250
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.u, align 1, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i16 12336, ptr %i.a, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7
  %.012.i.i = phi i32 [ %i.ab, %.split.i.i ], [ %2, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aa, %.split.i.i ], [ %i.v, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ]
  %i.w = and i32 %.012.i.i, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.469, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !119
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !119
  %i.ab = lshr i32 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i.i, !llvm.loop !12

_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i8 = load i64, ptr %i.b, align 8, !tbaa !250
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.ad = phi i64 [ %.pre.i.i8, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.aq, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !251
  %i.af = sub i64 %i.ae, %i.ad
  %gepdiff = sub nsw i64 2, %.02732.i.i.idx       ; 4 uses
  %i.ag = icmp ult i64 %i.af, %gepdiff
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !252
  %i.ai = add i64 %gepdiff, %i.ad
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai), !inline_history !13
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !250 ; 2 uses
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !251
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %.025.i.i = phi i64 [ %i.am, %bb.e ], [ %gepdiff, %bb.d ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.an = load ptr, ptr %0, align 8, !tbaa !253
  %i.ao = getelementptr i8, ptr %i.an, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !119
  %.pre37.i.i = load i64, ptr %i.b, align 8, !tbaa !250
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.f
  %i.ap = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.f ]
  %i.aq = add i64 %i.ap, %.025.i.i                ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !250
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i9 = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i9, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.d, !llvm.loop !9

_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !250  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !251
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !252
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !10
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !250 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !250
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 92, ptr %i.l, align 1, !tbaa !119
  %i.m = load i64, ptr %i.b, align 8, !tbaa !250  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !251
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !252
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n), !inline_history !10
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !250 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit7:         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.s = phi i64 [ %i.m, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !253
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !250
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.u, align 1, !tbaa !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 808464432, ptr %i.a, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7
  %.012.i.i = phi i32 [ %i.ab, %.split.i.i ], [ %2, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aa, %.split.i.i ], [ %i.v, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ]
  %i.w = and i32 %.012.i.i, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.469, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !119
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !119
end_hunk_0
