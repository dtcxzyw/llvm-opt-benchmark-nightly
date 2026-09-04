Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_fmt_format_tests?download=true
inline.NumInlined: 3116
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a

bb.n:                                             ; preds = %.lr.ph94, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55
  %.293 = phi i32 [ %.1.lcssa, %.lr.ph94 ], [ %i.en, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55 ]
  %i.ef = load i64, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  %i.eg = add i64 %i.ef, 1                        ; 3 uses
  %i.eh = load i64, ptr %i.am, align 8, !tbaa !148
  %i.ei = icmp ugt i64 %i.eg, %i.eh
  br i1 %i.ei, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

bb.o:                                             ; preds = %bb.n
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !149
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eg), !inline_history !38
  %.pre.i53 = load i64, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  %.pre2.i54 = add i64 %.pre.i53, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.n, %bb.o
  %.pre-phi.i52 = phi i64 [ %i.eg, %bb.n ], [ %.pre2.i54, %bb.o ]
  %i.ek = phi i64 [ %i.ef, %bb.n ], [ %.pre.i53, %bb.o ]
  %i.el = load ptr, ptr %3, align 8, !tbaa !150
  store i64 %.pre-phi.i52, ptr %i.aj, align 8, !tbaa !147
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 48, ptr %i.em, align 1, !tbaa !76
  %i.en = add i32 %.293, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !730

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eo = select i1 %.not88, i8 112, i8 80
  %i.ep = load i64, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  %i.eq = add i64 %i.ep, 1                        ; 3 uses
  %i.er = load i64, ptr %i.am, align 8, !tbaa !148
  %i.es = icmp ugt i64 %i.eq, %i.er
  br i1 %i.es, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.p:                                             ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !149
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eq), !inline_history !38
  %.pre.i57 = load i64, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.p
  %.pre-phi.i56 = phi i64 [ %i.eq, %._crit_edge ], [ %.pre2.i58, %bb.p ]
  %i.ev = phi i64 [ %i.ep, %._crit_edge ], [ %.pre.i57, %bb.p ]
  %i.ew = load ptr, ptr %3, align 8, !tbaa !150
  store i64 %.pre-phi.i56, ptr %i.aj, align 8, !tbaa !147
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 %i.eo, ptr %i.ex, align 1, !tbaa !76
  %i.ey = icmp slt i32 %i.j, 0
  %i.ez = load i64, ptr %i.aj, align 8, !tbaa !147 ; 3 uses
  %i.fa = add i64 %i.ez, 1                        ; 5 uses
  %i.fb = load i64, ptr %i.am, align 8, !tbaa !148
  %i.fc = icmp ugt i64 %i.fa, %i.fb               ; 2 uses
  br i1 %i.ey, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.r:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !149
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !38
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.q, %bb.r
  %.pre-phi.i60 = phi i64 [ %i.fa, %bb.q ], [ %.pre2.i62, %bb.r ]
  %i.ff = phi i64 [ %i.ez, %bb.q ], [ %.pre.i61, %bb.r ]
  %i.fg = load ptr, ptr %3, align 8, !tbaa !150
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !147
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 45, ptr %i.fh, align 1, !tbaa !76
  %i.fi = sub nsw i32 0, %i.j
  br label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !149
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !38
  %.pre.i65 = load i64, ptr %i.aj, align 8, !tbaa !147 ; 2 uses
  %.pre2.i66 = add i64 %.pre.i65, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67: ; preds = %bb.s, %bb.t
  %.pre-phi.i64 = phi i64 [ %i.fa, %bb.s ], [ %.pre2.i66, %bb.t ]
  %i.fl = phi i64 [ %i.ez, %bb.s ], [ %.pre.i65, %bb.t ]
  %i.fm = load ptr, ptr %3, align 8, !tbaa !150
  store i64 %.pre-phi.i64, ptr %i.aj, align 8, !tbaa !147
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 43, ptr %i.fn, align 1, !tbaa !76
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63
  %.0 = phi i32 [ %i.fi, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67 ] ; 3 uses
  %i.fo = or i32 %.0, 1
  %i.fp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = xor i32 %i.fp, 31
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !111
  %i.fu = zext nneg i32 %.0 to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = lshr i64 %i.fv, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.fx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::basic_fp", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !121
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !147  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !148
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !149
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !38
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !147 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !150
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !147
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !76
  br label %bb.bd

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !148  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !149
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !40
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !148
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !147
  %i.aa = load ptr, ptr %4, align 8, !tbaa !150
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bd

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
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
  %i.am = add nuw nsw i64 %i.ak, 4294967286
  %i.an = sub nuw nsw i32 -1063, %i.al
  %6 = and i64 %i.am, 4294967295
  %i.ao = shl i64 %i.ad, %6
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
  %i.ax = tail call { i64, i64 } @_ZN3fmt3v126detail9dragonbox16get_cached_powerEi(i32 noundef %i.ar) #26 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1
  %i.ba = zext i64 %i.aw to i128                  ; 2 uses
  %i.bb = zext i64 %i.az to i128
  %i.bc = mul nuw i128 %i.ba, %i.bb               ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = trunc nuw i128 %i.bd to i64
  %i.bf = trunc i128 %i.bc to i64
  %i.bg = zext i64 %i.ay to i128
  %i.bh = mul nuw i128 %i.ba, %i.bg
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = trunc nuw i128 %i.bi to i64
  %i.bk = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bf, i64 %i.bj) ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  %i.bm = extractvalue { i64, i1 } %i.bk, 0       ; 2 uses
  %i.bn = zext i1 %i.bl to i64
  %i.bo = add nuw i64 %i.bn, %i.be                ; 3 uses
  %i.bp = icmp ne i64 %i.bm, 0                    ; 4 uses
  %i.bq = icmp ugt i64 %i.bo, 999999999999999999  ; 2 uses
  %i.br = mul nuw i64 %i.bo, 10
  %.0107 = select i1 %i.bq, i64 %i.bo, i64 %i.br  ; 3 uses
  %.0106 = select i1 %i.bq, i32 19, i32 18        ; 5 uses
  br i1 %i.d, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bs = add nsw i32 %.neg125, %.0106            ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  %i.bu = sub nuw nsw i32 2147483647, %i.bs
  %i.bv = icmp sgt i32 %1, %i.bu
  %or.cond.i = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond.i, label %bb.l, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.l:                                             ; preds = %bb.k
  %i.bw = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull @.str.28)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bw) #26
  resume { ptr, i32 } %i.bx

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.k
  %i.by = add nsw i32 %i.bs, %1
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %bb.j
  %.0187 = phi i32 [ %i.by, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %bb.j ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.p, label %.thread219

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp slt i32 %.0187, 1
  br i1 %i.bz, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ca = add nsw i32 %.neg125, %.0106
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !71
  %i.cb = icmp slt i32 %.0187, 0
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !147
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !148
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !149
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !40
  %.pre.i140 = load i64, ptr %i.cd, align 8, !tbaa !148
  %i.ci = icmp ne i64 %.pre.i140, 0
  %i.cj = zext i1 %i.ci to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.s, %bb.t
  %i.ck = phi i64 [ 1, %bb.s ], [ %i.cj, %bb.t ]
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !147
  %i.cm = zext i1 %i.bp to i64
  %i.cn = or i64 %.0107, %i.cm
  %i.co = icmp ugt i64 %i.cn, 5000000000000000000
  %i.cp = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  br i1 %i.co, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.cp, align 1, !tbaa !76
  br label %.thread

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.cp, align 1, !tbaa !76
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.cq = sub nuw nsw i32 %.0106, %.0187
  %i.cr = add nsw i32 %i.cq, %.neg125             ; 2 uses
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !71
  %i.cs = zext i64 %.0107 to i128
  %i.ct = mul nuw nsw i128 %i.cs, 7922816251426433760
  %sum.shift = lshr i128 %i.ct, 96
  %i.cu = trunc nuw nsw i128 %sum.shift to i64    ; 3 uses
  %.neg126 = mul i64 %i.cu, -10000000000
  %i.cv = add i64 %.neg126, %.0107                ; 5 uses
  %i.cw = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.cx = load ptr, ptr %4, align 8, !tbaa !150   ; 6 uses
  %i.cy = and i32 %i.cw, 1
  %.not.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = mul nuw nsw i64 %i.cu, 720575941
  %i.da = lshr i64 %i.cz, 24
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %i.dc = lshr i64 %i.db, 32                      ; 2 uses
  %i.dd = trunc nuw nsw i64 %i.dc to i8
  %i.de = add nuw nsw i8 %i.dd, 48
  store i8 %i.de, ptr %i.cx, align 1, !tbaa !76
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.df = mul nuw nsw i64 %i.cu, 450359963
  %i.dg = lshr i64 %i.df, 20
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %i.di = lshr i64 %i.dh, 32                      ; 2 uses
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2
  store i16 %i.dl, ptr %i.cx, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0208 = phi i64 [ %i.dh, %bb.y ], [ %i.db, %bb.x ] ; 2 uses
  %.0204.in = phi i64 [ %i.di, %bb.y ], [ %i.dc, %bb.x ]
  %.0.i = phi i32 [ 2, %bb.y ], [ 1, %bb.x ]      ; 2 uses
  %i.dm = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.dm, label %.lr.ph.i, label %.thread265

.lr.ph.i:                                         ; preds = %bb.z
  %i.dn = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.do = zext nneg i32 %i.cw to i64              ; 3 uses
  %i.dp = and i64 %.0208, 4294967295
  %i.dq = mul nuw nsw i64 %i.dp, 100              ; 3 uses
  %i.dr = lshr i64 %i.dq, 32                      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dn
  %i.dt = shl nuw nsw i64 %i.dr, 1
  %i.du = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2
  store i16 %i.dv, ptr %i.ds, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.dn, 2   ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next.i, %i.do
  br i1 %i.dw, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dx = and i64 %i.dq, 4294967292
  %i.dy = mul nuw nsw i64 %i.dx, 100              ; 3 uses
  %i.dz = lshr i64 %i.dy, 32                      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i
  %i.eb = shl nuw nsw i64 %i.dz, 1
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2
  store i16 %i.ed, ptr %i.ea, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.dn, 4 ; 2 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next.i.1, %i.do
  br i1 %i.ee, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ef = and i64 %i.dy, 4294967280
  %i.eg = mul nuw nsw i64 %i.ef, 100              ; 3 uses
  %i.eh = lshr i64 %i.eg, 32                      ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv.next.i.1
  %i.ej = shl nuw nsw i64 %i.eh, 1
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2
  store i16 %i.el, ptr %i.ei, align 1
end_hunk_0
