Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/kodak_decoders?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN6LibRaw18kodak_262_load_rawEv:bb.a
bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.c)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_rethrow() #13
          to label %bb.t unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.g, %bb.e
  %.162 = phi i32 [ %.061102, %bb.e ], [ 0, %bb.g ] ; 2 uses
  %i.at = load i16, ptr %i.j, align 2, !tbaa !75  ; 2 uses
  %.not107 = icmp eq i16 %i.at, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.au = zext i16 %i.at to i32
  %i.av = sext i32 %.162 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv110 = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv.next111, %bb.p ] ; 4 uses
  %i.aw = phi i32 [ %i.au, %.lr.ph.preheader ], [ %i.cu, %bb.p ] ; 3 uses
  %.06499 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cs, %bb.p ] ; 5 uses
  %i.ax = add nuw nsw i32 %.06499, %.065101
  %i.ay = and i32 %i.ax, 1                        ; 3 uses
  %.not = icmp eq i32 %i.ay, 0                    ; 2 uses
  %i.az = xor i32 %i.aw, -1
  %i.ba = trunc nsw i64 %indvars.iv110 to i32     ; 3 uses
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = trunc i64 %indvars.iv110 to i32
  %i.bd = add i32 %i.bc, -2                       ; 3 uses
  %i.be = select i1 %.not, i32 %i.bb, i32 %i.bd
  %i.bf = shl nuw nsw i32 %i.aw, 1
  %i.bg = sub nsw i32 %i.ba, %i.bf
  %i.bh = add i32 %i.ba, 1
  %i.bi = sub i32 %i.bh, %i.aw
  %i.bj = select i1 %.not, i32 %i.bi, i32 %i.bg   ; 3 uses
  %.not71 = icmp samesign ugt i32 %.06499, %i.ay
  %spec.select = select i1 %.not71, i32 %i.be, i32 -1 ; 2 uses
  %i.bk = icmp slt i32 %spec.select, 0
  %.160 = select i1 %i.bk, i32 %i.bj, i32 %spec.select ; 3 uses
  %i.bl = icmp slt i32 %.160, 0
  %i.bm = icmp samesign ugt i32 %.06499, 1
  %or.cond = select i1 %i.bl, i1 %i.bm, i1 false  ; 2 uses
  %.2 = select i1 %or.cond, i32 %i.bd, i32 %.160  ; 2 uses
  %i.bn = icmp slt i32 %.2, 0
  br i1 %i.bn, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bo = icmp slt i32 %i.bj, 0
  %.057 = select i1 %i.bo, i32 %.160, i32 %i.bj
  %.158 = select i1 %or.cond, i32 %i.bd, i32 %.057
  %i.bp = zext nneg i32 %.2 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = zext i8 %i.br to i32
  %i.bt = sext i32 %.158 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !81
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bw, %i.bs
  %i.by = lshr i32 %i.bx, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %i.bz = phi i32 [ %i.by, %bb.l ], [ 0, %.lr.ph ]
  %i.ca = zext nneg i32 %i.ay to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !172
  %i.cd = invoke noundef i32 @_ZN6LibRaw10ljpeg_diffEPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.cc)
          to label %bb.n unwind label %.loopexit90

bb.n:                                             ; preds = %bb.m
  %i.ce = add nsw i32 %i.cd, %i.bz                ; 2 uses
  %i.cf = trunc i32 %i.ce to i8                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv110 ; 2 uses
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !81
  %.not72 = icmp ult i32 %i.ce, 256
  br i1 %.not72, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %._crit_edge119 unwind label %.loopexit90

._crit_edge119:                                   ; preds = %bb.o
  %.pre = load i8, ptr %i.cg, align 1, !tbaa !81
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge119, %bb.n
  %i.ch = phi i8 [ %.pre, %._crit_edge119 ], [ %i.cf, %bb.n ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !79
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.cm = load i16, ptr %i.j, align 2, !tbaa !75
  %i.cn = zext i16 %i.cm to i32
  %i.co = mul nuw nsw i32 %.065101, %i.cn
  %i.cp = add nuw nsw i32 %i.co, %.06499
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %i.cq
  store i16 %i.ck, ptr %i.cr, align 2, !tbaa !79
  %i.cs = add nuw nsw i32 %.06499, 1              ; 2 uses
  %i.ct = load i16, ptr %i.j, align 2, !tbaa !75
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = icmp samesign ult i32 %i.cs, %i.cu
  br i1 %i.cv, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !170

._crit_edge.loopexit:                             ; preds = %bb.p
  %i.cw = trunc nsw i64 %indvars.iv.next111 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.263.lcssa = phi i32 [ %.162, %bb.k ], [ %i.cw, %._crit_edge.loopexit ]
  %i.cx = add nuw nsw i32 %.065101, 1             ; 2 uses
  %i.cy = load i16, ptr %i.e, align 8, !tbaa !173
  %i.cz = zext i16 %i.cy to i32
  %i.da = icmp samesign ult i32 %i.cx, %i.cz
  br i1 %i.da, label %bb.d, label %.preheader, !llvm.loop !171

.loopexit:                                        ; preds = %bb.i, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit76 unwind label %bb.s

bb.r:                                             ; preds = %.preheader
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.c)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit unwind label %.loopexit85

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit76:                  ; preds = %.loopexit85, %.loopexit.split-lp86, %bb.q
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.q ], [ %lpad.loopexit87, %.loopexit85 ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp86 ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.q
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  tail call void @__clang_call_terminate(ptr %i.dc) #16
  unreachable

bb.t:                                             ; preds = %bb.j
  unreachable
}

declare noundef ptr @_ZN6LibRaw12make_decoderEPKh(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

declare noundef i32 @_ZN6LibRaw10ljpeg_diffEPt(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw18kodak_65000_decodeEPsi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [768 x i8], align 16              ; 4 uses
  %i.b = alloca [6 x i16], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !call_target !180
  %i.i = add i32 %2, 3                            ; 2 uses
  %i.j = and i32 %i.i, -4                         ; 3 uses
  %i.k = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = sext i32 %i.j to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !175

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n), !call_target !183 ; 2 uses
  %i.s = trunc i32 %i.r to i8                     ; 3 uses
  %i.t = and i8 %i.s, 15
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  store i8 %i.t, ptr %i.u, align 2, !tbaa !81
  %i.v = and i32 %i.r, 15
  %i.w = icmp samesign ugt i32 %i.v, 12
  br i1 %i.w, label %.lr.ph77, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %3 = lshr i8 %i.s, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %3, ptr %i.x, align 1, !tbaa !81
  %i.y = icmp ugt i8 %i.s, -49
  br i1 %i.y, label %.lr.ph77, label %bb.b

.lr.ph77:                                         ; preds = %.lr.ph, %bb.c
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef %i.h, i32 noundef 0), !call_target !105 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph77, %bb.d
  %indvars.iv87 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next88, %bb.d ] ; 2 uses
  call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.b, i32 noundef 6)
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv87
  %i.ag = load <2 x i16>, ptr %i.b, align 4, !tbaa !79 ; 2 uses
  %i.ah = load <4 x i16>, ptr %i.ae, align 4, !tbaa !79 ; 3 uses
  %i.ai = lshr <2 x i16> %i.ag, splat (i16 4)
  %i.aj = and <2 x i16> %i.ai, splat (i16 3840)
  %i.ak = shufflevector <4 x i16> %i.ah, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.al = lshr <2 x i16> %i.ak, splat (i16 8)
  %i.am = and <2 x i16> %i.al, splat (i16 240)
  %i.an = or disjoint <2 x i16> %i.am, %i.aj
  %i.ao = shufflevector <2 x i16> %i.an, <2 x i16> %i.ag, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x i16> %i.ah, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aq = shufflevector <8 x i16> %i.ao, <8 x i16> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.ar = lshr <4 x i16> %i.ah, <i16 poison, i16 poison, i16 12, i16 12>
  %i.as = shufflevector <4 x i16> %i.ar, <4 x i16> poison, <8 x i32> <i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <8 x i16> %i.as, <8 x i16> <i16 poison, i16 poison, i16 4095, i16 4095, i16 4095, i16 4095, i16 4095, i16 4095>, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.au = or disjoint <8 x i16> %i.aq, %i.at
  %i.av = and <8 x i16> %i.aq, %i.at
  %i.aw = shufflevector <8 x i16> %i.au, <8 x i16> %i.av, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i16> %i.aw, ptr %i.af, align 2, !tbaa !79
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 8 ; 2 uses
  %i.ax = trunc nuw i64 %indvars.iv.next88 to i32
  %i.ay = icmp sgt i32 %i.j, %i.ax
  br i1 %i.ay, label %bb.d, label %.loopexit, !llvm.loop !176

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.az = and i32 %i.i, 4
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba), !call_target !183
  %i.bf = shl i32 %i.be, 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !86
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bh), !call_target !183
  %i.bm = sext i32 %i.bl to i64
  %i.bn = add nsw i64 %i.bm, %i.bg
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.057 = phi i64 [ %i.bn, %bb.e ], [ 0, %._crit_edge ]
  %.054 = phi i32 [ 16, %bb.e ], [ 0, %._crit_edge ]
  br i1 %i.k, label %.lr.ph73.preheader, label %.loopexit

.lr.ph73.preheader:                               ; preds = %bb.f
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %bb.j
  %indvars.iv80 = phi i64 [ 0, %.lr.ph73.preheader ], [ %indvars.iv.next81, %bb.j ] ; 3 uses
  %.15570 = phi i32 [ %.054, %.lr.ph73.preheader ], [ %i.de, %bb.j ] ; 4 uses
  %.15869 = phi i64 [ %.057, %.lr.ph73.preheader ], [ %i.dd, %bb.j ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv80
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !81  ; 3 uses
  %i.bq = zext i8 %i.bp to i32                    ; 5 uses
  %i.br = icmp slt i32 %.15570, %i.bq
  br i1 %i.br, label %.preheader.preheader, label %bb.g

.preheader.preheader:                             ; preds = %.lr.ph73
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !86
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs), !call_target !183
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !86
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef i32 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx), !call_target !183
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !86
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc), !call_target !183
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !84  ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !86
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch), !call_target !183
  %i.cm = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cb, i64 1
  %i.co = insertelement <4 x i32> %i.cn, i32 %i.cg, i64 2
  %i.cp = insertelement <4 x i32> %i.co, i32 %i.cl, i64 3
  %i.cq = sext <4 x i32> %i.cp to <4 x i64>
  %i.cr = insertelement <4 x i32> poison, i32 %.15570, i64 0
  %i.cs = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ct = add nsw <4 x i32> %i.cs, <i32 8, i32 0, i32 24, i32 16>
  %i.cu = zext nneg <4 x i32> %i.ct to <4 x i64>
  %i.cv = shl <4 x i64> %i.cq, %i.cu
  %i.cw = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.cv)
  %op.rdx = add i64 %i.cw, %.15869
  %i.cx = add nsw i32 %.15570, 32
  br label %bb.g

bb.g:                                             ; preds = %.preheader.preheader, %.lr.ph73
  %.3 = phi i64 [ %op.rdx, %.preheader.preheader ], [ %.15869, %.lr.ph73 ] ; 2 uses
  %.256 = phi i32 [ %i.cx, %.preheader.preheader ], [ %.15570, %.lr.ph73 ]
  %i.cy = sub nsw i32 16, %i.bq
  %i.cz = lshr i32 65535, %i.cy
  %i.da = trunc i64 %.3 to i32
  %i.db = and i32 %i.cz, %i.da                    ; 4 uses
  %i.dc = zext nneg i8 %i.bp to i64
  %i.dd = ashr i64 %.3, %i.dc
  %i.de = sub nsw i32 %.256, %i.bq
  %.not64 = icmp eq i8 %i.bp, 0
  br i1 %.not64, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.df = add nsw i32 %i.bq, -1
  %i.dg = shl nuw i32 1, %i.df
  %i.dh = and i32 %i.db, %i.dg
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %notmask = shl nsw i32 -1, %i.bq
  %.neg = add nuw nsw i32 %notmask, 1
  %i.dj = add nsw i32 %.neg, %i.db
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ %i.dj, %bb.i ], [ %i.db, %bb.h ], [ %i.db, %bb.g ]
  %i.dk = trunc i32 %.0 to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv80
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !79
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph73, !llvm.loop !177

.loopexit:                                        ; preds = %bb.j, %bb.d, %bb.f
  %.060 = phi i32 [ 1, %bb.d ], [ 0, %bb.f ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.060
}

declare void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20kodak_65000_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [272 x i16], align 16             ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !76
  %.not36 = icmp eq i16 %i.d, 0
  br i1 %.not36, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph34, %._crit_edge31
  %.02232 = phi i32 [ 0, %.lr.ph34 ], [ %i.ba, %._crit_edge31 ] ; 3 uses
  tail call void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.j = load i16, ptr %i.e, align 2, !tbaa !74   ; 2 uses
  %.not37 = icmp eq i16 %i.j, 0
  br i1 %.not37, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.b, %._crit_edge
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %._crit_edge ], [ 0, %bb.b ] ; 5 uses
  %.in = phi i16 [ %i.ax, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = zext i16 %.in to i32
  store i32 0, ptr %i.f, align 4, !tbaa !97
  store i32 0, ptr %i.b, align 4, !tbaa !97
  %i.l = trunc nuw nsw i64 %indvars.iv44 to i32
  %i.m = sub nuw nsw i32 %i.k, %i.l
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.m, i32 256) ; 2 uses
  %i.n = call noundef i32 @_ZN6LibRaw18kodak_65000_decodeEPsi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.a, i32 noundef %spec.select)
  %i.o = zext i16 %.in to i64
  %.not38 = icmp eq i64 %indvars.iv44, %i.o
  br i1 %.not38, label %._crit_edge, label %.lr.ph
end_hunk_0
