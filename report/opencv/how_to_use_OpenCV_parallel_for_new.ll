inline.NumInlined: 275
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@main:bb.a
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.ad
  %i.dn = load i64, ptr %i.bw, align 8, !tbaa !37
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.di, %bb.aa ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %.pn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.dk

bb.ae:                                            ; preds = %.noexc210, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc208, %bb.z, %bb.x, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit74, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

._crit_edge.i.i81:                                ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  %i.dq = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.dq, ptr %25, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dq, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 5, ptr %i.dr, align 8, !tbaa !45
  %i.ds = getelementptr inbounds nuw i8, ptr %25, i64 21
  store i8 0, ptr %i.ds, align 1, !tbaa !37
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 1)
          to label %bb.af unwind label %bb.cp

bb.af:                                            ; preds = %._crit_edge.i.i81
  %i.dt = load ptr, ptr %25, align 8, !tbaa !43   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.dq
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.af
  %i.dv = load i64, ptr %i.dq, align 8, !tbaa !37
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  %i.dx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.dx, ptr %26, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.dx, ptr noundef nonnull align 1 dereferenceable(7) @.str.4, i64 7, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 7, ptr %i.dy, align 8, !tbaa !45
  %i.dz = getelementptr inbounds nuw i8, ptr %26, i64 23
  store i8 0, ptr %i.dz, align 1, !tbaa !37
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %26, i32 noundef 1)
          to label %bb.ag unwind label %bb.cq

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.ea = load ptr, ptr %26, align 8, !tbaa !43   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.dx
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.ag
  %i.ec = load i64, ptr %i.dx, align 8, !tbaa !37
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.ee = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.ee, ptr %27, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ee, ptr noundef nonnull align 1 dereferenceable(7) @.str.5, i64 7, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 7, ptr %i.ef, align 8, !tbaa !45
  %i.eg = getelementptr inbounds nuw i8, ptr %27, i64 23
  store i8 0, ptr %i.eg, align 1, !tbaa !37
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 1)
          to label %bb.ah unwind label %bb.cr

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.eh = load ptr, ptr %27, align 8, !tbaa !43   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ee
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.ah
  %i.ej = load i64, ptr %i.ee, align 8, !tbaa !37
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  %i.el = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.el, ptr %28, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.el, ptr noundef nonnull align 1 dereferenceable(7) @.str.6, i64 7, i1 false)
  %i.em = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 7, ptr %i.em, align 8, !tbaa !45
  %i.en = getelementptr inbounds nuw i8, ptr %28, i64 23
  store i8 0, ptr %i.en, align 1, !tbaa !37
  invoke void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 1)
          to label %bb.ai unwind label %bb.cs

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.eo = load ptr, ptr %28, align 8, !tbaa !43   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.el
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %bb.ai
  %i.eq = load i64, ptr %i.el, align 8, !tbaa !37
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  %i.es = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.es, ptr %29, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.es, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 5, ptr %i.et, align 8, !tbaa !45
  %i.eu = getelementptr inbounds nuw i8, ptr %29, i64 21
  store i8 0, ptr %i.eu, align 1, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  %i.ev = getelementptr inbounds nuw i8, ptr %30, i64 16
  store i32 0, ptr %i.ev, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw i8, ptr %30, i64 20
  store i32 0, ptr %i.ew, align 4, !tbaa !49
  store i32 16842752, ptr %30, align 8, !tbaa !50
  %i.ex = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %20, ptr %i.ex, align 8, !tbaa !52
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(24) %30)
          to label %bb.aj unwind label %bb.ct

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.ey = load ptr, ptr %29, align 8, !tbaa !43   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.es
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.aj
  %i.fa = load i64, ptr %i.es, align 8, !tbaa !37
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i32 3, ptr %i.f, align 4, !tbaa !53
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 3, ptr %i.fc, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) @constinit, i64 72, i1 false), !tbaa.struct !54
  invoke void @_ZN2cv3MatC2IdEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %31, ptr nonnull %i.f, i64 2, ptr nonnull %i.g, i64 9)
          to label %_ZN2cv4Mat_IdEC2ESt16initializer_listIiES2_IdE.exit unwind label %bb.cu

_ZN2cv4Mat_IdEC2ESt16initializer_listIiES2_IdE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  %i.fd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 8 dereferenceable(208) %31)
          to label %bb.ak unwind label %bb.cv     ; 0 uses

bb.ak:                                            ; preds = %_ZN2cv4Mat_IdEC2ESt16initializer_listIiES2_IdE.exit
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.fe = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.al unwind label %bb.cx

bb.al:                                            ; preds = %bb.ak
  %i.ff = sitofp i64 %i.fe to double
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %32, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.am unwind label %bb.cx

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %33, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.an unwind label %bb.cy

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !55 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %32, i64 12
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !62 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.fk = load i32, ptr %32, align 8, !tbaa !63
  %i.fl = and i32 %i.fk, 4095
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef %i.fh, i32 noundef %i.fj, i32 noundef %i.fl)
          to label %.noexc117 unwind label %bb.cz

.noexc117:                                        ; preds = %bb.an
  %i.fm = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.ao unwind label %bb.ap     ; 0 uses

bb.ao:                                            ; preds = %.noexc117
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.fn = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !55 ; 2 uses
  %i.fp = sdiv i32 %i.fo, 2                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.fq = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 0, ptr %i.fq, align 8, !tbaa !47
  %i.fr = getelementptr inbounds nuw i8, ptr %17, i64 20
  store i32 0, ptr %i.fr, align 4, !tbaa !49
  store i32 16842752, ptr %17, align 8, !tbaa !50
  %i.fs = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %32, ptr %i.fs, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 0, ptr %i.fu, align 8
  store i32 33619968, ptr %18, align 8, !tbaa !50
  store ptr %32, ptr %i.ft, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv14copyMakeBorderERKNS_11_InputArrayERKNS_12_OutputArrayEiiiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, i32 noundef %i.fp, i32 noundef %i.fp, i32 noundef %i.fp, i32 noundef %i.fp, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %.noexc118 unwind label %bb.cz

.noexc118:                                        ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.fv = icmp sgt i32 %i.fh, 0
  br i1 %i.fv, label %.lr.ph67.i, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit

.lr.ph67.i:                                       ; preds = %.noexc118
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %21, i64 128 ; 6 uses
  %i.fy = icmp sgt i32 %i.fj, 0
  %i.fz = sub nsw i32 0, %i.fp
  %i.ga = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.gc = getelementptr inbounds nuw i8, ptr %33, i64 24
  %i.gd = getelementptr inbounds nuw i8, ptr %33, i64 128
  br i1 %i.fy, label %.lr.ph67.split.i, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit

.lr.ph67.split.i:                                 ; preds = %.lr.ph67.i
  %.not54.i = icmp slt i32 %i.fo, -1
  br i1 %.not54.i, label %.lr.ph63.us.preheader.i, label %.lr.ph63.preheader.i

.lr.ph63.preheader.i:                             ; preds = %.lr.ph67.split.i
  %i.ge = sext i32 %i.fz to i64                   ; 3 uses
  %i.gf = sext i32 %i.fp to i64                   ; 4 uses
  %smax.i = call i32 @llvm.abs.i32(i32 %i.fp, i1 false) ; 2 uses
  %i.gg = add nuw nsw i32 %smax.i, 1              ; 2 uses
  %wide.trip.count85.i = zext nneg i32 %i.fh to i64
  %wide.trip.count.i = zext nneg i32 %i.fj to i64
  %i.gh = add i32 %i.fp, %smax.i                  ; 2 uses
  %i.gi = add i32 %i.gh, 1
  %xtraiter = and i32 %i.gi, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.gj = icmp ult i32 %i.gh, 3
  br label %.lr.ph63.i

.lr.ph63.us.preheader.i:                          ; preds = %.lr.ph67.split.i
  %i.gk = zext nneg i32 %i.fj to i64              ; 5 uses
  %wide.trip.count93.i = zext nneg i32 %i.fh to i64 ; 2 uses
  %xtraiter321 = and i64 %wide.trip.count93.i, 3  ; 3 uses
  %i.gl = icmp ult i32 %i.fh, 4
  br i1 %i.gl, label %.lr.ph63.us.i.epil.preheader, label %.lr.ph63.us.preheader.i.new

.lr.ph63.us.preheader.i.new:                      ; preds = %.lr.ph63.us.preheader.i
  %unroll_iter = and i64 %wide.trip.count93.i, 2147483644
  br label %.lr.ph63.us.i

.lr.ph63.us.i:                                    ; preds = %.lr.ph63.us.i, %.lr.ph63.us.preheader.i.new
  %indvars.iv90.i = phi i64 [ 0, %.lr.ph63.us.preheader.i.new ], [ %indvars.iv.next91.i.3, %.lr.ph63.us.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph63.us.preheader.i.new ], [ %niter.next.3, %.lr.ph63.us.i ]
  %i.gm = load ptr, ptr %i.fw, align 8, !tbaa !64
  %i.gn = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.go = mul i64 %i.gn, %indvars.iv90.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.go
  call void @llvm.memset.p0.i64(ptr align 1 %i.gp, i8 0, i64 %i.gk, i1 false), !tbaa !37
  %indvars.iv.next91.i = or disjoint i64 %indvars.iv90.i, 1
  %i.gq = load ptr, ptr %i.fw, align 8, !tbaa !64
  %i.gr = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.gs = mul i64 %i.gr, %indvars.iv.next91.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gs
  call void @llvm.memset.p0.i64(ptr align 1 %i.gt, i8 0, i64 %i.gk, i1 false), !tbaa !37
  %indvars.iv.next91.i.1 = or disjoint i64 %indvars.iv90.i, 2
  %i.gu = load ptr, ptr %i.fw, align 8, !tbaa !64
  %i.gv = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.gw = mul i64 %i.gv, %indvars.iv.next91.i.1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gw
  call void @llvm.memset.p0.i64(ptr align 1 %i.gx, i8 0, i64 %i.gk, i1 false), !tbaa !37
  %indvars.iv.next91.i.2 = or disjoint i64 %indvars.iv90.i, 3
  %i.gy = load ptr, ptr %i.fw, align 8, !tbaa !64
  %i.gz = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.ha = mul i64 %i.gz, %indvars.iv.next91.i.2
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ha
  call void @llvm.memset.p0.i64(ptr align 1 %i.hb, i8 0, i64 %i.gk, i1 false), !tbaa !37
  %indvars.iv.next91.i.3 = add nuw nsw i64 %indvars.iv90.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, label %.lr.ph63.us.i, !llvm.loop !65

bb.ap:                                            ; preds = %.noexc117
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %.body

.lr.ph63.i:                                       ; preds = %._crit_edge64.split.i, %.lr.ph63.preheader.i
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph63.preheader.i ], [ %indvars.iv.next83.i, %._crit_edge64.split.i ] ; 3 uses
  %i.hd = load ptr, ptr %i.fw, align 8, !tbaa !64
  %i.he = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.hf = mul i64 %i.he, %indvars.iv82.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hf
  %i.hh = add nsw i64 %indvars.iv82.i, %i.gf
  br label %.lr.ph58.i

._crit_edge64.split.i:                            ; preds = %._crit_edge59.split.i
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count85.i
  br i1 %exitcond86.not.i, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, label %.lr.ph63.i, !llvm.loop !65

.lr.ph58.i:                                       ; preds = %._crit_edge59.split.i, %.lr.ph63.i
  %indvars.iv78.i = phi i64 [ 0, %.lr.ph63.i ], [ %indvars.iv.next79.i, %._crit_edge59.split.i ] ; 3 uses
  %i.hi = load ptr, ptr %i.ga, align 8, !tbaa !64
  %i.hj = load i64, ptr %i.gb, align 8, !tbaa !42
  %i.hk = load ptr, ptr %i.gc, align 8, !tbaa !64
  %i.hl = load i64, ptr %i.gd, align 8, !tbaa !42
  %invariant.gep98.i = getelementptr [8 x i8], ptr %i.hk, i64 %i.gf
  %invariant.gep.i = getelementptr i8, ptr %i.hi, i64 %indvars.iv78.i
  %invariant.gep101.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.gf
  br label %.lr.ph.i

._crit_edge59.split.i:                            ; preds = %._crit_edge.i
  %i.hm = insertelement <2 x double> poison, double %.lcssa, i64 0
  %i.hn = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.hm)
  %i.ho = call i32 @llvm.smax.i32(i32 %i.hn, i32 0)
  %i.hp = call i32 @llvm.umin.i32(i32 %i.ho, i32 255)
  %i.hq = trunc nuw i32 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv78.i
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !37
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next79.i, %wide.trip.count.i
  br i1 %exitcond81.not.i, label %._crit_edge64.split.i, label %.lr.ph58.i, !llvm.loop !67

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph58.i
  %indvars.iv73.i = phi i64 [ %i.ge, %.lr.ph58.i ], [ %indvars.iv.next74.i, %._crit_edge.i ] ; 3 uses
  %.04055.i = phi double [ 0.000000e+00, %.lr.ph58.i ], [ %.lcssa, %._crit_edge.i ] ; 2 uses
  %i.hs = add nsw i64 %i.hh, %indvars.iv73.i
  %i.ht = mul i64 %i.hs, %i.hj
  %i.hu = add nsw i64 %indvars.iv73.i, %i.gf
  %i.hv = mul i64 %i.hu, %i.hl
  %gep99.i = getelementptr i8, ptr %invariant.gep98.i, i64 %i.hv ; 5 uses
  %gep102.i = getelementptr i8, ptr %invariant.gep101.i, i64 %i.ht ; 5 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ge, %.lr.ph.i ] ; 3 uses
  %.152.i.prol = phi double [ %i.ia, %.prol.preheader ], [ %.04055.i, %.lr.ph.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %gep.i.prol = getelementptr [8 x i8], ptr %gep99.i, i64 %indvars.iv.i.prol
  %i.hw = load double, ptr %gep.i.prol, align 8, !tbaa !68
  %i.hx = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.i.prol
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !37
  %i.hz = uitofp i8 %i.hy to double
  %i.ia = call double @llvm.fmuladd.f64(double %i.hw, double %i.hz, double %.152.i.prol) ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !70

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %.lcssa.unr = phi double [ poison, %.lr.ph.i ], [ %i.ia, %.prol.preheader ]
  %indvars.iv.i.unr = phi i64 [ %i.ge, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %.152.i.unr = phi double [ %.04055.i, %.lr.ph.i ], [ %i.ia, %.prol.preheader ]
  br i1 %i.gj, label %._crit_edge.i, label %.lr.ph.i.new

._crit_edge.i:                                    ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.iu, %.lr.ph.i.new ] ; 2 uses
  %indvars.iv.next74.i = add nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %lftr.wideiv76.i = trunc i64 %indvars.iv.next74.i to i32
  %exitcond77.not.i = icmp eq i32 %i.gg, %lftr.wideiv76.i
  br i1 %exitcond77.not.i, label %._crit_edge59.split.i, label %.lr.ph.i, !llvm.loop !72

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 6 uses
  %.152.i = phi double [ %i.iu, %.lr.ph.i.new ], [ %.152.i.unr, %.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %gep99.i, i64 %indvars.iv.i
  %i.ib = load double, ptr %gep.i, align 8, !tbaa !68
  %i.ic = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.i
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !37
  %i.ie = uitofp i8 %i.id to double
  %i.if = call double @llvm.fmuladd.f64(double %i.ib, double %i.ie, double %.152.i)
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %gep99.i, i64 %indvars.iv.next.i
  %i.ig = load double, ptr %gep.i.1, align 8, !tbaa !68
  %i.ih = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.next.i
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !37
  %i.ij = uitofp i8 %i.ii to double
  %i.ik = call double @llvm.fmuladd.f64(double %i.ig, double %i.ij, double %i.if)
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %gep99.i, i64 %indvars.iv.next.i.1
  %i.il = load double, ptr %gep.i.2, align 8, !tbaa !68
  %i.im = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.next.i.1
  %i.in = load i8, ptr %i.im, align 1, !tbaa !37
  %i.io = uitofp i8 %i.in to double
  %i.ip = call double @llvm.fmuladd.f64(double %i.il, double %i.io, double %i.ik)
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %gep99.i, i64 %indvars.iv.next.i.2
  %i.iq = load double, ptr %gep.i.3, align 8, !tbaa !68
  %i.ir = getelementptr i8, ptr %gep102.i, i64 %indvars.iv.next.i.2
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !37
  %i.it = uitofp i8 %i.is to double
  %i.iu = call double @llvm.fmuladd.f64(double %i.iq, double %i.it, double %i.ip) ; 2 uses
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %lftr.wideiv.i.3 = trunc i64 %indvars.iv.next.i.3 to i32
  %exitcond.not.i.3 = icmp eq i32 %i.gg, %lftr.wideiv.i.3
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !73

_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph63.us.i
  %lcmp.mod322.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod322.not, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, label %.lr.ph63.us.i.epil.preheader

.lr.ph63.us.i.epil.preheader:                     ; preds = %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, %.lr.ph63.us.preheader.i
  %indvars.iv90.i.epil.init = phi i64 [ 0, %.lr.ph63.us.preheader.i ], [ %indvars.iv.next91.i.3, %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa ]
  %lcmp.mod323 = icmp ne i64 %xtraiter321, 0
  call void @llvm.assume(i1 %lcmp.mod323)
  br label %.lr.ph63.us.i.epil

.lr.ph63.us.i.epil:                               ; preds = %.lr.ph63.us.i.epil, %.lr.ph63.us.i.epil.preheader
  %indvars.iv90.i.epil = phi i64 [ %indvars.iv90.i.epil.init, %.lr.ph63.us.i.epil.preheader ], [ %indvars.iv.next91.i.epil, %.lr.ph63.us.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph63.us.i.epil.preheader ], [ %epil.iter.next, %.lr.ph63.us.i.epil ]
  %i.iv = load ptr, ptr %i.fw, align 8, !tbaa !64
  %i.iw = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.ix = mul i64 %i.iw, %indvars.iv90.i.epil
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ix
  call void @llvm.memset.p0.i64(ptr align 1 %i.iy, i8 0, i64 %i.gk, i1 false), !tbaa !37
  %indvars.iv.next91.i.epil = add nuw nsw i64 %indvars.iv90.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter321
  br i1 %epil.iter.cmp.not, label %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit, label %.lr.ph63.us.i.epil, !llvm.loop !74

_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit: ; preds = %._crit_edge64.split.i, %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit.loopexit.unr-lcssa, %.lr.ph63.us.i.epil, %.lr.ph67.i, %.noexc118
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %33) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %32) #21
  %i.iz = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.aq unwind label %bb.cx

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_18conv_seqEN2cv3MatERS1_S1_.exit
  %i.ja = invoke noundef double @_ZN2cv16getTickFrequencyEv()
          to label %bb.ar unwind label %bb.cx

bb.ar:                                            ; preds = %bb.aq
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.7, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120 unwind label %bb.cx ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120: ; preds = %bb.ar
end_hunk_0
