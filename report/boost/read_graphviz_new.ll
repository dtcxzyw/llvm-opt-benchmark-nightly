inline.NumInlined: 6923
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_inner_setERNS0_14basic_char_setIcS5_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @_ZZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_inner_setERNS0_14basic_char_setIcS5_EEE18incomplete_message, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bt = ptrtoint ptr %i.h to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.p
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !22
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.thread

bb.q:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.r:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %4, align 8, !tbaa !11    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.r
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !22
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.q
  %.pn100 = phi { ptr, i32 } [ %i.cb, %bb.q ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.cc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.bo

.lr.ph205:                                        ; preds = %bb.m, %bb.s
  %i.ci = phi ptr [ %i.cn, %bb.s ], [ %i.bp, %bb.m ] ; 4 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !22
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !22
  %.not92 = icmp eq i8 %i.cm, 36
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 1 ; 5 uses
  store ptr %i.cn, ptr %i.i, align 8, !tbaa !435
  %i.co = icmp eq ptr %i.h, %i.cn                 ; 2 uses
  br i1 %.not92, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.lr.ph205
  br i1 %i.co, label %._crit_edge, label %.lr.ph205, !llvm.loop !843

._crit_edge:                                      ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @_ZZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_inner_setERNS0_14basic_char_setIcS5_EEE18incomplete_message, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %._crit_edge
  %i.cr = ptrtoint ptr %i.h to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cu = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.u
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !22
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.thread

bb.v:                                             ; preds = %._crit_edge
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.w:                                             ; preds = %bb.t
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %6, align 8, !tbaa !11    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.w
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !22
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.v
  %.pn97 = phi { ptr, i32 } [ %i.cz, %bb.v ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.da, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.bo

.critedge:                                        ; preds = %.lr.ph205
  br i1 %i.co, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.dg = load i8, ptr %i.cn, align 1, !tbaa !22
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !22
  %.not93 = icmp eq i8 %i.dj, 10
  br i1 %.not93, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x, %.critedge
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @_ZZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_inner_setERNS0_14basic_char_setIcS5_EEE18incomplete_message, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.dm = ptrtoint ptr %i.cn to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.do, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dp = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.aa
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !22
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.thread

bb.ab:                                            ; preds = %bb.y
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ac:                                            ; preds = %bb.z
  %i.dv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dw = load ptr, ptr %8, align 8, !tbaa !11    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ac
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !22
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.ab
  %.pn95 = phi { ptr, i32 } [ %i.du, %bb.ab ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.dv, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.bo

bb.ad:                                            ; preds = %bb.x
  %i.eb = load i8, ptr %i.at, align 1, !tbaa !22
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !22
  %i.ef = icmp eq i8 %i.ee, 4                     ; 2 uses
  %spec.select = select i1 %i.ef, ptr %i.bp, ptr %i.at ; 3 uses
  %i.eg = tail call noundef i32 @_ZNK5boost13re_detail_60031cpp_regex_traits_implementationIcE16lookup_classnameEPKcS4_(ptr noundef nonnull align 8 dereferenceable(437) %i.aj, ptr noundef nonnull %spec.select, ptr noundef nonnull %i.ci) ; 3 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ae, label %16

bb.ae:                                            ; preds = %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ej = load i8, ptr %i.ei, align 4, !tbaa !532, !range !451, !noundef !104
  %i.ek = trunc nuw i8 %i.ej to i1
  %i.el = ptrtoint ptr %i.ci to i64
  %i.em = ptrtoint ptr %spec.select to i64        ; 2 uses
  %i.en = sub i64 %i.el, %i.em
  %i.eo = icmp eq i64 %i.en, 1
  %or.cond = and i1 %i.eo, %i.ek
  br i1 %or.cond, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !435 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 3 uses
  store ptr %i.eq, ptr %i.i, align 8, !tbaa !435
  %i.er = load ptr, ptr %i.g, align 8, !tbaa !436
  %.not94 = icmp eq ptr %i.eq, %i.er
  br i1 %.not94, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.es = load ptr, ptr %i.ag, align 8, !tbaa !461, !nonnull !104, !align !105
  %i.et = load i8, ptr %i.eq, align 1, !tbaa !22
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !267
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 2 uses
  %i.ew = zext i8 %i.et to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !22
  %i.ez = icmp eq i8 %i.ey, 10
  br i1 %i.ez, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fa = load i8, ptr %spec.select, align 1, !tbaa !22
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !22
  switch i8 %i.fd, label %bb.ak [
    i8 20, label %bb.ai
    i8 21, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store ptr %i.fe, ptr %i.i, align 8, !tbaa !435
  %i.ff = tail call noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeE(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 9) ; 0 uses
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store ptr %i.fg, ptr %i.i, align 8, !tbaa !435
  %i.fh = tail call noundef ptr @_ZN5boost13re_detail_60019basic_regex_creatorIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE12append_stateENS0_19syntax_element_typeE(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef 10) ; 0 uses
  br label %.thread

bb.ak:                                            ; preds = %bb.ah, %bb.af, %bb.ag, %bb.ae
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !434
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = sub i64 %i.em, %i.fk
  tail call void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeEl(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 4, i64 noundef %i.fl)
  br label %.thread

16:                                               ; preds = %bb.ad
  br i1 %i.ef, label %21, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %19 = load i32, ptr %18, align 4, !tbaa !531
  %20 = or i32 %19, %i.eg
  store i32 %20, ptr %18, align 4, !tbaa !531
  br label %bb.al

21:                                               ; preds = %16
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %23 = load i32, ptr %22, align 8, !tbaa !530
  %24 = or i32 %23, %i.eg
  store i32 %24, ptr %22, align 8, !tbaa !530
  br label %bb.al

bb.al:                                            ; preds = %17, %21
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i8 0, ptr %i.fm, align 4, !tbaa !532
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !435
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  store ptr %i.fo, ptr %i.i, align 8, !tbaa !435
  br label %bb.bn

bb.am:                                            ; preds = %bb.e
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 2 ; 4 uses
  store ptr %i.fp, ptr %i.i, align 8, !tbaa !435
  %i.fq = icmp eq ptr %i.h, %i.fp
  br i1 %i.fq, label %.noexc.i143, label %bb.aq

.noexc.i143:                                      ; preds = %bb.am
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ft, ptr %10, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  store i64 117, ptr %i.d, align 8, !tbaa !25
  %i.fu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc144 unwind label %bb.ao ; 3 uses

.noexc144:                                        ; preds = %.noexc.i143
  store ptr %i.fu, ptr %10, align 8, !tbaa !11
  %i.fv = load i64, ptr %i.d, align 8, !tbaa !25  ; 3 uses
  store i64 %i.fv, ptr %i.ft, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(117) %i.fu, ptr noundef nonnull align 16 dereferenceable(117) @_ZZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_inner_setERNS0_14basic_char_setIcS5_EEE18incomplete_message, i64 117, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !17
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fv
  store i8 0, ptr %i.fx, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  %i.fy = ptrtoint ptr %i.h to i64
  %i.fz = ptrtoint ptr %i.fs to i64
  %i.ga = sub i64 %i.fy, %i.fz
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.noexc144
  %i.gb = load ptr, ptr %10, align 8, !tbaa !11   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.ft
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.an
  %i.gd = load i64, ptr %i.ft, align 8, !tbaa !22
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.thread

bb.ao:                                            ; preds = %.noexc.i143
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

bb.ap:                                            ; preds = %.noexc144
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %10, align 8, !tbaa !11   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.ft
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.ap
  %i.gj = load i64, ptr %i.ft, align 8, !tbaa !22
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149, %bb.ao
  %.pn89 = phi { ptr, i32 } [ %i.gf, %bb.ao ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149 ], [ %i.gg, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bo

bb.aq:                                            ; preds = %bb.am
  %i.gl = getelementptr inbounds nuw i8, ptr %i.j, i64 3 ; 3 uses
  store ptr %i.gl, ptr %i.i, align 8, !tbaa !435
  %i.gm = icmp eq ptr %i.h, %i.gl
  br i1 %i.gm, label %.noexc.i153, label %.lr.ph

.noexc.i153:                                      ; preds = %bb.aq
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.gp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.gp, ptr %11, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 117, ptr %i.c, align 8, !tbaa !25
  %i.gq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc154 unwind label %bb.as ; 3 uses

.noexc154:                                        ; preds = %.noexc.i153
  store ptr %i.gq, ptr %11, align 8, !tbaa !11
  %i.gr = load i64, ptr %i.c, align 8, !tbaa !25  ; 3 uses
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(117) %i.gq, ptr noundef nonnull align 16 dereferenceable(117) @_ZZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_inner_setERNS0_14basic_char_setIcS5_EEE18incomplete_message, i64 117, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.gr, ptr %i.gs, align 8, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gr
  store i8 0, ptr %i.gt, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.gu = ptrtoint ptr %i.h to i64
  %i.gv = ptrtoint ptr %i.go to i64
  %i.gw = sub i64 %i.gu, %i.gv
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %.noexc154
  %i.gx = load ptr, ptr %11, align 8, !tbaa !11   ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.gp
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %bb.ar
  %i.gz = load i64, ptr %i.gp, align 8, !tbaa !22
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.thread

bb.as:                                            ; preds = %.noexc.i153
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

bb.at:                                            ; preds = %.noexc154
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %11, align 8, !tbaa !11   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.gp
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %bb.at
  %i.hf = load i64, ptr %i.gp, align 8, !tbaa !22
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159, %bb.as
  %.pn86 = phi { ptr, i32 } [ %i.hb, %bb.as ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159 ], [ %i.hc, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.bo

.lr.ph:                                           ; preds = %bb.aq, %bb.au
  %i.hh = phi ptr [ %i.hm, %bb.au ], [ %i.gl, %bb.aq ] ; 3 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !22
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !22
  %.not78 = icmp eq i8 %i.hl, 37
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 1 ; 5 uses
  store ptr %i.hm, ptr %i.i, align 8, !tbaa !435
  %i.hn = icmp eq ptr %i.h, %i.hm                 ; 2 uses
  br i1 %.not78, label %.critedge2, label %bb.au

bb.au:                                            ; preds = %.lr.ph
  br i1 %i.hn, label %.noexc.i163, label %.lr.ph, !llvm.loop !844

.noexc.i163:                                      ; preds = %bb.au
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !434
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.hq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.hq, ptr %12, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 117, ptr %i.b, align 8, !tbaa !25
  %i.hr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc164 unwind label %bb.aw ; 3 uses

.noexc164:                                        ; preds = %.noexc.i163
  store ptr %i.hr, ptr %12, align 8, !tbaa !11
  %i.hs = load i64, ptr %i.b, align 8, !tbaa !25  ; 3 uses
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(117) %i.hr, ptr noundef nonnull align 16 dereferenceable(117) @_ZZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE15parse_inner_setERNS0_14basic_char_setIcS5_EEE18incomplete_message, i64 117, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.hs, ptr %i.ht, align 8, !tbaa !17
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hs
  store i8 0, ptr %i.hu, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.hv = ptrtoint ptr %i.h to i64
  %i.hw = ptrtoint ptr %i.hp to i64
  %i.hx = sub i64 %i.hv, %i.hw
  invoke void @_ZN5boost13re_detail_60018basic_regex_parserIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE4failENS_15regex_constants10error_typeElRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef 7, i64 noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %.noexc164
  %i.hy = load ptr, ptr %12, align 8, !tbaa !11   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hq
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.av
  %i.ia = load i64, ptr %i.hq, align 8, !tbaa !22
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #29
end_hunk_0
