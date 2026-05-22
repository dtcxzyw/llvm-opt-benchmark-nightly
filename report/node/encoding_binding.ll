inline.NumInlined: 2063
inline.NumDeleted: 919
begin_hunk_0_@_ZN4node16encoding_binding11BindingData10EncodeIntoERKN2v820FunctionCallbackInfoINS2_5ValueEEE:bb.a
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 648
  %i.bb = inttoptr i64 %i.ba to ptr               ; 2 uses
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68: ; preds = %_ZN4node5Realm14GetBindingDataINS_16encoding_binding11BindingDataEEEPT_v.exit
  %i.bc = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.not = icmp eq i32 %i.av, 1
  br i1 %.not.i.not, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68._crit_edge, label %bb.h

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68._crit_edge: ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre158 = load ptr, ptr %.phi.trans.insert, align 8
  %.pre159 = ptrtoint ptr %.pre158 to i64
  %.pre160 = add i64 %.pre159, 648
  %.pre162 = inttoptr i64 %.pre160 to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.h:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68.thread, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68._crit_edge, %bb.h
  %.sroa.0113.0153 = phi ptr [ %i.bc, %bb.h ], [ %i.bc, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68._crit_edge ], [ %i.bb, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68.thread ] ; 3 uses
  %.sroa.0112.0 = phi ptr [ %i.bd, %bb.h ], [ %.pre162, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68._crit_edge ], [ %i.bb, %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit68.thread ] ; 3 uses
  %i.be = tail call ptr @_ZN2v815ArrayBufferView6BufferEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0112.0) #26 ; 2 uses
  %i.bf = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.be) #26
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %.016.i, i64 88 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8
  store i32 0, ptr %i.bi, align 4
  %i.bj = load ptr, ptr %i.bh, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 0, ptr %i.bk, align 4
  br label %bb.ah

bb.j:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.bl = tail call noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.be) #26
  %i.bm = tail call noundef i64 @_ZN2v815ArrayBufferView10ByteOffsetEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0112.0) #26
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm ; 5 uses
  %i.bo = tail call noundef i64 @_ZN2v815ArrayBufferView10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0112.0) #26 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8
  %i.bp = tail call noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0113.0153) #26
  %i.bq = icmp slt i32 %i.bp, 33
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = call noundef i64 @_ZNK2v86String11WriteUtf8V2EPNS_7IsolateEPcmiPm(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0113.0153, ptr noundef %i.ah, ptr noundef %i.bn, i64 noundef %i.bo, i32 noundef 2, ptr noundef nonnull %i.a) #26
  %i.bs = load i64, ptr %i.a, align 8
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.016.i, i64 88 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  store i32 %i.bt, ptr %i.bv, align 4
  %i.bw = trunc i64 %i.br to i32
  %i.bx = load ptr, ptr %i.bu, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.bw, ptr %i.by, align 4
  br label %bb.ag

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN2v86String9ValueViewC1EPNS_7IsolateENS_5LocalIS0_EE(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef %i.ah, ptr nonnull %.sroa.0113.0153) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = zext i32 %i.ca to i64                   ; 3 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.cb) ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cd = load i8, ptr %i.cc, align 4, !range !26, !noundef !36
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = call { i32, i64 } @_ZN7simdutf26validate_ascii_with_errorsEPKcm(ptr noundef %i.cg, i64 noundef %.sroa.speculated) #26
  %i.ci = extractvalue { i32, i64 } %i.ch, 1      ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.cg, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci ; 3 uses
  %i.cl = sub i64 %i.bo, %i.ci                    ; 5 uses
  %i.cm = icmp ne i64 %.sroa.speculated, %i.ci
  %i.cn = icmp ne i64 %i.bo, %i.ci
  %or.cond = and i1 %i.cm, %i.cn
  br i1 %or.cond, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %i.co = sub i64 %.sroa.speculated, %i.ci        ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %bb.n
  %.044122.i = phi i64 [ 0, %bb.n ], [ %.3.i, %bb.t ] ; 5 uses
  %.047121.i = phi i64 [ 0, %bb.n ], [ %.350.i, %bb.t ] ; 4 uses
  %.057120.i = phi double [ 1.150000e+00, %bb.n ], [ %.360.i, %bb.t ] ; 2 uses
  %i.cp = sub nuw i64 %i.co, %.044122.i           ; 2 uses
  %i.cq = sub nuw i64 %i.cl, %.047121.i           ; 2 uses
  %i.cr = lshr i64 %i.cq, 1                       ; 2 uses
  %.not.i76 = icmp ult i64 %i.cr, %i.cp
  br i1 %.not.i76, label %bb.p, label %_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIcEEmPKT_mm.exit

bb.p:                                             ; preds = %bb.o
  %i.cs = uitofp i64 %i.cq to double
  %i.ct = fdiv double %i.cs, %.057120.i
  %i.cu = fptoui double %i.ct to i64
  %.sroa.speculated90.i = call i64 @llvm.umin.i64(i64 %i.cu, i64 257)
  %.sroa.speculated95.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 %.sroa.speculated90.i)
  %.sroa.speculated80.i = call i64 @llvm.umax.i64(i64 %.sroa.speculated95.i, i64 1)
  %.sroa.speculated84.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated80.i, i64 %i.cp) ; 5 uses
  %cond.i = icmp eq i64 %.sroa.speculated84.i, 1
  br i1 %cond.i, label %.thread111.i.preheader, label %bb.q, !prof !44

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.044122.i
  %i.cw = call noundef i64 @_ZN7simdutf23utf8_length_from_latin1EPKcm(ptr noundef %i.cv, i64 noundef %.sroa.speculated84.i) #26 ; 3 uses
  %i.cx = add i64 %i.cw, %.047121.i               ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.cl
  br i1 %i.cy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cz = fmul double %.057120.i, 1.100000e+00    ; 2 uses
  %i.da = uitofp i64 %i.cw to double
  %i.db = fmul nnan double %i.da, 1.100000e+00
  %i.dc = uitofp nneg i64 %.sroa.speculated84.i to double
  %i.dd = fdiv double %i.db, %i.dc                ; 2 uses
  %i.de = fcmp olt double %i.cz, %i.dd
  %.sroa.speculated75.i = select i1 %i.de, double %i.dd, double %i.cz
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.df = uitofp i64 %i.cw to double
  %i.dg = fmul nnan double %i.df, 1.100000e+00
  %i.dh = uitofp nneg i64 %.sroa.speculated84.i to double
  %i.di = fdiv double %i.dg, %i.dh                ; 2 uses
  %i.dj = fcmp ogt double %i.di, 1.150000e+00
  %.sroa.speculated.i = select i1 %i.dj, double %i.di, double 1.150000e+00
  %i.dk = add i64 %.sroa.speculated84.i, %.044122.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.360.i = phi double [ %.sroa.speculated.i, %bb.s ], [ %.sroa.speculated75.i, %bb.r ]
  %.350.i = phi i64 [ %i.cx, %bb.s ], [ %.047121.i, %bb.r ] ; 3 uses
  %.3.i = phi i64 [ %i.dk, %bb.s ], [ %.044122.i, %bb.r ] ; 3 uses
  %i.dl = icmp ult i64 %.3.i, %i.co
  %i.dm = icmp ult i64 %.350.i, %i.cl
  %i.dn = and i1 %i.dm, %i.dl
  br i1 %i.dn, label %bb.o, label %.thread111.i.preheader

.thread111.i.preheader:                           ; preds = %bb.t, %bb.p
  %.552.i.ph = phi i64 [ %.350.i, %bb.t ], [ %.047121.i, %bb.p ]
  %.5.i.ph = phi i64 [ %.3.i, %bb.t ], [ %.044122.i, %bb.p ]
  br label %.thread111.i

.thread111.i:                                     ; preds = %.thread111.i.preheader, %bb.u
  %.552.i = phi i64 [ %i.du, %bb.u ], [ %.552.i.ph, %.thread111.i.preheader ] ; 2 uses
  %.5.i = phi i64 [ %i.dw, %bb.u ], [ %.5.i.ph, %.thread111.i.preheader ] ; 5 uses
  %i.do = icmp ult i64 %.5.i, %i.co
  %i.dp = icmp ult i64 %.552.i, %i.cl
  %i.dq = and i1 %i.dp, %i.do
  br i1 %i.dq, label %bb.u, label %_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIcEEmPKT_mm.exit

bb.u:                                             ; preds = %.thread111.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.5.i
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = icmp sgt i8 %i.ds, -1
  %.0.i.i77 = select i1 %i.dt, i64 1, i64 3
  %i.du = add i64 %.0.i.i77, %.552.i              ; 2 uses
  %i.dv = icmp ugt i64 %i.du, %i.cl
  %i.dw = add nuw i64 %.5.i, 1
  br i1 %i.dv, label %_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIcEEmPKT_mm.exit, label %.thread111.i

_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIcEEmPKT_mm.exit: ; preds = %bb.o, %.thread111.i, %bb.u
  %.2.i = phi i64 [ %.5.i, %.thread111.i ], [ %.5.i, %bb.u ], [ %i.co, %bb.o ] ; 3 uses
  %.not66 = icmp eq i64 %.2.i, 0
  br i1 %.not66, label %bb.af, label %bb.v

bb.v:                                             ; preds = %_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIcEEmPKT_mm.exit
  %i.dx = call noundef i64 @_ZN7simdutf22convert_latin1_to_utf8EPKcmPc(ptr noundef %i.ck, i64 noundef %.2.i, ptr noundef %i.cj) #26
  %i.dy = add i64 %i.dx, %i.ci
  %i.dz = add i64 %i.ci, %.2.i
  br label %bb.af

bb.w:                                             ; preds = %bb.l
  %i.ea = icmp uge i64 %i.bo, %i.cb
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8            ; 5 uses
  %.not = icmp eq i64 %.sroa.speculated, 0        ; 2 uses
  %brmerge = or i1 %i.ea, %.not
  %.mux = select i1 %.not, i64 0, i64 %i.cb
  br i1 %brmerge, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr [2 x i8], ptr %i.ec, i64 %i.bo
  %i.ee = getelementptr i8, ptr %i.ed, i64 -2
  %i.ef = load <2 x i16>, ptr %i.ee, align 2
  %i.eg = and <2 x i16> %i.ef, splat (i16 -1024)
  %3 = icmp eq <2 x i16> %i.eg, <i16 -10240, i16 -9216> ; 2 uses
  %shift = shufflevector <2 x i1> %3, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = and <2 x i1> %3, %shift
  %4 = extractelement <2 x i1> %foldExtExtBinop, i64 0
  %i.eh = sext i1 %4 to i64
  %spec.select = add nsw i64 %i.bo, %i.eh
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.057 = phi i64 [ %.mux, %bb.w ], [ %spec.select, %bb.x ] ; 5 uses
  %i.ei = call { i32, i64 } @_ZN7simdutf26validate_utf16_with_errorsEPKDsm(ptr noundef %i.ec, i64 noundef %.057) #26
  %i.ej = extractvalue { i32, i64 } %i.ei, 0
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.el = call fastcc noundef i64 @_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIDsEEmPKT_mm(ptr noundef %i.ec, i64 noundef %.057, i64 noundef %i.bo) ; 3 uses
  %.not65 = icmp eq i64 %i.el, 0
  br i1 %.not65, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.em = call noundef i64 @_ZN7simdutf21convert_utf16_to_utf8EPKDsmPc(ptr noundef %i.ec, i64 noundef %i.el, ptr noundef %i.bn) #26
  br label %bb.af

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 0, ptr %2, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i64 4096, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.eo, ptr %i.ep, align 8
  store i16 0, ptr %i.eo, align 8
  call void @_ZN4node16MaybeStackBufferIDsLm4096EE25AllocateSufficientStorageEm(ptr noundef nonnull align 8 dereferenceable(8216) %2, i64 noundef %.057)
  %i.eq = load ptr, ptr %i.ep, align 8
  call void @_ZN7simdutf20to_well_formed_utf16EPKDsmPDs(ptr noundef %i.ec, i64 noundef %.057, ptr noundef %i.eq) #26
  %i.er = load ptr, ptr %i.ep, align 8
  %i.es = call fastcc noundef i64 @_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIDsEEmPKT_mm(ptr noundef %i.er, i64 noundef %.057, i64 noundef %i.bo) ; 3 uses
  %.not64 = icmp eq i64 %i.es, 0
  br i1 %.not64, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.et = load ptr, ptr %i.ep, align 8
  %i.eu = call noundef i64 @_ZN7simdutf21convert_utf16_to_utf8EPKDsmPc(ptr noundef %i.et, i64 noundef %i.es, ptr noundef %i.bn) #26
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.2 = phi i64 [ %i.eu, %bb.ac ], [ 0, %bb.ab ]
  %i.ev = load ptr, ptr %i.ep, align 8            ; 3 uses
  %i.ew = icmp ne ptr %i.ev, null
  %i.ex = icmp ne ptr %i.ev, %i.eo
  %i.ey = and i1 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ae, label %_ZN4node16MaybeStackBufferIDsLm4096EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.ev) #26
  br label %_ZN4node16MaybeStackBufferIDsLm4096EED2Ev.exit

_ZN4node16MaybeStackBufferIDsLm4096EED2Ev.exit:   ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.af

bb.af:                                            ; preds = %_ZN4node16MaybeStackBufferIDsLm4096EED2Ev.exit, %bb.aa, %bb.z, %bb.m, %bb.v, %_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIcEEmPKT_mm.exit
  %i.ez = phi i64 [ %i.ci, %_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIcEEmPKT_mm.exit ], [ %i.ci, %bb.m ], [ %i.dz, %bb.v ], [ %i.el, %bb.aa ], [ 0, %bb.z ], [ %i.es, %_ZN4node16MaybeStackBufferIDsLm4096EED2Ev.exit ]
  %.4 = phi i64 [ %i.ci, %_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIcEEmPKT_mm.exit ], [ %i.ci, %bb.m ], [ %i.dy, %bb.v ], [ %i.em, %bb.aa ], [ 0, %bb.z ], [ %.2, %_ZN4node16MaybeStackBufferIDsLm4096EED2Ev.exit ]
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %.016.i, i64 88 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  store i32 %i.fa, ptr %i.fc, align 4
  %i.fd = trunc i64 %.4 to i32
  %i.fe = load ptr, ptr %i.fb, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 %i.fd, ptr %i.ff, align 4
  call void @_ZN2v86String9ValueViewD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.i
  ret void
}

declare noundef zeroext i1 @_ZNK2v85Value12IsUint8ArrayEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZN2v815ArrayBufferView6BufferEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef i64 @_ZN2v815ArrayBufferView10ByteOffsetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef i64 @_ZN2v815ArrayBufferView10ByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare noundef i64 @_ZNK2v86String11WriteUtf8V2EPNS_7IsolateEPcmiPm(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN2v86String9ValueViewC1EPNS_7IsolateENS_5LocalIS0_EE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr) unnamed_addr #5

; Function Attrs: nounwind
declare { i32, i64 } @_ZN7simdutf26validate_ascii_with_errorsEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf22convert_latin1_to_utf8EPKcmPc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare { i32, i64 } @_ZN7simdutf26validate_utf16_with_errorsEPKDsm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i64 @_ZN4node16encoding_binding12_GLOBAL__N_111findBestFitIDsEEmPKT_mm(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = icmp ne i64 %2, 0
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %.thread136.preheader

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.064146 = phi i64 [ %.3, %bb.h ], [ 0, %bb.a ] ; 6 uses
  %.067145 = phi i64 [ %.370, %bb.h ], [ 0, %bb.a ] ; 4 uses
  %.079144 = phi double [ %.382, %bb.h ], [ 1.150000e+00, %bb.a ] ; 2 uses
  %i.d = sub nuw i64 %1, %.064146                 ; 2 uses
  %i.e = sub nuw i64 %2, %.067145                 ; 2 uses
  %i.f = udiv i64 %i.e, 3                         ; 2 uses
  %.not = icmp ult i64 %i.f, %i.d
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph
  %i.g = uitofp i64 %i.e to double
  %i.h = fdiv double %i.g, %.079144
  %i.i = fptoui double %i.h to i64
  %.sroa.speculated115 = tail call i64 @llvm.umin.i64(i64 %i.i, i64 257)
  %.sroa.speculated120 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.sroa.speculated115)
  %.sroa.speculated105 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated120, i64 1)
  %.sroa.speculated109 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated105, i64 %i.d) ; 4 uses
  %cond = icmp eq i64 %.sroa.speculated109, 1
  br i1 %cond, label %.thread136.preheader, label %bb.c, !prof !44

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.sroa.speculated109, %.064146   ; 2 uses
  %i.k = icmp ult i64 %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr [2 x i8], ptr %0, i64 %i.j
  %i.m = getelementptr i8, ptr %i.l, i64 -2
  %i.n = load <2 x i16>, ptr %i.m, align 2
  %i.o = and <2 x i16> %i.n, splat (i16 -1024)
  %3 = icmp eq <2 x i16> %i.o, <i16 -10240, i16 -9216> ; 2 uses
  %shift = shufflevector <2 x i1> %3, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = and <2 x i1> %3, %shift
  %4 = extractelement <2 x i1> %foldExtExtBinop, i64 0
  %i.p = sext i1 %4 to i64
  %spec.select = add nsw i64 %.sroa.speculated109, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.075 = phi i64 [ %.sroa.speculated109, %bb.c ], [ %spec.select, %bb.d ] ; 4 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.064146
  %i.r = tail call noundef i64 @_ZN7simdutf22utf8_length_from_utf16EPKDsm(ptr noundef %i.q, i64 noundef %.075) #26 ; 3 uses
  %i.s = add i64 %i.r, %.067145                   ; 2 uses
  %i.t = icmp ugt i64 %i.s, %2
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = fmul double %.079144, 1.100000e+00       ; 2 uses
  %i.v = uitofp i64 %i.r to double
  %i.w = fmul nnan double %i.v, 1.100000e+00
  %i.x = uitofp nneg i64 %.075 to double
  %i.y = fdiv double %i.w, %i.x                   ; 2 uses
  %i.z = fcmp olt double %i.u, %i.y
  %.sroa.speculated100 = select i1 %i.z, double %i.y, double %i.u
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = uitofp i64 %i.r to double
  %i.ab = fmul nnan double %i.aa, 1.100000e+00
  %i.ac = uitofp nneg i64 %.075 to double
  %i.ad = fdiv double %i.ab, %i.ac                ; 2 uses
  %i.ae = fcmp ogt double %i.ad, 1.150000e+00
  %.sroa.speculated = select i1 %i.ae, double %i.ad, double 1.150000e+00
  %i.af = add i64 %.075, %.064146
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.382 = phi double [ %.sroa.speculated, %bb.g ], [ %.sroa.speculated100, %bb.f ]
  %.370 = phi i64 [ %i.s, %bb.g ], [ %.067145, %bb.f ] ; 3 uses
  %.3 = phi i64 [ %i.af, %bb.g ], [ %.064146, %bb.f ] ; 3 uses
  %i.ag = icmp ult i64 %.3, %1
  %i.ah = icmp ult i64 %.370, %2
  %i.ai = and i1 %i.ag, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.thread136.preheader

.thread136.preheader:                             ; preds = %bb.h, %bb.b, %bb.a
  %.572.ph = phi i64 [ 0, %bb.a ], [ %.370, %bb.h ], [ %.067145, %bb.b ]
  %.5.ph = phi i64 [ 0, %bb.a ], [ %.3, %bb.h ], [ %.064146, %bb.b ]
  br label %.thread136

.thread136:                                       ; preds = %.thread136.preheader, %bb.i
  %.572 = phi i64 [ %i.aq, %bb.i ], [ %.572.ph, %.thread136.preheader ] ; 2 uses
  %.5 = phi i64 [ %i.as, %bb.i ], [ %.5.ph, %.thread136.preheader ] ; 9 uses
  %i.aj = icmp ult i64 %.5, %1
  %i.ak = icmp ult i64 %.572, %2                  ; 2 uses
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread136
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.5
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = icmp ult i16 %i.an, 128
  %i.ap = icmp ult i16 %i.an, 1024
  %..i98 = select i1 %i.ap, i64 2, i64 3
  %.0.i = select i1 %i.ao, i64 1, i64 %..i98
  %i.aq = add i64 %.0.i, %.572                    ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, %2
  %i.as = add nuw i64 %.5, 1
  br i1 %i.ar, label %bb.j, label %.thread136

bb.j:                                             ; preds = %bb.i, %.thread136
  %.not91 = icmp eq i64 %.5, 0
  br i1 %.not91, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not92 = icmp eq i64 %.5, %1
  br i1 %.not92, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr [2 x i8], ptr %0, i64 %.5
  %i.au = getelementptr i8, ptr %i.at, i64 -2
  %i.av = load <2 x i16>, ptr %i.au, align 2
  %i.aw = and <2 x i16> %i.av, splat (i16 -1024)
  %5 = icmp eq <2 x i16> %i.aw, <i16 -10240, i16 -9216> ; 2 uses
  %shift159 = shufflevector <2 x i1> %5, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop160 = and <2 x i1> %5, %shift159
  %6 = extractelement <2 x i1> %foldExtExtBinop160, i64 0
  br i1 %6, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = add i64 %.5, 1
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.ay = add i64 %.5, -1
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.j, %bb.k, %bb.l, %bb.o, %bb.n
  %.2 = phi i64 [ 0, %bb.j ], [ %i.ax, %bb.n ], [ %i.ay, %bb.o ], [ %.5, %bb.l ], [ %1, %bb.k ], [ %1, %.lr.ph ]
  ret i64 %.2
}

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf21convert_utf16_to_utf8EPKDsmPc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN7simdutf20to_well_formed_utf16EPKDsmPDs(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN2v86String9ValueViewD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node16encoding_binding11BindingData16EncodeUtf8StringERKN2v820FunctionCallbackInfoINS2_5ValueEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #0 align 2 {
bb.a:
  %1 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  %3 = alloca %"class.node::MaybeStackBuffer.73", align 8 ; 7 uses
  %4 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 3 uses
  %8 = alloca %"class.node::MaybeStackBuffer.74", align 8 ; 7 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %10 = alloca %"class.std::shared_ptr", align 8  ; 3 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %12 = alloca %"class.std::shared_ptr", align 8  ; 3 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit79, label %bb.b, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node16encoding_binding11BindingData16EncodeUtf8StringERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args) #26
  tail call void @abort() #27
  unreachable

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit79: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 3
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_ZNK2v85Value13QuickIsStringEv.exit, label %_ZNK2v85Value13QuickIsStringEv.exit.thread, !prof !41

_ZNK2v85Value13QuickIsStringEv.exit:              ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit79
  %i.m = add nsw i64 %i.j, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp ult i16 %i.r, 128
  br i1 %i.s, label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit, label %_ZNK2v85Value13QuickIsStringEv.exit.thread, !prof !42

_ZNK2v85Value13QuickIsStringEv.exit.thread:       ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit79, %_ZNK2v85Value13QuickIsStringEv.exit
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node16encoding_binding11BindingData16EncodeUtf8StringERKN2v820FunctionCallbackInfoINS2_5ValueEEEE20error_and_abort_args_0) #26
  tail call void @abort() #27
  unreachable

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %_ZNK2v85Value13QuickIsStringEv.exit
  %i.t = tail call noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.i) #26
  %i.u = icmp slt i32 %i.t, 33
  br i1 %i.u, label %bb.c, label %bb.n

bb.c:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.v = tail call noundef i64 @_ZNK2v86String12Utf8LengthV2EPNS_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef %i.c) #26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @_ZN2v811ArrayBuffer15NewBackingStoreEPNS_7IsolateEmNS_30BackingStoreInitializationModeENS_25BackingStoreOnFailureModeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef %i.c, i64 noundef %i.v, i32 noundef 1, i32 noundef 0) #26
  %i.w = load ptr, ptr %1, align 8                ; 2 uses
  %.not181 = icmp eq ptr %i.w, null
  br i1 %.not181, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.c
  call void @_ZN4node34THROW_ERR_MEMORY_ALLOCATION_FAILEDEPN2v87IsolateE(ptr noundef %i.c)
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_10Uint8ArrayEEEvNS_5LocalIT_EE.exit83

bb.e:                                             ; preds = %bb.c
  %i.x = call noundef ptr @_ZNK2v812BackingStore4DataEv(ptr noundef nonnull align 1 dereferenceable(1) %i.w) #26
  %i.y = load ptr, ptr %1, align 8
  %i.z = call noundef i64 @_ZNK2v812BackingStore13MaxByteLengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.y) #26
  %i.aa = call noundef i64 @_ZNK2v86String11WriteUtf8V2EPNS_7IsolateEPcmiPm(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef %i.c, ptr noundef %i.x, i64 noundef %i.z, i32 noundef 2, ptr noundef null) #26 ; 0 uses
  call void @_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ab = call ptr @_ZN2v811ArrayBuffer3NewEPNS_7IsolateESt10shared_ptrINS_12BackingStoreEE(ptr noundef %i.c, ptr noundef nonnull %2) #26
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26, !inline_history !45
  %i.am = load ptr, ptr %i.ad, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26, !inline_history !45
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ap = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.i ], [ %i.ar, %bb.j ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.k, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.at = load ptr, ptr %0, align 8               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = call ptr @_ZN2v810Uint8Array3NewENS_5LocalINS_11ArrayBufferEEEmm(ptr %i.ab, i64 noundef 0, i64 noundef %i.v) #26 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.l, label %bb.m, !prof !5

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 648
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load i64, ptr %i.bb, align 8
  store i64 %i.bc, ptr %i.au, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_10Uint8ArrayEEEvNS_5LocalIT_EE.exit83

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load i64, ptr %i.av, align 8
  store i64 %i.bd, ptr %i.au, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_10Uint8ArrayEEEvNS_5LocalIT_EE.exit83

_ZN2v811ReturnValueINS_5ValueEE3SetINS_10Uint8ArrayEEEvNS_5LocalIT_EE.exit83: ; preds = %bb.m, %bb.l, %bb.d
  %i.be = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i84 = icmp eq ptr %i.be, null
  br i1 %.not.i84, label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i: ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_10Uint8ArrayEEEvNS_5LocalIT_EE.exit83
  call void @_ZN2v812BackingStoreD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %i.be) #26
  call void @_ZdlPv(ptr noundef nonnull %i.be) #26
  br label %_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v812BackingStoreESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_10Uint8ArrayEEEvNS_5LocalIT_EE.exit83, %_ZNKSt14default_deleteIN2v812BackingStoreEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.bi

bb.n:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit
  %i.bf = tail call noundef i32 @_ZNK2v86String6LengthEv(ptr noundef nonnull align 1 dereferenceable(1) %i.i) #26 ; 3 uses
  %i.bg = sext i32 %i.bf to i64                   ; 14 uses
  %i.bh = tail call noundef zeroext i1 @_ZNK2v86String9IsOneByteEv(ptr noundef nonnull align 1 dereferenceable(1) %i.i) #26
  br i1 %i.bh, label %bb.o, label %bb.al

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 0, ptr %3, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i64 4096, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
end_hunk_0
