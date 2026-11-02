Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/decoders_dcraw?download=true
inline.NumInlined: 216
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN6LibRaw16nikon_read_curveEv:bb.a
  call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 381836
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !120
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = and i32 %i.ae, 32767                    ; 4 uses
  %i.ag = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 6 uses
  %i.ah = zext nneg i16 %i.ag to i32
  %i.ai = icmp ugt i16 %i.ag, 1
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.rhs.trunc = add i16 %i.ag, -1
  %.lhs.trunc = trunc nuw nsw i32 %i.af to i16
  %i.aj = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.aj to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.048 = phi i32 [ %.zext, %bb.d ], [ %i.af, %bb.c ] ; 4 uses
  %i.ak = icmp eq i32 %i.t, 68
  br i1 %i.ak, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.al = icmp eq i32 %i.v, 32
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i32 %i.v, 64
  %i.an = icmp samesign ugt i32 %.048, 3
  %or.cond6 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond6, label %bb.i, label %bb.l

bb.h:                                             ; preds = %bb.f
  %.old5.not = icmp eq i32 %.048, 0
  br i1 %.old5.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ao = icmp eq i32 %i.v, 64                    ; 2 uses
  %i.ap = lshr i32 %.048, 2
  %i.aq = lshr i32 %i.af, 2
  %.1 = select i1 %i.ao, i32 %i.ap, i32 %.048     ; 5 uses
  %.0 = select i1 %i.ao, i32 %i.aq, i32 %i.af     ; 2 uses
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5600
  %i.as = zext nneg i32 %.1 to i64
  %wide.trip.count = zext i16 %i.ag to i64
  br label %bb.j

.preheader:                                       ; preds = %bb.j, %bb.i
  %.not57 = icmp eq i32 %.0, 0
  br i1 %.not57, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 3 uses
  %wide.trip.count62 = zext nneg i32 %.0 to i64
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.au = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.av = mul nuw nsw i64 %indvars.iv, %i.as
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.av
  store i16 %i.au, ptr %i.aw, align 2, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.j, !llvm.loop !181

bb.k:                                             ; preds = %.lr.ph56, %bb.k
  %indvars.iv59 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next60, %bb.k ] ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv59 to i32  ; 2 uses
  %i.ay = urem i32 %i.ax, %.1                     ; 3 uses
  %i.az = sub nuw nsw i32 %i.ax, %i.ay            ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !86
  %i.bd = zext i16 %i.bc to i32
  %i.be = sub nuw nsw i32 %.1, %i.ay
  %i.bf = mul nuw nsw i32 %i.be, %i.bd
  %i.bg = add nuw nsw i32 %i.az, %.1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !86
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nuw nsw i32 %i.ay, %i.bk
  %i.bm = add nuw nsw i32 %i.bl, %i.bf
  %i.bn = udiv i32 %i.bm, %.1
  %i.bo = trunc i32 %i.bn to i16
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv59
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !86
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.loopexit, label %bb.k, !llvm.loop !182

bb.l:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.bq = icmp ne i32 %i.t, 70
  %i.br = icmp ult i16 %i.ag, 16386
  %or.cond10 = and i1 %i.bq, %i.br
  br i1 %or.cond10, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5600
  call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.bs, i32 noundef %i.ah)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw14nikon_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [2 x [2 x i16]], align 2          ; 5 uses
  %i.d = alloca [2 x i16], align 2                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381768 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !117
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef %i.h, i32 noundef 0) ; 0 uses
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 2 uses
  %i.w = and i32 %i.q, 65535                      ; 3 uses
  %i.x = icmp eq i32 %i.w, 73
  %i.y = and i32 %i.v, 65535
  %i.z = icmp eq i32 %i.y, 88
  %or.cond = or i1 %i.x, %i.z
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 2110, i32 noundef 1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.af = icmp eq i32 %i.w, 70
  %spec.select = select i1 %i.af, i64 2, i64 0    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 381836 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !120
  %i.ai = icmp eq i32 %i.ah, 14
  %i.aj = add nuw nsw i64 %spec.select, 3
  %.1 = select i1 %i.ai, i64 %i.aj, i64 %spec.select
  call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.c, i32 noundef 4)
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !120
  %i.al = shl nuw i32 1, %i.ak
  %i.am = and i32 %i.al, 32767                    ; 4 uses
  %i.an = icmp eq i32 %i.w, 68
  br i1 %i.an, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %trunc = trunc i32 %i.v to i16
  switch i16 %trunc, label %bb.g [
    i16 64, label %bb.e
    i16 32, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr i32 %i.am, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.067 = phi i32 [ %i.ao, %bb.e ], [ %i.am, %bb.d ]
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !117
  %i.ar = add nsw i64 %i.aq, 562
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i32 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %i.ar, i32 noundef 0) ; 0 uses
  %i.aw = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ax = zext i16 %i.aw to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.c
  %.168 = phi i32 [ %.067, %bb.f ], [ %i.am, %bb.d ], [ %i.am, %bb.c ] ; 3 uses
  %.065 = phi i32 [ %i.ax, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.az = icmp samesign ugt i32 %.168, 2
  br i1 %i.az, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.g
  %1 = zext nneg i32 %.168 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.ba = getelementptr [2 x i8], ptr %i.ay, i64 %indvars.iv ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !86
  %i.bd = getelementptr i8, ptr %i.ba, i64 -2
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !86
  %i.bf = icmp eq i16 %i.bc, %i.be
  br i1 %i.bf, label %bb.h, label %.critedge.loopexit.split.loop.exit171

bb.h:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bg = icmp sgt i64 %indvars.iv, 3
  br i1 %i.bg, label %.lr.ph, label %.critedge, !llvm.loop !183

.critedge.loopexit.split.loop.exit171:            ; preds = %.lr.ph
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %.critedge.loopexit.split.loop.exit171, %bb.g
  %.2.lcssa = phi i32 [ %.168, %bb.g ], [ %2, %.critedge.loopexit.split.loop.exit171 ], [ 2, %bb.h ]
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw14nikon_load_rawEvE10nikon_tree, i64 %.1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !87
  %i.bi = call noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !119
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !83
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef i32 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i64 noundef %i.bl, i32 noundef 0) ; 0 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 10 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 0, ptr %i.bs, align 8, !tbaa !78
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 0, ptr %i.bt, align 4, !tbaa !79
  store i32 0, ptr %i.br, align 8, !tbaa !80
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !112
  %.not137 = icmp eq i16 %i.bv, 0
  br i1 %.not137, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %.critedge
  %.not = icmp ne i32 %.065, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 381848 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 193784
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph134, %._crit_edge
  %.064133 = phi i32 [ 0, %.lr.ph134 ], [ %i.ic, %._crit_edge ] ; 4 uses
  %.3132 = phi i32 [ %.2.lcssa, %.lr.ph134 ], [ %.4, %._crit_edge ] ; 2 uses
  %.069131 = phi i16 [ 0, %.lr.ph134 ], [ %.170, %._crit_edge ]
  %.071130 = phi ptr [ %i.bi, %.lr.ph134 ], [ %.273, %._crit_edge ] ; 3 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.ca = icmp eq i32 %.064133, %.065
  %or.cond82 = and i1 %.not, %i.ca
  br i1 %or.cond82, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.071130)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !87
  %i.cb = invoke noundef ptr @_ZN6LibRaw16make_decoder_refEPPKh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cc = add nsw i32 %.3132, 32
  br label %bb.o

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph125, %bb.ab, %bb.s, %.lr.ph122, %bb.am, %bb.w, %bb.af
  %lpad.loopexit.split-lp178 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.k, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.172 = phi ptr [ %.071130, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.273, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp ]
  %i.cd = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.ce = call ptr @__cxa_begin_catch(ptr %i.cd) #15 ; 0 uses
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.172)
          to label %bb.n unwind label %bb.ao

bb.n:                                             ; preds = %.loopexit.split-lp
  invoke void @__cxa_rethrow() #16
          to label %bb.ar unwind label %bb.ao

bb.o:                                             ; preds = %bb.m, %bb.j
  %.273 = phi ptr [ %i.cb, %bb.m ], [ %.071130, %bb.j ] ; 5 uses
  %.170 = phi i16 [ 16, %bb.m ], [ %.069131, %bb.j ] ; 2 uses
  %.4 = phi i32 [ %i.cc, %bb.m ], [ %.3132, %bb.j ] ; 2 uses
  %i.cf = load i16, ptr %i.bx, align 2, !tbaa !94
  %.not138 = icmp eq i16 %i.cf, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %.273, i64 2
  %i.ch = and i32 %.064133, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ci
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph129, %bb.an
  %indvars.iv.a = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next.a, %bb.an ] ; 7 uses
  %i.ck = load i16, ptr %.273, align 2, !tbaa !86 ; 2 uses
  %i.cl = zext i16 %i.ck to i32                   ; 3 uses
  %i.cm = add i16 %i.ck, -26
  %or.cond106 = icmp ult i16 %i.cm, -25
  br i1 %or.cond106, label %_ZN6LibRaw10getbithuffEiPt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !71 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !79 ; 3 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %_ZN6LibRaw10getbithuffEiPt.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !78
  %.not25.i = icmp eq i32 %i.cs, 0
  br i1 %.not25.i, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ct = icmp samesign ult i32 %i.cp, %i.cl
  br i1 %i.ct, label %.lr.ph122, label %.critedge.loopexit.i

.lr.ph122:                                        ; preds = %.lr.ph.i, %bb.t
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !83
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !96 ; 3 uses

.noexc:                                           ; preds = %.lr.ph122
  %.not21.i = icmp eq i32 %i.cy, -1
  br i1 %.not21.i, label %..critedge.loopexit_crit_edge.i, label %bb.r

..critedge.loopexit_crit_edge.i:                  ; preds = %.noexc
  %.pre.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !71
  br label %.critedge.loopexit.i

bb.r:                                             ; preds = %.noexc
  %i.cz = load i32, ptr %i.by, align 8, !tbaa !84
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = icmp eq i32 %i.cy, 255
  %or.cond.i = and i1 %i.db, %i.da
  br i1 %or.cond.i, label %bb.s, label %.critedge24.i

bb.s:                                             ; preds = %bb.r
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke noundef i32 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp, !inline_history !96

.noexc85:                                         ; preds = %bb.s
  %i.dh = icmp ne i32 %i.dg, 0                    ; 2 uses
  %i.di = zext i1 %i.dh to i32
  %i.dj = load ptr, ptr %i.bq, align 8, !tbaa !71 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 %i.di, ptr %i.dk, align 8, !tbaa !78
  br i1 %i.dh, label %.critedge.loopexit.i, label %bb.t

.critedge24.i:                                    ; preds = %bb.r
  %i.dl = load ptr, ptr %i.bq, align 8, !tbaa !71 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 0, ptr %i.dm, align 8, !tbaa !78
  br label %bb.t

bb.t:                                             ; preds = %.critedge24.i, %.noexc85
  %i.dn = phi ptr [ %i.dl, %.critedge24.i ], [ %i.dj, %.noexc85 ] ; 4 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !80
  %i.dp = shl i32 %i.do, 8
  %i.dq = and i32 %i.cy, 255
  %i.dr = or disjoint i32 %i.dp, %i.dq
  store i32 %i.dr, ptr %i.dn, align 8, !tbaa !80
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !79
  %i.du = add nsw i32 %i.dt, 8                    ; 2 uses
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !79
  %i.dv = icmp slt i32 %i.du, %i.cl
  br i1 %i.dv, label %.lr.ph122, label %.critedge.loopexit.i, !llvm.loop !0

.critedge.loopexit.i:                             ; preds = %bb.t, %.noexc85, %.lr.ph.i, %..critedge.loopexit_crit_edge.i
  %.pre.i = phi ptr [ %.pre.pre.i, %..critedge.loopexit_crit_edge.i ], [ %i.cn, %.lr.ph.i ], [ %i.dn, %bb.t ], [ %i.dj, %.noexc85 ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %.pre29.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !79
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %i.dw = phi i32 [ %.pre29.i, %.critedge.loopexit.i ], [ %i.cp, %.preheader.i ] ; 3 uses
  %i.dx = phi ptr [ %.pre.i, %.critedge.loopexit.i ], [ %i.cn, %.preheader.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = icmp eq i32 %i.dw, 0
  br i1 %i.dz, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.critedge.i
  %i.ea = load i32, ptr %i.dx, align 8, !tbaa !80
  %i.eb = sub nsw i32 32, %i.dw
  %i.ec = shl i32 %i.ea, %i.eb
  %i.ed = sub nuw nsw i32 32, %i.cl
  %i.ee = lshr i32 %i.ec, %i.ed
end_hunk_0
