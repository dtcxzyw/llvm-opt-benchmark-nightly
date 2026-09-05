Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/ptxinfo?download=true
inline.NumInlined: 341
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z10DumpTilingPN4Ptex4v2_412PtexFaceDataE:bb.a
  %i.ao = shl nuw i32 1, %.sroa.6.0.extract.trunc
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.am, i32 noundef %i.ao)
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.15, i64 noundef 2) ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.at, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.16, i64 noundef 12) ; 0 uses
  %i.av = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !42
  %.not.i1.i.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 67
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ba)
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef signext i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.be, %bb.h ], [ %i.bi, %bb.i ]
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.17, i64 noundef 11) ; 0 uses
  %i.bm = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 240
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !36 ; 6 uses
  %.not.i.i.i4 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i4, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5: ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !42
  %.not.i1.i.i6 = icmp eq i8 %i.bt, 0
  br i1 %.not.i1.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 67
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i5
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.br)
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef signext i8 %i.by(ptr noundef nonnull align 8 dereferenceable(570) %i.br, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8: ; preds = %bb.l, %bb.m
  %.0.i.i.i7 = phi i8 [ %i.bv, %bb.l ], [ %i.bz, %bb.m ]
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i7)
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit8, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z8DumpDataPN4Ptex4v2_411PtexTextureEib(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ne ptr %0, null
  %or.cond48.not = and i1 %.not, %2
  br i1 %or.cond48.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 158
  %i.b = load i16, ptr %i.a, align 1, !tbaa !45
  %i.c = zext i16 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 6 uses
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #16 ; 5 uses
  %i.o = load i16, ptr %i.g, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i16 %i.o to i8 ; 2 uses
  %.sroa.8.0.extract.shift = lshr i16 %i.o, 8
  %.sroa.8.0.extract.trunc = trunc nuw i16 %.sroa.8.0.extract.shift to i8 ; 2 uses
  %i.p = icmp ne i32 %.1, 0
  %i.q = icmp sgt i8 %.sroa.0.0.extract.trunc, 0
  %or.cond67 = select i1 %i.p, i1 %i.q, i1 false
  %i.r = icmp sgt i8 %.sroa.8.0.extract.trunc, 0
  %i.s = select i1 %or.cond67, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.u = icmp sgt i32 %i.k, 0                     ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64
  %wide.trip.count80 = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.270 = phi i32 [ %.1, %.lr.ph ], [ %i.ca, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %.sroa.0.069 = phi i8 [ %.sroa.0.0.extract.trunc, %.lr.ph ], [ %i.by, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 5 uses
  %.sroa.8.068 = phi i8 [ %.sroa.8.0.extract.trunc, %.lr.ph ], [ %i.bz, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 5 uses
  %i.v = zext nneg i8 %.sroa.0.069 to i32
  %i.w = shl nuw i32 1, %i.v                      ; 2 uses
  %i.x = zext nneg i8 %.sroa.8.068 to i32
  %i.y = shl nuw i32 1, %i.x                      ; 2 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.18, i64 noundef 8) ; 0 uses
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.w) ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.2, i64 noundef 3) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.y)
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.ae = load i8, ptr %i.t, align 1, !tbaa !28
  %i.af = trunc i8 %i.ae to i1                    ; 2 uses
  %spec.select = select i1 %i.af, i32 1, i32 %i.w ; 3 uses
  %spec.select46 = select i1 %i.af, i32 1, i32 %i.y ; 3 uses
  %i.ag = icmp eq i32 %spec.select, 1
  %i.ah = icmp eq i32 %spec.select46, 1
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %.preheader.lr.ph.split.us.split.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.ak = icmp sgt i32 %spec.select46, 0
  br i1 %i.ak, label %.preheader.lr.ph, label %._crit_edge60

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.al = icmp sgt i32 %spec.select, 0
  %.sroa.8.0.insert.ext = zext nneg i8 %.sroa.8.068 to i16
  %.sroa.8.0.insert.shift = shl nuw nsw i16 %.sroa.8.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.069 to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.8.0.insert.shift, %.sroa.0.0.insert.ext
  br i1 %i.al, label %.preheader.us, label %._crit_edge60

.preheader.lr.ph.split.us.split.us:               ; preds = %bb.d
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.19, i64 noundef 9) ; 0 uses
  %.sroa.8.0.insert.ext89 = zext nneg i8 %.sroa.8.068 to i16
  %.sroa.8.0.insert.shift90 = shl nuw nsw i16 %.sroa.8.0.insert.ext89, 8
  %.sroa.0.0.insert.ext91 = zext nneg i8 %.sroa.0.069 to i16
  %.sroa.0.0.insert.insert92 = or disjoint i16 %.sroa.8.0.insert.shift90, %.sroa.0.0.insert.ext91
  %i.an = load ptr, ptr %0, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, ptr noundef %i.n, i32 noundef 0, i32 noundef %i.k, i16 %.sroa.0.0.insert.insert92)
  br i1 %i.u, label %.lr.ph.us.us.us.us.us, label %._crit_edge60

.lr.ph.us.us.us.us.us:                            ; preds = %.preheader.lr.ph.split.us.split.us, %.lr.ph.us.us.us.us.us
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %.lr.ph.us.us.us.us.us ], [ 0, %.preheader.lr.ph.split.us.split.us ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv77
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !47
  %i.as = fpext float %i.ar to double
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %i.as) ; 0 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge60, label %.lr.ph.us.us.us.us.us, !llvm.loop !53

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge56.split.us62
  %.04257.us = phi i32 [ %i.bh, %._crit_edge56.split.us62 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.us, %.preheader.us
  %.04154.us61 = phi i32 [ 0, %.preheader.us ], [ %i.bg, %._crit_edge.us ] ; 3 uses
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.21, i64 noundef 6) ; 0 uses
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.04154.us61) ; 2 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull @.str.22, i64 noundef 2) ; 0 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i32 noundef %.04257.us)
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.23, i64 noundef 3) ; 0 uses
  %i.az = load ptr, ptr %0, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %.04154.us61, i32 noundef %.04257.us, ptr noundef %i.n, i32 noundef 0, i32 noundef %i.k, i16 %.sroa.0.0.insert.insert)
  br i1 %i.u, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %bb.f, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.us ], [ 0, %bb.f ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !47
  %i.be = fpext float %i.bd to double
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, double noundef %i.be) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !53

._crit_edge.us:                                   ; preds = %.lr.ph.us, %bb.f
  %i.bg = add nuw nsw i32 %.04154.us61, 1         ; 2 uses
  %exitcond75.not = icmp eq i32 %i.bg, %spec.select
  br i1 %exitcond75.not, label %._crit_edge56.split.us62, label %bb.f, !llvm.loop !54

._crit_edge56.split.us62:                         ; preds = %._crit_edge.us
  %i.bh = add nuw nsw i32 %.04257.us, 1           ; 2 uses
  %exitcond76.not = icmp eq i32 %i.bh, %spec.select46
  br i1 %exitcond76.not, label %._crit_edge60, label %.preheader.us, !llvm.loop !55

._crit_edge60:                                    ; preds = %._crit_edge56.split.us62, %.lr.ph.us.us.us.us.us, %.preheader.lr.ph.split.us.split.us, %.preheader.lr.ph, %bb.e
  %i.bi = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %._crit_edge60
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge60
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !42
  %.not.i1.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn)
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.br, %bb.h ], [ %i.bv, %bb.i ]
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) ; 0 uses
  %i.by = add nsw i8 %.sroa.0.069, -1
  %i.bz = add nsw i8 %.sroa.8.068, -1
  %i.ca = add nsw i32 %.270, -1                   ; 2 uses
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = icmp sgt i8 %.sroa.0.069, 1
  %or.cond = select i1 %i.cb, i1 %i.cc, i1 false
  %i.cd = icmp sgt i8 %.sroa.8.068, 1
  %i.ce = select i1 %or.cond, i1 %i.cd, i1 false
  br i1 %i.ce, label %bb.d, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.c
  tail call void @free(ptr noundef %i.n) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_Z12DumpMetaDataPN4Ptex4v2_412PtexMetaDataE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %class.DumpMetaArrayVal, align 1    ; 3 uses
  %2 = alloca %class.DumpMetaArrayVal.40, align 1 ; 3 uses
  %3 = alloca %class.DumpMetaArrayVal.41, align 1 ; 3 uses
  %4 = alloca %class.DumpMetaArrayVal.42, align 1 ; 3 uses
  %5 = alloca %class.DumpMetaArrayVal.43, align 1 ; 3 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.25, i64 noundef 5) ; 0 uses
  %i.e = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !tbaa !42
  %.not.i1.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 67
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.j)
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(570) %i.j, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.n, %bb.c ], [ %i.r, %bb.d ]
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s) ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit18, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void

.lr.ph:                                           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit18
  %.019 = phi i32 [ %i.cl, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit18 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.z = load ptr, ptr %0, align 8, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %.019, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.26, i64 noundef 2) ; 0 uses
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !50  ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ae = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.ak = or i32 %i.aj, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ah, i32 noundef %i.ak)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.f:                                             ; preds = %.lr.ph
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #17
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.ad, i64 noundef %i.al) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e, %bb.f
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.27, i64 noundef 6) ; 0 uses
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !59
  %i.ap = call noundef ptr @_ZN4Ptex4v2_416MetaDataTypeNameENS0_12MetaDataTypeE(i32 noundef %i.ao) ; 3 uses
  %.not.i10 = icmp eq ptr %i.ap, null
  br i1 %.not.i10, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aq = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !51
  %i.aw = or i32 %i.av, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.at, i32 noundef %i.aw)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #17
end_hunk_0
