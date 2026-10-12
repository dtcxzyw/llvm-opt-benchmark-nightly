Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/chrono-test?download=true
inline.NumInlined: 21374
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 160
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.n, %bb.o
  %.pre-phi.i52 = phi i64 [ %i.eg, %bb.n ], [ %.pre2.i54, %bb.o ]
  %i.ek = phi i64 [ %i.ef, %bb.n ], [ %.pre.i53, %bb.o ]
  %i.el = load ptr, ptr %3, align 8, !tbaa !338
  store i64 %.pre-phi.i52, ptr %i.aj, align 8, !tbaa !354
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 48, ptr %i.em, align 1, !tbaa !232
  %i.en = add i32 %.293, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !5636

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eo = select i1 %.not88, i8 112, i8 80
  %i.ep = load i64, ptr %i.aj, align 8, !tbaa !354 ; 2 uses
  %i.eq = add i64 %i.ep, 1                        ; 3 uses
  %i.er = load i64, ptr %i.am, align 8, !tbaa !339
  %i.es = icmp ugt i64 %i.eq, %i.er
  br i1 %i.es, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.p:                                             ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !260
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eq), !inline_history !20
  %.pre.i57 = load i64, ptr %i.aj, align 8, !tbaa !354 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.p
  %.pre-phi.i56 = phi i64 [ %i.eq, %._crit_edge ], [ %.pre2.i58, %bb.p ]
  %i.ev = phi i64 [ %i.ep, %._crit_edge ], [ %.pre.i57, %bb.p ]
  %i.ew = load ptr, ptr %3, align 8, !tbaa !338
  store i64 %.pre-phi.i56, ptr %i.aj, align 8, !tbaa !354
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 %i.eo, ptr %i.ex, align 1, !tbaa !232
  %i.ey = icmp slt i32 %i.j, 0
  %i.ez = load i64, ptr %i.aj, align 8, !tbaa !354 ; 3 uses
  %i.fa = add i64 %i.ez, 1                        ; 5 uses
  %i.fb = load i64, ptr %i.am, align 8, !tbaa !339
  %i.fc = icmp ugt i64 %i.fa, %i.fb               ; 2 uses
  br i1 %i.ey, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.r:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !260
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !20
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !354 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.q, %bb.r
  %.pre-phi.i60 = phi i64 [ %i.fa, %bb.q ], [ %.pre2.i62, %bb.r ]
  %i.ff = phi i64 [ %i.ez, %bb.q ], [ %.pre.i61, %bb.r ]
  %i.fg = load ptr, ptr %3, align 8, !tbaa !338
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !354
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 45, ptr %i.fh, align 1, !tbaa !232
  %i.fi = sub nsw i32 0, %i.j
  br label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !260
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !20
  %.pre.i65 = load i64, ptr %i.aj, align 8, !tbaa !354 ; 2 uses
  %.pre2.i66 = add i64 %.pre.i65, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67: ; preds = %bb.s, %bb.t
  %.pre-phi.i64 = phi i64 [ %i.fa, %bb.s ], [ %.pre2.i66, %bb.t ]
  %i.fl = phi i64 [ %i.ez, %bb.s ], [ %.pre.i65, %bb.t ]
  %i.fm = load ptr, ptr %3, align 8, !tbaa !338
  store i64 %.pre-phi.i64, ptr %i.aj, align 8, !tbaa !354
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 43, ptr %i.fn, align 1, !tbaa !232
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63
  %.0 = phi i32 [ %i.fi, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67 ] ; 3 uses
  %i.fo = or i32 %.0, 1
  %i.fp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = xor i32 %i.fp, 31
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !255
  %i.fu = zext nneg i32 %.0 to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = lshr i64 %i.fv, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.fx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::basic_fp.320", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !317
  %i.c = and i32 %i.b, 7
  %i.d = icmp eq i32 %i.c, 2                      ; 5 uses
  %i.e = fcmp oeq double %0, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.f, %i.d
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !354  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !339
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !260
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !20
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !354 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !338
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !354
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !232
  br label %bb.bd

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !339  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !260
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !5637
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !339
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !354
  %i.aa = load ptr, ptr %4, align 8, !tbaa !338
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bd

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ac = bitcast double %0 to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 4503599627370495         ; 5 uses
  %i.ae = and i64 %i.ac, 9218868437227405312      ; 3 uses
  %i.af = lshr exact i64 %i.ae, 52
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %.not = icmp eq i64 %i.ae, 0                    ; 3 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.ag, -1075
  %i.ai = shl nuw nsw i64 %i.ad, 1
  %i.aj = or disjoint i64 %i.ai, 9007199254740992
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true) ; 2 uses
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = add nsw i64 %i.ak, -10
  %i.an = sub nuw nsw i32 -1063, %i.al
  %i.ao = shl i64 %i.ad, %i.am
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0109 = phi i64 [ %i.aj, %bb.h ], [ %i.ao, %bb.i ]
  %.0108 = phi i32 [ %i.ah, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %i.ap = mul nsw i32 %.0108, 315653
  %i.aq = ashr i32 %i.ap, 20                      ; 2 uses
  %.neg125 = add nsw i32 %i.aq, -2                ; 4 uses
  %i.ar = sub nsw i32 2, %i.aq                    ; 2 uses
  %i.as = mul nsw i32 %i.ar, 1741647
  %i.at = ashr i32 %i.as, 19
  %i.au = add nsw i32 %i.at, %.0108
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %.0109, %i.av
  %i.ax = tail call { i64, i64 } @_ZN3fmt3v126detail9dragonbox16get_cached_powerEi(i32 noundef %i.ar) #30 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1
  %i.ba = zext i64 %i.aw to i128                  ; 2 uses
  %i.bb = zext i64 %i.az to i128
  %i.bc = mul nuw i128 %i.ba, %i.bb               ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = trunc nuw i128 %i.bd to i64
  %i.bf = trunc i128 %i.bc to i64
  %6 = zext i64 %i.ay to i128
  %7 = mul nuw i128 %i.ba, %6
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64
  %i.bg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bf, i64 %9) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %i.bj = zext i1 %i.bh to i64
  %i.bk = add nuw i64 %i.bj, %i.be                ; 3 uses
  %i.bl = icmp ne i64 %i.bi, 0                    ; 4 uses
  %i.bm = icmp ugt i64 %i.bk, 999999999999999999  ; 2 uses
  %i.bn = mul nuw i64 %i.bk, 10
  %.0107 = select i1 %i.bm, i64 %i.bk, i64 %i.bn  ; 3 uses
  %.0106 = select i1 %i.bm, i32 19, i32 18        ; 5 uses
  br i1 %i.d, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bo = add nsw i32 %.neg125, %.0106            ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = sub nuw nsw i32 2147483647, %i.bo
  %i.br = icmp sgt i32 %1, %i.bq
  %or.cond.i = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond.i, label %bb.l, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull @.str.1073)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bs) #30
  resume { ptr, i32 } %i.bt

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.k
  %i.bu = add nsw i32 %i.bo, %1
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %bb.j
  %.0187 = phi i32 [ %i.bu, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %bb.j ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.p, label %.thread219

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp slt i32 %.0187, 1
  br i1 %i.bv, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bw = add nsw i32 %.neg125, %.0106
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !239
  %i.bx = icmp slt i32 %.0187, 0
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !354
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !339
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !260
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !5637
  %.pre.i140 = load i64, ptr %i.bz, align 8, !tbaa !339
  %i.ce = icmp ne i64 %.pre.i140, 0
  %i.cf = zext i1 %i.ce to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.s, %bb.t
  %i.cg = phi i64 [ 1, %bb.s ], [ %i.cf, %bb.t ]
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !354
  %i.ci = zext i1 %i.bl to i64
  %i.cj = or i64 %.0107, %i.ci
  %i.ck = icmp ugt i64 %i.cj, 5000000000000000000
  %i.cl = load ptr, ptr %4, align 8, !tbaa !338   ; 2 uses
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.cl, align 1, !tbaa !232
  br label %.thread

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.cl, align 1, !tbaa !232
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.cm = sub nuw nsw i32 %.0106, %.0187
  %i.cn = add nsw i32 %i.cm, %.neg125             ; 2 uses
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !239
  %10 = zext i64 %.0107 to i128
  %11 = mul nuw nsw i128 %10, 7922816251426433760
  %sum.shift = lshr i128 %11, 96
  %12 = trunc nuw nsw i128 %sum.shift to i64      ; 3 uses
  %.neg126 = mul i64 %12, -10000000000
  %i.co = add i64 %.neg126, %.0107                ; 5 uses
  %i.cp = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !338   ; 6 uses
  %i.cr = and i32 %i.cp, 1
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = mul nuw nsw i64 %12, 720575941
  %i.ct = lshr i64 %i.cs, 24
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %i.cv = lshr i64 %i.cu, 32                      ; 2 uses
  %i.cw = trunc nuw nsw i64 %i.cv to i8
  %i.cx = add nuw nsw i8 %i.cw, 48
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !232
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cy = mul nuw nsw i64 %12, 450359963
  %i.cz = lshr i64 %i.cy, 20
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = lshr i64 %i.da, 32                      ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2
  store i16 %i.de, ptr %i.cq, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0208 = phi i64 [ %i.da, %bb.y ], [ %i.cu, %bb.x ] ; 2 uses
  %.0204.in = phi i64 [ %i.db, %bb.y ], [ %i.cv, %bb.x ]
  %.0.i = phi i32 [ 2, %bb.y ], [ 1, %bb.x ]      ; 2 uses
  %i.df = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.df, label %.lr.ph.i, label %.thread265

.lr.ph.i:                                         ; preds = %bb.z
  %i.dg = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.dh = zext nneg i32 %i.cp to i64              ; 3 uses
  %i.di = and i64 %.0208, 4294967295
  %i.dj = mul nuw nsw i64 %i.di, 100              ; 3 uses
  %i.dk = lshr i64 %i.dj, 32                      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dg
  %i.dm = shl nuw nsw i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2
  store i16 %i.do, ptr %i.dl, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.dg, 2   ; 2 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next.i, %i.dh
  br i1 %i.dp, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dq = and i64 %i.dj, 4294967292
  %i.dr = mul nuw nsw i64 %i.dq, 100              ; 3 uses
  %i.ds = lshr i64 %i.dr, 32                      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i
  %i.du = shl nuw nsw i64 %i.ds, 1
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2
  store i16 %i.dw, ptr %i.dt, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.dg, 4 ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next.i.1, %i.dh
  br i1 %i.dx, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dy = and i64 %i.dr, 4294967280
  %i.dz = mul nuw nsw i64 %i.dy, 100              ; 3 uses
  %i.ea = lshr i64 %i.dz, 32                      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i.1
  %i.ec = shl nuw nsw i64 %i.ea, 1
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2
  store i16 %i.ee, ptr %i.eb, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.dg, 6 ; 2 uses
  %i.ef = icmp samesign ult i64 %indvars.iv.next.i.2, %i.dh
  br i1 %i.ef, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eg = and i64 %i.dz, 4294967232
  %i.eh = mul nuw nsw i64 %i.eg, 100              ; 2 uses
  %i.ei = lshr i64 %i.eh, 32                      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i.2
  %i.ek = shl nuw nsw i64 %i.ei, 1
  %i.el = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2
  store i16 %i.em, ptr %i.ej, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.lcssa286 = phi i64 [ %i.dj, %.lr.ph.i ], [ %i.dr, %bb.aa ], [ %i.dz, %bb.ab ], [ %i.eh, %bb.ac ]
  %.lcssa285 = phi i64 [ %i.dk, %.lr.ph.i ], [ %i.ds, %bb.aa ], [ %i.ea, %bb.ab ], [ %i.ei, %bb.ac ] ; 2 uses
  %i.en = icmp samesign ult i32 %.0187, 10
  br i1 %i.en, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ae, label %.thread265

.thread265:                                       ; preds = %bb.z, %bb.ad
  %.2210262271 = phi i64 [ %.lcssa286, %bb.ad ], [ %.0208, %bb.z ]
  %.1205264270.in = phi i64 [ %.lcssa285, %bb.ad ], [ %.0204.in, %bb.z ]
  %i.eo = trunc i64 %.2210262271 to i32           ; 2 uses
  %i.ep = sub nuw nsw i32 8, %i.cp
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr @.str.1275, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !tbaa !5642
  %i.et = zext i16 %i.es to i32
  %i.eu = shl nuw i32 %i.et, 16
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr @.str.1276, i64 %i.eq
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !5642
  %i.ex = zext i16 %i.ew to i32
  %i.ey = or disjoint i32 %i.eu, %i.ex
  %.not130 = icmp ugt i32 %i.ey, %i.eo
  br i1 %.not130, label %bb.an, label %.critedge134

bb.ae:                                            ; preds = %bb.ad
  %i.ez = icmp ugt i64 %i.co, 5000000000
  br i1 %i.ez, label %.critedge134.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fa = icmp eq i64 %i.co, 5000000000
  %i.fb = trunc i64 %.lcssa285 to i1
  %i.fc = or i1 %i.bl, %i.fb
  %or.cond223 = select i1 %i.fa, i1 %i.fc, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ag:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %13 = zext i64 %i.co to i128
  %14 = mul nuw nsw i128 %13, 1844674407370955162
  %15 = lshr i128 %14, 64                         ; 2 uses
  %i.fd = trunc i128 %15 to i32
  %i.fe = trunc i64 %i.co to i32
  %.neg127 = mul i32 %i.fd, -10
  %i.ff = add i32 %.neg127, %i.fe                 ; 3 uses
  %i.fg = add nsw i32 %.0187, -9                  ; 3 uses
  %i.fh = load ptr, ptr %4, align 8, !tbaa !338
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 9 ; 3 uses
  %i.fj = and i32 %i.fg, 1
  %.not.i142 = icmp eq i32 %i.fj, 0
  %16 = trunc nuw nsw i128 %15 to i64
  %i.fk = and i64 %16, 4294967295                 ; 2 uses
  br i1 %.not.i142, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fl = mul nuw nsw i64 %i.fk, 720575941
  %i.fm = lshr i64 %i.fl, 24
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %i.fo = lshr i64 %i.fn, 32                      ; 2 uses
  %i.fp = trunc nuw nsw i64 %i.fo to i8
  %i.fq = add nuw nsw i8 %i.fp, 48
  store i8 %i.fq, ptr %i.fi, align 1, !tbaa !232
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fr = mul nuw nsw i64 %i.fk, 450359963
  %i.fs = lshr i64 %i.fr, 20
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %i.fu = lshr i64 %i.ft, 32                      ; 2 uses
  %i.fv = shl nuw nsw i64 %i.fu, 1
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2
  store i16 %i.fx, ptr %i.fi, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3211 = phi i64 [ %i.ft, %bb.ai ], [ %i.fn, %bb.ah ] ; 2 uses
  %.2206.in = phi i64 [ %i.fu, %bb.ai ], [ %i.fo, %bb.ah ]
  %.0.i143 = phi i32 [ 2, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.fy = icmp samesign ult i32 %.0.i143, %i.fg
  br i1 %i.fy, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.aj
  %i.fz = zext nneg i32 %.0.i143 to i64
  %i.ga = zext nneg i32 %i.fg to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.gc, %bb.ak ]
  %indvars.iv.i145 = phi i64 [ %i.fz, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.ak ] ; 2 uses
  %i.gb = and i64 %.4, 4294967295
  %i.gc = mul nuw nsw i64 %i.gb, 100              ; 3 uses
  %i.gd = lshr i64 %i.gc, 32                      ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv.i145
  %i.gf = shl nuw nsw i64 %i.gd, 1
  %i.gg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2
  store i16 %i.gh, ptr %i.ge, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.gi = icmp samesign ult i64 %indvars.iv.next.i146, %i.ga
  br i1 %i.gi, label %bb.ak, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !5638

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.ak
  %i.gj = icmp samesign ult i32 %.0187, 18
  br i1 %i.gj, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.al

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.aj, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.gd, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.aj ]
  %.5214 = phi i64 [ %i.gc, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.aj ]
  %i.gk = trunc i64 %.5214 to i32                 ; 2 uses
  %i.gl = sub nuw nsw i32 17, %.0187
  %i.gm = zext nneg i32 %i.gl to i64              ; 2 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr @.str.1275, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !5642
  %i.gp = zext i16 %i.go to i32
  %i.gq = shl nuw i32 %i.gp, 16
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr @.str.1276, i64 %i.gm
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !5642
  %i.gt = zext i16 %i.gs to i32
  %i.gu = or disjoint i32 %i.gq, %i.gt
  %.not128 = icmp ugt i32 %i.gu, %i.gk
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.gv = lshr i32 %i.gk, 31
  %i.gw = icmp ne i32 %i.ff, 0
  %i.gx = or i1 %i.gw, %i.bl
  %i.gy = zext i1 %i.gx to i32
  %i.gz = or i32 %i.gy, %.3207215
  %i.ha = and i32 %i.gv, %i.gz
  %i.hb = trunc nuw i32 %i.ha to i1
  br i1 %i.hb, label %.critedge134.thread, label %.critedge136

bb.al:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.hc = icmp ugt i32 %i.ff, 5
  br i1 %i.hc, label %.critedge134.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hd = icmp eq i32 %i.ff, 5
  %i.he = trunc i64 %i.gd to i1
  %i.hf = or i1 %i.bl, %i.he
  %or.cond225 = select i1 %i.hd, i1 %i.hf, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.an:                                            ; preds = %.thread265
  %.1205264270 = trunc nsw i64 %.1205264270.in to i32
  %i.hg = lshr i32 %i.eo, 31
  %i.hh = or i64 %i.co, %i.bi
  %i.hi = icmp ne i64 %i.hh, 0
  %i.hj = zext i1 %i.hi to i32
  %i.hk = or i32 %.1205264270, %i.hj
  %i.hl = and i32 %i.hk, %i.hg
  %i.hm = trunc nuw i32 %i.hl to i1
  br i1 %i.hm, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.am, %bb.af, %.split217, %bb.ae, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.al
  %i.hn = load ptr, ptr %4, align 8, !tbaa !338
  %i.ho = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hp = getelementptr i8, ptr %i.hn, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 -1     ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !232
  %i.hs = add i8 %i.hr, 1
  store i8 %i.hs, ptr %i.hq, align 1, !tbaa !232
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread265, %bb.an
  %i.ht = load ptr, ptr %4, align 8, !tbaa !338
  %i.hu = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hv = getelementptr i8, ptr %i.ht, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 -1     ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !232
  %i.hy = add i8 %i.hx, 1
  store i8 %i.hy, ptr %i.hw, align 1, !tbaa !232
  %.not240 = icmp eq i32 %.0187, 1
  br i1 %.not240, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.hz = phi i64 [ %i.ho, %.critedge134.thread ], [ %i.hu, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.hz, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ia = load ptr, ptr %4, align 8, !tbaa !338
  %i.ib = and i64 %indvars.iv.next, 4294967295
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ib ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !232
  %i.ie = icmp sgt i8 %i.id, 57
  br i1 %i.ie, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ao, %.critedge134
  %i.if = phi i64 [ 1, %.critedge134 ], [ %i.hz, %bb.ao ], [ %i.hz, %.lr.ph ]
  %i.ig = load ptr, ptr %4, align 8, !tbaa !338   ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !232
  %i.ii = icmp sgt i8 %i.ih, 57
  br i1 %i.ii, label %bb.ap, label %.critedge136

bb.ao:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.ic, align 1, !tbaa !232
  %i.ij = load ptr, ptr %4, align 8, !tbaa !338
  %i.ik = getelementptr i8, ptr %i.ij, i64 %indvars.iv
  %i.il = getelementptr i8, ptr %i.ik, i64 -2     ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !232
  %i.in = add i8 %i.im, 1
  store i8 %i.in, ptr %i.il, align 1, !tbaa !232
  %i.io = trunc nuw i64 %indvars.iv to i32
  %i.ip = icmp sgt i32 %i.io, 2
  br i1 %i.ip, label %.lr.ph, label %.critedge, !llvm.loop !5639

bb.ap:                                            ; preds = %.critedge
  store i8 49, ptr %i.ig, align 1, !tbaa !232
  br i1 %i.d, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.iq = add nuw nsw i32 %.0187, 1
  %i.ir = load ptr, ptr %4, align 8, !tbaa !338
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.if
  store i8 48, ptr %i.is, align 1, !tbaa !232
  br label %.critedge136

bb.ar:                                            ; preds = %bb.ap
  %i.it = add nsw i32 %i.cn, 1
  store i32 %i.it, ptr %i.a, align 4, !tbaa !239
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.am, %bb.af, %.critedge, %bb.ar, %bb.aq, %bb.an
  %.1188 = phi i32 [ %i.iq, %bb.aq ], [ %.0187, %bb.ar ], [ %.0187, %.critedge ], [ %.0187, %bb.an ], [ 9, %bb.af ], [ 18, %bb.am ], [ %.0187, %.split217 ]
  %i.iu = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !339 ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.iu
  br i1 %i.ix, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge136
  %i.iy = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !260
  tail call void %i.iz(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.iu), !inline_history !5637
  %.pre.i148 = load i64, ptr %i.iv, align 8, !tbaa !339
  br label %bb.at

.thread219:                                       ; preds = %bb.o
  %i.ja = add nsw i32 %.0106, -1
  %i.jb = add nsw i32 %i.ja, %.neg125
  store i32 %i.jb, ptr %i.a, align 4, !tbaa !239
  br i1 %3, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.as, %.critedge136
  %i.jc = phi i64 [ %i.iw, %.critedge136 ], [ %.pre.i148, %bb.as ]
  %i.jd = tail call noundef i64 @llvm.umin.i64(i64 %i.iu, i64 %i.jc)
  %i.je = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !354
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_chrono_test.cc:bb.a
  %i.bei = icmp eq ptr %i.beh, %i.bdf
  br i1 %i.bei, label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i475, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i474

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i474: ; preds = %bb.mc
  %i.bej = load i64, ptr %i.bdf, align 8, !tbaa !232
  %i.bek = add i64 %i.bej, 1
  call void @_ZdlPvm(ptr noundef %i.beh, i64 noundef %i.bek) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i475

_ZN7testing8internal12CodeLocationD2Ev.exit8.i475: ; preds = %bb.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i474, %bb.mb
  %.pn.i476 = phi { ptr, i32 } [ %i.bef, %bb.mb ], [ %i.beg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i474 ], [ %i.beg, %bb.mc ]
  %i.bel = load ptr, ptr %3, align 8, !tbaa !229  ; 2 uses
  %i.bem = icmp eq ptr %i.bel, %i.bda
  br i1 %i.bem, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i478, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i477: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i475
  %i.ben = load i64, ptr %i.bda, align 8, !tbaa !232
  %i.beo = add i64 %i.ben, 1
  call void @_ZdlPvm(ptr noundef %i.bel, i64 noundef %i.beo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i478

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i478: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i475, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i477
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %common.resume

__cxx_global_var_init.1016.exit:                  ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i482, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i483
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  store ptr %i.bdw, ptr @_ZN29chrono_test_out_of_range_Test10test_info_E, align 8, !tbaa !6492
  %i.bep = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29chrono_test_out_of_range_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.beq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.beq, ptr %1, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i64 43, ptr %i.b, align 8, !tbaa !255
  %i.ber = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.ber, ptr %1, align 8, !tbaa !229
  %i.bes = load i64, ptr %i.b, align 8, !tbaa !255 ; 3 uses
  store i64 %i.bes, ptr %i.beq, align 8, !tbaa !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.ber, ptr noundef nonnull align 1 dereferenceable(43) @.str.2, i64 43, i1 false)
  %i.bet = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.bes, ptr %i.bet, align 8, !tbaa !230
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ber, i64 %i.bes
  store i8 0, ptr %i.beu, align 1, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %i.bev = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.bev, ptr %0, align 8, !tbaa !231
  %i.bew = load ptr, ptr %1, align 8, !tbaa !229  ; 2 uses
  %i.bex = load i64, ptr %i.bet, align 8, !tbaa !230 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.bex, ptr %i.a, align 8, !tbaa !255
  %i.bey = icmp ugt i64 %i.bex, 15
  br i1 %i.bey, label %.noexc.i.i.i501, label %._crit_edge.i.i.i.i488

.noexc.i.i.i501:                                  ; preds = %__cxx_global_var_init.1016.exit
  %i.bez = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5.i502 unwind label %bb.ml ; 2 uses

.noexc5.i502:                                     ; preds = %.noexc.i.i.i501
  store ptr %i.bez, ptr %0, align 8, !tbaa !229
  %i.bfa = load i64, ptr %i.a, align 8, !tbaa !255
  store i64 %i.bfa, ptr %i.bev, align 8, !tbaa !232
  br label %._crit_edge.i.i.i.i488

._crit_edge.i.i.i.i488:                           ; preds = %.noexc5.i502, %__cxx_global_var_init.1016.exit
  %i.bfb = phi ptr [ %i.bez, %.noexc5.i502 ], [ %i.bev, %__cxx_global_var_init.1016.exit ] ; 2 uses
  switch i64 %i.bex, label %bb.me [
    i64 1, label %bb.md
    i64 0, label %bb.mf
  ]

bb.md:                                            ; preds = %._crit_edge.i.i.i.i488
  %i.bfc = load i8, ptr %i.bew, align 1, !tbaa !232
  store i8 %i.bfc, ptr %i.bfb, align 1, !tbaa !232
  br label %bb.mf

bb.me:                                            ; preds = %._crit_edge.i.i.i.i488
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bfb, ptr align 1 %i.bew, i64 %i.bex, i1 false)
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %bb.md, %._crit_edge.i.i.i.i488
  %i.bfd = load i64, ptr %i.a, align 8, !tbaa !255 ; 2 uses
  %i.bfe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bfd, ptr %i.bfe, align 8, !tbaa !230
  %i.bff = load ptr, ptr %0, align 8, !tbaa !229
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 %i.bfd
  store i8 0, ptr %i.bfg, align 1, !tbaa !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bfh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 994, ptr %i.bfh, align 8, !tbaa !6490
  %i.bfi = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.mg unwind label %bb.mm

bb.mg:                                            ; preds = %bb.mf
  %i.bfj = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 994)
          to label %bb.mh unwind label %bb.mm

bb.mh:                                            ; preds = %bb.mg
  %i.bfk = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 994)
          to label %bb.mi unwind label %bb.mm

bb.mi:                                            ; preds = %bb.mh
  %i.bfl = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33
          to label %bb.mj unwind label %bb.mm     ; 2 uses

bb.mj:                                            ; preds = %bb.mi
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI31chrono_test_year_month_day_TestEE, i64 16), ptr %i.bfl, align 8, !tbaa !212
  %i.bfm = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_NS0_12CodeLocationEPKvPFvvES7_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1022, ptr noundef null, ptr noundef null, ptr nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.bfi, ptr noundef %i.bfj, ptr noundef %i.bfk, ptr noundef nonnull %i.bfl)
          to label %bb.mk unwind label %bb.mm

bb.mk:                                            ; preds = %bb.mj
  %i.bfn = load ptr, ptr %0, align 8, !tbaa !229  ; 2 uses
  %i.bfo = icmp eq ptr %i.bfn, %i.bev
  br i1 %i.bfo, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i497, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i496: ; preds = %bb.mk
  %i.bfp = load i64, ptr %i.bev, align 8, !tbaa !232
  %i.bfq = add i64 %i.bfp, 1
  call void @_ZdlPvm(ptr noundef %i.bfn, i64 noundef %i.bfq) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i497

_ZN7testing8internal12CodeLocationD2Ev.exit.i497: ; preds = %bb.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i496
  %i.bfr = load ptr, ptr %1, align 8, !tbaa !229  ; 2 uses
  %i.bfs = icmp eq ptr %i.bfr, %i.beq
  br i1 %i.bfs, label %__cxx_global_var_init.1021.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i498

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i498: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i497
  %i.bft = load i64, ptr %i.beq, align 8, !tbaa !232
  %i.bfu = add i64 %i.bft, 1
  call void @_ZdlPvm(ptr noundef %i.bfr, i64 noundef %i.bfu) #32
  br label %__cxx_global_var_init.1021.exit

bb.ml:                                            ; preds = %.noexc.i.i.i501
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i490

bb.mm:                                            ; preds = %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf
  %i.bfw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfx = load ptr, ptr %0, align 8, !tbaa !229  ; 2 uses
  %i.bfy = icmp eq ptr %i.bfx, %i.bev
  br i1 %i.bfy, label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i490, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i489

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i489: ; preds = %bb.mm
  %i.bfz = load i64, ptr %i.bev, align 8, !tbaa !232
  %i.bga = add i64 %i.bfz, 1
  call void @_ZdlPvm(ptr noundef %i.bfx, i64 noundef %i.bga) #32
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit8.i490

_ZN7testing8internal12CodeLocationD2Ev.exit8.i490: ; preds = %bb.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i489, %bb.ml
  %.pn.i491 = phi { ptr, i32 } [ %i.bfv, %bb.ml ], [ %i.bfw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i489 ], [ %i.bfw, %bb.mm ]
  %i.bgb = load ptr, ptr %1, align 8, !tbaa !229  ; 2 uses
  %i.bgc = icmp eq ptr %i.bgb, %i.beq
  br i1 %i.bgc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i493, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i492: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i490
  %i.bgd = load i64, ptr %i.beq, align 8, !tbaa !232
  %i.bge = add i64 %i.bgd, 1
  call void @_ZdlPvm(ptr noundef %i.bgb, i64 noundef %i.bge) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i493

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.i493: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit8.i490, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i492
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %common.resume

__cxx_global_var_init.1021.exit:                  ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i497, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i498
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  store ptr %i.bfm, ptr @_ZN31chrono_test_year_month_day_Test10test_info_E, align 8, !tbaa !6492
  %i.bgf = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN31chrono_test_year_month_day_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }

!llvm.module.flags = !{!183, !184, !185, !186}
!llvm.ident = !{!187}
!llvm.errno.tbaa = !{!192}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null, null, null}
!2 = distinct !{!2, !258}
!3 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEED2Ev, null}
!4 = distinct !{!4, !258}
!5 = distinct !{!5, !258}
!6 = distinct !{null, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null, null}
!9 = distinct !{null, null, null, null}
!10 = distinct !{null, null, null}
!11 = distinct !{null, null, null, null}
!12 = distinct !{null, null}
!13 = distinct !{null, null, null, null, null}
!14 = distinct !{!14, !258}
!15 = distinct !{null, null}
!16 = distinct !{!16, !258}
!17 = distinct !{null}
!18 = distinct !{null, null}
!19 = distinct !{null}
!20 = distinct !{null, null}
!21 = distinct !{null, null, null, null}
!22 = distinct !{!22, !258}
!23 = distinct !{null, null, null, null}
!24 = distinct !{null, null, null, null, null}
!25 = distinct !{null}
!26 = distinct !{null, null, null, null}
!27 = distinct !{null, null, null, null}
!28 = distinct !{null, null, null, null}
!29 = distinct !{!29, !258}
!30 = distinct !{null}
!31 = distinct !{null, null, null, null}
!32 = distinct !{null, null, null, null}
!33 = distinct !{null, null, null, null}
!34 = distinct !{null, null, null, null}
!35 = distinct !{null, null, null, null}
!36 = distinct !{null, null, null, null}
!37 = distinct !{null}
!38 = distinct !{null, null, null, null}
!39 = distinct !{null, null, null, null}
!40 = distinct !{null}
!41 = distinct !{null, null, null, null}
!42 = distinct !{null, null, null, null}
!43 = distinct !{null, null, null, null}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null}
!46 = distinct !{null, null, null, null}
!47 = distinct !{null, null, null, null}
!48 = distinct !{null}
!49 = distinct !{null, null, null, null}
!50 = distinct !{null, null, null, null}
!51 = distinct !{null, null, null, null}
!52 = distinct !{null, null, null, null}
!53 = distinct !{null, null, null, null, null}
!54 = distinct !{null, null, null, null, null, null}
!55 = distinct !{null, null, null, null}
!56 = distinct !{null, null, null, null}
!57 = distinct !{null, null, null, null, null}
!58 = distinct !{null, null, null, null, null, null}
!59 = distinct !{null, null, null, null}
!60 = distinct !{null, null, null, null}
!61 = distinct !{null, null, null, null, null}
!62 = distinct !{null, null, null, null, null, null}
!63 = distinct !{null, null, null, null}
!64 = distinct !{null, null, null, null}
!65 = distinct !{null}
!66 = distinct !{null, null, null, null, null}
!67 = distinct !{null, null, null, null, null, null}
!68 = distinct !{null, null, null, null}
!69 = distinct !{null, null, null, null}
!70 = distinct !{null}
!71 = distinct !{null, null, null, null, null}
!72 = distinct !{null, null, null, null, null, null}
!73 = distinct !{null, null, null, null}
!74 = distinct !{null, null, null, null}
!75 = distinct !{null, null, null, null}
!76 = distinct !{null, null, null, null}
!77 = distinct !{null, null, null, null}
!78 = distinct !{null, null, null, null}
!79 = distinct !{null}
!80 = distinct !{null, null, null, null}
!81 = distinct !{null, null, null, null}
!82 = distinct !{null, null, null, null}
!83 = distinct !{null, null, null, null}
!84 = distinct !{null, null, null, null}
!85 = distinct !{null, null, null, null}
!86 = distinct !{null, null, null, null}
!87 = distinct !{null, null, null, null}
!88 = distinct !{ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEElTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_, null, null}
!89 = distinct !{ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i, null, null}
!90 = distinct !{null, null, null, null, null}
!91 = distinct !{null, null, null, null, null, null}
!92 = distinct !{null, null, null, null}
!93 = distinct !{null, null, null, null}
!94 = distinct !{null, null, null, null}
!95 = distinct !{null, null, null, null}
!96 = distinct !{null, null, null}
!97 = distinct !{null, null, null, null}
!98 = distinct !{null, null, null, null}
!99 = distinct !{null, null, null, null}
!100 = distinct !{null}
!101 = distinct !{null}
!102 = distinct !{!102, !258}
!103 = distinct !{!103, !258}
!104 = distinct !{!104, !258}
!105 = distinct !{null, null, null, null}
!106 = distinct !{null, null, null}
!107 = distinct !{null}
!108 = distinct !{null}
!109 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!110 = distinct !{null, null, null, null, null, null, null, null, null, null}
!111 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!112 = distinct !{!112, !258}
!113 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!114 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!115 = distinct !{null, null, null, null}
!116 = distinct !{null, null, null, null}
!117 = distinct !{null, null, null, null, null}
!118 = distinct !{null, null, null, null, null, null}
!119 = distinct !{null, null, null, null}
!120 = distinct !{null, null, null, null}
!121 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!122 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!123 = distinct !{null, null, null, null, null}
!124 = distinct !{null, null, null, null, null, null}
!125 = distinct !{null, null, null, null}
!126 = distinct !{null, null, null, null}
!127 = distinct !{null, null, null, null, null, null, null, null, null, null, null}
!128 = distinct !{null, null, null, null, null}
!129 = distinct !{null, null, null, null, null, null}
!130 = distinct !{null, null, null, null}
!131 = distinct !{null, null, null, null}
!132 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!133 = distinct !{null, null, null, null}
end_hunk_1
