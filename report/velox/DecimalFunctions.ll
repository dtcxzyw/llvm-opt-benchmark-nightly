Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/DecimalFunctions?download=true
inline.NumInlined: 45067
inline.NumDeleted: 11733
loop-unroll.NumCompletelyUnrolled: 676
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 692
begin_hunk_0_@_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
  %i.as = phi i64 [ %i.al, %bb.h ], [ %.pre.i.i38, %bb.i ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !472
  store i64 %.pre-phi.i.i37, ptr %i.ak, align 8, !tbaa !473
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 92, ptr %i.au, align 1, !tbaa !47
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.av = icmp ult i32 %i.b, 256
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v116detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v116detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !486   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !487 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !47
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v116detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !473 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !474
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !475
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk), !inline_history !25
  %.pre.i.i43 = load i64, ptr %i.bi, align 8, !tbaa !473 ; 2 uses
  %.pre2.i.i44 = add i64 %.pre.i.i43, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45

_ZN3fmt3v1114basic_appenderIcEaSEc.exit45:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i42 = phi i64 [ %i.bk, %bb.q ], [ %.pre2.i.i44, %bb.r ]
  %i.bq = phi i64 [ %i.bj, %bb.q ], [ %.pre.i.i43, %bb.r ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !472
  store i64 %.pre-phi.i.i42, ptr %i.bi, align 8, !tbaa !473
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %.0, ptr %i.bs, align 1, !tbaa !47
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45, %bb.o, %bb.m, %bb.k
  %.sroa.022.0 = phi ptr [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit45 ], [ %0, %bb.p ], [ %i.bg, %.lr.ph ]
  ret ptr %.sroa.022.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat {
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

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02455, align 1, !tbaa !47
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.97, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !47
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02455, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !53
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !47    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !47  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !47  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !53
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !53
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
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !53
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bq
  store ptr %.02455, ptr %2, align 8, !tbaa !52
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !52
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !53
  br label %.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !2793

.loopexit:                                        ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 16
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bw, 128
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.bw, 112
  %n.vec = and i64 %i.bw, -128                    ; 5 uses
  %i.ca = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.cb = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 4 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 4 uses
  %i.cc = getelementptr i8, ptr %next.gep108, i64 32
  %i.cd = getelementptr i8, ptr %next.gep108, i64 64
  %i.ce = getelementptr i8, ptr %next.gep108, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep108, align 1, !tbaa !47
  %wide.load109 = load <32 x i8>, ptr %i.cc, align 1, !tbaa !47
  %wide.load110 = load <32 x i8>, ptr %i.cd, align 1, !tbaa !47
  %wide.load111 = load <32 x i8>, ptr %i.ce, align 1, !tbaa !47
  %i.cf = getelementptr i8, ptr %next.gep, i64 32
  %i.cg = getelementptr i8, ptr %next.gep, i64 64
  %i.ch = getelementptr i8, ptr %next.gep, i64 96
  store <32 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !47
  store <32 x i8> %wide.load109, ptr %i.cf, align 1, !tbaa !47
  store <32 x i8> %wide.load110, ptr %i.cg, align 1, !tbaa !47
  store <32 x i8> %wide.load111, ptr %i.ch, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !2794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !479

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec113 = and i64 %i.bw, -16                  ; 4 uses
  %i.cj = getelementptr i8, ptr %i.b, i64 %n.vec113
  %i.ck = getelementptr i8, ptr %.2, i64 %n.vec113
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index114 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 3 uses
  %next.gep115 = getelementptr i8, ptr %i.b, i64 %index114
  %next.gep116 = getelementptr i8, ptr %.2, i64 %index114
  %wide.load117 = load <16 x i8>, ptr %next.gep116, align 1, !tbaa !47
  store <16 x i8> %wide.load117, ptr %next.gep115, align 1, !tbaa !47
  %index.next118 = add nuw i64 %index114, 16      ; 2 uses
  %i.cl = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.cl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2795

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %i.bw, %n.vec113
  br i1 %cmp.n119, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cj, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.ck, %vec.epilog.middle.block ] ; 3 uses
  %i.cm = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph138 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.cn = sub i64 %i.cm, %.057.i.ph138
  %xtraiter = and i64 %i.cn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cq, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.co, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cp = load i8, ptr %.057.i.prol, align 1, !tbaa !47
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cp, ptr %.08.i.prol, align 1, !tbaa !47
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2796

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cq, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.co, %.lr.ph.i.prol ]
  %i.cr = sub i64 %.057.i.ph138, %i.cm
  %i.cs = icmp ugt i64 %i.cr, -8
  br i1 %i.cs, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dq, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.do, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cu = load i8, ptr %.057.i, align 1, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cu, ptr %.08.i, align 1, !tbaa !47
  %i.cw = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !47
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !47
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !47
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !47
  %i.dc = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !47
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !47
  %i.df = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !47
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !47
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dm = load i8, ptr %i.di, align 1, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !47
  %i.do = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dp, ptr %i.dn, align 1, !tbaa !47
  %.not.i33.7 = icmp eq ptr %i.do, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !2797

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.ge, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %i.ds = load i8, ptr %.0, align 1, !tbaa !47
  %i.dt = zext i8 %i.ds to i32                    ; 2 uses
  %i.du = lshr i32 %i.dt, 3                       ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr @.str.97, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !47
  %i.dy = sext i8 %i.dx to i64                    ; 6 uses
  %i.dz = getelementptr inbounds i8, ptr %.0, i64 %i.dy
  %.not.i.i34 = lshr i32 -2130771968, %i.du
  %i.ea = and i32 %.not.i.i34, 1
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb
  %i.ed = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dy
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !53
  %i.ef = and i32 %i.ee, %i.dt
  %i.eg = shl nuw nsw i32 %i.ef, 18
  %i.eh = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !47  ; 2 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 12
  %i.em = or disjoint i32 %i.el, %i.eg
  %i.en = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !47  ; 2 uses
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = shl nuw nsw i32 %i.eq, 6
  %i.es = or disjoint i32 %i.er, %i.em
  %i.et = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !47  ; 2 uses
  %i.ev = and i8 %i.eu, 63
  %i.ew = zext nneg i8 %i.ev to i32
  %i.ex = or disjoint i32 %i.es, %i.ew
  %i.ey = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dy
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !53
  %i.fa = lshr i32 %i.ex, %i.ez                   ; 4 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dy
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !53
  %i.fd = icmp ult i32 %i.fa, %i.fc
  %i.fe = select i1 %i.fd, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.fa, 2147481600
  %i.ff = icmp eq i32 %.mask.i.i35, 55296
  %i.fg = select i1 %i.ff, i32 128, i32 0
  %i.fh = icmp samesign ugt i32 %i.fa, 1114111
  %i.fi = select i1 %i.fh, i32 256, i32 0
  %i.fj = lshr i8 %i.ei, 2
  %i.fk = and i8 %i.fj, 48
  %i.fl = lshr i8 %i.eo, 4
  %i.fm = and i8 %i.fl, 12
  %i.fn = lshr i8 %i.eu, 6
  %i.fo = or disjoint i8 %i.fm, %i.fk
  %i.fp = or disjoint i8 %i.fo, %i.fn
  %i.fq = zext nneg i8 %i.fp to i32
  %i.fr = or disjoint i32 %i.fe, %i.fq
  %i.fs = or disjoint i32 %i.fr, %i.fi
  %i.ft = or disjoint i32 %i.fs, %i.fg
end_hunk_0
