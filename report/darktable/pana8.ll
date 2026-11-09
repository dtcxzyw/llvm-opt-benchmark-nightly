Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/pana8?download=true
inline.NumInlined: 252
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6LibRaw20panasonicC8_load_rawEv:bb.a
bb.g:                                             ; preds = %bb.c
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13pana8_param_tD2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %i.cl
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN13pana8_param_tD2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !111
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17pana8_decode_loopEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 382068 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !101
  %.not6 = icmp eq i16 %i.b, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.05, 1                  ; 2 uses
  %i.d = load i16, ptr %i.a, align 4, !tbaa !101
  %i.e = zext i16 %i.d to i32
  %i.f = icmp samesign ult i32 %i.c, %i.e
  %i.g = icmp samesign ult i32 %.05, 4
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.i = tail call noundef i32 @_ZN6LibRaw18pana8_decode_stripEPvi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1, i32 noundef %.05)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call ptr @__cxa_allocate_exception(i64 4) #13 ; 2 uses
  store i32 5, ptr %i.j, align 16, !tbaa !36
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #14
  unreachable
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
  %i.bi = add nuw nsw i64 %i.bg, 2                ; 2 uses
  %i.bj = add nuw nsw i64 %6, 2                   ; 2 uses
  %i.bk = add i32 %2, -2                          ; 2 uses
  %i.bl = lshr i32 %i.bk, 1                       ; 2 uses
  %i.bm = add nuw i32 %i.bl, 1                    ; 2 uses
  %i.bn = icmp eq i32 %i.bl, 0
  %unroll_iter = and i32 %i.bm, -2
  %i.bo = and i32 %i.bk, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bo, 0
  %lcmp.mod547 = trunc i32 %i.bm to i1
  %i.bp = add i32 %2, -2
  %i.bq = lshr i32 %i.bp, 1
  %i.br = add nuw i32 %i.bq, 1                    ; 2 uses
  %i.bs = add i32 %2, -50
  %or.cond539 = icmp ult i32 %i.bs, 536870864
  %i.bt = and i32 %i.br, 7                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = select i1 %i.bu, i32 8, i32 %i.bt
  %n.vec = sub i32 %i.br, %i.bv                   ; 2 uses
  %i.bw = shl i32 %n.vec, 1
  br label %.preheader344

.preheader344:                                    ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %.loopexit
  %.0202409 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %i.ml, %.loopexit ] ; 2 uses
  %.0203408 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.1204.lcssa, %.loopexit ] ; 2 uses
  %.0210407 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.1211.lcssa, %.loopexit ] ; 2 uses
  %.0216406 = phi i64 [ 0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.1217.lcssa, %.loopexit ] ; 2 uses
  %.0229405 = phi i32 [ %i.p, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %.1230.lcssa, %.loopexit ] ; 2 uses
  %i.bx = phi <4 x i32> [ %i.o, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ %i.ha, %.loopexit ] ; 6 uses
  br i1 %.not260.not374, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader344
  %i.by = extractelement <4 x i32> %i.bx, i64 3
  %i.bz = extractelement <4 x i32> %i.bx, i64 2
  %i.ca = extractelement <4 x i32> %i.bx, i64 1
  %i.cb = extractelement <4 x i32> %i.bx, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %.0201389 = phi i32 [ %i.gz, %bb.ai ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.1204386 = phi i32 [ %.4207, %bb.ai ], [ %.0203408, %.lr.ph.preheader ] ; 9 uses
  %.1211385 = phi i32 [ %i.gv, %bb.ai ], [ %.0210407, %.lr.ph.preheader ] ; 5 uses
  %.1217384 = phi i64 [ %i.gt, %bb.ai ], [ %.0216406, %.lr.ph.preheader ]
  %.1230383 = phi i32 [ %.2231, %bb.ai ], [ %.0229405, %.lr.ph.preheader ]
  %.sroa.0.0382 = phi i32 [ %.sroa.0.1, %bb.ai ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.0381 = phi i32 [ %.sroa.7.1, %bb.ai ], [ %i.ca, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.0380 = phi i32 [ %.sroa.10.1, %bb.ai ], [ %i.bz, %.lr.ph.preheader ] ; 2 uses
  %.sroa.13.0379 = phi i32 [ %.sroa.13.1, %bb.ai ], [ %i.by, %.lr.ph.preheader ] ; 2 uses
  %i.cc = phi <4 x i32> [ %i.gy, %bb.ai ], [ %i.bx, %.lr.ph.preheader ]
  %i.cd = icmp slt i32 %.1211385, 0
  br i1 %i.cd, label %bb.f, label %bb.n

bb.f:                                             ; preds = %.lr.ph
  %i.ce = add i32 %.1204386, 1                    ; 4 uses
  %.not251 = icmp slt i32 %i.ce, %i.aj
  br i1 %.not251, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cf = add nsw i32 %.1211385, 64               ; 3 uses
  %i.cg = zext i32 %.1204386 to i64               ; 5 uses
  %i.ch = load i64, ptr %i.at, align 8, !tbaa !22 ; 3 uses
  %.not.i = icmp sle i64 %i.ch, %i.cg
  %i.ci = load i64, ptr %i.au, align 8            ; 3 uses
  %i.cj = icmp sgt i64 %i.ci, %i.cg
  %or.cond.i = select i1 %.not.i, i1 %i.cj, i1 false
  br i1 %or.cond.i, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = load ptr, ptr %i.av, align 8, !tbaa !23
  %.not11.i = icmp eq ptr %i.ck, null
  br i1 %.not11.i, label %_ZN13pana8_bufio_t8getQWordEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %.1204386)
          to label %.noexc267 unwind label %bb.m

.noexc267:                                        ; preds = %bb.i
  %i.cl = load i64, ptr %i.at, align 8, !tbaa !22 ; 3 uses
  %.not12.i = icmp sle i64 %i.cl, %i.cg
  %.pre = load i64, ptr %i.au, align 8            ; 3 uses
  %i.cm = icmp sgt i64 %.pre, %i.cg
  %or.cond444 = select i1 %.not12.i, i1 %i.cm, i1 false
  br i1 %or.cond444, label %.sink.split.i, label %_ZN13pana8_bufio_t8getQWordEj.exit

.sink.split.i:                                    ; preds = %.noexc267, %bb.g
  %i.cn = phi i64 [ %i.ci, %bb.g ], [ %.pre, %.noexc267 ]
  %.sink.i = phi i64 [ %i.ch, %bb.g ], [ %i.cl, %.noexc267 ] ; 2 uses
  %i.co = sub nsw i64 %i.cg, %.sink.i
  %i.cp = load ptr, ptr %1, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !39
  br label %_ZN13pana8_bufio_t8getQWordEj.exit

_ZN13pana8_bufio_t8getQWordEj.exit:               ; preds = %.sink.split.i, %.noexc267, %bb.h
  %i.cs = phi i64 [ %i.cn, %.sink.split.i ], [ %.pre, %.noexc267 ], [ %i.ci, %bb.h ]
  %i.ct = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.cl, %.noexc267 ], [ %i.ch, %bb.h ] ; 2 uses
  %.0.i = phi i64 [ %i.cr, %.sink.split.i ], [ 0, %.noexc267 ], [ 0, %bb.h ]
  %i.cu = zext i32 %i.ce to i64                   ; 5 uses
  %.not.i268 = icmp sle i64 %i.ct, %i.cu
  %i.cv = icmp sgt i64 %i.cs, %i.cu
  %or.cond.i269 = select i1 %.not.i268, i1 %i.cv, i1 false
  br i1 %or.cond.i269, label %.sink.split.i273, label %bb.j

bb.j:                                             ; preds = %_ZN13pana8_bufio_t8getQWordEj.exit
  %i.cw = load ptr, ptr %i.av, align 8, !tbaa !23
  %.not11.i270 = icmp eq ptr %i.cw, null
  br i1 %.not11.i270, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %i.ce)
          to label %.noexc275 unwind label %bb.m

.noexc275:                                        ; preds = %bb.k
  %i.cx = load i64, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not12.i271 = icmp sgt i64 %i.cx, %i.cu
  br i1 %.not12.i271, label %.thread, label %bb.l

bb.l:                                             ; preds = %.noexc275
  %i.cy = load i64, ptr %i.au, align 8, !tbaa !41
  %i.cz = icmp sgt i64 %i.cy, %i.cu
  br i1 %i.cz, label %.sink.split.i273, label %.thread

.sink.split.i273:                                 ; preds = %bb.l, %_ZN13pana8_bufio_t8getQWordEj.exit
  %.sink.i274 = phi i64 [ %i.ct, %_ZN13pana8_bufio_t8getQWordEj.exit ], [ %i.cx, %bb.l ]
  %i.da = sub nsw i64 %i.cu, %.sink.i274
  %i.db = load ptr, ptr %1, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.j, %.noexc275, %bb.l, %.sink.split.i273
  %.0.i272 = phi i64 [ 0, %bb.l ], [ 0, %.noexc275 ], [ 0, %bb.j ], [ %i.dd, %.sink.split.i273 ]
  %i.de = zext nneg i32 %i.cf to i64
  %i.df = lshr i64 %.0.i272, %i.de
  %i.dg = and i32 %i.cf, 255
  %i.dh = sub nsw i32 64, %i.dg
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl i64 %.0.i, %i.di
  %i.dk = or i64 %i.df, %i.dj
  %i.dl = icmp ult i32 %.1204386, %i.aj
  %spec.select = select i1 %i.dl, i32 %i.ce, i32 %.1204386
  br label %bb.s

bb.m:                                             ; preds = %bb.q, %bb.k, %bb.i
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %.2224 = extractvalue { ptr, i32 } %i.dm, 0
  %i.dn = tail call ptr @__cxa_begin_catch(ptr %.2224) #13 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.critedge unwind label %bb.aj

bb.n:                                             ; preds = %.lr.ph
  %.not249 = icmp ult i32 %.1204386, %i.aj
  br i1 %.not249, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.do = zext nneg i32 %.1204386 to i64          ; 5 uses
  %i.dp = load i64, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not.i277 = icmp sle i64 %i.dp, %i.do
  %i.dq = load i64, ptr %i.au, align 8
  %i.dr = icmp sgt i64 %i.dq, %i.do
  %or.cond.i278 = select i1 %.not.i277, i1 %i.dr, i1 false
  br i1 %or.cond.i278, label %.sink.split.i282, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = load ptr, ptr %i.av, align 8, !tbaa !23
  %.not11.i279 = icmp eq ptr %i.ds, null
  br i1 %.not11.i279, label %_ZN13pana8_bufio_t8getQWordEj.exit285, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %.1204386)
          to label %.noexc284 unwind label %bb.m

.noexc284:                                        ; preds = %bb.q
  %i.dt = load i64, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not12.i280 = icmp sgt i64 %i.dt, %i.do
  br i1 %.not12.i280, label %_ZN13pana8_bufio_t8getQWordEj.exit285, label %bb.r

bb.r:                                             ; preds = %.noexc284
  %i.du = load i64, ptr %i.au, align 8, !tbaa !41
  %i.dv = icmp sgt i64 %i.du, %i.do
  br i1 %i.dv, label %.sink.split.i282, label %_ZN13pana8_bufio_t8getQWordEj.exit285

.sink.split.i282:                                 ; preds = %bb.r, %bb.o
  %.sink.i283 = phi i64 [ %i.dp, %bb.o ], [ %i.dt, %bb.r ]
  %i.dw = sub nsw i64 %i.do, %.sink.i283
  %i.dx = load ptr, ptr %1, align 8, !tbaa !33
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !39
  br label %_ZN13pana8_bufio_t8getQWordEj.exit285

_ZN13pana8_bufio_t8getQWordEj.exit285:            ; preds = %.sink.split.i282, %bb.r, %.noexc284, %bb.p
  %.0.i281 = phi i64 [ 0, %bb.r ], [ 0, %.noexc284 ], [ 0, %bb.p ], [ %i.dz, %.sink.split.i282 ]
  %i.ea = zext nneg i32 %.1211385 to i64
  %i.eb = lshr i64 %.0.i281, %i.ea
  %i.ec = or i64 %i.eb, %.1217384
  %i.ed = icmp eq i32 %.1211385, 0                ; 2 uses
  %i.ee = zext i1 %i.ed to i32
  %spec.store.select = select i1 %i.ed, i32 64, i32 %.1211385
  %i.ef = add nuw nsw i32 %.1204386, %i.ee
  br label %bb.s

bb.s:                                             ; preds = %.thread, %_ZN13pana8_bufio_t8getQWordEj.exit285
  %.3213 = phi i32 [ %i.cf, %.thread ], [ %spec.store.select, %_ZN13pana8_bufio_t8getQWordEj.exit285 ]
  %.4207 = phi i32 [ %spec.select, %.thread ], [ %i.ef, %_ZN13pana8_bufio_t8getQWordEj.exit285 ] ; 2 uses
  %.1200 = phi i64 [ %i.dk, %.thread ], [ %i.ec, %_ZN13pana8_bufio_t8getQWordEj.exit285 ] ; 3 uses
  br i1 %i.x, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.eg = lshr i64 %.1200, 48
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !37
  %i.ej = zext i8 %i.ei to i32
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ek = tail call noundef i32 @_ZN13pana8_param_t7GetDBitEm(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef %.1200)
  %i.el = load i32, ptr %i.j, align 4, !tbaa !119
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2231 = phi i32 [ %.1230383, %bb.t ], [ %i.el, %bb.u ] ; 6 uses
  %.0198 = phi i32 [ %i.ej, %bb.t ], [ %i.ek, %bb.u ] ; 7 uses
  %i.em = zext nneg i32 %.0198 to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !105 ; 2 uses
  %i.ep = lshr i32 %i.eo, 24                      ; 2 uses
  %i.eq = and i32 %i.ep, 31                       ; 7 uses
  %i.er = lshr i32 %i.eo, 16
  %i.es = and i32 %i.er, 31                       ; 2 uses
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl i64 %.1200, %i.et                   ; 3 uses
  %i.ev = sub nsw i32 %.0198, %i.eq               ; 2 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = sub nsw i32 %i.eq, %.0198
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = lshr i64 %i.eu, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = and i32 %i.fa, 65535
  %i.fc = shl i32 %i.fb, %i.ep                    ; 2 uses
  %i.fd = icmp slt i32 %i.ev, 1
  %i.fe = and i32 %i.fc, -65536
  %spec.select263 = select i1 %i.fd, i32 %i.fe, i32 %i.fc ; 3 uses
  %i.ff = icmp slt i64 %i.eu, 0
  br i1 %i.ff, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fg = and i32 %spec.select263, 65535
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %.not255 = icmp eq i32 %.0198, 0
  br i1 %.not255, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fh = shl nsw i32 -1, %.0198                  ; 2 uses
  %.not256 = icmp eq i32 %i.eq, 0
  br i1 %.not256, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fi = and i32 %spec.select263, 65535
  %i.fj = add nsw i32 %i.fi, %i.fh
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.fk = add nuw nsw i32 %i.fh, 1
  %i.fl = add nsw i32 %i.fk, %spec.select263
  br label %bb.ab

bb.ab:                                            ; preds = %bb.x, %bb.z, %bb.aa, %bb.w
  %.1195 = phi i32 [ %i.fg, %bb.w ], [ %i.fl, %bb.aa ], [ %i.fj, %bb.z ], [ 0, %bb.x ]
  %.not257 = icmp eq i32 %i.eq, 0
  %i.fm = add nsw i32 %i.eq, -1
  %i.fn = shl nuw nsw i32 1, %i.fm
  %i.fo = select i1 %.not257, i32 0, i32 %i.fn
  %i.fp = lshr i32 %.0201389, 2
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 4
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0290.0, i64 %i.fr ; 7 uses
  %i.ft = add nsw i32 %.1195, %i.fo               ; 4 uses
  %i.fu = and i32 %.0201389, 3
  switch i32 %i.fu, label %default.unreachable [
    i32 2, label %bb.ac
    i32 1, label %bb.ad
    i32 0, label %bb.ae
    i32 3, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fv = add i32 %i.ft, %.sroa.7.0381            ; 2 uses
  %i.fw = icmp slt i32 %i.fv, 0
  %i.fx = tail call i32 @llvm.smin.i32(i32 %i.fv, i32 %.2231)
  %i.fy = select i1 %i.fw, i32 0, i32 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !105
  br label %.thread299

bb.ad:                                            ; preds = %bb.ab
  %i.ga = add i32 %i.ft, %.sroa.10.0380           ; 2 uses
  %i.gb = icmp slt i32 %i.ga, 0
  %i.gc = tail call i32 @llvm.smin.i32(i32 %i.ga, i32 %.2231)
  %i.gd = select i1 %i.gb, i32 0, i32 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !105
  br label %.thread299

default.unreachable:                              ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.gf = add i32 %i.ft, %.sroa.0.0382            ; 2 uses
  %i.gg = icmp slt i32 %i.gf, 0
  %i.gh = tail call i32 @llvm.smin.i32(i32 %i.gf, i32 %.2231)
  %i.gi = select i1 %i.gg, i32 0, i32 %i.gh
  store i32 %i.gi, ptr %i.fs, align 4, !tbaa !105
  br label %.thread299

.thread299:                                       ; preds = %bb.ad, %bb.ae, %bb.ac
  %.not259300 = icmp samesign ugt i32 %.0198, %i.eq
  %spec.select264301 = select i1 %.not259300, i64 %i.ew, i64 0
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.gj = add i32 %i.ft, %.sroa.13.0379           ; 2 uses
  %i.gk = icmp slt i32 %i.gj, 0
  %i.gl = tail call i32 @llvm.smin.i32(i32 %i.gj, i32 %.2231)
  %i.gm = select i1 %i.gk, i32 0, i32 %i.gl       ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !105
  %.not259 = icmp samesign ugt i32 %.0198, %i.eq
  %spec.select264 = select i1 %.not259, i64 %i.ew, i64 0
  %i.go = load i32, ptr %i.fs, align 4, !tbaa !105
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !105
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !105
  br label %bb.ag

bb.ag:                                            ; preds = %.thread299, %bb.af
  %.pn341.in = phi i64 [ %spec.select264, %bb.af ], [ %spec.select264301, %.thread299 ] ; 2 uses
  %.sroa.13.1 = phi i32 [ %i.gm, %bb.af ], [ %.sroa.13.0379, %.thread299 ]
  %.sroa.10.1 = phi i32 [ %i.gs, %bb.af ], [ %.sroa.10.0380, %.thread299 ]
  %.sroa.7.1 = phi i32 [ %i.gq, %bb.af ], [ %.sroa.7.0381, %.thread299 ]
  %.sroa.0.1 = phi i32 [ %i.go, %bb.af ], [ %.sroa.0.0382, %.thread299 ]
  %i.gt = shl i64 %i.eu, %.pn341.in               ; 2 uses
  %.pn341 = trunc nuw i64 %.pn341.in to i32
  %i.gu = add i32 %i.es, %.pn341
  %i.gv = sub i32 %.3213, %i.gu                   ; 2 uses
  %i.gw = icmp eq i32 %.0201389, 3
  br i1 %i.gw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gx = load <4 x i32>, ptr %.sroa.0290.0, align 4, !tbaa !105
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.gy = phi <4 x i32> [ %i.cc, %bb.ag ], [ %i.gx, %bb.ah ] ; 2 uses
  %i.gz = add nuw nsw i32 %.0201389, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gz, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.ai, %.preheader344
  %.1230.lcssa = phi i32 [ %.0229405, %.preheader344 ], [ %.2231, %bb.ai ]
  %.1217.lcssa = phi i64 [ %.0216406, %.preheader344 ], [ %i.gt, %bb.ai ]
  %.1211.lcssa = phi i32 [ %.0210407, %.preheader344 ], [ %i.gv, %bb.ai ]
  %.1204.lcssa = phi i32 [ %.0203408, %.preheader344 ], [ %.4207, %bb.ai ]
  %i.ha = phi <4 x i32> [ %i.bx, %.preheader344 ], [ %i.gy, %bb.ai ]
  %i.hb = shl nuw i32 %.0202409, 1                ; 3 uses
  %i.hc = load ptr, ptr %i.ax, align 8, !tbaa !160 ; 9 uses
  %i.hd = load i16, ptr %i.ay, align 2, !tbaa !102
  %i.he = zext i16 %i.hd to i32                   ; 3 uses
  %i.hf = mul i32 %i.hb, %i.he
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = getelementptr [2 x i8], ptr %i.hc, i64 %i.hg
  %i.hi = getelementptr [2 x i8], ptr %i.hh, i64 %i.az ; 13 uses
  %i.hj = or disjoint i32 %i.hb, 1
  %i.hk = mul nsw i32 %i.hj, %i.he
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hc, i64 %i.hl
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %i.az ; 9 uses
  br i1 %.not261, label %.preheader, label %.preheader342

.preheader342:                                    ; preds = %._crit_edge
  br i1 %.not410, label %.loopexit, label %.lr.ph398.preheader

.lr.ph398.preheader:                              ; preds = %.preheader342
  br i1 %i.bn, label %.lr.ph398.epil.preheader, label %.lr.ph398

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not410, label %.loopexit, label %.lr.ph400.preheader

.lr.ph400.preheader:                              ; preds = %.preheader
  br i1 %or.cond539, label %vector.memcheck, label %.lr.ph400.preheader540

.lr.ph400.preheader540:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph400.preheader
  %.0192399.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph400.preheader ], [ %i.bw, %vector.body ]
  br label %.lr.ph400

vector.memcheck:                                  ; preds = %.lr.ph400.preheader
  %i.ho = shl nsw i64 %i.hg, 1                    ; 3 uses
  %i.hp = getelementptr i8, ptr %i.hc, i64 %i.bj
  %8 = getelementptr i8, ptr %i.hp, i64 %i.ho     ; 4 uses
  %9 = getelementptr i8, ptr %i.hc, i64 %i.bi
  %10 = getelementptr i8, ptr %9, i64 %i.ho       ; 4 uses
  %11 = getelementptr i8, ptr %i.hc, i64 %7
  %i.hq = getelementptr i8, ptr %11, i64 %i.ho    ; 4 uses
  %i.hr = or disjoint i32 %i.hb, 1
  %i.hs = mul i32 %i.hr, %i.he
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 1                    ; 4 uses
  %i.hv = getelementptr i8, ptr %i.hc, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.bg  ; 4 uses
  %i.hx = getelementptr i8, ptr %i.hc, i64 %i.bj
  %12 = getelementptr i8, ptr %i.hx, i64 %i.hu    ; 4 uses
  %13 = getelementptr i8, ptr %i.hc, i64 %i.bi
  %14 = getelementptr i8, ptr %13, i64 %i.hu      ; 4 uses
  %15 = getelementptr i8, ptr %i.hc, i64 %7
  %i.hy = getelementptr i8, ptr %15, i64 %i.hu    ; 4 uses
  %bound0 = icmp ult ptr %i.hi, %i.hq
  %bound1 = icmp ult ptr %10, %8
  %found.conflict = and i1 %bound0, %bound1
  %bound0499 = icmp ult ptr %i.hi, %12
  %bound1500 = icmp ult ptr %i.hw, %8
  %found.conflict501 = and i1 %bound0499, %bound1500
  %conflict.rdx = or i1 %found.conflict, %found.conflict501
  %bound0502 = icmp ult ptr %i.hi, %i.hy
  %bound1503 = icmp ult ptr %14, %8
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx, %found.conflict504
  %bound0506 = icmp ult ptr %i.hi, %scevgep
  %bound1507 = icmp ult ptr %.sroa.0290.0, %8
  %found.conflict508 = and i1 %bound0506, %bound1507
  %conflict.rdx509 = or i1 %conflict.rdx505, %found.conflict508
  %bound0510 = icmp ult ptr %10, %12
  %bound1511 = icmp ult ptr %i.hw, %i.hq
  %found.conflict512 = and i1 %bound0510, %bound1511
  %conflict.rdx513 = or i1 %conflict.rdx509, %found.conflict512
  %bound0514 = icmp ult ptr %10, %i.hy
  %bound1515 = icmp ult ptr %14, %i.hq
  %found.conflict516 = and i1 %bound0514, %bound1515
  %conflict.rdx517 = or i1 %conflict.rdx513, %found.conflict516
  %bound0518 = icmp ult ptr %10, %scevgep
  %bound1519 = icmp ult ptr %.sroa.0290.0, %i.hq
  %found.conflict520 = and i1 %bound0518, %bound1519
  %conflict.rdx521 = or i1 %conflict.rdx517, %found.conflict520
  %bound0522 = icmp ult ptr %i.hw, %i.hy
  %bound1523 = icmp ult ptr %14, %12
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx525 = or i1 %conflict.rdx521, %found.conflict524
  %bound0526 = icmp ult ptr %i.hw, %scevgep
  %bound1527 = icmp ult ptr %.sroa.0290.0, %12
  %found.conflict528 = and i1 %bound0526, %bound1527
  %conflict.rdx529 = or i1 %conflict.rdx525, %found.conflict528
  %bound0530 = icmp ult ptr %14, %scevgep
  %bound1531 = icmp ult ptr %.sroa.0290.0, %i.hy
  %found.conflict532 = and i1 %bound0530, %bound1531
  %conflict.rdx533 = or i1 %conflict.rdx529, %found.conflict532
  br i1 %conflict.rdx533, label %.lr.ph400.preheader540, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i32 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.hz = shl nuw i32 %index, 1
  %i.ia = shl i32 %index, 3
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.ib
  %wide.vec = load <64 x i16>, ptr %i.ic, align 2, !tbaa !103, !alias.scope !161 ; 2 uses
  %i.id = zext i32 %i.hz to i64                   ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.id
  %interleaved.vec = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <16 x i32> <i32 0, i32 2, i32 8, i32 10, i32 16, i32 18, i32 24, i32 26, i32 32, i32 34, i32 40, i32 42, i32 48, i32 50, i32 56, i32 58>
  store <16 x i16> %interleaved.vec, ptr %i.ie, align 2, !tbaa !103
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.id
  %interleaved.vec537 = shufflevector <64 x i16> %wide.vec, <64 x i16> poison, <16 x i32> <i32 4, i32 6, i32 12, i32 14, i32 20, i32 22, i32 28, i32 30, i32 36, i32 38, i32 44, i32 46, i32 52, i32 54, i32 60, i32 62>
  store <16 x i16> %interleaved.vec537, ptr %i.if, align 2, !tbaa !103
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ig = icmp eq i32 %index.next, %n.vec
  br i1 %i.ig, label %.lr.ph400.preheader540, label %vector.body, !llvm.loop !155

.lr.ph398:                                        ; preds = %.lr.ph398.preheader, %.lr.ph398
  %.0193397 = phi i32 [ %i.ko, %.lr.ph398 ], [ 0, %.lr.ph398.preheader ] ; 6 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph398 ], [ 0, %.lr.ph398.preheader ]
  %i.ih = shl i32 %.0193397, 2
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.ii ; 4 uses
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !103
  %i.il = zext i16 %i.ik to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !103
  %i.io = zext i32 %.0193397 to i64               ; 2 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.io
  store i16 %i.in, ptr %i.ip, align 2, !tbaa !103
  %i.iq = getelementptr i8, ptr %i.ij, i64 4
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !103
  %i.is = zext i16 %i.ir to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !103
  %i.iv = or disjoint i32 %.0193397, 1
  %i.iw = zext i32 %i.iv to i64                   ; 2 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.iw
  store i16 %i.iu, ptr %i.ix, align 2, !tbaa !103
  %i.iy = getelementptr i8, ptr %i.ij, i64 8
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !103
  %i.ja = zext i16 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !103
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.io
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !103
  %i.je = getelementptr i8, ptr %i.ij, i64 12
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !103
  %i.jg = zext i16 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !103
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.iw
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !103
  %i.jk = or disjoint i32 %.0193397, 2            ; 2 uses
  %i.jl = shl i32 %i.jk, 2
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.jm ; 4 uses
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !103
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !103
  %i.js = zext i32 %i.jk to i64                   ; 2 uses
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.js
  store i16 %i.jr, ptr %i.jt, align 2, !tbaa !103
  %i.ju = getelementptr i8, ptr %i.jn, i64 4
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !103
  %i.jw = zext i16 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.jw
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !103
  %i.jz = or disjoint i32 %.0193397, 3
  %i.ka = zext i32 %i.jz to i64                   ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.ka
  store i16 %i.jy, ptr %i.kb, align 2, !tbaa !103
  %i.kc = getelementptr i8, ptr %i.jn, i64 8
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !103
  %i.ke = zext i16 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !103
  %i.kh = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.js
  store i16 %i.kg, ptr %i.kh, align 2, !tbaa !103
  %i.ki = getelementptr i8, ptr %i.jn, i64 12
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !103
  %i.kk = zext i16 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !103
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.ka
  store i16 %i.km, ptr %i.kn, align 2, !tbaa !103
  %i.ko = add nuw i32 %.0193397, 4                ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit.loopexit541.unr-lcssa, label %.lr.ph398, !llvm.loop !156

.lr.ph400:                                        ; preds = %.lr.ph400.preheader540, %.lr.ph400
  %.0192399 = phi i32 [ %i.lg, %.lr.ph400 ], [ %.0192399.ph, %.lr.ph400.preheader540 ] ; 4 uses
  %i.kp = shl i32 %.0192399, 2
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.kq ; 4 uses
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !103
  %i.kt = zext i32 %.0192399 to i64               ; 2 uses
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.kt
  store i16 %i.ks, ptr %i.ku, align 2, !tbaa !103
  %i.kv = getelementptr i8, ptr %i.kr, i64 4
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !103
  %i.kx = or disjoint i32 %.0192399, 1
  %i.ky = zext i32 %i.kx to i64                   ; 2 uses
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.ky
  store i16 %i.kw, ptr %i.kz, align 2, !tbaa !103
  %i.la = getelementptr i8, ptr %i.kr, i64 8
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !103
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.kt
  store i16 %i.lb, ptr %i.lc, align 2, !tbaa !103
  %i.ld = getelementptr i8, ptr %i.kr, i64 12
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !103
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.ky
  store i16 %i.le, ptr %i.lf, align 2, !tbaa !103
  %i.lg = add nuw i32 %.0192399, 2                ; 2 uses
  %i.lh = icmp ult i32 %i.lg, %i.ba
  br i1 %i.lh, label %.lr.ph400, label %.loopexit, !llvm.loop !157

.loopexit.loopexit541.unr-lcssa:                  ; preds = %.lr.ph398
  br i1 %lcmp.mod.not.not, label %.lr.ph398.epil.preheader, label %.loopexit

.lr.ph398.epil.preheader:                         ; preds = %.loopexit.loopexit541.unr-lcssa, %.lr.ph398.preheader
  %.0193397.epil.init = phi i32 [ 0, %.lr.ph398.preheader ], [ %i.ko, %.loopexit.loopexit541.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod547)
  %i.li = shl i32 %.0193397.epil.init, 2
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [2 x i8], ptr %.sroa.0290.0, i64 %i.lj ; 4 uses
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !103
  %i.lm = zext i16 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.lm
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !103
  %i.lp = zext i32 %.0193397.epil.init to i64     ; 2 uses
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.lp
  store i16 %i.lo, ptr %i.lq, align 2, !tbaa !103
  %i.lr = getelementptr i8, ptr %i.lk, i64 4
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !103
  %i.lt = zext i16 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.lt
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !103
  %i.lw = or disjoint i32 %.0193397.epil.init, 1
  %i.lx = zext i32 %i.lw to i64                   ; 2 uses
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.lx
  store i16 %i.lv, ptr %i.ly, align 2, !tbaa !103
  %i.lz = getelementptr i8, ptr %i.lk, i64 8
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !103
  %i.mb = zext i16 %i.ma to i64
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.mb
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !103
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.lp
  store i16 %i.md, ptr %i.me, align 2, !tbaa !103
  %i.mf = getelementptr i8, ptr %i.lk, i64 12
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !103
  %i.mh = zext i16 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.mh
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !103
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %i.lx
  store i16 %i.mj, ptr %i.mk, align 2, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph398.epil.preheader, %.loopexit.loopexit541.unr-lcssa, %.lr.ph400, %.preheader342, %.preheader
  %i.ml = add nuw nsw i32 %.0202409, 1            ; 2 uses
  %exitcond418.not = icmp eq i32 %i.ml, %i.b
  br i1 %exitcond418.not, label %.critedge, label %.preheader344, !llvm.loop !158

bb.aj:                                            ; preds = %bb.m
  %i.mm = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %.sroa.0290.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mn = ptrtoint ptr %.sroa.0290.0 to i64
  %i.mo = sub i64 %.sroa.10294.0, %i.mn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0290.0, i64 noundef %i.mo) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

.critedge:                                        ; preds = %.loopexit, %bb.n, %bb.f, %bb.m
  %.7 = phi i1 [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.f ], [ true, %.loopexit ] ; 2 uses
  %.not.i.i.i286 = icmp eq ptr %.sroa.0290.0, null
  br i1 %.not.i.i.i286, label %_ZNSt6vectorIhSaIhEED2Ev.exit287, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.mp = ptrtoint ptr %.sroa.0290.0 to i64
  %i.mq = sub i64 %.sroa.10294.0, %i.mp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0290.0, i64 noundef %i.mq) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit287

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.ak, %bb.aj
  resume { ptr, i32 } %i.mm

_ZNSt6vectorIhSaIhEED2Ev.exit287:                 ; preds = %bb.al, %.critedge, %bb.a, %bb.b
  %.8 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.7, %.critedge ], [ %.7, %bb.al ]
  ret i1 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 18) i32 @_ZN13pana8_param_t7GetDBitEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i64, ptr %i.a, align 8, !tbaa !39
  %i.d = and i64 %i.c, %1
  %i.e = load i64, ptr %i.b, align 8, !tbaa !39
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39
  %i.i = and i64 %i.h, %1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = and i64 %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = load i64, ptr %i.p, align 8, !tbaa !39
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = and i64 %i.t, %1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = load i64, ptr %i.v, align 8, !tbaa !39
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39
  %i.aa = and i64 %i.z, %1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !39
  %i.ag = and i64 %i.af, %1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !39
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !39
  %i.am = and i64 %i.al, %1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39
  %i.as = and i64 %i.ar, %1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !39
  %i.ay = and i64 %i.ax, %1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !39
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.be = and i64 %i.bd, %1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !39
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.bk = and i64 %i.bj, %1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !39
  %i.bq = and i64 %i.bp, %1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !39
  %i.bw = and i64 %i.bv, %1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !39
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !39
  %i.cc = and i64 %i.cb, %1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !39
  %i.ci = and i64 %i.ch, %1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !39
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !39
  %i.co = and i64 %i.cn, %1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !39
  %i.cr = icmp eq i64 %i.co, %i.cq
  br i1 %i.cr, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.cu = and i64 %i.ct, %1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !39
  %i.cx = icmp eq i64 %i.cu, %i.cw
  %i.cy = zext i1 %i.cx to i32
  %i.cz = xor i32 %i.cy, 17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %.1 = phi i32 [ %i.cz, %bb.q ], [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ]
  ret i32 %.1
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN13pana8_param_tC2ERK12pana8_tags_t(ptr noundef nonnull align 8 dereferenceable(480) initializes((0, 156), (160, 480)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader:
  %2 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(148) %0, i8 0, i64 148, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.h, i8 0, i64 320, i1 false)
  store i32 1, ptr %i.j, align 8, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i16, ptr %i.k, align 8, !tbaa !103
  %i.m = zext i16 %i.l to i32
  store i32 %i.m, ptr %i.d, align 8, !tbaa !105
  %i.n = load i32, ptr %1, align 8, !tbaa !105
  store i32 %i.n, ptr %i.e, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.p = load i16, ptr %i.o, align 2, !tbaa !103
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.r, align 4, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !105
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.t, ptr %i.u, align 4, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = load i16, ptr %i.v, align 4, !tbaa !103
  %i.x = zext i16 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.x, ptr %i.y, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !105
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !103
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !105
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !103
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.al, ptr %i.am, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !103
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.as, ptr %i.at, align 4, !tbaa !105
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !105
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !105
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !168
  %i.az = zext i16 %i.ay to i32                   ; 2 uses
  store i32 %i.az, ptr %i.c, align 8, !tbaa !123
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !119
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !103
  %i.bd = zext i16 %i.bc to i32
  store i32 %i.bd, ptr %i.f, align 4, !tbaa !105
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !103
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bk = load <8 x i16>, ptr %i.be, align 8
  %i.bl = load <8 x i16>, ptr %i.bi, align 4
  %i.bm = insertelement <8 x i16> <i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, i16 %i.bh, i64 3
  %i.bn = shufflevector <8 x i16> %i.bm, <8 x i16> %i.bl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bo = zext <8 x i16> %i.bn to <8 x i32>
  %i.bp = shl <8 x i32> %i.bo, <i32 0, i32 0, i32 0, i32 24, i32 24, i32 24, i32 24, i32 24>
  %i.bq = load <8 x i16>, ptr %i.bj, align 8
  %i.br = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <8 x i16> %i.br, <8 x i16> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bt = zext <8 x i16> %i.bs to <8 x i32>
  %i.bu = shl nuw <8 x i32> %i.bt, <i32 0, i32 0, i32 0, i32 16, i32 16, i32 16, i32 16, i32 16>
  %i.bv = or <8 x i32> %i.bu, %i.bp
  %i.bw = tail call <25 x i16> @llvm.masked.load.v25i16.p0(ptr nonnull align 8 %i.be, <25 x i1> <i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true, i1 true>, <25 x i16> poison), !tbaa !103
  %i.bx = shufflevector <25 x i16> %i.bw, <25 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 20, i32 21, i32 22, i32 23, i32 24>
  %i.by = zext <8 x i16> %i.bx to <8 x i32>
  %i.bz = or disjoint <8 x i32> %i.bv, %i.by
  store <8 x i32> %i.bz, ptr %i.bf, align 8, !tbaa !105
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ce = load <8 x i16>, ptr %i.ca, align 4, !tbaa !103
  %i.cf = zext <8 x i16> %i.ce to <8 x i32>
  %i.cg = shl <8 x i32> %i.cf, splat (i32 24)
  %i.ch = load <8 x i16>, ptr %i.cb, align 8, !tbaa !103
  %i.ci = zext <8 x i16> %i.ch to <8 x i32>
  %i.cj = shl nuw <8 x i32> %i.ci, splat (i32 16)
  %i.ck = or <8 x i32> %i.cj, %i.cg
  %i.cl = load <8 x i16>, ptr %i.cc, align 2, !tbaa !103
  %i.cm = zext <8 x i16> %i.cl to <8 x i32>
  %i.cn = or disjoint <8 x i32> %i.ck, %i.cm
  store <8 x i32> %i.cn, ptr %i.cd, align 8, !tbaa !105
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cs = load <4 x i16>, ptr %i.co, align 4, !tbaa !103
  %i.ct = zext <4 x i16> %i.cs to <4 x i32>
  %i.cu = shl <4 x i32> %i.ct, splat (i32 24)
  %i.cv = load <4 x i16>, ptr %i.cp, align 8, !tbaa !103
  %i.cw = zext <4 x i16> %i.cv to <4 x i32>
  %i.cx = shl nuw <4 x i32> %i.cw, splat (i32 16)
  %i.cy = or <4 x i32> %i.cx, %i.cu
  %i.cz = load <4 x i16>, ptr %i.cq, align 2, !tbaa !103
  %i.da = zext <4 x i16> %i.cz to <4 x i32>
  %i.db = or disjoint <4 x i32> %i.cy, %i.da
  store <4 x i32> %i.db, ptr %i.cr, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.dc = invoke noalias noundef nonnull dereferenceable(131072) ptr @_Znwm(i64 noundef 131072) #16
          to label %bb.a unwind label %bb.c       ; 4 uses

bb.a:                                             ; preds = %.preheader
  store ptr %i.dc, ptr %2, align 8, !tbaa !110
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 131072 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !111
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.dc, i8 0, i64 131072, i1 false)
  store ptr %i.dd, ptr %i.df, align 8, !tbaa !121
  br label %bb.d

bb.b:                                             ; preds = %bb.f
  %i.dg = load i32, ptr %i.j, align 8, !tbaa !122
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %bb.g, label %.preheader124

.preheader124:                                    ; preds = %bb.g, %bb.b
  br label %bb.i

bb.c:                                             ; preds = %.preheader
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.d:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.di = trunc nuw nsw i64 %indvars.iv to i32
  %i.dj = tail call noundef i32 @_ZN13pana8_param_t10gammaCurveEj(ptr noundef nonnull align 8 dereferenceable(480) %0, i32 noundef %i.di) ; 2 uses
  %i.dk = trunc i32 %i.dj to i16
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %indvars.iv
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !103
  %i.dm = zext i32 %i.dj to i64
  %.not87 = icmp eq i64 %indvars.iv, %i.dm
  br i1 %.not87, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !164

bb.g:                                             ; preds = %bb.b
  %i.dn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.preheader124 unwind label %bb.r ; 0 uses

bb.h:                                             ; preds = %bb.o
  %i.do = icmp samesign ult i32 %spec.select, 17
  br i1 %i.do, label %bb.p, label %.loopexit

bb.i:                                             ; preds = %.preheader124, %bb.o
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %bb.o ], [ 0, %.preheader124 ] ; 4 uses
  %.068101 = phi i32 [ %spec.select, %bb.o ], [ 0, %.preheader124 ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv110
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !105 ; 3 uses
  %i.dr = lshr i32 %i.dq, 16                      ; 2 uses
  %i.ds = and i32 %i.dr, 31                       ; 4 uses
  %i.dt = and i32 %i.dq, 2031616
  %.not84 = icmp eq i32 %i.dt, 0
  br i1 %.not84, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.du = and i32 %i.dr, 7                        ; 8 uses
  %i.dv = add nsw i32 %i.ds, -8
  %i.dw = icmp ult i32 %i.dv, -7
  br i1 %i.dw, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.dx = sub nsw i32 %i.du, %i.ds
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.066 = phi i32 [ 0, %bb.k ], [ %i.dz, %bb.l ]
  %.064 = phi i32 [ %i.dx, %bb.k ], [ %i.ea, %bb.l ]
  %sext = shl i32 %.066, 16
  %i.dy = ashr exact i32 %sext, 8
  %i.dz = or disjoint i32 %i.dy, 255              ; 2 uses
  %i.ea = add i32 %.064, 8                        ; 2 uses
  %.not85 = icmp eq i32 %i.ea, 0
  br i1 %.not85, label %bb.m, label %bb.l, !llvm.loop !165

bb.m:                                             ; preds = %bb.l
  %i.eb = trunc i32 %i.dz to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m
  %.1 = phi i16 [ %i.eb, %bb.m ], [ 0, %bb.j ]    ; 2 uses
  %.not8698 = icmp eq i32 %i.du, 0
  br i1 %.not8698, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.ec = shl i16 %.1, 1
  %i.ed = or disjoint i16 %i.ec, 1                ; 2 uses
  %.not86 = icmp eq i32 %i.du, 1
  br i1 %.not86, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ee = shl i16 %i.ed, 1
  %i.ef = or disjoint i16 %i.ee, 1                ; 2 uses
  %.not86.1 = icmp eq i32 %i.du, 2
  br i1 %.not86.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.eg = shl i16 %i.ef, 1
  %i.eh = or disjoint i16 %i.eg, 1                ; 2 uses
  %.not86.2 = icmp eq i32 %i.du, 3
  br i1 %.not86.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.ei = shl i16 %i.eh, 1
  %i.ej = or disjoint i16 %i.ei, 1                ; 2 uses
  %.not86.3 = icmp eq i32 %i.du, 4
  br i1 %.not86.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.ek = shl i16 %i.ej, 1
  %i.el = or disjoint i16 %i.ek, 1                ; 2 uses
  %.not86.4 = icmp eq i32 %i.du, 5
  br i1 %.not86.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.em = shl i16 %i.el, 1
  %i.en = or disjoint i16 %i.em, 1                ; 2 uses
  %.not86.5 = icmp eq i32 %i.du, 6
  br i1 %.not86.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.eo = shl i16 %i.en, 1
  %i.ep = or disjoint i16 %i.eo, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %bb.n
  %.2.lcssa = phi i16 [ %.1, %bb.n ], [ %i.ed, %.lr.ph ], [ %i.ef, %.lr.ph.1 ], [ %i.eh, %.lr.ph.2 ], [ %i.ej, %.lr.ph.3 ], [ %i.el, %.lr.ph.4 ], [ %i.en, %.lr.ph.5 ], [ %i.ep, %.lr.ph.6 ]
  %i.eq = trunc i32 %i.dq to i16
  %i.er = and i16 %.2.lcssa, %i.eq
  %i.es = zext i16 %i.er to i64
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i
  %.3 = phi i64 [ %i.es, %._crit_edge ], [ 0, %bb.i ]
  %spec.select = call i32 @llvm.umax.i32(i32 %.068101, i32 %i.ds) ; 2 uses
  %i.et = sub nuw nsw i32 64, %i.ds
  %i.eu = zext nneg i32 %i.et to i64              ; 2 uses
  %i.ev = shl i64 65535, %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv110
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !39
  %i.ex = shl i64 %.3, %i.eu
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv110
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !39
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next111, 17
  br i1 %exitcond113.not, label %bb.h, label %bb.i, !llvm.loop !166

bb.p:                                             ; preds = %bb.h
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !120
  %i.fb = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 2 uses
  %i.ff = icmp ult i64 %i.fe, 65536
  br i1 %i.ff, label %bb.q, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader

_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader:     ; preds = %bb.q, %bb.p
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.q:                                             ; preds = %bb.p
  %i.fg = sub nuw nsw i64 65536, %i.fe
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.fg)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.g
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fj = load ptr, ptr %i.de, align 8, !tbaa !111
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef %i.fm) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader ] ; 2 uses
  %.063103 = phi i64 [ %i.fr, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ], [ 0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit.preheader ] ; 2 uses
  %i.fn = call noundef i32 @_ZN13pana8_param_t7GetDBitEm(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef %.063103)
  %i.fo = trunc nuw nsw i32 %i.fn to i8
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !107
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv114
  store i8 %i.fo, ptr %i.fq, align 1, !tbaa !37
  %i.fr = add i64 %.063103, 281474976710656
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %.not83 = icmp eq i64 %indvars.iv.next115, 65536
  br i1 %.not83, label %.loopexit, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, !llvm.loop !167

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.h
  %i.fs = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorItSaItEED2Ev.exit89, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.ft = load ptr, ptr %i.de, align 8, !tbaa !111
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = sub i64 %i.fu, %i.fv
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fw) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit89

_ZNSt6vectorItSaItEED2Ev.exit89:                  ; preds = %.loopexit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.s, %bb.r, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.c ], [ %i.fh, %bb.r ], [ %i.fh, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.fx = load ptr, ptr %i.b, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !108
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = ptrtoint ptr %i.fx to i64
  %i.gc = sub i64 %i.ga, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gc) #15
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %bb.u
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !110 ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorItSaItEED2Ev.exit92, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !111
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #15
  br label %_ZNSt6vectorItSaItEED2Ev.exit92

_ZNSt6vectorItSaItEED2Ev.exit92:                  ; preds = %bb.v, %_ZNSt6vectorIhSaIhEED2Ev.exit
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN13pana8_param_t10gammaCurveEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = and i32 %1, 65536
  %i.b = icmp eq i32 %i.a, 0
  %i.c = and i32 %1, 65535
  %masksel = select i1 %i.b, i32 0, i32 -65536
  %spec.select = or disjoint i32 %masksel, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !169
  %i.f = add i32 %spec.select, %i.e
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 5 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.g, i32 65535) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !105
  %i.l = and i32 %i.k, 65535
  %.not = icmp samesign ult i32 %i.g, %i.l
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !105
  %i.o = and i32 %i.n, 65535
  %.not48 = icmp samesign ult i32 %i.g, %i.o
  br i1 %.not48, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !105
  %i.r = and i32 %i.q, 65535
  %.not49 = icmp samesign ult i32 %i.g, %i.r
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !105
  %i.u = and i32 %i.t, 65535
  %.not50 = icmp samesign ult i32 %i.g, %i.u
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i32 %i.h to i64
  %i.w = or disjoint i64 %i.v, 21474836480
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !105
  %i.z = and i32 %i.y, 65535
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = sub nuw nsw i64 %i.w, %i.aa
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.c, %bb.a
  %.038 = phi i32 [ %i.ad, %bb.e ], [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.ae = zext nneg i32 %.038 to i64              ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !105 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !105 ; 3 uses
  %i.ak = and i32 %i.ag, 65535
  %i.al = sub nsw i32 %i.h, %i.ak                 ; 3 uses
  %i.am = and i32 %i.aj, 31                       ; 4 uses
  %i.an = icmp eq i32 %i.am, 31
  br i1 %i.an, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp eq i32 %.038, 5
  br i1 %i.ao, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !105
  %i.ar = lshr i32 %i.aq, 16
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.as = and i32 %i.aj, 16
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  switch i32 %i.am, label %bb.l [
    i32 15, label %bb.k
    i32 0, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.au = lshr i32 %i.ag, 16
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.av = add nsw i32 %i.am, -1
  %i.aw = shl nuw nsw i32 1, %i.av
  %i.ax = add nsw i32 %i.aw, %i.al
  %i.ay = lshr i32 %i.ax, %i.am
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.az = and i32 %i.aj, 15
  %i.ba = shl nsw i32 %i.al, %i.az
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m
  %.0 = phi i32 [ %i.ay, %bb.l ], [ %i.al, %bb.j ], [ %i.ba, %bb.m ]
  %i.bb = lshr i32 %i.ag, 16
  %i.bc = add i32 %.0, %i.bb
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.g, %bb.n, %bb.k
  %.sink = phi i32 [ %i.bc, %bb.n ], [ %i.au, %bb.k ], [ %i.ar, %bb.h ], [ 65535, %bb.g ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !123
  %.53 = tail call i32 @llvm.umin.i32(i32 %.sink, i32 %i.be)
  ret i32 %.53
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorItSaItEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = load ptr, ptr %1, align 8, !tbaa !110    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = load ptr, ptr %0, align 8, !tbaa !110    ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775806
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, !prof !170

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #16 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 2
  br i1 %i.p, label %bb.e, label %bb.f, !prof !171

bb.e:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.o, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 2
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i16, ptr %i.c, align 2, !tbaa !103
  store i16 %i.r, ptr %i.o, align 2, !tbaa !103
  br label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit

_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !110    ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #15
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit: ; preds = %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKtS1_EEEEPtmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !111
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !121  ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.k                     ; 5 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp sgt i64 %i.f, 2
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !171

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = icmp eq i64 %i.f, 2
  br i1 %i.ad, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ae = load i16, ptr %i.c, align 2, !tbaa !103
  store i16 %i.ae, ptr %i.i, align 2, !tbaa !103
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.af = icmp sgt i64 %i.ab, 2
  br i1 %i.af, label %bb.o, label %bb.p, !prof !171

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.i, ptr align 2 %i.c, i64 %i.ab, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !110
  %.pre25 = load ptr, ptr %i.y, align 8, !tbaa !121 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !110
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !121
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPtS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ag = icmp eq i64 %i.ab, 2
  br i1 %i.ag, label %bb.q, label %_ZSt4copyIPtS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ah = load i16, ptr %i.c, align 2, !tbaa !103
  store i16 %i.ah, ptr %i.i, align 2, !tbaa !103
  br label %_ZSt4copyIPtS0_ET0_T_S2_S1_.exit

_ZSt4copyIPtS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.ab, %bb.p ], [ 2, %bb.q ]
  %i.ai = phi ptr [ %.pre25, %bb.o ], [ %i.z, %bb.p ], [ %i.z, %bb.q ] ; 2 uses
  %i.aj = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.pre-phi32 ; 3 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %.pre-phi34, %i.al              ; 3 uses
  %i.an = icmp sgt i64 %i.am, 2
  br i1 %i.an, label %bb.r, label %bb.s, !prof !171

bb.r:                                             ; preds = %_ZSt4copyIPtS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ai, ptr align 2 %i.ak, i64 %i.am, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPtS0_ET0_T_S2_S1_.exit
  %i.ao = icmp eq i64 %i.am, 2
  br i1 %i.ao, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ap = load i16, ptr %i.ak, align 2, !tbaa !103
  store i16 %i.ap, ptr %i.ai, align 2, !tbaa !103
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !110
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !121
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEENS1_IPtS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !120
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !37
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #15
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !108
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i16> @llvm.masked.load.v4i16.p0(ptr captures(none), <4 x i1>, <4 x i16>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i64> @llvm.masked.load.v4i64.p0(ptr captures(none), <4 x i1>, <4 x i64>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <25 x i16> @llvm.masked.load.v25i16.p0(ptr captures(none), <25 x i1>, <25 x i16>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !26, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!1 = distinct !{!1, !40}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 long", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseImSaImEE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorImSaImEE", !17, i64 0}
!19 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !13, i64 0}
!20 = !{!"long long", !9, i64 0}
!21 = !{!"_ZTS13pana8_bufio_t", !18, i64 0, !19, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !10, i64 56}
!22 = !{!21, !20, i64 40}
!23 = !{!21, !19, i64 24}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !0, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!28 = !{!21, !20, i64 32}
!29 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!30 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !29, line: 109, baseType: !30)
!32 = !{!21, !10, i64 56}
!33 = !{!15, !14, i64 0}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !{!"_ZTS17LibRaw_exceptions", !9, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!9, !9, i64 0}
!38 = !{!"long", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!21, !20, i64 48}
!42 = !{!"p1 short", !13, i64 0}
!43 = !{!"short", !9, i64 0}
!44 = !{!"double", !9, i64 0}
!45 = !{!"_ZTS20libraw_image_sizes_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !43, i64 12, !43, i64 14, !10, i64 16, !44, i64 24, !10, i64 32, !9, i64 36, !43, i64 164, !9, i64 166}
!46 = !{!"p1 omnipotent char", !13, i64 0}
!47 = !{!"_ZTS16libraw_iparams_t", !9, i64 0, !9, i64 4, !9, i64 68, !9, i64 132, !9, i64 196, !9, i64 260, !10, i64 324, !10, i64 328, !10, i64 332, !10, i64 336, !10, i64 340, !10, i64 344, !9, i64 348, !9, i64 384, !9, i64 420, !10, i64 428, !46, i64 432}
!48 = !{!"float", !9, i64 0}
!49 = !{!"_ZTS18libraw_nikonlens_t", !48, i64 0, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!50 = !{!"_ZTS16libraw_dnglens_t", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12}
!51 = !{!"_ZTS24libraw_makernotes_lens_t", !20, i64 0, !9, i64 8, !43, i64 136, !43, i64 138, !20, i64 144, !43, i64 152, !43, i64 154, !9, i64 156, !43, i64 220, !9, i64 222, !9, i64 238, !48, i64 256, !48, i64 260, !48, i64 264, !48, i64 268, !48, i64 272, !48, i64 276, !48, i64 280, !48, i64 284, !48, i64 288, !48, i64 292, !48, i64 296, !48, i64 300, !48, i64 304, !48, i64 308, !48, i64 312, !20, i64 320, !9, i64 328, !20, i64 456, !9, i64 464, !20, i64 592, !9, i64 600, !43, i64 728, !48, i64 732}
!52 = !{!"_ZTS17libraw_lensinfo_t", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !9, i64 20, !9, i64 148, !9, i64 276, !9, i64 404, !43, i64 532, !49, i64 536, !50, i64 544, !51, i64 560}
!53 = !{!"_ZTS13libraw_area_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!54 = !{!"_ZTS25libraw_canon_makernotes_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !9, i64 16, !10, i64 32, !9, i64 36, !43, i64 52, !43, i64 54, !9, i64 56, !43, i64 58, !43, i64 60, !43, i64 62, !43, i64 64, !43, i64 66, !43, i64 68, !43, i64 70, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !43, i64 80, !43, i64 82, !10, i64 84, !48, i64 88, !43, i64 92, !43, i64 94, !43, i64 96, !43, i64 98, !10, i64 100, !43, i64 104, !10, i64 108, !10, i64 112, !43, i64 116, !10, i64 120, !53, i64 124, !53, i64 132, !53, i64 140, !53, i64 148, !53, i64 156, !9, i64 164}
!55 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6}
!56 = !{!"_ZTS25libraw_nikon_makernotes_t", !44, i64 0, !43, i64 8, !43, i64 10, !9, i64 12, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 34, !9, i64 54, !9, i64 58, !9, i64 62, !9, i64 66, !9, i64 67, !9, i64 68, !9, i64 69, !9, i64 70, !9, i64 71, !9, i64 73, !9, i64 74, !9, i64 75, !9, i64 76, !9, i64 77, !9, i64 78, !9, i64 82, !9, i64 86, !43, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !9, i64 112, !9, i64 144, !9, i64 145, !9, i64 146, !10, i64 148, !10, i64 152, !10, i64 156, !9, i64 160, !9, i64 162, !43, i64 170, !55, i64 172, !43, i64 180, !43, i64 182, !43, i64 184, !10, i64 188, !9, i64 192, !9, i64 212, !10, i64 232, !9, i64 236, !10, i64 248, !46, i64 256, !43, i64 264, !43, i64 266, !9, i64 268, !43, i64 270, !44, i64 272, !44, i64 280, !44, i64 288}
!57 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !10, i64 0, !44, i64 8, !9, i64 16, !9, i64 24, !9, i64 88, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !9, i64 168, !9, i64 200, !10, i64 264, !9, i64 268, !9, i64 276, !9, i64 288}
!58 = !{!"_ZTS18libraw_fuji_info_t", !48, i64 0, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !43, i64 12, !43, i64 14, !43, i64 16, !43, i64 18, !9, i64 20, !9, i64 53, !48, i64 88, !43, i64 92, !43, i64 94, !9, i64 96, !43, i64 100, !10, i64 104, !10, i64 108, !43, i64 112, !9, i64 114, !43, i64 120, !43, i64 122, !43, i64 124, !43, i64 126, !43, i64 128, !10, i64 132, !43, i64 136, !9, i64 138, !9, i64 151, !9, i64 156, !10, i64 164, !43, i64 168, !10, i64 172, !43, i64 176, !9, i64 178, !9, i64 196, !10, i64 324, !10, i64 328, !10, i64 332, !9, i64 336, !10, i64 344}
!59 = !{!"_ZTS27libraw_olympus_makernotes_t", !9, i64 0, !43, i64 6, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !9, i64 64, !9, i64 72, !43, i64 82, !9, i64 84, !43, i64 88, !43, i64 90, !9, i64 92, !9, i64 352, !43, i64 392, !9, i64 394, !9, i64 396, !9, i64 404, !43, i64 416, !43, i64 418, !43, i64 420, !43, i64 422, !44, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !10, i64 452, !43, i64 456, !43, i64 458}
!60 = !{!"_ZTS18libraw_sony_info_t", !43, i64 0, !9, i64 2, !9, i64 3, !10, i64 4, !9, i64 8, !10, i64 12, !9, i64 16, !9, i64 17, !43, i64 18, !9, i64 20, !9, i64 24, !9, i64 25, !43, i64 26, !9, i64 28, !9, i64 38, !9, i64 39, !9, i64 40, !43, i64 48, !9, i64 50, !9, i64 51, !9, i64 52, !43, i64 54, !10, i64 56, !43, i64 60, !9, i64 62, !43, i64 66, !43, i64 68, !43, i64 70, !43, i64 72, !43, i64 74, !43, i64 76, !43, i64 78, !10, i64 80, !48, i64 84, !43, i64 88, !10, i64 92, !10, i64 96, !43, i64 100, !9, i64 102, !10, i64 124, !43, i64 128, !10, i64 132, !9, i64 136, !9, i64 137, !43, i64 138, !43, i64 140, !43, i64 142, !43, i64 144, !43, i64 146, !43, i64 148, !43, i64 150, !43, i64 152, !43, i64 154, !10, i64 156, !43, i64 160, !9, i64 162, !48, i64 180}
!61 = !{!"_ZTS25libraw_kodak_makernotes_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !9, i64 12, !9, i64 48, !9, i64 84, !9, i64 120, !9, i64 156, !9, i64 192, !43, i64 228, !43, i64 230, !43, i64 232, !43, i64 234, !48, i64 236, !48, i64 240}
!62 = !{!"_ZTS29libraw_panasonic_makernotes_t", !43, i64 0, !43, i64 2, !9, i64 4, !10, i64 36, !48, i64 40, !9, i64 44, !43, i64 56, !43, i64 58, !10, i64 60, !10, i64 64}
!63 = !{!"_ZTS26libraw_pentax_makernotes_t", !9, i64 0, !9, i64 4, !9, i64 8, !43, i64 12, !10, i64 16, !10, i64 20, !43, i64 24, !9, i64 26, !43, i64 30, !9, i64 32, !9, i64 33, !43, i64 34}
!64 = !{!"_ZTS22libraw_p1_makernotes_t", !9, i64 0, !9, i64 64, !9, i64 128, !9, i64 384}
!65 = !{!"_ZTS25libraw_ricoh_makernotes_t", !43, i64 0, !9, i64 4, !9, i64 12, !43, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !43, i64 40, !43, i64 42, !43, i64 44, !43, i64 46, !43, i64 48, !43, i64 50, !44, i64 56, !44, i64 64}
!66 = !{!"_ZTS27libraw_samsung_makernotes_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 40, !44, i64 88, !10, i64 96, !9, i64 100}
!67 = !{!"_ZTS24libraw_metadata_common_t", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52, !48, i64 56, !48, i64 60, !43, i64 64, !9, i64 66, !48, i64 196, !9, i64 200, !10, i64 296}
!68 = !{!"_ZTS19libraw_makernotes_t", !54, i64 0, !56, i64 168, !57, i64 464, !58, i64 848, !59, i64 1200, !60, i64 1664, !61, i64 1848, !62, i64 2092, !63, i64 2160, !64, i64 2196, !65, i64 2648, !66, i64 2720, !67, i64 2856}
!69 = !{!"_ZTS21libraw_shootinginfo_t", !43, i64 0, !43, i64 2, !43, i64 4, !43, i64 6, !43, i64 8, !43, i64 10, !43, i64 12, !9, i64 14, !9, i64 78}
!70 = !{!"_ZTS22libraw_output_params_t", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 64, !9, i64 112, !48, i64 128, !48, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !46, i64 168, !46, i64 176, !46, i64 184, !46, i64 192, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !9, i64 224, !10, i64 240, !10, i64 244, !48, i64 248, !48, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !48, i64 288, !48, i64 292, !10, i64 296, !10, i64 300}
!71 = !{!"any p2 pointer", !13, i64 0}
!72 = !{!"p2 omnipotent char", !71, i64 0}
!73 = !{!"_ZTS26libraw_raw_unpack_params_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !48, i64 28, !9, i64 32, !72, i64 40}
!74 = !{!"_ZTS5ph1_t", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !48, i64 32}
!75 = !{!"_ZTS19libraw_dng_levels_t", !10, i64 0, !9, i64 4, !10, i64 16420, !9, i64 16424, !48, i64 32840, !9, i64 32844, !9, i64 32860, !9, i64 32868, !10, i64 32884, !9, i64 32888, !9, i64 32904, !48, i64 32920, !48, i64 32924, !9, i64 32928}
!76 = !{!"_ZTS18libraw_colordata_t", !9, i64 0, !9, i64 131072, !10, i64 147488, !10, i64 147492, !10, i64 147496, !9, i64 147500, !48, i64 147516, !48, i64 147520, !9, i64 147524, !9, i64 147652, !9, i64 147668, !9, i64 147684, !9, i64 147732, !9, i64 147780, !9, i64 147828, !74, i64 147876, !48, i64 147912, !48, i64 147916, !9, i64 147920, !9, i64 147984, !9, i64 148048, !9, i64 148112, !9, i64 148176, !9, i64 148193, !13, i64 148264, !10, i64 148272, !9, i64 148276, !9, i64 148308, !75, i64 148648, !9, i64 181624, !9, i64 185720, !10, i64 187000, !9, i64 187004, !10, i64 187076, !10, i64 187080}
!77 = !{!"_ZTS17libraw_gps_info_t", !9, i64 0, !9, i64 12, !9, i64 24, !48, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !9, i64 44}
!78 = !{!"_ZTS17libraw_imgother_t", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !38, i64 16, !10, i64 24, !9, i64 28, !77, i64 156, !9, i64 204, !9, i64 716, !9, i64 780}
!79 = !{!"_ZTS24LibRaw_thumbnail_formats", !9, i64 0}
!80 = !{!"_ZTS18libraw_thumbnail_t", !79, i64 0, !43, i64 4, !43, i64 6, !10, i64 8, !10, i64 12, !46, i64 16}
!81 = !{!"_ZTS23libraw_thumbnail_list_t", !10, i64 0, !9, i64 8}
!82 = !{!"p1 float", !13, i64 0}
!83 = !{!"_ZTS31libraw_internal_output_params_t", !10, i64 0, !10, i64 4, !10, i64 8, !43, i64 12, !43, i64 14}
!84 = !{!"_ZTS16libraw_rawdata_t", !13, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !42, i64 56, !42, i64 64, !47, i64 72, !45, i64 512, !83, i64 696, !76, i64 712}
!85 = !{!"_ZTS13libraw_data_t", !42, i64 0, !45, i64 8, !47, i64 192, !52, i64 632, !68, i64 1928, !69, i64 5088, !70, i64 5232, !73, i64 5536, !10, i64 5584, !10, i64 5588, !76, i64 5592, !78, i64 192680, !80, i64 193480, !81, i64 193504, !84, i64 193768, !13, i64 381568}
!86 = !{!"p1 _ZTS10LibRaw_TLS", !13, i64 0}
!87 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!88 = !{!"_ZTS15internal_data_t", !19, i64 0, !87, i64 8, !10, i64 16, !46, i64 24, !20, i64 32, !20, i64 40, !9, i64 48}
!89 = !{!"p1 int", !13, i64 0}
!90 = !{!"_ZTS13output_data_t", !89, i64 0, !89, i64 8}
!91 = !{!"_ZTS15identify_data_t", !10, i64 0, !20, i64 8, !20, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!92 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !9, i64 0}
!93 = !{!"_ZTS12pana8_tags_t", !9, i64 0, !9, i64 24, !43, i64 36, !9, i64 38, !9, i64 46, !9, i64 80, !9, i64 114, !43, i64 148, !43, i64 150, !9, i64 152, !9, i64 192, !9, i64 204, !9, i64 224, !9, i64 234}
!94 = !{!"_ZTS15unpacker_data_t", !43, i64 0, !9, i64 2, !9, i64 10, !10, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !92, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !20, i64 144, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !10, i64 180, !10, i64 184, !93, i64 192, !9, i64 440, !10, i64 2488, !10, i64 2492, !43, i64 2496, !43, i64 2498, !10, i64 2500, !10, i64 2504, !10, i64 2508, !10, i64 2512, !10, i64 2516, !10, i64 2520, !10, i64 2524, !9, i64 2528, !43, i64 2608}
!95 = !{!"_ZTS22libraw_internal_data_t", !88, i64 0, !83, i64 64, !90, i64 80, !91, i64 96, !94, i64 136}
!96 = !{!"p1 _ZTS6decode", !13, i64 0}
!97 = !{!"_ZTS13libraw_memmgr", !71, i64 0, !10, i64 8}
!98 = !{!"_ZTS18libraw_callbacks_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!99 = !{!"_ZTS6LibRaw", !85, i64 8, !86, i64 381584, !95, i64 381592, !9, i64 384344, !96, i64 433496, !96, i64 433504, !9, i64 433512, !97, i64 768232, !98, i64 768248, !9, i64 768400, !9, i64 768416, !9, i64 768432, !13, i64 768448, !13, i64 768456, !13, i64 768464, !38, i64 768472, !13, i64 768480, !13, i64 768488, !13, i64 768496, !13, i64 768504}
!100 = !{!99, !19, i64 381592}
!101 = !{!99, !43, i64 382068}
!102 = !{!99, !43, i64 18}
!103 = !{!43, !43, i64 0}
!104 = !{!20, !20, i64 0}
!105 = !{!10, !10, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!107 = !{!106, !46, i64 0}
!108 = !{!106, !46, i64 16}
!109 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !42, i64 0, !42, i64 8, !42, i64 16}
!110 = !{!109, !42, i64 0}
!111 = !{!109, !42, i64 16}
!112 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !109, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseItSaItEE", !112, i64 0}
!114 = !{!"_ZTSSt6vectorItSaItEE", !113, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !106, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIhSaIhEE", !116, i64 0}
!118 = !{!"_ZTS13pana8_param_t", !10, i64 0, !10, i64 4, !9, i64 8, !9, i64 32, !10, i64 56, !9, i64 60, !9, i64 76, !10, i64 148, !10, i64 152, !9, i64 160, !9, i64 296, !114, i64 432, !117, i64 456}
!119 = !{!118, !10, i64 148}
!120 = !{!106, !46, i64 8}
!121 = !{!109, !42, i64 8}
!122 = !{!118, !10, i64 152}
!123 = !{!118, !10, i64 56}
!124 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!125 = !{!124, !27}
!126 = !DISubroutineType(types: !125)
!127 = !DISubprogram(name: "lock", linkageName: "_ZN26LibRaw_abstract_datastream4lockEv", scope: !0, file: !26, line: 115, type: !126, scopeLine: 115, containingType: !0, virtualIndex: 15, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!128 = !{!124, !27, !31, !124}
!129 = !DISubroutineType(types: !128)
!130 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !0, file: !26, line: 102, type: !129, scopeLine: 102, containingType: !0, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!131 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 18, baseType: !132)
!134 = !{!124, !27, !34, !133, !133}
!135 = !DISubroutineType(types: !134)
!136 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !0, file: !26, line: 101, type: !135, scopeLine: 101, containingType: !0, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!137 = !{null, !27}
!138 = !DISubroutineType(types: !137)
!139 = !DISubprogram(name: "unlock", linkageName: "_ZN26LibRaw_abstract_datastream6unlockEv", scope: !0, file: !26, line: 116, type: !138, scopeLine: 116, containingType: !0, virtualIndex: 16, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!140 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw", file: !144, line: 188, size: 6148096, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS6LibRaw")
!141 = !{!31, !27}
!142 = !DISubroutineType(types: !141)
!143 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !0, file: !26, line: 104, type: !142, scopeLine: 104, containingType: !0, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!144 = !DIFile(filename: "src/external/LibRaw/libraw/libraw.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "74f509d56e54266474f737b86ec23b25")
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!146 = !{null, !145, !34}
!147 = !DISubroutineType(types: !146)
!148 = !DISubprogram(name: "pana8_decode_loop", linkageName: "_ZN6LibRaw17pana8_decode_loopEPv", scope: !140, file: !144, line: 390, type: !147, scopeLine: 390, containingType: !140, virtualIndex: 21, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!149 = distinct !{!149, !40}
!150 = !{!15, !14, i64 16}
!151 = !{!15, !14, i64 8}
!152 = distinct !{!152, !40}
!153 = distinct !{!153, i1 false, !"LVerDomain"}
!154 = distinct !{!154, !153}
!155 = distinct !{!155, !40, !162, !163}
!156 = distinct !{!156, !40}
!157 = distinct !{!157, !40, !162}
!158 = distinct !{!158, !40}
!159 = !{!118, !10, i64 0}
!160 = !{!99, !42, i64 193784}
!161 = !{!154}
!162 = !{!"llvm.loop.isvectorized", i32 1}
!163 = !{!"llvm.loop.unroll.runtime.disable"}
!164 = distinct !{!164, !40}
!165 = distinct !{!165, !40}
!166 = distinct !{!166, !40}
!167 = distinct !{!167, !40}
!168 = !{!93, !43, i64 36}
!169 = !{!118, !10, i64 4}
!170 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!171 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
