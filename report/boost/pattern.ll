Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pattern?download=true
inline.NumInlined: 2769
inline.NumDeleted: 1670
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5boost4urls7grammar9lut_chars9constructINS1_22implementation_defined13digit_chars_tEEES2_T_h:bb.a

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c
  br label %_ZN5boost4urls7grammar9lut_chars9constructEhb.exit14

_ZN5boost4urls7grammar9lut_chars9constructEhb.exit14: ; preds = %bb.c, %bb.b, %bb.f, %bb.d, %bb.e
  %.sroa.0.3 = phi i64 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ %i.g, %bb.c ]
  %.sroa.6.2 = phi i64 [ %i.g, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.sroa.10.1 = phi i64 [ 0, %bb.d ], [ 0, %bb.f ], [ %i.g, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.sroa.14.0 = phi i64 [ 0, %bb.d ], [ %i.g, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.h = add nuw i8 %1, 1
  call void @_ZN5boost4urls7grammar9lut_chars9constructINS1_22implementation_defined13digit_chars_tEEES2_T_h(ptr dead_on_unwind nonnull writable sret(%"class.boost::urls::grammar::lut_chars") align 8 %2, i8 noundef zeroext %i.h) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.i = load i64, ptr %2, align 8, !tbaa !12, !noalias !249
  %i.j = or i64 %i.i, %.sroa.0.3
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !12, !noalias !249
  %i.m = or i64 %i.l, %.sroa.6.2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12, !noalias !249
  %i.p = or i64 %i.o, %.sroa.10.1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12, !noalias !249
  %i.s = or i64 %i.r, %.sroa.14.0
  store i64 %i.j, ptr %0, align 8, !tbaa !12, !alias.scope !249
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.t, align 8, !tbaa !12, !alias.scope !249
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.u, align 8, !tbaa !12, !alias.scope !249
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.s, ptr %i.v, align 8, !tbaa !12, !alias.scope !249
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost4urls7grammar9lut_chars9constructEhb.exit14, %_ZN5boost4urls7grammar9lut_chars9constructEhb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4urls8url_base11resize_implEiimRNS1_4op_tE(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = icmp eq i32 %2, -1                       ; 6 uses
  br i1 %i.b, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = zext i32 %i.f to i64
  br label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i

_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i:  ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.i = icmp eq i32 %1, -1                       ; 4 uses
  br i1 %i.i, label %_ZNK5boost4urls6detail8url_impl3lenEii.exit, label %_ZNK5boost4urls6detail8url_impl3lenEii.exit.thread

_ZNK5boost4urls6detail8url_impl3lenEii.exit:      ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i
  %i.j = or i64 %i.h, %3
  %or.cond = icmp eq i64 %i.j, 0
  br i1 %or.cond, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit, label %bb.c

_ZNK5boost4urls6detail8url_impl3lenEii.exit.thread: ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !39
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = sub nsw i64 %i.h, %i.o                   ; 2 uses
  %i.q = or i64 %i.p, %3
  %or.cond43 = icmp eq i64 %i.q, 0
  br i1 %or.cond43, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit, label %bb.c

_ZNK5boost4urls6detail8url_impl6offsetEi.exit:    ; preds = %_ZNK5boost4urls6detail8url_impl3lenEii.exit.thread, %_ZNK5boost4urls6detail8url_impl3lenEii.exit
  %i.r = phi i64 [ 0, %_ZNK5boost4urls6detail8url_impl3lenEii.exit ], [ %i.o, %_ZNK5boost4urls6detail8url_impl3lenEii.exit.thread ]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load ptr, ptr %.in, align 8, !tbaa !37
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  br label %bb.z

bb.c:                                             ; preds = %_ZNK5boost4urls6detail8url_impl3lenEii.exit.thread, %_ZNK5boost4urls6detail8url_impl3lenEii.exit
  %i.u = phi i64 [ %i.p, %_ZNK5boost4urls6detail8url_impl3lenEii.exit.thread ], [ %i.h, %_ZNK5boost4urls6detail8url_impl3lenEii.exit ] ; 2 uses
  %.not = icmp ugt i64 %3, %i.u
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = sext i32 %2 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !39
  %i.z = zext i32 %i.y to i64
  br label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i.i

_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.e ], [ 0, %bb.d ]
  br i1 %i.i, label %_ZNK5boost4urls6detail8url_impl3lenEii.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = sext i32 %1 to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !39
  %i.af = zext i32 %i.ae to i64
  br label %_ZNK5boost4urls6detail8url_impl3lenEii.exit.i

_ZNK5boost4urls6detail8url_impl3lenEii.exit.i:    ; preds = %bb.f, %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i.i
  %i.ag = phi i64 [ %i.af, %bb.f ], [ 0, %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i.i ]
  %i.ah = add i64 %3, %i.ag
  %i.ai = sub i64 %i.aa, %i.ah                    ; 3 uses
  br i1 %i.b, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i32, label %bb.g

bb.g:                                             ; preds = %_ZNK5boost4urls6detail8url_impl3lenEii.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = sext i32 %2 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !39
  %i.an = zext i32 %i.am to i64
  br label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i32

_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i32: ; preds = %bb.g, %_ZNK5boost4urls6detail8url_impl3lenEii.exit.i
  %i.ao = phi i64 [ %i.an, %bb.g ], [ 0, %_ZNK5boost4urls6detail8url_impl3lenEii.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao ; 5 uses
  %i.as = sub i64 0, %i.ai                        ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !39
  %i.ax = zext i32 %i.aw to i64
  %i.ay = sub nsw i64 %i.ax, %i.ao
  %i.az = add nsw i64 %i.ay, 1                    ; 3 uses
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i32
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !258 ; 5 uses
  %.not12.i.i = icmp eq ptr %i.bb, null
  br i1 %.not12.i.i, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !259 ; 4 uses
  %.not13.i.i = icmp eq ptr %i.bd, null
  %.sroa.0.0.copyload.i.i14.i.i = load ptr, ptr %i.bb, align 8, !tbaa !16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i15.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.2.0.copyload.i.i16.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i15.i.i, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.az ; 2 uses
  %.not.i.i.i17.i.i = icmp ugt ptr %i.be, %.sroa.0.0.copyload.i.i14.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i14.i.i, i64 %.sroa.2.0.copyload.i.i16.i.i
  %.not10.i.i.i18.i.i = icmp ugt ptr %i.bf, %i.ar
  %.0.i.i.i19.i.i = select i1 %.not.i.i.i17.i.i, i1 %.not10.i.i.i18.i.i, i1 false ; 2 uses
  br i1 %.not13.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.0.i.i.i19.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i14.i.i, i64 %i.as
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !12
  %.not.i.i.i.i.i.i = icmp ugt ptr %i.be, %.sroa.0.0.copyload.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i
  %.not10.i.i.i.i.i.i = icmp ugt ptr %i.bh, %i.ar
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not10.i.i.i.i.i.i, i1 false
  br i1 %.0.i.i.i.i.i.i, label %.sink.split.i.sink.split.i, label %.sink.split.i.i

bb.m:                                             ; preds = %bb.i
  br i1 %.0.i.i.i19.i.i, label %.sink.split.i.sink.split.i, label %.sink.split.i.i

.sink.split.i.sink.split.i:                       ; preds = %bb.m, %bb.l
  %.sroa.0.0.copyload.i.i14.i.sink.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.l ], [ %.sroa.0.0.copyload.i.i14.i.i, %bb.m ]
  %.sink31.i = phi ptr [ %i.bd, %bb.l ], [ %i.bb, %bb.m ]
  %i.bi = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i14.i.sink.i, i64 %i.as
  store ptr %i.bi, ptr %.sink31.i, align 8, !tbaa !16
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.sink.split.i.sink.split.i, %bb.m, %bb.l, %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.at, ptr align 1 %i.ar, i64 %i.az, i1 false)
  br label %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit.i

_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit.i:  ; preds = %.sink.split.i.i, %_ZNK5boost4urls6detail8url_impl6offsetEi.exit.i32
  br i1 %i.b, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit17.i, label %bb.n

bb.n:                                             ; preds = %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit.i
  %i.bj = sext i32 %2 to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !39
  br label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit17.i

_ZNK5boost4urls6detail8url_impl6offsetEi.exit17.i: ; preds = %bb.n, %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit.i
  %5 = phi i32 [ %i.bl, %bb.n ], [ 0, %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit.i ]
  %.06.i.i = add nsw i32 %1, 1
  %i.bm = icmp slt i32 %.06.i.i, %2
  br i1 %i.bm, label %.lr.ph.i.i, label %_ZN5boost4urls6detail8url_impl8collapseEiim.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit17.i
  %6 = trunc i64 %i.ai to i32
  %7 = sub i32 %5, %6                             ; 2 uses
  %i.bn = sext i32 %1 to i64
  %i.bo = add nsw i64 %i.bn, 1                    ; 3 uses
  %i.bp = add i32 %2, -2
  %i.bq = sub i32 %i.bp, %1                       ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bq, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.bs, 8589934584              ; 3 uses
  %i.bt = add nsw i64 %i.bo, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bu = getelementptr [4 x i8], ptr %i.au, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bv, align 4, !tbaa !39
  store <4 x i32> %broadcast.splat, ptr %i.bw, align 4, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZN5boost4urls6detail8url_impl8collapseEiim.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.bo, %.lr.ph.i.i ], [ %i.bt, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.i.i
  store i32 %7, ptr %i.by, align 4, !tbaa !39
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond.not.i.i = icmp eq i32 %2, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i, label %_ZN5boost4urls6detail8url_impl8collapseEiim.exit.i, label %scalar.ph, !llvm.loop !251

_ZN5boost4urls6detail8url_impl8collapseEiim.exit.i: ; preds = %scalar.ph, %middle.block, %_ZNK5boost4urls6detail8url_impl6offsetEi.exit17.i
  %.not6.i.i = icmp sgt i32 %2, 7
  br i1 %.not6.i.i, label %_ZN5boost4urls6detail8url_impl11adjust_leftEiim.exit.i, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %_ZN5boost4urls6detail8url_impl8collapseEiim.exit.i
  %i.bz = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ca = sext i32 %2 to i64                      ; 4 uses
  %i.cb = add i32 %2, 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = sub nsw i64 9, %i.cc                    ; 3 uses
  %min.iters.check62 = icmp ult i64 %i.cd, 12
  br i1 %min.iters.check62, label %scalar.ph61.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i18.i
  %i.ce = add i32 %2, 1
  %i.cf = zext i32 %i.ce to i64
  %i.cg = sub nsw i64 8, %i.cf                    ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = sub i32 -2, %2
  %i.cj = icmp ult i32 %i.ci, %i.ch
  %i.ck = icmp ugt i64 %i.cg, 4294967295
  %i.cl = or i1 %i.cj, %i.ck
  br i1 %i.cl, label %scalar.ph61.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %vector.scevcheck
  %n.vec64 = and i64 %i.cd, -8                    ; 3 uses
  %i.cm = add nsw i64 %n.vec64, %i.ca
  %broadcast.splatinsert65 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat66 = shufflevector <4 x i32> %broadcast.splatinsert65, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.au, i64 %i.ca
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph63
  %index68 = phi i64 [ 0, %vector.ph63 ], [ %index.next70, %vector.body67 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index68 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !39
  %wide.load69 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !39
  %i.co = sub <4 x i32> %wide.load, %broadcast.splat66
  %i.cp = sub <4 x i32> %wide.load69, %broadcast.splat66
  store <4 x i32> %i.co, ptr %gep, align 4, !tbaa !39
  store <4 x i32> %i.cp, ptr %i.cn, align 4, !tbaa !39
  %index.next70 = add nuw i64 %index68, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next70, %n.vec64
  br i1 %i.cq, label %middle.block71, label %vector.body67, !llvm.loop !252

middle.block71:                                   ; preds = %vector.body67
  %cmp.n72 = icmp eq i64 %i.cd, %n.vec64
  br i1 %cmp.n72, label %_ZN5boost4urls6detail8url_impl11adjust_leftEiim.exit.i, label %scalar.ph61.preheader

scalar.ph61.preheader:                            ; preds = %vector.scevcheck, %.lr.ph.i18.i, %middle.block71
  %indvars.iv.i19.i.ph = phi i64 [ %i.ca, %vector.scevcheck ], [ %i.ca, %.lr.ph.i18.i ], [ %i.cm, %middle.block71 ]
  br label %scalar.ph61

scalar.ph61:                                      ; preds = %scalar.ph61.preheader, %scalar.ph61
  %indvars.iv.i19.i = phi i64 [ %indvars.iv.next.i20.i, %scalar.ph61 ], [ %indvars.iv.i19.i.ph, %scalar.ph61.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.i19.i ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !39
  %i.ct = sub i32 %i.cs, %i.bz
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !39
  %indvars.iv.next.i20.i = add nsw i64 %indvars.iv.i19.i, 1 ; 2 uses
  %i.cu = and i64 %indvars.iv.next.i20.i, 4294967295
  %exitcond.not.i22.i = icmp eq i64 %i.cu, 8
  br i1 %exitcond.not.i22.i, label %_ZN5boost4urls6detail8url_impl11adjust_leftEiim.exit.i, label %scalar.ph61, !llvm.loop !253

_ZN5boost4urls6detail8url_impl11adjust_leftEiim.exit.i: ; preds = %scalar.ph61, %middle.block71, %_ZN5boost4urls6detail8url_impl8collapseEiim.exit.i
  %i.cv = load ptr, ptr %i.ap, align 8, !tbaa !37
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !38 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  %i.cy = select i1 %.not.i.i.i, ptr %i.a, ptr %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 36
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !39
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.db
  store i8 0, ptr %i.dc, align 1, !tbaa !17
  %i.dd = load ptr, ptr %i.ap, align 8, !tbaa !37
  br i1 %i.i, label %_ZN5boost4urls8url_base11shrink_implEiimRNS1_4op_tE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost4urls6detail8url_impl11adjust_leftEiim.exit.i
  %i.de = sext i32 %1 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !39
  %i.dh = zext i32 %i.dg to i64
  br label %_ZN5boost4urls8url_base11shrink_implEiimRNS1_4op_tE.exit

_ZN5boost4urls8url_base11shrink_implEiimRNS1_4op_tE.exit: ; preds = %_ZN5boost4urls6detail8url_impl11adjust_leftEiim.exit.i, %bb.o
  %i.di = phi i64 [ %i.dh, %bb.o ], [ 0, %_ZN5boost4urls6detail8url_impl11adjust_leftEiim.exit.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.di
  br label %bb.z

bb.p:                                             ; preds = %bb.c
  %i.dk = sub nuw i64 %3, %i.u                    ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.dm, null
  %i.dn = select i1 %.not.i.i33, ptr %i.a, ptr %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !39
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add i64 %i.dk, %i.dq
  %i.ds = load ptr, ptr %0, align 8, !tbaa !28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.b, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit34, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dw = sext i32 %2 to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !39
  %i.dz = zext i32 %i.dy to i64
  br label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit34

_ZNK5boost4urls6detail8url_impl6offsetEi.exit34:  ; preds = %bb.p, %bb.q
  %i.ea = phi i64 [ %i.dz, %bb.q ], [ 0, %bb.p ]  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !37
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dk
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !39
  %i.ei = zext i32 %i.eh to i64
  %i.ej = sub nsw i64 %i.ei, %i.ea
  %i.ek = add nsw i64 %i.ej, 1                    ; 3 uses
  %.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i, label %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit34
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !258 ; 5 uses
  %.not12.i = icmp eq ptr %i.em, null
  br i1 %.not12.i, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !259 ; 4 uses
  %.not13.i = icmp eq ptr %i.eo, null
  %.sroa.0.0.copyload.i.i14.i = load ptr, ptr %i.em, align 8, !tbaa !16 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i15.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.sroa.2.0.copyload.i.i16.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i15.i, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ek ; 2 uses
  %.not.i.i.i17.i = icmp ugt ptr %i.ep, %.sroa.0.0.copyload.i.i14.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i14.i, i64 %.sroa.2.0.copyload.i.i16.i
  %.not10.i.i.i18.i = icmp ugt ptr %i.eq, %i.ed
  %.0.i.i.i19.i = select i1 %.not.i.i.i17.i, i1 %.not10.i.i.i18.i, i1 false ; 2 uses
  br i1 %.not13.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %.0.i.i.i19.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.er = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i14.i, i64 %i.dk
  store ptr %i.er, ptr %i.em, align 8, !tbaa !16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !12
  %.not.i.i.i.i.i = icmp ugt ptr %i.ep, %.sroa.0.0.copyload.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i
  %.not10.i.i.i.i.i = icmp ugt ptr %i.es, %i.ed
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not10.i.i.i.i.i, i1 false
  br i1 %.0.i.i.i.i.i, label %.sink.split.i.sink.split, label %.sink.split.i

bb.w:                                             ; preds = %bb.s
  br i1 %.0.i.i.i19.i, label %.sink.split.i.sink.split, label %.sink.split.i

.sink.split.i.sink.split:                         ; preds = %bb.w, %bb.v
  %.sroa.0.0.copyload.i.i14.i.sink = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.v ], [ %.sroa.0.0.copyload.i.i14.i, %bb.w ]
  %.sink60 = phi ptr [ %i.eo, %bb.v ], [ %i.em, %bb.w ]
  %i.et = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i14.i.sink, i64 %i.dk
  store ptr %i.et, ptr %.sink60, align 8, !tbaa !16
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.sink.split.i.sink.split, %bb.w, %bb.v, %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.ed, i64 %i.ek, i1 false)
  br label %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit

_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit:    ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit34, %.sink.split.i
  br i1 %i.b, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit35, label %bb.x

bb.x:                                             ; preds = %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit
  %i.eu = sext i32 %2 to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !39
  br label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit35

_ZNK5boost4urls6detail8url_impl6offsetEi.exit35:  ; preds = %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit, %bb.x
  %8 = phi i32 [ %i.ew, %bb.x ], [ 0, %_ZN5boost4urls8url_base4op_t4moveEPcPKcm.exit ]
  %.06.i = add nsw i32 %1, 1
  %i.ex = icmp slt i32 %.06.i, %2
  br i1 %i.ex, label %.lr.ph.i, label %_ZN5boost4urls6detail8url_impl8collapseEiim.exit

.lr.ph.i:                                         ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit35
  %9 = trunc i64 %i.dk to i32
  %10 = add i32 %8, %9                            ; 2 uses
  %i.ey = sext i32 %1 to i64
  %i.ez = add nsw i64 %i.ey, 1                    ; 3 uses
  %i.fa = add i32 %2, -2
  %i.fb = sub i32 %i.fa, %1                       ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check75 = icmp ult i32 %i.fb, 7
  br i1 %min.iters.check75, label %scalar.ph74.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph.i
  %n.vec77 = and i64 %i.fd, 8589934584            ; 3 uses
  %i.fe = add nsw i64 %i.ez, %n.vec77
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ff = getelementptr [4 x i8], ptr %i.ef, i64 %i.ez
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph76
  %index81 = phi i64 [ 0, %vector.ph76 ], [ %index.next82, %vector.body80 ] ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %index81 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store <4 x i32> %broadcast.splat79, ptr %i.fg, align 4, !tbaa !39
  store <4 x i32> %broadcast.splat79, ptr %i.fh, align 4, !tbaa !39
  %index.next82 = add nuw i64 %index81, 8         ; 2 uses
  %i.fi = icmp eq i64 %index.next82, %n.vec77
  br i1 %i.fi, label %middle.block83, label %vector.body80, !llvm.loop !254

middle.block83:                                   ; preds = %vector.body80
  %cmp.n84 = icmp eq i64 %i.fd, %n.vec77
  br i1 %cmp.n84, label %_ZN5boost4urls6detail8url_impl8collapseEiim.exit, label %scalar.ph74.preheader

scalar.ph74.preheader:                            ; preds = %.lr.ph.i, %middle.block83
  %indvars.iv.i.ph = phi i64 [ %i.ez, %.lr.ph.i ], [ %i.fe, %middle.block83 ]
  br label %scalar.ph74

scalar.ph74:                                      ; preds = %scalar.ph74.preheader, %scalar.ph74
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph74 ], [ %indvars.iv.i.ph, %scalar.ph74.preheader ] ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  store i32 %10, ptr %i.fj, align 4, !tbaa !39
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %2, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN5boost4urls6detail8url_impl8collapseEiim.exit, label %scalar.ph74, !llvm.loop !255

_ZN5boost4urls6detail8url_impl8collapseEiim.exit: ; preds = %scalar.ph74, %middle.block83, %_ZNK5boost4urls6detail8url_impl6offsetEi.exit35
  %.not6.i = icmp sgt i32 %2, 7
  br i1 %.not6.i, label %_ZN5boost4urls6detail8url_impl12adjust_rightEiim.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %_ZN5boost4urls6detail8url_impl8collapseEiim.exit
  %i.fk = trunc i64 %i.dk to i32                  ; 2 uses
  %i.fl = sext i32 %2 to i64                      ; 4 uses
  %i.fm = add i32 %2, 1
  %i.fn = zext i32 %i.fm to i64
  %i.fo = sub nsw i64 9, %i.fn                    ; 3 uses
  %min.iters.check88 = icmp ult i64 %i.fo, 12
  br i1 %min.iters.check88, label %scalar.ph87.preheader, label %vector.scevcheck86

vector.scevcheck86:                               ; preds = %.lr.ph.i36
  %i.fp = add i32 %2, 1
  %i.fq = zext i32 %i.fp to i64
  %i.fr = sub nsw i64 8, %i.fq                    ; 2 uses
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = sub i32 -2, %2
  %i.fu = icmp ult i32 %i.ft, %i.fs
  %i.fv = icmp ugt i64 %i.fr, 4294967295
  %i.fw = or i1 %i.fu, %i.fv
  br i1 %i.fw, label %scalar.ph87.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %vector.scevcheck86
  %n.vec90 = and i64 %i.fo, -8                    ; 3 uses
  %i.fx = add nsw i64 %n.vec90, %i.fl
  %broadcast.splatinsert91 = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %broadcast.splat92 = shufflevector <4 x i32> %broadcast.splatinsert91, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep101 = getelementptr [4 x i8], ptr %i.ef, i64 %i.fl
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph89
  %index94 = phi i64 [ 0, %vector.ph89 ], [ %index.next97, %vector.body93 ] ; 2 uses
  %gep102 = getelementptr [4 x i8], ptr %invariant.gep101, i64 %index94 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %gep102, i64 16 ; 2 uses
  %wide.load95 = load <4 x i32>, ptr %gep102, align 4, !tbaa !39
  %wide.load96 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !39
  %i.fz = add <4 x i32> %wide.load95, %broadcast.splat92
  %i.ga = add <4 x i32> %wide.load96, %broadcast.splat92
  store <4 x i32> %i.fz, ptr %gep102, align 4, !tbaa !39
  store <4 x i32> %i.ga, ptr %i.fy, align 4, !tbaa !39
  %index.next97 = add nuw i64 %index94, 8         ; 2 uses
  %i.gb = icmp eq i64 %index.next97, %n.vec90
  br i1 %i.gb, label %middle.block98, label %vector.body93, !llvm.loop !256

middle.block98:                                   ; preds = %vector.body93
  %cmp.n99 = icmp eq i64 %i.fo, %n.vec90
  br i1 %cmp.n99, label %_ZN5boost4urls6detail8url_impl12adjust_rightEiim.exit, label %scalar.ph87.preheader

scalar.ph87.preheader:                            ; preds = %vector.scevcheck86, %.lr.ph.i36, %middle.block98
  %indvars.iv.i37.ph = phi i64 [ %i.fl, %vector.scevcheck86 ], [ %i.fl, %.lr.ph.i36 ], [ %i.fx, %middle.block98 ]
  br label %scalar.ph87

scalar.ph87:                                      ; preds = %scalar.ph87.preheader, %scalar.ph87
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i38, %scalar.ph87 ], [ %indvars.iv.i37.ph, %scalar.ph87.preheader ] ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv.i37 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !39
  %i.ge = add i32 %i.gd, %i.fk
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !39
  %indvars.iv.next.i38 = add nsw i64 %indvars.iv.i37, 1 ; 2 uses
  %i.gf = and i64 %indvars.iv.next.i38, 4294967295
  %exitcond.not.i40 = icmp eq i64 %i.gf, 8
  br i1 %exitcond.not.i40, label %_ZN5boost4urls6detail8url_impl12adjust_rightEiim.exit, label %scalar.ph87, !llvm.loop !257

_ZN5boost4urls6detail8url_impl12adjust_rightEiim.exit: ; preds = %scalar.ph87, %middle.block98, %_ZN5boost4urls6detail8url_impl8collapseEiim.exit
  %i.gg = load ptr, ptr %i.eb, align 8, !tbaa !37
  %i.gh = load ptr, ptr %i.dl, align 8, !tbaa !38 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.gh, null
  %i.gi = select i1 %.not.i.i41, ptr %i.a, ptr %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 36
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !39
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gl
  store i8 0, ptr %i.gm, align 1, !tbaa !17
  %i.gn = load ptr, ptr %i.eb, align 8, !tbaa !37
  br i1 %i.i, label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit42, label %bb.y

bb.y:                                             ; preds = %_ZN5boost4urls6detail8url_impl12adjust_rightEiim.exit
  %i.go = sext i32 %1 to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !39
  %i.gr = zext i32 %i.gq to i64
  br label %_ZNK5boost4urls6detail8url_impl6offsetEi.exit42

_ZNK5boost4urls6detail8url_impl6offsetEi.exit42:  ; preds = %_ZN5boost4urls6detail8url_impl12adjust_rightEiim.exit, %bb.y
  %i.gs = phi i64 [ %i.gr, %bb.y ], [ 0, %_ZN5boost4urls6detail8url_impl12adjust_rightEiim.exit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gs
  br label %bb.z

bb.z:                                             ; preds = %_ZNK5boost4urls6detail8url_impl6offsetEi.exit42, %_ZN5boost4urls8url_base11shrink_implEiimRNS1_4op_tE.exit, %_ZNK5boost4urls6detail8url_impl6offsetEi.exit
  %.0 = phi ptr [ %i.t, %_ZNK5boost4urls6detail8url_impl6offsetEi.exit ], [ %i.dj, %_ZN5boost4urls8url_base11shrink_implEiimRNS1_4op_tE.exit ], [ %i.gt, %_ZNK5boost4urls6detail8url_impl6offsetEi.exit42 ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZN5boost4urls16string_to_schemeENS_4core17basic_string_viewIcEE(ptr %0, i64 %1) local_unnamed_addr #9 comdat {
bb.a:
  switch i64 %1, label %bb.u [
    i64 0, label %bb.v
    i64 2, label %bb.b
    i64 3, label %bb.d
    i64 4, label %bb.i
    i64 5, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !17      ; 3 uses
  %i.b = add i8 %i.a, -65
  %or.cond.i.i = icmp ult i8 %i.b, 26
  %i.c = add nuw nsw i8 %i.a, 32
  %i.d = select i1 %or.cond.i.i, i8 %i.c, i8 %i.a
  %i.e = icmp eq i8 %i.d, 119
  br i1 %i.e, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17    ; 3 uses
  %i.h = add i8 %i.g, -65
  %or.cond.i.i1 = icmp ult i8 %i.h, 26
  %i.i = add nuw nsw i8 %i.g, 32
  %i.j = select i1 %or.cond.i.i1, i8 %i.i, i8 %i.g
  %i.k = icmp eq i8 %i.j, 115
  br i1 %i.k, label %bb.v, label %bb.u

bb.d:                                             ; preds = %bb.a
  %i.l = load i8, ptr %0, align 1, !tbaa !17      ; 3 uses
  %i.m = add i8 %i.l, -65
  %or.cond.i.i2 = icmp ult i8 %i.m, 26
  %i.n = add nuw nsw i8 %i.l, 32
  %i.o = select i1 %or.cond.i.i2, i8 %i.n, i8 %i.l
  switch i8 %i.o, label %bb.u [
    i8 119, label %bb.e
    i8 102, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17    ; 3 uses
  %i.r = add i8 %i.q, -65
  %or.cond.i.i3 = icmp ult i8 %i.r, 26
  %i.s = add nuw nsw i8 %i.q, 32
  %i.t = select i1 %or.cond.i.i3, i8 %i.s, i8 %i.q
  %i.u = icmp eq i8 %i.t, 115
  br i1 %i.u, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !17    ; 3 uses
  %i.x = add i8 %i.w, -65
  %or.cond.i.i4 = icmp ult i8 %i.x, 26
  %i.y = add nuw nsw i8 %i.w, 32
  %i.z = select i1 %or.cond.i.i4, i8 %i.y, i8 %i.w
  %i.aa = icmp eq i8 %i.z, 115
  br i1 %i.aa, label %bb.v, label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17  ; 3 uses
  %i.ad = add i8 %i.ac, -65
  %or.cond.i.i5 = icmp ult i8 %i.ad, 26
  %i.ae = add nuw nsw i8 %i.ac, 32
  %i.af = select i1 %or.cond.i.i5, i8 %i.ae, i8 %i.ac
  %i.ag = icmp eq i8 %i.af, 116
  br i1 %i.ag, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17  ; 3 uses
  %i.aj = add i8 %i.ai, -65
  %or.cond.i.i6 = icmp ult i8 %i.aj, 26
  %i.ak = add nuw nsw i8 %i.ai, 32
  %i.al = select i1 %or.cond.i.i6, i8 %i.ak, i8 %i.ai
  %i.am = icmp eq i8 %i.al, 112
  br i1 %i.am, label %bb.v, label %bb.u

bb.i:                                             ; preds = %bb.a
  %i.an = load i8, ptr %0, align 1, !tbaa !17     ; 3 uses
  %i.ao = add i8 %i.an, -65
  %or.cond.i.i7 = icmp ult i8 %i.ao, 26
  %i.ap = add nuw nsw i8 %i.an, 32
  %i.aq = select i1 %or.cond.i.i7, i8 %i.ap, i8 %i.an
  switch i8 %i.aq, label %bb.u [
    i8 102, label %bb.j
    i8 104, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17  ; 3 uses
  %i.at = add i8 %i.as, -65
  %or.cond.i.i8 = icmp ult i8 %i.at, 26
  %i.au = add nuw nsw i8 %i.as, 32
  %i.av = select i1 %or.cond.i.i8, i8 %i.au, i8 %i.as
  %i.aw = icmp eq i8 %i.av, 105
end_hunk_0
