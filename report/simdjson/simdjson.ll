Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson8internal5roundERNS0_7decimalE:bb.a

bb.m:                                             ; preds = %bb.j
  %i.as = icmp ugt i8 %.fr, 4
  br i1 %i.as, label %.thread35, label %.thread

.thread35:                                        ; preds = %bb.k, %.split, %bb.m
  %i.at = add i64 %.028.lcssa, 1
  br label %.thread

.thread:                                          ; preds = %bb.l, %._crit_edge, %.thread35, %bb.m, %.split, %bb.c, %bb.a, %bb.b
  %.029 = phi i64 [ -1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ %i.at, %.thread35 ], [ %.028.lcssa, %bb.m ], [ %.028.lcssa, %.split ], [ %.028.lcssa, %._crit_edge ], [ %.028.lcssa, %bb.l ]
  ret i64 %.029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN8simdjson8internal18decimal_left_shiftERNS0_7decimalEj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(780) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !43     ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr @_ZZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEjE41number_of_digits_decimal_left_shift_table, i64 %i.d ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !192
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !192
  %i.j = lshr i32 %i.g, 11                        ; 4 uses
  %i.k = and i32 %i.g, 2047                       ; 3 uses
  %i.l = and i16 %i.i, 2047
  %i.m = zext nneg i16 %i.l to i32                ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEjE53number_of_digits_decimal_left_shift_table_powers_of_5, i64 %i.n
  %.not31.i = icmp eq i32 %i.k, %i.m
  br i1 %.not31.i, label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = sub nsw i32 %i.m, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %wide.trip.count.i = zext i32 %i.a to i64
  %wide.trip.count36.i = zext i32 %i.p to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count36.i
  br i1 %exitcond37.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit, label %bb.d, !llvm.loop !188

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.j, -1
  br label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !36    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36    ; 2 uses
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i8 %i.t, %i.v
  %i.y = sext i1 %i.x to i32
  %spec.select.i = add nsw i32 %i.j, %i.y
  br label %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit

_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit: ; preds = %bb.c, %bb.b, %bb.e, %bb.g
  %.026.i = phi i32 [ %i.r, %bb.e ], [ %spec.select.i, %bb.g ], [ %i.j, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %i.z = add i32 %i.a, -1                         ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit
  %i.ab = add i32 %.026.i, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ad = zext nneg i32 %1 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.af = zext nneg i32 %i.z to i64
  br label %bb.h

.preheader:                                       ; preds = %bb.l
  %.not57 = icmp ult i64 %i.am, 10
  br i1 %.not57, label %._crit_edge, label %.lr.ph60

.lr.ph60:                                         ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.055 = phi i64 [ 0, %.lr.ph ], [ %i.an, %bb.l ]
  %.04154 = phi i32 [ %i.ab, %.lr.ph ], [ %i.at, %bb.l ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !36
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl i64 %i.ak, %i.ad
  %i.am = add i64 %i.al, %.055                    ; 3 uses
  %i.an = udiv i64 %i.am, 10                      ; 3 uses
  %.neg45 = mul i64 %i.an, -10
  %i.ao = add i64 %.neg45, %i.am                  ; 2 uses
  %i.ap = icmp ult i32 %.04154, 768
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = trunc i64 %i.ao to i8
  %i.ar = zext nneg i32 %.04154 to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar
  store i8 %i.aq, ptr %i.as, align 1, !tbaa !36
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %.not46 = icmp eq i64 %i.ao, 0
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ae, align 1, !tbaa !45
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.at = add i32 %.04154, -1                     ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.au = icmp sgt i64 %indvars.iv, 0
  br i1 %i.au, label %bb.h, label %.preheader, !llvm.loop !189

bb.m:                                             ; preds = %.lr.ph60, %bb.q
  %.159 = phi i64 [ %i.an, %.lr.ph60 ], [ %i.av, %bb.q ] ; 3 uses
  %.14258 = phi i32 [ %i.at, %.lr.ph60 ], [ %i.bb, %bb.q ] ; 3 uses
  %i.av = udiv i64 %.159, 10                      ; 2 uses
  %.neg = mul nsw i64 %i.av, -10
  %i.aw = add nsw i64 %.neg, %.159                ; 2 uses
  %i.ax = icmp ult i32 %.14258, 768
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = trunc i64 %i.aw to i8
  %i.az = zext nneg i32 %.14258 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.az
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !36
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %.not44 = icmp eq i64 %i.aw, 0
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.ag, align 1, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.bb = add i32 %.14258, -1
  %.not = icmp samesign ult i64 %.159, 10
  br i1 %.not, label %._crit_edge, label %bb.m, !llvm.loop !190

._crit_edge:                                      ; preds = %bb.q, %_ZN8simdjson8internal12_GLOBAL__N_135number_of_digits_decimal_left_shiftERNS0_7decimalEj.exit, %.preheader
  %i.bc = add i32 %.026.i, %i.a                   ; 2 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 768) ; 2 uses
  store i32 %spec.select, ptr %0, align 4, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !44
  %i.bf = add nsw i32 %i.be, %.026.i
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10
  %.not4.i = icmp eq i32 %i.bc, 0
  br i1 %.not4.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.bh = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i48 = phi i64 [ %i.bh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i49, %bb.r ]
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i48, -1 ; 3 uses
  %i.bi = and i64 %indvars.iv.next.i49, 4294967295
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !36
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.r:                                             ; preds = %.lr.ph.i47
  %indvars.i = trunc i64 %indvars.iv.next.i49 to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !43
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.i47, !llvm.loop !1

_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit: ; preds = %bb.r, %.lr.ph.i47, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN8simdjson8internal19decimal_right_shiftERNS0_7decimalEj(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(780) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 8 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !43     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 9 uses
  %i.d = zext i32 %i.b to i64
  %exitcond.not103 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not103, label %._crit_edge108, label %.lr.ph107

bb.b:                                             ; preds = %.lr.ph107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge108, label %.lr.ph107, !llvm.loop !193

.lr.ph107:                                        ; preds = %bb.a, %bb.b
  %.04457105 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %indvars.iv104 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = mul i64 %.04457105, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv104
  %i.g = load i8, ptr %i.f, align 1, !tbaa !36
  %i.h = zext i8 %i.g to i64
  %i.i = add i64 %i.e, %i.h                       ; 4 uses
  %i.j = lshr i64 %i.i, %i.a
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %.loopexit.loopexit73, !llvm.loop !193

._crit_edge108:                                   ; preds = %bb.b, %bb.a
  %.04457.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %bb.b ] ; 4 uses
  %i.l = icmp eq i64 %.04457.lcssa, 0
  br i1 %i.l, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.preheader52

.preheader52:                                     ; preds = %._crit_edge108
  %i.m = lshr i64 %.04457.lcssa, %i.a
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader52, %.lr.ph
  %.160 = phi i32 [ %i.p, %.lr.ph ], [ %i.b, %.preheader52 ]
  %.14559 = phi i64 [ %i.o, %.lr.ph ], [ %.04457.lcssa, %.preheader52 ]
  %i.o = mul i64 %.14559, 10                      ; 3 uses
  %i.p = add i32 %.160, 1                         ; 2 uses
  %i.q = lshr i64 %i.o, %i.a
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %.loopexit, !llvm.loop !194

.loopexit.loopexit73:                             ; preds = %.lr.ph107
  %i.s = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit73, %.preheader52
  %.246 = phi i64 [ %i.i, %.loopexit.loopexit73 ], [ %.04457.lcssa, %.preheader52 ], [ %i.o, %.lr.ph ] ; 3 uses
  %.2 = phi i32 [ %i.s, %.loopexit.loopexit73 ], [ %i.b, %.preheader52 ], [ %i.p, %.lr.ph ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44
  %reass.sub = sub i32 %i.u, %.2
  %i.v = add i32 %reass.sub, 1                    ; 2 uses
  store i32 %i.v, ptr %i.t, align 4, !tbaa !44
  %i.w = icmp slt i32 %i.v, -2047
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %0, i8 0, i64 10, i1 false)
  br label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.d:                                             ; preds = %.loopexit
  %notmask = shl nsw i64 -1, %i.a
  %i.x = xor i64 %notmask, -1                     ; 4 uses
  %i.y = icmp ult i32 %.2, %i.b
  br i1 %i.y, label %.lr.ph65, label %.preheader

.lr.ph65:                                         ; preds = %bb.d
  %i.z = zext i32 %.2 to i64                      ; 2 uses
  %i.aa = sub nuw i32 %i.b, %.2                   ; 6 uses
  %xtraiter = and i32 %i.aa, 1
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph65.new

.lr.ph65.new:                                     ; preds = %.lr.ph65
  %unroll_iter = and i32 %i.aa, -2
  br label %bb.e

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph65
  %indvars.iv84.epil.init = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next85.1, %.preheader.loopexit.unr-lcssa ]
  %indvars.iv82.epil.init = phi i64 [ %i.z, %.lr.ph65 ], [ %indvars.iv.next83.1, %.preheader.loopexit.unr-lcssa ]
  %.34763.epil.init = phi i64 [ %.246, %.lr.ph65 ], [ %i.bd, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod115 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.ac = lshr i64 %.34763.epil.init, %i.a
  %i.ad = trunc i64 %i.ac to i8
  %i.ae = and i64 %.34763.epil.init, %i.x
  %i.af = mul i64 %i.ae, 10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82.epil.init
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add i64 %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84.epil.init
  store i8 %i.ad, ptr %i.ak, align 1, !tbaa !36
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.d
  %.048.lcssa = phi i32 [ 0, %bb.d ], [ %i.aa, %.preheader.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ] ; 4 uses
  %.347.lcssa = phi i64 [ %.246, %bb.d ], [ %i.bd, %.preheader.loopexit.unr-lcssa ], [ %i.aj, %.epil.preheader ] ; 2 uses
  %.not68 = icmp eq i64 %.347.lcssa, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 9
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph65.new
  %indvars.iv84 = phi i64 [ 0, %.lr.ph65.new ], [ %indvars.iv.next85.1, %bb.e ] ; 3 uses
  %indvars.iv82 = phi i64 [ %i.z, %.lr.ph65.new ], [ %indvars.iv.next83.1, %bb.e ] ; 3 uses
  %.34763 = phi i64 [ %.246, %.lr.ph65.new ], [ %i.bd, %bb.e ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph65.new ], [ %niter.next.1, %bb.e ]
  %i.am = lshr i64 %.34763, %i.a
  %i.an = trunc i64 %i.am to i8
  %i.ao = and i64 %.34763, %i.x
  %i.ap = mul i64 %i.ao, 10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = zext i8 %i.ar to i64
  %i.at = add i64 %i.ap, %i.as                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  store i8 %i.an, ptr %i.au, align 2, !tbaa !36
  %i.av = lshr i64 %i.at, %i.a
  %i.aw = trunc i64 %i.av to i8
  %i.ax = and i64 %i.at, %i.x
  %i.ay = mul i64 %i.ax, 10
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv82
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %i.bc = zext i8 %i.bb to i64
  %i.bd = add i64 %i.ay, %i.bc                    ; 3 uses
  %indvars.iv.next85.1 = add nuw nsw i64 %indvars.iv84, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv84
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.aw, ptr %i.bf, align 1, !tbaa !36
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.e, !llvm.loop !195

bb.f:                                             ; preds = %.lr.ph71, %bb.j
  %.470 = phi i64 [ %.347.lcssa, %.lr.ph71 ], [ %i.bi, %bb.j ] ; 2 uses
  %.14969 = phi i32 [ %.048.lcssa, %.lr.ph71 ], [ %.250, %bb.j ] ; 5 uses
  %i.bg = lshr i64 %.470, %i.a                    ; 2 uses
  %i.bh = and i64 %.470, %i.x
  %i.bi = mul i64 %i.bh, 10                       ; 2 uses
  %i.bj = icmp ult i32 %.14969, 768
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = trunc i64 %i.bg to i8
  %i.bl = add nuw nsw i32 %.14969, 1
  %i.bm = zext nneg i32 %.14969 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !36
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.bo = and i64 %i.bg, 255
  %.not51 = icmp eq i64 %i.bo, 0
  br i1 %.not51, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.al, align 1, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.250 = phi i32 [ %i.bl, %bb.g ], [ %.14969, %bb.i ], [ %.14969, %bb.h ] ; 3 uses
  %.not = icmp eq i64 %i.bi, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f, !llvm.loop !196

._crit_edge.thread:                               ; preds = %bb.j
  store i32 %.250, ptr %0, align 4, !tbaa !43
  br label %.lr.ph.preheader.i

._crit_edge:                                      ; preds = %.preheader
  store i32 %.048.lcssa, ptr %0, align 4, !tbaa !43
  %.not4.i = icmp eq i32 %.048.lcssa, 0
  br i1 %.not4.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.thread, %._crit_edge
  %.149.lcssa94 = phi i32 [ %.250, %._crit_edge.thread ], [ %.048.lcssa, %._crit_edge ]
  %i.bp = zext i32 %.149.lcssa94 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bp, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.k ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bq = and i64 %indvars.iv.next.i, 4294967295
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !36
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %bb.k, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit

bb.k:                                             ; preds = %.lr.ph.i
  %indvars.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  store i32 %indvars.i, ptr %0, align 4, !tbaa !43
  %.not.i = icmp eq i32 %indvars.i, 0
  br i1 %.not.i, label %_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit, label %.lr.ph.i, !llvm.loop !1

_ZN8simdjson8internal12_GLOBAL__N_14trimERNS0_7decimalE.exit: ; preds = %bb.k, %.lr.ph.i, %._crit_edge, %._crit_edge108, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN8simdjson8internal10from_charsEPKc(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @_ZN8simdjson8internal13parse_decimalERPKc(ptr dead_on_unwind nonnull writable sret(%"struct.simdjson::internal::decimal") align 4 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #41
  %i.d = invoke { i64, i32 } @_ZN8simdjson8internal13compute_floatINS0_13binary_formatIdEEEENS0_17adjusted_mantissaERNS0_7decimalE(ptr noundef nonnull align 4 dereferenceable(780) %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.fca.0.extract = extractvalue { i64, i32 } %i.d, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.d, 1
  %i.e = zext i32 %.fca.1.extract to i64
  %i.f = shl i64 %i.e, 52
  %i.g = or i64 %i.f, %.fca.0.extract             ; 2 uses
  %i.h = or i64 %i.g, -9223372036854775808
  %spec.select9 = select i1 %i.c, i64 %i.h, i64 %i.g
  %i.i = bitcast i64 %spec.select9 to double
  ret double %i.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #42
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #41 ; 0 uses
  tail call void @_ZSt9terminatev() #42
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZN8simdjson8internal10from_charsEPKcS2_(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.simdjson::internal::decimal", align 4 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !36
  %i.c = icmp eq i8 %i.b, 45                      ; 2 uses
  %spec.select.idx = zext i1 %i.c to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
