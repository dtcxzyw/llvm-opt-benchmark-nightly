Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/decoders_dcraw?download=true
inline.NumInlined: 144
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN6LibRaw16make_decoder_refEPPKh:bb.a

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6LibRaw12make_decoderEPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !98
  %i.b = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15crw_init_tablesEjPPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %1, i32 2)
  %i.c = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.d = getelementptr inbounds nuw [29 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE10first_tree, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8, !tbaa !98
  %i.e = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %2, align 8, !tbaa !101
  %i.f = getelementptr inbounds nuw [180 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE11second_tree, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8, !tbaa !98
  %i.g = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw17canon_has_lowbitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [16384 x i8], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0, i32 noundef 0), !call_target !107 ; 0 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16384), !call_target !114 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %indvars.iv = phi i64 [ 540, %bb.a ], [ %indvars.iv.next.2, %bb.h ] ; 4 uses
  %.068 = phi i32 [ 1, %bb.a ], [ %.1.2, %bb.h ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !99
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !99
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ %.068, %bb.b ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !99
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !99
  %.not.1 = icmp eq i8 %i.w, 0
  br i1 %.not.1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %.1, %bb.d ], [ 0, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !99
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !99
  %.not.2 = icmp eq i8 %i.ac, 0
  br i1 %.not.2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.2 = phi i32 [ %.1.1, %bb.f ], [ 0, %bb.g ]  ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 16383
  br i1 %exitcond.not.2, label %bb.i, label %bb.b, !llvm.loop !2

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %.07 = phi i32 [ 1, %bb.c ], [ %.1.2, %bb.h ], [ 1, %bb.e ], [ 1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.07
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14canon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = alloca [16384 x i8], align 16            ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca [64 x i32], align 16              ; 8 uses
  %i.f = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 381840
  %i.i = load i32, ptr %i.h, align 8, !tbaa !158
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 2)
  %i.j = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.k = getelementptr inbounds nuw [29 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE10first_tree, i64 %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.k, ptr %i.d, align 8, !tbaa !98
  %i.l = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.d) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.m = getelementptr inbounds nuw [180 x i8], ptr @_ZZN6LibRaw15crw_init_tablesEjPPtE11second_tree, i64 %i.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8, !tbaa !98
  %i.n = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.c) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0, i32 noundef 0), !call_target !107, !inline_history !159 ; 0 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 16384), !call_target !114, !inline_history !159 ; 0 uses
  br label %.outer

.outer:                                           ; preds = %.thread, %bb.a
  %indvars.iv.i.ph = phi i64 [ %indvars.iv.next.i203, %.thread ], [ 540, %bb.a ]
  %.not = phi i1 [ true, %.thread ], [ false, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %indvars.iv.i.ph, %.outer ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !99
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !99
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %.thread, label %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread

_ZN6LibRaw17canon_has_lowbitsEv.exit.thread:      ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16383
  br i1 %exitcond.not.i, label %_ZN6LibRaw17canon_has_lowbitsEv.exit, label %bb.b, !llvm.loop !2

.thread:                                          ; preds = %bb.c
  %indvars.iv.next.i203 = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i204 = icmp eq i64 %indvars.iv.next.i203, 16383
  br i1 %exitcond.not.i204, label %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206, label %.outer, !llvm.loop !2

_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206:   ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.e

_ZN6LibRaw17canon_has_lowbitsEv.exit:             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread206, %_ZN6LibRaw17canon_has_lowbitsEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 1023, ptr %i.ae, align 8, !tbaa !115
  br label %bb.f

bb.f:                                             ; preds = %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread, %bb.e, %_ZN6LibRaw17canon_has_lowbitsEv.exit
  %.not117 = phi i1 [ false, %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread ], [ true, %bb.e ], [ false, %_ZN6LibRaw17canon_has_lowbitsEv.exit ]
  %.07.i116 = phi i32 [ 1, %_ZN6LibRaw17canon_has_lowbitsEv.exit.thread ], [ 0, %bb.e ], [ 1, %_ZN6LibRaw17canon_has_lowbitsEv.exit ]
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !116
  %i.ai = zext i16 %i.ah to i32
  %i.aj = mul nuw nsw i32 %.07.i116, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 12 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.am = zext i16 %i.al to i32
  %i.an = mul nuw nsw i32 %i.aj, %i.am
  %i.ao = lshr i32 %i.an, 2
  %i.ap = add nuw nsw i32 %i.ao, 540
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.aq, i32 noundef 0), !call_target !107 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 381848 ; 3 uses
  store i32 1, ptr %i.av, align 8, !tbaa !95
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 9 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 0, ptr %i.ay, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !84
  store i32 0, ptr %i.ax, align 8, !tbaa !85
  %i.ba = load i16, ptr %i.ag, align 8, !tbaa !116
  %.not174 = icmp eq i16 %i.ba, 0
  br i1 %.not174, label %.preheader, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bd = add nuw i64 %i.a, 18
  %i.be = add nuw i64 %i.a, 20
  br label %bb.g

.preheader:                                       ; preds = %bb.aj, %bb.f
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.l)
  call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  ret void

bb.g:                                             ; preds = %.lr.ph171, %bb.aj
  %.0169 = phi i32 [ 0, %.lr.ph171 ], [ %.1.lcssa, %bb.aj ] ; 3 uses
  %.070168 = phi i32 [ 0, %.lr.ph171 ], [ %.171.lcssa, %bb.aj ] ; 2 uses
  %.076167 = phi i32 [ 0, %.lr.ph171 ], [ %i.ie, %bb.aj ] ; 4 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.h unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !118
  %i.bg = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.bh = zext i16 %i.bg to i32                   ; 2 uses
  %i.bi = mul nuw nsw i32 %.076167, %i.bh
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bj ; 2 uses
  %i.bl = load i16, ptr %i.ag, align 8, !tbaa !116
  %i.bm = zext i16 %i.bl to i32
  %i.bn = sub nsw i32 %i.bm, %.076167
  %spec.select = call i32 @llvm.smin.i32(i32 %i.bn, i32 8)
  %i.bo = mul nsw i32 %spec.select, %i.bh         ; 2 uses
  %i.bp = ashr i32 %i.bo, 6                       ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph158.preheader, label %._crit_edge

.lr.ph158.preheader:                              ; preds = %bb.h
  %i.br = and i32 %i.bo, -64
  %i.bs = add i32 %.0169, %i.br
  %wide.trip.count = zext nneg i32 %i.bp to i64
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %bb.ag
  %indvars.iv179 = phi i64 [ 0, %.lr.ph158.preheader ], [ %indvars.iv.next180, %bb.ag ] ; 2 uses
  %.1157 = phi i32 [ %.0169, %.lr.ph158.preheader ], [ %i.go, %bb.ag ] ; 2 uses
  %.171156 = phi i32 [ %.070168, %.lr.ph158.preheader ], [ %i.gn, %bb.ag ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.e, i8 0, i64 256, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph158, %bb.aa
  %.079152 = phi i32 [ 0, %.lr.ph158 ], [ %i.gk, %bb.aa ] ; 4 uses
  %i.bt = icmp sgt i32 %.079152, 0
  %i.bu = select i1 %i.bt, ptr %i.n, ptr %i.l     ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !97 ; 2 uses
  %i.bw = zext i16 %i.bv to i32                   ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.by = add i16 %i.bv, -26
  %or.cond118 = icmp ult i16 %i.by, -25
  br i1 %or.cond118, label %_ZN6LibRaw10getbithuffEiPt.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !84 ; 3 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !83
  %.not25.i = icmp eq i32 %i.ce, 0
  br i1 %.not25.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.cf = icmp samesign ult i32 %i.cb, %i.bw
  br i1 %i.cf, label %.lr.ph, label %.critedge.loopexit.i

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !88
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i32 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %.noexc unwind label %.loopexit.split-lp121.loopexit, !inline_history !119 ; 3 uses

.noexc:                                           ; preds = %.lr.ph
  %.not21.i = icmp eq i32 %i.ck, -1
  br i1 %.not21.i, label %..critedge.loopexit_crit_edge.i, label %bb.k

..critedge.loopexit_crit_edge.i:                  ; preds = %.noexc
  %.pre.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !76
  br label %.critedge.loopexit.i

bb.k:                                             ; preds = %.noexc
  %i.cl = load i32, ptr %i.av, align 8, !tbaa !95
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = icmp eq i32 %i.ck, 255
  %or.cond.i = and i1 %i.cn, %i.cm
  br i1 %or.cond.i, label %bb.l, label %.critedge24.i

bb.l:                                             ; preds = %bb.k
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !88
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %.noexc92 unwind label %.loopexit.split-lp121.loopexit, !inline_history !119

.noexc92:                                         ; preds = %bb.l
  %i.ct = icmp ne i32 %i.cs, 0                    ; 2 uses
  %i.cu = zext i1 %i.ct to i32
  %i.cv = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i32 %i.cu, ptr %i.cw, align 8, !tbaa !83
  br i1 %i.ct, label %.critedge.loopexit.i, label %.lr.ph.i

.critedge24.i:                                    ; preds = %bb.k
  %i.cx = load ptr, ptr %i.aw, align 8, !tbaa !76 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 0, ptr %i.cy, align 8, !tbaa !83
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge24.i, %.noexc92
  %i.cz = phi ptr [ %i.cx, %.critedge24.i ], [ %i.cv, %.noexc92 ] ; 4 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !85
  %i.db = shl i32 %i.da, 8
  %i.dc = and i32 %i.ck, 255
  %i.dd = or disjoint i32 %i.db, %i.dc
  store i32 %i.dd, ptr %i.cz, align 8, !tbaa !85
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !84
  %i.dg = add nsw i32 %i.df, 8                    ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !84
  %i.dh = icmp slt i32 %i.dg, %i.bw
  br i1 %i.dh, label %.lr.ph, label %.critedge.loopexit.i, !llvm.loop !1

.critedge.loopexit.i:                             ; preds = %.lr.ph.i, %.noexc92, %.lr.ph.i.preheader, %..critedge.loopexit_crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.bz, %.lr.ph.i.preheader ], [ %i.cz, %.lr.ph.i ], [ %i.cv, %.noexc92 ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !84
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.di = phi i32 [ %.pre29.i, %.critedge.loopexit.i ], [ %i.cb, %.preheader.i ] ; 3 uses
  %i.dj = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.bz, %.preheader.i ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = icmp eq i32 %i.di, 0
  br i1 %i.dl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  %i.dm = load i32, ptr %i.dj, align 8, !tbaa !85
  %i.dn = sub nsw i32 32, %i.di
  %i.do = shl i32 %i.dm, %i.dn
  %i.dp = sub nuw nsw i32 32, %i.bw
  %i.dq = lshr i32 %i.do, %i.dp
  %i.dr = zext nneg i32 %i.dq to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge.i
  %i.ds = phi i64 [ %i.dr, %bb.m ], [ 0, %.critedge.i ]
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !97 ; 2 uses
  %i.dv = lshr i16 %i.du, 8
  %i.dw = zext nneg i16 %i.dv to i32
  %i.dx = and i16 %i.du, 255                      ; 2 uses
  %.sink.i = sub nsw i32 %i.di, %i.dw             ; 2 uses
  store i32 %.sink.i, ptr %i.dk, align 4, !tbaa !84
  %i.dy = icmp slt i32 %.sink.i, 0
  br i1 %i.dy, label %bb.o, label %_ZN6LibRaw10getbithuffEiPt.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN6LibRaw10getbithuffEiPt.exit:                  ; preds = %bb.n, %bb.j, %bb.i, %bb.o
  %.016.i.shrunk = phi i16 [ %i.dx, %bb.o ], [ %i.dx, %bb.n ], [ 0, %bb.i ], [ 0, %bb.j ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6LibRaw14canon_load_rawEv:bb.a
  %i.fr = phi i32 [ %.pre29.i103, %.critedge.loopexit.i100 ], [ %i.ek, %.preheader.i94 ] ; 3 uses
  %i.fs = phi ptr [ %.pre.i101, %.critedge.loopexit.i100 ], [ %i.ei, %.preheader.i94 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fu = icmp eq i32 %i.fr, 0
  br i1 %i.fu, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge.i96
  %i.fv = load i32, ptr %i.fs, align 8, !tbaa !85
  %i.fw = sub nsw i32 32, %i.fr
  %i.fx = shl i32 %i.fv, %i.fw
  %i.fy = sub nuw nsw i32 32, %i.eg
  %i.fz = lshr i32 %i.fx, %i.fy
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge.i96
  %i.ga = phi i32 [ %i.fz, %bb.w ], [ 0, %.critedge.i96 ] ; 2 uses
  %.sink.i97 = sub nsw i32 %i.fr, %i.eg           ; 2 uses
  store i32 %.sink.i97, ptr %i.ft, align 4, !tbaa !84
  %i.gb = icmp slt i32 %.sink.i97, 0
  br i1 %i.gb, label %bb.y, label %_ZN6LibRaw10getbithuffEiPt.exit112

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %_ZN6LibRaw10getbithuffEiPt.exit112 unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit

_ZN6LibRaw10getbithuffEiPt.exit112:               ; preds = %bb.x, %bb.t, %bb.y
  %.016.i98 = phi i32 [ 0, %bb.t ], [ %i.ga, %bb.x ], [ %i.ga, %bb.y ] ; 2 uses
  %i.gc = icmp slt i32 %i.ef, 64
  br i1 %i.gc, label %bb.z, label %.thread209

bb.z:                                             ; preds = %_ZN6LibRaw10getbithuffEiPt.exit112
  %i.gd = add nsw i32 %i.eg, -1
  %i.ge = shl nuw nsw i32 1, %i.gd
  %i.gf = and i32 %.016.i98, %i.ge
  %i.gg = icmp eq i32 %i.gf, 0
  %notmask = shl nsw i32 -1, %i.eg
  %.neg = or disjoint i32 %notmask, 1
  %i.gh = select i1 %i.gg, i32 %.neg, i32 0
  %.072 = add nsw i32 %i.gh, %.016.i98
  %i.gi = zext nneg i32 %i.ef to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gi
  store i32 %.072, ptr %i.gj, align 4, !tbaa !120
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s, %bb.r
  %.180 = phi i32 [ %.079152, %bb.r ], [ %i.ef, %bb.s ], [ %i.ef, %bb.z ] ; 2 uses
  %i.gk = add nuw nsw i32 %.180, 1
  %i.gl = icmp slt i32 %.180, 63
  br i1 %i.gl, label %bb.i, label %.thread209, !llvm.loop !153

.thread209:                                       ; preds = %_ZN6LibRaw10getbithuffEiPt.exit112, %_ZN6LibRaw10getbithuffEiPt.exit, %bb.aa
  %i.gm = load i32, ptr %i.e, align 16, !tbaa !120
  %i.gn = add nsw i32 %i.gm, %.171156             ; 3 uses
  store i32 %i.gn, ptr %i.e, align 16, !tbaa !120
  %i.go = add i32 %.1157, 64
  %.idx = shl nuw nsw i64 %indvars.iv179, 7
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx
  br label %bb.ab

bb.ab:                                            ; preds = %.thread209, %bb.af
  %indvars.iv = phi i64 [ 0, %.thread209 ], [ %indvars.iv.next, %bb.af ] ; 4 uses
  %.2154 = phi i32 [ %.1157, %.thread209 ], [ %i.gp, %bb.af ] ; 2 uses
  %i.gp = add nsw i32 %.2154, 1
  %i.gq = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.gr = zext i16 %i.gq to i32
  %i.gs = srem i32 %.2154, %i.gr
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 512, ptr %i.bc, align 4, !tbaa !120
  store i32 512, ptr %i.f, align 4, !tbaa !120
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !120
  %i.gw = and i64 %indvars.iv, 1
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !120
  %i.gz = add nsw i32 %i.gy, %i.gv                ; 3 uses
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !120
  %i.ha = trunc i32 %i.gz to i16
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i16 %i.ha, ptr %gep, align 2, !tbaa !97
  %i.hb = and i32 %i.gz, 64512
  %.not90 = icmp eq i32 %i.hb, 0
  br i1 %.not90, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.af unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %bb.ag, label %bb.ab, !llvm.loop !154

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count
  br i1 %exitcond182.not, label %._crit_edge, label %.lr.ph158, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.ag, %bb.h
  %.171.lcssa = phi i32 [ %.070168, %bb.h ], [ %i.gn, %bb.ag ]
  %.1.lcssa = phi i32 [ %.0169, %bb.h ], [ %i.bs, %bb.ag ]
  br i1 %.not117, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !88
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 40
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = invoke noundef i64 %i.hf(ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %bb.ai unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !162

bb.ai:                                            ; preds = %bb.ah
  %i.hh = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.hi = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw nsw i32 %.076167, %i.hj
  %i.hl = lshr exact i32 %i.hk, 2
  %i.hm = add nuw nsw i32 %i.hl, 26
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = load ptr, ptr %i.hh, align 8, !tbaa !88
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8
  %i.hr = invoke noundef i32 %i.hq(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i64 noundef %i.hn, i32 noundef 0)
          to label %.preheader135 unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !107 ; 0 uses

.preheader135:                                    ; preds = %bb.ai
  %i.hs = load i16, ptr %i.ak, align 2, !tbaa !117
  %.not175 = icmp eq i16 %i.hs, 0
  br i1 %.not175, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %.preheader135, %.preheader128.preheader.rtcont
  %.3164 = phi i32 [ %.rtmerge222, %.preheader128.preheader.rtcont ], [ 0, %.preheader135 ] ; 2 uses
  %.082163 = phi ptr [ %.rtmerge, %.preheader128.preheader.rtcont ], [ %i.bk, %.preheader135 ] ; 9 uses
  %i.ht = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !88
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = invoke noundef i32 %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.ht)
          to label %.preheader128.preheader unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !call_target !94 ; 5 uses

.preheader128.preheader:                          ; preds = %.lr.ph165
  %.082163221 = ptrtoaddr ptr %.082163 to i64     ; 2 uses
  %i.hy = add i64 %.082163221, 8
  %rt.bound0 = icmp ugt i64 %i.be, %.082163221
  %rt.bound1 = icmp ult i64 %i.bd, %i.hy
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.preheader128.preheader.rtscalar, label %.preheader128.preheader.rtvec, !prof !163

._crit_edge166:                                   ; preds = %.preheader128.preheader.rtcont, %.preheader135
  %i.hz = load ptr, ptr %i.g, align 8, !tbaa !86  ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !88
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef i32 %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i64 noundef %i.hg, i32 noundef 0)
          to label %bb.aj unwind label %.loopexit.split-lp121.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !107 ; 0 uses

bb.aj:                                            ; preds = %._crit_edge, %._crit_edge166
  %i.ie = add nuw nsw i32 %.076167, 8             ; 2 uses
  %i.if = load i16, ptr %i.ag, align 8, !tbaa !116
  %i.ig = zext i16 %i.if to i32
  %i.ih = icmp samesign ult i32 %i.ie, %i.ig
  br i1 %i.ih, label %bb.g, label %.preheader, !llvm.loop !156

.loopexit:                                        ; preds = %bb.p, %.loopexit.split-lp121
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  resume { ptr, i32 } %lpad.phi

bb.am:                                            ; preds = %bb.ak
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #16
  unreachable

bb.an:                                            ; preds = %bb.q
  unreachable

.preheader128.preheader.rtvec:                    ; preds = %.preheader128.preheader
  %i.ik = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.il = load <4 x i16>, ptr %.082163, align 2, !tbaa !97 ; 2 uses
  %i.im = zext <4 x i16> %i.il to <4 x i32>
  %i.in = shl nuw nsw <4 x i32> %i.im, splat (i32 2)
  %i.io = insertelement <4 x i32> poison, i32 %i.hx, i64 0
  %i.ip = shufflevector <4 x i32> %i.io, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.iq = lshr <4 x i32> %i.ip, <i32 0, i32 2, i32 4, i32 6>
  %i.ir = and <4 x i32> %i.iq, splat (i32 3)
  %i.is = or disjoint <4 x i32> %i.in, %i.ir      ; 2 uses
  %i.it = insertelement <4 x i16> poison, i16 %i.ik, i64 0
  %1 = icmp eq <4 x i16> %i.it, splat (i16 2672)
  %2 = shufflevector <4 x i1> %1, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.iu = icmp ult <4 x i16> %i.il, splat (i16 128)
  %i.iv = select <4 x i1> %2, <4 x i1> %i.iu, <4 x i1> zeroinitializer
  %i.iw = add nuw nsw <4 x i32> %i.is, splat (i32 2)
  %i.ix = select <4 x i1> %i.iv, <4 x i32> %i.iw, <4 x i32> %i.is
  %i.iy = trunc <4 x i32> %i.ix to <4 x i16>
  store <4 x i16> %i.iy, ptr %.082163, align 2, !tbaa !97
  %i.iz = add nuw nsw i32 %.3164, 1               ; 2 uses
  %i.ja = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.jb = zext i16 %i.ja to i32
  %i.jc = shl nuw nsw i32 %i.jb, 1
  %i.jd = icmp samesign ult i32 %i.iz, %i.jc
  br label %.preheader128.preheader.rtcont

.preheader128.preheader.rtscalar:                 ; preds = %.preheader128.preheader
  %i.je = load i16, ptr %.082163, align 2, !tbaa !97 ; 2 uses
  %i.jf = zext i16 %i.je to i32
  %i.jg = shl nuw nsw i32 %i.jf, 2
  %i.jh = and i32 %i.hx, 3
  %i.ji = or disjoint i32 %i.jg, %i.jh            ; 2 uses
  %i.jj = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.jk = icmp eq i16 %i.jj, 2672
  %i.jl = icmp ult i16 %i.je, 128
  %or.cond3.scalar = select i1 %i.jk, i1 %i.jl, i1 false
  %i.jm = add nuw nsw i32 %i.ji, 2
  %spec.select91.scalar = select i1 %or.cond3.scalar, i32 %i.jm, i32 %i.ji
  %i.jn = trunc i32 %spec.select91.scalar to i16
  store i16 %i.jn, ptr %.082163, align 2, !tbaa !97
  %i.jo = getelementptr inbounds nuw i8, ptr %.082163, i64 2 ; 2 uses
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !97 ; 2 uses
  %i.jq = zext i16 %i.jp to i32
  %i.jr = shl nuw nsw i32 %i.jq, 2
  %i.js = lshr i32 %i.hx, 2
  %i.jt = and i32 %i.js, 3
  %i.ju = or disjoint i32 %i.jr, %i.jt            ; 2 uses
  %i.jv = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.jw = icmp eq i16 %i.jv, 2672
  %i.jx = icmp ult i16 %i.jp, 128
  %or.cond3.1.scalar = select i1 %i.jw, i1 %i.jx, i1 false
  %i.jy = add nuw nsw i32 %i.ju, 2
  %spec.select91.1.scalar = select i1 %or.cond3.1.scalar, i32 %i.jy, i32 %i.ju
  %i.jz = trunc i32 %spec.select91.1.scalar to i16
  store i16 %i.jz, ptr %i.jo, align 2, !tbaa !97
  %i.ka = getelementptr inbounds nuw i8, ptr %.082163, i64 4 ; 2 uses
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !97 ; 2 uses
  %i.kc = zext i16 %i.kb to i32
  %i.kd = shl nuw nsw i32 %i.kc, 2
  %i.ke = lshr i32 %i.hx, 4
  %i.kf = and i32 %i.ke, 3
  %i.kg = or disjoint i32 %i.kd, %i.kf            ; 2 uses
  %i.kh = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.ki = icmp eq i16 %i.kh, 2672
  %i.kj = icmp ult i16 %i.kb, 128
  %or.cond3.2.scalar = select i1 %i.ki, i1 %i.kj, i1 false
  %i.kk = add nuw nsw i32 %i.kg, 2
  %spec.select91.2.scalar = select i1 %or.cond3.2.scalar, i32 %i.kk, i32 %i.kg
  %i.kl = trunc i32 %spec.select91.2.scalar to i16
  store i16 %i.kl, ptr %i.ka, align 2, !tbaa !97
  %i.km = getelementptr inbounds nuw i8, ptr %.082163, i64 6 ; 2 uses
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !97 ; 2 uses
  %i.ko = zext i16 %i.kn to i32
  %i.kp = shl nuw nsw i32 %i.ko, 2
  %i.kq = lshr i32 %i.hx, 6
  %i.kr = and i32 %i.kq, 3
  %i.ks = or disjoint i32 %i.kp, %i.kr            ; 2 uses
  %i.kt = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.ku = icmp eq i16 %i.kt, 2672
  %i.kv = icmp ult i16 %i.kn, 128
  %or.cond3.3.scalar = select i1 %i.ku, i1 %i.kv, i1 false
  %i.kw = add nuw nsw i32 %i.ks, 2
  %spec.select91.3.scalar = select i1 %or.cond3.3.scalar, i32 %i.kw, i32 %i.ks
  %i.kx = trunc i32 %spec.select91.3.scalar to i16
  store i16 %i.kx, ptr %i.km, align 2, !tbaa !97
  %i.ky = add nuw nsw i32 %.3164, 1               ; 2 uses
  %i.kz = load i16, ptr %i.ak, align 2, !tbaa !117
  %i.la = zext i16 %i.kz to i32
  %i.lb = shl nuw nsw i32 %i.la, 1
  %i.lc = icmp samesign ult i32 %i.ky, %i.lb
  br label %.preheader128.preheader.rtcont

.preheader128.preheader.rtcont:                   ; preds = %.preheader128.preheader.rtscalar, %.preheader128.preheader.rtvec
  %.rtmerge222 = phi i32 [ %i.iz, %.preheader128.preheader.rtvec ], [ %i.ky, %.preheader128.preheader.rtscalar ]
  %.rtmerge223 = phi i1 [ %i.jd, %.preheader128.preheader.rtvec ], [ %i.lc, %.preheader128.preheader.rtscalar ]
  %.rtmerge = getelementptr inbounds nuw i8, ptr %.082163, i64 8
  br i1 %.rtmerge223, label %.lr.ph165, label %._crit_edge166, !llvm.loop !157
}

declare void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef captures(none) initializes((0, 640)) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znwm(i64 noundef 65536) #17 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.b, i8 0, i64 65536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %1, i8 0, i64 640, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  store i32 2147483647, ptr %i.d, align 4, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1)
          to label %bb.b unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp, !call_target !114

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.j, 1
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.c, align 1, !tbaa !99
  %.not105 = icmp eq i8 %i.k, -40
  br i1 %.not105, label %.preheader133, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

.preheader133:                                    ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not109 = icmp ne i32 %2, 0                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 97
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.d

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit:           ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit: ; preds = %bb.p, %bb.j, %bb.g, %bb.d
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp: ; preds = %.loopexit, %bb.a
  %lpad.loopexit.split-lp135 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit ], [ %lpad.loopexit134, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp135, %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 65536) #18
  resume { ptr, i32 } %lpad.phi

bb.d:                                             ; preds = %.preheader133, %.critedge
  %.093 = phi i32 [ %i.al, %.critedge ], [ 0, %.preheader133 ] ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !86  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %bb.e unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit.loopexit.split-lp.loopexit, !call_target !169

bb.e:                                             ; preds = %bb.d
  %.not106 = icmp eq i32 %i.ak, 0
  br i1 %.not106, label %bb.f, label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.f:                                             ; preds = %bb.e
  %i.al = add nuw nsw i32 %.093, 1
  %exitcond146 = icmp eq i32 %.093, 1025
end_hunk_1
