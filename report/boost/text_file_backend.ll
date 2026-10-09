Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/text_file_backend?download=true
inline.NumInlined: 3516
inline.NumDeleted: 1232
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZSt15__copy_move_ditILb1EcRcPcSt15_Deque_iteratorIcS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_:bb.a
  br i1 %i.cm, label %bb.t, label %bb.u, !prof !124

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.sroa.049.0, ptr align 1 %.013.i22, i64 %.sroa.speculated.i24, i1 false), !noalias !684
  br label %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i25

bb.u:                                             ; preds = %bb.s
  %i.cn = icmp eq i64 %.sroa.speculated.i24, 1
  br i1 %i.cn, label %bb.v, label %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i25

bb.v:                                             ; preds = %bb.u
  %i.co = load i8, ptr %.013.i22, align 1, !tbaa !40, !noalias !684
  store i8 %i.co, ptr %.sroa.049.0, align 1, !tbaa !40, !noalias !684
  br label %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i25

_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i25: ; preds = %bb.v, %bb.u, %bb.t
  %i.cp = ptrtoint ptr %.sroa.450.0 to i64
  %i.cq = sub i64 %i.cj, %i.cp
  %i.cr = add nsw i64 %.sroa.speculated.i24, %i.cq ; 5 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  br i1 %i.cs, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i25
  %i.ct = icmp samesign ult i64 %i.cr, 512
  br i1 %i.ct, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds i8, ptr %.sroa.049.0, i64 %.sroa.speculated.i24
  br label %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i26

bb.y:                                             ; preds = %bb.w
  %i.cv = lshr i64 %i.cr, 9
  br label %bb.aa

bb.z:                                             ; preds = %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i25
  %i.cw = ashr i64 %i.cr, 9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cx = phi i64 [ %i.cv, %bb.y ], [ %i.cw, %bb.z ] ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.sroa.11.0, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42, !noalias !684 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 512
  %i.db = shl nsw i64 %i.cx, 9
  %i.dc = sub nsw i64 %i.cr, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc
  br label %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i26

_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i26:       ; preds = %bb.aa, %bb.x
  %.sroa.11.1 = phi ptr [ %.sroa.11.0, %bb.x ], [ %i.cy, %bb.aa ] ; 4 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.0, %bb.x ], [ %i.da, %bb.aa ] ; 4 uses
  %.sroa.450.1 = phi ptr [ %.sroa.450.0, %bb.x ], [ %i.cz, %bb.aa ] ; 4 uses
  %storemerge.i.i27 = phi ptr [ %i.cu, %bb.x ], [ %i.dd, %bb.aa ] ; 4 uses
  %i.de = sub nsw i64 %storemerge12.i23, %.sroa.speculated.i24 ; 2 uses
  %i.df = icmp sgt i64 %i.de, 0
  br i1 %i.df, label %bb.s, label %_ZSt14__copy_move_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit28, !llvm.loop !674

_ZSt14__copy_move_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit28: ; preds = %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i26
  store ptr %storemerge.i.i27, ptr %3, align 8, !tbaa !42
  store ptr %.sroa.450.1, ptr %i.j, align 8, !tbaa !42
  store ptr %.sroa.7.1, ptr %i.l, align 8, !tbaa !42
  store ptr %.sroa.11.1, ptr %i.n, align 8, !tbaa !248
  %.0 = getelementptr inbounds nuw i8, ptr %.067, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.c, align 8, !tbaa !233
  %.not4 = icmp eq ptr %.0, %i.dg
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !llvm.loop !679

bb.ab:                                            ; preds = %bb.a
  %i.dh = load ptr, ptr %2, align 8, !tbaa !232
  %i.di = load ptr, ptr %3, align 8, !tbaa !232   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !234 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !235 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !233 ; 2 uses
  %i.dp = ptrtoint ptr %i.dh to i64
  %i.dq = sub i64 %i.dp, %i.f                     ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i33, label %_ZSt14__copy_move_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit16

.lr.ph.i33:                                       ; preds = %bb.ab, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.do, %bb.ab ] ; 2 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.dm, %bb.ab ] ; 2 uses
  %.sroa.4.0 = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.dk, %bb.ab ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %storemerge.i.i39, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.di, %bb.ab ] ; 4 uses
  %.013.i34 = phi ptr [ %i.dv, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.e, %bb.ab ] ; 3 uses
  %storemerge12.i35 = phi i64 [ %i.eo, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.dq, %bb.ab ] ; 2 uses
  %i.ds = ptrtoint ptr %.sroa.8.0 to i64
  %i.dt = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt
  %.sroa.speculated.i36 = tail call i64 @llvm.smin.i64(i64 %i.du, i64 %storemerge12.i35) ; 7 uses
  %i.dv = getelementptr inbounds i8, ptr %.013.i34, i64 %.sroa.speculated.i36
  %i.dw = icmp sgt i64 %.sroa.speculated.i36, 1
  br i1 %i.dw, label %bb.ac, label %bb.ad, !prof !124

bb.ac:                                            ; preds = %.lr.ph.i33
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.sroa.0.0, ptr align 1 %.013.i34, i64 %.sroa.speculated.i36, i1 false), !noalias !685
  br label %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i37

bb.ad:                                            ; preds = %.lr.ph.i33
  %i.dx = icmp eq i64 %.sroa.speculated.i36, 1
  br i1 %i.dx, label %bb.ae, label %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i37

bb.ae:                                            ; preds = %bb.ad
  %i.dy = load i8, ptr %.013.i34, align 1, !tbaa !40, !noalias !685
  store i8 %i.dy, ptr %.sroa.0.0, align 1, !tbaa !40, !noalias !685
  br label %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i37

_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i37: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dz = ptrtoint ptr %.sroa.4.0 to i64
  %i.ea = sub i64 %i.dt, %i.dz
  %i.eb = add nsw i64 %.sroa.speculated.i36, %i.ea ; 5 uses
  %i.ec = icmp sgt i64 %i.eb, -1
  br i1 %i.ec, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i37
  %i.ed = icmp samesign ult i64 %i.eb, 512
  br i1 %i.ed, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %.sroa.speculated.i36
  br label %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38

bb.ah:                                            ; preds = %bb.af
  %i.ef = lshr i64 %i.eb, 9
  br label %bb.aj

bb.ai:                                            ; preds = %_ZSt14__copy_move_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i37
  %i.eg = ashr i64 %i.eb, 9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.eh = phi i64 [ %i.ef, %bb.ah ], [ %i.eg, %bb.ai ] ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %.sroa.12.0, i64 %i.eh ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !42, !noalias !685 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 512
  %i.el = shl nsw i64 %i.eh, 9
  %i.em = sub nsw i64 %i.eb, %i.el
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em
  br label %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38

_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38:       ; preds = %bb.aj, %bb.ag
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %bb.ag ], [ %i.ei, %bb.aj ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %bb.ag ], [ %i.ek, %bb.aj ] ; 2 uses
  %.sroa.4.1 = phi ptr [ %.sroa.4.0, %bb.ag ], [ %i.ej, %bb.aj ] ; 2 uses
  %storemerge.i.i39 = phi ptr [ %i.ee, %bb.ag ], [ %i.en, %bb.aj ] ; 2 uses
  %i.eo = sub nsw i64 %storemerge12.i35, %.sroa.speculated.i36 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.i33, label %_ZSt14__copy_move_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit16, !llvm.loop !674

_ZSt14__copy_move_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit16: ; preds = %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i14, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38, %bb.ab, %._crit_edge
  %.sink83 = phi ptr [ %storemerge.i.i39, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.ax, %._crit_edge ], [ %i.di, %bb.ab ], [ %storemerge.i.i15, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i14 ]
  %.sink = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.aw, %._crit_edge ], [ %i.dk, %bb.ab ], [ %.sroa.444.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i14 ]
  %.sroa.8.2.sink = phi ptr [ %.sroa.8.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.av, %._crit_edge ], [ %i.dm, %bb.ab ], [ %.sroa.845.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i14 ]
  %.sroa.12.2.sink = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i38 ], [ %i.au, %._crit_edge ], [ %i.do, %bb.ab ], [ %.sroa.1247.1, %_ZNSt15_Deque_iteratorIcRcPcEpLEl.exit.i14 ]
  store ptr %.sink83, ptr %0, align 8, !tbaa !232
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.eq, align 8, !tbaa !234
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.2.sink, ptr %i.er, align 8, !tbaa !235
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.12.2.sink, ptr %i.es, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt24__copy_move_backward_ditILb1EcRcPcSt15_Deque_iteratorIcS0_S1_EET3_S2_IT0_T1_T2_ES8_S4_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !234
  %i.g = load ptr, ptr %2, align 8, !tbaa !232    ; 2 uses
  %i.h = load ptr, ptr %3, align 8, !tbaa !232    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !234  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !235  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !233  ; 2 uses
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i, label %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i
  %.sroa.1267.0 = phi ptr [ %.sroa.1267.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ], [ %i.n, %bb.b ] ; 3 uses
  %.sroa.966.0 = phi ptr [ %.sroa.966.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ], [ %i.l, %bb.b ]
  %.sroa.064.0 = phi ptr [ %storemerge.i.i.i, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ], [ %i.h, %bb.b ] ; 4 uses
  %i.s = phi ptr [ %.sroa.465.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ], [ %i.j, %bb.b ] ; 3 uses
  %.019.i = phi ptr [ %i.aa, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ], [ %i.g, %bb.b ]
  %.01618.i = phi i64 [ %i.at, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ], [ %i.q, %bb.b ] ; 2 uses
  %i.t = ptrtoint ptr %.sroa.064.0 to i64         ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %.not.i = icmp eq ptr %.sroa.064.0, %i.s
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds i8, ptr %.sroa.1267.0, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42, !noalias !696
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 512
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi i64 [ 512, %bb.c ], [ %i.v, %.lr.ph.i ]
  %.09.i = phi ptr [ %i.y, %bb.c ], [ %.sroa.064.0, %.lr.ph.i ] ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.015.i, i64 %.01618.i) ; 6 uses
  %i.z = sub i64 0, %.sroa.speculated.i           ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.019.i, i64 %i.z ; 3 uses
  %i.ab = icmp sgt i64 %.sroa.speculated.i, 1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !124

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %.09.i, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.aa, i64 %.sroa.speculated.i, i1 false), !noalias !696
  br label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %i.ad, label %bb.g, label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %i.af = load i8, ptr %i.aa, align 1, !tbaa !40, !noalias !696
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !40, !noalias !696
  br label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i

_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %4 = add i64 %.sroa.speculated.i, %i.u
  %i.ag = sub i64 %i.t, %4                        ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  br i1 %i.ah, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i
  %i.ai = icmp samesign ult i64 %i.ag, 512
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds i8, ptr %.sroa.064.0, i64 %i.z
  br label %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ak = lshr i64 %i.ag, 9
  br label %bb.l

bb.k:                                             ; preds = %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i
  %i.al = ashr i64 %i.ag, 9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = phi i64 [ %i.ak, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %.sroa.1267.0, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42, !noalias !696 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.aq = shl nsw i64 %i.am, 9
  %i.ar = sub nsw i64 %i.ag, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  br label %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i

_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i:         ; preds = %bb.l, %bb.i
  %.sroa.1267.1 = phi ptr [ %.sroa.1267.0, %bb.i ], [ %i.an, %bb.l ] ; 2 uses
  %.sroa.966.1 = phi ptr [ %.sroa.966.0, %bb.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.465.1 = phi ptr [ %i.s, %bb.i ], [ %i.ao, %bb.l ] ; 2 uses
  %storemerge.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.as, %bb.l ] ; 2 uses
  %i.at = sub nsw i64 %.01618.i, %.sroa.speculated.i ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit, !llvm.loop !688

_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit: ; preds = %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i, %bb.b
  %.sroa.1267.2 = phi ptr [ %i.n, %bb.b ], [ %.sroa.1267.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ] ; 3 uses
  %.sroa.966.2 = phi ptr [ %i.l, %bb.b ], [ %.sroa.966.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ] ; 3 uses
  %i.av = phi ptr [ %i.j, %bb.b ], [ %.sroa.465.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ] ; 3 uses
  %i.aw = phi ptr [ %i.h, %bb.b ], [ %storemerge.i.i.i, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i ] ; 3 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !42
  store ptr %i.av, ptr %i.i, align 8, !tbaa !42
  store ptr %.sroa.966.2, ptr %i.k, align 8, !tbaa !42
  store ptr %.sroa.1267.2, ptr %i.m, align 8, !tbaa !248
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !233
  %.081 = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !233
  %.not482 = icmp eq ptr %.081, %i.ay
  br i1 %.not482, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit
  %i.az = phi ptr [ %.sroa.1267.2, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ], [ %.sroa.11.1, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ] ; 2 uses
  %i.ba = phi ptr [ %.sroa.966.2, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ], [ %.sroa.8.1, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ] ; 2 uses
  %i.bb = phi ptr [ %i.av, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ], [ %.sroa.459.1, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ] ; 2 uses
  %i.bc = phi ptr [ %i.aw, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ], [ %storemerge.i.i.i33, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ] ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !232
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !235 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i8, label %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit19

.lr.ph.i8:                                        ; preds = %._crit_edge, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17
  %.sroa.1255.0 = phi ptr [ %.sroa.1255.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ], [ %i.az, %._crit_edge ] ; 3 uses
  %.sroa.954.0 = phi ptr [ %.sroa.954.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ], [ %i.ba, %._crit_edge ]
  %.sroa.052.0 = phi ptr [ %storemerge.i.i.i18, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ], [ %i.bc, %._crit_edge ] ; 4 uses
  %i.bk = phi ptr [ %.sroa.453.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ], [ %i.bb, %._crit_edge ] ; 3 uses
  %.019.i10 = phi ptr [ %i.bs, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ], [ %i.bf, %._crit_edge ]
  %.01618.i11 = phi i64 [ %i.cl, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ], [ %i.bi, %._crit_edge ] ; 2 uses
  %i.bl = ptrtoint ptr %.sroa.052.0 to i64        ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %.not.i12 = icmp eq ptr %.sroa.052.0, %i.bk
  br i1 %.not.i12, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i8
  %i.bo = getelementptr inbounds i8, ptr %.sroa.1255.0, i64 -8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !42, !noalias !697
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 512
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i8
  %.015.i13 = phi i64 [ 512, %bb.m ], [ %i.bn, %.lr.ph.i8 ]
  %.09.i14 = phi ptr [ %i.bq, %bb.m ], [ %.sroa.052.0, %.lr.ph.i8 ] ; 2 uses
  %.sroa.speculated.i15 = tail call i64 @llvm.smin.i64(i64 %.015.i13, i64 %.01618.i11) ; 6 uses
  %i.br = sub i64 0, %.sroa.speculated.i15        ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.019.i10, i64 %i.br ; 3 uses
  %i.bt = icmp sgt i64 %.sroa.speculated.i15, 1
  br i1 %i.bt, label %bb.o, label %bb.p, !prof !124

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds i8, ptr %.09.i14, i64 %i.br
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %i.bs, i64 %.sroa.speculated.i15, i1 false), !noalias !697
  br label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i16

bb.p:                                             ; preds = %bb.n
  %i.bv = icmp eq i64 %.sroa.speculated.i15, 1
  br i1 %i.bv, label %bb.q, label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i16

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds i8, ptr %.09.i14, i64 -1
  %i.bx = load i8, ptr %i.bs, align 1, !tbaa !40, !noalias !697
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !40, !noalias !697
  br label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i16

_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i16: ; preds = %bb.q, %bb.p, %bb.o
  %5 = add i64 %.sroa.speculated.i15, %i.bm
  %i.by = sub i64 %i.bl, %5                       ; 5 uses
  %i.bz = icmp sgt i64 %i.by, -1
  br i1 %i.bz, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i16
  %i.ca = icmp samesign ult i64 %i.by, 512
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds i8, ptr %.sroa.052.0, i64 %i.br
  br label %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17

bb.t:                                             ; preds = %bb.r
  %i.cc = lshr i64 %i.by, 9
  br label %bb.v

bb.u:                                             ; preds = %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i16
  %i.cd = ashr i64 %i.by, 9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ce = phi i64 [ %i.cc, %bb.t ], [ %i.cd, %bb.u ] ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.sroa.1255.0, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42, !noalias !697 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 512
  %i.ci = shl nsw i64 %i.ce, 9
  %i.cj = sub nsw i64 %i.by, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  br label %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17

_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17:       ; preds = %bb.v, %bb.s
  %.sroa.1255.1 = phi ptr [ %.sroa.1255.0, %bb.s ], [ %i.cf, %bb.v ] ; 2 uses
  %.sroa.954.1 = phi ptr [ %.sroa.954.0, %bb.s ], [ %i.ch, %bb.v ] ; 2 uses
  %.sroa.453.1 = phi ptr [ %i.bk, %bb.s ], [ %i.cg, %bb.v ] ; 2 uses
  %storemerge.i.i.i18 = phi ptr [ %i.cb, %bb.s ], [ %i.ck, %bb.v ] ; 2 uses
  %i.cl = sub nsw i64 %.01618.i11, %.sroa.speculated.i15 ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i8, label %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit19, !llvm.loop !688

.lr.ph:                                           ; preds = %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34
  %i.cn = phi ptr [ %.sroa.11.1, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ], [ %.sroa.1267.2, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ]
  %i.co = phi ptr [ %.sroa.8.1, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ], [ %.sroa.966.2, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ]
  %i.cp = phi ptr [ %.sroa.459.1, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ], [ %i.av, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ]
  %i.cq = phi ptr [ %storemerge.i.i.i33, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ], [ %i.aw, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ]
  %.083 = phi ptr [ %.0, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34 ], [ %.081, %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit ] ; 2 uses
  %i.cr = load ptr, ptr %.083, align 8, !tbaa !42
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 512
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32, %.lr.ph
  %.sroa.11.0 = phi ptr [ %i.cn, %.lr.ph ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32 ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %i.co, %.lr.ph ], [ %.sroa.8.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32 ]
  %.sroa.058.0 = phi ptr [ %i.cq, %.lr.ph ], [ %storemerge.i.i.i33, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32 ] ; 4 uses
  %i.ct = phi ptr [ %i.cp, %.lr.ph ], [ %.sroa.459.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32 ] ; 3 uses
  %.019.i25 = phi ptr [ %i.cs, %.lr.ph ], [ %i.db, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32 ]
  %.01618.i26 = phi i64 [ 512, %.lr.ph ], [ %i.du, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32 ] ; 2 uses
  %i.cu = ptrtoint ptr %.sroa.058.0 to i64        ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv
  %.not.i27 = icmp eq ptr %.sroa.058.0, %i.ct
  br i1 %.not.i27, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds i8, ptr %.sroa.11.0, i64 -8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !42, !noalias !698
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 512
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.015.i28 = phi i64 [ 512, %bb.x ], [ %i.cw, %bb.w ]
  %.09.i29 = phi ptr [ %i.cz, %bb.x ], [ %.sroa.058.0, %bb.w ] ; 2 uses
  %.sroa.speculated.i30 = tail call i64 @llvm.smin.i64(i64 %.015.i28, i64 %.01618.i26) ; 6 uses
  %i.da = sub i64 0, %.sroa.speculated.i30        ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %.019.i25, i64 %i.da ; 3 uses
  %i.dc = icmp sgt i64 %.sroa.speculated.i30, 1
  br i1 %i.dc, label %bb.z, label %bb.aa, !prof !124

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds i8, ptr %.09.i29, i64 %i.da
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr nonnull align 1 %i.db, i64 %.sroa.speculated.i30, i1 false), !noalias !698
  br label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i31

bb.aa:                                            ; preds = %bb.y
  %i.de = icmp eq i64 %.sroa.speculated.i30, 1
  br i1 %i.de, label %bb.ab, label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i31

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds i8, ptr %.09.i29, i64 -1
  %i.dg = load i8, ptr %i.db, align 1, !tbaa !40, !noalias !698
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !40, !noalias !698
  br label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i31

_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i31: ; preds = %bb.ab, %bb.aa, %bb.z
  %6 = add i64 %.sroa.speculated.i30, %i.cv
  %i.dh = sub i64 %i.cu, %6                       ; 5 uses
  %i.di = icmp sgt i64 %i.dh, -1
  br i1 %i.di, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i31
  %i.dj = icmp samesign ult i64 %i.dh, 512
  br i1 %i.dj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr inbounds i8, ptr %.sroa.058.0, i64 %i.da
  br label %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32

bb.ae:                                            ; preds = %bb.ac
  %i.dl = lshr i64 %i.dh, 9
  br label %bb.ag

bb.af:                                            ; preds = %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i31
  %i.dm = ashr i64 %i.dh, 9
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dn = phi i64 [ %i.dl, %bb.ae ], [ %i.dm, %bb.af ] ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %.sroa.11.0, i64 %i.dn ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !42, !noalias !698 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 512
  %i.dr = shl nsw i64 %i.dn, 9
  %i.ds = sub nsw i64 %i.dh, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  br label %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32

_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32:       ; preds = %bb.ag, %bb.ad
  %.sroa.11.1 = phi ptr [ %.sroa.11.0, %bb.ad ], [ %i.do, %bb.ag ] ; 4 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %bb.ad ], [ %i.dq, %bb.ag ] ; 4 uses
  %.sroa.459.1 = phi ptr [ %i.ct, %bb.ad ], [ %i.dp, %bb.ag ] ; 4 uses
  %storemerge.i.i.i33 = phi ptr [ %i.dk, %bb.ad ], [ %i.dt, %bb.ag ] ; 4 uses
  %i.du = sub nsw i64 %.01618.i26, %.sroa.speculated.i30 ; 2 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %bb.w, label %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34, !llvm.loop !688

_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit34: ; preds = %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i32
  store ptr %storemerge.i.i.i33, ptr %3, align 8, !tbaa !42
  store ptr %.sroa.459.1, ptr %i.i, align 8, !tbaa !42
  store ptr %.sroa.8.1, ptr %i.k, align 8, !tbaa !42
  store ptr %.sroa.11.1, ptr %i.m, align 8, !tbaa !248
  %.0 = getelementptr inbounds i8, ptr %.083, i64 -8 ; 2 uses
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !233
  %.not4 = icmp eq ptr %.0, %i.dw
  br i1 %.not4, label %._crit_edge, label %.lr.ph, !llvm.loop !693

bb.ah:                                            ; preds = %bb.a
  %i.dx = load ptr, ptr %1, align 8, !tbaa !232
  %i.dy = load ptr, ptr %2, align 8, !tbaa !232   ; 2 uses
  %i.dz = load ptr, ptr %3, align 8, !tbaa !232   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !234 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !235 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !233 ; 2 uses
  %i.eg = ptrtoint ptr %i.dy to i64
  %i.eh = ptrtoint ptr %i.dx to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, 0
  br i1 %i.ej, label %.lr.ph.i38, label %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit19

.lr.ph.i38:                                       ; preds = %bb.ah, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47
  %.sroa.12.0 = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.ef, %bb.ah ] ; 3 uses
  %.sroa.9.0 = phi ptr [ %.sroa.9.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.ed, %bb.ah ]
  %.sroa.0.0 = phi ptr [ %storemerge.i.i.i48, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.dz, %bb.ah ] ; 4 uses
  %i.ek = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.eb, %bb.ah ] ; 3 uses
  %.019.i40 = phi ptr [ %i.es, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.dy, %bb.ah ]
  %.01618.i41 = phi i64 [ %i.fl, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.ei, %bb.ah ] ; 2 uses
  %i.el = ptrtoint ptr %.sroa.0.0 to i64          ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em
  %.not.i42 = icmp eq ptr %.sroa.0.0, %i.ek
  br i1 %.not.i42, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i38
  %i.eo = getelementptr inbounds i8, ptr %.sroa.12.0, i64 -8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !42, !noalias !699
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 512
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i38
  %.015.i43 = phi i64 [ 512, %bb.ai ], [ %i.en, %.lr.ph.i38 ]
  %.09.i44 = phi ptr [ %i.eq, %bb.ai ], [ %.sroa.0.0, %.lr.ph.i38 ] ; 2 uses
  %.sroa.speculated.i45 = tail call i64 @llvm.smin.i64(i64 %.015.i43, i64 %.01618.i41) ; 6 uses
  %i.er = sub i64 0, %.sroa.speculated.i45        ; 3 uses
  %i.es = getelementptr inbounds i8, ptr %.019.i40, i64 %i.er ; 3 uses
  %i.et = icmp sgt i64 %.sroa.speculated.i45, 1
  br i1 %i.et, label %bb.ak, label %bb.al, !prof !124

bb.ak:                                            ; preds = %bb.aj
  %i.eu = getelementptr inbounds i8, ptr %.09.i44, i64 %i.er
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eu, ptr nonnull align 1 %i.es, i64 %.sroa.speculated.i45, i1 false), !noalias !699
  br label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i46

bb.al:                                            ; preds = %bb.aj
  %i.ev = icmp eq i64 %.sroa.speculated.i45, 1
  br i1 %i.ev, label %bb.am, label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i46

bb.am:                                            ; preds = %bb.al
  %i.ew = getelementptr inbounds i8, ptr %.09.i44, i64 -1
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !40, !noalias !699
  store i8 %i.ex, ptr %i.ew, align 1, !tbaa !40, !noalias !699
  br label %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i46

_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i46: ; preds = %bb.am, %bb.al, %bb.ak
  %7 = add i64 %.sroa.speculated.i45, %i.em
  %i.ey = sub i64 %i.el, %7                       ; 5 uses
  %i.ez = icmp sgt i64 %i.ey, -1
  br i1 %i.ez, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i46
  %i.fa = icmp samesign ult i64 %i.ey, 512
  br i1 %i.fa, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.er
  br label %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47

bb.ap:                                            ; preds = %bb.an
  %i.fc = lshr i64 %i.ey, 9
  br label %bb.ar

bb.aq:                                            ; preds = %_ZSt23__copy_move_backward_a1ILb1EPcS0_ET1_T0_S2_S1_.exit.i46
  %i.fd = ashr i64 %i.ey, 9
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fe = phi i64 [ %i.fc, %bb.ap ], [ %i.fd, %bb.aq ] ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %.sroa.12.0, i64 %i.fe ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !42, !noalias !699 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 512
  %i.fi = shl nsw i64 %i.fe, 9
  %i.fj = sub nsw i64 %i.ey, %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %i.fj
  br label %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47

_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47:       ; preds = %bb.ar, %bb.ao
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %bb.ao ], [ %i.ff, %bb.ar ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %bb.ao ], [ %i.fh, %bb.ar ] ; 2 uses
  %.sroa.4.1 = phi ptr [ %i.ek, %bb.ao ], [ %i.fg, %bb.ar ] ; 2 uses
  %storemerge.i.i.i48 = phi ptr [ %i.fb, %bb.ao ], [ %i.fk, %bb.ar ] ; 2 uses
  %i.fl = sub nsw i64 %.01618.i41, %.sroa.speculated.i45 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i38, label %_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit19, !llvm.loop !688

_ZSt23__copy_move_backward_a1ILb1EPccEN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS5_PS5_EE6__typeES3_S3_S8_.exit19: ; preds = %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47, %bb.ah, %._crit_edge
  %.sink99 = phi ptr [ %storemerge.i.i.i48, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.bc, %._crit_edge ], [ %i.dz, %bb.ah ], [ %storemerge.i.i.i18, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ]
  %.sink = phi ptr [ %.sroa.4.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.bb, %._crit_edge ], [ %i.eb, %bb.ah ], [ %.sroa.453.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ]
  %.sroa.9.2.sink = phi ptr [ %.sroa.9.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.ba, %._crit_edge ], [ %i.ed, %bb.ah ], [ %.sroa.954.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ]
  %.sroa.12.2.sink = phi ptr [ %.sroa.12.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i47 ], [ %i.az, %._crit_edge ], [ %i.ef, %bb.ah ], [ %.sroa.1255.1, %_ZNSt15_Deque_iteratorIcRcPcEmIEl.exit.i17 ]
  store ptr %.sink99, ptr %0, align 8, !tbaa !232
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.fn, align 8, !tbaa !234
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.2.sink, ptr %i.fo, align 8, !tbaa !235
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.12.2.sink, ptr %i.fp, align 8, !tbaa !233
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE19_M_replace_dispatchISt15_Deque_iteratorIcRcPcEEERS4_N9__gnu_cxx17__normal_iteratorIPKcS4_EESF_T_SG_St12__false_type(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr noundef align 8 dead_on_return %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.b = load ptr, ptr %3, align 8, !tbaa !232    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !235  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233  ; 2 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !232    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !234
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !233  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ne ptr %i.k, null
  %.neg.i.i.i = sext i1 %i.r to i64
  %i.s = add nsw i64 %i.q, %.neg.i.i.i
  %i.t = shl nsw i64 %i.s, 9
  %i.u = ptrtoint ptr %i.g to i64
  %i.v = ptrtoint ptr %i.i to i64
  %i.w = ptrtoint ptr %i.d to i64
  %i.x = ptrtoint ptr %i.b to i64
  %i.y = add i64 %i.w, %i.u
  %i.z = add i64 %i.x, %i.v
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = add i64 %i.aa, %i.t                     ; 3 uses
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !37
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !39
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  store i64 %i.ae, ptr %i.l, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.af = phi i64 [ %i.ae, %.noexc.i ], [ %i.ab, %bb.a ]
  %i.ag = phi ptr [ %i.ad, %.noexc.i ], [ %i.l, %bb.a ] ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not2.i.i.i, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i
  %.sroa.08.0.i.i = phi ptr [ %.sroa.08.1.i.i, %_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i ], [ %i.b, %._crit_edge.i.i ] ; 2 uses
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.1.i.i, %_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i ], [ %i.d, %._crit_edge.i.i ] ; 2 uses
  %.sroa.10.0.i.i = phi ptr [ %.sroa.10.1.i.i, %_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i ], [ %i.f, %._crit_edge.i.i ] ; 2 uses
  %.03.i.i.i = phi ptr [ %i.an, %_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i ], [ %i.ag, %._crit_edge.i.i ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.08.0.i.i, align 1, !tbaa !40
  store i8 %i.ah, ptr %.03.i.i.i, align 1, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i.i, i64 1 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %.sroa.7.0.i.i
  br i1 %i.aj, label %bb.b, label %_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  br label %_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i

_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i:     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.08.1.i.i = phi ptr [ %i.al, %bb.b ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.7.1.i.i = phi ptr [ %i.am, %bb.b ], [ %.sroa.7.0.i.i, %.lr.ph.i.i.i ]
  %.sroa.10.1.i.i = phi ptr [ %i.ak, %bb.b ], [ %.sroa.10.0.i.i, %.lr.ph.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %.sroa.08.1.i.i, %i.g
  br i1 %.not.i.i.i, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt15_Deque_iteratorIcRcPcEEEvT_SA_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !700

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt15_Deque_iteratorIcRcPcEEEvT_SA_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %_ZNSt15_Deque_iteratorIcRcPcEppEv.exit.i.i.i
  %.pre32.i.i = load i64, ptr %i.a, align 8, !tbaa !37
  %.pre33.i.i = load ptr, ptr %5, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt15_Deque_iteratorIcRcPcEEEvT_SA_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.ao = phi ptr [ %.pre33.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt15_Deque_iteratorIcRcPcEEEvT_SA_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.ag, %._crit_edge.i.i ]
  %i.ap = phi i64 [ %.pre32.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructISt15_Deque_iteratorIcRcPcEEEvT_SA_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.af, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.ap, ptr %i.m, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ar = ptrtoint ptr %2 to i64
  %i.as = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.at = sub i64 %i.ar, %i.as
  %i.au = load ptr, ptr %0, align 8, !tbaa !39
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.as, %i.av
  %i.ax = load ptr, ptr %5, align 8, !tbaa !39
  %i.ay = load i64, ptr %i.m, align 8, !tbaa !41
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aw, i64 noundef %i.at, ptr noundef %i.ax, i64 noundef %i.ay)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.l
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !40
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret ptr %i.az

bb.e:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.l
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.bh = load i64, ptr %i.l, align 8, !tbaa !40
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.be
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #14

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
end_hunk_0
