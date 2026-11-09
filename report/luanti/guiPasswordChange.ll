Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiPasswordChange?download=true
inline.NumInlined: 459
inline.NumDeleted: 207
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN17GUIPasswordChange13regenerateGuiEN4core8vector2dIjEE:bb.a
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gj) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.gk = sitofp nsz i32 %i.fw to float
  %i.gl = call nsz float @llvm.fmuladd.f32(float %i.d, float 5.000000e+01, float %i.gk)
  %i.gm = fptosi float %i.gl to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.gn = fmul nsz float %i.d, 3.000000e+02
  %i.go = fptosi float %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.gs = fmul nsz float %i.d, 3.500000e+01
  %i.gt = fptosi float %i.gs to i32
  %i.gu = add nsw i32 %i.gt, %i.l                 ; 2 uses
  store i32 %i.gu, ptr %16, align 4, !tbaa !62
  store i32 %i.gm, ptr %i.gp, align 4, !tbaa !63
  %i.gv = add nsw i32 %i.gu, %i.go
  store i32 %i.gv, ptr %i.gq, align 4, !tbaa !62
  %i.gw = add nsw i32 %i.gm, %i.r
  store i32 %i.gw, ptr %i.gr, align 4, !tbaa !63
  %i.gx = load ptr, ptr %i.ad, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_Z11wstrgettextB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.6)
  %i.gy = load ptr, ptr %17, align 8, !tbaa !65
  %i.gz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !52
  %i.hb = invoke noundef ptr @_ZN3gui10StaticText3addEPNS_15IGUIEnvironmentESt17basic_string_viewIwSt11char_traitsIwEERKN4core4rectIiEEbbPNS_11IGUIElementEib(ptr noundef %i.gx, i64 %i.ha, ptr %i.gy, ptr noundef nonnull align 4 dereferenceable(16) %16, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull %0, i32 noundef 260, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.m       ; 2 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129
  %i.hc = load ptr, ptr %17, align 8, !tbaa !65   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i136: ; preds = %bb.g
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !66
  %i.hg = shl i64 %i.hf, 2
  %i.hh = add i64 %i.hg, 4
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hh) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit138: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.hi = load ptr, ptr %i.hb, align 8, !tbaa !11
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 120
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(308) %i.hb, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.h:                                             ; preds = %bb.a
  %i.hl = landingpad { ptr, i32 }
          cleanup
  %i.hm = load ptr, ptr %4, align 8, !tbaa !65    ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i139: ; preds = %bb.h
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !66
  %i.hq = shl i64 %i.hp, 2
  %i.hr = add i64 %i.hq, 4
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hr) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit141: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.n

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  %i.hs = landingpad { ptr, i32 }
          cleanup
  %i.ht = load ptr, ptr %7, align 8, !tbaa !65    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i142: ; preds = %bb.i
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !66
  %i.hx = shl i64 %i.hw, 2
  %i.hy = add i64 %i.hx, 4
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hy) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit144: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit85
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %10, align 8, !tbaa !65   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i145: ; preds = %bb.j
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !66
  %i.ie = shl i64 %i.id, 2
  %i.if = add i64 %i.ie, 4
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.if) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit147: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.n

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit98
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %13, align 8, !tbaa !65   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i148: ; preds = %bb.k
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !66
  %i.il = shl i64 %i.ik, 2
  %i.im = add i64 %i.il, 4
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.im) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit150: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.n

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit107
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %15, align 8, !tbaa !65   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i151: ; preds = %bb.l
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !66
  %i.is = shl i64 %i.ir, 2
  %i.it = add i64 %i.is, 4
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.it) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit153: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit129
  %i.iu = landingpad { ptr, i32 }
          cleanup
  %i.iv = load ptr, ptr %17, align 8, !tbaa !65   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i154: ; preds = %bb.m
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !66
  %i.iz = shl i64 %i.iy, 2
  %i.ja = add i64 %i.iz, 4
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.ja) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit156: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit156, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit153, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit150, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit147, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit141
  %.pn = phi { ptr, i32 } [ %i.iu, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit156 ], [ %i.in, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit153 ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit150 ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit147 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit144 ], [ %i.hl, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17GUIPasswordChange11acceptInputEv(ptr noundef nonnull align 8 dereferenceable(520) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(308) %0, i32 noundef 256, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(308) %i.d) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.k = load i64, ptr %i.j, align 8, !tbaa !52
  %i.l = tail call noundef i64 @wcslen(ptr noundef %i.h) #24
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef %i.k, ptr noundef %i.h, i64 noundef %i.l) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(308) %0, i32 noundef 257, i1 noundef zeroext false) ; 3 uses
  %.not9 = icmp eq ptr %i.q, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(308) %i.q) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.x = load i64, ptr %i.w, align 8, !tbaa !52
  %i.y = tail call noundef i64 @wcslen(ptr noundef %i.u) #24
  %i.z = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef 0, i64 noundef %i.x, ptr noundef %i.u, i64 noundef %i.y) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(308) %0, i32 noundef 258, i1 noundef zeroext false) ; 3 uses
  %.not10 = icmp eq ptr %i.ad, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(308) %i.ad) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !52
  %i.al = tail call noundef i64 @wcslen(ptr noundef %i.ah) #24
  %i.am = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 0, i64 noundef %i.ak, ptr noundef %i.ah, i64 noundef %i.al) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN12GUIModalMenu14getScalingInfoEN4core8vector2dIjEES2_(ptr dead_on_unwind writable sret(%"struct.GUIModalMenu::ScalingInfo") align 4, ptr noundef nonnull align 8 dereferenceable(408), i64, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 6 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.063.0.copyload = load i32, ptr %i.c, align 8, !tbaa !58
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.867.0.copyload = load i32, ptr %.sroa.867.0..sroa_idx, align 4, !tbaa !58
  %.sroa.1272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.1272.0.copyload = load i32, ptr %.sroa.1272.0..sroa_idx, align 8, !tbaa !58
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.e = load i8, ptr %i.d, align 1, !tbaa !117, !range !68, !noundef !69
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.preheader, label %.sink.split

.preheader:                                       ; preds = %bb.b, %.preheader
  %.025 = phi ptr [ %i.h, %.preheader ], [ %0, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.025, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %.not33 = icmp eq ptr %i.h, null
  br i1 %.not33, label %.sink.split, label %.preheader, !llvm.loop !116

.sink.split:                                      ; preds = %.preheader, %bb.b
  %.025.lcssa.sink100 = phi ptr [ %i.b, %bb.b ], [ %.025, %.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 80
  %.sroa.041.0.copyload = load i32, ptr %i.i, align 8, !tbaa !58
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 84
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !58
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 88
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !58
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.025.lcssa.sink100, i64 92
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.sroa.15.0 = phi i32 [ 0, %bb.a ], [ %.sroa.15.0.copyload, %.sink.split ] ; 2 uses
  %.sroa.1272.0 = phi i32 [ 0, %bb.a ], [ %.sroa.1272.0.copyload, %.sink.split ] ; 2 uses
  %.sroa.867.0 = phi i32 [ 0, %bb.a ], [ %.sroa.867.0.copyload, %.sink.split ] ; 4 uses
  %.sroa.063.0 = phi i32 [ 0, %bb.a ], [ %.sroa.063.0.copyload, %.sink.split ] ; 4 uses
  %.sroa.041.0 = phi i32 [ 0, %bb.a ], [ %.sroa.041.0.copyload, %.sink.split ]
  %.sroa.8.0 = phi i32 [ 0, %bb.a ], [ %.sroa.8.0.copyload, %.sink.split ]
  %.sroa.10.0 = phi i32 [ 0, %bb.a ], [ %.sroa.10.0.copyload, %.sink.split ]
  %.sroa.12.0 = phi i32 [ 0, %bb.a ], [ %.sroa.12.0.copyload, %.sink.split ]
  %i.j = sub nsw i32 %.sroa.1272.0, %.sroa.063.0  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !60
  %i.n = load i32, ptr %i.k, align 8, !tbaa !61
  %.neg = sub i32 %i.n, %i.m
  %i.o = add i32 %.neg, %i.j                      ; 4 uses
  %i.p = sub nsw i32 %.sroa.15.0, %.sroa.867.0    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !72
  %.neg79 = sub i32 %i.t, %i.r
  %i.u = add i32 %.neg79, %i.p                    ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load i32, ptr %i.v, align 8, !tbaa !73   ; 2 uses
  %i.x = icmp eq i32 %i.w, 3
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.z = load i32, ptr %i.y, align 4, !tbaa !74
  %i.aa = icmp eq i32 %i.z, 3
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = sitofp nsz i32 %i.j to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi nsz float [ %i.ab, %bb.e ], [ 0.000000e+00, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !75 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 3
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !76
  %i.ah = icmp eq i32 %i.ag, 3
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = sitofp nsz i32 %i.p to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.024 = phi nsz float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  switch i32 %i.w, label %bb.m [
    i32 3, label %bb.l
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !118
  %i.al = add nsw i32 %i.ak, %i.o
  store i32 %i.al, ptr %i.aj, align 8, !tbaa !118
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.am = sdiv i32 %i.o, 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !118
  %i.ap = add nsw i32 %i.ao, %i.am
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !118
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !77
  %i.as = fmul nsz float %.0, %i.ar
  %i.at = fadd nsz float %i.as, 5.000000e-01
  %i.au = tail call nsz noundef float @llvm.floor.f32(float %i.at)
  %i.av = fptosi float %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !118
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !74
  switch i32 %i.ay, label %bb.q [
    i32 3, label %bb.p
    i32 1, label %bb.n
    i32 2, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !119
  %i.bb = add nsw i32 %i.ba, %i.o
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !119
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bc = sdiv i32 %i.o, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !119
  %i.bf = add nsw i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !119
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !78
  %i.bi = fmul nsz float %.0, %i.bh
  %i.bj = fadd nsz float %i.bi, 5.000000e-01
  %i.bk = tail call nsz noundef float @llvm.floor.f32(float %i.bj)
  %i.bl = fptosi float %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !119
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  switch i32 %i.ad, label %bb.u [
    i32 3, label %bb.t
    i32 1, label %bb.r
    i32 2, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !120
  %i.bp = add nsw i32 %i.bo, %i.u
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !120
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bq = sdiv i32 %i.u, 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !120
  %i.bt = add nsw i32 %i.bs, %i.bq
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !120
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 132
end_hunk_0
begin_hunk_1_@_ZTv0_n24_N17GUIPasswordChangeD0Ev:bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-24, 336) (i8, ptr @_ZTV17GUIPasswordChange, i64 24), ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTV17GUIPasswordChange, i64 384), ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 496 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 8, !tbaa !66
  %i.k = shl i64 %i.j, 2
  %i.l = add i64 %i.k, 4
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.l) #23, !inline_history !162
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 464 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit4.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i2.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i2.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !66
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.s) #23, !inline_history !162
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit4.i.i.i

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i2.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 432 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN17GUIPasswordChangeD0Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i5.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i5.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit4.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !66
  %i.y = shl i64 %i.x, 2
  %i.z = add i64 %i.y, 4
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #23, !inline_history !162
  br label %_ZN17GUIPasswordChangeD0Ev.exit

_ZN17GUIPasswordChangeD0Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit4.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i5.i.i.i
  tail call void @_ZN12GUIModalMenuD2Ev(ptr noundef nonnull align 8 dereferenceable(520) %i.d, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTT17GUIPasswordChange, i64 8)) #22, !inline_history !162
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(520) %i.d, i64 noundef 536) #23, !inline_history !163
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #12 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #22 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !166    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #22, !inline_history !164
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17IReferenceCountedD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17IReferenceCountedD0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

declare void @_ZN14EnrichedStringC1ESt17basic_string_viewIwSt11char_traitsIwEERKN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(80), i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14EnrichedStringD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !65     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !66
  %i.l = shl i64 %i.k, 2
  %i.m = add i64 %i.l, 4
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #23
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @_ZN3gui10StaticTextC1ERK14EnrichedStringbPNS_15IGUIEnvironmentEPNS_11IGUIElementEiRKN4core4rectIiEEb(ptr noundef nonnull align 8 dereferenceable(464), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), i1 noundef zeroext) unnamed_addr #1

declare void @_Z12utf8_to_wideB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @gettext(ptr noundef) local_unnamed_addr #3

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIwEaSIwEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !52
  store i32 0, ptr %i.b, align 8, !tbaa !54
  call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %i.d = load ptr, ptr %2, align 8, !tbaa !65     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZN4core6stringIwE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !66
  %i.g = shl i64 %i.f, 2
  %i.h = add i64 %i.g, 4
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZN4core6stringIwE5clearEb.exit

_ZN4core6stringIwE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !65
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @wcslen(ptr noundef nonnull %1) #24 ; 5 uses
  %i.l = and i64 %i.k, 4294967295                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = and i64 %i.k, 4294967295                 ; 2 uses
  %.not18 = icmp eq i64 %i.p, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !65     ; 7 uses
  %wide.trip.count = and i64 %i.k, 4294967295     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = sub i64 %i.a, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.k, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !54
  %wide.load24 = load <4 x i32>, ptr %i.u, align 4, !tbaa !54
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !54
  store <4 x i32> %wide.load24, ptr %i.w, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !54
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !54
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !168

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.ph, %i.p
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !52
  %i.ae = icmp ugt i64 %i.ad, %i.l
  br i1 %i.ae, label %bb.g, label %bb.h

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !54
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !54
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !54
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !54
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.am, ptr %i.an, align 4, !tbaa !54
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !54
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !169

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l, i32 noundef signext 0)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g, %bb.c, %_ZN4core6stringIwE5clearEb.exit
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE6resizeEmw(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i32 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4core6stringIcEaSIcEERS1_PKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !87
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !89
  store i8 0, ptr %i.a, align 8, !tbaa !66
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %i.c = load ptr, ptr %2, align 8, !tbaa !88     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN4core6stringIcE5clearEb.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !66
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #23
  br label %_ZN4core6stringIcE5clearEb.exit

_ZN4core6stringIcE5clearEb.exit:                  ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !88
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 5 uses
  %i.j = and i64 %i.i, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !89
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = and i64 %i.i, 4294967295
  %.not18 = icmp eq i64 %i.n, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = and i64 %i.i, 4294967295
  %i.o = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.i, 3                     ; 3 uses
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 4294967292
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.r = load i8, ptr %i.q, align 1, !tbaa !66
  %i.s = load ptr, ptr %0, align 8, !tbaa !88
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.epil
  store i8 %i.r, ptr %i.t, align 1, !tbaa !66
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_1
