Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/pana8?download=true
inline.NumInlined: 402
inline.NumDeleted: 262
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6LibRaw20panasonicC8_load_rawEv:bb.a
  resume { ptr, i32 } %i.ey
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN13pana8_param_tD2Ev(ptr noundef nonnull align 8 dead_on_return(480) dereferenceable(480) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.b, ptr %i.c, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #16
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104  ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.j, ptr %i.k, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !106
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #16
  br label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit

_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw17pana8_decode_loopEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 382068 ; 2 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !90
  %.not6 = icmp eq i16 %i.b, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw nsw i32 %.05, 1                  ; 2 uses
  %i.d = load i16, ptr %i.a, align 4, !tbaa !90
  %i.e = zext i16 %i.d to i32
  %i.f = icmp samesign ult i32 %i.c, %i.e
  %i.g = icmp samesign ult i32 %.05, 4
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph, label %._crit_edge, !llvm.loop !113

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.i = tail call noundef i32 @_ZN6LibRaw18pana8_decode_stripEPvi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1, i32 noundef %.05)
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = tail call ptr @__cxa_allocate_exception(i64 4) #14 ; 2 uses
  store i32 5, ptr %i.j, align 16, !tbaa !25
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #15
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
  br i1 %or.cond, label %bb.f, label %_ZN13pana8_bufio_tC2EP26LibRaw_abstract_datastreamxj.exit

_ZN13pana8_bufio_tC2EP26LibRaw_abstract_datastreamxj.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 382124
  %i.i = zext nneg i32 %2 to i64                  ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !94
  %i.l = add i32 %i.k, 7
  %i.m = lshr i32 %i.l, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 382072
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !93
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.t = tail call noalias noundef nonnull dereferenceable(819200) ptr @_Znwm(i64 noundef 819200) #17 ; 3 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 819200 ; 2 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(819200) %i.t, i8 0, i64 819200, i1 false), !tbaa !28
  store ptr %i.u, ptr %i.r, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.n, ptr %i.v, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.q, ptr %i.w, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i32 %i.m, ptr %i.y, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 382144
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.i
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !92
  %i.ac = zext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 382154
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.i
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !92
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 382112
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.i
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !92
  %i.ak = invoke noundef zeroext i1 @_ZN13pana8_param_t8DecodeC8ER13pana8_bufio_tjjP6LibRawt(ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(60) %3, i32 noundef %i.ac, i32 noundef %i.ag, ptr noundef nonnull %0, i16 noundef zeroext %i.aj)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN13pana8_bufio_tC2EP26LibRaw_abstract_datastreamxj.exit
  %i.al = xor i1 %i.ak, true
  %i.am = zext i1 %i.al to i32
  %i.an = load ptr, ptr %3, align 8, !tbaa !23    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZN13pana8_bufio_tD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !114
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #16
  br label %_ZN13pana8_bufio_tD2Ev.exit

_ZN13pana8_bufio_tD2Ev.exit:                      ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.f

bb.d:                                             ; preds = %_ZN13pana8_bufio_tC2EP26LibRaw_abstract_datastreamxj.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !23    ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i23, label %_ZN13pana8_bufio_tD2Ev.exit24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.s, align 8, !tbaa !114
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #16
  br label %_ZN13pana8_bufio_tD2Ev.exit24

_ZN13pana8_bufio_tD2Ev.exit24:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %i.as

bb.f:                                             ; preds = %bb.a, %_ZN13pana8_bufio_tD2Ev.exit
  %.0 = phi i32 [ %i.am, %_ZN13pana8_bufio_tD2Ev.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN13pana8_param_t8DecodeC8ER13pana8_bufio_tjjP6LibRawt(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i16 noundef zeroext %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__1::vector.8", align 8 ; 8 uses
  %i.a = lshr i32 %2, 1                           ; 3 uses
  %i.b = lshr i32 %3, 1                           ; 2 uses
  %i.c = icmp ne i32 %i.a, 0
  %i.d = icmp ne i32 %i.b, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.as

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22
  %i.g = add i32 %i.f, 7                          ; 2 uses
  %i.h = and i32 %i.g, -8
  %i.i = icmp ult i32 %i.h, 9
  br i1 %i.i, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !108
  %i.l = load i32, ptr %0, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = load <4 x i32>, ptr %i.m, align 4, !tbaa !94
  %i.o = and <4 x i32> %i.n, splat (i32 65535)
  %i.p = lshr i32 %i.k, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ugt i64 %i.w, 65535
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !104 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ugt i64 %i.ae, 131070
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !109
  %.not = icmp eq i32 %i.ah, 0
  %spec.select329 = select i1 %.not, ptr %i.ab, ptr null
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi ptr [ null, %bb.c ], [ %spec.select329, %bb.d ] ; 5 uses
  %i.aj = lshr i32 %i.g, 3                        ; 3 uses
  %i.ak = shl i32 %i.a, 2                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.al = shl i32 %i.a, 4                         ; 3 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.not.i = icmp eq i32 %i.al, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp slt i32 %i.al, 0
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #15
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #17
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i unwind label %bb.i ; 3 uses

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i: ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aq, i8 0, i64 %i.am, i1 false), !tbaa !26
  %i.as = ptrtoint ptr %i.ar to i64
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %6, align 8, !tbaa !98    ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.au, ptr %i.an, align 8, !tbaa !99
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !100
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #16
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %bb.j, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.mn, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit ], [ %i.at, %bb.j ], [ %i.at, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit:    ; preds = %bb.e, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i
  %i.az = phi i64 [ 0, %bb.e ], [ %i.as, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i ] ; 2 uses
  %i.ba = phi ptr [ null, %bb.e ], [ %i.aq, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit.i ] ; 19 uses
  %.not257.not362 = icmp sgt i32 %i.ak, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 193784
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.bh = zext i16 %5 to i64                      ; 3 uses
  %.not258 = icmp eq ptr %i.ai, null
  %i.bi = add i32 %2, -1                          ; 3 uses
  %.not398 = icmp eq i32 %i.bi, 0                 ; 2 uses
  %i.bj = add i32 %2, -2
  %i.bk = lshr i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 4
  %i.bn = getelementptr i8, ptr %i.ba, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bn, i64 14  ; 4 uses
  %i.bo = shl nuw nsw i64 %i.bh, 1                ; 3 uses
  %i.bp = shl nuw nsw i64 %i.bl, 2
  %7 = add nuw nsw i64 %i.bp, %i.bo               ; 2 uses
  %8 = add nuw nsw i64 %7, 4                      ; 2 uses
  %i.bq = add nuw nsw i64 %i.bo, 2                ; 2 uses
  %i.br = add nuw nsw i64 %7, 2                   ; 2 uses
  %i.bs = add i32 %2, -2
  %i.bt = lshr i32 %i.bs, 1
  %i.bu = add nuw i32 %i.bt, 1                    ; 2 uses
  %i.bv = add i32 %2, -82
  %or.cond527 = icmp ult i32 %i.bv, 536870832
  %i.bw = and i32 %i.bu, 3                        ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  %i.by = select i1 %i.bx, i32 4, i32 %i.bw
  %n.vec = sub i32 %i.bu, %i.by                   ; 2 uses
  %i.bz = shl i32 %n.vec, 1
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit, %.loopexit
  %.0202397 = phi i32 [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit ], [ %i.mm, %.loopexit ] ; 2 uses
  %.0203396 = phi i32 [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit ], [ %.1204.lcssa, %.loopexit ] ; 2 uses
  %.0210395 = phi i32 [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit ], [ %.1211.lcssa, %.loopexit ] ; 2 uses
  %.0216394 = phi i64 [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit ], [ %.1217.lcssa, %.loopexit ] ; 2 uses
  %.0227393 = phi i32 [ %i.p, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit ], [ %.1228.lcssa, %.loopexit ] ; 2 uses
  %i.ca = phi <4 x i32> [ %i.o, %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit ], [ %i.hd, %.loopexit ] ; 6 uses
  br i1 %.not257.not362, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.cb = extractelement <4 x i32> %i.ca, i64 3
  %i.cc = extractelement <4 x i32> %i.ca, i64 2
  %i.cd = extractelement <4 x i32> %i.ca, i64 1
  %i.ce = extractelement <4 x i32> %i.ca, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %.0201377 = phi i32 [ %i.hc, %bb.ao ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.1204374 = phi i32 [ %.4207, %bb.ao ], [ %.0203396, %.lr.ph.preheader ] ; 9 uses
  %.1211373 = phi i32 [ %i.gy, %bb.ao ], [ %.0210395, %.lr.ph.preheader ] ; 5 uses
  %.1217372 = phi i64 [ %i.gw, %bb.ao ], [ %.0216394, %.lr.ph.preheader ]
  %.1228371 = phi i32 [ %.2229, %bb.ao ], [ %.0227393, %.lr.ph.preheader ]
  %.sroa.0.0370 = phi i32 [ %.sroa.0.1, %bb.ao ], [ %i.ce, %.lr.ph.preheader ] ; 2 uses
  %.sroa.7.0369 = phi i32 [ %.sroa.7.1, %bb.ao ], [ %i.cd, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.0368 = phi i32 [ %.sroa.10.1, %bb.ao ], [ %i.cc, %.lr.ph.preheader ] ; 2 uses
  %.sroa.13.0367 = phi i32 [ %.sroa.13.1, %bb.ao ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %i.cf = phi <4 x i32> [ %i.hb, %bb.ao ], [ %i.ca, %.lr.ph.preheader ]
  %i.cg = icmp slt i32 %.1211373, 0
  br i1 %i.cg, label %bb.l, label %bb.t

bb.l:                                             ; preds = %.lr.ph
  %i.ch = add i32 %.1204374, 1                    ; 4 uses
  %.not249 = icmp slt i32 %i.ch, %i.aj
  br i1 %.not249, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.ci = add nsw i32 %.1211373, 64               ; 3 uses
  %i.cj = zext i32 %.1204374 to i64               ; 5 uses
  %i.ck = load i64, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  %.not.i263 = icmp sle i64 %i.ck, %i.cj
  %i.cl = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.cm = icmp sgt i64 %i.cl, %i.cj
  %or.cond.i = select i1 %.not.i263, i1 %i.cm, i1 false
  br i1 %or.cond.i, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.bd, align 8, !tbaa !18
  %.not11.i = icmp eq ptr %i.cn, null
  br i1 %.not11.i, label %_ZN13pana8_bufio_t8getQWordEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %.1204374)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.o
  %i.co = load i64, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  %.not12.i = icmp sle i64 %i.co, %i.cj
  %.pre = load i64, ptr %i.bc, align 8            ; 3 uses
  %i.cp = icmp sgt i64 %.pre, %i.cj
  %or.cond435 = select i1 %.not12.i, i1 %i.cp, i1 false
  br i1 %or.cond435, label %.sink.split.i, label %_ZN13pana8_bufio_t8getQWordEj.exit

.sink.split.i:                                    ; preds = %.noexc, %bb.m
  %i.cq = phi i64 [ %i.cl, %bb.m ], [ %.pre, %.noexc ]
  %.sink.i = phi i64 [ %i.ck, %bb.m ], [ %i.co, %.noexc ] ; 2 uses
  %i.cr = sub nsw i64 %i.cj, %.sink.i
  %i.cs = load ptr, ptr %1, align 8, !tbaa !23
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !28
  br label %_ZN13pana8_bufio_t8getQWordEj.exit

_ZN13pana8_bufio_t8getQWordEj.exit:               ; preds = %.sink.split.i, %.noexc, %bb.n
  %i.cv = phi i64 [ %i.cq, %.sink.split.i ], [ %.pre, %.noexc ], [ %i.cl, %bb.n ]
  %i.cw = phi i64 [ %.sink.i, %.sink.split.i ], [ %i.co, %.noexc ], [ %i.ck, %bb.n ] ; 2 uses
  %.0.i = phi i64 [ %i.cu, %.sink.split.i ], [ 0, %.noexc ], [ 0, %bb.n ]
  %i.cx = zext i32 %i.ch to i64                   ; 5 uses
  %.not.i264 = icmp sle i64 %i.cw, %i.cx
  %i.cy = icmp sgt i64 %i.cv, %i.cx
  %or.cond.i265 = select i1 %.not.i264, i1 %i.cy, i1 false
  br i1 %or.cond.i265, label %.sink.split.i269, label %bb.p

bb.p:                                             ; preds = %_ZN13pana8_bufio_t8getQWordEj.exit
  %i.cz = load ptr, ptr %i.bd, align 8, !tbaa !18
  %.not11.i266 = icmp eq ptr %i.cz, null
  br i1 %.not11.i266, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %i.ch)
          to label %.noexc271 unwind label %bb.s

.noexc271:                                        ; preds = %bb.q
  %i.da = load i64, ptr %i.bb, align 8, !tbaa !17 ; 2 uses
  %.not12.i267 = icmp sgt i64 %i.da, %i.cx
  br i1 %.not12.i267, label %.thread, label %bb.r

bb.r:                                             ; preds = %.noexc271
  %i.db = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.dc = icmp sgt i64 %i.db, %i.cx
  br i1 %i.dc, label %.sink.split.i269, label %.thread

.sink.split.i269:                                 ; preds = %bb.r, %_ZN13pana8_bufio_t8getQWordEj.exit
  %.sink.i270 = phi i64 [ %i.cw, %_ZN13pana8_bufio_t8getQWordEj.exit ], [ %i.da, %bb.r ]
  %i.dd = sub nsw i64 %i.cx, %.sink.i270
  %i.de = load ptr, ptr %1, align 8, !tbaa !23
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.p, %.noexc271, %bb.r, %.sink.split.i269
  %.0.i268 = phi i64 [ 0, %bb.r ], [ 0, %.noexc271 ], [ 0, %bb.p ], [ %i.dg, %.sink.split.i269 ]
  %i.dh = zext nneg i32 %i.ci to i64
  %i.di = lshr i64 %.0.i268, %i.dh
  %i.dj = and i32 %i.ci, 255
  %i.dk = sub nsw i32 64, %i.dj
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = shl i64 %.0.i, %i.dl
  %i.dn = or i64 %i.di, %i.dm
  %i.do = icmp ult i32 %.1204374, %i.aj
  %spec.select = select i1 %i.do, i32 %i.ch, i32 %.1204374
  br label %bb.y

bb.s:                                             ; preds = %bb.w, %bb.q, %bb.o
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %.2223 = extractvalue { ptr, i32 } %i.dp, 0
  %i.dq = tail call ptr @__cxa_begin_catch(ptr %.2223) #14 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %.critedge unwind label %bb.ap

bb.t:                                             ; preds = %.lr.ph
  %.not247 = icmp ult i32 %.1204374, %i.aj
  br i1 %.not247, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.dr = zext nneg i32 %.1204374 to i64          ; 5 uses
  %i.ds = load i64, ptr %i.bb, align 8, !tbaa !17 ; 2 uses
  %.not.i273 = icmp sle i64 %i.ds, %i.dr
  %i.dt = load i64, ptr %i.bc, align 8
  %i.du = icmp sgt i64 %i.dt, %i.dr
  %or.cond.i274 = select i1 %.not.i273, i1 %i.du, i1 false
  br i1 %or.cond.i274, label %.sink.split.i278, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = load ptr, ptr %i.bd, align 8, !tbaa !18
  %.not11.i275 = icmp eq ptr %i.dv, null
  br i1 %.not11.i275, label %_ZN13pana8_bufio_t8getQWordEj.exit281, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN13pana8_bufio_t6refillEj(ptr noundef nonnull align 8 dereferenceable(60) %1, i32 noundef %.1204374)
          to label %.noexc280 unwind label %bb.s

.noexc280:                                        ; preds = %bb.w
  %i.dw = load i64, ptr %i.bb, align 8, !tbaa !17 ; 2 uses
  %.not12.i276 = icmp sgt i64 %i.dw, %i.dr
  br i1 %.not12.i276, label %_ZN13pana8_bufio_t8getQWordEj.exit281, label %bb.x

bb.x:                                             ; preds = %.noexc280
  %i.dx = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.dy = icmp sgt i64 %i.dx, %i.dr
  br i1 %i.dy, label %.sink.split.i278, label %_ZN13pana8_bufio_t8getQWordEj.exit281

.sink.split.i278:                                 ; preds = %bb.x, %bb.u
  %.sink.i279 = phi i64 [ %i.ds, %bb.u ], [ %i.dw, %bb.x ]
  %i.dz = sub nsw i64 %i.dr, %.sink.i279
  %i.ea = load ptr, ptr %1, align 8, !tbaa !23
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !28
  br label %_ZN13pana8_bufio_t8getQWordEj.exit281

_ZN13pana8_bufio_t8getQWordEj.exit281:            ; preds = %.sink.split.i278, %bb.x, %.noexc280, %bb.v
  %.0.i277 = phi i64 [ 0, %bb.x ], [ 0, %.noexc280 ], [ 0, %bb.v ], [ %i.ec, %.sink.split.i278 ]
  %i.ed = zext nneg i32 %.1211373 to i64
  %i.ee = lshr i64 %.0.i277, %i.ed
  %i.ef = or i64 %i.ee, %.1217372
  %i.eg = icmp eq i32 %.1211373, 0                ; 2 uses
  %i.eh = zext i1 %i.eg to i32
  %spec.store.select = select i1 %i.eg, i32 64, i32 %.1211373
  %i.ei = add nuw nsw i32 %.1204374, %i.eh
  br label %bb.y

bb.y:                                             ; preds = %.thread, %_ZN13pana8_bufio_t8getQWordEj.exit281
  %.3213 = phi i32 [ %i.ci, %.thread ], [ %spec.store.select, %_ZN13pana8_bufio_t8getQWordEj.exit281 ]
  %.4207 = phi i32 [ %spec.select, %.thread ], [ %i.ei, %_ZN13pana8_bufio_t8getQWordEj.exit281 ] ; 2 uses
  %.1200 = phi i64 [ %i.dn, %.thread ], [ %i.ef, %_ZN13pana8_bufio_t8getQWordEj.exit281 ] ; 3 uses
  br i1 %i.x, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ej = lshr i64 %.1200, 48
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !26
  %i.em = zext i8 %i.el to i32
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.en = tail call noundef i32 @_ZN13pana8_param_t7GetDBitEm(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef %.1200)
  %i.eo = load i32, ptr %i.j, align 4, !tbaa !108
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2229 = phi i32 [ %.1228371, %bb.z ], [ %i.eo, %bb.aa ] ; 6 uses
  %.0198 = phi i32 [ %i.em, %bb.z ], [ %i.en, %bb.aa ] ; 7 uses
  %i.ep = zext nneg i32 %.0198 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !94 ; 2 uses
  %i.es = lshr i32 %i.er, 24                      ; 2 uses
  %i.et = and i32 %i.es, 31                       ; 7 uses
  %i.eu = lshr i32 %i.er, 16
  %i.ev = and i32 %i.eu, 31                       ; 2 uses
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl i64 %.1200, %i.ew                   ; 3 uses
  %i.ey = sub nsw i32 %.0198, %i.et               ; 2 uses
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = sub nsw i32 %i.et, %.0198
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = lshr i64 %i.ex, %i.fb
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = and i32 %i.fd, 65535
  %i.ff = shl i32 %i.fe, %i.es                    ; 2 uses
  %i.fg = icmp slt i32 %i.ey, 1
  %i.fh = and i32 %i.ff, -65536
  %spec.select260 = select i1 %i.fg, i32 %i.fh, i32 %i.ff ; 3 uses
  %i.fi = icmp slt i64 %i.ex, 0
  br i1 %i.fi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fj = and i32 %spec.select260, 65535
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %.not252 = icmp eq i32 %.0198, 0
  br i1 %.not252, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fk = shl nsw i32 -1, %.0198                  ; 2 uses
  %.not253 = icmp eq i32 %i.et, 0
  br i1 %.not253, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = and i32 %spec.select260, 65535
  %i.fm = add nsw i32 %i.fl, %i.fk
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.fn = add nuw nsw i32 %i.fk, 1
  %i.fo = add nsw i32 %i.fn, %spec.select260
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ac
  %.1195 = phi i32 [ %i.fj, %bb.ac ], [ %i.fo, %bb.ag ], [ %i.fm, %bb.af ], [ 0, %bb.ad ]
  %.not254 = icmp eq i32 %i.et, 0
  %i.fp = add nsw i32 %i.et, -1
  %i.fq = shl nuw nsw i32 1, %i.fp
  %i.fr = select i1 %.not254, i32 0, i32 %i.fq
  %i.fs = lshr i32 %.0201377, 2
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.fu ; 7 uses
  %i.fw = add nsw i32 %.1195, %i.fr               ; 4 uses
  %i.fx = and i32 %.0201377, 3
  switch i32 %i.fx, label %default.unreachable [
    i32 2, label %bb.ai
    i32 1, label %bb.aj
    i32 0, label %bb.ak
    i32 3, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fy = add i32 %i.fw, %.sroa.7.0369            ; 2 uses
  %i.fz = icmp slt i32 %i.fy, 0
  %i.ga = tail call i32 @llvm.smin.i32(i32 %i.fy, i32 %.2229)
  %i.gb = select i1 %i.fz, i32 0, i32 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !94
  br label %.thread288

bb.aj:                                            ; preds = %bb.ah
  %i.gd = add i32 %i.fw, %.sroa.10.0368           ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  %i.gf = tail call i32 @llvm.smin.i32(i32 %i.gd, i32 %.2229)
  %i.gg = select i1 %i.ge, i32 0, i32 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !94
  br label %.thread288

default.unreachable:                              ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.gi = add i32 %i.fw, %.sroa.0.0370            ; 2 uses
  %i.gj = icmp slt i32 %i.gi, 0
  %i.gk = tail call i32 @llvm.smin.i32(i32 %i.gi, i32 %.2229)
  %i.gl = select i1 %i.gj, i32 0, i32 %i.gk
  store i32 %i.gl, ptr %i.fv, align 4, !tbaa !94
  br label %.thread288

.thread288:                                       ; preds = %bb.aj, %bb.ak, %bb.ai
  %.not256289 = icmp samesign ugt i32 %.0198, %i.et
  %spec.select261290 = select i1 %.not256289, i64 %i.ez, i64 0
  br label %bb.am

bb.al:                                            ; preds = %bb.ah
  %i.gm = add i32 %i.fw, %.sroa.13.0367           ; 2 uses
  %i.gn = icmp slt i32 %i.gm, 0
  %i.go = tail call i32 @llvm.smin.i32(i32 %i.gm, i32 %.2229)
  %i.gp = select i1 %i.gn, i32 0, i32 %i.go       ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !94
  %.not256 = icmp samesign ugt i32 %.0198, %i.et
  %spec.select261 = select i1 %.not256, i64 %i.ez, i64 0
  %i.gr = load i32, ptr %i.fv, align 4, !tbaa !94
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !94
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !94
  br label %bb.am

bb.am:                                            ; preds = %.thread288, %bb.al
  %.pn330.in = phi i64 [ %spec.select261, %bb.al ], [ %spec.select261290, %.thread288 ] ; 2 uses
  %.sroa.13.1 = phi i32 [ %i.gp, %bb.al ], [ %.sroa.13.0367, %.thread288 ]
  %.sroa.10.1 = phi i32 [ %i.gv, %bb.al ], [ %.sroa.10.0368, %.thread288 ]
  %.sroa.7.1 = phi i32 [ %i.gt, %bb.al ], [ %.sroa.7.0369, %.thread288 ]
  %.sroa.0.1 = phi i32 [ %i.gr, %bb.al ], [ %.sroa.0.0370, %.thread288 ]
  %i.gw = shl i64 %i.ex, %.pn330.in               ; 2 uses
  %.pn330 = trunc nuw i64 %.pn330.in to i32
  %i.gx = add i32 %i.ev, %.pn330
  %i.gy = sub i32 %.3213, %i.gx                   ; 2 uses
  %i.gz = icmp eq i32 %.0201377, 3
  br i1 %i.gz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ha = load <4 x i32>, ptr %i.ba, align 4, !tbaa !94
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.hb = phi <4 x i32> [ %i.cf, %bb.am ], [ %i.ha, %bb.an ] ; 2 uses
  %i.hc = add nuw nsw i32 %.0201377, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hc, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !116

._crit_edge:                                      ; preds = %bb.ao, %bb.k
  %.1228.lcssa = phi i32 [ %.0227393, %bb.k ], [ %.2229, %bb.ao ]
  %.1217.lcssa = phi i64 [ %.0216394, %bb.k ], [ %i.gw, %bb.ao ]
  %.1211.lcssa = phi i32 [ %.0210395, %bb.k ], [ %i.gy, %bb.ao ]
  %.1204.lcssa = phi i32 [ %.0203396, %bb.k ], [ %.4207, %bb.ao ]
  %i.hd = phi <4 x i32> [ %i.ca, %bb.k ], [ %i.hb, %bb.ao ]
  %i.he = shl nuw i32 %.0202397, 1                ; 3 uses
  %i.hf = load ptr, ptr %i.bf, align 8, !tbaa !124 ; 9 uses
  %i.hg = load i16, ptr %i.bg, align 2, !tbaa !91
  %i.hh = zext i16 %i.hg to i32                   ; 3 uses
  %i.hi = mul i32 %i.he, %i.hh
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr [2 x i8], ptr %i.hf, i64 %i.hj
  %i.hl = getelementptr [2 x i8], ptr %i.hk, i64 %i.bh ; 9 uses
  %i.hm = or disjoint i32 %i.he, 1
  %i.hn = mul nsw i32 %i.hm, %i.hh
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.hf, i64 %i.ho
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %i.bh ; 5 uses
  br i1 %.not258, label %.preheader, label %.preheader331

.preheader331:                                    ; preds = %._crit_edge
  br i1 %.not398, label %.loopexit, label %.lr.ph386

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not398, label %.loopexit, label %.lr.ph388.preheader

.lr.ph388.preheader:                              ; preds = %.preheader
  br i1 %or.cond527, label %vector.memcheck, label %.lr.ph388.preheader528

.lr.ph388.preheader528:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph388.preheader
  %.0192387.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph388.preheader ], [ %i.bz, %vector.body ]
  br label %.lr.ph388

vector.memcheck:                                  ; preds = %.lr.ph388.preheader
  %i.hr = shl nsw i64 %i.hj, 1                    ; 3 uses
  %i.hs = getelementptr i8, ptr %i.hf, i64 %i.br
  %9 = getelementptr i8, ptr %i.hs, i64 %i.hr     ; 4 uses
  %10 = getelementptr i8, ptr %i.hf, i64 %i.bq
  %11 = getelementptr i8, ptr %10, i64 %i.hr      ; 4 uses
  %12 = getelementptr i8, ptr %i.hf, i64 %8
  %i.ht = getelementptr i8, ptr %12, i64 %i.hr    ; 4 uses
  %i.hu = or disjoint i32 %i.he, 1
  %i.hv = mul i32 %i.hu, %i.hh
  %i.hw = sext i32 %i.hv to i64
  %i.hx = shl nsw i64 %i.hw, 1                    ; 4 uses
  %i.hy = getelementptr i8, ptr %i.hf, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.bo  ; 4 uses
  %i.ia = getelementptr i8, ptr %i.hf, i64 %i.br
  %13 = getelementptr i8, ptr %i.ia, i64 %i.hx    ; 4 uses
  %14 = getelementptr i8, ptr %i.hf, i64 %i.bq
  %15 = getelementptr i8, ptr %14, i64 %i.hx      ; 4 uses
  %16 = getelementptr i8, ptr %i.hf, i64 %8
  %i.ib = getelementptr i8, ptr %16, i64 %i.hx    ; 4 uses
  %bound0 = icmp ult ptr %i.hl, %i.ht
  %bound1 = icmp ult ptr %11, %9
  %found.conflict = and i1 %bound0, %bound1
  %bound0490 = icmp ult ptr %i.hl, %13
  %bound1491 = icmp ult ptr %i.hz, %9
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx = or i1 %found.conflict, %found.conflict492
  %bound0493 = icmp ult ptr %i.hl, %i.ib
  %bound1494 = icmp ult ptr %15, %9
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx496 = or i1 %conflict.rdx, %found.conflict495
  %bound0497 = icmp ult ptr %i.hl, %scevgep
  %bound1498 = icmp ult ptr %i.ba, %9
  %found.conflict499 = and i1 %bound0497, %bound1498
  %conflict.rdx500 = or i1 %conflict.rdx496, %found.conflict499
  %bound0501 = icmp ult ptr %11, %13
  %bound1502 = icmp ult ptr %i.hz, %i.ht
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %conflict.rdx500, %found.conflict503
  %bound0505 = icmp ult ptr %11, %i.ib
  %bound1506 = icmp ult ptr %15, %i.ht
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %conflict.rdx504, %found.conflict507
  %bound0509 = icmp ult ptr %11, %scevgep
  %bound1510 = icmp ult ptr %i.ba, %i.ht
  %found.conflict511 = and i1 %bound0509, %bound1510
  %conflict.rdx512 = or i1 %conflict.rdx508, %found.conflict511
  %bound0513 = icmp ult ptr %i.hz, %i.ib
  %bound1514 = icmp ult ptr %15, %13
  %found.conflict515 = and i1 %bound0513, %bound1514
  %conflict.rdx516 = or i1 %conflict.rdx512, %found.conflict515
  %bound0517 = icmp ult ptr %i.hz, %scevgep
  %bound1518 = icmp ult ptr %i.ba, %13
  %found.conflict519 = and i1 %bound0517, %bound1518
  %conflict.rdx520 = or i1 %conflict.rdx516, %found.conflict519
  %bound0521 = icmp ult ptr %15, %scevgep
  %bound1522 = icmp ult ptr %i.ba, %i.ib
  %found.conflict523 = and i1 %bound0521, %bound1522
  %conflict.rdx524 = or i1 %conflict.rdx520, %found.conflict523
  br i1 %conflict.rdx524, label %.lr.ph388.preheader528, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i32 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.ic = shl nuw i32 %index, 1
  %i.id = shl i32 %index, 3
  %i.ie = shl i32 %index, 3
  %i.if = shl i32 %index, 3
  %i.ig = shl i32 %index, 3
  %i.ih = sext i32 %i.id to i64
  %i.ii = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.ih ; 4 uses
  %i.ij = sext i32 %i.ie to i64
  %i.ik = getelementptr [2 x i8], ptr %i.ba, i64 %i.ij ; 4 uses
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  %i.im = sext i32 %i.if to i64
  %i.in = getelementptr [2 x i8], ptr %i.ba, i64 %i.im ; 4 uses
  %i.io = getelementptr i8, ptr %i.in, i64 32
  %i.ip = sext i32 %i.ig to i64
  %i.iq = getelementptr [2 x i8], ptr %i.ba, i64 %i.ip ; 4 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 48
  %i.is = load i16, ptr %i.ii, align 2, !tbaa !92, !alias.scope !125
  %i.it = load i16, ptr %i.il, align 2, !tbaa !92, !alias.scope !125
  %i.iu = load i16, ptr %i.io, align 2, !tbaa !92, !alias.scope !125
  %i.iv = load i16, ptr %i.ir, align 2, !tbaa !92, !alias.scope !125
  %i.iw = insertelement <4 x i16> poison, i16 %i.is, i64 0
  %i.ix = insertelement <4 x i16> %i.iw, i16 %i.it, i64 1
  %i.iy = insertelement <4 x i16> %i.ix, i16 %i.iu, i64 2
  %i.iz = insertelement <4 x i16> %i.iy, i16 %i.iv, i64 3
  %i.ja = zext i32 %i.ic to i64                   ; 2 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.ja
  %i.jc = getelementptr i8, ptr %i.ii, i64 4
  %i.jd = getelementptr i8, ptr %i.ik, i64 20
  %i.je = getelementptr i8, ptr %i.in, i64 36
  %i.jf = getelementptr i8, ptr %i.iq, i64 52
  %i.jg = load i16, ptr %i.jc, align 2, !tbaa !92, !alias.scope !125
  %i.jh = load i16, ptr %i.jd, align 2, !tbaa !92, !alias.scope !125
  %i.ji = load i16, ptr %i.je, align 2, !tbaa !92, !alias.scope !125
  %i.jj = load i16, ptr %i.jf, align 2, !tbaa !92, !alias.scope !125
  %i.jk = insertelement <4 x i16> poison, i16 %i.jg, i64 0
  %i.jl = insertelement <4 x i16> %i.jk, i16 %i.jh, i64 1
  %i.jm = insertelement <4 x i16> %i.jl, i16 %i.ji, i64 2
  %i.jn = insertelement <4 x i16> %i.jm, i16 %i.jj, i64 3
  %interleaved.vec = shufflevector <4 x i16> %i.iz, <4 x i16> %i.jn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.jb, align 2, !tbaa !92
  %i.jo = getelementptr i8, ptr %i.ii, i64 8
  %i.jp = getelementptr i8, ptr %i.ik, i64 24
  %i.jq = getelementptr i8, ptr %i.in, i64 40
  %i.jr = getelementptr i8, ptr %i.iq, i64 56
  %i.js = load i16, ptr %i.jo, align 2, !tbaa !92, !alias.scope !125
  %i.jt = load i16, ptr %i.jp, align 2, !tbaa !92, !alias.scope !125
  %i.ju = load i16, ptr %i.jq, align 2, !tbaa !92, !alias.scope !125
  %i.jv = load i16, ptr %i.jr, align 2, !tbaa !92, !alias.scope !125
  %i.jw = insertelement <4 x i16> poison, i16 %i.js, i64 0
  %i.jx = insertelement <4 x i16> %i.jw, i16 %i.jt, i64 1
  %i.jy = insertelement <4 x i16> %i.jx, i16 %i.ju, i64 2
  %i.jz = insertelement <4 x i16> %i.jy, i16 %i.jv, i64 3
  %i.ka = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.ja
  %i.kb = getelementptr i8, ptr %i.ii, i64 12
  %i.kc = getelementptr i8, ptr %i.ik, i64 28
  %i.kd = getelementptr i8, ptr %i.in, i64 44
  %i.ke = getelementptr i8, ptr %i.iq, i64 60
  %i.kf = load i16, ptr %i.kb, align 2, !tbaa !92, !alias.scope !125
  %i.kg = load i16, ptr %i.kc, align 2, !tbaa !92, !alias.scope !125
  %i.kh = load i16, ptr %i.kd, align 2, !tbaa !92, !alias.scope !125
  %i.ki = load i16, ptr %i.ke, align 2, !tbaa !92, !alias.scope !125
  %i.kj = insertelement <4 x i16> poison, i16 %i.kf, i64 0
  %i.kk = insertelement <4 x i16> %i.kj, i16 %i.kg, i64 1
  %i.kl = insertelement <4 x i16> %i.kk, i16 %i.kh, i64 2
  %i.km = insertelement <4 x i16> %i.kl, i16 %i.ki, i64 3
  %interleaved.vec525 = shufflevector <4 x i16> %i.jz, <4 x i16> %i.km, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec525, ptr %i.ka, align 2, !tbaa !92
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.kn = icmp eq i32 %index.next, %n.vec
  br i1 %i.kn, label %.lr.ph388.preheader528, label %vector.body, !llvm.loop !119

.lr.ph386:                                        ; preds = %.preheader331, %.lr.ph386
  %.0193385 = phi i32 [ %i.lr, %.lr.ph386 ], [ 0, %.preheader331 ] ; 4 uses
  %i.ko = shl i32 %.0193385, 2
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.kp ; 4 uses
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !92
  %i.ks = zext i16 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ks
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !92
  %i.kv = zext i32 %.0193385 to i64               ; 2 uses
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.kv
  store i16 %i.ku, ptr %i.kw, align 2, !tbaa !92
  %i.kx = getelementptr i8, ptr %i.kq, i64 4
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !92
  %i.kz = zext i16 %i.ky to i64
  %i.la = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.kz
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !92
  %i.lc = or disjoint i32 %.0193385, 1
  %i.ld = zext i32 %i.lc to i64                   ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.ld
  store i16 %i.lb, ptr %i.le, align 2, !tbaa !92
  %i.lf = getelementptr i8, ptr %i.kq, i64 8
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !92
  %i.lh = zext i16 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !92
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.kv
  store i16 %i.lj, ptr %i.lk, align 2, !tbaa !92
  %i.ll = getelementptr i8, ptr %i.kq, i64 12
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !92
  %i.ln = zext i16 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !92
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.ld
  store i16 %i.lp, ptr %i.lq, align 2, !tbaa !92
  %i.lr = add nuw i32 %.0193385, 2                ; 2 uses
  %i.ls = icmp ult i32 %i.lr, %i.bi
  br i1 %i.ls, label %.lr.ph386, label %.loopexit, !llvm.loop !120

.lr.ph388:                                        ; preds = %.lr.ph388.preheader528, %.lr.ph388
  %.0192387 = phi i32 [ %i.mk, %.lr.ph388 ], [ %.0192387.ph, %.lr.ph388.preheader528 ] ; 4 uses
  %i.lt = shl i32 %.0192387, 2
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.lu ; 4 uses
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !92
  %i.lx = zext i32 %.0192387 to i64               ; 2 uses
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.lx
  store i16 %i.lw, ptr %i.ly, align 2, !tbaa !92
  %i.lz = getelementptr i8, ptr %i.lv, i64 4
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !92
  %i.mb = or disjoint i32 %.0192387, 1
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.mc
  store i16 %i.ma, ptr %i.md, align 2, !tbaa !92
  %i.me = getelementptr i8, ptr %i.lv, i64 8
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !92
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.lx
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !92
  %i.mh = getelementptr i8, ptr %i.lv, i64 12
  %i.mi = load i16, ptr %i.mh, align 2, !tbaa !92
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %i.mc
  store i16 %i.mi, ptr %i.mj, align 2, !tbaa !92
  %i.mk = add nuw i32 %.0192387, 2                ; 2 uses
  %i.ml = icmp ult i32 %i.mk, %i.bi
  br i1 %i.ml, label %.lr.ph388, label %.loopexit, !llvm.loop !121

.loopexit:                                        ; preds = %.lr.ph386, %.lr.ph388, %.preheader331, %.preheader
  %i.mm = add nuw nsw i32 %.0202397, 1            ; 2 uses
  %exitcond406.not = icmp eq i32 %i.mm, %i.b
  br i1 %exitcond406.not, label %.critedge, label %bb.k, !llvm.loop !122

bb.ap:                                            ; preds = %bb.s
  %i.mn = landingpad { ptr, i32 }
          cleanup
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mo = ptrtoint ptr %i.ba to i64
  %i.mp = sub i64 %i.az, %i.mo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.mp) #16
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %common.resume

.critedge:                                        ; preds = %.loopexit, %bb.t, %bb.l, %bb.s
  %.7 = phi i1 [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.l ], [ true, %.loopexit ]
  %.not.i.i282 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i282, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit283, label %bb.ar

bb.ar:                                            ; preds = %.critedge
  %i.mq = ptrtoint ptr %i.ba to i64
  %i.mr = sub i64 %i.az, %i.mq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.mr) #16
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit283

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit283: ; preds = %.critedge, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %bb.b, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit283
  %.8 = phi i1 [ %.7, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit283 ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 18) i32 @_ZN13pana8_param_t7GetDBitEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(480) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load i64, ptr %i.a, align 8, !tbaa !28
  %i.d = and i64 %i.c, %1
  %i.e = load i64, ptr %i.b, align 8, !tbaa !28
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = and i64 %i.h, %1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = and i64 %i.n, %1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = load i64, ptr %i.p, align 8, !tbaa !28
  %i.r = icmp eq i64 %i.o, %i.q
  br i1 %i.r, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %i.u = and i64 %i.t, %1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.w = load i64, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  %i.aa = and i64 %i.z, %1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !28
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !28
  %i.ag = and i64 %i.af, %1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.aj = icmp eq i64 %i.ag, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28
  %i.am = and i64 %i.al, %1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !28
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28
  %i.as = and i64 %i.ar, %1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !28
  %i.ay = and i64 %i.ax, %1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !28
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.be = and i64 %i.bd, %1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28
  %i.bk = and i64 %i.bj, %1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !28
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !28
  %i.bq = and i64 %i.bp, %1
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !28
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !28
  %i.bw = and i64 %i.bv, %1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !28
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !28
  %i.cc = and i64 %i.cb, %1
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !28
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !28
  %i.ci = and i64 %i.ch, %1
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !28
  %i.cl = icmp eq i64 %i.ci, %i.ck
  br i1 %i.cl, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !28
  %i.co = and i64 %i.cn, %1
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !28
  %i.cr = icmp eq i64 %i.co, %i.cq
  br i1 %i.cr, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !28
  %i.cu = and i64 %i.ct, %1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !28
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
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(148) %0, i8 0, i64 148, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.g, i8 0, i64 320, i1 false)
  store i32 1, ptr %i.i, align 8, !tbaa !109
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i16, ptr %i.j, align 8, !tbaa !92
  %i.l = zext i16 %i.k to i32
  store i32 %i.l, ptr %i.d, align 8, !tbaa !94
  %i.m = load i32, ptr %1, align 8, !tbaa !94
  store i32 %i.m, ptr %i.e, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.o = load i16, ptr %i.n, align 2, !tbaa !92
  %i.p = zext i16 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.p, ptr %i.q, align 4, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.s, ptr %i.t, align 4, !tbaa !94
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i16, ptr %i.u, align 4, !tbaa !92
  %i.w = zext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.w, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !92
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !94
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !92
  %i.ak = zext i16 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !94
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !94
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !92
  %i.ar = zext i16 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !94
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.au, ptr %i.av, align 4, !tbaa !94
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ay = load <4 x i16>, ptr %i.aw, align 4, !tbaa !92
  %i.az = load i16, ptr %i.aw, align 4, !tbaa !130
  %i.ba = zext <4 x i16> %i.ay to <4 x i32>
  %i.bb = zext i16 %i.az to i32
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !108
  store <4 x i32> %i.ba, ptr %i.c, align 8, !tbaa !94
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !92
  %i.be = zext i16 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !94
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 114
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 46
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bj = load <4 x i16>, ptr %i.bg, align 2, !tbaa !92
  %i.bk = zext <4 x i16> %i.bj to <4 x i32>
  %i.bl = shl <4 x i32> %i.bk, splat (i32 24)
  %i.bm = load <4 x i16>, ptr %i.bh, align 2, !tbaa !92
  %i.bn = zext <4 x i16> %i.bm to <4 x i32>
  %i.bo = shl nuw <4 x i32> %i.bn, splat (i32 16)
  %i.bp = or <4 x i32> %i.bo, %i.bl
  %i.bq = load <4 x i16>, ptr %i.bi, align 8, !tbaa !92
  %i.br = zext <4 x i16> %i.bq to <4 x i32>
  %i.bs = or disjoint <4 x i32> %i.bp, %i.br
  store <4 x i32> %i.bs, ptr %i.f, align 4, !tbaa !94
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bx = load <4 x i16>, ptr %i.bt, align 2, !tbaa !92
  %i.by = zext <4 x i16> %i.bx to <4 x i32>
  %i.bz = shl <4 x i32> %i.by, splat (i32 24)
  %i.ca = load <4 x i16>, ptr %i.bu, align 2, !tbaa !92
  %i.cb = zext <4 x i16> %i.ca to <4 x i32>
  %i.cc = shl nuw <4 x i32> %i.cb, splat (i32 16)
  %i.cd = or <4 x i32> %i.cc, %i.bz
  %i.ce = load <4 x i16>, ptr %i.bv, align 8, !tbaa !92
  %i.cf = zext <4 x i16> %i.ce to <4 x i32>
  %i.cg = or disjoint <4 x i32> %i.cd, %i.cf
  store <4 x i32> %i.cg, ptr %i.bw, align 4, !tbaa !94
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cl = load <4 x i16>, ptr %i.ch, align 2, !tbaa !92
  %i.cm = zext <4 x i16> %i.cl to <4 x i32>
  %i.cn = shl <4 x i32> %i.cm, splat (i32 24)
  %i.co = load <4 x i16>, ptr %i.ci, align 2, !tbaa !92
  %i.cp = zext <4 x i16> %i.co to <4 x i32>
  %i.cq = shl nuw <4 x i32> %i.cp, splat (i32 16)
  %i.cr = or <4 x i32> %i.cq, %i.cn
  %i.cs = load <4 x i16>, ptr %i.cj, align 8, !tbaa !92
  %i.ct = zext <4 x i16> %i.cs to <4 x i32>
  %i.cu = or disjoint <4 x i32> %i.cr, %i.ct
  store <4 x i32> %i.cu, ptr %i.ck, align 4, !tbaa !94
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 138
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 70
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cz = load <4 x i16>, ptr %i.cv, align 2, !tbaa !92
  %i.da = zext <4 x i16> %i.cz to <4 x i32>
  %i.db = shl <4 x i32> %i.da, splat (i32 24)
  %i.dc = load <4 x i16>, ptr %i.cw, align 2, !tbaa !92
  %i.dd = zext <4 x i16> %i.dc to <4 x i32>
  %i.de = shl nuw <4 x i32> %i.dd, splat (i32 16)
  %i.df = or <4 x i32> %i.de, %i.db
  %i.dg = load <4 x i16>, ptr %i.cx, align 8, !tbaa !92
  %i.dh = zext <4 x i16> %i.dg to <4 x i32>
  %i.di = or disjoint <4 x i32> %i.df, %i.dh
  store <4 x i32> %i.di, ptr %i.cy, align 4, !tbaa !94
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !92
  %i.dl = zext i16 %i.dk to i32
  %i.dm = shl i32 %i.dl, 24
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !92
  %i.dp = zext i16 %i.do to i32
  %i.dq = shl nuw i32 %i.dp, 16
  %i.dr = or i32 %i.dq, %i.dm
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !92
  %i.du = zext i16 %i.dt to i32
  %i.dv = or disjoint i32 %i.dr, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !94
  %i.dx = invoke noalias noundef nonnull dereferenceable(131072) ptr @_Znwm(i64 noundef 131072) #17
          to label %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit unwind label %_ZNSt3__128__exception_guard_exceptionsINS_6vectorItNS_9allocatorItEEE16__destroy_vectorEED2B8ne180100Ev.exit.i ; 6 uses

_ZNSt3__128__exception_guard_exceptionsINS_6vectorItNS_9allocatorItEEE16__destroy_vectorEED2B8ne180100Ev.exit.i: ; preds = %.preheader
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit:    ; preds = %.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.dx, i8 0, i64 131072, i1 false), !tbaa !92
  br label %bb.b

bb.a:                                             ; preds = %bb.d
  %i.dz = load i32, ptr %i.i, align 8, !tbaa !109
  %.not = icmp eq i32 %i.dz, 0
  br i1 %.not, label %bb.e, label %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit.preheader

_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit.preheader: ; preds = %bb.e, %bb.a
  br label %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit

bb.b:                                             ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %_ZNSt3__16vectorItNS_9allocatorItEEEC2Em.exit ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv to i32
  %i.eb = tail call noundef i32 @_ZN13pana8_param_t10gammaCurveEj(ptr noundef nonnull align 8 dereferenceable(480) %0, i32 noundef %i.ea) ; 2 uses
  %i.ec = trunc i32 %i.eb to i16
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.dx, i64 %indvars.iv
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !92
  %i.ee = zext i32 %i.eb to i64
  %.not84 = icmp eq i64 %indvars.iv, %i.ee
  br i1 %.not84, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !109
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %bb.a, label %bb.b, !llvm.loop !126

bb.e:                                             ; preds = %bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 131072
  invoke void @_ZNSt3__16vectorItNS_9allocatorItEEE18__assign_with_sizeB8ne180100IPtS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.ef, i64 noundef 65536)
          to label %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit.preheader unwind label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.l
  %i.eg = icmp samesign ult i32 %spec.select, 17
  br i1 %i.eg, label %bb.m, label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit86

_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit: ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit.preheader, %bb.l
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %bb.l ], [ 0, %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit.preheader ] ; 4 uses
  %.068103 = phi i32 [ %spec.select, %bb.l ], [ 0, %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit.preheader ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv112
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !94 ; 3 uses
  %i.ej = lshr i32 %i.ei, 16                      ; 2 uses
  %i.ek = and i32 %i.ej, 31                       ; 4 uses
  %i.el = and i32 %i.ei, 2031616
  %.not81 = icmp eq i32 %i.el, 0
  br i1 %.not81, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit
  %i.em = and i32 %i.ej, 7                        ; 8 uses
  %i.en = add nsw i32 %i.ek, -8
  %i.eo = icmp ult i32 %i.en, -7
  br i1 %i.eo, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ep = sub nsw i32 %i.em, %i.ek
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.066 = phi i32 [ 0, %bb.h ], [ %i.er, %bb.i ]
  %.064 = phi i32 [ %i.ep, %bb.h ], [ %i.es, %bb.i ]
  %sext = shl i32 %.066, 16
  %i.eq = ashr exact i32 %sext, 8
  %i.er = or disjoint i32 %i.eq, 255              ; 2 uses
  %i.es = add i32 %.064, 8                        ; 2 uses
  %.not82 = icmp eq i32 %i.es, 0
  br i1 %.not82, label %bb.j, label %bb.i, !llvm.loop !127

bb.j:                                             ; preds = %bb.i
  %i.et = trunc i32 %i.er to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.1 = phi i16 [ %i.et, %bb.j ], [ 0, %bb.g ]    ; 2 uses
  %.not83100 = icmp eq i32 %i.em, 0
  br i1 %.not83100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.eu = shl i16 %.1, 1
  %i.ev = or disjoint i16 %i.eu, 1                ; 2 uses
  %.not83 = icmp eq i32 %i.em, 1
  br i1 %.not83, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ew = shl i16 %i.ev, 1
  %i.ex = or disjoint i16 %i.ew, 1                ; 2 uses
  %.not83.1 = icmp eq i32 %i.em, 2
  br i1 %.not83.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ey = shl i16 %i.ex, 1
  %i.ez = or disjoint i16 %i.ey, 1                ; 2 uses
  %.not83.2 = icmp eq i32 %i.em, 3
  br i1 %.not83.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.fa = shl i16 %i.ez, 1
  %i.fb = or disjoint i16 %i.fa, 1                ; 2 uses
  %.not83.3 = icmp eq i32 %i.em, 4
  br i1 %.not83.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.fc = shl i16 %i.fb, 1
  %i.fd = or disjoint i16 %i.fc, 1                ; 2 uses
  %.not83.4 = icmp eq i32 %i.em, 5
  br i1 %.not83.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.fe = shl i16 %i.fd, 1
  %i.ff = or disjoint i16 %i.fe, 1                ; 2 uses
  %.not83.5 = icmp eq i32 %i.em, 6
  br i1 %.not83.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.fg = shl i16 %i.ff, 1
  %i.fh = or disjoint i16 %i.fg, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %bb.k
  %.2.lcssa = phi i16 [ %.1, %bb.k ], [ %i.ev, %.lr.ph ], [ %i.ex, %.lr.ph.1 ], [ %i.ez, %.lr.ph.2 ], [ %i.fb, %.lr.ph.3 ], [ %i.fd, %.lr.ph.4 ], [ %i.ff, %.lr.ph.5 ], [ %i.fh, %.lr.ph.6 ]
  %i.fi = trunc i32 %i.ei to i16
  %i.fj = and i16 %.2.lcssa, %i.fi
  %i.fk = zext i16 %i.fj to i64
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit
  %.3 = phi i64 [ %i.fk, %._crit_edge ], [ 0, %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit ]
  %spec.select = tail call i32 @llvm.umax.i32(i32 %.068103, i32 %i.ek) ; 2 uses
  %i.fl = sub nuw nsw i32 64, %i.ek
  %i.fm = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fn = shl i64 65535, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv112
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !28
  %i.fp = shl i64 %.3, %i.fm
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv112
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !28
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next113, 17
  br i1 %exitcond115.not, label %bb.f, label %_ZNSt3__16vectorItNS_9allocatorItEEEaSB8ne180100ERKS3_.exit, !llvm.loop !128

bb.m:                                             ; preds = %bb.f
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !99
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = icmp ult i64 %i.fw, 65536
  br i1 %i.fx, label %bb.n, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.preheader

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.preheader: ; preds = %bb.n, %bb.m
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.fy = sub nuw nsw i64 65536, %i.fw
  invoke void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.fy)
          to label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.preheader unwind label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit

_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit: ; preds = %bb.n, %bb.e
  %i.fz = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef 131072) #16
  br label %.body

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.preheader, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ], [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.preheader ] ; 2 uses
  %.063105 = phi i64 [ %i.ge, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit ], [ 0, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit.preheader ] ; 2 uses
  %i.ga = tail call noundef i32 @_ZN13pana8_param_t7GetDBitEm(ptr noundef nonnull align 8 dereferenceable(480) %0, i64 noundef %.063105)
  %i.gb = trunc nuw nsw i32 %i.ga to i8
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv116
  store i8 %i.gb, ptr %i.gd, align 1, !tbaa !26
  %i.ge = add i64 %.063105, 281474976710656
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %.not80 = icmp eq i64 %indvars.iv.next117, 65536
  br i1 %.not80, label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit86, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, !llvm.loop !129

_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit86: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef 131072) #16
  ret void

.body:                                            ; preds = %_ZNSt3__128__exception_guard_exceptionsINS_6vectorItNS_9allocatorItEEE16__destroy_vectorEED2B8ne180100Ev.exit.i, %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %i.fz, %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit ], [ %i.dy, %_ZNSt3__128__exception_guard_exceptionsINS_6vectorItNS_9allocatorItEEE16__destroy_vectorEED2B8ne180100Ev.exit.i ]
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !98  ; 4 uses
  %.not.i.i87 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i87, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.o

bb.o:                                             ; preds = %.body
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !99
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !100
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gf to i64
  %i.gl = sub i64 %i.gj, %i.gk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gl) #16
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %.body, %bb.o
  %i.gm = load ptr, ptr %i.a, align 8, !tbaa !104 ; 4 uses
  %.not.i.i88 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i88, label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit89, label %bb.p

bb.p:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !105
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !106
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gm to i64
  %i.gs = sub i64 %i.gq, %i.gr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gs) #16
  br label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit89

_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit89: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %bb.p
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
  %i.e = load i32, ptr %i.d, align 4, !tbaa !131
  %i.f = add i32 %spec.select, %i.e
  %i.g = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 5 uses
  %i.h = tail call i32 @llvm.umin.i32(i32 %i.g, i32 65535) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !94
  %i.l = and i32 %i.k, 65535
  %.not = icmp samesign ult i32 %i.g, %i.l
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !94
  %i.o = and i32 %i.n, 65535
  %.not48 = icmp samesign ult i32 %i.g, %i.o
  br i1 %.not48, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !94
  %i.r = and i32 %i.q, 65535
  %.not49 = icmp samesign ult i32 %i.g, %i.r
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !94
  %i.u = and i32 %i.t, 65535
  %.not50 = icmp samesign ult i32 %i.g, %i.u
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i32 %i.h to i64
  %i.w = or disjoint i64 %i.v, 21474836480
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !94
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
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !94 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !94 ; 3 uses
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
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !94
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
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !132
  %.53 = tail call i32 @llvm.umin.i32(i32 %.sink, i32 %i.be)
  ret i32 %.53
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #14 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #14
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !20
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str) #15
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str) #15
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3__16vectorItNS_9allocatorItEEE18__assign_with_sizeB8ne180100IPtS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !104    ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 1
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 1
  %i.m = icmp ugt i64 %3, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.k ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8ne180100IPtS1_EET0_T_S3_S2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.c, ptr align 2 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !105
  br label %_ZNSt3__14copyB8ne180100IPtS1_EET0_T_S3_S2_.exit

_ZNSt3__14copyB8ne180100IPtS1_EET0_T_S3_S2_.exit: ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.i, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.q = ptrtoint ptr %2 to i64
  %i.r = sub i64 %i.q, %i.o                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endIPtS5_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8ne180100IPtS1_EET0_T_S3_S2_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.p, ptr align 2 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endIPtS5_EEvT_T0_m.exit

_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endIPtS5_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8ne180100IPtS1_EET0_T_S3_S2_.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  store ptr %i.s, ptr %i.h, align 8, !tbaa !105
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPtS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.c, ptr align 2 %1, i64 %i.v, i1 false)
  br label %_ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPtS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit

_ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPtS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit: ; preds = %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.v
  store ptr %i.w, ptr %i.h, align 8, !tbaa !105
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__16vectorItNS_9allocatorItEEE13__vdeallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.x, align 8, !tbaa !105
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorItNS_9allocatorItEEE13__vdeallocateEv.exit

_ZNSt3__16vectorItNS_9allocatorItEEE13__vdeallocateEv.exit: ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ %i.b, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.z = icmp slt i64 %3, 0
  br i1 %i.z, label %bb.j, label %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  unreachable

_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit: ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEE13__vdeallocateEv.exit
  %i.aa = ptrtoint ptr %i.y to i64
  %.not.i16 = icmp ult ptr %i.y, inttoptr (i64 9223372036854775806 to ptr)
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %3)
  %.0.i = select i1 %.not.i16, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 3 uses
  %i.ab = icmp slt i64 %.0.i, 0
  br i1 %i.ab, label %bb.k, label %_ZNSt3__16vectorItNS_9allocatorItEEE11__vallocateB8ne180100Em.exit

bb.k:                                             ; preds = %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit
  tail call void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  unreachable

_ZNSt3__16vectorItNS_9allocatorItEEE11__vallocateB8ne180100Em.exit: ; preds = %_ZNKSt3__16vectorItNS_9allocatorItEEE11__recommendB8ne180100Em.exit
  %i.ac = shl nuw i64 %.0.i, 1
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #17 ; 5 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !105
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %.0.i
  store ptr %i.af, ptr %i.a, align 8, !tbaa !106
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endIPtS5_EEvT_T0_m.exit18, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEE11__vallocateB8ne180100Em.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ad, ptr align 2 %1, i64 %i.ai, i1 false)
  br label %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endIPtS5_EEvT_T0_m.exit18

_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endIPtS5_EEvT_T0_m.exit18: ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEE11__vallocateB8ne180100Em.exit, %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !105
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endIPtS5_EEvT_T0_m.exit, %_ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPtS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_.exit, %_ZNSt3__16vectorItNS_9allocatorItEEE18__construct_at_endIPtS5_EEvT_T0_m.exit18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !99   ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %.not = icmp ult i64 %i.g, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not10.i = icmp samesign eq i64 %1, 0
  br i1 %.not10.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.d, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 0, i64 %1, i1 false), !tbaa !26
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit: ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.6.0.lcssa.i = phi ptr [ %i.d, %bb.b ], [ %i.h, %.lr.ph.preheader.i ]
  store ptr %.sroa.6.0.lcssa.i, ptr %i.c, align 8, !tbaa !99
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.f, %i.j                       ; 2 uses
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit: ; preds = %bb.c
  %i.n = sub i64 %i.e, %i.j                       ; 2 uses
  %.not.i = icmp ult i64 %i.n, 4611686018427387903
  %i.o = shl nuw nsw i64 %i.n, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.l)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 9223372036854775807 ; 3 uses
  %i.p = icmp eq i64 %.0.i, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i) #17
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !99
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !98
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit
  %i.r = phi ptr [ %.pre26, %bb.e ], [ %i.i, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit ] ; 6 uses
  %i.s = phi ptr [ %.pre, %bb.e ], [ %i.d, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit ] ; 7 uses
  %storemerge.i = phi ptr [ %i.q, %bb.e ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.k ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %.0.i
  %i.v = getelementptr i8, ptr %i.t, i64 %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 0, i64 %1, i1 false), !tbaa !26
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.w = ptrtoaddr ptr %i.r to i64
  %i.x = ptrtoaddr ptr %i.s to i64
  %i.y = sub i64 %i.x, %i.w                       ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check31 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  %i.aa = sub i64 0, %n.vec                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %next.gep32, i64 -16
  %i.af = getelementptr inbounds i8, ptr %next.gep32, i64 -32
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !26, !noalias !144
  %wide.load33 = load <16 x i8>, ptr %i.af, align 1, !tbaa !26, !noalias !144
  %i.ag = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ah = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.ag, align 1, !tbaa !26, !noalias !144
  store <16 x i8> %wide.load33, ptr %i.ah, align 1, !tbaa !26, !noalias !144
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !145

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %i.y, -8                     ; 3 uses
  %i.aj = sub i64 0, %n.vec34                     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.t, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.s, i64 %i.aj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %i.am = sub i64 0, %index35                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.t, i64 %i.am
  %next.gep37 = getelementptr i8, ptr %i.s, i64 %i.am
  %i.an = getelementptr inbounds i8, ptr %next.gep37, i64 -8
  %wide.load38 = load <8 x i8>, ptr %i.an, align 1, !tbaa !26, !noalias !144
  %i.ao = getelementptr inbounds i8, ptr %next.gep36, i64 -8
  store <8 x i8> %wide.load38, ptr %i.ao, align 1, !tbaa !26, !noalias !144
  %index.next39 = add nuw i64 %index35, 8         ; 2 uses
  %i.ap = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.y, %n.vec34
  br i1 %cmp.n40, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.t, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %.sroa.2.05.i.i.i.i.i.i.i.ph = phi ptr [ %i.s, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %i.aq = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.ar = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i, i64 -1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !26, !noalias !144
  %i.at = getelementptr inbounds i8, ptr %i.aq, i64 -1 ; 3 uses
  store i8 %i.as, ptr %i.at, align 1, !tbaa !26, !noalias !144
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !143

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.f
  %storemerge = phi ptr [ %i.t, %bb.f ], [ %i.ak, %vec.epilog.middle.block ], [ %i.ab, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !100
  store ptr %i.v, ptr %i.c, align 8, !tbaa !100
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !100
  store ptr %i.u, ptr %i.a, align 8, !tbaa !100
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.r to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ax) #16
  br label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEED2Ev.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i, %_ZNSt3__16vectorIhNS_9allocatorIhEEE18__construct_at_endEm.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold noreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !29}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 long", !9, i64 0}
!11 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !10, i64 0}
!12 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !11, i64 0}
!13 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !10, i64 0, !10, i64 8, !12, i64 16}
!14 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !9, i64 0}
!15 = !{!"long long", !5, i64 0}
!16 = !{!"_ZTS13pana8_bufio_t", !13, i64 0, !14, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !6, i64 56}
!17 = !{!16, !15, i64 40}
!18 = !{!16, !14, i64 24}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!16, !15, i64 32}
!22 = !{!16, !6, i64 56}
!23 = !{!13, !10, i64 0}
!24 = !{!"_ZTS17LibRaw_exceptions", !5, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!16, !15, i64 48}
!31 = !{!"p1 short", !9, i64 0}
!32 = !{!"short", !5, i64 0}
!33 = !{!"double", !5, i64 0}
!34 = !{!"_ZTS20libraw_image_sizes_t", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6, !32, i64 8, !32, i64 10, !32, i64 12, !32, i64 14, !6, i64 16, !33, i64 24, !6, i64 32, !5, i64 36, !32, i64 164, !5, i64 166}
!35 = !{!"p1 omnipotent char", !9, i64 0}
!36 = !{!"_ZTS16libraw_iparams_t", !5, i64 0, !5, i64 4, !5, i64 68, !5, i64 132, !5, i64 196, !5, i64 260, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !5, i64 348, !5, i64 384, !5, i64 420, !6, i64 428, !35, i64 432}
!37 = !{!"float", !5, i64 0}
!38 = !{!"_ZTS18libraw_nikonlens_t", !37, i64 0, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7}
!39 = !{!"_ZTS16libraw_dnglens_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!40 = !{!"_ZTS24libraw_makernotes_lens_t", !15, i64 0, !5, i64 8, !32, i64 136, !32, i64 138, !15, i64 144, !32, i64 152, !32, i64 154, !5, i64 156, !32, i64 220, !5, i64 222, !5, i64 238, !37, i64 256, !37, i64 260, !37, i64 264, !37, i64 268, !37, i64 272, !37, i64 276, !37, i64 280, !37, i64 284, !37, i64 288, !37, i64 292, !37, i64 296, !37, i64 300, !37, i64 304, !37, i64 308, !37, i64 312, !15, i64 320, !5, i64 328, !15, i64 456, !5, i64 464, !15, i64 592, !5, i64 600, !32, i64 728, !37, i64 732}
!41 = !{!"_ZTS17libraw_lensinfo_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !5, i64 20, !5, i64 148, !5, i64 276, !5, i64 404, !32, i64 532, !38, i64 536, !39, i64 544, !40, i64 560}
!42 = !{!"_ZTS13libraw_area_t", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6}
!43 = !{!"_ZTS25libraw_canon_makernotes_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !5, i64 16, !6, i64 32, !5, i64 36, !32, i64 52, !32, i64 54, !5, i64 56, !32, i64 58, !32, i64 60, !32, i64 62, !32, i64 64, !32, i64 66, !32, i64 68, !32, i64 70, !32, i64 72, !32, i64 74, !32, i64 76, !32, i64 78, !32, i64 80, !32, i64 82, !6, i64 84, !37, i64 88, !32, i64 92, !32, i64 94, !32, i64 96, !32, i64 98, !6, i64 100, !32, i64 104, !6, i64 108, !6, i64 112, !32, i64 116, !6, i64 120, !42, i64 124, !42, i64 132, !42, i64 140, !42, i64 148, !42, i64 156, !5, i64 164}
!44 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6}
!45 = !{!"_ZTS25libraw_nikon_makernotes_t", !33, i64 0, !32, i64 8, !32, i64 10, !5, i64 12, !5, i64 19, !5, i64 20, !5, i64 21, !5, i64 34, !5, i64 54, !5, i64 58, !5, i64 62, !5, i64 66, !5, i64 67, !5, i64 68, !5, i64 69, !5, i64 70, !5, i64 71, !5, i64 73, !5, i64 74, !5, i64 75, !5, i64 76, !5, i64 77, !5, i64 78, !5, i64 82, !5, i64 86, !32, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !5, i64 112, !5, i64 144, !5, i64 145, !5, i64 146, !6, i64 148, !6, i64 152, !6, i64 156, !5, i64 160, !5, i64 162, !32, i64 170, !44, i64 172, !32, i64 180, !32, i64 182, !32, i64 184, !6, i64 188, !5, i64 192, !5, i64 212, !6, i64 232, !5, i64 236, !6, i64 248, !35, i64 256, !32, i64 264, !32, i64 266, !5, i64 268, !32, i64 270, !33, i64 272, !33, i64 280, !33, i64 288}
!46 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !6, i64 0, !33, i64 8, !5, i64 16, !5, i64 24, !5, i64 88, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !5, i64 168, !5, i64 200, !6, i64 264, !5, i64 268, !5, i64 276, !5, i64 288}
!47 = !{!"_ZTS18libraw_fuji_info_t", !37, i64 0, !32, i64 4, !32, i64 6, !32, i64 8, !32, i64 10, !32, i64 12, !32, i64 14, !32, i64 16, !32, i64 18, !5, i64 20, !5, i64 53, !37, i64 88, !32, i64 92, !32, i64 94, !5, i64 96, !32, i64 100, !6, i64 104, !6, i64 108, !32, i64 112, !5, i64 114, !32, i64 120, !32, i64 122, !32, i64 124, !32, i64 126, !32, i64 128, !6, i64 132, !32, i64 136, !5, i64 138, !5, i64 151, !5, i64 156, !6, i64 164, !32, i64 168, !6, i64 172, !32, i64 176, !5, i64 178, !5, i64 196, !6, i64 324, !6, i64 328, !6, i64 332, !5, i64 336, !6, i64 344}
!48 = !{!"_ZTS27libraw_olympus_makernotes_t", !5, i64 0, !32, i64 6, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !5, i64 64, !5, i64 72, !32, i64 82, !5, i64 84, !32, i64 88, !32, i64 90, !5, i64 92, !5, i64 352, !32, i64 392, !5, i64 394, !5, i64 396, !5, i64 404, !32, i64 416, !32, i64 418, !32, i64 420, !32, i64 422, !33, i64 424, !5, i64 432, !5, i64 440, !5, i64 448, !6, i64 452, !32, i64 456, !32, i64 458}
!49 = !{!"_ZTS18libraw_sony_info_t", !32, i64 0, !5, i64 2, !5, i64 3, !6, i64 4, !5, i64 8, !6, i64 12, !5, i64 16, !5, i64 17, !32, i64 18, !5, i64 20, !5, i64 24, !5, i64 25, !32, i64 26, !5, i64 28, !5, i64 38, !5, i64 39, !5, i64 40, !32, i64 48, !5, i64 50, !5, i64 51, !5, i64 52, !32, i64 54, !6, i64 56, !32, i64 60, !5, i64 62, !32, i64 66, !32, i64 68, !32, i64 70, !32, i64 72, !32, i64 74, !32, i64 76, !32, i64 78, !6, i64 80, !37, i64 84, !32, i64 88, !6, i64 92, !6, i64 96, !32, i64 100, !5, i64 102, !6, i64 124, !32, i64 128, !6, i64 132, !5, i64 136, !5, i64 137, !32, i64 138, !32, i64 140, !32, i64 142, !32, i64 144, !32, i64 146, !32, i64 148, !32, i64 150, !32, i64 152, !32, i64 154, !6, i64 156, !32, i64 160, !5, i64 162, !37, i64 180}
!50 = !{!"_ZTS25libraw_kodak_makernotes_t", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6, !32, i64 8, !32, i64 10, !5, i64 12, !5, i64 48, !5, i64 84, !5, i64 120, !5, i64 156, !5, i64 192, !32, i64 228, !32, i64 230, !32, i64 232, !32, i64 234, !37, i64 236, !37, i64 240}
!51 = !{!"_ZTS29libraw_panasonic_makernotes_t", !32, i64 0, !32, i64 2, !5, i64 4, !6, i64 36, !37, i64 40, !5, i64 44, !32, i64 56, !32, i64 58, !6, i64 60, !6, i64 64}
!52 = !{!"_ZTS26libraw_pentax_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !32, i64 12, !6, i64 16, !6, i64 20, !32, i64 24, !5, i64 26, !32, i64 30, !5, i64 32, !5, i64 33, !32, i64 34}
!53 = !{!"_ZTS22libraw_p1_makernotes_t", !5, i64 0, !5, i64 64, !5, i64 128, !5, i64 384}
!54 = !{!"_ZTS25libraw_ricoh_makernotes_t", !32, i64 0, !5, i64 4, !5, i64 12, !32, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !32, i64 40, !32, i64 42, !32, i64 44, !32, i64 46, !32, i64 48, !32, i64 50, !33, i64 56, !33, i64 64}
!55 = !{!"_ZTS27libraw_samsung_makernotes_t", !5, i64 0, !5, i64 16, !5, i64 32, !5, i64 40, !33, i64 88, !6, i64 96, !5, i64 100}
!56 = !{!"_ZTS24libraw_metadata_common_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !32, i64 64, !5, i64 66, !37, i64 196, !5, i64 200, !6, i64 296}
!57 = !{!"_ZTS19libraw_makernotes_t", !43, i64 0, !45, i64 168, !46, i64 464, !47, i64 848, !48, i64 1200, !49, i64 1664, !50, i64 1848, !51, i64 2092, !52, i64 2160, !53, i64 2196, !54, i64 2648, !55, i64 2720, !56, i64 2856}
!58 = !{!"_ZTS21libraw_shootinginfo_t", !32, i64 0, !32, i64 2, !32, i64 4, !32, i64 6, !32, i64 8, !32, i64 10, !32, i64 12, !5, i64 14, !5, i64 78}
!59 = !{!"_ZTS22libraw_output_params_t", !5, i64 0, !5, i64 16, !5, i64 32, !5, i64 64, !5, i64 112, !37, i64 128, !37, i64 132, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !5, i64 224, !6, i64 240, !6, i64 244, !37, i64 248, !37, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !37, i64 288, !37, i64 292, !6, i64 296, !6, i64 300}
!60 = !{!"any p2 pointer", !9, i64 0}
!61 = !{!"p2 omnipotent char", !60, i64 0}
!62 = !{!"_ZTS26libraw_raw_unpack_params_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !37, i64 28, !5, i64 32, !61, i64 40}
!63 = !{!"_ZTS5ph1_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !37, i64 32}
!64 = !{!"_ZTS19libraw_dng_levels_t", !6, i64 0, !5, i64 4, !6, i64 16420, !5, i64 16424, !37, i64 32840, !5, i64 32844, !5, i64 32860, !5, i64 32868, !6, i64 32884, !5, i64 32888, !5, i64 32904, !37, i64 32920, !37, i64 32924, !5, i64 32928}
!65 = !{!"_ZTS18libraw_colordata_t", !5, i64 0, !5, i64 131072, !6, i64 147488, !6, i64 147492, !6, i64 147496, !5, i64 147500, !37, i64 147516, !37, i64 147520, !5, i64 147524, !5, i64 147652, !5, i64 147668, !5, i64 147684, !5, i64 147732, !5, i64 147780, !5, i64 147828, !63, i64 147876, !37, i64 147912, !37, i64 147916, !5, i64 147920, !5, i64 147984, !5, i64 148048, !5, i64 148112, !5, i64 148176, !5, i64 148193, !9, i64 148264, !6, i64 148272, !5, i64 148276, !5, i64 148308, !64, i64 148648, !5, i64 181624, !5, i64 185720, !6, i64 187000, !5, i64 187004, !6, i64 187076, !6, i64 187080}
!66 = !{!"_ZTS17libraw_gps_info_t", !5, i64 0, !5, i64 12, !5, i64 24, !37, i64 36, !5, i64 40, !5, i64 41, !5, i64 42, !5, i64 43, !5, i64 44}
!67 = !{!"_ZTS17libraw_imgother_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !27, i64 16, !6, i64 24, !5, i64 28, !66, i64 156, !5, i64 204, !5, i64 716, !5, i64 780}
!68 = !{!"_ZTS24LibRaw_thumbnail_formats", !5, i64 0}
!69 = !{!"_ZTS18libraw_thumbnail_t", !68, i64 0, !32, i64 4, !32, i64 6, !6, i64 8, !6, i64 12, !35, i64 16}
!70 = !{!"_ZTS23libraw_thumbnail_list_t", !6, i64 0, !5, i64 8}
!71 = !{!"p1 float", !9, i64 0}
!72 = !{!"_ZTS31libraw_internal_output_params_t", !6, i64 0, !6, i64 4, !6, i64 8, !32, i64 12, !32, i64 14}
!73 = !{!"_ZTS16libraw_rawdata_t", !9, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !31, i64 56, !31, i64 64, !36, i64 72, !34, i64 512, !72, i64 696, !65, i64 712}
!74 = !{!"_ZTS13libraw_data_t", !31, i64 0, !34, i64 8, !36, i64 192, !41, i64 632, !57, i64 1928, !58, i64 5088, !59, i64 5232, !62, i64 5536, !6, i64 5584, !6, i64 5588, !65, i64 5592, !67, i64 192680, !69, i64 193480, !70, i64 193504, !73, i64 193768, !9, i64 381568}
!75 = !{!"p1 _ZTS10LibRaw_TLS", !9, i64 0}
!76 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!77 = !{!"_ZTS15internal_data_t", !14, i64 0, !76, i64 8, !6, i64 16, !35, i64 24, !15, i64 32, !15, i64 40, !5, i64 48}
!78 = !{!"p1 int", !9, i64 0}
!79 = !{!"_ZTS13output_data_t", !78, i64 0, !78, i64 8}
!80 = !{!"_ZTS15identify_data_t", !6, i64 0, !15, i64 8, !15, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!81 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !5, i64 0}
!82 = !{!"_ZTS12pana8_tags_t", !5, i64 0, !5, i64 24, !32, i64 36, !5, i64 38, !5, i64 46, !5, i64 80, !5, i64 114, !32, i64 148, !32, i64 150, !5, i64 152, !5, i64 192, !5, i64 204, !5, i64 224, !5, i64 234}
!83 = !{!"_ZTS15unpacker_data_t", !32, i64 0, !5, i64 2, !5, i64 10, !6, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !81, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !15, i64 144, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !6, i64 184, !82, i64 192, !5, i64 440, !6, i64 2488, !6, i64 2492, !32, i64 2496, !32, i64 2498, !6, i64 2500, !6, i64 2504, !6, i64 2508, !6, i64 2512, !6, i64 2516, !6, i64 2520, !6, i64 2524, !5, i64 2528, !32, i64 2608}
!84 = !{!"_ZTS22libraw_internal_data_t", !77, i64 0, !72, i64 64, !79, i64 80, !80, i64 96, !83, i64 136}
!85 = !{!"p1 _ZTS6decode", !9, i64 0}
!86 = !{!"_ZTS13libraw_memmgr", !60, i64 0, !6, i64 8}
!87 = !{!"_ZTS18libraw_callbacks_t", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144}
!88 = !{!"_ZTS6LibRaw", !74, i64 8, !75, i64 381584, !84, i64 381592, !5, i64 384344, !85, i64 433496, !85, i64 433504, !5, i64 433512, !86, i64 768232, !87, i64 768248, !5, i64 768400, !5, i64 768416, !5, i64 768432, !9, i64 768448, !9, i64 768456, !9, i64 768464, !27, i64 768472, !9, i64 768480, !9, i64 768488, !9, i64 768496, !9, i64 768504}
!89 = !{!88, !14, i64 381592}
!90 = !{!88, !32, i64 382068}
!91 = !{!88, !32, i64 18}
!92 = !{!32, !32, i64 0}
!93 = !{!15, !15, i64 0}
!94 = !{!6, !6, i64 0}
!95 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !35, i64 0}
!96 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !95, i64 0}
!97 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !35, i64 0, !35, i64 8, !96, i64 16}
!98 = !{!97, !35, i64 0}
!99 = !{!97, !35, i64 8}
!100 = !{!35, !35, i64 0}
!101 = !{!"_ZTSNSt3__122__compressed_pair_elemIPtLi0ELb0EEE", !31, i64 0}
!102 = !{!"_ZTSNSt3__117__compressed_pairIPtNS_9allocatorItEEEE", !101, i64 0}
!103 = !{!"_ZTSNSt3__16vectorItNS_9allocatorItEEEE", !31, i64 0, !31, i64 8, !102, i64 16}
!104 = !{!103, !31, i64 0}
!105 = !{!103, !31, i64 8}
!106 = !{!31, !31, i64 0}
!107 = !{!"_ZTS13pana8_param_t", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 32, !6, i64 56, !5, i64 60, !5, i64 76, !6, i64 148, !6, i64 152, !5, i64 160, !5, i64 296, !103, i64 432, !97, i64 456}
!108 = !{!107, !6, i64 148}
!109 = !{!107, !6, i64 152}
!110 = !{!"llvm.loop.isvectorized", i32 1}
!111 = !{!"llvm.loop.unroll.runtime.disable"}
!112 = !{!88, !32, i64 16}
!113 = distinct !{!113, !29}
!114 = !{!10, !10, i64 0}
!115 = !{!13, !10, i64 8}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, i1 false, !"LVerDomain"}
!118 = distinct !{!118, !117}
!119 = distinct !{!119, !29, !110, !111}
!120 = distinct !{!120, !29}
!121 = distinct !{!121, !29, !110}
!122 = distinct !{!122, !29}
!123 = !{!107, !6, i64 0}
!124 = !{!88, !31, i64 193784}
!125 = !{!118}
!126 = distinct !{!126, !29}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = !{!82, !32, i64 36}
!131 = !{!107, !6, i64 4}
!132 = !{!107, !6, i64 56}
!133 = distinct !{!133, i1 true, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_"}
!134 = distinct !{!134, !133, !"_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPhEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_"}
!136 = distinct !{!136, !135, !"_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPhEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_"}
!138 = distinct !{!138, !137, !"_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPhEES9_S9_TnNS_9enable_ifIXsr12__can_rewrapIT0_T1_T2_EE5valueEiE4typeELi0EEENS_4pairISB_SD_EESB_SC_SD_: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_"}
!140 = distinct !{!140, !139, !"_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPhEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: argument 0"}
!141 = distinct !{!141, !29, !110, !111}
!142 = distinct !{!142, !29, !110, !111}
!143 = distinct !{!143, !29, !111, !110}
!144 = !{!140, !138, !136, !134}
!145 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
