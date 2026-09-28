Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CGUISpriteBank?download=true
inline.NumInlined: 819
inline.NumDeleted: 405
begin_hunk_0_@_ZN3gui14CGUISpriteBank12draw2DSpriteEjRKN4core8vector2dIiEEPKNS1_4rectIiEERKN5video6SColorEjjbb:bb.a
  unreachable

_ZN4core5arrayINS_4rectIiEEEixEj.exit:            ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bm ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.bq = load i64, ptr %2, align 4, !tbaa !67    ; 3 uses
  store i64 %i.bq, ptr %9, align 8, !tbaa !67
  br i1 %8, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4core5arrayINS_4rectIiEEEixEj.exit
  %i.br = lshr i64 %i.bq, 32
  %i.bs = trunc nuw i64 %i.br to i32
  %i.bt = trunc i64 %i.bq to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !82
  %i.bw = load i32, ptr %i.bp, align 4, !tbaa !83
  %i.bx = sub nsw i32 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !84
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !85
  %i.cc = sub nsw i32 %i.bz, %i.cb
  %.neg = sdiv i32 %i.bx, -2
  %.neg31 = sdiv i32 %i.cc, -2
  %i.cd = add i32 %.neg, %i.bt
  store i32 %i.cd, ptr %9, align 8, !tbaa !120
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.cf = add i32 %.neg31, %i.bs
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !121
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4core5arrayINS_4rectIiEEEixEj.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !47 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %4, align 4, !tbaa !67
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 400
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.aj, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(16) %i.bp, ptr noundef %3, i32 %.sroa.0.0.copyload, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit

_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit:  ; preds = %_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i, %bb.a, %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit, %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit19, %bb.o
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define void @_ZN3gui14CGUISpriteBank12draw2DSpriteEjRKN4core4rectIiEEPS4_PKN5video6SColorEjb(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %.not.i = icmp ult i32 %1, %i.i
  br i1 %.not.i, label %bb.b, label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %1 to i64                       ; 4 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIN3gui10SGUISpriteEEixEj) #22
  unreachable

_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i:   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.j ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = lshr exact i64 %i.r, 3
  %i.t = trunc i64 %i.s to i32                    ; 4 uses
  %.not23.i = icmp eq i32 %i.t, 0
  br i1 %.not23.i, label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  %.not21.i = icmp eq i32 %i.v, 0
  br i1 %.not21.i, label %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = udiv i32 %5, %i.v                        ; 3 uses
  br i1 %6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = urem i32 %i.w, %i.t
  br label %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit

bb.g:                                             ; preds = %bb.e
  %.not22.i = icmp ult i32 %i.w, %i.t
  %i.y = add i32 %i.t, -1
  %i.z = select i1 %.not22.i, i32 %i.w, i32 %i.y
  br label %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit

_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit:      ; preds = %bb.f, %bb.g, %bb.d
  %.0.ph = phi i32 [ %i.x, %bb.f ], [ %i.z, %bb.g ], [ 0, %bb.d ]
  %i.aa = zext i32 %.0.ph to i64                  ; 4 uses
  %i.ab = ashr exact i64 %i.r, 3
  %i.ac = icmp ugt i64 %i.ab, %i.aa
  br i1 %i.ac, label %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit: ; preds = %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aa
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !78
  %i.af = load ptr, ptr %0, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.ae) ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 40
  %i.ap = icmp ugt i64 %i.ao, %i.j
  br i1 %i.ap, label %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit14, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui10SGUISpriteEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit14:    ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %i.j ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !58 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = icmp ugt i64 %i.ax, %i.aa
  br i1 %i.ay, label %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit15, label %bb.k

bb.k:                                             ; preds = %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit14
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit15: ; preds = %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit14
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !79 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !66
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !52 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 4
  %i.bk = trunc i64 %i.bj to i32
  %.not13 = icmp ult i32 %i.bb, %i.bk
  br i1 %.not13, label %bb.l, label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit

bb.l:                                             ; preds = %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit15
  %i.bl = zext i32 %i.bb to i64                   ; 2 uses
  %i.bm = ashr exact i64 %i.bi, 4
  %i.bn = icmp ugt i64 %i.bm, %i.bl
  br i1 %i.bn, label %_ZN4core5arrayINS_4rectIiEEEixEj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_4rectIiEEEixEj) #22
  unreachable

_ZN4core5arrayINS_4rectIiEEEixEj.exit:            ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !47 ; 2 uses
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bl
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !17
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 416
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef %3, ptr noundef %4, i1 noundef zeroext true)
  br label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit

_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit:  ; preds = %_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i, %bb.a, %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit, %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit15, %_ZN4core5arrayINS_4rectIiEEEixEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gui14CGUISpriteBank17draw2DSpriteBatchERKN4core5arrayIjEERKNS2_INS1_8vector2dIiEEEEPKNS1_4rectIiEERKN5video6SColorEjjbb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.core::array.39", align 8    ; 24 uses
  %10 = alloca %"struct.gui::CGUISpriteBank::SDrawBatch", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.c = load ptr, ptr %1, align 8, !tbaa !144
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.k = load ptr, ptr %2, align 8, !tbaa !89
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr i64 %i.n, 3
  %i.p = trunc i64 %i.o to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.p) ; 4 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.u = load ptr, ptr %0, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(120) %0)
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.y, align 8, !tbaa !149
  %i.z = zext i32 %i.x to i64
  invoke void @_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(25) %9, i64 noundef %i.z)
          to label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit.preheader unwind label %bb.c

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit.preheader: ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = and i64 %i.ag, 34359738360
  %.not184 = icmp eq i64 %i.ah, 0
  br i1 %.not184, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ap = zext i32 %.sroa.speculated to i64       ; 6 uses
  %i.aq = shl nuw nsw i64 %i.ap, 3
  br label %bb.e

common.resume:                                    ; preds = %bb.be, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.c ], [ %.pn74.pn, %bb.be ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(25) %9) #21
  br label %common.resume

.preheader:                                       ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit.preheader
  %.not71179.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not71179.not, label %.critedge.preheader, label %.lr.ph181

.lr.ph181:                                        ; preds = %.preheader
  %i.as = sub i32 %6, %5
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.s

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE11_M_allocateEm.exit.i.i, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit81
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.e:                                             ; preds = %.lr.ph, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, i8 0, i64 72, i1 false)
  store i8 1, ptr %i.ai, align 8, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.aj, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ak, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !97 ; 3 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !98
  %.not.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gui14CGUISpriteBank10SDrawBatchC2EOS1_(ptr noundef nonnull align 8 dereferenceable(68) %i.az, ptr noundef nonnull align 8 dereferenceable(68) %10)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.f
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  store ptr %i.bc, ptr %i.al, align 8, !tbaa !97
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(25) %9, ptr %i.az, ptr noundef nonnull align 8 dereferenceable(68) %10)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %.noexc, %bb.g
  store i8 0, ptr %i.y, align 8, !tbaa !149
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bh) #20
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i

_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i:          ; preds = %bb.i, %bb.h
  %i.bi = load ptr, ptr %10, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i1.i, label %_ZN3gui14CGUISpriteBank10SDrawBatchD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i
  %i.bj = load ptr, ptr %i.ao, align 8, !tbaa !99
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #20
  br label %_ZN3gui14CGUISpriteBank10SDrawBatchD2Ev.exit

_ZN3gui14CGUISpriteBank10SDrawBatchD2Ev.exit:     ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.bn = load ptr, ptr %i.al, align 8, !tbaa !97
  %i.bo = load ptr, ptr %9, align 8, !tbaa !100   ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = sdiv exact i64 %i.br, 72
  %i.bt = icmp ugt i64 %i.bs, %indvars.iv
  br i1 %i.bt, label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit, label %bb.k

bb.k:                                             ; preds = %_ZN3gui14CGUISpriteBank10SDrawBatchD2Ev.exit
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit: ; preds = %_ZN3gui14CGUISpriteBank10SDrawBatchD2Ev.exit
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.bo, i64 %indvars.iv ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !99 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !89 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 3 uses
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3                 ; 2 uses
  %i.cc = icmp ugt i64 %i.cb, %i.ap
  br i1 %i.cc, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !88 ; 4 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bz
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = icmp ugt i64 %i.ch, %i.ap
  br i1 %i.ci, label %bb.m, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE6resizeEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ap ; 3 uses
  %.not.i.i.i79 = icmp eq ptr %i.ce, %i.cj
  br i1 %.not.i.i.i79, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN4core8vector2dIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4core8vector2dIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.m
  store ptr %i.cj, ptr %i.cd, align 8, !tbaa !88
  br label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN4core8vector2dIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.m, %bb.l
  %i.ck = phi ptr [ %i.cj, %_ZSt8_DestroyIPN4core8vector2dIiEES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.ce, %bb.m ], [ %i.ce, %bb.l ]
  %i.cl = icmp eq ptr %i.bw, %i.ck
  br i1 %i.cl, label %_ZN4core5arrayINS_8vector2dIiEEE10reallocateEjb.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE6resizeEm.exit.i
  %i.cm = call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN4core8vector2dIiEESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(25) %i.bu) #21 ; 0 uses
  br label %_ZN4core5arrayINS_8vector2dIiEEE10reallocateEjb.exit

bb.o:                                             ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit
  %i.cn = icmp samesign ult i64 %i.cb, %i.ap
  br i1 %i.cn, label %_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE11_M_allocateEm.exit.i.i, label %_ZN4core5arrayINS_8vector2dIiEEE10reallocateEjb.exit

_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !88
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.bz
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #24
          to label %.noexc80 unwind label %bb.d   ; 4 uses

.noexc80:                                         ; preds = %_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE11_M_allocateEm.exit.i.i
  %i.ct = load ptr, ptr %i.bu, align 8, !tbaa !89 ; 5 uses
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !88 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc80, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i ], [ %i.cs, %.noexc80 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %i.ct, %.noexc80 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.cv = load i64, ptr %.0911.i.i.i.i.i, align 4, !tbaa !67, !alias.scope !151, !noalias !150
  store i64 %i.cv, ptr %.012.i.i.i.i.i, align 4, !tbaa !67, !alias.scope !150, !noalias !151
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i78 = icmp eq ptr %i.cw, %i.cu
  br i1 %.not.i.i.i.i.i78, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !125

_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc80
  %.not.i8.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  %i.cy = load ptr, ptr %i.bv, align 8, !tbaa !99
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.ct to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.db) #20
  br label %_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i.i

_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i.i
  store ptr %i.cs, ptr %i.bu, align 8, !tbaa !89
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store ptr %i.dc, ptr %i.co, align 8, !tbaa !88
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ap
  store ptr %i.dd, ptr %i.bv, align 8, !tbaa !99
  br label %_ZN4core5arrayINS_8vector2dIiEEE10reallocateEjb.exit

_ZN4core5arrayINS_8vector2dIiEEE10reallocateEjb.exit: ; preds = %_ZNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i.i, %bb.o, %bb.n, %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE6resizeEm.exit.i
  %i.de = load ptr, ptr %i.al, align 8, !tbaa !97
  %i.df = load ptr, ptr %9, align 8, !tbaa !100   ; 2 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 72
  %i.dk = icmp ugt i64 %i.dj, %indvars.iv
  br i1 %i.dk, label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit81, label %bb.q

bb.q:                                             ; preds = %_ZN4core5arrayINS_8vector2dIiEEE10reallocateEjb.exit
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit81: ; preds = %_ZN4core5arrayINS_8vector2dIiEEE10reallocateEjb.exit
  %i.dl = getelementptr inbounds nuw [72 x i8], ptr %i.df, i64 %indvars.iv
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  invoke void @_ZN4core5arrayINS_4rectIiEEE10reallocateEjb(ptr noundef nonnull align 8 dereferenceable(25) %i.dm, i32 noundef %.sroa.speculated, i1 noundef zeroext true)
          to label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit unwind label %bb.d

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEC2Ej.exit: ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.do = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 3
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = icmp samesign ult i64 %indvars.iv.next, %i.dt
  br i1 %i.du, label %bb.e, label %.preheader, !llvm.loop !126

bb.r:                                             ; preds = %bb.g, %bb.f
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gui14CGUISpriteBank10SDrawBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.be

.critedge.preheader:                              ; preds = %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit, %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !97 ; 5 uses
  %i.dy = load ptr, ptr %9, align 8, !tbaa !100   ; 9 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = sdiv exact i64 %i.eb, 72
  %i.ed = and i64 %i.ec, 4294967295
  %.not185 = icmp eq i64 %i.ed, 0
  br i1 %.not185, label %.loopexit, label %.lr.ph183

.lr.ph183:                                        ; preds = %.critedge.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.not269 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not269, label %40, label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit136.peel

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit136.peel: ; preds = %.lr.ph183
  %11 = load ptr, ptr %i.dy, align 8, !tbaa !101
  %12 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %.critedge.peel, label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137.peel

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137.peel: ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit136.peel
  %15 = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %.critedge.peel, label %20

20:                                               ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137.peel
  %21 = load ptr, ptr %i.ee, align 8, !tbaa !47   ; 2 uses
  %22 = load ptr, ptr %0, align 8, !tbaa !17
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef 0)
          to label %26 unwind label %.loopexit.split-lp265

26:                                               ; preds = %20
  %27 = load ptr, ptr %i.dw, align 8, !tbaa !97
  %28 = load ptr, ptr %9, align 8, !tbaa !100     ; 3 uses
  %.not270 = icmp eq ptr %27, %28
  br i1 %.not270, label %.loopexit268, label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139.peel

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139.peel: ; preds = %26
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 32
  %.sroa.0.0.copyload.peel = load i32, ptr %4, align 4, !tbaa !67
  %30 = load ptr, ptr %21, align 8, !tbaa !17
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 408
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(25) %28, ptr noundef nonnull align 8 dereferenceable(25) %29, ptr noundef %3, i32 %.sroa.0.0.copyload.peel, i1 noundef zeroext true)
          to label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge.peel unwind label %.loopexit.split-lp265

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge.peel: ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139.peel
  %.pre.peel = load ptr, ptr %i.dw, align 8, !tbaa !97
  %.pre197.peel = load ptr, ptr %9, align 8, !tbaa !100
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge.peel, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137.peel, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit136.peel
  %33 = phi ptr [ %.pre197.peel, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge.peel ], [ %i.dy, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit136.peel ], [ %i.dy, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137.peel ] ; 3 uses
  %34 = phi ptr [ %.pre.peel, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge.peel ], [ %i.dx, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit136.peel ], [ %i.dx, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137.peel ] ; 3 uses
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %33 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 72
  %39 = and i64 %38, 4294967294
  %.not271 = icmp eq i64 %39, 0
  br i1 %.not271, label %.loopexit, label %.lr.ph183.peel.newph

bb.s:                                             ; preds = %.lr.ph181, %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit
  %indvars.iv191 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next192, %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit ] ; 6 uses
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !143
  %i.eg = load ptr, ptr %1, align 8, !tbaa !144   ; 2 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 2
  %i.el = icmp ugt i64 %i.ek, %indvars.iv191
  br i1 %i.el, label %_ZNK4core5arrayIjEixEj.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIjEixEj) #22
  unreachable

_ZNK4core5arrayIjEixEj.exit:                      ; preds = %bb.s
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv191
  %i.en = load i32, ptr %i.em, align 4, !tbaa !67 ; 2 uses
  %i.eo = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.ep = load ptr, ptr %i.at, align 8, !tbaa !54 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = sdiv exact i64 %i.es, 40                ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %.not.i = icmp ult i32 %i.en, %i.eu
  br i1 %.not.i, label %bb.u, label %.loopexit.loopexit186

bb.u:                                             ; preds = %_ZNK4core5arrayIjEixEj.exit
  %i.ev = zext i32 %i.en to i64                   ; 2 uses
  %i.ew = icmp ugt i64 %i.et, %i.ev
  br i1 %i.ew, label %_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayIN3gui10SGUISpriteEEixEj) #22
  unreachable

_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i:   ; preds = %bb.u
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.ep, i64 %i.ev ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !76
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !58 ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 2 uses
  %i.fe = lshr exact i64 %i.fd, 3
  %i.ff = trunc i64 %i.fe to i32                  ; 4 uses
  %.not23.i = icmp eq i32 %i.ff, 0
  br i1 %.not23.i, label %.loopexit.loopexit186, label %bb.w

bb.w:                                             ; preds = %_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !75 ; 2 uses
  %.not21.i = icmp eq i32 %i.fh, 0
  br i1 %.not21.i, label %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = udiv i32 %i.as, %i.fh                   ; 3 uses
  br i1 %7, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fj = urem i32 %i.fi, %i.ff
  br label %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit

bb.z:                                             ; preds = %bb.x
  %.not22.i = icmp ult i32 %i.fi, %i.ff
  %i.fk = add i32 %i.ff, -1
  %i.fl = select i1 %.not22.i, i32 %i.fi, i32 %i.fk
  br label %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit

_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit:      ; preds = %bb.y, %bb.z, %bb.w
  %.0160.ph = phi i32 [ %i.fj, %bb.y ], [ %i.fl, %bb.z ], [ 0, %bb.w ]
  %i.fm = zext i32 %.0160.ph to i64               ; 2 uses
  %i.fn = ashr exact i64 %i.fd, 3
  %i.fo = icmp ugt i64 %i.fn, %i.fm
  br i1 %i.fo, label %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit: ; preds = %_ZN4core5arrayIN3gui10SGUISpriteEEixEj.exit
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fm ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !78 ; 2 uses
  %i.fr = load ptr, ptr %i.av, align 8, !tbaa !97
  %i.fs = load ptr, ptr %9, align 8, !tbaa !100   ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = sdiv exact i64 %i.fv, 72                ; 2 uses
  %i.fx = trunc i64 %i.fw to i32
  %.not64 = icmp ult i32 %i.fq, %i.fx
  br i1 %.not64, label %bb.ab, label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit

bb.ab:                                            ; preds = %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit
  %i.fy = zext i32 %i.fq to i64                   ; 2 uses
  %i.fz = icmp ugt i64 %i.fw, %i.fy
  br i1 %i.fz, label %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit84, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit84: ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw [72 x i8], ptr %i.fs, i64 %i.fy ; 17 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !79 ; 2 uses
  %i.gd = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.ge = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 2 uses
  %i.gi = lshr exact i64 %i.gh, 4
  %i.gj = trunc i64 %i.gi to i32
  %.not65 = icmp ult i32 %i.gc, %i.gj
  br i1 %.not65, label %bb.ad, label %.loopexit.loopexit186

bb.ad:                                            ; preds = %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit84
  %i.gk = zext i32 %i.gc to i64                   ; 2 uses
  %i.gl = ashr exact i64 %i.gh, 4
  %i.gm = icmp ugt i64 %i.gl, %i.gk
  br i1 %i.gm, label %_ZN4core5arrayINS_4rectIiEEEixEj.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayINS_4rectIiEEEixEj) #22
  unreachable

_ZN4core5arrayINS_4rectIiEEEixEj.exit:            ; preds = %bb.ad
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.ge, i64 %i.gk ; 8 uses
  %i.go = load ptr, ptr %i.i, align 8, !tbaa !88
  %i.gp = load ptr, ptr %2, align 8, !tbaa !89    ; 3 uses
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = ashr exact i64 %i.gs, 3
  %i.gu = icmp ugt i64 %i.gt, %indvars.iv191      ; 2 uses
  br i1 %8, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %_ZN4core5arrayINS_4rectIiEEEixEj.exit
  br i1 %i.gu, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayINS_8vector2dIiEEEixEj) #22
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv191
  %i.gw = load i64, ptr %i.gv, align 4, !tbaa !67 ; 2 uses
  %.sroa.0143.0.extract.trunc = trunc i64 %i.gw to i32
  %.sroa.8.0.extract.shift = lshr i64 %i.gw, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !82
  %i.gz = load i32, ptr %i.gn, align 4, !tbaa !83
  %i.ha = sub nsw i32 %i.gy, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !84
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !85
  %i.hf = sub nsw i32 %i.hc, %i.he
  %.neg = sdiv i32 %i.ha, -2
  %.neg167 = sdiv i32 %i.hf, -2
  %i.hg = add i32 %.neg, %.sroa.0143.0.extract.trunc ; 2 uses
  %i.hh = add i32 %.neg167, %.sroa.8.0.extract.trunc ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !88 ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !99
  %.not.i.i = icmp eq ptr %i.hj, %i.hl
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.8.0.insert.ext = zext i32 %i.hh to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.0143.0.insert.ext = zext i32 %i.hg to i64
  %.sroa.0143.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %.sroa.0143.0.insert.ext
  store i64 %.sroa.0143.0.insert.insert, ptr %i.hj, align 4, !tbaa !67
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.hm, ptr %i.hi, align 8, !tbaa !88
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.hn = load ptr, ptr %i.ga, align 8, !tbaa !89 ; 5 uses
  %i.ho = ptrtoint ptr %i.hj to i64
  %i.hp = ptrtoint ptr %i.hn to i64               ; 2 uses
  %i.hq = sub i64 %i.ho, %i.hp                    ; 3 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775800
  br i1 %i.hr, label %.invoke250, label %_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke250:                                       ; preds = %bb.an, %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.cont251 unwind label %.loopexit.split-lp171

.cont251:                                         ; preds = %.invoke250
  unreachable

_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aj
  %i.hs = ashr exact i64 %i.hq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.hs, i64 1)
end_hunk_0
begin_hunk_1_@_ZN3gui14CGUISpriteBank17draw2DSpriteBatchERKN4core5arrayIjEERKNS2_INS1_8vector2dIiEEEEPKNS1_4rectIiEERKN5video6SColorEjjbb:bb.a
  store ptr %i.jb, ptr %i.ij, align 8, !tbaa !52
  store ptr %i.jf, ptr %i.ik, align 8, !tbaa !66
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %i.iz
  store ptr %i.jj, ptr %i.im, align 8, !tbaa !53
  br label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit.sink.split

.loopexit169:                                     ; preds = %_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i105, %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i121
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit170:                                     ; preds = %_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp171:                            ; preds = %.invoke250
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ap:                                            ; preds = %_ZN4core5arrayINS_4rectIiEEEixEj.exit
  br i1 %i.gu, label %_ZNK4core5arrayINS_8vector2dIiEEEixEj.exit103, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayINS_8vector2dIiEEEixEj) #22
  unreachable

_ZNK4core5arrayINS_8vector2dIiEEEixEj.exit103:    ; preds = %bb.ap
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv191 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !88 ; 6 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 3 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !99
  %.not.i.i104 = icmp eq ptr %i.jm, %i.jo
  br i1 %.not.i.i104, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4core5arrayINS_8vector2dIiEEEixEj.exit103
  %i.jp = load i64, ptr %i.jk, align 4, !tbaa !67
  store i64 %i.jp, ptr %i.jm, align 4, !tbaa !67
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store ptr %i.jq, ptr %i.jl, align 8, !tbaa !88
  br label %bb.au

bb.as:                                            ; preds = %_ZNK4core5arrayINS_8vector2dIiEEEixEj.exit103
  %i.jr = load ptr, ptr %i.ga, align 8, !tbaa !89 ; 5 uses
  %i.js = ptrtoint ptr %i.jm to i64
  %i.jt = ptrtoint ptr %i.jr to i64               ; 2 uses
  %i.ju = sub i64 %i.js, %i.jt                    ; 3 uses
  %i.jv = icmp eq i64 %i.ju, 9223372036854775800
  br i1 %i.jv, label %.invoke, label %_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i105

.invoke:                                          ; preds = %bb.aw, %bb.as
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i105: ; preds = %bb.as
  %i.jw = ashr exact i64 %i.ju, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.jw, i64 1)
  %i.jx = add nsw i64 %.sroa.speculated.i.i.i.i106, %i.jw ; 2 uses
  %i.jy = icmp ult i64 %i.jx, %i.jw
  %i.jz = call i64 @llvm.umin.i64(i64 %i.jx, i64 1152921504606846975)
  %i.ka = select i1 %i.jy, i64 1152921504606846975, i64 %i.jz ; 3 uses
  %.not.i.i.i.i107 = icmp ne i64 %i.ka, 0
  call void @llvm.assume(i1 %.not.i.i.i.i107)
  %i.kb = shl nuw nsw i64 %i.ka, 3
  %i.kc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kb) #24
          to label %.noexc118 unwind label %.loopexit169 ; 5 uses

.noexc118:                                        ; preds = %_ZNKSt6vectorIN4core8vector2dIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i105
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ju
  %i.ke = load i64, ptr %i.jk, align 4, !tbaa !67
  store i64 %i.ke, ptr %i.kd, align 4, !tbaa !67
  %.not10.i.i.i.i.i.i108 = icmp eq ptr %i.jr, %i.jm
  br i1 %.not10.i.i.i.i.i.i108, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i109

.lr.ph.i.i.i.i.i.i109:                            ; preds = %.noexc118, %.lr.ph.i.i.i.i.i.i109
  %.012.i.i.i.i.i.i110 = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i109 ], [ %i.kc, %.noexc118 ] ; 2 uses
  %.0911.i.i.i.i.i.i111 = phi ptr [ %i.kg, %.lr.ph.i.i.i.i.i.i109 ], [ %i.jr, %.noexc118 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.kf = load i64, ptr %.0911.i.i.i.i.i.i111, align 4, !tbaa !67, !alias.scope !156, !noalias !155
  store i64 %i.kf, ptr %.012.i.i.i.i.i.i110, align 4, !tbaa !67, !alias.scope !155, !noalias !156
  %i.kg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i111, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i110, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i112 = icmp eq ptr %i.kg, %i.jm
  br i1 %.not.i.i.i.i.i.i112, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i113, label %.lr.ph.i.i.i.i.i.i109, !llvm.loop !125

_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i113: ; preds = %.lr.ph.i.i.i.i.i.i109, %.noexc118
  %.0.lcssa.i.i.i.i.i.i114 = phi ptr [ %i.kc, %.noexc118 ], [ %i.kh, %.lr.ph.i.i.i.i.i.i109 ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i114, i64 8
  %.not.i23.i.i.i115 = icmp eq ptr %i.jr, null
  br i1 %.not.i23.i.i.i115, label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i116, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i113
  %i.kj = load ptr, ptr %i.jn, align 8, !tbaa !99
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = sub i64 %i.kk, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef %i.kl) #20
  br label %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i116

_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i116: ; preds = %bb.at, %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i113
  store ptr %i.kc, ptr %i.ga, align 8, !tbaa !89
  store ptr %i.ki, ptr %i.jl, align 8, !tbaa !88
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.ka
  store ptr %i.km, ptr %i.jn, align 8, !tbaa !99
  br label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN4core8vector2dIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i116, %bb.ar
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store i8 0, ptr %i.kn, align 8, !tbaa !96
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ga, i64 32 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ga, i64 40 ; 4 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !66 ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ga, i64 48 ; 3 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !53
  %.not.i.i120 = icmp eq ptr %i.kq, %i.ks
  br i1 %.not.i.i120, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.kq, ptr noundef nonnull align 4 dereferenceable(16) %i.gn, i64 16, i1 false), !tbaa.struct !68
  %i.kt = load ptr, ptr %i.kp, align 8, !tbaa !66
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store ptr %i.ku, ptr %i.kp, align 8, !tbaa !66
  br label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit.sink.split

bb.aw:                                            ; preds = %bb.au
  %i.kv = load ptr, ptr %i.ko, align 8, !tbaa !52 ; 5 uses
  %i.kw = ptrtoint ptr %i.kq to i64
  %i.kx = ptrtoint ptr %i.kv to i64               ; 2 uses
  %i.ky = sub i64 %i.kw, %i.kx                    ; 3 uses
  %i.kz = icmp eq i64 %i.ky, 9223372036854775792
  br i1 %i.kz, label %.invoke, label %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i121

_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i121: ; preds = %bb.aw
  %i.la = ashr exact i64 %i.ky, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i122 = call i64 @llvm.umax.i64(i64 %i.la, i64 1)
  %i.lb = add nsw i64 %.sroa.speculated.i.i.i.i122, %i.la ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.la
  %i.ld = call i64 @llvm.umin.i64(i64 %i.lb, i64 576460752303423487)
  %i.le = select i1 %i.lc, i64 576460752303423487, i64 %i.ld ; 3 uses
  %.not.i.i.i.i123 = icmp ne i64 %i.le, 0
  call void @llvm.assume(i1 %.not.i.i.i.i123)
  %i.lf = shl nuw nsw i64 %i.le, 4
  %i.lg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #24
          to label %.noexc134 unwind label %.loopexit169 ; 5 uses

.noexc134:                                        ; preds = %_ZNKSt6vectorIN4core4rectIiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i121
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.ky
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lh, ptr noundef nonnull align 4 dereferenceable(16) %i.gn, i64 16, i1 false), !tbaa.struct !68
  %.not10.i.i.i.i.i.i124 = icmp eq ptr %i.kv, %i.kq
  br i1 %.not10.i.i.i.i.i.i124, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i129, label %.lr.ph.i.i.i.i.i.i125

.lr.ph.i.i.i.i.i.i125:                            ; preds = %.noexc134, %.lr.ph.i.i.i.i.i.i125
  %.012.i.i.i.i.i.i126 = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i.i125 ], [ %i.lg, %.noexc134 ] ; 2 uses
  %.0911.i.i.i.i.i.i127 = phi ptr [ %i.li, %.lr.ph.i.i.i.i.i.i125 ], [ %i.kv, %.noexc134 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i126, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i127, i64 16, i1 false), !tbaa.struct !68, !alias.scope !157
  %i.li = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i127, i64 16 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i126, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i128 = icmp eq ptr %i.li, %i.kq
  br i1 %.not.i.i.i.i.i.i128, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i129, label %.lr.ph.i.i.i.i.i.i125, !llvm.loop !2

_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i129: ; preds = %.lr.ph.i.i.i.i.i.i125, %.noexc134
  %.0.lcssa.i.i.i.i.i.i130 = phi ptr [ %i.lg, %.noexc134 ], [ %i.lj, %.lr.ph.i.i.i.i.i.i125 ]
  %i.lk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i130, i64 16
  %.not.i23.i.i.i131 = icmp eq ptr %i.kv, null
  br i1 %.not.i23.i.i.i131, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i132, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i129
  %i.ll = load ptr, ptr %i.kr, align 8, !tbaa !53
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = sub i64 %i.lm, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.ln) #20
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i132

_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i132: ; preds = %bb.ax, %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i129
  store ptr %i.lg, ptr %i.ko, align 8, !tbaa !52
  store ptr %i.lk, ptr %i.kp, align 8, !tbaa !66
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %i.lg, i64 %i.le
  store ptr %i.lo, ptr %i.kr, align 8, !tbaa !53
  br label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit.sink.split

_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit.sink.split: ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i132, %bb.av, %bb.am, %_ZNSt6vectorIN4core4rectIiEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  store i8 0, ptr %i.lp, align 8, !tbaa !33
  br label %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit

_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit:  ; preds = %_ZNK3gui14CGUISpriteBank10getFrameNrERjjjb.exit.sink.split, %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.preheader, label %bb.s, !llvm.loop !139

.loopexit264:                                     ; preds = %bb.ay, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139
  %lpad.loopexit266 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp265:                            ; preds = %20, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139.peel
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.lr.ph183.peel.newph:                             ; preds = %.critedge.peel, %.critedge
  %i.lq = phi ptr [ %i.mu, %.critedge ], [ %33, %.critedge.peel ] ; 3 uses
  %i.lr = phi ptr [ %i.mv, %.critedge ], [ %34, %.critedge.peel ] ; 2 uses
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %.critedge ], [ 1, %.critedge.peel ] ; 5 uses
  %i.ls = getelementptr inbounds nuw [72 x i8], ptr %i.lq, i64 %indvars.iv194 ; 4 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !101
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !101
  %i.lw = icmp eq ptr %i.lt, %i.lv
  br i1 %i.lw, label %.critedge, label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137

40:                                               ; preds = %.lr.ph183
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137: ; preds = %.lr.ph183.peel.newph
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !102
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !102
  %i.mb = icmp eq ptr %i.ly, %i.ma
  br i1 %i.mb, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137
  %i.mc = load ptr, ptr %i.ee, align 8, !tbaa !47 ; 2 uses
  %i.md = load ptr, ptr %0, align 8, !tbaa !17
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mf = load ptr, ptr %i.me, align 8
  %i.mg = trunc nuw i64 %indvars.iv194 to i32
  %i.mh = invoke noundef ptr %i.mf(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %i.mg)
          to label %bb.az unwind label %.loopexit264

bb.az:                                            ; preds = %bb.ay
  %i.mi = load ptr, ptr %i.dw, align 8, !tbaa !97
  %i.mj = load ptr, ptr %9, align 8, !tbaa !100   ; 2 uses
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = sdiv exact i64 %i.mm, 72
  %i.mo = icmp ugt i64 %i.mn, %indvars.iv194
  br i1 %i.mo, label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139, label %.loopexit268

.loopexit268:                                     ; preds = %bb.az, %26
  call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj) #22
  unreachable

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139: ; preds = %bb.az
  %i.mp = getelementptr inbounds nuw [72 x i8], ptr %i.mj, i64 %indvars.iv194 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %.sroa.0.0.copyload = load i32, ptr %4, align 4, !tbaa !67
  %i.mr = load ptr, ptr %i.mc, align 8, !tbaa !17
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 408
  %i.mt = load ptr, ptr %i.ms, align 8
  invoke void %i.mt(ptr noundef nonnull align 8 dereferenceable(8) %i.mc, ptr noundef %i.mh, ptr noundef nonnull align 8 dereferenceable(25) %i.mp, ptr noundef nonnull align 8 dereferenceable(25) %i.mq, ptr noundef %3, i32 %.sroa.0.0.copyload, i1 noundef zeroext true)
          to label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge unwind label %.loopexit264

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge: ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139
  %.pre = load ptr, ptr %i.dw, align 8, !tbaa !97
  %.pre197 = load ptr, ptr %9, align 8, !tbaa !100
  br label %.critedge

.critedge:                                        ; preds = %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge, %.lr.ph183.peel.newph, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137
  %i.mu = phi ptr [ %.pre197, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge ], [ %i.lq, %.lr.ph183.peel.newph ], [ %i.lq, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137 ] ; 3 uses
  %i.mv = phi ptr [ %.pre, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit139..critedge_crit_edge ], [ %i.lr, %.lr.ph183.peel.newph ], [ %i.lr, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEixEj.exit137 ] ; 3 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = ptrtoint ptr %i.mu to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = sdiv exact i64 %i.my, 72
  %i.na = and i64 %i.mz, 4294967295
  %i.nb = icmp samesign ult i64 %indvars.iv.next195, %i.na
  br i1 %i.nb, label %.lr.ph183.peel.newph, label %.loopexit, !llvm.loop !140

.loopexit.loopexit186:                            ; preds = %_ZN4core5arrayIN3gui15SGUISpriteFrameEEixEj.exit84, %_ZNK4core5arrayIN3gui10SGUISpriteEEixEj.exit.i, %_ZNK4core5arrayIjEixEj.exit
  %.pre198 = load ptr, ptr %9, align 8, !tbaa !100
  %.pre199 = load ptr, ptr %i.av, align 8, !tbaa !97
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.peel, %.critedge, %.loopexit.loopexit186, %.critedge.preheader
  %41 = phi ptr [ %.pre199, %.loopexit.loopexit186 ], [ %i.dx, %.critedge.preheader ], [ %34, %.critedge.peel ], [ %i.mv, %.critedge ] ; 2 uses
  %42 = phi ptr [ %.pre198, %.loopexit.loopexit186 ], [ %i.dy, %.critedge.preheader ], [ %33, %.critedge.peel ], [ %i.mu, %.critedge ] ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %42, %41
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.np, %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i.i ], [ %42, %.loopexit ] ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !53
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.nd to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.ni) #20
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i.i

_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ba, %.lr.ph.i.i.i.i
  %i.nj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.nj, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !99
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %i.nj to i64
  %i.no = sub i64 %i.nm, %i.nn
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.no) #20
  br label %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i.i: ; preds = %bb.bb, %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i140 = icmp eq ptr %i.np, %41
  br i1 %.not.i.i.i.i140, label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %9, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit
  %i.nq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %42, %.loopexit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.nq, null
  br i1 %.not.i.i1.i.i, label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !98
  %i.nt = ptrtoint ptr %i.ns to i64
  %i.nu = ptrtoint ptr %i.nq to i64
  %i.nv = sub i64 %i.nt, %i.nu
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.nv) #20
  br label %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEED2Ev.exit

_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEED2Ev.exit
  ret void

bb.be:                                            ; preds = %.loopexit264, %.loopexit.split-lp265, %.loopexit170, %.loopexit.split-lp171, %.loopexit169, %.loopexit.split-lp, %bb.d, %bb.r
  %.pn74.pn = phi { ptr, i32 } [ %i.dv, %bb.r ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp171 ], [ %i.ay, %bb.d ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit169 ], [ %lpad.loopexit172, %.loopexit170 ], [ %lpad.loopexit266, %.loopexit264 ], [ %lpad.loopexit.split-lp267, %.loopexit.split-lp265 ]
  call void @_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gui14CGUISpriteBank10SDrawBatchD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit

_ZN4core5arrayINS_4rectIiEEED2Ev.exit:            ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i1, label %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #20
  br label %_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit

_ZN4core5arrayINS_8vector2dIiEEED2Ev.exit:        ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4core5arrayINS_4rectIiEEE10reallocateEjb(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !52     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = zext i32 %1 to i64                       ; 6 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE13shrink_to_fitEv.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66   ; 4 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.e
  %i.n = ashr exact i64 %i.m, 4
  %i.o = icmp ugt i64 %i.n, %i.h
  br i1 %i.o, label %bb.d, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.h ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.p, ptr %i.j, align 8, !tbaa !66
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d, %bb.c
  %i.q = phi ptr [ %i.p, %_ZSt8_DestroyIPN4core4rectIiEES2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  %i.r = icmp eq ptr %i.b, %i.q
  br i1 %i.r, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE13shrink_to_fitEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit
  %i.s = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN4core4rectIiEESaIS3_EELb1EE8_S_do_itERS5_(ptr noundef nonnull align 8 dereferenceable(24) %0) #21 ; 0 uses
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE13shrink_to_fitEv.exit

bb.f:                                             ; preds = %bb.a
  %i.t = icmp samesign ult i64 %i.g, %i.h
  br i1 %i.t, label %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE13shrink_to_fitEv.exit

_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.e
  %i.y = shl nuw nsw i64 %i.h, 4
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #24 ; 4 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !52    ; 5 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !66  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %i.z, %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.aa, %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !68, !alias.scope !162
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ah) #20
  br label %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN4core4rectIiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.z, ptr %0, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store ptr %i.ai, ptr %i.u, align 8, !tbaa !66
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.h
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !53
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EE13shrink_to_fitEv.exit

_ZNSt6vectorIN4core4rectIiEESaIS2_EE13shrink_to_fitEv.exit: ; preds = %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.f, %bb.e, %_ZNSt6vectorIN4core4rectIiEESaIS2_EE6resizeEm.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i

_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i1.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i

_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #20
  br label %_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EED2Ev.exit

_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit.i, %bb.d
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gui14IGUISpriteBankD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gui14IGUISpriteBankD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N3gui14IGUISpriteBankD1Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N3gui14IGUISpriteBankD0Ev(ptr noundef %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN3gui10SGUISpriteEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gui10SGUISpriteEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #20
  br label %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i

_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i:     ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gui10SGUISpriteEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gui10SGUISpriteEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i

_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.k = load ptr, ptr %.05.i.i, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #20
  br label %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i

_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i: ; preds = %bb.c, %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.c
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN3gui10SGUISpriteESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc28, %.lr.ph.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ab, %.noexc28 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aa, %.noexc28 ] ; 2 uses
  %i.af = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i, align 4, !tbaa !67
  store i64 %i.af, ptr %.09.i.i.i.i.i.i.i, align 4, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc28
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.noexc28 ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !73, !range !105, !noundef !106
  store i8 %i.ak, ptr %i.ai, align 8, !tbaa !73
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !75
  store i32 %i.an, ptr %i.al, align 8, !tbaa !75
  %i.ao = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN3gui10SGUISpriteEPS1_ET0_T_S6_S5_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit unwind label %bb.f

_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %.loopexit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.aq = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN3gui10SGUISpriteEPS1_ET0_T_S6_S5_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ap)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit31 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit31: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gui10SGUISpriteEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit31, %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ax, %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit31 ] ; 3 uses
  %i.ar = load ptr, ptr %.05.i.i, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !59
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #20
  br label %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i.i

_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i.i:   ; preds = %bb.d, %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gui10SGUISpriteEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3gui10SGUISpriteEEvT_S3_.exit:    ; preds = %_ZSt8_DestroyIN3gui10SGUISpriteEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseIN3gui10SGUISpriteESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN3gui10SGUISpriteEEvT_S3_.exit
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #20
  br label %_ZNSt12_Vector_baseIN3gui10SGUISpriteESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN3gui10SGUISpriteESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN3gui10SGUISpriteEEvT_S3_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !54
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !61
  ret void

bb.f:                                             ; preds = %.loopexit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.be = tail call ptr @__cxa_begin_catch(ptr %i.bd) #21 ; 0 uses
  %i.bf = load ptr, ptr %i.q, align 8, !tbaa !58  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !59
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bj) #20
  br label %bb.j

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZNSt15__new_allocatorIN3gui15SGUISpriteFrameEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %.0.ph = phi ptr [ %i.p, %.noexc.i.i.i.i ], [ %i.p, %_ZNSt15__new_allocatorIN3gui15SGUISpriteFrameEE8allocateEmPKv.exit.i.i.i.i.i.i ], [ %i.ap, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gui10SGUISpriteES2_SaIS1_EET0_T_S5_S4_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.bl = tail call ptr @__cxa_begin_catch(ptr %i.bk) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPN3gui10SGUISpriteEEvT_S3_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.ph)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #20
  invoke void @__cxa_rethrow() #23
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  tail call void @__clang_call_terminate(ptr %i.bo) #22
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKN3gui10SGUISpriteEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.020 = phi ptr [ %i.y, %.loopexit ], [ %2, %bb.a ] ; 8 uses
  %.01219 = phi ptr [ %i.x, %.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01219, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = load ptr, ptr %.01219, align 8, !tbaa !58 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN3gui15SGUISpriteFrameEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !103

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN3gui15SGUISpriteFrameEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24
          to label %.noexc13 unwind label %.loopexit14

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN3gui15SGUISpriteFrameEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIN3gui15SGUISpriteFrameEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.020, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !59
  %i.m = load ptr, ptr %.01219, align 8, !tbaa !104 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc13, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %.noexc13 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.m, %.noexc13 ] ; 2 uses
  %i.o = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, align 4, !tbaa !67
  store i64 %i.o, ptr %.09.i.i.i.i.i.i.i.i, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc13
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc13 ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %.020, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.01219, i64 24
  %i.t = load i8, ptr %i.s, align 8, !tbaa !73, !range !105, !noundef !106
  store i8 %i.t, ptr %i.r, align 8, !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %.020, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.01219, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !75
  store i32 %i.w, ptr %i.u, align 8, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %.01219, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.020, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !163

.loopexit14:                                      ; preds = %_ZNSt15__new_allocatorIN3gui15SGUISpriteFrameEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit14
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit14 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPN3gui10SGUISpriteEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.020)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.h unwind label %bb.e

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %.loopexit ]
  ret ptr %.0.lcssa

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ab

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #22
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 128102389400760775
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = load ptr, ptr %0, align 8, !tbaa !100    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = tail call noundef ptr @_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %i.d, ptr noundef %i.k) ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !100    ; 3 uses
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !97   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i ], [ %i.o, %bb.d ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #20
  br label %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i

_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i:    ; preds = %bb.e, %.lr.ph.i.i
  %i.x = load ptr, ptr %.05.i.i, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i.i1.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i1.i.i.i.i, label %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !99
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #20
  br label %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i

_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i: ; preds = %bb.f, %_ZN4core5arrayINS_4rectIiEEED2Ev.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.p
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3gui14CGUISpriteBank10SDrawBatchEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exit

_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exitthread-pre-split, %bb.d
  %i.ae = phi ptr [ %.pr, %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exitthread-pre-split ], [ %i.o, %bb.d ] ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exit
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #20
  br label %_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_.exit, %bb.g
  store ptr %i.n, ptr %0, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store ptr %i.aj, ptr %i.j, align 8, !tbaa !97
  %i.ak = getelementptr inbounds nuw [72 x i8], ptr %i.n, i64 %1
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !98
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 128102389400760775
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN3gui14CGUISpriteBank10SDrawBatchEE8allocateEmPKv.exit.i, !prof !103

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 256204778801521550
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt15__new_allocatorIN3gui14CGUISpriteBank10SDrawBatchEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 72
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24
  br label %_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN3gui14CGUISpriteBank10SDrawBatchEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN3gui14CGUISpriteBank10SDrawBatchEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 5 uses
  %.not14.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not14.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN3gui14CGUISpriteBank10SDrawBatchEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN3gui14CGUISpriteBank10SDrawBatchEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN3gui14CGUISpriteBank10SDrawBatchEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE11_M_allocateEm.exit ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN3gui14CGUISpriteBank10SDrawBatchEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN3gui14CGUISpriteBank10SDrawBatchC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(68) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(68) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN3gui14CGUISpriteBank10SDrawBatchEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN3gui14CGUISpriteBank10SDrawBatchEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN3gui14CGUISpriteBank10SDrawBatchEPS2_S2_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #21 ; 0 uses
  invoke void @_ZSt8_DestroyIPN3gui14CGUISpriteBank10SDrawBatchEEvT_S4_(ptr noundef %i.e, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZNSt19__shrink_to_fit_auxISt6vectorIN4core4rectIiEESaIS3_EELb1EE8_S_do_itERS5_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #20
  br label %_ZNSt6vectorIN4core4rectIiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core4rectIiEESaIS2_EED2Ev.exit:    ; preds = %bb.c, %_ZNSt6vectorIN4core4rectIiEESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit, %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIN4core4rectIiEESaIS2_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEvEET_SC_RKS3_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4core4rectIiEESaIS2_EED2Ev.exit.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !60}
!1 = distinct !{null}
!2 = distinct !{!2, !60}
!3 = distinct !{!3, !60}
!4 = distinct !{!4, !60}
!5 = distinct !{!5, !60}
!6 = distinct !{!6, !60}
!7 = distinct !{!7, !60}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !12, i64 0}
!19 = !{!"p1 _ZTSN3gui10SGUISpriteE", !18, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN3gui10SGUISpriteESaIS1_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!"_ZTSNSt12_Vector_baseIN3gui10SGUISpriteESaIS1_EE12_Vector_implE", !20, i64 0}
!22 = !{!"_ZTSSt12_Vector_baseIN3gui10SGUISpriteESaIS1_EE", !21, i64 0}
!23 = !{!"_ZTSSt6vectorIN3gui10SGUISpriteESaIS1_EE", !22, i64 0}
!24 = !{!"bool", !12, i64 0}
!25 = !{!"_ZTSN4core5arrayIN3gui10SGUISpriteEEE", !23, i64 0, !24, i64 24}
!26 = !{!25, !24, i64 24}
!27 = !{!"p1 _ZTSN4core4rectIiEE", !18, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!"_ZTSNSt12_Vector_baseIN4core4rectIiEESaIS2_EE12_Vector_implE", !28, i64 0}
!30 = !{!"_ZTSSt12_Vector_baseIN4core4rectIiEESaIS2_EE", !29, i64 0}
!31 = !{!"_ZTSSt6vectorIN4core4rectIiEESaIS2_EE", !30, i64 0}
!32 = !{!"_ZTSN4core5arrayINS_4rectIiEEEE", !31, i64 0, !24, i64 24}
!33 = !{!32, !24, i64 24}
!34 = !{!"any p2 pointer", !18, i64 0}
!35 = !{!"p2 _ZTSN5video8ITextureE", !34, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!"_ZTSNSt12_Vector_baseIPN5video8ITextureESaIS2_EE12_Vector_implE", !36, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIPN5video8ITextureESaIS2_EE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIPN5video8ITextureESaIS2_EE", !38, i64 0}
!40 = !{!"_ZTSN4core5arrayIPN5video8ITextureEEE", !39, i64 0, !24, i64 24}
!41 = !{!40, !24, i64 24}
!42 = !{!"_ZTSN3gui14IGUISpriteBankE"}
!43 = !{!"p1 _ZTSN3gui15IGUIEnvironmentE", !18, i64 0}
!44 = !{!"p1 _ZTSN5video12IVideoDriverE", !18, i64 0}
!45 = !{!"_ZTSN3gui14CGUISpriteBankE", !42, i64 0, !25, i64 8, !32, i64 40, !40, i64 72, !43, i64 104, !44, i64 112}
!46 = !{!45, !43, i64 104}
!47 = !{!45, !44, i64 112}
!48 = !{!"_ZTS17IReferenceCounted", !13, i64 8}
!49 = !{!48, !13, i64 8}
!50 = !{!36, !35, i64 0}
!51 = !{!36, !35, i64 16}
!52 = !{!28, !27, i64 0}
!53 = !{!28, !27, i64 16}
!54 = !{!20, !19, i64 0}
!55 = !{!20, !19, i64 8}
!56 = !{!"p1 _ZTSN3gui15SGUISpriteFrameE", !18, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN3gui15SGUISpriteFrameESaIS1_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 0}
!59 = !{!57, !56, i64 16}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!20, !19, i64 16}
!62 = !{ptr @_ZN3gui14CGUISpriteBankD1Ev}
!63 = !{!36, !35, i64 8}
!64 = !{!"p1 _ZTSN5video8ITextureE", !18, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!28, !27, i64 8}
!67 = !{!13, !13, i64 0}
!68 = !{i64 0, i64 4, !67, i64 4, i64 4, !67, i64 8, i64 4, !67, i64 12, i64 4, !67}
!69 = !{!"_ZTSNSt12_Vector_baseIN3gui15SGUISpriteFrameESaIS1_EE12_Vector_implE", !57, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIN3gui15SGUISpriteFrameESaIS1_EE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorIN3gui15SGUISpriteFrameESaIS1_EE", !70, i64 0}
!72 = !{!"_ZTSN4core5arrayIN3gui15SGUISpriteFrameEEE", !71, i64 0, !24, i64 24}
!73 = !{!72, !24, i64 24}
!74 = !{!"_ZTSN3gui10SGUISpriteE", !72, i64 0, !13, i64 32}
!75 = !{!74, !13, i64 32}
!76 = !{!57, !56, i64 8}
!77 = !{!"_ZTSN3gui15SGUISpriteFrameE", !13, i64 0, !13, i64 4}
!78 = !{!77, !13, i64 0}
!79 = !{!77, !13, i64 4}
!80 = !{!"_ZTSN4core8vector2dIiEE", !13, i64 0, !13, i64 4}
!81 = !{!"_ZTSN4core4rectIiEE", !80, i64 0, !80, i64 8}
!82 = !{!81, !13, i64 8}
!83 = !{!81, !13, i64 0}
!84 = !{!81, !13, i64 12}
!85 = !{!81, !13, i64 4}
!86 = !{!"p1 _ZTSN4core8vector2dIiEE", !18, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 8}
!89 = !{!87, !86, i64 0}
!90 = !{!"p1 _ZTSN3gui14CGUISpriteBank10SDrawBatchE", !18, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!"_ZTSNSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE12_Vector_implE", !87, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIN4core8vector2dIiEESaIS2_EE", !92, i64 0}
!94 = !{!"_ZTSSt6vectorIN4core8vector2dIiEESaIS2_EE", !93, i64 0}
!95 = !{!"_ZTSN4core5arrayINS_8vector2dIiEEEE", !94, i64 0, !24, i64 24}
!96 = !{!95, !24, i64 24}
!97 = !{!91, !90, i64 8}
!98 = !{!91, !90, i64 16}
!99 = !{!87, !86, i64 16}
!100 = !{!91, !90, i64 0}
!101 = !{!86, !86, i64 0}
!102 = !{!27, !27, i64 0}
!103 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!104 = !{!56, !56, i64 0}
!105 = !{i8 0, i8 2}
!106 = !{}
!107 = !{!"_ZTSN3gui14CGUISpriteBank10SDrawBatchE", !95, i64 0, !32, i64 32, !13, i64 64}
!108 = !{!107, !13, i64 64}
!109 = !{ptr @_ZN3gui14CGUISpriteBankD0Ev, ptr @_ZN3gui14CGUISpriteBankD1Ev}
!110 = !{ptr @_ZN3gui14CGUISpriteBankD0Ev}
!111 = distinct !{!111, !60}
!112 = distinct !{!112, !60}
!113 = distinct !{!113, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!114 = distinct !{!114, !113, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!115 = distinct !{!115, !113, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!116 = !{!"_ZTSN4core11dimension2dIjEE", !13, i64 0, !13, i64 4}
!117 = !{!116, !13, i64 0}
!118 = !{!116, !13, i64 4}
!119 = !{!115, !114}
!120 = !{!80, !13, i64 0}
!121 = !{!80, !13, i64 4}
!122 = distinct !{!122, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!123 = distinct !{!123, !122, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!124 = distinct !{!124, !122, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!125 = distinct !{!125, !60}
!126 = distinct !{!126, !60}
!127 = distinct !{!127, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!129 = distinct !{!129, !127, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!130 = distinct !{!130, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!131 = distinct !{!131, !130, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!132 = distinct !{!132, !130, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!133 = distinct !{!133, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!134 = distinct !{!134, !133, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!135 = distinct !{!135, !133, !"_ZSt19__relocate_object_aIN4core8vector2dIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!136 = distinct !{!136, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!137 = distinct !{!137, !136, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!138 = distinct !{!138, !136, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!139 = distinct !{!139, !60}
!140 = distinct !{!140, !60, !158}
!141 = !{!"p1 int", !18, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!143 = !{!142, !141, i64 8}
!144 = !{!142, !141, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE12_Vector_implE", !91, i64 0}
!146 = !{!"_ZTSSt12_Vector_baseIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE", !145, i64 0}
!147 = !{!"_ZTSSt6vectorIN3gui14CGUISpriteBank10SDrawBatchESaIS2_EE", !146, i64 0}
!148 = !{!"_ZTSN4core5arrayIN3gui14CGUISpriteBank10SDrawBatchEEE", !147, i64 0, !24, i64 24}
!149 = !{!148, !24, i64 24}
!150 = !{!123}
!151 = !{!124}
!152 = !{!128}
!153 = !{!129}
!154 = !{!132, !131}
!155 = !{!134}
!156 = !{!135}
!157 = !{!138, !137}
!158 = !{!"llvm.loop.peeled.count", i32 1}
!159 = distinct !{!159, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_"}
!160 = distinct !{!160, !159, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!161 = distinct !{!161, !159, !"_ZSt19__relocate_object_aIN4core4rectIiEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!162 = !{!161, !160}
!163 = distinct !{!163, !60}
end_hunk_3
