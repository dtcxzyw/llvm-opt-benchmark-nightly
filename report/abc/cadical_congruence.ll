Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_congruence?download=true
inline.NumInlined: 6068
inline.NumDeleted: 1716
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN7CaDiCaL7Closure24init_xor_gate_extractionERSt6vectorIPNS_6ClauseESaIS3_EE:bb.a
bb.ao:                                            ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i131
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ii, ptr align 8 %i.hx, i64 %i.ia, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i134

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i134: ; preds = %bb.ao, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i131
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.not.i17.i.i135 = icmp eq ptr %i.hx, null
  br i1 %.not.i17.i.i135, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i134
  %i.im = load ptr, ptr %i.hu, align 8, !tbaa !316
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = sub i64 %i.in, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.io) #24
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136: ; preds = %bb.ap, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i134
  store ptr %i.ii, ptr %i.hr, align 8, !tbaa !309
  store ptr %i.il, ptr %i.hs, align 8, !tbaa !308
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ig
  store ptr %i.ip, ptr %i.hu, align 8, !tbaa !316
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit137

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit137: ; preds = %bb.al, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i136
  %i.iq = getelementptr inbounds nuw i8, ptr %.0207, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.iq, %i.hi
  br i1 %.not, label %._crit_edge210, label %.lr.ph209
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN7CaDiCaL7Closure26find_large_xor_side_clauseERSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1040) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !312  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !152    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 2 uses
  %.not8791 = icmp eq ptr %i.c, %i.b
  br i1 %.not8791, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %..0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 832
  %i.m = tail call noundef i32 @llvm.abs.i32(i32 %.0.lcssa, i1 true)
  %i.n = tail call noundef i32 @llvm.fshl.i32(i32 %i.m, i32 %.0.lcssa, i32 1)
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !398
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !298  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !298  ; 2 uses
  %.not88103 = icmp eq ptr %i.r, %i.t
  br i1 %.not88103, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.094 = phi i32 [ 0, %.lr.ph ], [ %..0, %bb.b ]
  %.05893 = phi i32 [ -1, %.lr.ph ], [ %..058, %bb.b ] ; 2 uses
  %.sroa.077.092 = phi ptr [ %i.c, %.lr.ph ], [ %i.af, %bb.b ] ; 2 uses
  %i.v = load i32, ptr %.sroa.077.092, align 4, !tbaa !153 ; 3 uses
  %i.w = tail call noundef i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.x = tail call noundef i32 @llvm.fshl.i32(i32 %i.w, i32 %i.v, i32 1)
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !318
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 1, ptr %i.aa, align 1, !tbaa !143
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !363
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !144
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %.not67 = icmp ugt i32 %.05893, %i.ae
  %..058 = tail call i32 @llvm.umin.i32(i32 %.05893, i32 %i.ae)
  %..0 = select i1 %.not67, i32 %i.v, i32 %.094   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.077.092, i64 4 ; 2 uses
  %.not87 = icmp eq ptr %i.af, %i.b
  br i1 %.not87, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %.lr.ph106, %bb.l
  %.sroa.073.0104 = phi ptr [ %i.r, %.lr.ph106 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.073.0104, align 8, !tbaa !300 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = and i32 %i.ai, 512
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !153 ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %i.g, %i.am
  br i1 %i.an, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %.idx = shl nsw i64 %i.am, 2
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx
  %.not6395 = icmp eq i32 %i.al, 0
  br i1 %.not6395, label %.thread, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.e
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !123 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 472
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !310
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph99, %bb.j
  %.04897 = phi ptr [ %i.ao, %.lr.ph99 ], [ %i.bf, %bb.j ] ; 2 uses
  %.04996 = phi i64 [ 0, %.lr.ph99 ], [ %.150, %bb.j ] ; 3 uses
  %i.at = load i32, ptr %.04897, align 4, !tbaa !153 ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !143 ; 2 uses
  %i.ax = icmp slt i8 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not64 = icmp eq i8 %i.aw, 0
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7296) %i.aq, ptr noundef nonnull %i.ag) #21
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.ay = tail call noundef i32 @llvm.abs.i32(i32 %i.at, i1 true)
  %i.az = tail call noundef i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.at, i32 1)
  %i.ba = zext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !318
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !143
  %.not65 = icmp eq i8 %i.bd, 0
  %i.be = add i64 %.04996, 1
  br i1 %.not65, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.150 = phi i64 [ %.04996, %bb.f ], [ %i.be, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04897, i64 4 ; 2 uses
  %.not63 = icmp eq ptr %i.bf, %i.ap
  br i1 %.not63, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.j, %bb.i, %bb.e, %bb.h
  %.2 = phi i64 [ %.04996, %bb.h ], [ 0, %bb.e ], [ %.150, %bb.j ], [ 0, %bb.i ]
  %i.bg = icmp eq i64 %.2, %i.g
  br i1 %i.bg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.bh = load i32, ptr %i.ah, align 8
  %i.bi = and i32 %i.bh, 512
  %.not66 = icmp eq i32 %i.bi, 0
  br i1 %.not66, label %._crit_edge107, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.d, %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.073.0104, i64 8 ; 2 uses
  %.not88 = icmp eq ptr %i.bj, %i.t
  br i1 %.not88, label %._crit_edge107, label %bb.c

._crit_edge107:                                   ; preds = %bb.l, %bb.k, %._crit_edge
  %.3 = phi ptr [ null, %._crit_edge ], [ %i.ag, %bb.k ], [ null, %bb.l ]
  %i.bk = load ptr, ptr %1, align 8, !tbaa !132   ; 2 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !132 ; 2 uses
  %.not89111 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not89111, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge107
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.m

._crit_edge115:                                   ; preds = %bb.m, %._crit_edge107
  ret ptr %.3

bb.m:                                             ; preds = %.lr.ph114, %bb.m
  %.sroa.069.0112 = phi ptr [ %i.bk, %.lr.ph114 ], [ %i.bt, %bb.m ] ; 2 uses
  %i.bn = load i32, ptr %.sroa.069.0112, align 4, !tbaa !153 ; 2 uses
  %i.bo = tail call noundef i32 @llvm.abs.i32(i32 %i.bn, i1 true)
  %i.bp = tail call noundef i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bn, i32 1)
  %i.bq = zext i32 %i.bp to i64
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !318
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 0, ptr %i.bs, align 1, !tbaa !143
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.069.0112, i64 4 ; 2 uses
  %.not89 = icmp eq ptr %i.bt, %i.bl
  br i1 %.not89, label %._crit_edge115, label %bb.m
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure34extract_xor_gates_with_base_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.19", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.a ], [ %i.b, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3764
  %i.i = load i32, ptr %i.h, align 4, !tbaa !394
  %i.j = add i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !153  ; 2 uses
  %i.n = sext i32 %i.m to i64
  %.idx = shl nsw i64 %i.n, 2
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %.not225 = icmp eq i32 %i.m, 0
  br i1 %.not225, label %.thread202, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.r
  %i.q = phi ptr [ %i.b, %.lr.ph ], [ %i.bk, %bb.r ] ; 6 uses
  %i.r = phi ptr [ %i.e, %.lr.ph ], [ %i.bl, %bb.r ] ; 5 uses
  %.088230 = phi ptr [ %i.k, %.lr.ph ], [ %i.bm, %bb.r ] ; 2 uses
  %.089229 = phi i1 [ true, %.lr.ph ], [ %.291, %bb.r ] ; 2 uses
  %.092228 = phi i32 [ 0, %.lr.ph ], [ %.193, %bb.r ] ; 3 uses
  %.095227 = phi i32 [ 0, %.lr.ph ], [ %.297, %bb.r ] ; 3 uses
  %.099226 = phi i32 [ 0, %.lr.ph ], [ %.2101, %bb.r ] ; 5 uses
  %i.s = load i32, ptr %.088230, align 4, !tbaa !153 ; 9 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !123  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 472
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !310
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !143   ; 2 uses
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not106 = icmp eq i8 %i.y, 0
  br i1 %.not106, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7296) %i.t, ptr noundef nonnull %1) #21
  br label %.thread202

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq i32 %.092228, %i.j
  br i1 %i.aa, label %.thread202, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.089229, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noundef i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.ac = tail call noundef i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.s, i32 1)
  %i.ad = tail call noundef i32 @llvm.abs.i32(i32 %.099226, i1 true)
  %i.ae = tail call noundef i32 @llvm.fshl.i32(i32 %i.ad, i32 %.099226, i32 1)
  %i.af = icmp ugt i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp slt i32 %.099226, 0
  br i1 %i.ag, label %.thread202, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.h
  %.1100 = phi i32 [ %.099226, %bb.h ], [ %i.s, %bb.g ], [ %i.s, %bb.i ] ; 3 uses
  %i.ah = icmp slt i32 %i.s, 0
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = sub nsw i32 0, %i.s
  %i.aj = tail call noundef i32 @llvm.fshl.i32(i32 %i.ai, i32 -2147483648, i32 1)
  %i.ak = tail call noundef i32 @llvm.abs.i32(i32 %.1100, i1 true)
  %i.al = tail call noundef i32 @llvm.fshl.i32(i32 %i.ak, i32 %.1100, i32 1)
  %i.am = icmp uge i32 %i.aj, %i.al
  %.not107 = icmp eq i32 %.095227, 0
  %or.cond = select i1 %i.am, i1 %.not107, i1 false
  br i1 %or.cond, label %bb.l, label %.thread202

bb.l:                                             ; preds = %bb.k, %bb.j
  %.196 = phi i32 [ 1, %bb.k ], [ %.095227, %bb.j ]
  %i.an = load ptr, ptr %i.p, align 8, !tbaa !313
  %.not.i = icmp eq ptr %i.r, %i.an
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.s, ptr %i.r, align 4, !tbaa !153
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = ptrtoint ptr %i.r to i64
  %i.aq = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775804
  br i1 %i.as, label %bb.o, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.at = ashr exact i64 %i.ar, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 2305843009213693951)
  %i.ax = select i1 %i.av, i64 2305843009213693951, i64 %i.aw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #23 ; 5 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store i32 %i.s, ptr %i.ba, align 4, !tbaa !153
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.p, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.az, ptr align 4 %i.q, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !313
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.bf) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.az, ptr %i.a, align 8, !tbaa !152
  store ptr %i.bc, ptr %i.c, align 8, !tbaa !312
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bg, ptr %i.p, align 8, !tbaa !313
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bh = phi ptr [ %i.q, %bb.m ], [ %i.az, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bi = phi ptr [ %i.ao, %bb.m ], [ %i.bc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bj = add i32 %.092228, 1
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.c
  %i.bk = phi ptr [ %i.q, %bb.c ], [ %i.bh, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.bl = phi ptr [ %i.r, %bb.c ], [ %i.bi, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.2101 = phi i32 [ %.099226, %bb.c ], [ %.1100, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.297 = phi i32 [ %.095227, %bb.c ], [ %.196, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.193 = phi i32 [ %.092228, %bb.c ], [ %i.bj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 4 uses
  %.291 = phi i1 [ %.089229, %bb.c ], [ false, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.088230, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bm, %i.o
  br i1 %.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.r
  %i.bn = icmp ult i32 %.193, 3
  br i1 %i.bn, label %.thread202, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bo = add i32 %.193, -1
  %i.bp = add i32 %.193, -2                       ; 2 uses
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !132 ; 2 uses
  %.not208235 = icmp eq ptr %i.bq, %i.bl
  br i1 %.not208235, label %.critedge120, label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !363 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph238, %.critedge118
  %.sroa.0184.0236 = phi ptr [ %i.bq, %.lr.ph238 ], [ %i.ch, %.critedge118 ] ; 2 uses
  %i.bt = load i32, ptr %.sroa.0184.0236, align 4, !tbaa !153 ; 4 uses
  %i.bu = tail call noundef i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.bv = tail call noundef i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bt, i32 1)
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !144
  %i.bz = trunc i64 %i.by to i32
  %.highbits = lshr i32 %i.bz, %i.bp
  %.not109.not = icmp eq i32 %.highbits, 0
  br i1 %.not109.not, label %.thread202, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = sub nsw i32 0, %i.bt
  %i.cb = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 true)
  %i.cc = tail call noundef i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.ca, i32 1)
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !144
  %i.cg = trunc i64 %i.cf to i32
  %.highbits.1 = lshr i32 %i.cg, %i.bp
  %.not109.not.1 = icmp eq i32 %.highbits.1, 0
  br i1 %.not109.not.1, label %.thread202, label %.critedge118

.critedge118:                                     ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0184.0236, i64 4 ; 2 uses
  %.not208 = icmp eq ptr %i.ch, %i.bl
  br i1 %.not208, label %.critedge120, label %bb.t

.critedge120:                                     ; preds = %.critedge118, %bb.s
  %i.ci = shl nuw i32 1, %i.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cl = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23 ; 5 uses
  store i32 0, ptr %i.cl, align 8, !tbaa !153
  %.sroa.5180.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %1, ptr %.sroa.5180.0..sroa_idx181, align 8, !tbaa !300
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 4 uses
  store ptr %i.cl, ptr %2, align 8, !tbaa !319
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !338
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !375
  %.not112 = icmp eq i32 %.297, 0
  br label %.preheader210

.preheader210:                                    ; preds = %.critedge120, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147
  %.080251 = phi i32 [ 0, %.critedge120 ], [ %i.ew, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147 ] ; 4 uses
  %i.cn = phi ptr [ %i.cl, %.critedge120 ], [ %i.ei, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147 ] ; 7 uses
  %i.co = phi ptr [ %i.cm, %.critedge120 ], [ %i.eh, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147 ] ; 8 uses
  %i.cp = phi ptr [ %i.cm, %.critedge120 ], [ %i.eg, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147 ] ; 4 uses
  %.not111 = icmp eq i32 %.080251, 0
  br i1 %.not111, label %.critedge121, label %.lr.ph239

.lr.ph239:                                        ; preds = %.preheader210
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !132 ; 4 uses
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !132 ; 3 uses
  %.not8.i = icmp eq ptr %i.cq, %i.cr
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2
  br label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit

.critedge124.preheader:                           ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !132 ; 8 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !132 ; 5 uses
  %.not8.i148 = icmp eq ptr %i.cw, %i.cx
  %.not8.i148.fr = freeze i1 %.not8.i148
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  br i1 %.not8.i148.fr, label %.critedge124.preheader.split.us, label %.lr.ph.i149

.critedge124.preheader.split.us:                  ; preds = %.critedge124.preheader
  %.not114.us = icmp eq i32 %.297, 0
  tail call void @llvm.assume(i1 %.not114.us)
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit:     ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit.backedge, %.lr.ph239
  br i1 %.not8.i, label %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit, %.lr.ph.i
  %.010.i = phi i32 [ %i.dd, %.lr.ph.i ], [ 0, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit ] ; 2 uses
  %.sroa.05.09.i = phi ptr [ %i.de, %.lr.ph.i ], [ %i.cq, %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit ] ; 2 uses
  %i.dc = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !153
  %.lobit.i = lshr i32 %i.dc, 31                  ; 2 uses
  %i.dd = xor i32 %.lobit.i, %.010.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 4 ; 2 uses
  %.not.i127 = icmp eq ptr %i.de, %i.cr
  br i1 %.not.i127, label %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread, label %.lr.ph.i

_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit: ; preds = %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit
  br i1 %.not112, label %.critedge, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit.backedge

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit.backedge: ; preds = %.lr.ph.i129, %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit
  br label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit

_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread: ; preds = %.lr.ph.i
  %i.df = icmp ne i32 %.lobit.i, %.010.i
  %i.dg = zext i1 %i.df to i32
  %.not112310 = icmp eq i32 %.297, %i.dg
  br i1 %.not112310, label %.critedge, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread, %.lr.ph.i129
  %.0910.i = phi i64 [ %i.dl, %.lr.ph.i129 ], [ 0, %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.0910.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !153 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  %i.dk = sub nsw i32 0, %i.di
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !153
  %i.dl = add nuw i64 %.0910.i, 1                 ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.cv
  %i.dn = select i1 %i.dm, i1 %i.dj, i1 false
  br i1 %i.dn, label %.lr.ph.i129, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit.backedge, !llvm.loop !10

.critedge:                                        ; preds = %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit.thread, %_ZN7CaDiCaL11parity_litsERKSt6vectorIiSaIiEE.exit
  %i.do = tail call noundef ptr @_ZN7CaDiCaL7Closure26find_large_xor_side_clauseERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 3 uses
  %.not113.not = icmp eq ptr %i.do, null
  br i1 %.not113.not, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.critedge
  %.not.i.i130 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i130, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %.080251, ptr %i.co, align 8, !tbaa !153
  %.sroa.5172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.do, ptr %.sroa.5172.0..sroa_idx, align 8, !tbaa !300
  %i.dp = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  store ptr %i.dp, ptr %i.cj, align 8, !tbaa !338
  br label %.critedge121

bb.x:                                             ; preds = %bb.v
  %i.dq = ptrtoint ptr %i.co to i64
  %i.dr = ptrtoint ptr %i.cn to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 4 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775792
  br i1 %i.dt, label %bb.y, label %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131: ; preds = %bb.x
  %i.du = ashr exact i64 %i.ds, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i132 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i132, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 576460752303423487)
  %i.dy = select i1 %i.dw, i64 576460752303423487, i64 %i.dx ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.dy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.dz = shl nuw nsw i64 %i.dy, 4
  %i.ea = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #23 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ds ; 2 uses
  store i32 %.080251, ptr %i.eb, align 8, !tbaa !153
  %.sroa.5172.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.do, ptr %.sroa.5172.0..sroa_idx173, align 8, !tbaa !300
  %.not10.i.i.i.i.i.i134 = icmp eq ptr %i.cn, %i.co
  br i1 %.not10.i.i.i.i.i.i134, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142, label %.lr.ph.i.i.i.i.i.i135

.lr.ph.i.i.i.i.i.i135:                            ; preds = %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131, %.lr.ph.i.i.i.i.i.i135
  %.012.i.i.i.i.i.i136 = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i135 ], [ %i.ea, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131 ] ; 2 uses
  %.0911.i.i.i.i.i.i137 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i135 ], [ %i.cn, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i136, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i137, i64 16, i1 false), !tbaa.struct !337, !alias.scope !618
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i137, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i136, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i138 = icmp eq ptr %i.ec, %i.co
  br i1 %.not.i.i.i.i.i.i138, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142, label %.lr.ph.i.i.i.i.i.i135, !llvm.loop !8

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142: ; preds = %.lr.ph.i.i.i.i.i.i135, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131
  %.0.lcssa.i.i.i.i.i.i140 = phi ptr [ %i.ea, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i131 ], [ %i.ed, %.lr.ph.i.i.i.i.i.i135 ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i140, i64 16 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.ds) #24
  store ptr %i.ea, ptr %2, align 8, !tbaa !319
  store ptr %i.ee, ptr %i.cj, align 8, !tbaa !338
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dy ; 2 uses
  store ptr %i.ef, ptr %i.ck, align 8, !tbaa !375
  br label %.critedge121

.critedge121:                                     ; preds = %.preheader210, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142, %bb.w
  %i.eg = phi ptr [ %i.ef, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142 ], [ %i.cp, %bb.w ], [ %i.cp, %.preheader210 ] ; 4 uses
  %i.eh = phi ptr [ %i.ee, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142 ], [ %i.dp, %bb.w ], [ %i.co, %.preheader210 ]
  %i.ei = phi ptr [ %i.ea, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i142 ], [ %i.cn, %bb.w ], [ %i.cn, %.preheader210 ] ; 4 uses
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !312 ; 2 uses
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !152 ; 3 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 2
  %.not.i144 = icmp eq ptr %i.ej, %i.ek
  br i1 %.not.i144, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %.critedge121, %.lr.ph.i145
  %.0910.i146 = phi i64 [ %i.et, %.lr.ph.i145 ], [ 0, %.critedge121 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.0910.i146 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !153 ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  %i.es = sub nsw i32 0, %i.eq
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !153
  %i.et = add nuw i64 %.0910.i146, 1              ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.eo
  %i.ev = select i1 %i.eu, i1 %i.er, i1 false
  br i1 %i.ev, label %.lr.ph.i145, label %_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147, !llvm.loop !10

_ZN7CaDiCaL8inc_litsERSt6vectorIiSaIiEE.exit147:  ; preds = %.lr.ph.i145, %.critedge121
  %i.ew = add i32 %.080251, 1                     ; 2 uses
  %.not110 = icmp eq i32 %i.ew, %i.ci
  br i1 %.not110, label %.critedge124.preheader, label %.preheader210, !llvm.loop !615

._crit_edge.loopexit.i154:                        ; preds = %.lr.ph.i149
  %i.ex = icmp ne i32 %.lobit.i152, %.010.i150
  %i.ey = zext i1 %i.ex to i32
  %.not114 = icmp eq i32 %.297, %i.ey
  br i1 %.not114, label %.split.us, label %.lr.ph.i158

.lr.ph.i149:                                      ; preds = %.critedge124.preheader, %.lr.ph.i149.backedge
  %.010.i150 = phi i32 [ %.010.i150.be, %.lr.ph.i149.backedge ], [ 0, %.critedge124.preheader ] ; 2 uses
  %.sroa.05.09.i151 = phi ptr [ %.sroa.05.09.i151.be, %.lr.ph.i149.backedge ], [ %i.cw, %.critedge124.preheader ] ; 2 uses
  %i.ez = load i32, ptr %.sroa.05.09.i151, align 4, !tbaa !153
  %.lobit.i152 = lshr i32 %i.ez, 31               ; 2 uses
  %i.fa = xor i32 %.lobit.i152, %.010.i150
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i151, i64 4 ; 2 uses
  %.not.i153 = icmp eq ptr %i.fb, %i.cx
  br i1 %.not.i153, label %._crit_edge.loopexit.i154, label %.lr.ph.i149.backedge

.lr.ph.i149.backedge:                             ; preds = %.lr.ph.i158, %.lr.ph.i149
  %.010.i150.be = phi i32 [ %i.fa, %.lr.ph.i149 ], [ 0, %.lr.ph.i158 ]
  %.sroa.05.09.i151.be = phi ptr [ %i.fb, %.lr.ph.i149 ], [ %i.cw, %.lr.ph.i158 ]
  br label %.lr.ph.i149, !llvm.loop !616

.lr.ph.i158:                                      ; preds = %._crit_edge.loopexit.i154, %.lr.ph.i158
  %.0910.i159 = phi i64 [ %i.fg, %.lr.ph.i158 ], [ 0, %._crit_edge.loopexit.i154 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %.0910.i159 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !153 ; 2 uses
  %i.fe = icmp slt i32 %i.fd, 0
  %i.ff = sub nsw i32 0, %i.fd
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !153
  %i.fg = add nuw i64 %.0910.i159, 1              ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.db
  %i.fi = select i1 %i.fh, i1 %i.fe, i1 false
  br i1 %i.fi, label %.lr.ph.i158, label %.lr.ph.i149.backedge, !llvm.loop !10

.split.us:                                        ; preds = %._crit_edge.loopexit.i154
  %.not115 = icmp eq i32 %.297, 0
  br i1 %.not115, label %.lr.ph257.split.us, label %.preheader

.preheader:                                       ; preds = %.split.us, %.preheader
  %.sroa.0165.0 = phi ptr [ %i.fl, %.preheader ], [ %i.cw, %.split.us ] ; 3 uses
  %i.fj = load i32, ptr %.sroa.0165.0, align 4, !tbaa !153 ; 2 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0165.0, i64 4
  br i1 %i.fk, label %.preheader, label %.lr.ph257, !llvm.loop !617

.lr.ph257:                                        ; preds = %.preheader
  %i.fm = sub nsw i32 0, %i.fj
  store i32 %i.fm, ptr %.sroa.0165.0, align 4, !tbaa !153
  br label %.lr.ph257.split

.lr.ph257.split.us:                               ; preds = %.split.us, %.lr.ph257.split.us
  %.sroa.0162.0255.us = phi ptr [ %i.fu, %.lr.ph257.split.us ], [ %i.cw, %.split.us ] ; 2 uses
  %i.fn = load i32, ptr %.sroa.0162.0255.us, align 4, !tbaa !153
  %i.fo = sub nsw i32 0, %i.fn
  %i.fp = call noundef ptr @_ZN7CaDiCaL7Closure12new_xor_gateERKSt6vectorINS_13LitClausePairESaIS2_EEi(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.fo) ; 0 uses
  %i.fq = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.fs = load i8, ptr %i.fr, align 4, !tbaa !322, !range !290, !noundef !291
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0162.0255.us, i64 4 ; 2 uses
  %.not209.us = icmp eq ptr %i.fu, %i.cx
  %or.cond259 = select i1 %i.ft, i1 true, i1 %.not209.us
  br i1 %or.cond259, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %.lr.ph257.split.us

.lr.ph257.split:                                  ; preds = %.lr.ph257, %.lr.ph257.split
  %.sroa.0162.0255 = phi ptr [ %i.gb, %.lr.ph257.split ], [ %i.cw, %.lr.ph257 ] ; 2 uses
  %i.fv = load i32, ptr %.sroa.0162.0255, align 4, !tbaa !153
  %i.fw = call noundef ptr @_ZN7CaDiCaL7Closure12new_xor_gateERKSt6vectorINS_13LitClausePairESaIS2_EEi(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.fv) ; 0 uses
  %i.fx = load ptr, ptr %i.f, align 8, !tbaa !123
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  %i.fz = load i8, ptr %i.fy, align 4, !tbaa !322, !range !290, !noundef !291
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0162.0255, i64 4 ; 2 uses
  %.not209 = icmp eq ptr %i.gb, %i.cx
  %or.cond260 = select i1 %i.ga, i1 true, i1 %.not209
  br i1 %or.cond260, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %.lr.ph257.split

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit: ; preds = %.critedge, %.lr.ph257.split, %.lr.ph257.split.us, %.critedge124.preheader.split.us
  %i.gc = phi ptr [ %i.eg, %.lr.ph257.split.us ], [ %i.eg, %.critedge124.preheader.split.us ], [ %i.eg, %.lr.ph257.split ], [ %i.cp, %.critedge ]
  %i.gd = phi ptr [ %i.ei, %.lr.ph257.split.us ], [ %i.ei, %.critedge124.preheader.split.us ], [ %i.ei, %.lr.ph257.split ], [ %i.cn, %.critedge ] ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gg) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.thread202

.thread202:                                       ; preds = %bb.f, %bb.i, %bb.k, %bb.t, %bb.u, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.e, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure17extract_xor_gatesEv(ptr noundef nonnull align 8 dereferenceable(1040) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3760
  %i.d = load i32, ptr %i.c, align 8, !tbaa !619
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @_ZN7CaDiCaL7Closure24init_xor_gate_extractionERSt6vectorIPNS_6ClauseESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.e = load ptr, ptr %1, align 8, !tbaa !298    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !298  ; 2 uses
  %.not1011 = icmp eq ptr %i.e, %i.g
  br i1 %.not1011, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.sroa.06.012 = phi ptr [ %i.p, %bb.e ], [ %i.e, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.06.012, align 8, !tbaa !300 ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i8, ptr %i.j, align 4, !tbaa !322, !range !290, !noundef !291
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 512
  %.not5 = icmp eq i32 %i.o, 0
  br i1 %.not5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN7CaDiCaL7Closure34extract_xor_gates_with_base_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %i.h)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 8 ; 2 uses
  %.not10 = icmp eq ptr %i.p, %i.g
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !123
  call void @_ZN7CaDiCaL8Internal10clear_occsEv(ptr noundef nonnull align 8 dereferenceable(7296) %i.q) #21
  %i.r = load ptr, ptr %1, align 8, !tbaa !309    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !316
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #24
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure10find_unitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1040) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !367, !nonnull !291, !align !368
  %i.e = load i32, ptr %i.d, align 4, !tbaa !153  ; 2 uses
  %.not100121 = icmp eq i32 %i.e, 0
  br i1 %.not100121, label %.loopexit103, label %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph

_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 5 uses
  br label %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader

_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader: ; preds = %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph, %.loopexit
  %i.k = phi ptr [ %i.b, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph ], [ %i.hm, %.loopexit ]
  %i.l = phi ptr [ %i.b, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph ], [ %i.hn, %.loopexit ]
  %.sroa.070.0122 = phi i32 [ 1, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader.lr.ph ], [ %i.ho, %.loopexit ] ; 7 uses
  %i.m = tail call noundef i32 @llvm.abs.i32(i32 %.sroa.070.0122, i1 true) ; 2 uses
  %i.n = zext nneg i32 %i.m to i64
  %i.o = sub nsw i32 0, %.sroa.070.0122           ; 2 uses
  %i.p = tail call i32 @llvm.abs.i32(i32 %.sroa.070.0122, i1 true)
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.o, i32 1)
  %i.r = zext i32 %i.q to i64
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %.sroa.070.0122, i32 1)
  %i.t = zext i32 %i.s to i64
  br label %_ZN7CaDiCaL7Closure10unmark_allEv.exit58

_ZN7CaDiCaL7Closure10unmark_allEv.exit58:         ; preds = %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader, %_ZN7CaDiCaL7Closure10unmark_allEv.exit
  %i.u = phi ptr [ %i.dg, %_ZN7CaDiCaL7Closure10unmark_allEv.exit ], [ %i.k, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.dg, %_ZN7CaDiCaL7Closure10unmark_allEv.exit ], [ %i.l, %_ZN7CaDiCaL7Closure10unmark_allEv.exit58.preheader ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 760
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !399
  %i.y = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.aa = load i8, ptr %i.z, align 1
  %.mask.i = and i8 %i.aa, -32
  %i.ab = icmp eq i8 %.mask.i, 32
  br i1 %i.ab, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %_ZN7CaDiCaL7Closure10unmark_allEv.exit58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 952
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !371
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.r ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !384 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !384 ; 2 uses
  %.not101117 = icmp eq ptr %i.af, %i.ah
  br i1 %.not101117, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.066.0118 = phi ptr [ %i.en, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.af, %.preheader.preheader ] ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %.sroa.066.0118, align 8, !tbaa !300 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.066.0118, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !153 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.066.0118, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !153
  %i.ai = icmp eq i32 %.sroa.6.0.copyload, 2
  br i1 %i.ai, label %bb.b, label %.thread.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.aj = sub nsw i32 0, %.sroa.5.0.copyload
  %i.ak = tail call i32 @llvm.abs.i32(i32 %.sroa.5.0.copyload, i1 true) ; 2 uses
  %i.al = tail call noundef i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.aj, i32 1)
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !318 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !143
  %.not = icmp eq i8 %i.ap, 0
  br i1 %.not, label %bb.o, label %.loopexit145

.loopexit145:                                     ; preds = %bb.b, %bb.v
  %.lcssa129 = phi i32 [ %.sroa.070.0122, %bb.v ], [ %i.o, %bb.b ]
  %.sroa.0.0.copyload.lcssa127 = phi ptr [ %.sroa.0.0.copyload.1, %bb.v ], [ %.sroa.0.0.copyload, %bb.b ] ; 2 uses
  %.lcssa = phi i64 [ %i.fo, %bb.v ], [ %i.am, %bb.b ]
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !123
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 344
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !289, !range !290, !noundef !291
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.c, label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit42

bb.c:                                             ; preds = %.loopexit145
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !292 ; 4 uses
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !293 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %i.av
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %.sroa.0.0.copyload.lcssa127, align 8, !tbaa !144
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !144
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.i, align 8, !tbaa !292
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.e:                                             ; preds = %bb.c
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !294 ; 4 uses
  %i.az = ptrtoint ptr %i.au to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 5 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.f, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bh, 0
end_hunk_0
