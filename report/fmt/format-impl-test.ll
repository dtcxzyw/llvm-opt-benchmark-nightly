Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-impl-test?download=true
inline.NumInlined: 4849
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_:bb.a
  %i.m = ashr i32 %i.l, 19
  %i.n = add nsw i32 %i.m, %i.f                   ; 2 uses
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.o
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 4680
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !97 ; 5 uses
  %i.q = lshr i64 %.sroa.2.0.copyload.i, 54
  %i.r = sub nuw i64 %.sroa.2.0.copyload.i, %i.q
  %i.s = sub nsw i32 11, %i.n
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.r, %i.t
  %i.v = lshr i64 %.sroa.2.0.copyload.i, 53
  %i.w = add i64 %i.v, %.sroa.2.0.copyload.i
  %i.x = lshr i64 %i.w, %i.t                      ; 3 uses
  %i.y = and i32 %i.f, -2
  %i.z = icmp ne i32 %i.y, 2
  %i.aa = zext i1 %i.z to i64
  %spec.select.i = add i64 %i.u, %i.aa            ; 2 uses
  %i.ab = udiv i64 %i.x, 10                       ; 3 uses
  %i.ac = mul nuw i64 %i.ab, 10
  %.not.i = icmp ult i64 %i.ac, %spec.select.i
  br i1 %.not.i, label %bb.n, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit
  %i.ad = add nsw i32 %i.j, 1
  %.not.i53 = icmp ult i64 %i.x, 10
  br i1 %.not.i53, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.ae, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ae) #30
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.ag = urem i64 %i.ab, 100000000
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %.preheader195

bb.h:                                             ; preds = %bb.g
  %i.ai = udiv i64 %i.x, 1000000000
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %bb.i, label %.preheader203

bb.i:                                             ; preds = %bb.h
  invoke void @_Z23throw_assertion_failurePKc(ptr noundef nonnull @.str.5)
          to label %.preheader203 unwind label %bb.k

.preheader203:                                    ; preds = %bb.i, %bb.h
  br label %bb.j

bb.j:                                             ; preds = %.preheader203, %bb.j
  %.0152 = phi i32 [ %i.al, %bb.j ], [ %i.aj, %.preheader203 ] ; 3 uses
  %.012.i.i = phi i32 [ %i.an, %bb.j ], [ 8, %.preheader203 ] ; 2 uses
  %i.ak = mul i32 %.0152, -1030792151             ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 30) ; 2 uses
  %i.am = icmp ugt i32 %i.al, 42949672
  %i.an = add nuw nsw i32 %.012.i.i, 2
  br i1 %i.am, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i, label %bb.j

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i: ; preds = %bb.j
  %i.ao = mul i32 %.0152, -858993459              ; 2 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 %i.ao, i32 %i.ao, i32 31) ; 2 uses
  %.not15.i.i = icmp ult i32 %i.ap, 429496730     ; 2 uses
  %spec.select = select i1 %.not15.i.i, i32 %i.ap, i32 %.0152
  %i.aq = zext i1 %.not15.i.i to i32
  %spec.select184 = or disjoint i32 %.012.i.i, %i.aq
  %i.ar = zext i32 %spec.select to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #33
  unreachable

.preheader195:                                    ; preds = %bb.g, %.preheader195
  %.sroa.0134.1 = phi i64 [ %i.av, %.preheader195 ], [ %i.ab, %bb.g ] ; 5 uses
  %.0.i = phi i32 [ %i.ax, %.preheader195 ], [ 0, %bb.g ] ; 2 uses
  %i.au = mul i64 %.sroa.0134.1, -8116567392432202711
  %i.av = tail call i64 @llvm.fshl.i64(i64 %.sroa.0134.1, i64 %i.au, i64 62) ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 184467440737095516
  %i.ax = add nuw nsw i32 %.0.i, 2
  br i1 %i.aw, label %bb.l, label %.preheader195

bb.l:                                             ; preds = %.preheader195
  %i.ay = mul i64 %.sroa.0134.1, -3689348814741910323
  %i.az = tail call i64 @llvm.fshl.i64(i64 %.sroa.0134.1, i64 %i.ay, i64 63) ; 2 uses
  %.not21.i = icmp ult i64 %i.az, 1844674407370955162 ; 2 uses
  %spec.select185 = select i1 %.not21.i, i64 %i.az, i64 %.sroa.0134.1
  %i.ba = zext i1 %.not21.i to i32
  %spec.select186 = or disjoint i32 %.0.i, %i.ba
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

bb.m:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.af, %bb.f ]
  %i.bc = extractvalue { ptr, i32 } %eh.lpad-body, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #33
  unreachable

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit: ; preds = %bb.l, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i
  %.sroa.0134.3 = phi i64 [ %i.ar, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select185, %bb.l ]
  %.018.i = phi i32 [ %spec.select184, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select186, %bb.l ]
  %i.bd = add nsw i32 %i.ad, %.018.i
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.n:                                             ; preds = %_ZN3fmt3v126detail9dragonbox37floor_log10_pow2_minus_log10_4_over_3Ei.exit
  %i.be = sub nsw i32 10, %i.n
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %.sroa.2.0.copyload.i, %i.bf
  %i.bh = add i64 %i.bg, 1
  %i.bi = lshr i64 %i.bh, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.f, -77
  br i1 %or.cond.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = and i64 %i.bi, 9223372036854775806
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.p:                                             ; preds = %bb.n
  %i.bk = icmp ult i64 %i.bi, %spec.select.i
  %i.bl = zext i1 %i.bk to i64
  %spec.select187 = add nuw i64 %i.bi, %i.bl
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.q:                                             ; preds = %bb.a
  %i.bm = icmp eq i64 %i.b, 0
  br i1 %i.bm, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit, label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

bb.r:                                             ; preds = %bb.b
  %i.bn = or disjoint i64 %i.b, 4503599627370496
  br label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit: ; preds = %bb.q, %bb.r
  %.041171 = phi i32 [ %i.f, %bb.r ], [ -1074, %bb.q ] ; 2 uses
  %.042170 = phi i64 [ %i.bn, %bb.r ], [ %i.b, %bb.q ]
  %i.bo = trunc i64 %i.a to i32                   ; 2 uses
  %i.bp = mul nsw i32 %.041171, 315653
  %i.bq = ashr i32 %i.bp, 20                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.br = sub nsw i32 2, %i.bq                    ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.bs ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 4672
  %.sroa.0.0.copyload.i87 = load i64, ptr %i.bu, align 16, !tbaa !97 ; 2 uses
  %.sroa.2.0..sroa_idx.i88 = getelementptr i8, ptr %i.bt, i64 4680
  %.sroa.2.0.copyload.i89 = load i64, ptr %.sroa.2.0..sroa_idx.i88, align 8, !tbaa !97 ; 3 uses
  store i64 %.sroa.0.0.copyload.i87, ptr %1, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.2.0.copyload.i89, ptr %i.bv, align 8
  %i.bw = mul nsw i32 %i.br, 1741647
  %i.bx = ashr i32 %i.bw, 19
  %i.by = add nsw i32 %i.bx, %.041171             ; 4 uses
  %i.bz = sub nsw i32 63, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = lshr i64 %.sroa.2.0.copyload.i89, %i.ca
  %i.cc = trunc i64 %i.cb to i32                  ; 3 uses
  %i.cd = shl nuw nsw i64 %.042170, 1             ; 3 uses
  %i.ce = or disjoint i64 %i.cd, 1
  %i.cf = zext nneg i32 %i.by to i64
  %i.cg = shl i64 %i.ce, %i.cf
  %i.ch = zext i64 %i.cg to i128                  ; 2 uses
  %i.ci = zext i64 %.sroa.2.0.copyload.i89 to i128
  %i.cj = mul nuw i128 %i.ch, %i.ci               ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = trunc nuw i128 %i.ck to i64
  %i.cm = trunc i128 %i.cj to i64
  %i.cn = zext i64 %.sroa.0.0.copyload.i87 to i128
  %i.co = mul nuw i128 %i.ch, %i.cn
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cm, i64 %i.cq) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  %i.ct = extractvalue { i64, i1 } %i.cr, 0
  %i.cu = zext i1 %i.cs to i64
  %i.cv = add nuw i64 %i.cu, %i.cl                ; 2 uses
  %i.cw = icmp ne i64 %i.ct, 0
  %i.cx = zext i64 %i.cv to i128
  %i.cy = mul nuw nsw i128 %i.cx, 2361183241434822607
  %sum.shift.i = lshr i128 %i.cy, 71              ; 2 uses
  %i.cz = trunc nuw nsw i128 %sum.shift.i to i64  ; 7 uses
  %.neg = mul i64 %i.cz, 4294966296
  %i.da = add i64 %.neg, %i.cv
  %i.db = trunc i64 %i.da to i32                  ; 5 uses
  %i.dc = icmp ugt i32 %i.cc, %i.db
  br i1 %i.dc, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %i.dd = icmp eq i32 %i.db, 0
  br i1 %i.dd, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.de = and i32 %i.bo, 1
  %.not49193 = icmp eq i32 %i.de, 0
  %.not49 = or i1 %.not49193, %i.cw
  br i1 %.not49, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = add nsw i64 %i.cz, -1
  br label %bb.ae

bb.v:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %i.dg = icmp ult i32 %i.cc, %i.db
  br i1 %i.dg, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = add nsw i64 %i.cd, -1
  %i.di = call i16 @_ZN3fmt3v126detail9dragonbox14cache_accessorIdE18compute_mul_parityEmRKNS1_7uint128Ei(i64 noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.by) #30 ; 2 uses
  %i.dj = and i16 %i.di, 1
  %i.dk = zext nneg i16 %i.dj to i32
  %i.dl = lshr i16 %i.di, 8
  %.lobit = and i16 %i.dl, 1
  %i.dm = zext nneg i16 %.lobit to i32
  %i.dn = xor i32 %i.bo, -1
  %i.do = and i32 %i.dm, %i.dn
  %i.dp = or i32 %i.do, %i.dk
  %.not48 = icmp eq i32 %i.dp, 0
  br i1 %.not48, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s, %bb.t
  %i.dq = add nsw i32 %i.bq, 1
  %.not.i54 = icmp eq i128 %sum.shift.i, 0
  br i1 %.not.i54, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dr = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull @.str.5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.dr, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc103 unwind label %bb.ad

.noexc103:                                        ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.dr) #30
  br label %.body104

bb.ab:                                            ; preds = %bb.x
  %i.dt = urem i64 %i.cz, 100000000
  %i.du = udiv exact i64 %i.cz, 100000000
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %.preheader.preheader, label %.preheader194

.preheader.preheader:                             ; preds = %bb.ab
  %i.dw = trunc nuw nsw i64 %i.du to i32
  br label %.preheader.a

.preheader.a:                                     ; preds = %.preheader.a, %.preheader.preheader
  %.0151 = phi i32 [ %i.dy, %.preheader.a ], [ %i.dw, %.preheader.preheader ] ; 3 uses
  %.012.i.i61 = phi i32 [ %i.ea, %.preheader.a ], [ 8, %.preheader.preheader ] ; 2 uses
  %i.dx = mul i32 %.0151, -1030792151             ; 2 uses
  %i.dy = call i32 @llvm.fshl.i32(i32 %i.dx, i32 %i.dx, i32 30) ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, 42949672
  %i.ea = add nuw nsw i32 %.012.i.i61, 2
  br i1 %i.dz, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65, label %.preheader.a

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65: ; preds = %.preheader.a
  %i.eb = mul i32 %.0151, -858993459              ; 2 uses
  %i.ec = call i32 @llvm.fshl.i32(i32 %i.eb, i32 %i.eb, i32 31) ; 2 uses
  %.not15.i.i64 = icmp ult i32 %i.ec, 429496730   ; 2 uses
  %spec.select188 = select i1 %.not15.i.i64, i32 %i.ec, i32 %.0151
  %i.ed = zext i1 %.not15.i.i64 to i32
  %spec.select189 = or disjoint i32 %.012.i.i61, %i.ed
  %i.ee = zext nneg i32 %spec.select188 to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67

.preheader194:                                    ; preds = %bb.ab, %.preheader194
  %.sroa.0.4 = phi i64 [ %i.eg, %.preheader194 ], [ %i.cz, %bb.ab ] ; 5 uses
  %.0.i55 = phi i32 [ %i.ei, %.preheader194 ], [ 0, %bb.ab ] ; 2 uses
  %i.ef = mul i64 %.sroa.0.4, -8116567392432202711
  %i.eg = call i64 @llvm.fshl.i64(i64 %.sroa.0.4, i64 %i.ef, i64 62) ; 2 uses
  %i.eh = icmp ugt i64 %i.eg, 184467440737095516
  %i.ei = add nuw nsw i32 %.0.i55, 2
  br i1 %i.eh, label %bb.ac, label %.preheader194

bb.ac:                                            ; preds = %.preheader194
  %i.ej = mul i64 %.sroa.0.4, -3689348814741910323
  %i.ek = call i64 @llvm.fshl.i64(i64 %.sroa.0.4, i64 %i.ej, i64 63) ; 2 uses
  %.not21.i58 = icmp ult i64 %i.ek, 1844674407370955162 ; 2 uses
  %spec.select190 = select i1 %.not21.i58, i64 %i.ek, i64 %.sroa.0.4
  %i.el = zext i1 %.not21.i58 to i32
  %spec.select191 = or disjoint i32 %.0.i55, %i.el
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67

bb.ad:                                            ; preds = %bb.z
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  br label %.body104

.body104:                                         ; preds = %bb.aa, %bb.ad
  %eh.lpad-body105 = phi { ptr, i32 } [ %i.em, %bb.ad ], [ %i.ds, %bb.aa ]
  %i.en = extractvalue { ptr, i32 } %eh.lpad-body105, 0
  call void @__clang_call_terminate(ptr %i.en) #33
  unreachable

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67: ; preds = %bb.ac, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65
  %.sroa.0.6 = phi i64 [ %i.ee, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65 ], [ %spec.select190, %bb.ac ]
  %.018.i59 = phi i32 [ %spec.select189, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i65 ], [ %spec.select191, %bb.ac ]
  %i.eo = add nsw i32 %i.dq, %.018.i59
  br label %bb.am

bb.ae:                                            ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.0.0 = phi i64 [ %i.df, %bb.u ], [ %i.cz, %bb.v ], [ %i.cz, %bb.w ]
  %.0 = phi i32 [ 1000, %bb.u ], [ %i.db, %bb.v ], [ %i.db, %bb.w ]
  %i.ep = lshr i32 %i.cc, 1
  %i.eq = sub i32 %.0, %i.ep                      ; 2 uses
  %i.er = add i32 %i.eq, 50                       ; 2 uses
  %i.es = icmp ult i32 %i.er, 1001
  br i1 %i.es, label %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = call ptr @__cxa_allocate_exception(i64 16) #30 ; 4 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull @.str.205)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %i.et, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.noexc.i113 unwind label %bb.ai

.noexc.i113:                                      ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.et) #30
  br label %.body.i111

bb.ai:                                            ; preds = %bb.ag
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i111

.body.i111:                                       ; preds = %bb.ai, %bb.ah
  %eh.lpad-body.i112 = phi { ptr, i32 } [ %i.ev, %bb.ai ], [ %i.eu, %bb.ah ]
  %i.ew = extractvalue { ptr, i32 } %eh.lpad-body.i112, 0
  call void @__clang_call_terminate(ptr %i.ew) #33
  unreachable

_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit: ; preds = %bb.ae
  %i.ex = mul nsw i64 %.sroa.0.0, 10
  %i.ey = mul nuw nsw i32 %i.er, 656              ; 2 uses
  %i.ez = and i32 %i.ey, 65520
  %i.fa = icmp samesign ult i32 %i.ez, 656
  %i.fb = lshr i32 %i.ey, 16                      ; 2 uses
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = add nsw i64 %i.ex, %i.fc                ; 3 uses
  br i1 %i.fa, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit
  %i.fe = call i16 @_ZN3fmt3v126detail9dragonbox14cache_accessorIdE18compute_mul_parityEmRKNS1_7uint128Ei(i64 noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.by) #30 ; 2 uses
  %i.ff = and i16 %i.fe, 1
  %i.fg = zext nneg i16 %i.ff to i32
  %i.fh = and i32 %i.eq, 1
  %.not50 = icmp eq i32 %i.fh, %i.fg
  br i1 %.not50, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fi = add nsw i64 %i.fd, -1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fj = lshr i16 %i.fe, 8
  %i.fk = zext nneg i16 %i.fj to i32
  %i.fl = and i32 %i.fb, 1
  %i.fm = and i32 %i.fl, %i.fk
  %sext = sub nsw i32 0, %i.fm
  %i.fn = sext i32 %sext to i64
  %spec.select192 = add nsw i64 %i.fd, %i.fn
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit, %bb.ak, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67
  %.sroa.21.0 = phi i32 [ %i.eo, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67 ], [ %i.bq, %bb.ak ], [ %i.bq, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit ], [ %i.bq, %bb.al ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.6, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit67 ], [ %i.fi, %bb.ak ], [ %i.fd, %_ZN3fmt3v126detail9dragonbox38check_divisibility_and_divide_by_pow10ILi2EEEbRj.exit ], [ %spec.select192, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.o, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit, %bb.p, %bb.q, %bb.am
  %.sroa.21.1 = phi i32 [ 0, %bb.q ], [ %.sroa.21.0, %bb.am ], [ %i.j, %bb.o ], [ %i.bd, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %i.j, %bb.p ]
  %.sroa.0.3 = phi i64 [ 0, %bb.q ], [ %.sroa.0.2, %bb.am ], [ %i.bj, %bb.o ], [ %.sroa.0134.3, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %spec.select187, %bb.p ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0.3, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.21.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.86, align 8             ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.87, align 8            ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.88, align 8            ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !87
  store i8 %3, ptr %i.b, align 1, !tbaa !71
  store i32 %5, ptr %i.c, align 4, !tbaa !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !194  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !87
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !117
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !87
  %i.u = load i32, ptr %4, align 4, !tbaa !110    ; 2 uses
  %i.v = and i32 %i.u, 8192
  %.not53 = icmp eq i32 %i.v, 0
  br i1 %.not53, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond48 = or i1 %i.x, %.not41
  br i1 %or.cond48, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !87
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.c, ptr %8, align 8, !tbaa !108
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !196
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !162
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !188
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !154
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !104
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
end_hunk_0
