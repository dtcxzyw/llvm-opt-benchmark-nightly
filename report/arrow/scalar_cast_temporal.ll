Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_temporal?download=true
inline.NumInlined: 4507
inline.NumDeleted: 1580
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_13TimestampTypeENS_10StringTypeENS1_14ParseTimestampEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph45.i.i.i.i
  %lpad.loopexit23 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bo, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit19, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bp = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %.not.i = icmp eq ptr %i.bp, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !141

bb.h:                                             ; preds = %.loopexit.split-lp
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !142, !range !151, !noundef !152
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow7compute8internal14ParseTimestamp4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, i64 %2, ptr %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.std::chrono::duration.121", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i64 %2, ptr %8, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = load ptr, ptr %0, align 8, !tbaa !1418, !nonnull !152, !align !319
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !328  ; 4 uses
  %i.g = icmp ult i64 %2, 10
  br i1 %i.g, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 1, !tbaa !56
  %.not.i.i = icmp eq i8 %i.i, 45
  br i1 %.not.i.i, label %bb.c, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !141

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.k = load i8, ptr %i.j, align 1, !tbaa !56
  %.not7.i.i = icmp eq i8 %i.k, 45
  br i1 %.not7.i.i, label %bb.d, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !141

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %3, align 1, !tbaa !56
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.e, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !441

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !56
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !441

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !56
  %i.u = add i8 %i.t, -48                         ; 2 uses
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.g, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !441

bb.g:                                             ; preds = %bb.f
  %narrow.i.i = mul nuw nsw i8 %i.m, 10
  %narrow42.i.i = add nuw nsw i8 %i.q, %narrow.i.i
  %i.w = zext nneg i8 %narrow42.i.i to i16
  %i.x = mul nuw nsw i16 %i.w, 10
  %i.y = zext nneg i8 %i.u to i16
  %i.z = add nuw nsw i16 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !56
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i16 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext nneg i8 %i.ac to i16
  %i.ag = add nuw nsw i16 %i.ad, %i.af            ; 4 uses
  br i1 %i.ae, label %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i: ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 10
  br i1 %i.ak, label %bb.h, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !441

bb.h:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.am = load i8, ptr %i.al, align 1, !tbaa !56
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %narrow.i8.i.i = mul nuw nsw i8 %i.aj, 10
  %i.ao = icmp ult i8 %i.an, 10
  %i.ap = add i8 %i.an, %narrow.i8.i.i            ; 6 uses
  br i1 %i.ao, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i: ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !56
  %i.as = add i8 %i.ar, -48                       ; 2 uses
  %i.at = icmp ult i8 %i.as, 10
  br i1 %i.at, label %bb.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, !prof !441

bb.i:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !56
  %i.aw = add i8 %i.av, -48                       ; 2 uses
  %narrow.i10.i.i = mul nuw nsw i8 %i.as, 10
  %i.ax = icmp ugt i8 %i.aw, 9
  %i.ay = add nuw nsw i8 %i.aw, %narrow.i10.i.i   ; 3 uses
  %i.az = add i8 %i.ap, -13
  %spec.select.i.i.i.i = icmp ult i8 %i.az, -12
  %or.cond34.not38.i.i = select i1 %i.ax, i1 true, i1 %spec.select.i.i.i.i, !prof !442
  %.not8.i.i.i = icmp eq i8 %i.ay, 0
  %or.cond35.i.i = select i1 %or.cond34.not38.i.i, i1 true, i1 %.not8.i.i.i, !prof !443
  br i1 %or.cond35.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %bb.j, !prof !443

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i8 %i.ap, 2
  %i.ba = and i16 %i.ag, 3
  %i.bb = icmp eq i16 %i.ba, 0
  %or.cond.i.i.i = and i1 %i.bb, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.k, label %.thread.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bc = urem i16 %i.ag, 100
  %.not.i.i.i.i.i = icmp ne i16 %i.bc, 0
  %i.bd = urem i16 %i.ag, 400
  %i.be = icmp eq i16 %i.bd, 0
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.be
  br i1 %or.cond.i.i.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.k, %bb.j
  %i.bf = zext nneg i8 %i.ap to i64
  %i.bg = add nuw nsw i64 %i.bf, 4294967295
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = getelementptr inbounds nuw i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !56
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i: ; preds = %.thread.i.i.i.i, %bb.k
  %.sroa.03.0.i.i.i.i = phi i8 [ %i.bj, %.thread.i.i.i.i ], [ 29, %bb.k ]
  %.not41.i.i = icmp ult i8 %.sroa.03.0.i.i.i.i, %i.ay
  br i1 %.not41.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %bb.l, !prof !444

bb.l:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i
  %i.bk = zext nneg i16 %i.ag to i32
  %i.bl = icmp samesign ult i8 %i.ap, 3
  %.neg.i.i.i.i = sext i1 %i.bl to i32
  %i.bm = add nsw i32 %.neg.i.i.i.i, %i.bk        ; 4 uses
  %i.bn = zext nneg i8 %i.ap to i32
  %i.bo = zext nneg i8 %i.ay to i32
  %i.bp = add nsw i32 %i.bm, 65137
  %i.bq = icmp slt i32 %i.bm, 0
  %i.br = select i1 %i.bq, i32 %i.bp, i32 %i.bm
  %.lhs.trunc.i.i = trunc i32 %i.br to i16
  %i.bs = sdiv i16 %.lhs.trunc.i.i, 400
  %.sext.i.i = sext i16 %i.bs to i32              ; 2 uses
  %.neg15.i.i.i.i = mul nsw i32 %.sext.i.i, -400
  %i.bt = add nsw i32 %.neg15.i.i.i.i, %i.bm      ; 3 uses
  %i.bu = icmp samesign ugt i8 %i.ap, 2
  %.v.i.i.i.i = select i1 %i.bu, i32 -3, i32 9
  %i.bv = add nsw i32 %.v.i.i.i.i, %i.bn
  %i.bw = mul nsw i32 %i.bv, 153
  %i.bx = add nsw i32 %i.bw, 2
  %i.by = udiv i32 %i.bx, 5
  %i.bz = mul nsw i32 %i.bt, 365
  %i.ca = lshr i32 %i.bt, 2
  %i.cb = udiv i32 %i.bt, 100
  %i.cc = mul nsw i32 %.sext.i.i, 146097
  %i.cd = add nsw i32 %i.by, -719469
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = add nsw i32 %i.ce, %i.ca
  %i.cg = add nsw i32 %i.cf, %i.bz
  %i.ch = sub nsw i32 %i.cg, %i.cb
  %i.ci = add nsw i32 %i.ch, %i.bo
  %i.cj = sext i32 %i.ci to i64                   ; 4 uses
  %i.ck = mul nsw i64 %i.cj, 86400                ; 5 uses
  %i.cl = icmp eq i64 %2, 10
  br i1 %i.cl, label %bb.m, label %bb.n, !prof !441

bb.m:                                             ; preds = %bb.l
  switch i32 %i.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50 [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i
    i32 1, label %.split14.i.i
    i32 2, label %.split.i.i
  ]

.split14.i.i:                                     ; preds = %bb.m
  %i.cm = mul nsw i64 %i.cj, 86400000
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50

.split.i.i:                                       ; preds = %bb.m
  %15 = add nsw i64 %i.ck, -9223372036855
  %16 = icmp ult i64 %15, -18446744073709
  %17 = mul nsw i64 %i.cj, 86400000000
  br i1 %16, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50, !prof !1420

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i: ; preds = %bb.m
  %18 = add nsw i64 %i.ck, -9223372037
  %19 = icmp ult i64 %18, -18446744073
  %20 = mul nsw i64 %i.cj, 86400000000000
  br i1 %19, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50, !prof !1420

bb.n:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !56
  switch i8 %i.co, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread [
    i8 32, label %bb.o
    i8 84, label %bb.o
  ], !prof !1421

bb.o:                                             ; preds = %bb.n, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i64 0, ptr %7, align 8
  %i.cp = getelementptr i8, ptr %3, i64 %2
  %i.cq = getelementptr i8, ptr %i.cp, i64 -1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !56  ; 3 uses
  %i.cs = icmp eq i8 %i.cr, 90
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = add i64 %2, -1
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.cu = add i64 %2, -3                          ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !56  ; 4 uses
  switch i8 %i.cw, label %bb.u [
    i8 43, label %bb.r
    i8 45, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !56
  %i.cz = add i8 %i.cy, -48                       ; 2 uses
  %i.da = icmp ult i8 %i.cz, 10
  br i1 %i.da, label %bb.s, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

bb.s:                                             ; preds = %bb.r
  %i.db = add i8 %i.cr, -48                       ; 2 uses
  %narrow.i.i.i = mul nuw nsw i8 %i.cz, 10
  %i.dc = icmp ugt i8 %i.db, 9
  %i.dd = add nuw nsw i8 %narrow.i.i.i, %i.db     ; 2 uses
  %i.de = icmp ugt i8 %i.dd, 23
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.de, !prof !1422
  br i1 %or.cond.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %bb.t, !prof !1422

bb.t:                                             ; preds = %bb.s
  %i.df = zext nneg i8 %i.dd to i64
  %i.dg = mul nuw nsw i64 %i.df, 3600             ; 2 uses
  %i.dh = icmp eq i8 %i.cw, 43
  %i.di = sub nsw i64 0, %i.dg
  %spec.select.i = select i1 %i.dh, i64 %i.di, i64 %i.dg
  store i64 %spec.select.i, ptr %7, align 8, !tbaa !270
  br label %.sink.split.i

bb.u:                                             ; preds = %bb.q
  %i.dj = add i64 %2, -5                          ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %i.dj ; 3 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !56  ; 2 uses
  switch i8 %i.dl, label %bb.z [
    i8 43, label %bb.v
    i8 45, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !56
  %i.do = add i8 %i.dn, -48                       ; 2 uses
  %i.dp = icmp ult i8 %i.do, 10
  br i1 %i.dp, label %bb.w, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

bb.w:                                             ; preds = %bb.v
  %i.dq = add i8 %i.cw, -48                       ; 2 uses
  %narrow.i.i78.i = mul nuw nsw i8 %i.do, 10
  %i.dr = icmp ult i8 %i.dq, 10
  %i.ds = add nuw nsw i8 %narrow.i.i78.i, %i.dq   ; 2 uses
  br i1 %i.dr, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i: ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !56
  %i.dv = add i8 %i.du, -48                       ; 2 uses
  %i.dw = icmp ult i8 %i.dv, 10
  br i1 %i.dw, label %bb.x, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

bb.x:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i
  %i.dx = add i8 %i.cr, -48                       ; 2 uses
  %narrow.i8.i80.i = mul nuw nsw i8 %i.dv, 10
  %i.dy = icmp ult i8 %i.dx, 10
  %i.dz = add nuw nsw i8 %narrow.i8.i80.i, %i.dx  ; 2 uses
  br i1 %i.dy, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i: ; preds = %bb.x
  %i.ea = icmp ugt i8 %i.ds, 23
  %i.eb = icmp ugt i8 %i.dz, 59
  %or.cond6.i.i = select i1 %i.ea, i1 true, i1 %i.eb, !prof !1423
  br i1 %or.cond6.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %bb.y, !prof !1424

bb.y:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i
  %i.ec = zext nneg i8 %i.ds to i64
  %i.ed = zext nneg i8 %i.dz to i64
  %i.ee = mul nuw nsw i64 %i.ec, 60
  %i.ef = add nuw nsw i64 %i.ee, %i.ed
  %i.eg = mul nuw nsw i64 %i.ef, 60               ; 2 uses
  %i.eh = icmp eq i8 %i.dl, 43
  %i.ei = sub nsw i64 0, %i.eg
  %spec.select161.i = select i1 %i.eh, i64 %i.ei, i64 %i.eg
  store i64 %spec.select161.i, ptr %7, align 8, !tbaa !270
  br label %.sink.split.i

bb.z:                                             ; preds = %bb.u
  %i.ej = add i64 %2, -6                          ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 %i.ej ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !56  ; 2 uses
  switch i8 %i.el, label %.sink.split.i [
    i8 43, label %bb.aa
    i8 45, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.em = icmp eq i8 %i.cw, 58
  br i1 %i.em, label %bb.ab, label %.sink.split.i

bb.ab:                                            ; preds = %bb.aa
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.eo = call fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr noundef nonnull %i.en, ptr noundef %7)
  br i1 %i.eo, label %bb.ac, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.ac:                                            ; preds = %bb.ab
  %i.ep = icmp eq i8 %i.el, 43
  br i1 %i.ep, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %bb.ac
  %i.eq = load i64, ptr %7, align 8, !tbaa !394
  %i.er = sub nsw i64 0, %i.eq
  store i64 %i.er, ptr %7, align 8, !tbaa !394
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.t, %bb.y, %bb.ac, %bb.ad, %bb.aa, %bb.z
  %.1 = phi i8 [ 0, %bb.aa ], [ 0, %bb.z ], [ 1, %bb.ad ], [ 1, %bb.ac ], [ 1, %bb.y ], [ 1, %bb.t ], [ 1, %bb.p ] ; 26 uses
  %.064.i = phi i64 [ %2, %bb.aa ], [ %2, %bb.z ], [ %i.ej, %bb.ad ], [ %i.ej, %bb.ac ], [ %i.dj, %bb.y ], [ %i.cu, %bb.t ], [ %i.ct, %bb.p ] ; 6 uses
  switch i64 %.064.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split [
    i64 13, label %bb.ae
    i64 16, label %bb.ag
    i64 19, label %bb.ak
    i64 21, label %bb.ak
    i64 22, label %bb.ak
    i64 23, label %bb.ak
    i64 24, label %bb.ak
    i64 25, label %bb.ak
    i64 26, label %bb.ak
    i64 27, label %bb.ak
    i64 28, label %bb.ak
    i64 29, label %bb.ak
  ]

bb.ae:                                            ; preds = %.sink.split.i
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.et = load i8, ptr %i.es, align 1, !tbaa !56
  %i.eu = add i8 %i.et, -48                       ; 2 uses
  %i.ev = icmp ult i8 %i.eu, 10
  br i1 %i.ev, label %bb.af, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

bb.af:                                            ; preds = %bb.ae
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !56
  %i.ey = add i8 %i.ex, -48                       ; 2 uses
  %narrow.i.i82.i = mul nuw nsw i8 %i.eu, 10
  %i.ez = icmp ugt i8 %i.ey, 9
  %i.fa = add nuw nsw i8 %i.ey, %narrow.i.i82.i   ; 2 uses
  %i.fb = icmp ugt i8 %i.fa, 23
  %or.cond.i83.i = select i1 %i.ez, i1 true, i1 %i.fb, !prof !1422
  br i1 %or.cond.i83.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84.i, !prof !1422

_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84.i: ; preds = %bb.af
  %i.fc = zext nneg i8 %i.fa to i64
  %i.fd = mul nuw nsw i64 %i.fc, 3600
  br label %bb.ap

bb.ag:                                            ; preds = %.sink.split.i
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !56
  %.not.i85.i = icmp eq i8 %i.ff, 58
  br i1 %.not.i85.i, label %bb.ah, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.ah:                                            ; preds = %bb.ag
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !56
  %i.fi = add i8 %i.fh, -48                       ; 2 uses
  %i.fj = icmp ult i8 %i.fi, 10
  br i1 %i.fj, label %bb.ai, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

bb.ai:                                            ; preds = %bb.ah
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !56
  %i.fm = add i8 %i.fl, -48                       ; 2 uses
  %narrow.i.i87.i = mul nuw nsw i8 %i.fi, 10
  %i.fn = icmp ult i8 %i.fm, 10
  %i.fo = add nuw nsw i8 %i.fm, %narrow.i.i87.i   ; 2 uses
  br i1 %i.fn, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i: ; preds = %bb.ai
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !56
  %i.fr = add i8 %i.fq, -48                       ; 2 uses
  %i.fs = icmp ult i8 %i.fr, 10
  br i1 %i.fs, label %bb.aj, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

bb.aj:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !56
  %i.fv = add i8 %i.fu, -48                       ; 2 uses
  %narrow.i10.i89.i = mul nuw nsw i8 %i.fr, 10
  %i.fw = icmp ult i8 %i.fv, 10
  %i.fx = add nuw nsw i8 %i.fv, %narrow.i10.i89.i ; 2 uses
  br i1 %i.fw, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i: ; preds = %bb.aj
  %i.fy = icmp ugt i8 %i.fo, 23
  %i.fz = icmp ugt i8 %i.fx, 59
  %or.cond8.i.i = select i1 %i.fy, i1 true, i1 %i.fz, !prof !1423
  br i1 %or.cond8.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !1424

_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i
  %i.ga = zext nneg i8 %i.fo to i64
  %i.gb = zext nneg i8 %i.fx to i64
  %i.gc = mul nuw nsw i64 %i.ga, 60
  %i.gd = add nuw nsw i64 %i.gc, %i.gb
  %i.ge = mul nuw nsw i64 %i.gd, 60
  br label %bb.ap

bb.ak:                                            ; preds = %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i, %.sink.split.i
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !56
  %.not.i90.i = icmp eq i8 %i.gh, 58
  br i1 %.not.i90.i, label %bb.al, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !56
  %.not7.i92.i = icmp eq i8 %i.gj, 58
  br i1 %.not7.i92.i, label %bb.am, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.am:                                            ; preds = %bb.al
  %i.gk = load i8, ptr %i.gf, align 1, !tbaa !56
  %i.gl = add i8 %i.gk, -48                       ; 2 uses
  %i.gm = icmp ult i8 %i.gl, 10
  br i1 %i.gm, label %bb.an, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

bb.an:                                            ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !56
  %i.gp = add i8 %i.go, -48                       ; 2 uses
  %narrow.i.i93.i = mul nuw nsw i8 %i.gl, 10
  %i.gq = icmp ult i8 %i.gp, 10
  %i.gr = add nuw nsw i8 %i.gp, %narrow.i.i93.i   ; 2 uses
  br i1 %i.gq, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i: ; preds = %bb.an
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 14
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !56
  %i.gu = add i8 %i.gt, -48                       ; 2 uses
  %i.gv = icmp ult i8 %i.gu, 10
  br i1 %i.gv, label %bb.ao, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

bb.ao:                                            ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 15
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !56
  %i.gy = add i8 %i.gx, -48                       ; 2 uses
  %narrow.i15.i.i = mul nuw nsw i8 %i.gu, 10
  %i.gz = icmp ult i8 %i.gy, 10
  %i.ha = add nuw nsw i8 %i.gy, %narrow.i15.i.i   ; 2 uses
  br i1 %i.gz, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i: ; preds = %bb.ao
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !56
  %i.hd = add i8 %i.hc, -48                       ; 2 uses
  %i.he = icmp ult i8 %i.hd, 10
  br i1 %i.he, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !56
  %i.hh = add i8 %i.hg, -48                       ; 2 uses
  %narrow.i18.i.i = mul nuw nsw i8 %i.hd, 10
  %i.hi = icmp ugt i8 %i.hh, 9
  %i.hj = add i8 %i.hh, %narrow.i18.i.i           ; 2 uses
  %i.hk = icmp ugt i8 %i.gr, 23
  %or.cond.i95.i = select i1 %i.hi, i1 true, i1 %i.hk, !prof !1425
  %i.hl = icmp ugt i8 %i.ha, 59
  %or.cond11.i.i = select i1 %or.cond.i95.i, i1 true, i1 %i.hl, !prof !1423
  %i.hm = icmp ugt i8 %i.hj, 59
  %or.cond13.i.i = select i1 %or.cond11.i.i, i1 true, i1 %i.hm, !prof !1426
  br i1 %or.cond13.i.i, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, !prof !1424

_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i
  %i.hn = zext nneg i8 %i.gr to i64
  %i.ho = zext nneg i8 %i.ha to i64
  %i.hp = mul nuw nsw i64 %i.hn, 60
  %i.hq = add nuw nsw i64 %i.hp, %i.ho
  %i.hr = zext nneg i8 %i.hj to i64
  %i.hs = mul nuw nsw i64 %i.hq, 60
  %i.ht = add nuw nsw i64 %i.hs, %i.hr
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84.i
  %.sroa.0113.0.i = phi i64 [ %i.fd, %_ZN5arrow8internal6detailL7ParseHHINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit84.i ], [ %i.ge, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i ], [ %i.ht, %_ZN5arrow8internal6detailL13ParseHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_.exit.i ]
  %i.hu = load i64, ptr %7, align 8, !tbaa !270
  %i.hv = add nsw i64 %i.hu, %.sroa.0113.0.i      ; 2 uses
  %i.hw = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hv, i64 %i.ck)
  %i.hx = extractvalue { i64, i1 } %i.hw, 1
  %21 = add nsw i64 %i.hv, %i.ck                  ; 13 uses
  br i1 %i.hx, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %bb.aq, !prof !67

bb.aq:                                            ; preds = %bb.ap
  %i.hy = icmp samesign ult i64 %.064.i, 20
  br i1 %i.hy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  switch i32 %i.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59 [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i101.i
    i32 1, label %.split14.i100.i
    i32 2, label %.split.i96.i
  ]

.split14.i100.i:                                  ; preds = %bb.ar
  %22 = add i64 %21, -9223372036854776
  %23 = icmp ult i64 %22, -18446744073709551
  %24 = mul nsw i64 %21, 1000
  br i1 %23, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59, !prof !1420

.split.i96.i:                                     ; preds = %bb.ar
  %25 = add i64 %21, -9223372036855
  %26 = icmp ult i64 %25, -18446744073709
  %27 = mul nsw i64 %21, 1000000
  br i1 %26, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59, !prof !1420

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i101.i: ; preds = %bb.ar
  %28 = add i64 %21, -9223372037
  %29 = icmp ult i64 %28, -18446744073
  %30 = mul nsw i64 %21, 1000000000
  br i1 %29, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59, !prof !1420

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59: ; preds = %bb.ar, %.split14.i100.i, %.split.i96.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i101.i
  %.pn25.i.i8.i98.i = phi i64 [ %24, %.split14.i100.i ], [ %30, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i101.i ], [ %27, %.split.i96.i ], [ %21, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50

bb.as:                                            ; preds = %bb.aq
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !56
  %.not76.i = icmp eq i8 %i.ia, 46
  br i1 %.not76.i, label %bb.at, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, !prof !141

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ic = add nsw i64 %.064.i, -20                ; 3 uses
  switch i32 %i.f, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64 [
    i32 1, label %bb.au
    i32 2, label %bb.av
    i32 3, label %bb.aw
  ]

bb.au:                                            ; preds = %bb.at
  %i.id = icmp samesign ugt i64 %.064.i, 23
  br i1 %i.id, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %bb.aw, !prof !67

bb.av:                                            ; preds = %bb.at
  %i.ie = icmp samesign ugt i64 %.064.i, 26
  br i1 %i.ie, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %bb.aw, !prof !67

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %.pn.i.i = phi i64 [ 3, %bb.au ], [ 6, %bb.av ], [ 9, %bb.at ] ; 2 uses
  %i.if = icmp eq i64 %.pn.i.i, %i.ic
  br i1 %i.if, label %.split.i, label %bb.ax, !prof !141

.split.i:                                         ; preds = %bb.aw
  %i.ig = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.ib, i64 noundef range(i64 0, -20) %i.ic, ptr noundef nonnull %i.b)
  br i1 %i.ig, label %bb.az, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, !prof !617

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ih = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %i.ib, i64 noundef range(i64 0, -20) %i.ic, ptr noundef nonnull %i.a)
  br i1 %i.ih, label %bb.ay, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i, !prof !141

bb.ay:                                            ; preds = %bb.ax
  %reass.sub = sub i64 %.pn.i.i, %.064.i
  %switch.tableidx = add i64 %reass.sub, 19       ; 2 uses
  %i.ii = icmp ult i64 %switch.tableidx, 8
  br i1 %i.ii, label %switch.lookup, label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread131.i

switch.lookup:                                    ; preds = %bb.ay
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK5arrow7compute8internal14ParseTimestamp4CallIlSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE, i64 %switch.tableidx
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.ij = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ik = mul i32 %i.ij, %switch.load
  store i32 %i.ik, ptr %i.b, align 4, !tbaa !3
  br label %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread131.i

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread131.i: ; preds = %bb.ay, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.az

_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64

bb.az:                                            ; preds = %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.thread131.i, %.split.i
  switch i32 %i.f, label %default.unreachable.i [
    i32 3, label %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i
    i32 1, label %.split14.i109.i
    i32 2, label %.split.i105.i
  ]

.split14.i109.i:                                  ; preds = %bb.az
  %31 = add i64 %21, -9223372036854776
  %32 = icmp ult i64 %31, -18446744073709551
  %33 = mul nsw i64 %21, 1000
  br i1 %32, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !1420

.split.i105.i:                                    ; preds = %bb.az
  %34 = add i64 %21, -9223372036855
  %35 = icmp ult i64 %34, -18446744073709
  %36 = mul nsw i64 %21, 1000000
  br i1 %35, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !1420

_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i: ; preds = %bb.az
  %37 = add i64 %21, -9223372037
  %38 = icmp ult i64 %37, -18446744073
  %39 = mul nsw i64 %21, 1000000000
  br i1 %38, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit, !prof !1420

default.unreachable.i:                            ; preds = %bb.az
  unreachable

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64: ; preds = %bb.au, %_ZN5arrow8internal6detailL15ParseSubSecondsEPKcmNS_8TimeUnit4typeEPj.exit.i, %.split.i, %bb.at, %bb.av, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i, %.split.i105.i, %.split14.i109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit: ; preds = %.split14.i109.i, %.split.i105.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i
  %.pn25.i.i8.i107.i = phi i64 [ %33, %.split14.i109.i ], [ %39, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i110.i ], [ %36, %.split.i105.i ]
  %i.il = load i32, ptr %i.b, align 4, !tbaa !3
  %i.im = zext i32 %i.il to i64
  %i.in = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pn25.i.i8.i107.i, i64 %i.im) ; 2 uses
  %i.io = extractvalue { i64, i1 } %i.in, 1
  %i.ip = extractvalue { i64, i1 } %i.in, 0       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br i1 %i.io, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread, label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50, !prof !444

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i, %bb.ao, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i, %bb.am, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i, %bb.an, %bb.al, %bb.ak, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i, %bb.ah, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i, %bb.ai, %bb.ag, %bb.af, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i, %bb.v, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i, %bb.w, %bb.s, %.split.i96.i, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i101.i, %bb.ap, %bb.as, %bb.x, %.sink.split.i, %bb.ae, %bb.aj, %.split14.i100.i, %bb.r, %bb.ab, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64
  %.248.ph = phi i8 [ %.1, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread64 ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i79.i ], [ 0, %bb.x ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i.i ], [ 0, %bb.ab ], [ %.1, %bb.ak ], [ %.1, %bb.al ], [ %.1, %bb.am ], [ %.1, %bb.an ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i94.i ], [ %.1, %bb.ao ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit16.i.i ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit19.i.i ], [ %.1, %bb.ag ], [ %.1, %bb.ah ], [ %.1, %bb.ai ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i88.i ], [ %.1, %bb.aj ], [ %.1, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i.i ], [ %.1, %bb.ae ], [ %.1, %bb.as ], [ %.1, %.split.i96.i ], [ %.1, %.split14.i100.i ], [ %.1, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i101.i ], [ %.1, %bb.ap ], [ %.1, %bb.af ], [ %.1, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread: ; preds = %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i, %bb.g, %bb.e, %bb.d, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i, %bb.i, %bb.c, %bb.f, %bb.b, %bb.h, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %.split.i.i, %bb.n, %bb.a, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit
  %.248 = phi i8 [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i ], [ %.1, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i ], [ 0, %bb.a ], [ 0, %bb.n ], [ 0, %.split.i.i ], [ 0, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ %.248.ph, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split ]
  %.24246 = phi i64 [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPt.exit.i.i ], [ %i.ip, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit ], [ 0, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i.i ], [ 0, %bb.a ], [ 0, %bb.n ], [ 0, %.split.i.i ], [ 0, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ], [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.i ], [ 0, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.i.i ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.iq = load ptr, ptr %0, align 8, !tbaa !1418, !nonnull !152, !align !319 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !45
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %i.iq, i1 noundef zeroext false)
  invoke void @_ZN5arrow6Status7InvalidIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread
  %i.iu = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i7, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bb, !prof !141

bb.bb:                                            ; preds = %bb.ba
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !142, !range !151, !noundef !152
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %_ZN5arrow6StatusD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.iy = load ptr, ptr %9, align 8, !tbaa !138
  store ptr %i.iy, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %9, align 8, !tbaa !138
  %i.iz = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !56
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50

bb.bd:                                            ; preds = %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread
  %i.je = landingpad { ptr, i32 }
          cleanup
  %i.jf = load ptr, ptr %10, align 8, !tbaa !237  ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.bd
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !56
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  br label %bb.bs

_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50: ; preds = %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i, %.split.i.i, %.split14.i.i, %bb.m, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit
  %.249 = phi i8 [ %.248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.1, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit ], [ %.1, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59 ], [ 0, %bb.m ], [ 0, %.split14.i.i ], [ 0, %.split.i.i ], [ 0, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ]
  %.24247 = phi i64 [ %.24246, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ip, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit ], [ %.pn25.i.i8.i98.i, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread59 ], [ %i.ck, %bb.m ], [ %i.cm, %.split14.i.i ], [ %17, %.split.i.i ], [ %20, %_ZN5arrow4util17CastSecondsToUnitENS_8TimeUnit4typeEl.exit.i.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jl = load i8, ptr %i.jk, align 8, !tbaa !1427, !range !151, !noundef !152 ; 2 uses
  %.not = icmp eq i8 %.249, %i.jl
  br i1 %.not, label %bb.br, label %bb.be

bb.be:                                            ; preds = %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %bb.bf, label %bb.bl

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.jn = load ptr, ptr %0, align 8, !tbaa !1418, !nonnull !152, !align !319 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !45
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(112) %i.jn, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !1428
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(128) @.str.24)
          to label %.noexc unwind label %bb.bk

.noexc:                                           ; preds = %bb.bf
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %11, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %.noexc
  %i.jr = load ptr, ptr %6, align 8, !tbaa !237, !noalias !1428 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bg
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !56, !noalias !1428
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.bh:                                            ; preds = %.noexc
  %i.jw = landingpad { ptr, i32 }
          cleanup
  %i.jx = load ptr, ptr %6, align 8, !tbaa !237, !noalias !1428 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.bh
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !56, !noalias !1428
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !1428
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !1428
  %i.kc = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i11, label %_ZN5arrow6StatusD2Ev.exit14, label %bb.bi, !prof !141

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !142, !range !151, !noundef !152
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %_ZN5arrow6StatusD2Ev.exit14, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %bb.bj, %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.kg = load ptr, ptr %11, align 8, !tbaa !138
  store ptr %i.kg, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %11, align 8, !tbaa !138
  %i.kh = load ptr, ptr %12, align 8, !tbaa !237  ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZN5arrow6StatusD2Ev.exit14
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !56
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZN5arrow6StatusD2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.br

bb.bk:                                            ; preds = %bb.bf
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, %bb.bk
  %eh.lpad-body = phi { ptr, i32 } [ %i.km, %bb.bk ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ]
  %i.kn = load ptr, ptr %12, align 8, !tbaa !237  ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %.body
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !56
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.bs

bb.bl:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.ks = load ptr, ptr %0, align 8, !tbaa !1418, !nonnull !152, !align !319 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !45
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8
  call void %i.kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %i.ks, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !1433
  invoke void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA27_S2_EEESF_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(26) @.str.14, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 1 dereferenceable(23) @.str.15, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 1 dereferenceable(27) @.str.25)
          to label %.noexc26 unwind label %bb.bq

.noexc26:                                         ; preds = %bb.bl
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %.noexc26
  %i.kw = load ptr, ptr %5, align 8, !tbaa !237, !noalias !1433 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24: ; preds = %bb.bm
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !56, !noalias !1433
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25

bb.bn:                                            ; preds = %.noexc26
  %i.lb = landingpad { ptr, i32 }
          cleanup
  %i.lc = load ptr, ptr %5, align 8, !tbaa !237, !noalias !1433 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i21: ; preds = %bb.bn
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !56, !noalias !1433
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !1433
  br label %.body27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !1433
  %i.lh = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i29, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.bo, !prof !141

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 1
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !142, !range !151, !noundef !152
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %bb.bp, %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i25
  %i.ll = load ptr, ptr %13, align 8, !tbaa !138
  store ptr %i.ll, ptr %4, align 8, !tbaa !138
  store ptr null, ptr %13, align 8, !tbaa !138
  %i.lm = load ptr, ptr %14, align 8, !tbaa !237  ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.lp = load i64, ptr %i.ln, align 8, !tbaa !56
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZN5arrow6StatusD2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.body27

.body27:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22, %bb.bq
  %eh.lpad-body28 = phi { ptr, i32 } [ %i.lr, %bb.bq ], [ %i.lb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i22 ]
  %i.ls = load ptr, ptr %14, align 8, !tbaa !237  ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.body27
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !56
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.body27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.bs

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZN5arrow8internalL21ParseTimestampISO8601EPKcmNS_8TimeUnit4typeEPlPb.exit.thread50
  ret i64 %.24247

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %eh.lpad-body28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl1ELl1EEEEEEbPKcPT_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = load i8, ptr %i.a, align 1, !tbaa !56
  %.not = icmp eq i8 %i.b, 58
  br i1 %.not, label %bb.b, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !141

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !56
  %i.d = add i8 %i.c, -48                         ; 2 uses
  %i.e = icmp ult i8 %i.d, 10
  br i1 %i.e, label %bb.c, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !441

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !56
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %narrow.i = mul nuw nsw i8 %i.d, 10
  %i.i = icmp ult i8 %i.h, 10
  %i.j = add nuw nsw i8 %i.h, %narrow.i           ; 2 uses
  br i1 %i.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, !prof !441

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit:    ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !56
  %i.m = add i8 %i.l, -48                         ; 2 uses
  %i.n = icmp ult i8 %i.m, 10
  br i1 %i.n, label %bb.d, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

bb.d:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !56
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %narrow.i10 = mul nuw nsw i8 %i.m, 10
  %i.r = icmp ult i8 %i.q, 10
  %i.s = add nuw nsw i8 %i.q, %narrow.i10         ; 2 uses
  br i1 %i.r, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11:  ; preds = %bb.d
  %i.t = icmp ugt i8 %i.j, 23
  %i.u = icmp ugt i8 %i.s, 59
  %or.cond8 = select i1 %i.t, i1 true, i1 %i.u, !prof !1423
  br i1 %or.cond8, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread, label %bb.e, !prof !1424

bb.e:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11
  %i.v = zext nneg i8 %i.j to i64
  %i.w = zext nneg i8 %i.s to i64
  %i.x = mul nuw nsw i64 %i.v, 60
  %i.y = add nuw nsw i64 %i.x, %i.w
  %i.z = mul nuw nsw i64 %i.y, 60
  store i64 %i.z, ptr %1, align 8, !tbaa !270
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.thread: ; preds = %bb.d, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, %bb.c, %bb.b, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11, %bb.a, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11 ], [ false, %bb.b ], [ false, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !56
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext i8 %i.c to i32                      ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %.not137 = icmp eq i64 %1, 1
  br i1 %.not137, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !56
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i32 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext i8 %i.h to i32
  %i.l = add nuw nsw i32 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.w

bb.e:                                             ; preds = %bb.d
  %.not138 = icmp eq i64 %1, 2
  br i1 %.not138, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !56
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i32 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext i8 %i.o to i32
  %i.s = add nuw nsw i32 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.w

bb.g:                                             ; preds = %bb.f
  %.not139 = icmp eq i64 %1, 3
  br i1 %.not139, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !56
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i32 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext i8 %i.v to i32
  %i.z = add nuw nsw i32 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %.not140 = icmp eq i64 %1, 4
  br i1 %.not140, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !56
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i32 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext i8 %i.ac to i32
  %i.ag = add nuw nsw i32 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %.not141 = icmp eq i64 %1, 5
  br i1 %.not141, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !56
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i32 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext i8 %i.aj to i32
  %i.an = add nuw nsw i32 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %.not142 = icmp eq i64 %1, 6
  br i1 %.not142, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i32 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext i8 %i.aq to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %.not143 = icmp eq i64 %1, 7
  br i1 %.not143, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !56
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i32 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %.not144 = icmp eq i64 %1, 8
  br i1 %.not144, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !56
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i32 %i.bb, 10
  %i.bg = add i64 %1, -9                          ; 2 uses
  %i.bh = icmp ult i8 %i.be, 10
  %i.bi = zext i8 %i.be to i32
  %i.bj = add nuw nsw i32 %i.bf, %i.bi            ; 3 uses
  br i1 %i.bh, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %.not145 = icmp eq i64 %i.bg, 0
  br i1 %.not145, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %bb.w, label %bb.u, !prof !67

bb.u:                                             ; preds = %bb.t
  %i.bl = load i8, ptr %i.bc, align 1, !tbaa !56
  %i.bm = add i8 %i.bl, -48                       ; 2 uses
  %i.bn = mul nuw i32 %i.bj, 10                   ; 4 uses
  %i.bo = zext i8 %i.bm to i32
  %i.bp = add i32 %i.bn, %i.bo                    ; 2 uses
  %.not146 = icmp eq i64 %i.bg, 1
  %i.bq = icmp ult i8 %i.bm, 10
  %or.cond.not = and i1 %.not146, %i.bq           ; 2 uses
  %i.br = icmp uge i32 %i.bp, %i.bn
  %. = tail call i32 @llvm.umax.i32(i32 %i.bp, i32 %i.bn)
  %.9104 = select i1 %or.cond.not, i32 %., i32 %i.bn, !prof !1438
  %cond9 = select i1 %or.cond.not, i1 %i.br, i1 false, !prof !1438
  br i1 %cond9, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10 = phi i32 [ %.9104, %bb.u ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10, ptr %2, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.v
  %.10115 = phi i1 [ false, %bb.b ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ]
  ret i1 %.10115
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(23) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(128) %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #20
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E3_clIS4_EEDaSM_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E3_clIS4_EEDaSM_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !270
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !448
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E2_clIS9_EEDaSM_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E2_clIS9_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E3_clIS4_EEDaSM_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(23) %3) #20
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(23) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E1_clISB_EEDaSM_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E1_clISB_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E2_clIS9_EEDaSM_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %i.k = load ptr, ptr %4, align 8, !tbaa !237
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !238
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E0_clISF_EEDaSM_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E0_clISF_EEDaSM_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcRSt17basic_string_viewIcSt11char_traitsIcEERA23_S2_NSt7__cxx1112basic_stringIcS7_SaIcEEERA128_S2_EEESF_DpOT_ENKUlOT_E1_clISB_EEDaSM_.exit
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !309, !nonnull !152, !align !319
  %i.p = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(128) %5) #20
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 1 dereferenceable(128) %5, i64 noundef %i.p)
end_hunk_0
