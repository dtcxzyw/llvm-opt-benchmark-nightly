Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/jsonnet?download=true
inline.NumInlined: 1094
inline.NumDeleted: 309
begin_hunk_0_@main:bb.a
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.co = load ptr, ptr %15, align 8, !tbaa !62   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.co, %15
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.co, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 4 uses
  %i.cp = load ptr, ptr %.09.i.i, align 8, !tbaa !62 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !46 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !42
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #27
  %.not.i.i = icmp eq ptr %i.cp, %15
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.u

bb.r:                                             ; preds = %.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0109.0, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !46
  invoke void @jsonnet_jpath_add(ptr noundef %i.e, ptr noundef %i.cx)
          to label %.preheader unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body107

.body107:                                         ; preds = %bb.p, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i, %bb.s
  %.pn63 = phi { ptr, i32 } [ %i.cy, %bb.s ], [ %i.bp, %bb.p ], [ %i.bb, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i ]
  %i.cz = load ptr, ptr %18, align 8, !tbaa !46   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.ag
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %.body107
  %i.db = load i64, ptr %i.ag, align 8, !tbaa !42
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %.body107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %16) #25
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn63.pn = phi { ptr, i32 } [ %.pn63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.dj

bb.u:                                             ; preds = %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.b
  %i.dd = invoke fastcc noundef i32 @_ZL12process_argsiPPKcP13JsonnetConfigP9JsonnetVm(i32 noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef %i.e)
          to label %bb.v unwind label %bb.y       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %.not57 = icmp eq i32 %i.dd, 0
  br i1 %.not57, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @jsonnet_destroy(ptr noundef %i.e)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.de = icmp ne i32 %i.dd, 1
  %i.df = zext i1 %i.de to i32
  br label %bb.dh

bb.y:                                             ; preds = %bb.w, %bb.u
  %i.dg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.dj

bb.z:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  %i.dh = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.dh, ptr %19, align 8, !tbaa !48
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.di, align 8, !tbaa !47
  store i8 0, ptr %i.dh, align 8, !tbaa !42
  %i.dj = load i8, ptr %i.i, align 8, !tbaa !57, !range !63, !noundef !64
  %i.dk = trunc nuw i8 %i.dj to i1
  %i.dl = load ptr, ptr %14, align 8, !tbaa !65
  %i.dm = invoke noundef zeroext i1 @_Z10read_inputbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(i1 noundef zeroext %i.dk, ptr noundef nonnull %i.dl, ptr noundef nonnull %19)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dm, label %bb.ac, label %.invoke

bb.ab:                                            ; preds = %.invoke, %bb.ak, %bb.aj, %.thread, %bb.cz, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ag, %bb.af, %bb.ad, %bb.z
  %i.dn = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

bb.ac:                                            ; preds = %bb.aa
  %i.do = load i8, ptr %i.j, align 1, !tbaa !58, !range !63, !noundef !64
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load ptr, ptr %14, align 8, !tbaa !65
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !46
  %i.ds = load ptr, ptr %19, align 8, !tbaa !46
  %i.dt = invoke ptr @jsonnet_evaluate_snippet_multi(ptr noundef %i.e, ptr noundef %i.dr, ptr noundef %i.ds, ptr noundef nonnull %i.d)
          to label %bb.ah unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  %i.du = load i8, ptr %i.k, align 2, !tbaa !59, !range !63, !noundef !64
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = load ptr, ptr %14, align 8, !tbaa !65
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !46 ; 2 uses
  %i.dy = load ptr, ptr %19, align 8, !tbaa !46   ; 2 uses
  br i1 %i.dv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dz = invoke ptr @jsonnet_evaluate_snippet_stream(ptr noundef %i.e, ptr noundef %i.dx, ptr noundef %i.dy, ptr noundef nonnull %i.d)
          to label %bb.ah unwind label %bb.ab

bb.ag:                                            ; preds = %bb.ae
  %i.ea = invoke ptr @jsonnet_evaluate_snippet(ptr noundef %i.e, ptr noundef %i.dx, ptr noundef %i.dy, ptr noundef nonnull %i.d)
          to label %bb.ah unwind label %bb.ab

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.040 = phi ptr [ %i.dz, %bb.af ], [ %i.dt, %bb.ad ], [ %i.ea, %bb.ag ] ; 10 uses
  %i.eb = load i32, ptr %i.d, align 4, !tbaa !66
  %.not58 = icmp eq i32 %i.eb, 0
  br i1 %.not58, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i81 = icmp eq ptr %.040, null
  br i1 %.not.i81, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ec = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !16
  %i.ed = getelementptr i8, ptr %i.ec, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !27
  %i.ei = or i32 %i.eh, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ef, i32 noundef %i.ei)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ab

bb.ak:                                            ; preds = %bb.ai
  %i.ej = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.040) #25
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %.040, i64 noundef %i.ej)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.aj, %bb.ak
  %i.el = invoke ptr @jsonnet_realloc(ptr noundef %i.e, ptr noundef %.040, i64 noundef 0)
          to label %.invoke unwind label %bb.ab   ; 0 uses

bb.al:                                            ; preds = %bb.ah
  %i.em = load i8, ptr %i.j, align 1, !tbaa !58, !range !63, !noundef !64
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.am, label %bb.cy

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.eo, align 8, !tbaa !134
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.ep, align 8, !tbaa !71
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !72
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.eo, ptr %i.er, align 8, !tbaa !135
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.es, align 8, !tbaa !73
  %i.et = load i8, ptr %.040, align 1, !tbaa !42
  %.not253.i = icmp eq i8 %i.et, 0
  br i1 %.not253.i, label %._crit_edge.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.preheader.lr.ph.i
  %.061254.i = phi ptr [ %.040, %.preheader.lr.ph.i ], [ %i.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 6 uses
  %scevgep.i = getelementptr nuw i8, ptr %.061254.i, i64 1
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i) ; 2 uses
  %scevgep259.i = getelementptr i8, ptr %.061254.i, i64 %strlen.i
  %i.ew = getelementptr i8, ptr %scevgep259.i, i64 2 ; 3 uses
  %strlen260.i = call i64 @strlen(ptr nonnull dereferenceable(1) %i.ew)
  %20 = getelementptr i8, ptr %.061254.i, i64 %strlen260.i
  %scevgep262.i = getelementptr i8, ptr %20, i64 %strlen.i
  %i.ex = getelementptr i8, ptr %scevgep262.i, i64 3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.eu, ptr %4, align 8, !tbaa !48
  %i.ey = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.061254.i) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.ey, ptr %i.b, align 8, !tbaa !49
  %i.ez = icmp ugt i64 %i.ey, 15
  br i1 %i.ez, label %.noexc.i.i, label %._crit_edge.i.i.i

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.am
  %i.fa = invoke ptr @jsonnet_realloc(ptr noundef %i.e, ptr noundef nonnull %.040, i64 noundef 0)
          to label %bb.at unwind label %bb.av     ; 0 uses

.noexc.i.i:                                       ; preds = %.preheader.i
  %i.fb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc81.i unwind label %bb.ar ; 2 uses

.noexc81.i:                                       ; preds = %.noexc.i.i
  store ptr %i.fb, ptr %4, align 8, !tbaa !46
  %i.fc = load i64, ptr %i.b, align 8, !tbaa !49
  store i64 %i.fc, ptr %i.eu, align 8, !tbaa !42
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc81.i, %.preheader.i
  %i.fd = phi ptr [ %i.fb, %.noexc81.i ], [ %i.eu, %.preheader.i ] ; 2 uses
  switch i64 %i.ey, label %bb.ao [
    i64 1, label %bb.an
    i64 0, label %bb.ap
  ]

bb.an:                                            ; preds = %._crit_edge.i.i.i
  %i.fe = load i8, ptr %.061254.i, align 1, !tbaa !42
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !42
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr nonnull align 1 %.061254.i, i64 %i.ey, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %._crit_edge.i.i.i
  %i.ff = load i64, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  store i64 %i.ff, ptr %i.ev, align 8, !tbaa !47
  %i.fg = load ptr, ptr %4, align 8, !tbaa !46
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 0, ptr %i.fh, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.fi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.aq unwind label %bb.as     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !47
  %i.fl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ew) #25
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, i64 noundef 0, i64 noundef %i.fk, ptr noundef nonnull %i.ew, i64 noundef %i.fl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.as ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %bb.aq
  %i.fn = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.eu
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.fp = load i64, ptr %i.eu, align 8, !tbaa !42
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.fr = load i8, ptr %i.ex, align 1, !tbaa !42
  %.not.i84 = icmp eq i8 %i.fr, 0
  br i1 %.not.i84, label %._crit_edge.i, label %.preheader.i, !llvm.loop !105

bb.ar:                                            ; preds = %.noexc.i.i
  %i.fs = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.ft = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.fu = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.eu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i: ; preds = %bb.as
  %i.fw = load i64, ptr %i.eu, align 8, !tbaa !42
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i, %bb.ar
  %.pn78.i = phi { ptr, i32 } [ %i.fs, %bb.ar ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83.i ], [ %i.ft, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.cw

bb.at:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %5)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fy = load i64, ptr %i.h, align 8, !tbaa !47
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.be, label %bb.ax

bb.av:                                            ; preds = %._crit_edge.i
  %i.ga = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.cw

bb.aw:                                            ; preds = %bb.at
  %i.gb = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.cv

bb.ax:                                            ; preds = %bb.au
  %i.gc = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ge = invoke noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240) %i.gd, ptr noundef %i.gc, i32 noundef 16)
          to label %.noexc86.i unwind label %bb.bd

.noexc86.i:                                       ; preds = %bb.ax
  %.not.i.i85 = icmp eq ptr %i.ge, null
  %i.gf = load ptr, ptr %5, align 8, !tbaa !16
  %i.gg = getelementptr i8, ptr %i.gf, i64 -24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds i8, ptr %5, i64 %i.gh ; 2 uses
  br i1 %.not.i.i85, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.noexc86.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !27
  %i.gl = or i32 %i.gk, 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.noexc86.i
  %.sink.i.i = phi i32 [ %i.gl, %bb.ay ], [ 0, %.noexc86.i ]
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.gi, i32 noundef %.sink.i.i)
          to label %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.i unwind label %bb.bd

_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.i: ; preds = %bb.az
  %i.gm = load ptr, ptr %5, align 8, !tbaa !16
  %i.gn = getelementptr i8, ptr %i.gm, i64 -24
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds i8, ptr %5, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !27
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.gt = load ptr, ptr %i.f, align 8, !tbaa !46, !noalias !136
  %i.gu = load i64, ptr %i.h, align 8, !tbaa !47, !noalias !136 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.gv, ptr %6, align 8, !tbaa !48, !alias.scope !137
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.gw, align 8, !tbaa !47, !alias.scope !137
  store i8 0, ptr %i.gv, align 8, !tbaa !42, !alias.scope !137
  %i.gx = add i64 %i.gu, 24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.gx)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !47, !alias.scope !137
  %i.gz = add i64 %i.gy, -4611686018427387880
  %i.ha = icmp ult i64 %i.gz, 24
  br i1 %i.ha, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.bb
  %i.hb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.120, i64 noundef 24)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %bb.bc ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.hc = load i64, ptr %i.gw, align 8, !tbaa !47, !alias.scope !137
  %i.hd = sub i64 4611686018427387903, %i.hc
  %i.he = icmp ult i64 %i.hd, %i.gu
  br i1 %i.he, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.122) #26
          to label %.cont.i.i.i unwind label %bb.bc

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
  %i.hf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.gt, i64 noundef %i.gu)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i unwind label %bb.bc ; 0 uses

end_hunk_0
