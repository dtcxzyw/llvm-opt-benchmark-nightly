Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpPDPerturbationHandler?download=true
inline.NumInlined: 367
inline.NumDeleted: 60
begin_hunk_0_@_ZN5Ipopt21PDPerturbationHandler14InitializeImplERKNS_11OptionsListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ab

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.m:                                             ; preds = %.noexc50
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.y
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.m
  %i.fe = load i64, ptr %i.y, align 8, !tbaa !36
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %bb.l
  %.pn31 = phi { ptr, i32 } [ %i.fa, %bb.l ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.fb, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.ab

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.o:                                             ; preds = %.noexc57
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.an
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.o
  %i.fk = load i64, ptr %i.an, align 8, !tbaa !36
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.n
  %.pn33 = phi { ptr, i32 } [ %i.fg, %bb.n ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.fh, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ab

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

bb.q:                                             ; preds = %.noexc64
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bc
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.q
  %i.fq = load i64, ptr %i.bc, align 8, !tbaa !36
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.p
  %.pn35 = phi { ptr, i32 } [ %i.fm, %bb.p ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %i.fn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.ab

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.s:                                             ; preds = %.noexc71
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fu = load ptr, ptr %7, align 8, !tbaa !35    ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.br
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.s
  %i.fw = load i64, ptr %i.br, align 8, !tbaa !36
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.r
  %.pn37 = phi { ptr, i32 } [ %i.fs, %bb.r ], [ %i.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.ft, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ab

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.u:                                             ; preds = %.noexc78
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.cg
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.u
  %i.gc = load i64, ptr %i.cg, align 8, !tbaa !36
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.t
  %.pn39 = phi { ptr, i32 } [ %i.fy, %bb.t ], [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.fz, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ab

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

bb.w:                                             ; preds = %.noexc85
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.cv
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.w
  %i.gi = load i64, ptr %i.cv, align 8, !tbaa !36
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.v
  %.pn41 = phi { ptr, i32 } [ %i.ge, %bb.v ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ], [ %i.gf, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.ab

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

bb.y:                                             ; preds = %.noexc92
  %i.gl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gm = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.dk
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %bb.y
  %i.go = load i64, ptr %i.dk, align 8, !tbaa !36
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.x
  %.pn43 = phi { ptr, i32 } [ %i.gk, %bb.x ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %i.gl, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.ab

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.aa:                                            ; preds = %.noexc99
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gs = load ptr, ptr %11, align 8, !tbaa !35   ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.dz
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.aa
  %i.gu = load i64, ptr %i.dz, align 8, !tbaa !36
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.z
  %.pn45 = phi { ptr, i32 } [ %i.gq, %bb.z ], [ %i.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %i.gr, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %.pn45.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ], [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ]
  resume { ptr, i32 } %.pn45.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler17ConsiderNewSystemERdS1_S1_S1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(217) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_ZN5Ipopt21PDPerturbationHandler13finalize_testEv(ptr noundef nonnull align 8 dereferenceable(217) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i8, ptr %i.a, align 8, !tbaa !27, !range !40, !noundef !41
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !45 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %6 = load <2 x double>, ptr %i.d, align 8, !tbaa !46
  store <2 x double> %6, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %7 = load double, ptr %i.g, align 8, !tbaa !47
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %7, ptr %8, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load double, ptr %i.h, align 8, !tbaa !48
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp ogt double %i.e, 0.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.e, ptr %i.k, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = load double, ptr %i.l, align 8, !tbaa !50 ; 2 uses
  %i.n = fcmp ogt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.m, ptr %i.o, align 8, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load double, ptr %i.p, align 8, !tbaa !47 ; 2 uses
  %i.r = fcmp ogt double %i.q, 0.000000e+00
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.q, ptr %i.s, align 8, !tbaa !74
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load double, ptr %i.t, align 8, !tbaa !48 ; 2 uses
  %i.v = fcmp ogt double %i.u, 0.000000e+00
  br i1 %i.v, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.b
  %.sink = phi double [ %i.i, %bb.b ], [ %i.u, %bb.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %.sink, ptr %i.w, align 8, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38   ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !39, !range !40, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.ag, align 8, !tbaa !44
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  store i32 2, ptr %i.ag, align 8, !tbaa !44
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.ah, align 8, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !42
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %._crit_edge.i.i, label %bb.s

._crit_edge.i.i:                                  ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.am = load double, ptr %i.al, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.as = load double, ptr %i.ar, align 8, !tbaa !65
  %i.at = tail call double @pow(double noundef %i.aq, double noundef %i.as) #12
  %i.au = fmul double %i.am, %i.at                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.au, ptr %i.av, align 8, !tbaa !47
  store double %i.au, ptr %3, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !31
  store i8 108, ptr %i.aw, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.ax, align 8, !tbaa !37
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.ay, align 1, !tbaa !36
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 168
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !37
  %i.bb = icmp eq i64 %i.ba, 4611686018427387903
  br i1 %i.bb, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.q:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #14
          to label %.noexc29 unwind label %bb.r

.noexc29:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull %i.aw, i64 noundef 1)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.r ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.be = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aw
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bg = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.pre = load double, ptr %3, align 8, !tbaa !46
  %.pre34 = load i32, ptr %i.x, align 4, !tbaa !38
  br label %bb.v

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aw
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.r
  %i.bl = load i64, ptr %i.aw, align 8, !tbaa !36
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %i.bi

bb.s:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !39, !range !40, !noundef !41
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.br = load double, ptr %i.bq, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !65
  %i.by = tail call double @pow(double noundef %i.bv, double noundef %i.bx) #12
  %i.bz = fmul double %i.br, %i.by                ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.bz, ptr %i.ca, align 8, !tbaa !47
  store double %i.bz, ptr %3, align 8, !tbaa !46
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double 0.000000e+00, ptr %i.cb, align 8, !tbaa !47
  store double 0.000000e+00, ptr %3, align 8, !tbaa !46
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cc = phi i32 [ %i.y, %bb.t ], [ %i.y, %bb.u ], [ %.pre34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.cd = phi double [ %i.bz, %bb.t ], [ 0.000000e+00, %bb.u ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store double %i.cd, ptr %i.ce, align 8, !tbaa !48
  store double %i.cd, ptr %4, align 8, !tbaa !46
  store double 0.000000e+00, ptr %1, align 8, !tbaa !46
  store double 0.000000e+00, ptr %2, align 8, !tbaa !46
  %i.cf = icmp eq i32 %i.cc, 2
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i8 0, i64 16, i1 false)
  %i.ch = call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ci = load double, ptr %1, align 8, !tbaa !46
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ci, ptr %i.cj, align 8, !tbaa !45
  %i.ck = load double, ptr %2, align 8, !tbaa !46
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.ck, ptr %i.cl, align 8, !tbaa !50
  %i.cm = load double, ptr %3, align 8, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.cm, ptr %i.cn, align 8, !tbaa !47
  %i.co = load double, ptr %4, align 8, !tbaa !46
  store double %i.co, ptr %i.ce, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52
  %i.cr = load double, ptr %1, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 120
  store double %i.cr, ptr %i.cs, align 8, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.ct, align 8, !tbaa !67
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.1 = phi i1 [ true, %bb.x ], [ false, %bb.w ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5Ipopt21PDPerturbationHandler13finalize_testEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(217) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  switch i32 %i.b, label %bb.af [
    i32 4, label %bb.aa
    i32 1, label %bb.b
    i32 2, label %bb.k
    i32 3, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %i.e = icmp eq i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.c, align 4, !tbaa !38
  br i1 %i.h, label %._crit_edge.i.i, label %._crit_edge.i.i40

._crit_edge.i.i:                                  ; preds = %bb.c
  store i32 1, ptr %i.f, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !31
  store i32 543844430, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 0, ptr %i.m, align 4, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37
  %i.p = and i64 %i.o, -4
  %i.q = icmp eq i64 %i.p, 4611686018427387900
  br i1 %i.q, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #14
          to label %.noexc35 unwind label %bb.e

.noexc35:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull %i.k, i64 noundef 4)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.t = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.k
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.v = load i64, ptr %i.k, align 8, !tbaa !36
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.af

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.k
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.e
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !36
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.ag

._crit_edge.i.i40:                                ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ae, ptr noundef nonnull align 1 dereferenceable(3) @.str.34, i64 3, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.af, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.ag, align 1, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = add i64 %i.ai, -4611686018427387901
  %i.ak = icmp ult i64 %i.aj, 3
  br i1 %i.ak, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i44

bb.f:                                             ; preds = %._crit_edge.i.i40
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #14
          to label %.noexc45 unwind label %bb.g

.noexc45:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i44: ; preds = %._crit_edge.i.i40
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull %i.ae, i64 noundef 3)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47 unwind label %bb.g ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i44
  %i.an = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.af

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i44, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ae
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.g
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !36
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.ag

bb.h:                                             ; preds = %bb.b
  br i1 %i.h, label %._crit_edge.i.i54, label %bb.af

._crit_edge.i.i54:                                ; preds = %bb.h
  store i32 1, ptr %i.f, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ay, ptr %3, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ay, ptr noundef nonnull align 1 dereferenceable(3) @.str.35, i64 3, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 3, ptr %i.az, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 0, ptr %i.ba, align 1, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !37
  %i.bd = add i64 %i.bc, -4611686018427387901
  %i.be = icmp ult i64 %i.bd, 3
  br i1 %i.be, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i58

bb.i:                                             ; preds = %._crit_edge.i.i54
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #14
          to label %.noexc59 unwind label %bb.j

.noexc59:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i58: ; preds = %._crit_edge.i.i54
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.bg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull %i.ay, i64 noundef 3)
end_hunk_0
begin_hunk_1_@_ZN5Ipopt21PDPerturbationHandler13finalize_testEv:bb.a

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i128
  %i.fy = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.fp
  br i1 %i.fz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit131
  %i.ga = load i64, ptr %i.fp, align 8, !tbaa !36
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.af

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i128, %bb.y
  %i.gc = landingpad { ptr, i32 }
          cleanup
  %i.gd = load ptr, ptr %8, align 8, !tbaa !35    ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.fp
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.z
  %i.gf = load i64, ptr %i.fp, align 8, !tbaa !36
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %bb.ag

bb.aa:                                            ; preds = %bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !43
  %i.gj = add nsw i32 %i.gi, 1                    ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !43
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !28
  %.not29 = icmp slt i32 %i.gj, %i.gl
  br i1 %.not29, label %._crit_edge.i.i152, label %._crit_edge.i.i138

._crit_edge.i.i138:                               ; preds = %bb.aa
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 2, ptr %i.gm, align 4, !tbaa !38
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 2, ptr %i.gn, align 8, !tbaa !42
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.gq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.gq, ptr %9, align 8, !tbaa !31
  store i32 543844420, ptr %i.gq, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.gr, align 8, !tbaa !37
  %i.gs = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.gs, align 4, !tbaa !36
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 168
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !37
  %i.gv = and i64 %i.gu, -4
  %i.gw = icmp eq i64 %i.gv, 4611686018427387900
  br i1 %i.gw, label %bb.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i142

bb.ab:                                            ; preds = %._crit_edge.i.i138
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #14
          to label %.noexc143 unwind label %bb.ac

.noexc143:                                        ; preds = %bb.ab
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i142: ; preds = %._crit_edge.i.i138
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 160
  %i.gy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, ptr noundef nonnull %i.gq, i64 noundef 4)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit145 unwind label %bb.ac ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i142
  %i.gz = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gq
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit145
  %i.hb = load i64, ptr %i.gq, align 8, !tbaa !36
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %._crit_edge.i.i152

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i142, %bb.ab
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.gq
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.ac
  %i.hg = load i64, ptr %i.gq, align 8, !tbaa !36
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  br label %bb.ag

._crit_edge.i.i152:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.aa
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.hk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.hk, ptr %10, align 8, !tbaa !31
  store i8 76, ptr %i.hk, align 8, !tbaa !36
  %i.hl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.hl, align 8, !tbaa !37
  %i.hm = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.hm, align 1, !tbaa !36
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 168
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !37
  %i.hp = icmp eq i64 %i.ho, 4611686018427387903
  br i1 %i.hp, label %bb.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i156

bb.ad:                                            ; preds = %._crit_edge.i.i152
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #14
          to label %.noexc157 unwind label %bb.ae

.noexc157:                                        ; preds = %bb.ad
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i156: ; preds = %._crit_edge.i.i152
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 160
  %i.hr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hq, ptr noundef nonnull %i.hk, i64 noundef 1)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit159 unwind label %bb.ae ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i156
  %i.hs = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hk
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit159
  %i.hu = load i64, ptr %i.hk, align 8, !tbaa !36
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.af

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i156, %bb.ad
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.hk
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.ae
  %i.hz = load i64, ptr %i.hk, align 8, !tbaa !36
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  br label %bb.ag

bb.af:                                            ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, %bb.x, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %bb.a
  ret void

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn32.pn = phi { ptr, i32 } [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.hd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %i.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ], [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ]
  resume { ptr, i32 } %.pn32.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define noundef double @_ZN5Ipopt21PDPerturbationHandler8delta_cdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(217) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load double, ptr %i.a, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load double, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = load double, ptr %i.g, align 8, !tbaa !65
  %i.i = tail call double @pow(double noundef %i.f, double noundef %i.h) #12
  %i.j = fmul double %i.b, %i.i
  ret double %i.j
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(217) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !45 ; 4 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load double, ptr %i.d, align 8, !tbaa !49 ; 3 uses
  %i.f = fcmp oeq double %i.e, 0.000000e+00       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = load double, ptr %i.g, align 8, !tbaa !77
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = load double, ptr %i.i, align 8, !tbaa !78 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load double, ptr %i.k, align 8, !tbaa !79
  %i.m = fmul double %i.e, %i.l                   ; 2 uses
  %i.n = fcmp olt double %i.j, %i.m
  %.sroa.speculated.i = select i1 %i.n, double %i.m, double %i.j
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.o = fmul double %i.e, 1.000000e+05
  %i.p = fcmp olt double %i.o, %i.b
  %or.cond = or i1 %i.f, %i.p
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load double, ptr %i.q, align 8, !tbaa !80
  %i.s = fmul double %i.b, %i.r
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.u = load double, ptr %i.t, align 8, !tbaa !81
  %i.v = fmul double %i.b, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.sink = phi double [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %i.h, %bb.c ], [ %.sroa.speculated.i, %bb.d ] ; 5 uses
  store double %.sink, ptr %i.a, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load double, ptr %i.w, align 8, !tbaa !82
  %i.y = fcmp ule double %.sink, %i.x             ; 2 uses
  br i1 %i.y, label %bb.k, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68  ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.ad(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.31, double noundef %.sink)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !31
  store i16 30820, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.aj, align 2, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !37
  %i.am = and i64 %i.al, -2
  %i.an = icmp eq i64 %i.am, 4611686018427387902
  br i1 %i.an, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #14
          to label %.noexc16 unwind label %bb.j

.noexc16:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 160
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull %i.ah, i64 noundef 2)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.j ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.aq = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ah
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.as = load i64, ptr %i.ah, align 8, !tbaa !36
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.l

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ah
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.j
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !36
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %i.au

bb.k:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store double %.sink, ptr %i.az, align 8, !tbaa !50
  store double %.sink, ptr %1, align 8, !tbaa !46
  %i.ba = load double, ptr %i.az, align 8, !tbaa !50
  store double %i.ba, ptr %2, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !47
  store double %i.bc, ptr %3, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = load double, ptr %i.bd, align 8, !tbaa !48
  store double %i.be, ptr %4, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52
  %i.bh = load double, ptr %1, align 8, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 120
  store double %i.bh, ptr %i.bi, align 8, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.bj, align 8, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %i.y
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler21PerturbForSingularityERdS1_S1_S1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(217) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.28, i32 noundef %i.b, i32 noundef %i.e, i32 noundef %i.j)
  %i.n = load i32, ptr %i.i, align 8, !tbaa !44
  switch i32 %i.n, label %bb.t [
    i32 1, label %bb.c
    i32 2, label %bb.g
    i32 3, label %bb.l
    i32 4, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.d, align 8, !tbaa !42
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load double, ptr %i.q, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load double, ptr %i.u, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.x = load double, ptr %i.w, align 8, !tbaa !65
  %i.y = tail call double @pow(double noundef %i.v, double noundef %i.x) #12
  %i.z = fmul double %i.r, %i.y                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.z, ptr %i.aa, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.z, ptr %i.ab, align 8, !tbaa !48
  store i32 2, ptr %i.i, align 8, !tbaa !44
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.ac = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.ac, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %i.i, align 8, !tbaa !44
  br label %bb.t

bb.g:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !39, !range !40, !noundef !41
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ah = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.ah, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %i.i, align 8, !tbaa !44
  br label %bb.t

bb.j:                                             ; preds = %bb.g
  %i.ai = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.ai, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  store i32 4, ptr %i.i, align 8, !tbaa !44
  br label %bb.t

bb.l:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load double, ptr %i.an, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !65
  %i.ar = tail call double @pow(double noundef %i.ao, double noundef %i.aq) #12
  %i.as = fmul double %i.ak, %i.ar                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.as, ptr %i.at, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.as, ptr %i.au, align 8, !tbaa !48
  %i.av = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.av, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  store i32 4, ptr %i.i, align 8, !tbaa !44
  br label %bb.t

bb.n:                                             ; preds = %bb.b
  %i.aw = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.aw, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !47
  %i.az = fcmp ogt double %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.p, label %._crit_edge.i.i

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.ba, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !68 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load double, ptr %i.bd, align 8, !tbaa !45
  %i.bf = load double, ptr %i.ax, align 8, !tbaa !47
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.bi(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i32 noundef 6, i32 noundef 7, ptr noundef nonnull @.str.29, double noundef %i.be, double noundef %i.bf)
  br label %bb.u

._crit_edge.i.i:                                  ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !51
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !65
  %i.br = tail call double @pow(double noundef %i.bo, double noundef %i.bq) #12
  %i.bs = fmul double %i.bk, %i.br                ; 2 uses
  store double %i.bs, ptr %i.ax, align 8, !tbaa !47
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.bs, ptr %i.bt, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bu, ptr %5, align 8, !tbaa !31
  store i8 76, ptr %i.bu, align 8, !tbaa !36
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.bv, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.bw, align 1, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !37
  %i.bz = icmp eq i64 %i.by, 4611686018427387903
  br i1 %i.bz, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i

bb.r:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #14
          to label %.noexc43 unwind label %bb.s

.noexc43:                                         ; preds = %bb.r
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %._crit_edge.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 160
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef nonnull %i.bu, i64 noundef 1)
          to label %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.s ; 0 uses

_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.cc = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.bu
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ce = load i64, ptr %i.bu, align 8, !tbaa !36
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Ipopt9IpoptData18Append_info_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bu
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.s
  %i.cj = load i64, ptr %i.bu, align 8, !tbaa !36
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %i.cg

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p, %bb.b, %bb.m, %bb.f, %bb.d, %bb.k, %bb.i, %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !45
  store double %i.cm, ptr %1, align 8, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.co = load double, ptr %i.cn, align 8, !tbaa !50
  store double %i.co, ptr %2, align 8, !tbaa !46
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !47
  store double %i.cq, ptr %3, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !48
  store double %i.cs, ptr %4, align 8, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !52
  %i.cv = load double, ptr %1, align 8, !tbaa !46
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 120
  store double %i.cv, ptr %i.cw, align 8, !tbaa !66
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.l, %bb.j, %bb.h, %bb.e, %bb.t, %bb.q
  %.039 = phi i1 [ true, %bb.t ], [ false, %bb.q ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.n ]
  ret i1 %.039
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler22PerturbForWrongInertiaERdS1_S1_S1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(217) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %4) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5Ipopt21PDPerturbationHandler13finalize_testEv(ptr noundef nonnull align 8 dereferenceable(217) %0)
  %i.a = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load double, ptr %3, align 8, !tbaa !46
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load double, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load double, ptr %i.h, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load double, ptr %i.j, align 8, !tbaa !65
  %i.l = tail call double @pow(double noundef %i.i, double noundef %i.k) #12
  %i.m = fmul double %i.e, %i.l                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.m, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.m, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.q, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 4, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = tail call noundef zeroext i1 @_ZN5Ipopt21PDPerturbationHandler28get_deltas_for_wrong_inertiaERdS1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(217) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.0.in = phi i1 [ true, %bb.a ], [ %i.u, %bb.e ], [ false, %bb.b ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5Ipopt21PDPerturbationHandler19CurrentPerturbationERdS1_S1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(217) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %4) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load double, ptr %i.a, align 8, !tbaa !45
  store double %i.b, ptr %1, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load double, ptr %i.c, align 8, !tbaa !50
  store double %i.d, ptr %2, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load double, ptr %i.e, align 8, !tbaa !47
  store double %i.f, ptr %3, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load double, ptr %i.g, align 8, !tbaa !48
  store double %i.h, ptr %4, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt23AlgorithmStrategyObjectE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !9
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(2185) %i.b) #12, !inline_history !83
  br label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !9
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !9
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(2232) %i.k) #12, !inline_history !84
  br label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit:      ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit, %bb.d, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 4 uses
  %.not.i.i2 = icmp eq ptr %i.t, null
  br i1 %.not.i.i2, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !9
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #12, !inline_history !85
  br label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit:       ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit, %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68 ; 4 uses
  %.not.i.i3 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i3, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !9
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !9
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #12, !inline_history !86
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit:   ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt21PDPerturbationHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(217) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt23AlgorithmStrategyObjectE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !9
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(2185) %i.b) #12, !inline_history !87
  br label %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !9
  %i.n = add nsw i32 %i.m, -1                     ; 2 uses
  store i32 %i.n, ptr %i.l, align 8, !tbaa !9
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(2232) %i.k) #12, !inline_history !88
  br label %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i:    ; preds = %bb.e, %bb.d, %_ZN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 4 uses
  %.not.i.i2.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i2.i, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !9
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.t) #12, !inline_history !89
  br label %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i

_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i:     ; preds = %bb.g, %bb.f, %_ZN5Ipopt8SmartPtrINS_9IpoptDataEED2Ev.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !68 ; 4 uses
  %.not.i.i3.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i3.i, label %_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !9
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !9
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #12, !inline_history !90
  br label %_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit

_ZN5Ipopt23AlgorithmStrategyObjectD2Ev.exit:      ; preds = %_ZN5Ipopt8SmartPtrINS_8IpoptNLPEED2Ev.exit.i, %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt23AlgorithmStrategyObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(49) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN5Ipopt16ReferencedObjectE", !5, i64 8}
!9 = !{!8, !5, i64 8}
!10 = !{!"vtable pointer", !3, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTSN5Ipopt10JournalistE", !12, i64 0}
!14 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_10JournalistEEE", !13, i64 0}
!15 = !{!"p1 _ZTSN5Ipopt8IpoptNLPE", !12, i64 0}
!16 = !{!"_ZTSN5Ipopt8SmartPtrINS_8IpoptNLPEEE", !15, i64 0}
!17 = !{!"p1 _ZTSN5Ipopt9IpoptDataE", !12, i64 0}
!18 = !{!"_ZTSN5Ipopt8SmartPtrINS_9IpoptDataEEE", !17, i64 0}
!19 = !{!"p1 _ZTSN5Ipopt25IpoptCalculatedQuantitiesE", !12, i64 0}
!20 = !{!"_ZTSN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSN5Ipopt23AlgorithmStrategyObjectE", !8, i64 0, !14, i64 16, !16, i64 24, !18, i64 32, !20, i64 40, !21, i64 48}
!23 = !{!"double", !4, i64 0}
!24 = !{!"_ZTSN5Ipopt21PDPerturbationHandler9DegenTypeE", !4, i64 0}
!25 = !{!"_ZTSN5Ipopt21PDPerturbationHandler11TrialStatusE", !4, i64 0}
!26 = !{!"_ZTSN5Ipopt21PDPerturbationHandlerE", !22, i64 0, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !21, i64 120, !24, i64 124, !24, i64 128, !5, i64 132, !25, i64 136, !23, i64 144, !23, i64 152, !23, i64 160, !23, i64 168, !23, i64 176, !23, i64 184, !23, i64 192, !23, i64 200, !21, i64 208, !5, i64 212, !21, i64 216}
!27 = !{!26, !21, i64 208}
!28 = !{!26, !5, i64 212}
!29 = !{!"p1 omnipotent char", !12, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!30, !29, i64 0}
!32 = !{!"long", !4, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !32, i64 8, !4, i64 16}
!35 = !{!34, !29, i64 0}
!36 = !{!4, !4, i64 0}
!37 = !{!34, !32, i64 8}
!38 = !{!26, !24, i64 124}
!39 = !{!26, !21, i64 216}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!26, !24, i64 128}
!43 = !{!26, !5, i64 132}
!44 = !{!26, !25, i64 136}
!45 = !{!26, !23, i64 88}
!46 = !{!23, !23, i64 0}
!47 = !{!26, !23, i64 104}
!48 = !{!26, !23, i64 112}
!49 = !{!26, !23, i64 56}
!50 = !{!26, !23, i64 96}
!51 = !{!26, !23, i64 192}
!52 = !{!18, !17, i64 0}
!53 = !{!"p1 _ZTSN5Ipopt14IteratesVectorE", !12, i64 0}
!54 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_14IteratesVectorEEE", !53, i64 0}
!55 = !{!"p1 _ZTSN5Ipopt9SymMatrixE", !12, i64 0}
!56 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_9SymMatrixEEE", !55, i64 0}
!57 = !{!"p1 _ZTSN5Ipopt19IteratesVectorSpaceE", !12, i64 0}
!58 = !{!"_ZTSN5Ipopt8SmartPtrINS_19IteratesVectorSpaceEEE", !57, i64 0}
!59 = !{!"_ZTSN5Ipopt9TimedTaskE", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !21, i64 48, !21, i64 49, !21, i64 50}
!60 = !{!"_ZTSN5Ipopt16TimingStatisticsE", !8, i64 0, !59, i64 16, !59, i64 72, !59, i64 128, !59, i64 184, !59, i64 240, !59, i64 296, !59, i64 352, !59, i64 408, !59, i64 464, !59, i64 520, !59, i64 576, !59, i64 632, !59, i64 688, !59, i64 744, !59, i64 800, !59, i64 856, !59, i64 912, !59, i64 968, !59, i64 1024, !59, i64 1080, !59, i64 1136, !59, i64 1192, !59, i64 1248, !59, i64 1304, !59, i64 1360, !59, i64 1416, !59, i64 1472, !59, i64 1528, !59, i64 1584, !59, i64 1640, !59, i64 1696, !59, i64 1752, !59, i64 1808, !59, i64 1864, !59, i64 1920}
!61 = !{!"p1 _ZTSN5Ipopt19IpoptAdditionalDataE", !12, i64 0}
!62 = !{!"_ZTSN5Ipopt8SmartPtrINS_19IpoptAdditionalDataEEE", !61, i64 0}
!63 = !{!"_ZTSN5Ipopt9IpoptDataE", !8, i64 0, !54, i64 16, !54, i64 24, !56, i64 32, !54, i64 40, !21, i64 48, !54, i64 56, !21, i64 64, !5, i64 68, !23, i64 72, !21, i64 80, !23, i64 88, !21, i64 96, !21, i64 97, !21, i64 98, !23, i64 104, !21, i64 112, !21, i64 113, !23, i64 120, !23, i64 128, !4, i64 136, !23, i64 144, !5, i64 152, !21, i64 156, !34, i64 160, !23, i64 192, !5, i64 200, !58, i64 208, !60, i64 216, !62, i64 2192, !23, i64 2200, !23, i64 2208, !23, i64 2216, !23, i64 2224}
!64 = !{!63, !23, i64 72}
!65 = !{!26, !23, i64 200}
!66 = !{!63, !23, i64 120}
!67 = !{!26, !21, i64 120}
!68 = !{!14, !13, i64 0}
!69 = !{!20, !19, i64 0}
!70 = !{!16, !15, i64 0}
!71 = !{!"p1 _ZTSN5Ipopt17RegisteredOptionsE", !12, i64 0}
!72 = !{!"_ZTSN5Ipopt8SmartPtrINS_17RegisteredOptionsEEE", !71, i64 0}
!73 = !{!72, !71, i64 0}
!74 = !{!26, !23, i64 72}
!75 = !{!26, !23, i64 64}
!76 = !{!26, !23, i64 80}
!77 = !{!26, !23, i64 184}
!78 = !{!26, !23, i64 152}
!79 = !{!26, !23, i64 176}
!80 = !{!26, !23, i64 160}
!81 = !{!26, !23, i64 168}
!82 = !{!26, !23, i64 144}
!83 = distinct !{null, null}
!84 = distinct !{null, null}
!85 = distinct !{null, null}
!86 = distinct !{null, null}
!87 = distinct !{ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, null, null}
!88 = distinct !{ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, null, null}
!89 = distinct !{ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, null, null}
!90 = distinct !{ptr @_ZN5Ipopt23AlgorithmStrategyObjectD2Ev, null, null}
end_hunk_1
