Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Driver?download=true
inline.NumInlined: 244
inline.NumDeleted: 83
begin_hunk_0_@_ZN6DriverC2EPK9InputFileRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.cu = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.cw, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.cw, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 5, ptr %i.cx, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 21
  store i8 0, ptr %i.cy, align 1, !tbaa !17
  %i.cz = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, double noundef f0x547D42AEA2879F2E)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store double %i.cz, ptr %i.da, align 8, !tbaa !48
  %i.db = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.cw
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.o
  %i.dd = load i64, ptr %i.cw, align 8, !tbaa !17
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.df = load i32, ptr %i.cr, align 8, !tbaa !43
  %i.dg = icmp eq i32 %i.df, 999999
  br i1 %i.dg, label %bb.p, label %._crit_edge.i.i55

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  %i.dh = load double, ptr %i.da, align 8, !tbaa !48
  %i.di = fcmp oeq double %i.dh, f0x547D42AEA2879F2E
  br i1 %i.di, label %bb.q, label %._crit_edge.i.i55

bb.q:                                             ; preds = %bb.p
  %i.dj = load i32, ptr @_ZN8Parallel4mypeE, align 4, !tbaa !4
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.r, label %_ZNSolsEPFRSoS_E.exit48

bb.r:                                             ; preds = %bb.q
  %i.dl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46: ; preds = %bb.r
  %i.dm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit48 unwind label %bb.m, !inline_history !49 ; 0 uses

bb.s:                                             ; preds = %_ZNSolsEPFRSoS_E.exit35
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cn
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.s
  %i.dq = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.ai

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  %i.dt = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cw
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.t
  %i.dv = load i64, ptr %i.cw, align 8, !tbaa !17
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.ai

_ZNSolsEPFRSoS_E.exit48:                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46, %bb.q
  call void @exit(i32 noundef 1) #18
  unreachable

._crit_edge.i.i55:                                ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.dx, ptr %5, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dx, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 5, ptr %i.dy, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 21
  store i8 0, ptr %i.dz, align 1, !tbaa !17
  %i.ea = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, double noundef f0x547D42AEA2879F2E)
          to label %bb.u unwind label %bb.ac

bb.u:                                             ; preds = %._crit_edge.i.i55
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.ea, ptr %i.eb, align 8, !tbaa !50
  %i.ec = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dx
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.u
  %i.ee = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.eg, ptr %6, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.eg, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 6, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.eh, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 0, ptr %i.ei, align 2, !tbaa !17
  %i.ej = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, double noundef f0x547D42AEA2879F2E)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ej, ptr %i.ek, align 8, !tbaa !51
  %i.el = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.eg
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.v
  %i.en = load i64, ptr %i.eg, align 8, !tbaa !17
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ep, ptr %7, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ep, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 5, ptr %i.eq, align 8, !tbaa !15
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.er, align 1, !tbaa !17
  %i.es = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, double noundef 1.200000e+00)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.es, ptr %i.et, align 8, !tbaa !52
  %i.eu = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ep
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.w
  %i.ew = load i64, ptr %i.ep, align 8, !tbaa !17
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ey, ptr %8, align 8, !tbaa !8
  store i64 8390891584273675364, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.ez, align 8, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.fa, align 8, !tbaa !17
  %i.fb = invoke noundef i32 @_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 10)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !53
  %i.fd = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ey
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.x
  %i.ff = load i64, ptr %i.ey, align 8, !tbaa !17
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.fh = invoke noalias noundef nonnull dereferenceable(616) ptr @_Znwm(i64 noundef 616) #19
          to label %bb.y unwind label %bb.m       ; 4 uses

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  invoke void @_ZN4MeshC1EPK9InputFile(ptr noundef nonnull align 8 dereferenceable(616) %i.fh, ptr noundef nonnull %1)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  store ptr %i.fh, ptr %0, align 8, !tbaa !54
  %i.fi = invoke noalias noundef nonnull dereferenceable(408) ptr @_Znwm(i64 noundef 408) #19
          to label %bb.aa unwind label %bb.m      ; 3 uses

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN5HydroC1EPK9InputFileP4Mesh(ptr noundef nonnull align 8 dereferenceable(408) %i.fi, ptr noundef nonnull %1, ptr noundef nonnull %i.fh)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !55
  ret void

bb.ac:                                            ; preds = %._crit_edge.i.i55
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.dx
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ac
  %i.fn = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ai

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.eg
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ad
  %i.fs = load i64, ptr %i.eg, align 8, !tbaa !17
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ai

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.fu = landingpad { ptr, i32 }
          cleanup
  %i.fv = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.ep
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ae
  %i.fx = load i64, ptr %i.ep, align 8, !tbaa !17
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.ai

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.ey
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.af
  %i.gc = load i64, ptr %i.ey, align 8, !tbaa !17
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.ai

bb.ag:                                            ; preds = %bb.y
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 616) #17
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 408) #17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %bb.m
  %.pn29 = phi { ptr, i32 } [ %i.cm, %bb.m ], [ %i.gf, %bb.ah ], [ %i.ge, %bb.ag ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ], [ %i.fp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ]
  %i.gg = load ptr, ptr %i.s, align 8, !tbaa !12  ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.t
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.ai
  %i.gi = load i64, ptr %i.t, align 8, !tbaa !17
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  %i.gk = load ptr, ptr %i.p, align 8, !tbaa !12  ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.q
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.gm = load i64, ptr %i.q, align 8, !tbaa !17
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  %i.go = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.c
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.gq = load i64, ptr %i.c, align 8, !tbaa !17
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  resume { ptr, i32 } %.pn29
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK9InputFile6getIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN4MeshC1EPK9InputFile(ptr noundef nonnull align 8 dereferenceable(616), ptr noundef) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN5HydroC1EPK9InputFileP4Mesh(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6DriverD2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dead_on_return(192) dereferenceable(192) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5HydroD1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %i.b) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 408) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4MeshD1Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %i.d) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 616) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !17
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #17
end_hunk_0
