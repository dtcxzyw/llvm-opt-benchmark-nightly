Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qi_queue?download=true
inline.NumInlined: 592
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN3smt8qi_queue14final_check_ehEv:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !580  ; 4 uses
  %i.h = icmp eq ptr %i.g, null                   ; 2 uses
  br i1 %i.e, label %bb.b, label %.preheader49

.preheader49:                                     ; preds = %bb.a
  br i1 %i.h, label %.critedge, label %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39.lr.ph

_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39.lr.ph: ; preds = %.preheader49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  br label %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %.critedge, label %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit

_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !569  ; 3 uses
  %.not62 = icmp eq i32 %i.l, 0
  br i1 %.not62, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %wide.trip.count = zext i32 %i.l to i64
  br label %bb.c

.lr.ph60:                                         ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %wide.trip.count69 = zext i32 %i.l to i64
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv65 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next66, %bb.g ] ; 2 uses
  %.02455 = phi float [ 0.000000e+00, %.lr.ph ], [ %.125, %bb.g ] ; 4 uses
  %.02654 = phi i1 [ false, %.lr.ph ], [ %.127, %bb.g ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %indvars.iv65 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %.not33 = icmp sgt i32 %i.r, -1
  br i1 %.not33, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !612 ; 3 uses
  %i.u = fpext float %i.t to double
  %i.v = load double, ptr %i.m, align 8, !tbaa !758
  %i.w = fcmp ult double %i.v, %i.u
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp uge float %i.t, %.02455
  %or.cond.not = select i1 %.02654, i1 %i.x, i1 false
  br i1 %or.cond.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.127 = phi i1 [ %.02654, %bb.c ], [ true, %bb.f ], [ true, %bb.e ], [ %.02654, %bb.d ]
  %.125 = phi float [ %.02455, %bb.c ], [ %i.t, %bb.f ], [ %.02455, %bb.e ], [ %.02455, %bb.d ] ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph60, label %bb.c, !llvm.loop !754

bb.h:                                             ; preds = %.lr.ph60, %bb.l
  %indvars.iv67 = phi i64 [ 0, %.lr.ph60 ], [ %indvars.iv.next68, %bb.l ] ; 3 uses
  %.02159 = phi i1 [ true, %.lr.ph60 ], [ %.122, %bb.l ]
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !580
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv67 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4
  %.not32 = icmp slt i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load float, ptr %i.ac, align 8
  %i.ae = fcmp ugt float %i.ad, %.125
  %or.cond37 = select i1 %.not32, i1 true, i1 %i.ae
  br i1 %or.cond37, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !574 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !569 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !569
  %i.al = icmp eq i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !574 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !569
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.j, %bb.k
  %i.am = phi i32 [ %.pre2.i, %bb.k ], [ %i.ai, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %.pre.i, %bb.k ], [ %i.af, %bb.j ] ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ap
  %i.ar = trunc nuw i64 %indvars.iv67 to i32
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !569
  %i.as = add i32 %i.am, 1
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !569
  %i.at = load i32, ptr %i.o, align 4, !tbaa !670
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.o, align 4, !tbaa !670
  tail call void @_ZN3smt8qi_queue11instantiateERNS0_5entryE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
  br label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %bb.h
  %.122 = phi i1 [ %.02159, %bb.h ], [ false, %_ZN6vectorIjLb0EjE9push_backERKj.exit ] ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count69
  br i1 %exitcond70.not, label %.critedge, label %bb.h, !llvm.loop !755

_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39: ; preds = %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39.lr.ph, %bb.r
  %i.av = phi ptr [ %i.g, %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39.lr.ph ], [ %i.ca, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %.052 = phi i1 [ true, %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39.lr.ph ], [ %.1, %bb.r ] ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !569
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv, %i.ay
  br i1 %i.az, label %bb.m, label %.critedge

bb.m:                                             ; preds = %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %.not = icmp sgt i32 %i.bc, -1
  br i1 %.not, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load float, ptr %i.bd, align 8, !tbaa !612
  %i.bf = fpext float %i.be to double
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !584, !nonnull !518, !align !519
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !758
  %i.bj = fcmp ult double %i.bi, %i.bf
  br i1 %i.bj, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !574 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !569 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !569
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.q, label %_ZN6vectorIjLb0EjE9push_backERKj.exit43

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i40 = load ptr, ptr %i.i, align 8, !tbaa !574 ; 2 uses
  %.phi.trans.insert.i41 = getelementptr inbounds i8, ptr %.pre.i40, i64 -4
  %.pre2.i42 = load i32, ptr %.phi.trans.insert.i41, align 4, !tbaa !569
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit43

_ZN6vectorIjLb0EjE9push_backERKj.exit43:          ; preds = %bb.p, %bb.q
  %i.br = phi i32 [ %.pre2.i42, %bb.q ], [ %i.bn, %bb.p ] ; 2 uses
  %i.bs = phi ptr [ %.pre.i40, %bb.q ], [ %i.bk, %bb.p ] ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !569
  %i.bx = add i32 %i.br, 1
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !569
  %i.by = load i32, ptr %i.j, align 4, !tbaa !670
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.j, align 4, !tbaa !670
  tail call void @_ZN3smt8qi_queue11instantiateERNS0_5entryE(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !580
  br label %bb.r

bb.r:                                             ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit43, %bb.n, %bb.m
  %i.ca = phi ptr [ %i.av, %bb.m ], [ %.pre, %_ZN6vectorIjLb0EjE9push_backERKj.exit43 ], [ %i.av, %bb.n ] ; 2 uses
  %.1 = phi i1 [ %.052, %bb.m ], [ false, %_ZN6vectorIjLb0EjE9push_backERKj.exit43 ], [ %.052, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.critedge, label %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39, !llvm.loop !756

.critedge:                                        ; preds = %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39, %bb.r, %bb.l, %bb.b, %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit, %.preheader49
  %.028.in = phi i1 [ true, %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit ], [ %.122, %bb.l ], [ true, %.preheader49 ], [ true, %bb.b ], [ %.052, %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE4sizeEv.exit39 ], [ %.1, %bb.r ]
  ret i1 %.028.in
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK3smt8qi_queue31display_delayed_instances_statsERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.i.i.i.i:
  %2 = alloca %"struct.obj_map<quantifier, smt::delayed_qa_info>::key_data", align 8 ; 6 uses
  %3 = alloca %class.obj_map.333, align 8         ; 12 uses
  %4 = alloca %class.ptr_vector.95, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 8, ptr %i.a, align 8, !tbaa !673
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !674
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !675
  %i.d = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 192) ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 20, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 20, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 20, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 20, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 20, i1 false)
  store ptr %i.d, ptr %3, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !677
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !580  ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN6vectorIP10quantifierLb0EjED2Ev.exit, label %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE3endEv.exit

_ZNK6vectorIN3smt8qi_queue5entryELb0EjE3endEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !569  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.r
  %.not96 = icmp eq i32 %i.p, 0
  br i1 %.not96, label %_ZN6vectorIP10quantifierLb0EjED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE3endEv.exit
  %.sroa.9.0..sroa_idx73.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.14.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.a

._crit_edge:                                      ; preds = %bb.o
  %.pre = load ptr, ptr %4, align 8, !tbaa !677   ; 5 uses
  %i.t = icmp eq ptr %.pre, null
  br i1 %i.t, label %_ZN6vectorIP10quantifierLb0EjED2Ev.exit, label %_ZN6vectorIP10quantifierLb0EjE3endEv.exit

_ZN6vectorIP10quantifierLb0EjE3endEv.exit:        ; preds = %._crit_edge
  %i.u = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !569  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.x
  %.not2798 = icmp eq i32 %i.v, 0
  br i1 %.not2798, label %._crit_edge101.thread136, label %.lr.ph100

bb.a:                                             ; preds = %.lr.ph, %bb.o
  %.02697 = phi ptr [ %i.m, %.lr.ph ], [ %i.bu, %bb.o ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02697, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %.not29 = icmp sgt i32 %i.aa, -1
  br i1 %.not29, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %.02697, align 8, !tbaa !611
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !605 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !678 ; 3 uses
  %i.af = load i32, ptr %i.a, align 8, !tbaa !673 ; 3 uses
  %i.ag = add i32 %i.af, -1
  %i.ah = and i32 %i.ag, %i.ae                    ; 3 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !676   ; 3 uses
  %i.aj = zext i32 %i.ah to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.aj, 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i ; 3 uses
  %i.al = zext i32 %i.af to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.al
  %.not34.i.i.i = icmp eq i32 %i.ah, %i.af
  br i1 %.not34.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e, %bb.b
  %.not2736.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not2736.i.i.i, label %.loopexit87, label %.lr.ph38.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.e
  %.035.i.i.i = phi ptr [ %i.au, %bb.e ], [ %i.ak, %bb.b ] ; 3 uses
  %i.an = load ptr, ptr %.035.i.i.i, align 8, !tbaa !682 ; 4 uses
  %i.ao = icmp ult ptr %i.an, inttoptr (i64 2 to ptr)
  br i1 %i.ao, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !678
  %i.ar = icmp eq i32 %i.aq, %i.ae
  %i.as = icmp eq ptr %i.an, %i.ac
  %or.cond.i.i.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i.i.i, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.at = icmp eq ptr %i.an, null
  br i1 %i.at, label %.loopexit87, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.035.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %i.am
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !759

.lr.ph38.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph38.i.i.i.backedge
  %.137.i.i.i = phi ptr [ %.137.i.i.i.be, %.lr.ph38.i.i.i.backedge ], [ %i.ai, %.preheader.i.i.i ] ; 4 uses
  %i.av = load ptr, ptr %.137.i.i.i, align 8, !tbaa !682 ; 4 uses
  %i.aw = icmp ult ptr %i.av, inttoptr (i64 2 to ptr)
  br i1 %i.aw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph38.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !678
  %i.az = icmp eq i32 %i.ay, %i.ae
  %i.ba = icmp eq ptr %i.av, %i.ac
  %or.cond31.i.i.i = and i1 %i.ba, %i.az
  br i1 %or.cond31.i.i.i, label %.loopexit, label %bb.h

bb.g:                                             ; preds = %.lr.ph38.i.i.i
  %i.bb = icmp eq ptr %i.av, null
  %i.bc = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 24 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.bc, %i.ak
  %or.cond43.i.i.i = select i1 %i.bb, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %.loopexit87, label %.lr.ph38.i.i.i.backedge

bb.h:                                             ; preds = %bb.f
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 24 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.ak
  br i1 %.not27.old.i.i.i, label %.loopexit87, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.h, %bb.g
  %.137.i.i.i.be = phi ptr [ %i.bc, %bb.g ], [ %.old.i.i.i, %bb.h ]
  br label %.lr.ph38.i.i.i, !llvm.loop !760

.loopexit:                                        ; preds = %bb.c, %bb.f
  %.026.i.i.i = phi ptr [ %.137.i.i.i, %bb.f ], [ %.035.i.i.i, %bb.c ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 8
  %.sroa.071.0.copyload = load i32, ptr %i.bd, align 8, !tbaa !569
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.026.i.i.i, i64 12
  %5 = add i32 %.sroa.071.0.copyload, 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.02697, i64 8
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !571
  %6 = load <2 x float>, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !571 ; 2 uses
  %7 = insertelement <2 x float> poison, float %.sroa.14.0.copyload, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %9 = fcmp olt <2 x float> %8, %6
  %10 = select <2 x i1> %9, <2 x float> %8, <2 x float> %6
  br label %bb.m

bb.i:                                             ; preds = %bb.m, %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit87:                                      ; preds = %bb.d, %bb.g, %bb.h, %.preheader.i.i.i
  %i.bf = load ptr, ptr %4, align 8, !tbaa !677   ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit87
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !569 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !569
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.loopexit87
  invoke void @_ZN6vectorIP10quantifierLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.k
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !677 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !569
  br label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.j
  %i.bm = phi i32 [ %.pre2.i, %.noexc ], [ %i.bi, %bb.j ] ; 2 uses
  %i.bn = phi ptr [ %.pre.i, %.noexc ], [ %i.bf, %bb.j ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  store ptr %i.ac, ptr %i.bq, align 8, !tbaa !661
  %i.br = add i32 %i.bm, 1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !569
  %i.bs = getelementptr inbounds nuw i8, ptr %.02697, i64 8
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !612
  %11 = insertelement <2 x float> poison, float %i.bt, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.loopexit
  %.sroa.071.0 = phi i32 [ %5, %.loopexit ], [ 1, %bb.l ]
  %13 = phi <2 x float> [ %10, %.loopexit ], [ %12, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.ac, ptr %2, align 8, !tbaa !683
  store i32 %.sroa.071.0, ptr %.sroa.9.0..sroa_idx73.a, align 8, !tbaa !569
  store <2 x float> %13, ptr %.sroa.14.0..sroa_idx75, align 4, !tbaa !571
  invoke void @_ZN14core_hashtableIN7obj_mapI10quantifierN3smt15delayed_qa_infoEE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE6insertEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %bb.n unwind label %bb.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.02697, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bu, %i.s
  br i1 %.not, label %._crit_edge, label %bb.a

._crit_edge101:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %.pre112 = load ptr, ptr %4, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre112, null
  br i1 %.not.i.i, label %_ZN6vectorIP10quantifierLb0EjED2Ev.exit, label %._crit_edge101.thread136

._crit_edge101.thread136:                         ; preds = %_ZN6vectorIP10quantifierLb0EjE3endEv.exit, %._crit_edge101
  %i.bv = phi ptr [ %.pre112, %._crit_edge101 ], [ %.pre, %_ZN6vectorIP10quantifierLb0EjE3endEv.exit ]
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bw)
          to label %_ZN6vectorIP10quantifierLb0EjED2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %._crit_edge101.thread136
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #17
  unreachable

_ZN6vectorIP10quantifierLb0EjED2Ev.exit:          ; preds = %._crit_edge, %_ZNK6vectorIN3smt8qi_queue5entryELb0EjE3endEv.exit, %.lr.ph.i.i.i.i.i.i.i, %._crit_edge101, %._crit_edge101.thread136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bz = load ptr, ptr %3, align 8, !tbaa !676   ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN7obj_mapI10quantifierN3smt15delayed_qa_infoEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6vectorIP10quantifierLb0EjED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bz)
          to label %_ZN7obj_mapI10quantifierN3smt15delayed_qa_infoEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #17
  unreachable

_ZN7obj_mapI10quantifierN3smt15delayed_qa_infoEED2Ev.exit: ; preds = %_ZN6vectorIP10quantifierLb0EjED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void

.lr.ph100:                                        ; preds = %_ZN6vectorIP10quantifierLb0EjE3endEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %.099 = phi ptr [ %i.ee, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 ], [ %.pre, %_ZN6vectorIP10quantifierLb0EjE3endEv.exit ] ; 2 uses
  %i.cd = load ptr, ptr %.099, align 8, !tbaa !661 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !678 ; 3 uses
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !673 ; 3 uses
  %i.ch = add i32 %i.cg, -1
  %i.ci = and i32 %i.ch, %i.cf                    ; 3 uses
  %i.cj = load ptr, ptr %3, align 8, !tbaa !676   ; 3 uses
  %i.ck = zext i32 %i.ci to i64
  %.idx.i.i.i35 = mul nuw nsw i64 %i.ck, 24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i35 ; 3 uses
  %i.cm = zext i32 %i.cg to i64
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cm
  %.not34.i.i.i36 = icmp eq i32 %i.ci, %i.cg
  br i1 %.not34.i.i.i36, label %.preheader.i.i.i41, label %.lr.ph.i.i.i37

.preheader.i.i.i41:                               ; preds = %bb.u, %.lr.ph100
  %.not2736.i.i.i42 = icmp eq i32 %i.ci, 0
  br i1 %.not2736.i.i.i42, label %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE4findEPS0_RS2_.exit54, label %.lr.ph38.i.i.i43

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph100, %bb.u
  %.035.i.i.i38 = phi ptr [ %i.cv, %bb.u ], [ %i.cl, %.lr.ph100 ] ; 3 uses
  %i.co = load ptr, ptr %.035.i.i.i38, align 8, !tbaa !682 ; 4 uses
  %i.cp = icmp ult ptr %i.co, inttoptr (i64 2 to ptr)
  br i1 %i.cp, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !678
  %i.cs = icmp eq i32 %i.cr, %i.cf
  %i.ct = icmp eq ptr %i.co, %i.cd
  %or.cond.i.i.i39 = and i1 %i.ct, %i.cs
  br i1 %or.cond.i.i.i39, label %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE9find_coreEPS0_.exit.i50, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i.i.i37
  %i.cu = icmp eq ptr %i.co, null
  br i1 %i.cu, label %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE4findEPS0_RS2_.exit54, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %.035.i.i.i38, i64 24 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.cv, %i.cn
  br i1 %.not.i.i.i40, label %.preheader.i.i.i41, label %.lr.ph.i.i.i37, !llvm.loop !759

.lr.ph38.i.i.i43:                                 ; preds = %.preheader.i.i.i41, %.lr.ph38.i.i.i43.backedge
  %.137.i.i.i44 = phi ptr [ %.137.i.i.i44.be, %.lr.ph38.i.i.i43.backedge ], [ %i.cj, %.preheader.i.i.i41 ] ; 4 uses
  %i.cw = load ptr, ptr %.137.i.i.i44, align 8, !tbaa !682 ; 4 uses
  %i.cx = icmp ult ptr %i.cw, inttoptr (i64 2 to ptr)
  br i1 %i.cx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph38.i.i.i43
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !678
  %i.da = icmp eq i32 %i.cz, %i.cf
  %i.db = icmp eq ptr %i.cw, %i.cd
  %or.cond31.i.i.i45 = and i1 %i.db, %i.da
  br i1 %or.cond31.i.i.i45, label %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE9find_coreEPS0_.exit.i50, label %bb.x

bb.w:                                             ; preds = %.lr.ph38.i.i.i43
  %i.dc = icmp eq ptr %i.cw, null
  %i.dd = getelementptr inbounds nuw i8, ptr %.137.i.i.i44, i64 24 ; 2 uses
  %.not27.i.i.i52 = icmp eq ptr %i.dd, %i.cl
  %or.cond43.i.i.i53 = select i1 %i.dc, i1 true, i1 %.not27.i.i.i52
  br i1 %or.cond43.i.i.i53, label %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE4findEPS0_RS2_.exit54, label %.lr.ph38.i.i.i43.backedge

bb.x:                                             ; preds = %bb.v
  %.old.i.i.i46 = getelementptr inbounds nuw i8, ptr %.137.i.i.i44, i64 24 ; 2 uses
  %.not27.old.i.i.i47 = icmp eq ptr %.old.i.i.i46, %i.cl
  br i1 %.not27.old.i.i.i47, label %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE4findEPS0_RS2_.exit54, label %.lr.ph38.i.i.i43.backedge

.lr.ph38.i.i.i43.backedge:                        ; preds = %bb.x, %bb.w
  %.137.i.i.i44.be = phi ptr [ %i.dd, %bb.w ], [ %.old.i.i.i46, %bb.x ]
  br label %.lr.ph38.i.i.i43, !llvm.loop !760

_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE9find_coreEPS0_.exit.i50: ; preds = %bb.s, %bb.v
  %.026.i.i.i51 = phi ptr [ %.137.i.i.i44, %bb.v ], [ %.035.i.i.i38, %bb.s ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.026.i.i.i51, i64 8
  %.sroa.0.0.copyload70 = load i32, ptr %i.de, align 8, !tbaa !569
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.026.i.i.i51, i64 12
  %i.df = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !571
  %i.dg = zext i32 %.sroa.0.0.copyload70 to i64
  %i.dh = fpext <2 x float> %i.df to <2 x double>
  br label %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE4findEPS0_RS2_.exit54

_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE4findEPS0_RS2_.exit54: ; preds = %bb.t, %bb.x, %bb.w, %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE9find_coreEPS0_.exit.i50, %.preheader.i.i.i41
  %.sroa.0.0 = phi i64 [ 0, %.preheader.i.i.i41 ], [ 0, %bb.x ], [ %i.dg, %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE9find_coreEPS0_.exit.i50 ], [ 0, %bb.w ], [ 0, %bb.t ]
  %i.di = phi <2 x double> [ zeroinitializer, %.preheader.i.i.i41 ], [ zeroinitializer, %bb.x ], [ %i.dh, %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE9find_coreEPS0_.exit.i50 ], [ zeroinitializer, %bb.w ], [ zeroinitializer, %bb.t ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %.sroa.0.0.copyload = load ptr, ptr %i.dj, align 8, !tbaa !761 ; 4 uses
  %i.dk = ptrtoint ptr %.sroa.0.0.copyload to i64 ; 2 uses
  %i.dl = and i64 %i.dk, 7
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE4findEPS0_RS2_.exit54
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %.invoke, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.y
  %i.dn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload) #16
  br label %.invoke

.invoke:                                          ; preds = %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.do = phi ptr [ %.sroa.0.0.copyload, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ @.str.43, %bb.y ]
  %i.dp = phi i64 [ %i.dn, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i ], [ 4, %bb.y ]
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.do, i64 noundef %i.dp)
          to label %_ZlsRSo6symbol.exit unwind label %bb.aa ; 0 uses

bb.z:                                             ; preds = %_ZNK7obj_mapI10quantifierN3smt15delayed_qa_infoEE4findEPS0_RS2_.exit54
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.44, i64 noundef 2)
          to label %.noexc57 unwind label %bb.aa  ; 0 uses

.noexc57:                                         ; preds = %bb.z
  %i.ds = lshr i64 %i.dk, 3
  %i.dt = trunc i64 %i.ds to i32
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dt)
          to label %_ZlsRSo6symbol.exit unwind label %bb.aa ; 0 uses

_ZlsRSo6symbol.exit:                              ; preds = %.invoke, %.noexc57
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.34, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZlsRSo6symbol.exit
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.sroa.0.0)
          to label %_ZNSolsEj.exit unwind label %bb.aa ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull @.str.35, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %_ZNSolsEj.exit
  %i.dy = extractelement <2 x double> %i.di, i64 0
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, double noundef %i.dy)
          to label %_ZNSolsEf.exit unwind label %bb.aa ; 2 uses

_ZNSolsEf.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.36, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65: ; preds = %_ZNSolsEf.exit
  %i.eb = extractelement <2 x double> %i.di, i64 1
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, double noundef %i.eb)
          to label %_ZNSolsEf.exit67 unwind label %bb.aa

_ZNSolsEf.exit67:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
  %i.ed = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ec, ptr noundef nonnull @.str.37, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZNSolsEf.exit67
end_hunk_0
