inline.NumInlined: 1226
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN13CIrrDeviceSDL3runEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not.i86 = icmp eq i32 %i.nl, %i.nr
  %.not4.i = icmp eq i32 %i.nm, %i.nt
  %or.cond.i = select i1 %.not.i86, i1 %.not4.i, i1 false
  %i.oc = extractelement <2 x float> %i.ob, i64 0 ; 2 uses
  br i1 %or.cond.i, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.od = load ptr, ptr %i.ag, align 8, !tbaa !105 ; 3 uses
  %.not5.i = icmp eq ptr %i.od, null
  br i1 %.not5.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store i32 %i.nr, ptr %1, align 4, !tbaa !175
  store i32 %i.nt, ptr %i.ah, align 4, !tbaa !176
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !17
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 616
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(8) %i.od, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !177
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %.pre.i = load float, ptr %i.ad, align 4, !tbaa !173
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.oh = phi float [ %i.oc, %bb.bo ], [ %i.oc, %bb.bp ], [ %.pre.i, %bb.bq ]
  %i.oi = fcmp une float %i.nn, %i.oh
  br i1 %i.oi, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oj = load float, ptr %i.ae, align 8, !tbaa !174
  %i.ok = fcmp une float %i.no, %i.oj
  br i1 %i.ok, label %bb.bt, label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.bt:                                            ; preds = %bb.bs, %bb.br
  store i32 12, ptr %6, align 8, !tbaa !147
  store i32 6, ptr %i.f, align 8, !tbaa !87
  %i.ol = load ptr, ptr %0, align 8, !tbaa !17
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 200
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = call noundef zeroext i1 %i.on(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(56) %6), !inline_history !177 ; 0 uses
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.bu:                                            ; preds = %bb.x
  store i32 11, ptr %6, align 8, !tbaa !147
  %i.op = load <2 x ptr>, ptr %i.t, align 8, !tbaa !87
  %i.oq = ptrtoint <2 x ptr> %i.op to <2 x i64>
  store <2 x i64> %i.oq, ptr %i.w, align 8, !tbaa !87
  %i.or = load ptr, ptr %0, align 8, !tbaa !17
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 200
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = call noundef zeroext i1 %i.ot(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(56) %6) ; 0 uses
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.bv:                                            ; preds = %bb.x
  store i32 5, ptr %6, align 8, !tbaa !147
  store i32 0, ptr %i.s, align 4, !tbaa !87
  %i.ov = load i64, ptr %i.t, align 8, !tbaa !87
  store i64 %i.ov, ptr %i.f, align 8, !tbaa !87
  %i.ow = load <2 x float>, ptr %i.u, align 8, !tbaa !87
  %i.ox = load <2 x i32>, ptr %i.v, align 4, !tbaa !30
  %i.oy = uitofp <2 x i32> %i.ox to <2 x float>
  %i.oz = fmul <2 x float> %i.ow, %i.oy
  %i.pa = fptosi <2 x float> %i.oz to <2 x i32>
  store <2 x i32> %i.pa, ptr %i.w, align 8, !tbaa !87
  %i.pb = load i32, ptr %i.aa, align 8, !tbaa !178
  %i.pc = add nsw i32 %i.pb, 1                    ; 2 uses
  store i32 %i.pc, ptr %i.aa, align 8, !tbaa !178
  store i32 %i.pc, ptr %i.ab, align 8, !tbaa !87
  %i.pd = load ptr, ptr %0, align 8, !tbaa !17
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 200
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = call noundef zeroext i1 %i.pf(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(56) %6) ; 0 uses
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.bw:                                            ; preds = %bb.x
  store i32 5, ptr %6, align 8, !tbaa !147
  store i32 2, ptr %i.s, align 4, !tbaa !87
  %i.ph = load i64, ptr %i.t, align 8, !tbaa !87
  store i64 %i.ph, ptr %i.f, align 8, !tbaa !87
  %i.pi = load <2 x float>, ptr %i.u, align 8, !tbaa !87
  %i.pj = load <2 x i32>, ptr %i.v, align 4, !tbaa !30
  %i.pk = uitofp <2 x i32> %i.pj to <2 x float>
  %i.pl = fmul <2 x float> %i.pi, %i.pk
  %i.pm = fptosi <2 x float> %i.pl to <2 x i32>
  store <2 x i32> %i.pm, ptr %i.w, align 8, !tbaa !87
  %i.pn = load i32, ptr %i.aa, align 8, !tbaa !178
  store i32 %i.pn, ptr %i.ab, align 8, !tbaa !87
  %i.po = load ptr, ptr %0, align 8, !tbaa !17
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 200
  %i.pq = load ptr, ptr %i.pp, align 8
  %i.pr = call noundef zeroext i1 %i.pq(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(56) %6) ; 0 uses
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.bx:                                            ; preds = %bb.x
  store i32 5, ptr %6, align 8, !tbaa !147
  store i32 1, ptr %i.s, align 4, !tbaa !87
  %i.ps = load i64, ptr %i.t, align 8, !tbaa !87
  store i64 %i.ps, ptr %i.f, align 8, !tbaa !87
  %i.pt = load <2 x float>, ptr %i.u, align 8, !tbaa !87
  %i.pu = load <2 x i32>, ptr %i.v, align 4, !tbaa !30
  %i.pv = uitofp <2 x i32> %i.pu to <2 x float>
  %i.pw = fmul <2 x float> %i.pt, %i.pv
  %i.px = fptosi <2 x float> %i.pw to <2 x i32>
  store <2 x i32> %i.px, ptr %i.w, align 8, !tbaa !87
  %i.py = load i32, ptr %i.aa, align 8, !tbaa !178 ; 3 uses
  store i32 %i.py, ptr %i.ab, align 8, !tbaa !87
  %i.pz = icmp sgt i32 %i.py, 0
  br i1 %i.pz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.qa = add nsw i32 %i.py, -1
  store i32 %i.qa, ptr %i.aa, align 8, !tbaa !178
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.qb = load ptr, ptr %0, align 8, !tbaa !17
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 200
  %i.qd = load ptr, ptr %i.qc, align 8
  %i.qe = call noundef zeroext i1 %i.qd(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(56) %6) ; 0 uses
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.ca:                                            ; preds = %bb.x
  store i8 1, ptr %i.r, align 4, !tbaa !179
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.cb:                                            ; preds = %bb.x
  store i8 0, ptr %i.r, align 4, !tbaa !179
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.cc:                                            ; preds = %bb.x
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.43, i32 noundef 3)
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

bb.cd:                                            ; preds = %bb.x
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.44, i32 noundef 3)
  br label %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit"

"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit":      ; preds = %bb.bt, %bb.bs, %_ZN13CIrrDeviceSDL24findCharToPassToIrrlichtEj9EKEY_CODEt.exit, %bb.bc, %bb.am, %bb.an, %bb.ap, %bb.ao, %bb.ad, %bb.ac, %bb.x, %bb.bn, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.bw, %bb.bv, %bb.bu, %bb.bm, %bb.as, %bb.ab
  call void @_ZN13CIrrDeviceSDL27resetReceiveTextInputEventsEv(ptr noundef nonnull align 8 dereferenceable(405) %0)
  %i.qf = load i8, ptr %i.g, align 8, !tbaa !84, !range !111, !noundef !112
  %i.qg = trunc nuw i8 %i.qf to i1
  br i1 %i.qg, label %.critedge, label %bb.b, !llvm.loop !180

.critedge:                                        ; preds = %_ZL14wrap_PollEventP9SDL_Event.exit, %"_ZZN13CIrrDeviceSDL3runEvENK3$_1clEv.exit", %bb.a
  call void @SDL_JoystickUpdate()
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.qh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.qh, i8 0, i64 44, i1 false)
  store i32 9, ptr %9, align 8, !tbaa !147
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !130 ; 2 uses
  %i.ql = load ptr, ptr %i.qi, align 8, !tbaa !106 ; 2 uses
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = sub i64 %i.qm, %i.qn                    ; 2 uses
  %i.qp = and i64 %i.qo, 34359738360
  %.not190 = icmp eq i64 %i.qp, 0
  br i1 %.not190, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %.critedge
  %i.qq = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.qs = getelementptr inbounds nuw i8, ptr %9, i64 50
  br label %bb.ce

._crit_edge189:                                   ; preds = %bb.cj, %.critedge
  %i.qt = load i8, ptr %i.g, align 8, !tbaa !84, !range !111, !noundef !112
  %i.qu = trunc nuw i8 %i.qt to i1
  %i.qv = xor i1 %i.qu, true
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i1 %i.qv

bb.ce:                                            ; preds = %.lr.ph188, %bb.cj
  %i.qw = phi ptr [ %i.ql, %.lr.ph188 ], [ %i.sb, %bb.cj ] ; 2 uses
  %i.qx = phi ptr [ %i.qk, %.lr.ph188 ], [ %i.sc, %bb.cj ]
  %indvars.iv203 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next204, %bb.cj ] ; 4 uses
  %i.qy = phi i64 [ %i.qo, %.lr.ph188 ], [ %i.sf, %bb.cj ]
  %i.qz = ashr exact i64 %i.qy, 3
  %i.ra = icmp ugt i64 %i.qz, %indvars.iv203
  br i1 %i.ra, label %_ZN4core5arrayIP13_SDL_JoystickEixEj.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIP13_SDL_JoystickEixEj) #33
  unreachable

_ZN4core5arrayIP13_SDL_JoystickEixEj.exit:        ; preds = %bb.ce
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %indvars.iv203
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !131 ; 7 uses
  %.not73 = icmp eq ptr %i.rc, null
  br i1 %.not73, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %_ZN4core5arrayIP13_SDL_JoystickEixEj.exit
  %i.rd = call i32 @SDL_JoystickNumButtons(ptr noundef nonnull %i.rc) ; 2 uses
  %.sroa.speculated90 = call i32 @llvm.umin.i32(i32 %i.rd, i32 32)
  store i32 0, ptr %i.qh, align 8, !tbaa !87
  %i.re = icmp sgt i32 %i.rd, 0
  br i1 %i.re, label %.lr.ph182, label %._crit_edge

.lr.ph182:                                        ; preds = %bb.cg, %.lr.ph182
  %.057181 = phi i32 [ %i.rk, %.lr.ph182 ], [ 0, %bb.cg ] ; 3 uses
  %i.rf = call zeroext i8 @SDL_JoystickGetButton(ptr noundef nonnull %i.rc, i32 noundef %.057181)
  %i.rg = zext i8 %i.rf to i32
  %i.rh = shl i32 %i.rg, %.057181
  %i.ri = load i32, ptr %i.qh, align 8, !tbaa !87
  %i.rj = or i32 %i.rh, %i.ri
  store i32 %i.rj, ptr %i.qh, align 8, !tbaa !87
  %i.rk = add nuw nsw i32 %.057181, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.rk, %.sroa.speculated90
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph182, !llvm.loop !181

._crit_edge:                                      ; preds = %.lr.ph182, %bb.cg
  %i.rl = call i32 @SDL_JoystickNumAxes(ptr noundef nonnull %i.rc) ; 2 uses
  %i.rm = icmp sgt i32 %i.rl, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.qq, i8 0, i64 12, i1 false)
  br i1 %i.rm, label %.lr.ph185.preheader, label %._crit_edge186

.lr.ph185.preheader:                              ; preds = %._crit_edge
  %i.rn = call i32 @llvm.umin.i32(i32 %i.rl, i32 18)
  %wide.trip.count = zext nneg i32 %i.rn to i64
  br label %.lr.ph185

.lr.ph185:                                        ; preds = %.lr.ph185.preheader, %.lr.ph185
  %indvars.iv = phi i64 [ 0, %.lr.ph185.preheader ], [ %indvars.iv.next, %.lr.ph185 ] ; 3 uses
  %i.ro = trunc nuw nsw i64 %indvars.iv to i32
  %i.rp = call signext i16 @SDL_JoystickGetAxis(ptr noundef nonnull %i.rc, i32 noundef %i.ro)
  %i.rq = getelementptr inbounds nuw [2 x i8], ptr %i.qq, i64 %indvars.iv
  store i16 %i.rp, ptr %i.rq, align 2, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond202.not, label %._crit_edge186, label %.lr.ph185, !llvm.loop !182

._crit_edge186:                                   ; preds = %.lr.ph185, %._crit_edge
  %i.rr = call i32 @SDL_JoystickNumHats(ptr noundef nonnull %i.rc)
  %i.rs = icmp sgt i32 %i.rr, 0
  br i1 %i.rs, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge186
  %i.rt = call zeroext i8 @SDL_JoystickGetHat(ptr noundef nonnull %i.rc, i32 noundef 0)
  %switch.tableidx = add i8 %i.rt, -1             ; 2 uses
  %i.ru = icmp ult i8 %switch.tableidx, 12
  br i1 %i.ru, label %switch.lookup, label %bb.ci

switch.lookup:                                    ; preds = %bb.ch
  %i.rv = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN13CIrrDeviceSDL3runEv, i64 %i.rv
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %switch.lookup, %._crit_edge186
  %.sink258 = phi i16 [ %switch.load, %switch.lookup ], [ -1, %._crit_edge186 ], [ -1, %bb.ch ]
  store i16 %.sink258, ptr %i.qr, align 8, !tbaa !87
  %i.rw = trunc i64 %indvars.iv203 to i8
  store i8 %i.rw, ptr %i.qs, align 2, !tbaa !87
  %i.rx = load ptr, ptr %0, align 8, !tbaa !17
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 200
  %i.rz = load ptr, ptr %i.ry, align 8
  %i.sa = call noundef zeroext i1 %i.rz(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(56) %9) ; 0 uses
  %.pre = load ptr, ptr %i.qj, align 8, !tbaa !130
  %.pre207 = load ptr, ptr %i.qi, align 8, !tbaa !106
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN4core5arrayIP13_SDL_JoystickEixEj.exit
  %i.sb = phi ptr [ %.pre207, %bb.ci ], [ %i.qw, %_ZN4core5arrayIP13_SDL_JoystickEixEj.exit ] ; 2 uses
  %i.sc = phi ptr [ %.pre, %bb.ci ], [ %i.qx, %_ZN4core5arrayIP13_SDL_JoystickEixEj.exit ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = ptrtoint ptr %i.sb to i64
  %i.sf = sub i64 %i.sd, %i.se                    ; 2 uses
  %i.sg = lshr exact i64 %i.sf, 3
  %i.sh = and i64 %i.sg, 4294967295
  %i.si = icmp samesign ult i64 %indvars.iv.next204, %i.sh
  br i1 %i.si, label %bb.ce, label %._crit_edge189, !llvm.loop !183
}

declare void @_ZN2os5Timer4tickEv() local_unnamed_addr #3

declare i32 @SDL_GetModState() local_unnamed_addr #3

declare i32 @SDL_GetRelativeMouseMode() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4core13utf8ToWStringERNS_6stringIwEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string.18", align 8   ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string.19", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28
  call void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.19") align 8 %3, i64 %i.a, ptr nonnull %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !164
  %i.c = load ptr, ptr %3, align 8, !tbaa !171    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !167  ; 2 uses
  %i.h = icmp ult i64 %i.g, 4
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  %i.j = call ptr @wmemcpy(ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, i64 noundef %i.i) #28 ; 0 uses
  br label %_ZN4core6stringIwEC2EONSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.c, ptr %2, align 8, !tbaa !171
  %i.k = load i64, ptr %i.d, align 8, !tbaa !87
  store i64 %i.k, ptr %i.b, align 8, !tbaa !87
  br label %_ZN4core6stringIwEC2EONSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit

_ZN4core6stringIwEC2EONSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !167
  store ptr %i.d, ptr %3, align 8, !tbaa !171
  store i64 0, ptr %i.l, align 8, !tbaa !167
  store i32 0, ptr %i.d, align 8, !tbaa !169
  invoke void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN4core6stringIwEaSERKS1_.exit unwind label %bb.c

_ZN4core6stringIwEaSERKS1_.exit:                  ; preds = %_ZN4core6stringIwEC2EONSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit
  %i.o = load ptr, ptr %2, align 8, !tbaa !171    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4core6stringIwEaSERKS1_.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !87
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %_ZN4core6stringIwEaSERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  %i.t = load ptr, ptr %3, align 8, !tbaa !171    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN4core6stringIwED2Ev.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !87
  %i.w = shl i64 %i.v, 2
  %i.x = add i64 %i.w, 4
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZN4core6stringIwED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !167
  %i.aa = and i64 %i.z, 4294967295
  ret i64 %i.aa

bb.c:                                             ; preds = %_ZN4core6stringIwEC2EONSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !171   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.b
  br i1 %i.ad, label %_ZN4core6stringIwED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.c
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !87
  %i.af = shl i64 %i.ae, 2
  %i.ag = add i64 %i.af, 4
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  br label %_ZN4core6stringIwED2Ev.exit7

_ZN4core6stringIwED2Ev.exit7:                     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i5
  %i.ah = load ptr, ptr %3, align 8, !tbaa !171   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.d
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i8: ; preds = %_ZN4core6stringIwED2Ev.exit7
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !87
  %i.ak = shl i64 %i.aj, 2
  %i.al = add i64 %i.ak, 4
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit10: ; preds = %_ZN4core6stringIwED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.ab
}

declare void @_ZN2os7Printer3logEPKcRKN4core6stringIcEE10ELOG_LEVEL(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare void @SDL_JoystickUpdate() local_unnamed_addr #3

declare i32 @SDL_JoystickNumButtons(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @SDL_JoystickGetButton(ptr noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
