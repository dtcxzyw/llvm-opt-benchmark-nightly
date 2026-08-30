Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/file_test?download=true
begin_hunk_0_@_ZN18File_Failures_Test8TestBodyEv:.noexc.i
bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  %i.cq = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ae
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !16
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.cv = load ptr, ptr %10, align 8, !tbaa !26
  %.not.i.i.i93 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %bb.af

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.cw = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i94 unwind label %bb.ai

.noexc.i.i94:                                     ; preds = %bb.af
  br i1 %i.cw, label %bb.ag, label %_ZN7testing7MessageD2Ev.exit95

bb.ag:                                            ; preds = %.noexc.i.i94
  %i.cx = load ptr, ptr %10, align 8, !tbaa !26   ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN7testing7MessageD2Ev.exit95, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !29
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #18, !inline_history !31
  br label %_ZN7testing7MessageD2Ev.exit95

bb.ai:                                            ; preds = %bb.af
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #20
  unreachable

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %.noexc.i.i94, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.ap

bb.aj:                                            ; preds = %bb.aa
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.al:                                            ; preds = %bb.ac
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ad
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn36 = phi { ptr, i32 } [ %i.dh, %bb.am ], [ %i.dg, %bb.al ] ; 2 uses
  %i.di = load ptr, ptr %12, align 8, !tbaa !23   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.an
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !16
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.ak
  %.pn36.pn = phi { ptr, i32 } [ %i.df, %bb.ak ], [ %.pn36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %.pn36, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #18
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, %bb.aj
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %i.de, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZN7testing7MessageD2Ev.exit95
  %i.dn = load ptr, ptr %i.bu, align 8, !tbaa !22
  %.not.i.i.i99 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i99, label %_ZN7testing15AssertionResultD2Ev.exit104, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.do = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i100 unwind label %bb.at

.noexc.i.i100:                                    ; preds = %bb.aq
  br i1 %i.do, label %bb.ar, label %_ZN7testing15AssertionResultD2Ev.exit104

bb.ar:                                            ; preds = %.noexc.i.i100
  %i.dp = load ptr, ptr %i.bu, align 8, !tbaa !22 ; 4 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN7testing15AssertionResultD2Ev.exit104, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !23 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101: ; preds = %bb.as
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !16
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i102: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 32) #19
  br label %_ZN7testing15AssertionResultD2Ev.exit104

bb.at:                                            ; preds = %bb.aq
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #20
  unreachable

_ZN7testing15AssertionResultD2Ev.exit104:         ; preds = %bb.ap, %.noexc.i.i100, %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.dy, ptr %14, align 8, !tbaa !9
  %i.dz = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.ea = load i64, ptr %i.bh, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !36
  %i.eb = icmp ugt i64 %i.ea, 15
  br i1 %i.eb, label %.noexc.i106, label %._crit_edge.i.i105

.noexc.i106:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit104
  %i.ec = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc107 unwind label %bb.az ; 2 uses

.noexc107:                                        ; preds = %.noexc.i106
  store ptr %i.ec, ptr %14, align 8, !tbaa !23
  %i.ed = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.ed, ptr %i.dy, align 8, !tbaa !16
  br label %._crit_edge.i.i105

._crit_edge.i.i105:                               ; preds = %.noexc107, %_ZN7testing15AssertionResultD2Ev.exit104
  %i.ee = phi ptr [ %i.ec, %.noexc107 ], [ %i.dy, %_ZN7testing15AssertionResultD2Ev.exit104 ] ; 2 uses
  switch i64 %i.ea, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %bb.aw
  ]

bb.au:                                            ; preds = %._crit_edge.i.i105
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !16
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !16
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge.i.i105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ee, ptr align 1 %i.dz, i64 %i.ea, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %._crit_edge.i.i105
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !13
  %i.ei = load ptr, ptr %14, align 8, !tbaa !23
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  invoke void @_ZN4pbrt13ReadFloatFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %13, ptr nofree noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.ek = load ptr, ptr %1, align 16, !tbaa !44   ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 16, !tbaa !50
  %i.en = load <2 x ptr>, ptr %13, align 16, !tbaa !54
  store <2 x ptr> %i.en, ptr %1, align 16, !tbaa !54
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 16, !tbaa !50
  store ptr %i.ep, ptr %i.el, align 16, !tbaa !50
  %.not.i.i.i.i.i = icmp eq ptr %i.ek, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %_ZNSt6vectorIfSaIfEEaSEOS1_.exit

_ZNSt6vectorIfSaIfEEaSEOS1_.exit:                 ; preds = %bb.ax
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = ptrtoint ptr %i.ek to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.es) #19
  %.pr = load ptr, ptr %13, align 16, !tbaa !44   ; 3 uses
  %.not.i.i.i109 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIfSaIfEEaSEOS1_.exit
  %i.et = load ptr, ptr %i.eo, align 16, !tbaa !50
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %.pr to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ew) #19
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.ax, %_ZNSt6vectorIfSaIfEEaSEOS1_.exit, %bb.ay
  %i.ex = load ptr, ptr %14, align 8, !tbaa !23   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.dy
  br i1 %i.ey, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ez = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111: ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.fb = load ptr, ptr %1, align 16, !tbaa !54
  %i.fc = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.fd = icmp eq ptr %i.fb, %i.fc                ; 2 uses
  %i.fe = zext i1 %i.fd to i8
  store i8 %i.fe, ptr %15, align 8, !tbaa !17
  %i.ff = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  store ptr null, ptr %i.ff, align 8, !tbaa !22
  br i1 %i.fd, label %_ZN7testing15AssertionResultD2Ev.exit130, label %bb.bb

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ao
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn.pn, %bb.ao ], [ %.pn34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bw

bb.az:                                            ; preds = %.noexc.i106
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

bb.ba:                                            ; preds = %bb.aw
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %14, align 8, !tbaa !23   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.dy
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.ba
  %i.fk = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.az
  %.pn41 = phi { ptr, i32 } [ %i.fg, %bb.az ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %i.fh, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.bw

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i111
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bc unwind label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.fm = load ptr, ptr %18, align 8, !tbaa !23
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef %i.fm)
          to label %bb.be unwind label %bb.bm

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bf unwind label %bb.bn

bb.bf:                                            ; preds = %bb.be
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #18
  %i.fn = load ptr, ptr %18, align 8, !tbaa !23   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.bf
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !16
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.fs = load ptr, ptr %16, align 8, !tbaa !26
  %.not.i.i.i119 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i119, label %bb.bq, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  %i.ft = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i120 unwind label %bb.bj

.noexc.i.i120:                                    ; preds = %bb.bg
  br i1 %i.ft, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %.noexc.i.i120
  %i.fu = load ptr, ptr %16, align 8, !tbaa !26   ; 3 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !29
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(128) %i.fu) #18, !inline_history !31
  br label %bb.bq

bb.bj:                                            ; preds = %bb.bg
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #20
  unreachable

bb.bk:                                            ; preds = %bb.bb
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bc
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.bm:                                            ; preds = %bb.bd
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.be
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #18
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn43 = phi { ptr, i32 } [ %i.ge, %bb.bn ], [ %i.gd, %bb.bm ] ; 2 uses
  %i.gf = load ptr, ptr %18, align 8, !tbaa !23   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.bo
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !16
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.bl
  %.pn43.pn = phi { ptr, i32 } [ %i.gc, %bb.bl ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %.pn43, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %bb.bk
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.gb, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bw

bb.bq:                                            ; preds = %bb.bi, %bb.bh, %.noexc.i.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  %.pr143 = load ptr, ptr %i.ff, align 8, !tbaa !22
  %.not.i.i.i125 = icmp eq ptr %.pr143, null
  br i1 %.not.i.i.i125, label %_ZN7testing15AssertionResultD2Ev.exit130, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gk = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i126 unwind label %bb.bu

.noexc.i.i126:                                    ; preds = %bb.br
  br i1 %i.gk, label %bb.bs, label %_ZN7testing15AssertionResultD2Ev.exit130

bb.bs:                                            ; preds = %.noexc.i.i126
  %i.gl = load ptr, ptr %i.ff, align 8, !tbaa !22 ; 4 uses
  %i.gm = icmp eq ptr %i.gl, null
end_hunk_0
