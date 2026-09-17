Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CastExpr?download=true
inline.NumInlined: 87487
inline.NumDeleted: 10544
loop-unroll.NumCompletelyUnrolled: 4850
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 4940
begin_hunk_0_@_ZN3fmt3v116detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56: ; preds = %bb.m, %bb.n
  %.pre-phi.i53 = phi i64 [ %i.ei, %bb.m ], [ %.pre2.i55, %bb.n ]
  %i.em = phi i64 [ %i.eh, %bb.m ], [ %.pre.i54, %bb.n ]
  %i.en = load ptr, ptr %3, align 8, !tbaa !826
  store i64 %.pre-phi.i53, ptr %i.aj, align 8, !tbaa !827
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  store i8 48, ptr %i.eo, align 1, !tbaa !456
  %i.ep = add i32 %.297, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.ep, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !23706

._crit_edge:                                      ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56, %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eq = select i1 %.not92, i8 112, i8 80
  %i.er = load i64, ptr %i.aj, align 8, !tbaa !827 ; 2 uses
  %i.es = add i64 %i.er, 1                        ; 3 uses
  %i.et = load i64, ptr %i.am, align 8, !tbaa !828
  %i.eu = icmp ugt i64 %i.es, %i.et
  br i1 %i.eu, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61

bb.o:                                             ; preds = %._crit_edge
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !829
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.es), !inline_history !183
  %.pre.i59 = load i64, ptr %i.aj, align 8, !tbaa !827 ; 2 uses
  %.pre2.i60 = add i64 %.pre.i59, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61: ; preds = %._crit_edge, %bb.o
  %.pre-phi.i58 = phi i64 [ %i.es, %._crit_edge ], [ %.pre2.i60, %bb.o ]
  %i.ex = phi i64 [ %i.er, %._crit_edge ], [ %.pre.i59, %bb.o ]
  %i.ey = load ptr, ptr %3, align 8, !tbaa !826
  store i64 %.pre-phi.i58, ptr %i.aj, align 8, !tbaa !827
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 %i.eq, ptr %i.ez, align 1, !tbaa !456
  %i.fa = icmp slt i32 %i.j, 0
  %i.fb = load i64, ptr %i.aj, align 8, !tbaa !827 ; 3 uses
  %i.fc = add i64 %i.fb, 1                        ; 5 uses
  %i.fd = load i64, ptr %i.am, align 8, !tbaa !828
  %i.fe = icmp ugt i64 %i.fc, %i.fd               ; 2 uses
  br i1 %i.fa, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61
  br i1 %i.fe, label %bb.q, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66

bb.q:                                             ; preds = %bb.p
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !829
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fc), !inline_history !183
  %.pre.i64 = load i64, ptr %i.aj, align 8, !tbaa !827 ; 2 uses
  %.pre2.i65 = add i64 %.pre.i64, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66: ; preds = %bb.p, %bb.q
  %.pre-phi.i63 = phi i64 [ %i.fc, %bb.p ], [ %.pre2.i65, %bb.q ]
  %i.fh = phi i64 [ %i.fb, %bb.p ], [ %.pre.i64, %bb.q ]
  %i.fi = load ptr, ptr %3, align 8, !tbaa !826
  store i64 %.pre-phi.i63, ptr %i.aj, align 8, !tbaa !827
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 45, ptr %i.fj, align 1, !tbaa !456
  %i.fk = sub nsw i32 0, %i.j
  br label %bb.t

bb.r:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61
  br i1 %i.fe, label %bb.s, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71

bb.s:                                             ; preds = %bb.r
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !829
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fc), !inline_history !183
  %.pre.i69 = load i64, ptr %i.aj, align 8, !tbaa !827 ; 2 uses
  %.pre2.i70 = add i64 %.pre.i69, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71: ; preds = %bb.r, %bb.s
  %.pre-phi.i68 = phi i64 [ %i.fc, %bb.r ], [ %.pre2.i70, %bb.s ]
  %i.fn = phi i64 [ %i.fb, %bb.r ], [ %.pre.i69, %bb.s ]
  %i.fo = load ptr, ptr %3, align 8, !tbaa !826
  store i64 %.pre-phi.i68, ptr %i.aj, align 8, !tbaa !827
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn
  store i8 43, ptr %i.fp, align 1, !tbaa !456
  br label %bb.t

bb.t:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66
  %.0 = phi i32 [ %i.fk, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66 ], [ %i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71 ] ; 3 uses
  %i.fq = or i32 %.0, 1
  %i.fr = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fq, i1 true)
  %i.fs = xor i32 %i.fr, 31
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !450
  %i.fw = zext nneg i32 %.0 to i64
  %i.fx = add i64 %i.fv, %i.fw
  %i.fy = lshr i64 %i.fx, 32
  %i.fz = trunc nuw i64 %i.fy to i32
  %i.ga = call ptr @_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.fz) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v11::detail::basic_fp.5043", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !811
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !827  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !828
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !829
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !183
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !827 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !826
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !827
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !456
  br label %bb.bd

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !828  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !829
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !23707
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !828
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !827
  %i.aa = load ptr, ptr %4, align 8, !tbaa !826
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bd

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
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
  %i.aw = shl i64 %.0109, %i.av                   ; 2 uses
  %i.ax = tail call { i64, i64 } @_ZN3fmt3v116detail9dragonbox16get_cached_powerEi(i32 noundef %i.ar) #39 ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1
  %i.ba = zext i64 %i.aw to i128
  %i.bb = zext i64 %i.az to i128
  %i.bc = mul nuw i128 %i.ba, %i.bb               ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = trunc nuw i128 %i.bd to i64
  %i.bf = trunc i128 %i.bc to i64
  %6 = tail call noundef i64 @llvm.umulh.i64(i64 %i.aw, i64 %i.ay)
  %i.bg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bf, i64 %6) ; 2 uses
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
  br i1 %or.cond.i, label %bb.l, label %_ZN3fmt3v116detail16adjust_precisionERii.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 16) #39 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull @.str.93)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bs) #39
  resume { ptr, i32 } %i.bt

_ZN3fmt3v116detail16adjust_precisionERii.exit:    ; preds = %bb.k
  %i.bu = add nsw i32 %i.bo, %1
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v116detail16adjust_precisionERii.exit, %bb.j
  %.0187 = phi i32 [ %i.bu, %_ZN3fmt3v116detail16adjust_precisionERii.exit ], [ %1, %bb.j ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.p, label %.thread219

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp slt i32 %.0187, 1
  br i1 %i.bv, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bw = add nsw i32 %.neg125, %.0106
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !520
  %i.bx = icmp slt i32 %.0187, 0
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !827
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !828
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !829
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !23707
  %.pre.i140 = load i64, ptr %i.bz, align 8, !tbaa !828
  %i.ce = icmp ne i64 %.pre.i140, 0
  %i.cf = zext i1 %i.ce to i64
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.s, %bb.t
  %i.cg = phi i64 [ 1, %bb.s ], [ %i.cf, %bb.t ]
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !827
  %i.ci = zext i1 %i.bl to i64
  %i.cj = or i64 %.0107, %i.ci
  %i.ck = icmp ugt i64 %i.cj, 5000000000000000000
  %i.cl = load ptr, ptr %4, align 8, !tbaa !826   ; 2 uses
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.cl, align 1, !tbaa !456
  br label %.thread

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.cl, align 1, !tbaa !456
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.cm = sub nuw nsw i32 %.0106, %.0187
  %i.cn = add nsw i32 %i.cm, %.neg125             ; 2 uses
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !520
  %7 = tail call noundef i64 @llvm.umulh.i64(i64 %.0107, i64 7922816251426433760)
  %8 = lshr i64 %7, 32                            ; 3 uses
  %.neg126 = mul i64 %8, -10000000000
  %i.co = add i64 %.neg126, %.0107                ; 5 uses
  %i.cp = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.cq = load ptr, ptr %4, align 8, !tbaa !826   ; 6 uses
  %i.cr = and i32 %i.cp, 1
  %.not.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = mul nuw nsw i64 %8, 720575941
  %i.ct = lshr i64 %i.cs, 24
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %i.cv = lshr i64 %i.cu, 32                      ; 2 uses
  %i.cw = trunc nuw nsw i64 %i.cv to i8
  %i.cx = add nuw nsw i8 %i.cw, 48
  store i8 %i.cx, ptr %i.cq, align 1, !tbaa !456
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cy = mul nuw nsw i64 %8, 450359963
  %i.cz = lshr i64 %i.cy, 20
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %i.db = lshr i64 %i.da, 32                      ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 1
  %i.dd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.dc
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
  %i.dn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2
  store i16 %i.do, ptr %i.dl, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.dg, 2   ; 2 uses
  %i.dp = icmp samesign ult i64 %indvars.iv.next.i, %i.dh
  br i1 %i.dp, label %bb.aa, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dq = and i64 %i.dj, 4294967292
  %i.dr = mul nuw nsw i64 %i.dq, 100              ; 3 uses
  %i.ds = lshr i64 %i.dr, 32                      ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i
  %i.du = shl nuw nsw i64 %i.ds, 1
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2
  store i16 %i.dw, ptr %i.dt, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.dg, 4 ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next.i.1, %i.dh
  br i1 %i.dx, label %bb.ab, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dy = and i64 %i.dr, 4294967280
  %i.dz = mul nuw nsw i64 %i.dy, 100              ; 3 uses
  %i.ea = lshr i64 %i.dz, 32                      ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i.1
  %i.ec = shl nuw nsw i64 %i.ea, 1
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2
  store i16 %i.ee, ptr %i.eb, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.dg, 6 ; 2 uses
  %i.ef = icmp samesign ult i64 %indvars.iv.next.i.2, %i.dh
  br i1 %i.ef, label %bb.ac, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eg = and i64 %i.dz, 4294967232
  %i.eh = mul nuw nsw i64 %i.eg, 100              ; 2 uses
  %i.ei = lshr i64 %i.eh, 32                      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i.2
  %i.ek = shl nuw nsw i64 %i.ei, 1
  %i.el = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2
  store i16 %i.em, ptr %i.ej, align 1
  br label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.lcssa286 = phi i64 [ %i.dj, %.lr.ph.i ], [ %i.dr, %bb.aa ], [ %i.dz, %bb.ab ], [ %i.eh, %bb.ac ]
  %.lcssa285 = phi i64 [ %i.dk, %.lr.ph.i ], [ %i.ds, %bb.aa ], [ %i.ea, %bb.ab ], [ %i.ei, %bb.ac ] ; 2 uses
  %i.en = icmp samesign ult i32 %.0187, 10
  br i1 %i.en, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ae, label %.thread265

.thread265:                                       ; preds = %bb.z, %bb.ad
  %.2210262271 = phi i64 [ %.lcssa286, %bb.ad ], [ %.0208, %bb.z ]
  %.1205264270.in = phi i64 [ %.lcssa285, %bb.ad ], [ %.0204.in, %bb.z ]
  %i.eo = trunc i64 %.2210262271 to i32           ; 2 uses
  %i.ep = sub nuw nsw i32 8, %i.cp
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @.str.239, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !23712
  %.not130 = icmp ugt i32 %i.es, %i.eo
  br i1 %.not130, label %bb.an, label %.critedge134

bb.ae:                                            ; preds = %bb.ad
  %i.et = icmp ugt i64 %i.co, 5000000000
  br i1 %i.et, label %.critedge134.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eu = icmp eq i64 %i.co, 5000000000
  %i.ev = trunc i64 %.lcssa285 to i1
  %i.ew = or i1 %i.bl, %i.ev
  %or.cond223 = select i1 %i.eu, i1 %i.ew, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ag:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %9 = tail call noundef i64 @llvm.umulh.i64(i64 %i.co, i64 1844674407370955162) ; 2 uses
  %i.ex = trunc i64 %9 to i32
  %i.ey = trunc i64 %i.co to i32
  %.neg127 = mul i32 %i.ex, -10
  %i.ez = add i32 %.neg127, %i.ey                 ; 3 uses
  %i.fa = add nsw i32 %.0187, -9                  ; 3 uses
  %i.fb = load ptr, ptr %4, align 8, !tbaa !826
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 9 ; 3 uses
  %i.fd = and i32 %i.fa, 1
  %.not.i142 = icmp eq i32 %i.fd, 0
  %i.fe = and i64 %9, 4294967295                  ; 2 uses
  br i1 %.not.i142, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ff = mul nuw nsw i64 %i.fe, 720575941
  %i.fg = lshr i64 %i.ff, 24
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %i.fi = lshr i64 %i.fh, 32                      ; 2 uses
  %i.fj = trunc nuw nsw i64 %i.fi to i8
  %i.fk = add nuw nsw i8 %i.fj, 48
  store i8 %i.fk, ptr %i.fc, align 1, !tbaa !456
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fl = mul nuw nsw i64 %i.fe, 450359963
  %i.fm = lshr i64 %i.fl, 20
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %i.fo = lshr i64 %i.fn, 32                      ; 2 uses
  %i.fp = shl nuw nsw i64 %i.fo, 1
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2
  store i16 %i.fr, ptr %i.fc, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3211 = phi i64 [ %i.fn, %bb.ai ], [ %i.fh, %bb.ah ] ; 2 uses
  %.2206.in = phi i64 [ %i.fo, %bb.ai ], [ %i.fi, %bb.ah ]
  %.0.i143 = phi i32 [ 2, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.fs = icmp samesign ult i32 %.0.i143, %i.fa
  br i1 %i.fs, label %.lr.ph.i144, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.aj
  %i.ft = zext nneg i32 %.0.i143 to i64
  %i.fu = zext nneg i32 %i.fa to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.fw, %bb.ak ]
  %indvars.iv.i145 = phi i64 [ %i.ft, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.ak ] ; 2 uses
  %i.fv = and i64 %.4, 4294967295
  %i.fw = mul nuw nsw i64 %i.fv, 100              ; 3 uses
  %i.fx = lshr i64 %i.fw, 32                      ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv.i145
  %i.fz = shl nuw nsw i64 %i.fx, 1
  %i.ga = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2
  store i16 %i.gb, ptr %i.fy, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.gc = icmp samesign ult i64 %indvars.iv.next.i146, %i.fu
  br i1 %i.gc, label %bb.ak, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !23708

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.ak
  %i.gd = icmp samesign ult i32 %.0187, 18
  br i1 %i.gd, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.al

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.aj, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.fx, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.aj ]
  %.5214 = phi i64 [ %i.fw, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.aj ]
  %i.ge = trunc i64 %.5214 to i32                 ; 2 uses
  %i.gf = sub nuw nsw i32 17, %.0187
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr @.str.239, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !23712
  %.not128 = icmp ugt i32 %i.gi, %i.ge
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.gj = lshr i32 %i.ge, 31
  %i.gk = icmp ne i32 %i.ez, 0
  %i.gl = or i1 %i.gk, %i.bl
  %i.gm = zext i1 %i.gl to i32
  %i.gn = or i32 %i.gm, %.3207215
  %i.go = and i32 %i.gj, %i.gn
  %i.gp = trunc nuw i32 %i.go to i1
  br i1 %i.gp, label %.critedge134.thread, label %.critedge136

bb.al:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.gq = icmp ugt i32 %i.ez, 5
  br i1 %i.gq, label %.critedge134.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gr = icmp eq i32 %i.ez, 5
  %i.gs = trunc i64 %i.fx to i1
  %i.gt = or i1 %i.bl, %i.gs
  %or.cond225 = select i1 %i.gr, i1 %i.gt, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.an:                                            ; preds = %.thread265
  %.1205264270 = trunc nsw i64 %.1205264270.in to i32
  %i.gu = lshr i32 %i.eo, 31
  %i.gv = or i64 %i.co, %i.bi
  %i.gw = icmp ne i64 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  %i.gy = or i32 %.1205264270, %i.gx
  %i.gz = and i32 %i.gy, %i.gu
  %i.ha = trunc nuw i32 %i.gz to i1
  br i1 %i.ha, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.am, %bb.af, %.split217, %bb.ae, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.al
  %i.hb = load ptr, ptr %4, align 8, !tbaa !826
  %i.hc = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hb, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 -1     ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !456
  %i.hg = add i8 %i.hf, 1
  store i8 %i.hg, ptr %i.he, align 1, !tbaa !456
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread265, %bb.an
  %i.hh = load ptr, ptr %4, align 8, !tbaa !826
  %i.hi = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hh, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 -1     ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !456
  %i.hm = add i8 %i.hl, 1
  store i8 %i.hm, ptr %i.hk, align 1, !tbaa !456
  %.not240 = icmp eq i32 %.0187, 1
  br i1 %.not240, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.hn = phi i64 [ %i.hc, %.critedge134.thread ], [ %i.hi, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.hn, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ho = load ptr, ptr %4, align 8, !tbaa !826
  %i.hp = and i64 %indvars.iv.next, 4294967295
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !456
  %i.hs = icmp sgt i8 %i.hr, 57
  br i1 %i.hs, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ao, %.critedge134
  %i.ht = phi i64 [ 1, %.critedge134 ], [ %i.hn, %bb.ao ], [ %i.hn, %.lr.ph ]
  %i.hu = load ptr, ptr %4, align 8, !tbaa !826   ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !456
  %i.hw = icmp sgt i8 %i.hv, 57
  br i1 %i.hw, label %bb.ap, label %.critedge136

bb.ao:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.hq, align 1, !tbaa !456
  %i.hx = load ptr, ptr %4, align 8, !tbaa !826
  %i.hy = getelementptr i8, ptr %i.hx, i64 %indvars.iv
  %i.hz = getelementptr i8, ptr %i.hy, i64 -2     ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !456
  %i.ib = add i8 %i.ia, 1
  store i8 %i.ib, ptr %i.hz, align 1, !tbaa !456
  %i.ic = trunc nuw i64 %indvars.iv to i32
  %i.id = icmp sgt i32 %i.ic, 2
  br i1 %i.id, label %.lr.ph, label %.critedge, !llvm.loop !23709

bb.ap:                                            ; preds = %.critedge
  store i8 49, ptr %i.hu, align 1, !tbaa !456
  br i1 %i.d, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ie = add nuw nsw i32 %.0187, 1
  %i.if = load ptr, ptr %4, align 8, !tbaa !826
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ht
  store i8 48, ptr %i.ig, align 1, !tbaa !456
  br label %.critedge136

bb.ar:                                            ; preds = %bb.ap
  %i.ih = add nsw i32 %i.cn, 1
  store i32 %i.ih, ptr %i.a, align 4, !tbaa !520
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.am, %bb.af, %.critedge, %bb.ar, %bb.aq, %bb.an
  %.1188 = phi i32 [ %i.ie, %bb.aq ], [ %.0187, %bb.ar ], [ %.0187, %.critedge ], [ %.0187, %bb.an ], [ 9, %bb.af ], [ 18, %bb.am ], [ %.0187, %.split217 ]
  %i.ii = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !828 ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.ii
  br i1 %i.il, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge136
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !829
  tail call void %i.in(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ii), !inline_history !23707
  %.pre.i148 = load i64, ptr %i.ij, align 8, !tbaa !828
  br label %bb.at

.thread219:                                       ; preds = %bb.o
  %i.io = add nsw i32 %.0106, -1
  %i.ip = add nsw i32 %i.io, %.neg125
  store i32 %i.ip, ptr %i.a, align 4, !tbaa !520
  br i1 %3, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.as, %.critedge136
  %i.iq = phi i64 [ %i.ik, %.critedge136 ], [ %.pre.i148, %bb.as ]
  %i.ir = tail call noundef i64 @llvm.umin.i64(i64 %i.ii, i64 %i.iq)
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ir, ptr %i.is, align 8, !tbaa !827
  br label %.thread

bb.au:                                            ; preds = %.thread219
  %i.it = fptrunc double %0 to float
  %i.iu = bitcast float %i.it to i32              ; 2 uses
  %i.iv = and i32 %i.iu, 8388607                  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec4ExprD2Ev:bb.a

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #39
  br label %_ZNSt12__shared_ptrIN8facebook5velox4exec14VectorFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox4exec14VectorFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev.exit26, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i29, %bb.aq
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !454 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox4exec14VectorFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !456
  %i.fk = add i64 %i.fj, 1
  tail call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox4exec14VectorFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !741 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !752 ; 2 uses
  %.not4.i.i.i31 = icmp eq ptr %i.fm, %i.fo
  br i1 %.not4.i.i.i31, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i
  %.05.i.i.i33 = phi ptr [ %i.gg, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i33, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !513 ; 8 uses
  %.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i.i34, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.fr, align 8, !tbaa !518
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !519
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !334
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  tail call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #39, !inline_history !277
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !334
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  tail call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #39, !inline_history !277
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !456
  %.not.i.i.i.i.i.i.i.i35 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i.i.i35, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !520
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36

bb.av:                                            ; preds = %bb.at
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i.i.i.i37 = phi i32 [ %i.fu, %bb.au ], [ %i.ge, %bb.av ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i37, 1
  br i1 %i.gf, label %bb.aw, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i, !prof !521

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #39
  br label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i: ; preds = %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i36, %bb.as, %.lr.ph.i.i.i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i33, i64 16 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.gg, %i.fo
  br i1 %.not.i.i.i38, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i32, !llvm.loop !190

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox4exec4ExprEEEvPT_.exit.i.i.i
  %.pr.i39 = load ptr, ptr %i.fl, align 8, !tbaa !741
  br label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gh = phi ptr [ %.pr.i39, %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i40 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i1.i40, label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !6902
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gm) #49
  br label %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox4exec4ExprEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ax
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !513 ; 8 uses
  %.not.i.i41 = icmp eq ptr %i.go, null
  br i1 %.not.i.i41, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 4 uses
  %i.gq = load atomic i64, ptr %i.gp acquire, align 8 ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 4294967297
  %i.gs = trunc i64 %i.gq to i32                  ; 2 uses
  br i1 %i.gr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.gp, align 8, !tbaa !518
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 12
  store i32 0, ptr %i.gt, align 4, !tbaa !519
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !334
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  tail call void %i.gw(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #39, !inline_history !1
  %i.gx = load ptr, ptr %i.go, align 8, !tbaa !334
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8
  tail call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #39, !inline_history !1
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ha = load i8, ptr @__libc_single_threaded, align 1, !tbaa !456
  %.not.i.i.i42 = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i42, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hb = add nsw i32 %i.gs, -1
  store i32 %i.hb, ptr %i.gp, align 8, !tbaa !520
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

bb.bc:                                            ; preds = %bb.ba
  %i.hc = atomicrmw volatile add ptr %i.gp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i44 = phi i32 [ %i.gs, %bb.bb ], [ %i.hc, %bb.bc ]
  %i.hd = icmp eq i32 %.0.i.i.i.i44, 1
  br i1 %i.hd, label %bb.bd, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !521

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.go) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN8facebook5velox4exec4ExprEESaIS5_EED2Ev.exit, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43, %bb.bd
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec11SpecialFormD0Ev(ptr noundef nonnull align 8 dereferenceable(482) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox4exec4ExprD2Ev(ptr noundef nonnull align 8 dead_on_return(482) dereferenceable(482) %0) #39
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 488) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox4exec4Expr15evalSpecialFormERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEE(ptr noundef nonnull align 8 dereferenceable(482) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox4exec4Expr15evalSpecialFormERKNS0_17SelectivityVectorERNS1_7EvalCtxERSt10shared_ptrINS0_10BaseVectorEEE18veloxCheckFailArgs) #47
  unreachable
}

declare void @_ZNK8facebook5velox4exec4Expr8toStringB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(482), i1 noundef zeroext) unnamed_addr #4

declare void @_ZNK8facebook5velox4exec4Expr5toSqlB5cxx11EPSt6vectorISt10shared_ptrINS0_10BaseVectorEESaIS6_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(482), ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshr.i64(i64, i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #45

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i1(i1, i1) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8, i8) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16, i16) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i128(i128, i128) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.vector.reduce.add.v2i128(<2 x i128>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nounwind memory(none) }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #30 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #32 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #34 = { nofree nounwind }
attributes #35 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #38 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #39 = { nounwind }
attributes #40 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #43 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #44 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { noreturn }
attributes #48 = { noreturn nounwind }
attributes #49 = { builtin nounwind }
attributes #50 = { builtin allocsize(0) }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { allocsize(0) }
attributes #53 = { cold noreturn nounwind }
attributes #54 = { nounwind allocsize(0) }
attributes #55 = { cold }

!llvm.module.flags = !{!278, !279}
!llvm.ident = !{!280}
!llvm.errno.tbaa = !{!285}

!0 = distinct !{!0, !449}
!1 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{null}
!4 = distinct !{null, null}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox8TimeTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!9 = distinct !{null}
!10 = distinct !{null, null, null, null}
!11 = distinct !{null}
!12 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec10EvalErrorsELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!13 = distinct !{ptr @_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!14 = distinct !{!14, !449}
!15 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!16 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4exec12CastOperatorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!17 = distinct !{!17, !449}
!18 = distinct !{!18, !449}
!19 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE8EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!20 = distinct !{!20, !449}
!21 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec15PrestoCastHooksELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!22 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec9CastHooksELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!23 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE7EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!24 = distinct !{!24, !449}
!25 = distinct !{!25, !449}
!26 = distinct !{!26, !449}
!27 = distinct !{!27, !449}
!28 = distinct !{null, null, null}
!29 = distinct !{null, null, null}
!30 = distinct !{!30, !449}
!31 = distinct !{null, null}
!32 = distinct !{!32, !449}
!33 = distinct !{null, null, null}
!34 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!35 = distinct !{null}
!36 = distinct !{null}
!37 = distinct !{ptr @_ZN8facebook5velox14VeloxExceptionD2Ev, null, null, null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = distinct !{null}
!49 = distinct !{null}
!50 = distinct !{!50, !449}
!51 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!52 = distinct !{!52, !449}
!53 = distinct !{!53, !449}
!54 = distinct !{!54, !449}
!55 = distinct !{!55, !449}
!56 = distinct !{!56, !449}
!57 = distinct !{!57, !449}
!58 = distinct !{!58, !449}
!59 = distinct !{!59, !449}
!60 = distinct !{!60, !449}
!61 = distinct !{!61, !449}
!62 = distinct !{!62, !449}
!63 = distinct !{!63, !449}
!64 = distinct !{!64, !449}
!65 = distinct !{!65, !449}
!66 = distinct !{!66, !449}
!67 = distinct !{!67, !449}
!68 = distinct !{!68, !449}
!69 = distinct !{!69, !449}
end_hunk_1
