Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfileInference?download=true
inline.NumInlined: 1802
inline.NumDeleted: 887
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_112FlowAdjuster13findReachableEmRN4llvm9BitVectorE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 8, ptr %i.j, align 8, !tbaa !80
  %i.k = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18 ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.m = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18 ; 8 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  store ptr %i.l, ptr %i.o, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.m, ptr %i.p, align 8, !tbaa !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 512 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.l, ptr %i.t, align 8, !tbaa !82
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.m, ptr %i.u, align 8, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store ptr %i.q, ptr %i.v, align 8, !tbaa !84
  store ptr %i.m, ptr %i.n, align 8, !tbaa !85
  store i64 %1, ptr %i.m, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.w, ptr %i.s, align 8, !tbaa !86
  %i.x = load ptr, ptr %2, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.c ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35
  %i.aa = or i64 %i.z, %i.h
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

.loopexit.loopexit:                               ; preds = %.critedge
  %.pre49 = load ptr, ptr %i.n, align 8, !tbaa !87
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit
  %i.ac = phi ptr [ %.pre49, %.loopexit.loopexit ], [ %storemerge.i.i, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ] ; 2 uses
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !87
  %i.ae = icmp eq ptr %i.ad, %i.ac
  br i1 %i.ae, label %._crit_edge, label %bb.b, !llvm.loop !234

bb.b:                                             ; preds = %.lr.ph46, %.loopexit
  %i.af = phi ptr [ %i.m, %.lr.ph46 ], [ %i.ac, %.loopexit ] ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !35
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !88
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %.not.i.i23 = icmp eq ptr %i.af, %i.ai
  br i1 %.not.i.i23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !89
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef 512) #19
  %i.al = load ptr, ptr %i.o, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.o, align 8, !tbaa !82
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 3 uses
  store ptr %i.an, ptr %i.p, align 8, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  store ptr %i.ao, ptr %i.r, align 8, !tbaa !84
  br label %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit

_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit:        ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi ptr [ %i.aj, %bb.c ], [ %i.an, %bb.d ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.n, align 8, !tbaa !85
  %i.ap = load ptr, ptr %i.ab, align 8, !tbaa !107, !nonnull !20, !align !108
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.aq, i64 %i.ag ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42 ; 2 uses
  %.not4244 = icmp eq ptr %i.at, %i.av
  br i1 %.not4244, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit, %.critedge
  %.sroa.032.045 = phi ptr [ %i.bw, %.critedge ], [ %i.at, %_ZNSt5queueImSt5dequeImSaImEEE3popEv.exit ] ; 2 uses
  %i.aw = load ptr, ptr %.sroa.032.045, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !50 ; 4 uses
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !31
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bb = lshr i64 %i.ay, 6
  %i.bc = and i64 %i.bb, 67108863
  %i.bd = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = and i64 %i.ay, 63
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !35
  %i.bh = shl nuw i64 1, %i.bf
  %i.bi = and i64 %i.bg, %i.bh
  %.not43 = icmp eq i64 %i.bi, 0
  br i1 %.not43, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !86  ; 3 uses
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.not.i.i26 = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i.i26, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.ay, ptr %i.bj, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.s, align 8, !tbaa !86
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit27

bb.h:                                             ; preds = %bb.f
  call void @_ZNSt5dequeImSaImEE16_M_push_back_auxIJRKmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %2, align 8, !tbaa !23
  br label %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit27

_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit27:   ; preds = %bb.g, %bb.h
  %i.bn = phi ptr [ %i.bd, %bb.g ], [ %.pre, %bb.h ]
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.bp = lshr i64 %i.bo, 6
  %i.bq = and i64 %i.bp, 67108863
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bq ; 2 uses
  %i.bs = and i64 %i.bo, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !35
  %i.bv = or i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.br, align 8, !tbaa !35
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt5queueImSt5dequeImSaImEEE4pushERKm.exit27, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.045, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.bw, %i.av
  br i1 %.not42, label %.loopexit.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit
  %.pre50 = load ptr, ptr %3, align 8, !tbaa !81  ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre50, null
  br i1 %.not.i.i.i, label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bx = load ptr, ptr %i.o, align 8, !tbaa !90  ; 2 uses
  %i.by = load ptr, ptr %i.t, align 8, !tbaa !92  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = icmp ult ptr %i.bx, %i.bz
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i ], [ %i.bx, %bb.i ] ; 3 uses
  %i.cb = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !53
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef 512) #19
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.cd = icmp ult ptr %.06.i.i.i.i, %i.by
  br i1 %i.cd, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, !llvm.loop !1

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !81
  br label %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i

_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i, %bb.i
  %i.ce = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.loopexit.i.i.i ], [ %.pre50, %bb.i ]
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !80
  %i.cg = shl i64 %i.cf, 3
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cg) #19
  br label %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit

_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit:          ; preds = %._crit_edge, %_ZNSt11_Deque_baseImSaImEE16_M_destroy_nodesEPPmS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %_ZNSt5queueImSt5dequeImSaImEEED2Ev.exit
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112FlowAdjuster16findShortestPathEmm(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.std::set", align 8          ; 13 uses
  %5 = alloca %"struct.std::pair.69", align 8     ; 5 uses
  %6 = alloca %"struct.std::pair.69", align 8     ; 5 uses
  %7 = alloca %"struct.std::pair.69", align 8     ; 5 uses
  %i.a = icmp eq i64 %2, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !107  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = icmp eq i64 %3, -1                       ; 3 uses
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.c, i64 8
  %.val48.val49 = load ptr, ptr %i.l, align 8, !tbaa !63 ; 2 uses
  %i.m = ptrtoint ptr %.val48.val49 to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 80                  ; 3 uses
  %i.q = icmp ugt i64 %i.p, 1152921504606846975
  br i1 %i.q, label %bb.f, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.a

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #17
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.a: ; preds = %bb.e
  %.not.i.i.i.i = icmp ne ptr %.val48.val49, %i.d
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.p, 3                  ; 3 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #18 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  %i.u = add nsw i64 %i.r, -8                     ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.a, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.s, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.a ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.a ]
  store i64 1125899906842624, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !235

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.a
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.s, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.a ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.u, 56
  br i1 %i.y, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 1125899906842624, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1125899906842624, ptr %i.z, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 1125899906842624, ptr %i.aa, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 1125899906842624, ptr %i.ab, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 1125899906842624, ptr %i.ac, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 1125899906842624, ptr %i.ad, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 1125899906842624, ptr %i.ae, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 1125899906842624, ptr %i.af, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.ag, %i.t
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !236

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %.val47.pre = load ptr, ptr %i.b, align 8, !tbaa !107 ; 2 uses
  %.val47.val.pre = load ptr, ptr %.val47.pre, align 8, !tbaa !41 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.val47.pre, i64 8
  %.val47.val50.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !63 ; 2 uses
  %.pre124 = ptrtoint ptr %.val47.val50.pre to i64
  %.pre125 = ptrtoint ptr %.val47.val.pre to i64
  %i.ah = sub i64 %.pre124, %.pre125
  %i.ai = sdiv exact i64 %i.ah, 80                ; 3 uses
  %i.aj = icmp ugt i64 %i.ai, 1152921504606846975
  br i1 %i.aj, label %bb.g, label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #17
  unreachable

_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.ak = icmp eq ptr %.val47.val50.pre, %.val47.val.pre
  br i1 %i.ak, label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit, label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit.loopexit

_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit.loopexit: ; preds = %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.al = shl nuw nsw i64 %i.ai, 3                ; 2 uses
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #18 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.am, i8 0, i64 %i.al, i1 false), !tbaa !26
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ai
  %i.ao = ptrtoint ptr %i.an to i64
  br label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit

_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit: ; preds = %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit.loopexit, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.11.0 = phi i64 [ 0, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.ao, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit.loopexit ]
  %.sroa.081.0 = phi ptr [ null, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.am, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %2
  store i64 0, ptr %i.ap, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !241
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !113
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !114
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !115
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  store i64 0, ptr %i.au, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store i64 0, ptr %5, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.av, align 8, !tbaa !62
  %i.aw = call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ax = load i64, ptr %i.au, align 8, !tbaa !116
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.thread, label %.lr.ph107

.lr.ph107:                                        ; preds = %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.h

.loopexit104.loopexit:                            ; preds = %bb.q
  %.pre = load i64, ptr %i.au, align 8, !tbaa !116
  br label %.loopexit104

.loopexit104:                                     ; preds = %.loopexit104.loopexit, %bb.j
  %i.bb = phi i64 [ %.pre, %.loopexit104.loopexit ], [ %i.bi, %bb.j ]
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph107, %.loopexit104
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !114 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !62 ; 3 uses
  %i.bg = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.aq) #16
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 48) #19
  %i.bh = load i64, ptr %i.au, align 8, !tbaa !116
  %i.bi = add i64 %i.bh, -1                       ; 2 uses
  store i64 %i.bi, ptr %i.au, align 8, !tbaa !116
  %i.bj = icmp eq i64 %i.bf, %3
  br i1 %i.bj, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !107, !nonnull !20, !align !108
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %i.bl, i64 %i.bf ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !42 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !42 ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bq                ; 2 uses
  %or.cond3 = and i1 %i.k, %i.br
  br i1 %or.cond3, label %.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.br, label %.loopexit104, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bf ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.074.0106 = phi ptr [ %i.bo, %.lr.ph ], [ %i.dk, %bb.q ] ; 2 uses
  %i.bt = load ptr, ptr %.sroa.074.0106, align 8, !tbaa !26 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !50 ; 4 uses
  %.val52 = load ptr, ptr %1, align 8             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 25
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !51, !range !19, !noundef !20
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.val52, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !94
  br label %_ZNK12_GLOBAL__N_112FlowAdjuster12jumpDistanceEPN4llvm8FlowJumpE.exit

bb.m:                                             ; preds = %bb.k
  %.val53 = load ptr, ptr %i.b, align 8           ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val53, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !73
  %i.cd = load ptr, ptr %.val53, align 8, !tbaa !41 ; 2 uses
  %i.ce = getelementptr inbounds nuw [80 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %.val52, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !94
  %i.ci = getelementptr i8, ptr %.val53, i64 8
  %.val8.val9.i = load ptr, ptr %i.ci, align 8, !tbaa !63
  %i.cj = ptrtoint ptr %.val8.val9.i to i64
  %i.ck = ptrtoint ptr %i.cd to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 80                ; 2 uses
  %i.cn = shl nsw i64 %i.cm, 1
  %i.co = add nsw i64 %i.cn, 2
  %i.cp = udiv i64 %i.ch, %i.co
  %i.cq = load i64, ptr %i.cf, align 8, !tbaa !35
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.cq)
  %i.cs = call i64 @llvm.umax.i64(i64 %i.cr, i64 10000) ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !31 ; 2 uses
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = udiv i64 %i.cs, %i.cu
  %i.cw = add nuw i64 %i.cv, %i.cs
  br label %_ZNK12_GLOBAL__N_112FlowAdjuster12jumpDistanceEPN4llvm8FlowJumpE.exit

bb.o:                                             ; preds = %bb.m
  %i.cx = shl nuw i64 %i.cs, 1
  %i.cy = add nsw i64 %i.cm, 1
  %i.cz = mul i64 %i.cx, %i.cy
  br label %_ZNK12_GLOBAL__N_112FlowAdjuster12jumpDistanceEPN4llvm8FlowJumpE.exit

_ZNK12_GLOBAL__N_112FlowAdjuster12jumpDistanceEPN4llvm8FlowJumpE.exit: ; preds = %bb.l, %bb.n, %bb.o
  %.1.i = phi i64 [ %i.ca, %bb.l ], [ %i.cw, %bb.n ], [ %i.cz, %bb.o ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.bv ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !35 ; 2 uses
  %i.dc = load i64, ptr %i.bs, align 8, !tbaa !35
  %i.dd = add nsw i64 %i.dc, %.1.i
  %i.de = icmp sgt i64 %i.db, %i.dd
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK12_GLOBAL__N_112FlowAdjuster12jumpDistanceEPN4llvm8FlowJumpE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i64 %i.db, ptr %6, align 8, !tbaa !61
  store i64 %i.bv, ptr %i.az, align 8, !tbaa !62
  %i.df = call noundef i64 @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.dg = load i64, ptr %i.bs, align 8, !tbaa !35
  %i.dh = add nsw i64 %i.dg, %.1.i                ; 2 uses
  store i64 %i.dh, ptr %i.da, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.sroa.081.0, i64 %i.bv
  store ptr %i.bt, ptr %i.di, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i64 %i.dh, ptr %7, align 8, !tbaa !61
  store i64 %i.bv, ptr %i.ba, align 8, !tbaa !62
  %i.dj = call { ptr, i8 } @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK12_GLOBAL__N_112FlowAdjuster12jumpDistanceEPN4llvm8FlowJumpE.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.074.0106, i64 8 ; 2 uses
  %.not103 = icmp eq ptr %i.dk, %i.bq
  br i1 %.not103, label %.loopexit104.loopexit, label %bb.k

.thread:                                          ; preds = %.loopexit104, %bb.h, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EEC2EmRKS2_RKS3_.exit
  br i1 %i.k, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.i, %.thread
  %.val = load ptr, ptr %i.b, align 8, !tbaa !107 ; 2 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !41 ; 3 uses
  %i.dl = getelementptr i8, ptr %.val, i64 8
  %.val.val51 = load ptr, ptr %i.dl, align 8, !tbaa !63 ; 2 uses
  %.not117 = icmp eq ptr %.val.val51, %.val.val
  br i1 %.not117, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %.preheader
  %i.dm = ptrtoint ptr %.val.val51 to i64
  %i.dn = ptrtoint ptr %.val.val to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = sdiv exact i64 %i.do, 80
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %bb.v
  %.0111 = phi i64 [ %.1, %bb.v ], [ -1, %.lr.ph112.preheader ] ; 5 uses
  %.041110 = phi i64 [ %i.ee, %bb.v ], [ 0, %.lr.ph112.preheader ] ; 5 uses
  %i.dq = getelementptr inbounds nuw [80 x i8], ptr %.val.val, i64 %.041110 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !42
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.r, label %bb.v

bb.r:                                             ; preds = %.lr.ph112
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.081.0, i64 %.041110
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !26
  %.not46 = icmp eq ptr %i.dx, null
  br i1 %.not46, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = icmp eq i64 %.0111, -1
  br i1 %i.dy, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0111
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !35
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.041110
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !35
  %i.ed = icmp sgt i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph112, %bb.r, %bb.u, %bb.t
  %.1 = phi i64 [ %.041110, %bb.u ], [ %.0111, %bb.t ], [ %.0111, %bb.r ], [ %.0111, %.lr.ph112 ] ; 2 uses
  %i.ee = add nuw i64 %.041110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ee, %i.dp
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph112, !llvm.loop !237

.loopexit:                                        ; preds = %bb.v, %.preheader, %.thread
  %.2 = phi i64 [ %3, %.thread ], [ -1, %.preheader ], [ %.1, %bb.v ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not113 = icmp eq i64 %.2, %2
  br i1 %.not113, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FlowJumpESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph115

.lr.ph115:                                        ; preds = %.loopexit
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph115, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit
  %i.eh = phi ptr [ null, %.lr.ph115 ], [ %.pre122, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.ei = phi ptr [ null, %.lr.ph115 ], [ %i.fe, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %i.ej = phi ptr [ null, %.lr.ph115 ], [ %i.ff, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit ] ; 3 uses
  %.040114 = phi i64 [ %.2, %.lr.ph115 ], [ %i.fg, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.081.0, i64 %.040114 ; 3 uses
  %.not.i62 = icmp eq ptr %i.ej, %i.ei
  br i1 %.not.i62, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !26 ; 2 uses
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !26
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  store ptr %i.em, ptr %i.ef, align 8, !tbaa !117
  br label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit

bb.y:                                             ; preds = %bb.w
  %i.en = ptrtoint ptr %i.ei to i64
  %i.eo = ptrtoint ptr %i.eh to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 6 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775800
  br i1 %i.eq, label %bb.z, label %_ZNKSt6vectorIPN4llvm8FlowJumpESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #17
  unreachable

_ZNKSt6vectorIPN4llvm8FlowJumpESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.y
  %i.er = ashr exact i64 %i.ep, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i, %i.er ; 2 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = call i64 @llvm.umin.i64(i64 %i.es, i64 1152921504606846975)
  %i.ev = select i1 %i.et, i64 1152921504606846975, i64 %i.eu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ev, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #18 ; 5 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %i.ep ; 2 uses
  %i.ez = load ptr, ptr %i.ek, align 8, !tbaa !26 ; 2 uses
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !26
  %i.fa = icmp sgt i64 %i.ep, 0
  br i1 %i.fa, label %bb.aa, label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.aa:                                            ; preds = %_ZNKSt6vectorIPN4llvm8FlowJumpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ex, ptr align 8 %i.eh, i64 %i.ep, i1 false)
  br label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.aa, %_ZNKSt6vectorIPN4llvm8FlowJumpESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eh, i64 noundef %i.ep) #19
  %.pre121.pre = load ptr, ptr %i.ek, align 8, !tbaa !26
  br label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %.pre121 = phi ptr [ %.pre121.pre, %bb.ab ], [ %i.ez, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i ]
  store ptr %i.ex, ptr %0, align 8, !tbaa !75
  store ptr %i.fb, ptr %i.ef, align 8, !tbaa !117
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ev ; 2 uses
  store ptr %i.fc, ptr %i.eg, align 8, !tbaa !74
  br label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.x, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.fd = phi ptr [ %i.el, %bb.x ], [ %.pre121, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %.pre122 = phi ptr [ %i.eh, %bb.x ], [ %i.ex, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.fe = phi ptr [ %i.ei, %bb.x ], [ %i.fc, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ]
  %i.ff = phi ptr [ %i.em, %bb.x ], [ %i.fb, %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 3 uses
  %i.fg = load i64, ptr %i.fd, align 8, !tbaa !49 ; 2 uses
  %.not = icmp eq i64 %i.fg, %2
  br i1 %.not, label %._crit_edge, label %bb.w, !llvm.loop !238

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EE9push_backERKS2_.exit
  %i.fh = icmp ne ptr %.pre122, %i.ff
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.ff, i64 -8 ; 2 uses
  %i.fi = icmp ult ptr %.pre122, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FlowJumpESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %._crit_edge ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.fl, %.lr.ph.i.i ], [ %.pre122, %._crit_edge ] ; 3 uses
  %i.fj = load ptr, ptr %.sroa.05.09.i.i, align 8, !tbaa !26
  %i.fk = load ptr, ptr %.sroa.0.010.i.i, align 8, !tbaa !26
  store ptr %i.fk, ptr %.sroa.05.09.i.i, align 8, !tbaa !26
  store ptr %i.fj, ptr %.sroa.0.010.i.i, align 8, !tbaa !26
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 8 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.fm = icmp ult ptr %i.fl, %.sroa.0.0.i.i
  br i1 %i.fm, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FlowJumpESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread, !llvm.loop !239

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FlowJumpESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread: ; preds = %.lr.ph.i.i, %._crit_edge
  %i.fn = load ptr, ptr %i.ar, align 8, !tbaa !113
  call void @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.ac

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FlowJumpESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.loopexit
  %i.fo = load ptr, ptr %i.ar, align 8, !tbaa !113
  call void @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %.not.i.i.i63 = icmp eq ptr %.sroa.081.0, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EED2Ev.exit.a, label %bb.ac

bb.ac:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FlowJumpESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit.thread, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FlowJumpESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.fp = ptrtoint ptr %.sroa.081.0 to i64
  %i.fq = sub i64 %.sroa.11.0, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.081.0, i64 noundef %i.fq) #19
  br label %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EED2Ev.exit.a

_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EED2Ev.exit.a: ; preds = %bb.ac, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPPN4llvm8FlowJumpESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %.idx = shl nuw nsw i64 %i.p, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %.idx) #19
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPN4llvm8FlowJumpESaIS2_EED2Ev.exit.a, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIS1_EES0_ISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02124.i = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %.not25.i = icmp eq ptr %.02124.i, null
  br i1 %.not25.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !61     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02126.i = phi ptr [ %.02124.i, %.lr.ph.i ], [ %.02126.i.be, %.backedge.backedge ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02126.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61   ; 3 uses
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.i = icmp ult i64 %i.g, %i.c
  br i1 %i.i, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i

_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i:       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.02126.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62
  %i.l = icmp ult i64 %i.e, %i.k
  br i1 %i.l, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread

_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i: ; preds = %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i, %.backedge
  %i.m = getelementptr inbounds nuw i8, ptr %.02126.i, i64 16
  %.021.i = load ptr, ptr %i.m, align 8, !tbaa !118 ; 2 uses
  %.not.i = icmp eq ptr %.021.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread
  %.02126.i.be = phi ptr [ %.021.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i ], [ %.021.i13, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread ]
  br label %.backedge, !llvm.loop !242

_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread: ; preds = %bb.b, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.02126.i, i64 24
  %.021.i13 = load ptr, ptr %i.n, align 8, !tbaa !118 ; 2 uses
  %.not.i14 = icmp eq ptr %.021.i13, null
  br i1 %.not.i14, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, %bb.a
  %.020.lcssa34.i = phi ptr [ %i.b, %bb.a ], [ %.02126.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  %i.q = icmp eq ptr %.020.lcssa34.i, %i.p
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i) #20 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !61
  %.pre24 = load i64, ptr %1, align 8, !tbaa !61
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread, %bb.c
  %i.s = phi i64 [ %.pre24, %bb.c ], [ %i.c, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %i.t = phi i64 [ %.pre, %bb.c ], [ %i.g, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %.020.lcssa33.i = phi ptr [ %.020.lcssa34.i, %bb.c ], [ %.02126.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.r, %bb.c ], [ %.02126.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.thread ] ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.s
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.thread
  %i.v = icmp ult i64 %i.s, %i.t
  br i1 %i.v, label %bb.i, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit5.i

_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit5.i:      ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !62
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %bb.i

bb.e:                                             ; preds = %._crit_edge.thread.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit5.i, %._crit_edge.i.thread
  %.sroa.4.0.i.ph = phi ptr [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %.020.lcssa33.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit5.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ] ; 4 uses
  %i.ab = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.ab, label %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.ad = load i64, ptr %1, align 8, !tbaa !61    ; 2 uses
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp ult i64 %i.ae, %i.ad
  br i1 %i.ag, label %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !62
  %i.al = icmp ult i64 %i.ai, %i.ak
  br label %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit

_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.am = phi i1 [ %i.al, %bb.h ], [ true, %bb.e ], [ true, %bb.f ], [ false, %bb.g ]
  %i.an = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.am, ptr noundef nonnull %i.an, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !116
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit5.i, %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit
  %.sroa.011.0 = phi ptr [ %i.an, %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit ], [ %.sroa.06.0.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit5.i ], [ %.sroa.06.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit ], [ 0, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit5.i ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.011.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE5eraseERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.045.i = load ptr, ptr %i.a, align 8, !tbaa !118 ; 3 uses
  %.not46.i = icmp eq ptr %.045.i, null
  br i1 %.not46.i, label %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE11equal_rangeERKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !61     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, %.lr.ph.i
  %.048.i = phi ptr [ %.045.i, %.lr.ph.i ], [ %.0.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i ] ; 9 uses
  %.02247.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.123.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.048.i, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.c
  br i1 %i.h, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.c, %i.g
  br i1 %i.i, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i

_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i:       ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.048.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.e
  br i1 %i.l, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit24.i

_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit24.i:     ; preds = %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i
  %i.m = icmp ult i64 %i.e, %i.k
  br i1 %i.m, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit24.i
  %i.n = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.048.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !120  ; 2 uses
  %.not11.i.i = icmp eq ptr %i.o, null
  br i1 %.not11.i.i, label %_ZNSt8_Rb_treeISt4pairImmES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread10.i.i
  %.013.i.i = phi ptr [ %.1.i.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread10.i.i ], [ %i.o, %bb.d ] ; 5 uses
  %.0812.i.i = phi ptr [ %.19.i.i, %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread10.i.i ], [ %.048.i, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 32
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61   ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.c
  br i1 %i.t, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp ult i64 %i.c, %i.s
  br i1 %i.u, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.thread10.i.i, label %_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i.i

_ZNKSt4lessISt4pairImmEEclERKS1_S4_.exit.i.i:     ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 40
end_hunk_0
