inline.NumInlined: 444
inline.NumDeleted: 178
begin_hunk_0_@_ZN6Assimp3FBX17FBXExportProperty9DumpAsciiERSoi:bb.a
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %1, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load i64, ptr %i.bw, align 8
  %.not.i174 = icmp eq i64 %i.bx, 0
  br i1 %.not.i174, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ab, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit176

bb.p:                                             ; preds = %.loopexit
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit176

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit176: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ca = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.cb = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %.not328 = icmp eq ptr %i.ca, %i.cb
  br i1 %.not328, label %._crit_edge314, label %.lr.ph313

bb.q:                                             ; preds = %.lr.ph313
  %i.cf = add nuw i64 %.0157312, 1                ; 2 uses
  %exitcond347.not = icmp eq i64 %i.cf, %i.ce
  br i1 %exitcond347.not, label %._crit_edge314, label %.lr.ph313, !llvm.loop !30

._crit_edge314:                                   ; preds = %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit176
  %i.cg = add i64 %.1147, 2                       ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %.lr.ph317, label %._crit_edge318

.lr.ph313:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit176, %bb.q
  %.0157312 = phi i64 [ %i.cf, %bb.q ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit176 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0157312
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = icmp eq i8 %i.cj, 34
  br i1 %i.ck, label %bb.r, label %bb.q

bb.r:                                             ; preds = %.lr.ph313
  %i.cl = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull @.str.3)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.cl, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cl) #17
  br label %bb.cx

._crit_edge318:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179, %._crit_edge314
  %.lcssa = phi i64 [ %i.ce, %._crit_edge314 ], [ %i.dd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179 ]
  %.not166 = icmp eq i64 %.1147, %.lcssa
  br i1 %.not166, label %bb.x, label %bb.w

.lr.ph317:                                        ; preds = %._crit_edge314, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179
  %i.cn = phi ptr [ %i.da, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179 ], [ %i.cb, %._crit_edge314 ]
  %.0148315 = phi i64 [ %i.cy, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179 ], [ %i.cg, %._crit_edge314 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.0148315
  %i.cp = load i8, ptr %i.co, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %i.cp, ptr %i.aa, align 1
  %i.cq = load ptr, ptr %1, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %1, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8
  %.not.i177 = icmp eq i64 %i.cv, 0
  br i1 %.not.i177, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph317
  %i.cw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.aa, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179

bb.v:                                             ; preds = %.lr.ph317
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %i.cp) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit179: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.cy = add nuw i64 %.0148315, 1                ; 2 uses
  %i.cz = load ptr, ptr %i.ag, align 8
  %i.da = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = icmp ult i64 %i.cy, %i.dd
  br i1 %i.de, label %.lr.ph317, label %._crit_edge318, !llvm.loop !31

bb.w:                                             ; preds = %._crit_edge318
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 2) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge318
  %.not329 = icmp eq i64 %.1147, 0
  br i1 %.not329, label %._crit_edge323, label %.lr.ph322

._crit_edge323:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit185, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i8 34, ptr %i.z, align 1
  %i.dg = load ptr, ptr %1, align 8
  %i.dh = getelementptr i8, ptr %i.dg, i64 -24
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds i8, ptr %1, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load i64, ptr %i.dk, align 8
  %.not.i180 = icmp eq i64 %i.dl, 0
  br i1 %.not.i180, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge323
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.z, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit182

bb.z:                                             ; preds = %._crit_edge323
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit182

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit182: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.cw

.lr.ph322:                                        ; preds = %bb.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit185
  %.0145320 = phi i64 [ %i.dz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit185 ], [ 0, %bb.x ] ; 2 uses
  %i.do = load ptr, ptr %i.ae, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.0145320
  %i.dq = load i8, ptr %i.dp, align 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i8 %i.dq, ptr %i.y, align 1
  %i.dr = load ptr, ptr %1, align 8
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i64, ptr %i.dv, align 8
  %.not.i183 = icmp eq i64 %i.dw, 0
  br i1 %.not.i183, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph322
  %i.dx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.y, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit185

bb.ab:                                            ; preds = %.lr.ph322
  %i.dy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %i.dq) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit185

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit185: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.dz = add nuw i64 %.0145320, 1                ; 2 uses
  %exitcond348.not = icmp eq i64 %i.dz, %.1147
  br i1 %exitcond348.not, label %._crit_edge323, label %.lr.ph322, !llvm.loop !32

bb.ac:                                            ; preds = %bb.a
  %i.ea = lshr i64 %i.ak, 2                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i8 42, ptr %i.x, align 1
  %i.eb = load ptr, ptr %1, align 8
  %i.ec = getelementptr i8, ptr %i.eb, i64 -24
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds i8, ptr %1, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load i64, ptr %i.ef, align 8
  %.not.i186 = icmp eq i64 %i.eg, 0
  br i1 %.not.i186, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.x, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit188

bb.ae:                                            ; preds = %bb.ac
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 42) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit188

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit188: ; preds = %bb.ad, %bb.ae
  %.0.i187 = phi ptr [ %i.eh, %bb.ad ], [ %1, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ej = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i187, i64 noundef %i.ea)
  %i.ek = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.5, i64 noundef 3) ; 0 uses
  %.not164296 = icmp slt i32 %2, 0
  br i1 %.not164296, label %._crit_edge299, label %.lr.ph298

._crit_edge299:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit188
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 3) ; 0 uses
  %.not326.a = icmp eq i64 %i.ea, 0
  br i1 %.not326.a, label %._crit_edge304, label %._crit_edge354

._crit_edge354:                                   ; preds = %._crit_edge299
  %.pre355 = load i32, ptr %i.af, align 4
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.pre355) ; 0 uses
  %exitcond343.peel.not = icmp eq i64 %i.ea, 1
  br i1 %exitcond343.peel.not, label %._crit_edge304, label %.lr.ph303.peel.next

.lr.ph298:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit188, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191
  %.0144297 = phi i32 [ %i.ev, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit188 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 9, ptr %i.w, align 1
  %i.en = load ptr, ptr %1, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr %1, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load i64, ptr %i.er, align 8
  %.not.i189 = icmp eq i64 %i.es, 0
  br i1 %.not.i189, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph298
  %i.et = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.w, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191

bb.ag:                                            ; preds = %.lr.ph298
  %i.eu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 9) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit191: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ev = add nuw i32 %.0144297, 1
  %exitcond342.not = icmp eq i32 %.0144297, %2
  br i1 %exitcond342.not, label %._crit_edge299, label %.lr.ph298, !llvm.loop !33

._crit_edge304:                                   ; preds = %bb.ap, %._crit_edge354, %._crit_edge299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 10, ptr %i.v, align 1
  %i.ew = load ptr, ptr %1, align 8
  %i.ex = getelementptr i8, ptr %i.ew, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %1, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load i64, ptr %i.fa, align 8
  %.not.i192 = icmp eq i64 %i.fb, 0
  br i1 %.not.i192, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge304
  %i.fc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.v, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit194

bb.ai:                                            ; preds = %._crit_edge304
  %i.fd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit194

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit194: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.fe = icmp sgt i32 %2, 0
  br i1 %i.fe, label %.lr.ph306, label %._crit_edge307

.lr.ph303.peel.next:                              ; preds = %._crit_edge354, %bb.ap
  %.0143301 = phi i64 [ %i.ga, %bb.ap ], [ 1, %._crit_edge354 ] ; 2 uses
  %.0154300 = phi i64 [ %.1155, %bb.ap ], [ 1, %._crit_edge354 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 44, ptr %i.u, align 1
  %i.ff = load ptr, ptr %1, align 8
  %i.fg = getelementptr i8, ptr %i.ff, i64 -24
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds i8, ptr %1, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i64, ptr %i.fj, align 8
  %.not.i195 = icmp eq i64 %i.fk, 0
  br i1 %.not.i195, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph303.peel.next
  %i.fl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.u, i64 noundef 1) ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph303.peel.next
  %i.fm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 44) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fn = add nuw nsw i64 %.0154300, 1
  %i.fo = icmp ugt i64 %.0154300, 120
  br i1 %i.fo, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 10, ptr %i.t, align 1
  %i.fp = load ptr, ptr %1, align 8
  %i.fq = getelementptr i8, ptr %i.fp, i64 -24
  %i.fr = load i64, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds i8, ptr %1, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load i64, ptr %i.ft, align 8
  %.not.i198 = icmp eq i64 %i.fu, 0
  br i1 %.not.i198, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.t, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200

bb.ao:                                            ; preds = %bb.am
  %i.fw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200, %bb.al
  %.1155 = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit200 ], [ %i.fn, %bb.al ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.0143301
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.fy) ; 0 uses
  %i.ga = add nuw nsw i64 %.0143301, 1            ; 2 uses
  %exitcond343.not = icmp eq i64 %i.ga, %i.ea
  br i1 %exitcond343.not, label %._crit_edge304, label %.lr.ph303.peel.next, !llvm.loop !34

._crit_edge307:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit203, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit194
  %i.gb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  br label %bb.cw

.lr.ph306:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit194, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit203
  %.0142305 = phi i32 [ %i.gk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit203 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit194 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 9, ptr %i.s, align 1
  %i.gc = load ptr, ptr %1, align 8
  %i.gd = getelementptr i8, ptr %i.gc, i64 -24
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds i8, ptr %1, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i64, ptr %i.gg, align 8
  %.not.i201 = icmp eq i64 %i.gh, 0
  br i1 %.not.i201, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph306
  %i.gi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.s, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit203

bb.ar:                                            ; preds = %.lr.ph306
  %i.gj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 9) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit203

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit203: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.gk = add nuw nsw i32 %.0142305, 1            ; 2 uses
  %exitcond345.not = icmp eq i32 %i.gk, %2
  br i1 %exitcond345.not, label %._crit_edge307, label %.lr.ph306, !llvm.loop !36

bb.as:                                            ; preds = %bb.a
  %i.gl = lshr i64 %i.ak, 3                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 42, ptr %i.r, align 1
  %i.gm = load ptr, ptr %1, align 8
  %i.gn = getelementptr i8, ptr %i.gm, i64 -24
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds i8, ptr %1, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i64, ptr %i.gq, align 8
  %.not.i204 = icmp eq i64 %i.gr, 0
  br i1 %.not.i204, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.r, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit206

bb.au:                                            ; preds = %bb.as
  %i.gt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 42) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit206

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit206: ; preds = %bb.at, %bb.au
  %.0.i205 = phi ptr [ %i.gs, %bb.at ], [ %1, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i205, i64 noundef %i.gl)
  %i.gv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gu, ptr noundef nonnull @.str.5, i64 noundef 3) ; 0 uses
  %.not162284 = icmp slt i32 %2, 0
  br i1 %.not162284, label %._crit_edge287, label %.lr.ph286

._crit_edge287:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit206
  %i.gw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 3) ; 0 uses
  %.not325.a = icmp eq i64 %i.gl, 0
  br i1 %.not325.a, label %._crit_edge292, label %._crit_edge352

._crit_edge352:                                   ; preds = %._crit_edge287
  %.pre353 = load i64, ptr %i.af, align 8
  %i.gx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.pre353) ; 0 uses
  %exitcond339.peel.not = icmp eq i64 %i.gl, 1
  br i1 %exitcond339.peel.not, label %._crit_edge292, label %.lr.ph291.peel.next

.lr.ph286:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit206, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209
  %.0141285 = phi i32 [ %i.hg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit206 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 9, ptr %i.q, align 1
  %i.gy = load ptr, ptr %1, align 8
  %i.gz = getelementptr i8, ptr %i.gy, i64 -24
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds i8, ptr %1, i64 %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load i64, ptr %i.hc, align 8
  %.not.i207 = icmp eq i64 %i.hd, 0
  br i1 %.not.i207, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph286
  %i.he = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.q, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209

bb.aw:                                            ; preds = %.lr.ph286
  %i.hf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 9) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit209: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hg = add nuw i32 %.0141285, 1
  %exitcond338.not = icmp eq i32 %.0141285, %2
  br i1 %exitcond338.not, label %._crit_edge287, label %.lr.ph286, !llvm.loop !37

._crit_edge292:                                   ; preds = %bb.bf, %._crit_edge352, %._crit_edge287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 10, ptr %i.p, align 1
  %i.hh = load ptr, ptr %1, align 8
  %i.hi = getelementptr i8, ptr %i.hh, i64 -24
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = getelementptr inbounds i8, ptr %1, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load i64, ptr %i.hl, align 8
  %.not.i210 = icmp eq i64 %i.hm, 0
  br i1 %.not.i210, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge292
  %i.hn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.p, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit212

bb.ay:                                            ; preds = %._crit_edge292
  %i.ho = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit212

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit212: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.hp = icmp sgt i32 %2, 0
  br i1 %i.hp, label %.lr.ph294, label %._crit_edge295

.lr.ph291.peel.next:                              ; preds = %._crit_edge352, %bb.bf
  %.0140289 = phi i64 [ %i.il, %bb.bf ], [ 1, %._crit_edge352 ] ; 2 uses
  %.2156288 = phi i64 [ %.3, %bb.bf ], [ 1, %._crit_edge352 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 44, ptr %i.o, align 1
  %i.hq = load ptr, ptr %1, align 8
  %i.hr = getelementptr i8, ptr %i.hq, i64 -24
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds i8, ptr %1, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load i64, ptr %i.hu, align 8
  %.not.i213 = icmp eq i64 %i.hv, 0
  br i1 %.not.i213, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph291.peel.next
  %i.hw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.o, i64 noundef 1) ; 0 uses
  br label %bb.bb

bb.ba:                                            ; preds = %.lr.ph291.peel.next
  %i.hx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 44) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.hy = add nuw nsw i64 %.2156288, 1
  %i.hz = icmp ugt i64 %.2156288, 120
  br i1 %i.hz, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 10, ptr %i.n, align 1
  %i.ia = load ptr, ptr %1, align 8
  %i.ib = getelementptr i8, ptr %i.ia, i64 -24
  %i.ic = load i64, ptr %i.ib, align 8
  %i.id = getelementptr inbounds i8, ptr %1, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load i64, ptr %i.ie, align 8
  %.not.i216 = icmp eq i64 %i.if, 0
  br i1 %.not.i216, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ig = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.n, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit218

bb.be:                                            ; preds = %bb.bc
  %i.ih = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit218

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit218: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bf

bb.bf:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit218, %bb.bb
  %.3 = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit218 ], [ %i.hy, %bb.bb ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0140289
  %i.ij = load i64, ptr %i.ii, align 8
  %i.ik = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ij) ; 0 uses
  %i.il = add nuw nsw i64 %.0140289, 1            ; 2 uses
  %exitcond339.not.a = icmp eq i64 %i.il, %i.gl
  br i1 %exitcond339.not.a, label %._crit_edge292, label %.lr.ph291.peel.next, !llvm.loop !38

._crit_edge295:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit221, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit212
  %i.im = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  br label %bb.cw

.lr.ph294:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit212, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit221
  %.0139293 = phi i32 [ %i.iv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit221 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit212 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 9, ptr %i.m, align 1
  %i.in = load ptr, ptr %1, align 8
  %i.io = getelementptr i8, ptr %i.in, i64 -24
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = getelementptr inbounds i8, ptr %1, i64 %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load i64, ptr %i.ir, align 8
  %.not.i219 = icmp eq i64 %i.is, 0
  br i1 %.not.i219, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph294
  %i.it = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.m, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit221

bb.bh:                                            ; preds = %.lr.ph294
  %i.iu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 9) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit221

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit221: ; preds = %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.iv = add nuw nsw i32 %.0139293, 1            ; 2 uses
  %exitcond341.not = icmp eq i32 %i.iv, %2
  br i1 %exitcond341.not, label %._crit_edge295, label %.lr.ph294, !llvm.loop !39

bb.bi:                                            ; preds = %bb.a
  %i.iw = lshr i64 %i.ak, 2                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 42, ptr %i.l, align 1
  %i.ix = load ptr, ptr %1, align 8
  %i.iy = getelementptr i8, ptr %i.ix, i64 -24
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = getelementptr inbounds i8, ptr %1, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load i64, ptr %i.jb, align 8
  %.not.i222 = icmp eq i64 %i.jc, 0
  br i1 %.not.i222, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.l, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit224

bb.bk:                                            ; preds = %bb.bi
  %i.je = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 42) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit224

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit224: ; preds = %bb.bj, %bb.bk
  %.0.i223 = phi ptr [ %i.jd, %bb.bj ], [ %1, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.jf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i223, i64 noundef %i.iw)
  %i.jg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jf, ptr noundef nonnull @.str.5, i64 noundef 3) ; 0 uses
  %.not160272 = icmp slt i32 %2, 0
  br i1 %.not160272, label %._crit_edge275, label %.lr.ph274

._crit_edge275:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit227, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit224
  %i.jh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 3) ; 0 uses
  %.not324.a = icmp eq i64 %i.iw, 0
  br i1 %.not324.a, label %._crit_edge280, label %._crit_edge350

._crit_edge350:                                   ; preds = %._crit_edge275
  %.pre351 = load float, ptr %i.af, align 4
  %i.ji = fpext float %.pre351 to double
  %i.jj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.ji) ; 0 uses
  %exitcond335.peel.not = icmp eq i64 %i.iw, 1
  br i1 %exitcond335.peel.not, label %._crit_edge280, label %.lr.ph279.peel.next

.lr.ph274:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit224, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit227
  %.0138273 = phi i32 [ %i.js, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit227 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit224 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 9, ptr %i.k, align 1
  %i.jk = load ptr, ptr %1, align 8
  %i.jl = getelementptr i8, ptr %i.jk, i64 -24
  %i.jm = load i64, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds i8, ptr %1, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.jp = load i64, ptr %i.jo, align 8
  %.not.i225 = icmp eq i64 %i.jp, 0
  br i1 %.not.i225, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph274
  %i.jq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.k, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit227

bb.bm:                                            ; preds = %.lr.ph274
  %i.jr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 9) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit227

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit227: ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.js = add nuw i32 %.0138273, 1
  %exitcond334.not = icmp eq i32 %.0138273, %2
  br i1 %exitcond334.not, label %._crit_edge275, label %.lr.ph274, !llvm.loop !40

._crit_edge280:                                   ; preds = %bb.bv, %._crit_edge350, %._crit_edge275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 10, ptr %i.j, align 1
  %i.jt = load ptr, ptr %1, align 8
  %i.ju = getelementptr i8, ptr %i.jt, i64 -24
  %i.jv = load i64, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds i8, ptr %1, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load i64, ptr %i.jx, align 8
  %.not.i228 = icmp eq i64 %i.jy, 0
  br i1 %.not.i228, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge280
  %i.jz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit230

bb.bo:                                            ; preds = %._crit_edge280
  %i.ka = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit230

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit230: ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.kb = icmp sgt i32 %2, 0
  br i1 %i.kb, label %.lr.ph282, label %._crit_edge283

.lr.ph279.peel.next:                              ; preds = %._crit_edge350, %bb.bv
  %.0137277 = phi i64 [ %i.ky, %bb.bv ], [ 1, %._crit_edge350 ] ; 2 uses
  %.4276 = phi i64 [ %.5, %bb.bv ], [ 1, %._crit_edge350 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 44, ptr %i.i, align 1
  %i.kc = load ptr, ptr %1, align 8
  %i.kd = getelementptr i8, ptr %i.kc, i64 -24
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds i8, ptr %1, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load i64, ptr %i.kg, align 8
  %.not.i231 = icmp eq i64 %i.kh, 0
  br i1 %.not.i231, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph279.peel.next
  %i.ki = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.i, i64 noundef 1) ; 0 uses
  br label %bb.br

bb.bq:                                            ; preds = %.lr.ph279.peel.next
  %i.kj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 44) ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.kk = add nuw nsw i64 %.4276, 1
  %i.kl = icmp ugt i64 %.4276, 120
  br i1 %i.kl, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 10, ptr %i.h, align 1
  %i.km = load ptr, ptr %1, align 8
  %i.kn = getelementptr i8, ptr %i.km, i64 -24
  %i.ko = load i64, ptr %i.kn, align 8
  %i.kp = getelementptr inbounds i8, ptr %1, i64 %i.ko
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load i64, ptr %i.kq, align 8
  %.not.i234 = icmp eq i64 %i.kr, 0
  br i1 %.not.i234, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ks = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.h, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit236

bb.bu:                                            ; preds = %bb.bs
  %i.kt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit236

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit236: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.bv

bb.bv:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit236, %bb.br
  %.5 = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit236 ], [ %i.kk, %bb.br ]
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.0137277
  %i.kv = load float, ptr %i.ku, align 4
  %i.kw = fpext float %i.kv to double
  %i.kx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.kw) ; 0 uses
  %i.ky = add nuw nsw i64 %.0137277, 1            ; 2 uses
  %exitcond335.not = icmp eq i64 %i.ky, %i.iw
  br i1 %exitcond335.not, label %._crit_edge280, label %.lr.ph279.peel.next, !llvm.loop !41

._crit_edge283:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit239, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit230
  %i.kz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  br label %bb.cw

.lr.ph282:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit230, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit239
  %.0136281 = phi i32 [ %i.li, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit239 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit230 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 9, ptr %i.g, align 1
  %i.la = load ptr, ptr %1, align 8
  %i.lb = getelementptr i8, ptr %i.la, i64 -24
  %i.lc = load i64, ptr %i.lb, align 8
  %i.ld = getelementptr inbounds i8, ptr %1, i64 %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lf = load i64, ptr %i.le, align 8
  %.not.i237 = icmp eq i64 %i.lf, 0
  br i1 %.not.i237, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph282
  %i.lg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.g, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit239

bb.bx:                                            ; preds = %.lr.ph282
  %i.lh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 9) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit239

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit239: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.li = add nuw nsw i32 %.0136281, 1            ; 2 uses
  %exitcond337.not = icmp eq i32 %i.li, %2
  br i1 %exitcond337.not, label %._crit_edge283, label %.lr.ph282, !llvm.loop !42

bb.by:                                            ; preds = %bb.a
  %i.lj = lshr i64 %i.ak, 3                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 42, ptr %i.f, align 1
  %i.lk = load ptr, ptr %1, align 8
  %i.ll = getelementptr i8, ptr %i.lk, i64 -24
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds i8, ptr %1, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load i64, ptr %i.lo, align 8
  %.not.i240 = icmp eq i64 %i.lp, 0
  br i1 %.not.i240, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit242

bb.ca:                                            ; preds = %bb.by
  %i.lr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 42) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit242

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit242: ; preds = %bb.bz, %bb.ca
  %.0.i241 = phi ptr [ %i.lq, %bb.bz ], [ %1, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ls = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i241, i64 noundef %i.lj)
  %i.lt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ls, ptr noundef nonnull @.str.5, i64 noundef 3) ; 0 uses
  %.not262 = icmp slt i32 %2, 0
  br i1 %.not262, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit245, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit242
  %i.lu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 3) ; 0 uses
  %i.lv = load ptr, ptr %1, align 8
  %i.lw = getelementptr i8, ptr %i.lv, i64 -24
  %i.lx = load i64, ptr %i.lw, align 8
  %i.ly = getelementptr inbounds i8, ptr %1, i64 %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store i64 15, ptr %i.lz, align 8
  %.not.a = icmp eq i64 %i.lj, 0
  br i1 %.not.a, label %._crit_edge268, label %._crit_edge349

._crit_edge349:                                   ; preds = %._crit_edge
  %.pre = load double, ptr %i.af, align 8
  %i.ma = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %.pre) ; 0 uses
  %exitcond331.peel.not = icmp eq i64 %i.lj, 1
  br i1 %exitcond331.peel.not, label %._crit_edge268, label %.lr.ph267.peel.next

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit242, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit245
  %.0135263 = phi i32 [ %i.mj, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit245 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit242 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 9, ptr %i.e, align 1
  %i.mb = load ptr, ptr %1, align 8
  %i.mc = getelementptr i8, ptr %i.mb, i64 -24
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = getelementptr inbounds i8, ptr %1, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load i64, ptr %i.mf, align 8
  %.not.i243 = icmp eq i64 %i.mg, 0
  br i1 %.not.i243, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph
  %i.mh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit245

bb.cc:                                            ; preds = %.lr.ph
  %i.mi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 9) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit245

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit245: ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.mj = add nuw i32 %.0135263, 1
  %exitcond.not = icmp eq i32 %.0135263, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43

._crit_edge268:                                   ; preds = %bb.cl, %._crit_edge349, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1
  %i.mk = load ptr, ptr %1, align 8
  %i.ml = getelementptr i8, ptr %i.mk, i64 -24
  %i.mm = load i64, ptr %i.ml, align 8
  %i.mn = getelementptr inbounds i8, ptr %1, i64 %i.mm
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load i64, ptr %i.mo, align 8
  %.not.i246 = icmp eq i64 %i.mp, 0
  br i1 %.not.i246, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %._crit_edge268
  %i.mq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248

bb.ce:                                            ; preds = %._crit_edge268
  %i.mr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248: ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ms = icmp sgt i32 %2, 0
  br i1 %i.ms, label %.lr.ph270, label %._crit_edge271

.lr.ph267.peel.next:                              ; preds = %._crit_edge349, %bb.cl
  %.0134265 = phi i64 [ %i.no, %bb.cl ], [ 1, %._crit_edge349 ] ; 2 uses
  %.6264 = phi i64 [ %.7, %bb.cl ], [ 1, %._crit_edge349 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 44, ptr %i.c, align 1
  %i.mt = load ptr, ptr %1, align 8
  %i.mu = getelementptr i8, ptr %i.mt, i64 -24
  %i.mv = load i64, ptr %i.mu, align 8
  %i.mw = getelementptr inbounds i8, ptr %1, i64 %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.my = load i64, ptr %i.mx, align 8
  %.not.i249 = icmp eq i64 %i.my, 0
  br i1 %.not.i249, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph267.peel.next
  %i.mz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %bb.ch

bb.cg:                                            ; preds = %.lr.ph267.peel.next
  %i.na = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 44) ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.nb = add nuw nsw i64 %.6264, 1
  %i.nc = icmp ugt i64 %.6264, 120
  br i1 %i.nc, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 10, ptr %i.b, align 1
  %i.nd = load ptr, ptr %1, align 8
  %i.ne = getelementptr i8, ptr %i.nd, i64 -24
  %i.nf = load i64, ptr %i.ne, align 8
  %i.ng = getelementptr inbounds i8, ptr %1, i64 %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load i64, ptr %i.nh, align 8
  %.not.i252 = icmp eq i64 %i.ni, 0
  br i1 %.not.i252, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit254

bb.ck:                                            ; preds = %bb.ci
  %i.nk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit254

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit254: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cl

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit254, %bb.ch
  %.7 = phi i64 [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit254 ], [ %i.nb, %bb.ch ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.0134265
  %i.nm = load double, ptr %i.nl, align 8
  %i.nn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.nm) ; 0 uses
  %i.no = add nuw nsw i64 %.0134265, 1            ; 2 uses
  %exitcond331.not = icmp eq i64 %i.no, %i.lj
  br i1 %exitcond331.not, label %._crit_edge268, label %.lr.ph267.peel.next, !llvm.loop !44

._crit_edge271:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit257, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248
  %i.np = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 2) ; 0 uses
  br label %bb.cw

.lr.ph270:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit257
  %.0133269 = phi i32 [ %i.ny, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit257 ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit248 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 9, ptr %i.a, align 1
  %i.nq = load ptr, ptr %1, align 8
  %i.nr = getelementptr i8, ptr %i.nq, i64 -24
  %i.ns = load i64, ptr %i.nr, align 8
  %i.nt = getelementptr inbounds i8, ptr %1, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load i64, ptr %i.nu, align 8
  %.not.i255 = icmp eq i64 %i.nv, 0
  br i1 %.not.i255, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph270
  %i.nw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit257

bb.cn:                                            ; preds = %.lr.ph270
  %i.nx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 9) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit257

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit257: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ny = add nuw nsw i32 %.0133269, 1            ; 2 uses
  %exitcond333.not = icmp eq i32 %i.ny, %2
  br i1 %exitcond333.not, label %._crit_edge271, label %.lr.ph270, !llvm.loop !45

bb.co:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.nz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.co
  %i.oa = load i8, ptr %0, align 8
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef signext %i.oa)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.oc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ob, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258: ; preds = %bb.cp
  %i.od = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.cq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.cq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.od, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.cr unwind label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  invoke void @__cxa_throw(ptr nonnull %i.od, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #18
          to label %bb.cy unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cp, %bb.co, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit258
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr, %bb.cq
  %.0 = phi i1 [ false, %bb.cr ], [ true, %bb.cq ] ; 2 uses
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.oh = load ptr, ptr %4, align 8               ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ct
  %i.ok = load i64, ptr %i.oi, align 8
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ol) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0, label %bb.cu, label %bb.cv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn261 = phi { ptr, i32 } [ %i.of, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.og, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.od) #17
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cu, %bb.cs
  %.pn.pn = phi { ptr, i32 } [ %.pn261, %bb.cu ], [ %i.og, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.oe, %bb.cs ], [ %i.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.cx

bb.cw:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit173, %._crit_edge271, %._crit_edge283, %._crit_edge295, %._crit_edge307, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit182, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  ret void

bb.cx:                                            ; preds = %bb.cv, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.cv ], [ %i.cm, %bb.t ]
  resume { ptr, i32 } %.pn.pn.pn

bb.cy:                                            ; preds = %bb.cr
  unreachable
}

end_hunk_0
