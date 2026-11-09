Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/pana8?download=true
inline.NumInlined: 252
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6LibRaw17pana8_decode_loopEPv:bb.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw18pana8_decode_stripEPvi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.pana8_bufio_t, align 8       ; 13 uses
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ugt i32 %2, 4
  %or.cond3 = or i1 %i.a, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 382068
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = icmp samesign ugt i32 %2, %i.e
  %or.cond = select i1 %or.cond3, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 382124
  %i.i = zext nneg i32 %2 to i64                  ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !105
  %i.l = add i32 %i.k, 7
  %i.m = lshr i32 %i.l, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 382072
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !104
  %i.r = tail call noalias noundef nonnull dereferenceable(819200) ptr @_Znwm(i64 noundef 819200) #16 ; 3 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 819200 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !150
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(819200) %i.r, i8 0, i64 819200, i1 false)
  store ptr %i.s, ptr %i.u, align 8, !tbaa !151
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.n, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.q, ptr %i.w, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i32 %i.m, ptr %i.y, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 382144
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.i
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !103
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 382154
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !103
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 382112
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !103
  %i.ak = invoke noundef zeroext i1 @_ZN13pana8_param_t8DecodeC8ER13pana8_bufio_tjjP6LibRawt(ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(60) %3, i32 noundef %i.ac, i32 noundef %i.ag, ptr noundef nonnull %0, i16 noundef zeroext %i.aj)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.al = xor i1 %i.ak, true
  %i.am = zext i1 %i.al to i32
  %i.an = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZN13pana8_bufio_tD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !150
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #15
  br label %_ZN13pana8_bufio_tD2Ev.exit

_ZN13pana8_bufio_tD2Ev.exit:                      ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i23, label %_ZN13pana8_bufio_tD2Ev.exit24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.t, align 8, !tbaa !150
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #15
  br label %_ZN13pana8_bufio_tD2Ev.exit24

_ZN13pana8_bufio_tD2Ev.exit24:                    ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %i.as

bb.g:                                             ; preds = %bb.a, %_ZN13pana8_bufio_tD2Ev.exit
  %.0 = phi i32 [ %i.am, %_ZN13pana8_bufio_tD2Ev.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13pana8_param_t8DecodeC8ER13pana8_bufio_tjjP6LibRawt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i16 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i32 %2, 1                           ; 3 uses
  %i.b = lshr i32 %3, 1                           ; 2 uses
  %i.c = icmp ne i32 %i.a, 0
  %i.d = icmp ne i32 %i.b, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %_ZNSt6vectorIhSaIhEED2Ev.exit287

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %i.g = add i32 %i.f, 7                          ; 2 uses
  %i.h = and i32 %i.g, -8
  %i.i = icmp ult i32 %i.h, 9
  br i1 %i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit287, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !119
  %i.l = load i32, ptr %0, align 8, !tbaa !159
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = load <4 x i32>, ptr %i.m, align 4, !tbaa !105
  %i.o = and <4 x i32> %i.n, splat (i32 65535)
  %i.p = lshr i32 %i.k, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !107  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.w, 65535
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !110 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ugt i64 %i.ae, 131070
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !122
  %.not = icmp eq i32 %i.ah, 0
  %spec.select340 = select i1 %.not, ptr %i.ab, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi ptr [ null, %bb.c ], [ %spec.select340, %bb.d ] ; 13 uses
  %i.aj = lshr i32 %i.g, 3                        ; 3 uses
  %i.ak = shl i32 %i.a, 2                         ; 2 uses
  %i.al = shl i32 %i.a, 4                         ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = icmp slt i32 %i.al, 0
  br i1 %i.an, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %.noexc266

.noexc266:                                        ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #16 ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ao, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.ar = add nsw i64 %i.am, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i8 0, i64 %i.ar, i1 false)
  %i.as = ptrtoint ptr %i.ap to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %.noexc266, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10294.0 = phi i64 [ %i.as, %.noexc266 ], [ 0, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0290.0 = phi ptr [ %i.ao, %.noexc266 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 18 uses
  %.not260.not374 = icmp sgt i32 %i.ak, 0
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 193784
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.az = zext i16 %5 to i64                      ; 3 uses
  %.not261 = icmp eq ptr %i.ai, null
  %i.ba = add i32 %2, -1                          ; 2 uses
  %.not410 = icmp eq i32 %i.ba, 0                 ; 2 uses
  %i.bb = add i32 %2, -2
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 4
  %i.bf = getelementptr i8, ptr %.sroa.0290.0, i64 %i.be
  %scevgep = getelementptr i8, ptr %i.bf, i64 14  ; 4 uses
  %i.bg = shl nuw nsw i64 %i.az, 1                ; 3 uses
  %i.bh = shl nuw nsw i64 %i.bd, 2
  %6 = add nuw nsw i64 %i.bh, %i.bg               ; 2 uses
  %7 = add nuw nsw i64 %6, 4                      ; 2 uses
  %8 = add nuw nsw i64 %i.bg, 2                   ; 2 uses
  %9 = add nuw nsw i64 %6, 2                      ; 2 uses
  %i.bi = add i32 %2, -2                          ; 2 uses
  %i.bj = lshr i32 %i.bi, 1                       ; 2 uses
  %i.bk = add nuw i32 %i.bj, 1                    ; 2 uses
  %i.bl = icmp eq i32 %i.bj, 0
  %unroll_iter = and i32 %i.bk, -2
  %i.bm = and i32 %i.bi, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bm, 0
  %lcmp.mod547 = trunc i32 %i.bk to i1
  %i.bn = add i32 %2, -2
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = add nuw i32 %i.bo, 1                    ; 2 uses
  %i.bq = add i32 %2, -50
  %or.cond539 = icmp ult i32 %i.bq, 536870864
  %i.br = and i32 %i.bp, 7                        ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  %i.bt = select i1 %i.bs, i32 8, i32 %i.br
  %n.vec = sub i32 %i.bp, %i.bt                   ; 2 uses
  %i.bu = shl i32 %n.vec, 1
  br label %.preheader344

.preheader344:                                    ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %.loopexit
  %.0202409 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %i.mq, %.loopexit ] ; 2 uses
  %.0203408 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.1204.lcssa, %.loopexit ] ; 2 uses
  %.0210407 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.1211.lcssa, %.loopexit ] ; 2 uses
  %.0216406 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.1217.lcssa, %.loopexit ] ; 2 uses
  %.0229405 = phi i32 [ %i.p, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.1230.lcssa, %.loopexit ] ; 2 uses
  %i.bv = phi <4 x i32> [ %i.o, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %i.gy, %.loopexit ] ; 6 uses
  br i1 %.not260.not374, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader344
  %i.bw = extractelement <4 x i32> %i.bv, i64 3
  %i.bx = extractelement <4 x i32> %i.bv, i64 2
  %i.by = extractelement <4 x i32> %i.bv, i64 1
  %i.bz = extractelement <4 x i32> %i.bv, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %.0201389 = phi i32 [ %i.gx, %bb.ai ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.1204386 = phi i32 [ %.4207, %bb.ai ], [ %.0203408, %.lr.ph.preheader ] ; 9 uses
  %.1211385 = phi i32 [ %i.gt, %bb.ai ], [ %.0210407, %.lr.ph.preheader ] ; 5 uses
  %.1217384 = phi i64 [ %i.gr, %bb.ai ], [ %.0216406, %.lr.ph.preheader ]
  %.1230383 = phi i32 [ %.2231, %bb.ai ], [ %.0229405, %.lr.ph.preheader ]
  %.sroa.0.0382 = phi i32 [ %.sroa.0.1, %bb.ai ], [ %i.bz, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.0381 = phi i32 [ %.sroa.7.1, %bb.ai ], [ %i.by, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.0380 = phi i32 [ %.sroa.10.1, %bb.ai ], [ %i.bx, %.lr.ph.preheader ] ; 2 uses
  %.sroa.13.0379 = phi i32 [ %.sroa.13.1, %bb.ai ], [ %i.bw, %.lr.ph.preheader ] ; 2 uses
  %i.ca = phi <4 x i32> [ %i.gw, %bb.ai ], [ %i.bv, %.lr.ph.preheader ]
  %i.cb = icmp slt i32 %.1211385, 0
  br i1 %i.cb, label %bb.f, label %bb.n

bb.f:                                             ; preds = %.lr.ph
  %i.cc = add i32 %.1204386, 1                    ; 4 uses
  %.not251 = icmp slt i32 %i.cc, %i.aj
  br i1 %.not251, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cd = add nsw i32 %.1211385, 64               ; 3 uses
  %i.ce = zext i32 %.1204386 to i64               ; 5 uses
  %i.cf = load i64, ptr %i.at, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp sle i64 %i.cf, %i.ce
  %i.cg = load i64, ptr %i.au, align 8            ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, %i.ce
  %or.cond.i = select i1 %.not.i, i1 %i.ch, i1 false
  br i1 %or.cond.i, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ci = load ptr, ptr %i.av, align 8, !tbaa !23
  %.not11.i = icmp eq ptr %i.ci, null
  br i1 %.not11.i, label %_ZN13pana8_bufio_t8getQWordEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %.1204386)
          to label %.noexc267 unwind label %bb.m

.noexc267:                                        ; preds = %bb.i
  %i.cj = load i64, ptr %i.at, align 8, !tbaa !22 ; 3 uses
  %.not12.i = icmp sle i64 %i.cj, %i.ce
  %.pre = load i64, ptr %i.au, align 8            ; 3 uses
  %i.ck = icmp sgt i64 %.pre, %i.ce
  %or.cond444 = select i1 %.not12.i, i1 %i.ck, i1 false
  br i1 %or.cond444, label %.sink.split.i, label %_ZN13pana8_bufio_t8getQWordEj.exit

.sink.split.i:                                    ; preds = %.noexc267, %bb.g
  %i.cl = phi i64 [ %i.cg, %bb.g ], [ %.pre, %.noexc267 ]
  %.sink.i = phi i64 [ %i.cf, %bb.g ], [ %i.cj, %.noexc267 ] ; 2 uses
  %i.cm = sub nsw i64 %i.ce, %.sink.i
  %i.cn = load ptr, ptr %1, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !39
  br label %_ZN13pana8_bufio_t8getQWordEj.exit

_ZN13pana8_bufio_t8getQWordEj.exit:               ; preds = %.sink.split.i, %.noexc267, %bb.h
  %i.cq = phi i64 [ %i.cl, %.sink.split.i ], [ %.pre, %.noexc267 ], [ %i.cg, %bb.h ]
  %i.cr = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.cj, %.noexc267 ], [ %i.cf, %bb.h ] ; 2 uses
  %.0.i = phi i64 [ %i.cp, %.sink.split.i ], [ 0, %.noexc267 ], [ 0, %bb.h ]
  %i.cs = zext i32 %i.cc to i64                   ; 5 uses
  %.not.i268 = icmp sle i64 %i.cr, %i.cs
  %i.ct = icmp sgt i64 %i.cq, %i.cs
  %or.cond.i269 = select i1 %.not.i268, i1 %i.ct, i1 false
  br i1 %or.cond.i269, label %.sink.split.i273, label %bb.j

bb.j:                                             ; preds = %_ZN13pana8_bufio_t8getQWordEj.exit
  %i.cu = load ptr, ptr %i.av, align 8, !tbaa !23
  %.not11.i270 = icmp eq ptr %i.cu, null
  br i1 %.not11.i270, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %i.cc)
          to label %.noexc275 unwind label %bb.m

.noexc275:                                        ; preds = %bb.k
  %i.cv = load i64, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not12.i271 = icmp sgt i64 %i.cv, %i.cs
  br i1 %.not12.i271, label %.thread, label %bb.l

bb.l:                                             ; preds = %.noexc275
  %i.cw = load i64, ptr %i.au, align 8, !tbaa !41
  %i.cx = icmp sgt i64 %i.cw, %i.cs
  br i1 %i.cx, label %.sink.split.i273, label %.thread

.sink.split.i273:                                 ; preds = %bb.l, %_ZN13pana8_bufio_t8getQWordEj.exit
  %.sink.i274 = phi i64 [ %i.cr, %_ZN13pana8_bufio_t8getQWordEj.exit ], [ %i.cv, %bb.l ]
  %i.cy = sub nsw i64 %i.cs, %.sink.i274
  %i.cz = load ptr, ptr %1, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.j, %.noexc275, %bb.l, %.sink.split.i273
  %.0.i272 = phi i64 [ 0, %bb.l ], [ 0, %.noexc275 ], [ 0, %bb.j ], [ %i.db, %.sink.split.i273 ]
  %i.dc = zext nneg i32 %i.cd to i64
  %i.dd = lshr i64 %.0.i272, %i.dc
  %i.de = and i32 %i.cd, 255
  %i.df = sub nsw i32 64, %i.de
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl i64 %.0.i, %i.dg
  %i.di = or i64 %i.dd, %i.dh
  %i.dj = icmp ult i32 %.1204386, %i.aj
  %spec.select = select i1 %i.dj, i32 %i.cc, i32 %.1204386
  br label %bb.s

bb.m:                                             ; preds = %bb.q, %bb.k, %bb.i
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %.2224 = extractvalue { ptr, i32 } %i.dk, 0
  %i.dl = tail call ptr @__cxa_begin_catch(ptr %.2224) #13 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.critedge unwind label %bb.aj

bb.n:                                             ; preds = %.lr.ph
  %.not249 = icmp ult i32 %.1204386, %i.aj
  br i1 %.not249, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.dm = zext nneg i32 %.1204386 to i64          ; 5 uses
  %i.dn = load i64, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not.i277 = icmp sle i64 %i.dn, %i.dm
  %i.do = load i64, ptr %i.au, align 8
  %i.dp = icmp sgt i64 %i.do, %i.dm
  %or.cond.i278 = select i1 %.not.i277, i1 %i.dp, i1 false
  br i1 %or.cond.i278, label %.sink.split.i282, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr %i.av, align 8, !tbaa !23
  %.not11.i279 = icmp eq ptr %i.dq, null
  br i1 %.not11.i279, label %_ZN13pana8_bufio_t8getQWordEj.exit285, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %.1204386)
          to label %.noexc284 unwind label %bb.m

.noexc284:                                        ; preds = %bb.q
  %i.dr = load i64, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not12.i280 = icmp sgt i64 %i.dr, %i.dm
  br i1 %.not12.i280, label %_ZN13pana8_bufio_t8getQWordEj.exit285, label %bb.r

bb.r:                                             ; preds = %.noexc284
  %i.ds = load i64, ptr %i.au, align 8, !tbaa !41
  %i.dt = icmp sgt i64 %i.ds, %i.dm
  br i1 %i.dt, label %.sink.split.i282, label %_ZN13pana8_bufio_t8getQWordEj.exit285

.sink.split.i282:                                 ; preds = %bb.r, %bb.o
  %.sink.i283 = phi i64 [ %i.dn, %bb.o ], [ %i.dr, %bb.r ]
  %i.du = sub nsw i64 %i.dm, %.sink.i283
  %i.dv = load ptr, ptr %1, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !39
  br label %_ZN13pana8_bufio_t8getQWordEj.exit285

_ZN13pana8_bufio_t8getQWordEj.exit285:            ; preds = %.sink.split.i282, %bb.r, %.noexc284, %bb.p
  %.0.i281 = phi i64 [ 0, %bb.r ], [ 0, %.noexc284 ], [ 0, %bb.p ], [ %i.dx, %.sink.split.i282 ]
  %i.dy = zext nneg i32 %.1211385 to i64
  %i.dz = lshr i64 %.0.i281, %i.dy
  %i.ea = or i64 %i.dz, %.1217384
  %i.eb = icmp eq i32 %.1211385, 0                ; 2 uses
  %i.ec = zext i1 %i.eb to i32
  %spec.store.select = select i1 %i.eb, i32 64, i32 %.1211385
  %i.ed = add nuw nsw i32 %.1204386, %i.ec
  br label %bb.s

bb.s:                                             ; preds = %.thread, %_ZN13pana8_bufio_t8getQWordEj.exit285
  %.3213 = phi i32 [ %i.cd, %.thread ], [ %spec.store.select, %_ZN13pana8_bufio_t8getQWordEj.exit285 ]
  %.4207 = phi i32 [ %spec.select, %.thread ], [ %i.ed, %_ZN13pana8_bufio_t8getQWordEj.exit285 ] ; 2 uses
  %.1200 = phi i64 [ %i.di, %.thread ], [ %i.ea, %_ZN13pana8_bufio_t8getQWordEj.exit285 ] ; 3 uses
  br i1 %i.x, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ee = lshr i64 %.1200, 48
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !37
  %i.eh = zext i8 %i.eg to i32
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ei = tail call noundef i32 @_ZN13pana8_param_t7GetDBitEm(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef %.1200)
  %i.ej = load i32, ptr %i.j, align 4, !tbaa !119
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2231 = phi i32 [ %.1230383, %bb.t ], [ %i.ej, %bb.u ] ; 6 uses
  %.0198 = phi i32 [ %i.eh, %bb.t ], [ %i.ei, %bb.u ] ; 7 uses
  %i.ek = zext nneg i32 %.0198 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !105 ; 2 uses
  %i.en = lshr i32 %i.em, 24                      ; 2 uses
  %i.eo = and i32 %i.en, 31                       ; 7 uses
  %i.ep = lshr i32 %i.em, 16
  %i.eq = and i32 %i.ep, 31                       ; 2 uses
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = shl i64 %.1200, %i.er                   ; 3 uses
  %i.et = sub nsw i32 %.0198, %i.eo               ; 2 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = sub nsw i32 %i.eo, %.0198
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = lshr i64 %i.es, %i.ew
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = and i32 %i.ey, 65535
  %i.fa = shl i32 %i.ez, %i.en                    ; 2 uses
  %i.fb = icmp slt i32 %i.et, 1
  %i.fc = and i32 %i.fa, -65536
  %spec.select263 = select i1 %i.fb, i32 %i.fc, i32 %i.fa ; 3 uses
  %i.fd = icmp slt i64 %i.es, 0
  br i1 %i.fd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fe = and i32 %spec.select263, 65535
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %.not255 = icmp eq i32 %.0198, 0
  br i1 %.not255, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ff = shl nsw i32 -1, %.0198                  ; 2 uses
  %.not256 = icmp eq i32 %i.eo, 0
  br i1 %.not256, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = and i32 %spec.select263, 65535
  %i.fh = add nsw i32 %i.fg, %i.ff
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.fi = add nuw nsw i32 %i.ff, 1
  %i.fj = add nsw i32 %i.fi, %spec.select263
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.z, %bb.aa, %bb.w
  %.1195 = phi i32 [ %i.fe, %bb.w ], [ %i.fj, %bb.aa ], [ %i.fh, %bb.z ], [ 0, %bb.x ]
  %.not257 = icmp eq i32 %i.eo, 0
  %i.fk = add nsw i32 %i.eo, -1
  %i.fl = shl nuw nsw i32 1, %i.fk
  %i.fm = select i1 %.not257, i32 0, i32 %i.fl
  %i.fn = lshr i32 %.0201389, 2
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0290.0, i64 %i.fp ; 7 uses
  %i.fr = add nsw i32 %.1195, %i.fm               ; 4 uses
  %i.fs = and i32 %.0201389, 3
  switch i32 %i.fs, label %default.unreachable [
    i32 2, label %bb.ac
    i32 1, label %bb.ad
    i32 0, label %bb.ae
    i32 3, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ft = add i32 %i.fr, %.sroa.7.0381            ; 2 uses
  %i.fu = icmp slt i32 %i.ft, 0
  %i.fv = tail call i32 @llvm.smin.i32(i32 %i.ft, i32 %.2231)
  %i.fw = select i1 %i.fu, i32 0, i32 %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !105
  br label %.thread299

bb.ad:                                            ; preds = %bb.ab
  %i.fy = add i32 %i.fr, %.sroa.10.0380           ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 0
  %i.ga = tail call i32 @llvm.smin.i32(i32 %i.fy, i32 %.2231)
  %i.gb = select i1 %i.fz, i32 0, i32 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !105
  br label %.thread299

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.gd = add i32 %i.fr, %.sroa.0.0382            ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = tail call i32 @llvm.smin.i32(i32 %i.gd, i32 %.2231)
  %i.gg = select i1 %i.ge, i32 0, i32 %i.gf
  store i32 %i.gg, ptr %i.fq, align 4, !tbaa !105
  br label %.thread299

.thread299:                                       ; preds = %bb.ad, %bb.ae, %bb.ac
  %.not259300 = icmp samesign ugt i32 %.0198, %i.eo
  %spec.select264301 = select i1 %.not259300, i64 %i.eu, i64 0
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.gh = add i32 %i.fr, %.sroa.13.0379           ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 0
  %i.gj = tail call i32 @llvm.smin.i32(i32 %i.gh, i32 %.2231)
  %i.gk = select i1 %i.gi, i32 0, i32 %i.gj       ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !105
  %.not259 = icmp samesign ugt i32 %.0198, %i.eo
  %spec.select264 = select i1 %.not259, i64 %i.eu, i64 0
  %i.gm = load i32, ptr %i.fq, align 4, !tbaa !105
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !105
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !105
  br label %bb.ag

bb.ag:                                            ; preds = %.thread299, %bb.af
  %.pn341.in = phi i64 [ %spec.select264, %bb.af ], [ %spec.select264301, %.thread299 ] ; 2 uses
  %.sroa.13.1 = phi i32 [ %i.gk, %bb.af ], [ %.sroa.13.0379, %.thread299 ]
  %.sroa.10.1 = phi i32 [ %i.gq, %bb.af ], [ %.sroa.10.0380, %.thread299 ]
  %.sroa.7.1 = phi i32 [ %i.go, %bb.af ], [ %.sroa.7.0381, %.thread299 ]
  %.sroa.0.1 = phi i32 [ %i.gm, %bb.af ], [ %.sroa.0.0382, %.thread299 ]
  %i.gr = shl i64 %i.es, %.pn341.in               ; 2 uses
  %.pn341 = trunc nuw i64 %.pn341.in to i32
  %i.gs = add i32 %i.eq, %.pn341
  %i.gt = sub i32 %.3213, %i.gs                   ; 2 uses
  %i.gu = icmp eq i32 %.0201389, 3
  br i1 %i.gu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gv = load <4 x i32>, ptr %.sroa.0290.0, align 4, !tbaa !105
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.gw = phi <4 x i32> [ %i.ca, %bb.ag ], [ %i.gv, %bb.ah ] ; 2 uses
  %i.gx = add nuw nsw i32 %.0201389, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gx, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.ai, %.preheader344
  %.1230.lcssa = phi i32 [ %.0229405, %.preheader344 ], [ %.2231, %bb.ai ]
  %.1217.lcssa = phi i64 [ %.0216406, %.preheader344 ], [ %i.gr, %bb.ai ]
  %.1211.lcssa = phi i32 [ %.0210407, %.preheader344 ], [ %i.gt, %bb.ai ]
  %.1204.lcssa = phi i32 [ %.0203408, %.preheader344 ], [ %.4207, %bb.ai ]
  %i.gy = phi <4 x i32> [ %i.bv, %.preheader344 ], [ %i.gw, %bb.ai ]
  %i.gz = shl nuw i32 %.0202409, 1                ; 3 uses
  %i.ha = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 9 uses
  %i.hb = load i16, ptr %i.ay, align 2, !tbaa !102
  %i.hc = zext i16 %i.hb to i32                   ; 3 uses
  %i.hd = mul i32 %i.gz, %i.hc
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr [2 x i8], ptr %i.ha, i64 %i.he
  %i.hg = getelementptr [2 x i8], ptr %i.hf, i64 %i.az ; 13 uses
  %i.hh = or disjoint i32 %i.gz, 1
  %i.hi = mul nsw i32 %i.hh, %i.hc
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [2 x i8], ptr %i.ha, i64 %i.hj
  %i.hl = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.az ; 9 uses
  br i1 %.not261, label %.preheader, label %.preheader342

.preheader342:                                    ; preds = %._crit_edge
  br i1 %.not410, label %.loopexit, label %.lr.ph398.preheader

.lr.ph398.preheader:                              ; preds = %.preheader342
  br i1 %i.bl, label %.lr.ph398.epil.preheader, label %.lr.ph398

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not410, label %.loopexit, label %.lr.ph400.preheader

.lr.ph400.preheader:                              ; preds = %.preheader
  br i1 %or.cond539, label %vector.memcheck, label %.lr.ph400.preheader540

.lr.ph400.preheader540:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph400.preheader
  %.0192399.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph400.preheader ], [ %i.bu, %vector.body ]
  br label %.lr.ph400

vector.memcheck:                                  ; preds = %.lr.ph400.preheader
  %i.hm = shl nsw i64 %i.he, 1                    ; 3 uses
  %i.hn = getelementptr i8, ptr %i.ha, i64 %9
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hm  ; 4 uses
  %i.hp = getelementptr i8, ptr %i.ha, i64 %8
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hm  ; 4 uses
  %i.hr = getelementptr i8, ptr %i.ha, i64 %7
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hm  ; 4 uses
  %i.ht = or disjoint i32 %i.gz, 1
  %i.hu = mul i32 %i.ht, %i.hc
  %i.hv = sext i32 %i.hu to i64
  %i.hw = shl nsw i64 %i.hv, 1                    ; 4 uses
  %i.hx = getelementptr i8, ptr %i.ha, i64 %i.hw
  %10 = getelementptr i8, ptr %i.hx, i64 %i.bg    ; 4 uses
  %i.hy = getelementptr i8, ptr %i.ha, i64 %9
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.hw  ; 4 uses
  %i.ia = getelementptr i8, ptr %i.ha, i64 %8
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.hw  ; 4 uses
  %i.ic = getelementptr i8, ptr %i.ha, i64 %7
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.hw  ; 4 uses
  %bound0 = icmp ult ptr %i.hg, %i.hs
  %bound1 = icmp ult ptr %i.hq, %i.ho
  %found.conflict = and i1 %bound0, %bound1
  %bound0499 = icmp ult ptr %i.hg, %i.hz
  %bound1500 = icmp ult ptr %10, %i.ho
  %found.conflict501 = and i1 %bound0499, %bound1500
  %conflict.rdx = or i1 %found.conflict, %found.conflict501
  %bound0502 = icmp ult ptr %i.hg, %i.id
  %bound1503 = icmp ult ptr %i.ib, %i.ho
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx, %found.conflict504
  %bound0506 = icmp ult ptr %i.hg, %scevgep
  %bound1507 = icmp ult ptr %.sroa.0290.0, %i.ho
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %conflict.rdx505, %found.conflict508
  %bound0510 = icmp ult ptr %i.hq, %i.hz
  %bound1511 = icmp ult ptr %10, %i.hs
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %conflict.rdx509, %found.conflict512
  %bound0514 = icmp ult ptr %i.hq, %i.id
  %bound1515 = icmp ult ptr %i.ib, %i.hs
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  %bound0518 = icmp ult ptr %i.hq, %scevgep
  %bound1519 = icmp ult ptr %.sroa.0290.0, %i.hs
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %conflict.rdx517, %found.conflict520
  %bound0522 = icmp ult ptr %10, %i.id
  %bound1523 = icmp ult ptr %i.ib, %i.hz
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx525 = or i1 %conflict.rdx521, %found.conflict524
  %bound0526 = icmp ult ptr %10, %scevgep
  %bound1527 = icmp ult ptr %.sroa.0290.0, %i.hz
  %found.conflict528 = and i1 %bound0526, %bound1527
  %conflict.rdx529 = or i1 %conflict.rdx525, %found.conflict528
  %bound0530 = icmp ult ptr %i.ib, %scevgep
  %bound1531 = icmp ult ptr %.sroa.0290.0, %i.id
  %found.conflict532 = and i1 %bound0530, %bound1531
  %conflict.rdx533 = or i1 %conflict.rdx529, %found.conflict532
  br i1 %conflict.rdx533, label %.lr.ph400.preheader540, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i32 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ie = shl nuw i32 %index, 1
  %i.if = shl i32 %index, 3
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.ig
  %wide.vec = load <64 x i16>, ptr %i.ih, align 2, !tbaa !103, !alias.scope !161 ; 2 uses
  %i.ii = zext i32 %i.ie to i64                   ; 2 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.ii
  %interleaved.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <16 x i32> <i32 0, i32 2, i32 8, i32 10, i32 16, i32 18, i32 24, i32 26, i32 32, i32 34, i32 40, i32 42, i32 48, i32 50, i32 56, i32 58>
  store <16 x i16> %interleaved.vec, ptr %i.ij, align 2, !tbaa !103
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.ii
  %interleaved.vec537 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <16 x i32> <i32 4, i32 6, i32 12, i32 14, i32 20, i32 22, i32 28, i32 30, i32 36, i32 38, i32 44, i32 46, i32 52, i32 54, i32 60, i32 62>
  store <16 x i16> %interleaved.vec537, ptr %i.ik, align 2, !tbaa !103
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.il = icmp eq i32 %index.next, %n.vec
  br i1 %i.il, label %.lr.ph400.preheader540, label %vector.body, !llvm.loop !155

.lr.ph398:                                        ; preds = %.lr.ph398.preheader, %.lr.ph398
  %.0193397 = phi i32 [ %i.kt, %.lr.ph398 ], [ 0, %.lr.ph398.preheader ] ; 6 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph398 ], [ 0, %.lr.ph398.preheader ]
  %i.im = shl i32 %.0193397, 2
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.in ; 4 uses
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !103
  %i.iq = zext i16 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.iq
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !103
  %i.it = zext i32 %.0193397 to i64               ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.it
  store i16 %i.is, ptr %i.iu, align 2, !tbaa !103
  %i.iv = getelementptr i8, ptr %i.io, i64 4
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !103
  %i.ix = zext i16 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !103
  %i.ja = or disjoint i32 %.0193397, 1
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.jb
  store i16 %i.iz, ptr %i.jc, align 2, !tbaa !103
  %i.jd = getelementptr i8, ptr %i.io, i64 8
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !103
  %i.jf = zext i16 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.jf
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !103
  %i.ji = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.it
  store i16 %i.jh, ptr %i.ji, align 2, !tbaa !103
  %i.jj = getelementptr i8, ptr %i.io, i64 12
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !103
  %i.jl = zext i16 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !103
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.jb
  store i16 %i.jn, ptr %i.jo, align 2, !tbaa !103
  %i.jp = or disjoint i32 %.0193397, 2            ; 2 uses
  %i.jq = shl i32 %i.jp, 2
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.jr ; 4 uses
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !103
  %i.ju = zext i16 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !103
  %i.jx = zext i32 %i.jp to i64                   ; 2 uses
  %i.jy = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.jx
  store i16 %i.jw, ptr %i.jy, align 2, !tbaa !103
  %i.jz = getelementptr i8, ptr %i.js, i64 4
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !103
  %i.kb = zext i16 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !103
  %i.ke = or disjoint i32 %.0193397, 3
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %i.kg = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.kf
  store i16 %i.kd, ptr %i.kg, align 2, !tbaa !103
  %i.kh = getelementptr i8, ptr %i.js, i64 8
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !103
  %i.kj = zext i16 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.kj
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !103
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.jx
  store i16 %i.kl, ptr %i.km, align 2, !tbaa !103
  %i.kn = getelementptr i8, ptr %i.js, i64 12
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !103
  %i.kp = zext i16 %i.ko to i64
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.kp
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !103
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.kf
  store i16 %i.kr, ptr %i.ks, align 2, !tbaa !103
  %i.kt = add nuw i32 %.0193397, 4                ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit541.unr-lcssa, label %.lr.ph398, !llvm.loop !156

.lr.ph400:                                        ; preds = %.lr.ph400.preheader540, %.lr.ph400
  %.0192399 = phi i32 [ %i.ll, %.lr.ph400 ], [ %.0192399.ph, %.lr.ph400.preheader540 ] ; 4 uses
  %i.ku = shl i32 %.0192399, 2
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.kv ; 4 uses
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !103
  %i.ky = zext i32 %.0192399 to i64               ; 2 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.ky
  store i16 %i.kx, ptr %i.kz, align 2, !tbaa !103
  %i.la = getelementptr i8, ptr %i.kw, i64 4
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !103
  %i.lc = or disjoint i32 %.0192399, 1
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.ld
  store i16 %i.lb, ptr %i.le, align 2, !tbaa !103
  %i.lf = getelementptr i8, ptr %i.kw, i64 8
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !103
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.ky
  store i16 %i.lg, ptr %i.lh, align 2, !tbaa !103
  %i.li = getelementptr i8, ptr %i.kw, i64 12
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !103
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.ld
  store i16 %i.lj, ptr %i.lk, align 2, !tbaa !103
  %i.ll = add nuw i32 %.0192399, 2                ; 2 uses
  %i.lm = icmp ult i32 %i.ll, %i.ba
  br i1 %i.lm, label %.lr.ph400, label %.loopexit, !llvm.loop !157

.loopexit.loopexit541.unr-lcssa:                  ; preds = %.lr.ph398
  br i1 %lcmp.mod.not.not, label %.lr.ph398.epil.preheader, label %.loopexit

.lr.ph398.epil.preheader:                         ; preds = %.loopexit.loopexit541.unr-lcssa, %.lr.ph398.preheader
  %.0193397.epil.init = phi i32 [ 0, %.lr.ph398.preheader ], [ %i.kt, %.loopexit.loopexit541.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod547)
  %i.ln = shl i32 %.0193397.epil.init, 2
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.lo ; 4 uses
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !103
  %i.lr = zext i16 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !103
  %i.lu = zext i32 %.0193397.epil.init to i64     ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.lu
  store i16 %i.lt, ptr %i.lv, align 2, !tbaa !103
  %i.lw = getelementptr i8, ptr %i.lp, i64 4
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !103
  %i.ly = zext i16 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ly
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !103
  %i.mb = or disjoint i32 %.0193397.epil.init, 1
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.hg, i64 %i.mc
  store i16 %i.ma, ptr %i.md, align 2, !tbaa !103
  %i.me = getelementptr i8, ptr %i.lp, i64 8
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !103
  %i.mg = zext i16 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.mg
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !103
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.lu
  store i16 %i.mi, ptr %i.mj, align 2, !tbaa !103
  %i.mk = getelementptr i8, ptr %i.lp, i64 12
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !103
  %i.mm = zext i16 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.mm
  %i.mo = load i16, ptr %i.mn, align 2, !tbaa !103
  %i.mp = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.mc
  store i16 %i.mo, ptr %i.mp, align 2, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph398.epil.preheader, %.loopexit.loopexit541.unr-lcssa, %.lr.ph400, %.preheader342, %.preheader
  %i.mq = add nuw nsw i32 %.0202409, 1            ; 2 uses
  %exitcond418.not = icmp eq i32 %i.mq, %i.b
  br i1 %exitcond418.not, label %.critedge, label %.preheader344, !llvm.loop !158

bb.aj:                                            ; preds = %bb.m
  %i.mr = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.0290.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ms = ptrtoint ptr %.sroa.0290.0 to i64
  %i.mt = sub i64 %.sroa.10294.0, %i.ms
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0290.0, i64 noundef %i.mt) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

.critedge:                                        ; preds = %.loopexit, %bb.n, %bb.f, %bb.m
  %.7 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.f ], [ true, %.loopexit ] ; 2 uses
  %.not.i.i.i286 = icmp eq ptr %.sroa.0290.0, null
  br i1 %.not.i.i.i286, label %_ZNSt6vectorIhSaIhEED2Ev.exit287, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.mu = ptrtoint ptr %.sroa.0290.0 to i64
  %i.mv = sub i64 %.sroa.10294.0, %i.mu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0290.0, i64 noundef %i.mv) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit287

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.ak, %bb.aj
  resume { ptr, i32 } %i.mr
end_hunk_0
