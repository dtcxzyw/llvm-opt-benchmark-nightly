Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/distributions_test?download=true
inline.NumInlined: 1834
inline.NumDeleted: 672
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_137RandomDistributionsTest_Gaussian_Test8TestBodyEv:bb.a

bb.at:                                            ; preds = %bb.ap
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn27 = phi { ptr, i32 } [ %i.dg, %bb.at ], [ %i.df, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.dh = load ptr, ptr %11, align 8, !tbaa !32   ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i62, label %_ZN7testing7MessageD2Ev.exit64, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %bb.au
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #19, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit64

_ZN7testing7MessageD2Ev.exit64:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63, %bb.au, %bb.ar
  %.pn27.pn = phi { ptr, i32 } [ %i.de, %bb.ar ], [ %.pn27, %bb.au ], [ %.pn27, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #19
  br label %bb.ay

bb.av:                                            ; preds = %bb.aj, %_ZN7testing7MessageD2Ev.exit61
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !27 ; 4 uses
  %.not.i.i65 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i65, label %_ZN7testing15AssertionResultD2Ev.exit69, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !28 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66: ; preds = %bb.aw
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !35
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i66
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit69

_ZN7testing15AssertionResultD2Ev.exit69:          ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !170
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.90, double noundef 3.000000e+00, double noundef %i.dt, double noundef 5.000000e-01)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit69
  %i.du = load i8, ptr %13, align 8, !tbaa !14, !range !25, !noundef !26
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %bb.bj, label %bb.ba

bb.ay:                                            ; preds = %_ZN7testing7MessageD2Ev.exit64, %bb.al
  %.pn27.pn.pn = phi { ptr, i32 } [ %.pn27.pn, %_ZN7testing7MessageD2Ev.exit64 ], [ %i.cv, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.bm

bb.az:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit69
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !27 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i70, label %_ZNK7testing15AssertionResult15failure_messageEv.exit71, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !28
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit71

_ZNK7testing15AssertionResult15failure_messageEv.exit71: ; preds = %bb.bc, %bb.bb
  %i.ea = phi ptr [ %i.dz, %bb.bc ], [ @.str.50, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 493, ptr noundef %i.ea)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit71
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.eb = load ptr, ptr %14, align 8, !tbaa !32   ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit74, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73: ; preds = %bb.be
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(128) %i.eb) #19, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit74

_ZN7testing7MessageD2Ev.exit74:                   ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ba
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit77

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit71
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn31 = phi { ptr, i32 } [ %i.eh, %bb.bh ], [ %i.eg, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.ei = load ptr, ptr %14, align 8, !tbaa !32   ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %bb.bi
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #19, !inline_history !34
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76, %bb.bi, %bb.bf
  %.pn31.pn = phi { ptr, i32 } [ %i.ef, %bb.bf ], [ %.pn31, %bb.bi ], [ %.pn31, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #19
  br label %bb.bl

bb.bj:                                            ; preds = %bb.ax, %_ZN7testing7MessageD2Ev.exit74
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !27 ; 4 uses
  %.not.i.i78 = icmp eq ptr %i.en, null
  br i1 %.not.i.i78, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !28 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i79

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i79: ; preds = %bb.bk
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !35
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i79
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 32) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 3200000) #20
  ret void

bb.bl:                                            ; preds = %_ZN7testing7MessageD2Ev.exit77, %bb.az
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZN7testing7MessageD2Ev.exit77 ], [ %i.dw, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.ay, %bb.ak, %bb.w, %bb.i
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %.pn31.pn.pn, %bb.bl ], [ %.pn27.pn.pn, %bb.ay ], [ %.pn23.pn.pn, %bb.ak ], [ %.pn.pn.pn, %bb.w ], [ %i.as, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit84

_ZNSt6vectorIdSaIdEED2Ev.exit84:                  ; preds = %bb.bm, %bb.f, %bb.c
  %.pn36 = phi { ptr, i32 } [ %i.an, %bb.f ], [ %.pn31.pn.pn.pn, %bb.bm ], [ %i.aj, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 3200000) #20
  resume { ptr, i32 } %.pn36
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base6zignorINS0_14InsecureBitGenEEEdRT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.promoted = load i64, ptr %1, align 16, !tbaa !12
  %.sroa.22.0..sroa_idx.i.i.i.i.promoted = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !12
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.narrow.i.i.i.i.i.i2743 = phi i64 [ %.narrow.i.i.i.i.i.i27, %bb.d ], [ %.sroa.22.0..sroa_idx.i.i.i.i.promoted, %bb.a ]
  %i.a = phi i64 [ %i.cm, %bb.d ], [ %.promoted, %bb.a ]
  %i.b = zext i64 %.narrow.i.i.i.i.i.i2743 to i128
  %i.c = shl nuw i128 %i.b, 64
  %i.d = zext i64 %i.a to i128
  %i.e = or disjoint i128 %i.c, %i.d
  %i.f = mul i128 %i.e, 47026247687942121848144207491837523525
  %i.g = add i128 %i.f, 1442695040888963407       ; 3 uses
  %i.h = trunc i128 %i.g to i64                   ; 3 uses
  %i.i = lshr i128 %i.g, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.i to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 5 uses
  store i64 %i.h, ptr %1, align 16, !tbaa !12
  store i64 %.narrow.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !12
  %i.j = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.k = xor i64 %.narrow.i.i.i.i.i.i, %i.h       ; 2 uses
  %.0.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.k, i64 %i.k, i64 %i.j) ; 5 uses
  %i.l = trunc i64 %.0.i.i.i.i.i.i.i to i32
  %i.m = and i32 %i.l, 127                        ; 2 uses
  %i.n = and i64 %.0.i.i.i.i.i.i.i, -9223372036854775808
  %i.o = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775807
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false) ; 2 uses
  %i.q = and i64 %i.p, 63
  %i.r = shl i64 %.0.i.i.i.i.i.i.i, %i.q
  %i.s = lshr i64 %i.r, 11
  %i.t = shl nuw nsw i64 %i.p, 52
  %i.u = or disjoint i64 %i.t, %i.n
  %i.v = and i64 %i.s, 4503599627370495
  %i.w = or disjoint i64 %i.v, %i.u
  %i.x = xor i64 %i.w, 4607182418800017408
  %i.y = bitcast i64 %i.x to double               ; 2 uses
  %i.z = and i64 %.0.i.i.i.i.i.i.i, 127           ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !41
  %i.ac = fmul double %i.ab, %i.y                 ; 5 uses
  %i.ad = tail call noundef double @llvm.fabs.f64(double %i.ac)
  %i.ae = add nuw nsw i32 %i.m, 1
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !41
  %i.ai = fcmp olt double %i.ad, %i.ah
  br i1 %i.ai, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = icmp eq i32 %i.m, 0
  br i1 %i.aj, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c, %.preheader
  %.narrow.i.i.i.i.i.i1316.i = phi i64 [ %.narrow.i.i.i.i.i.i13.i, %.preheader ], [ %.narrow.i.i.i.i.i.i, %bb.c ]
  %i.ak = phi i64 [ %i.bl, %.preheader ], [ %i.h, %bb.c ]
  %i.al = zext i64 %.narrow.i.i.i.i.i.i1316.i to i128
  %i.am = shl nuw i128 %i.al, 64
  %i.an = zext i64 %i.ak to i128
  %i.ao = or disjoint i128 %i.am, %i.an
  %i.ap = mul i128 %i.ao, 47026247687942121848144207491837523525
  %i.aq = add i128 %i.ap, 1442695040888963407     ; 3 uses
  %i.ar = trunc i128 %i.aq to i64
  %i.as = lshr i128 %i.aq, 64
  %.tr.i.i.i.i.i.i.i = trunc nuw i128 %i.as to i64
  %.narrow.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i, 6364136223846793005 ; 3 uses
  %i.at = lshr i64 %.narrow.i.i.i.i.i.i.i, 58
  %i.au = xor i64 %.narrow.i.i.i.i.i.i.i, %i.ar   ; 2 uses
  %.0.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.au, i64 %i.au, i64 %i.at) ; 2 uses
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i.i, i1 false) ; 2 uses
  %i.aw = and i64 %i.av, 63
  %i.ax = shl i64 %.0.i.i.i.i.i.i.i.i, %i.aw
  %i.ay = lshr i64 %i.ax, 11
  %i.az = and i64 %i.ay, 4503599627370495
  %i.ba = shl nuw nsw i64 %i.av, 52
  %reass.sub46 = sub nsw i64 %i.az, %i.ba
  %i.bb = add nsw i64 %reass.sub46, 4602678819172646912
  %i.bc = bitcast i64 %i.bb to double
  %i.bd = tail call nnan double @llvm.log.f64(double %i.bc)
  %i.be = fmul nnan double %i.bd, f0x3FD2972A8AFC6175 ; 4 uses
  %i.bf = zext i64 %.narrow.i.i.i.i.i.i.i to i128
  %i.bg = shl nuw i128 %i.bf, 64
  %i.bh = and i128 %i.aq, 18446744073709551615
  %i.bi = or disjoint i128 %i.bg, %i.bh
  %i.bj = mul i128 %i.bi, 47026247687942121848144207491837523525
  %i.bk = add i128 %i.bj, 1442695040888963407     ; 2 uses
  %i.bl = trunc i128 %i.bk to i64                 ; 3 uses
  %i.bm = lshr i128 %i.bk, 64
  %.tr.i.i.i.i.i.i12.i = trunc nuw i128 %i.bm to i64
  %.narrow.i.i.i.i.i.i13.i = add i64 %.tr.i.i.i.i.i.i12.i, 6364136223846793005 ; 4 uses
  %i.bn = lshr i64 %.narrow.i.i.i.i.i.i13.i, 58
  %i.bo = xor i64 %.narrow.i.i.i.i.i.i13.i, %i.bl ; 2 uses
  %.0.i.i.i.i.i.i.i14.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.bo, i64 %i.bo, i64 %i.bn) ; 2 uses
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i14.i, i1 false) ; 2 uses
  %i.bq = and i64 %i.bp, 63
  %i.br = shl i64 %.0.i.i.i.i.i.i.i14.i, %i.bq
  %i.bs = lshr i64 %i.br, 11
  %i.bt = and i64 %i.bs, 4503599627370495
  %i.bu = shl nuw nsw i64 %i.bp, 52
  %reass.sub47 = sub nsw i64 %i.bt, %i.bu
  %i.bv = add nsw i64 %reass.sub47, 4602678819172646912
  %i.bw = bitcast i64 %i.bv to double
  %i.bx = tail call double @llvm.log.f64(double %i.bw) ; 2 uses
  %i.by = fneg double %i.bx
  %i.bz = fsub double %i.by, %i.bx
  %i.ca = fmul double %i.be, %i.be
  %i.cb = fcmp olt double %i.bz, %i.ca
  br i1 %i.cb, label %.preheader, label %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit, !llvm.loop !232

_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit: ; preds = %.preheader
  %i.cc = fcmp olt double %i.y, 0.000000e+00
  store i64 %i.bl, ptr %1, align 16, !tbaa !12
  store i64 %.narrow.i.i.i.i.i.i13.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !12
  %i.cd = fadd double %i.be, f0xC00B8A7C476D2BE8
  %i.ce = fsub double f0x400B8A7C476D2BE8, %i.be
  %i.cf = select i1 %i.cc, double %i.cd, double %i.ce
  br label %select.unfold

bb.d:                                             ; preds = %bb.c
  %i.cg = zext i64 %.narrow.i.i.i.i.i.i to i128
  %i.ch = shl nuw i128 %i.cg, 64
  %i.ci = and i128 %i.g, 18446744073709551615
  %i.cj = or disjoint i128 %i.ch, %i.ci
  %i.ck = mul i128 %i.cj, 47026247687942121848144207491837523525
  %i.cl = add i128 %i.ck, 1442695040888963407     ; 2 uses
  %i.cm = trunc i128 %i.cl to i64                 ; 3 uses
  %i.cn = lshr i128 %i.cl, 64
  %.tr.i.i.i.i.i.i26 = trunc nuw i128 %i.cn to i64
  %.narrow.i.i.i.i.i.i27 = add i64 %.tr.i.i.i.i.i.i26, 6364136223846793005 ; 4 uses
  store i64 %i.cm, ptr %1, align 16, !tbaa !12
  store i64 %.narrow.i.i.i.i.i.i27, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !12
  %i.co = lshr i64 %.narrow.i.i.i.i.i.i27, 58
  %i.cp = xor i64 %.narrow.i.i.i.i.i.i27, %i.cm   ; 2 uses
  %.0.i.i.i.i.i.i.i28 = tail call noundef i64 @llvm.fshr.i64(i64 %i.cp, i64 %i.cp, i64 %i.co) ; 2 uses
  %i.cq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.i.i.i.i28, i1 false) ; 2 uses
  %i.cr = and i64 %i.cq, 63
  %i.cs = shl i64 %.0.i.i.i.i.i.i.i28, %i.cr
  %i.ct = lshr i64 %i.cs, 11
  %i.cu = shl nuw nsw i64 %i.cq, 52
  %i.cv = and i64 %i.ct, 4503599627370495
  %reass.sub = sub nsw i64 %i.cv, %i.cu
  %i.cw = add nsw i64 %reass.sub, 4602678819172646912
  %i.cx = bitcast i64 %i.cw to double
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.af
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !41 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base3zg_E, i64 1032), i64 %i.z
  %i.db = load double, ptr %i.da, align 8, !tbaa !41
  %i.dc = fsub double %i.db, %i.cz
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.dc, double %i.cz)
  %i.de = fmul double %i.ac, -5.000000e-01
  %i.df = fmul double %i.ac, %i.de
  %i.dg = tail call double @exp(double noundef %i.df) #19
  %i.dh = fcmp olt double %i.dd, %i.dg
  br i1 %i.dh, label %select.unfold, label %bb.b

select.unfold:                                    ; preds = %bb.d, %bb.b, %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit
  %.2.ph = phi double [ %i.cf, %_ZN4absl12lts_2026052615random_internal26gaussian_distribution_base15zignor_fallbackINS0_14InsecureBitGenEEEdRT_b.exit ], [ %i.ac, %bb.b ], [ %i.ac, %bb.d ]
  ret double %.2.ph
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139RandomDistributionsTest_LogUniform_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_139RandomDistributionsTest_LogUniform_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_139RandomDistributionsTest_LogUniform_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #20
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_139RandomDistributionsTest_LogUniform_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_139RandomDistributionsTest_LogUniform_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::log_uniform_int_distribution", align 8 ; 9 uses
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %2 = alloca %"class.absl::lts_20260526::InsecureBitGen", align 16 ; 6 uses
  %3 = alloca %"struct.absl::lts_20260526::random_internal::DistributionMoments", align 8 ; 6 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(3200000) ptr @_Znwm(i64 noundef 3200000) #21 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3200000) %i.b, i8 0, i64 3200000, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %_ZN4absl12lts_2026052614InsecureBitGenC2Ev.exit unwind label %bb.c

_ZN4absl12lts_2026052614InsecureBitGenC2Ev.exit:  ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 16, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw i64 %i.f, 32
  %i.h = zext i32 %i.c to i128
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !11
  %i.k = zext i32 %i.j to i64
  %i.l = or disjoint i64 %i.g, %i.k
  %i.m = zext i64 %i.l to i128
  %i.n = shl nuw i128 %i.h, 96
  %i.o = shl nuw nsw i128 %i.m, 32                ; 2 uses
  %i.p = trunc i128 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !11
  %i.s = zext i32 %i.r to i64
  %i.t = or disjoint i64 %i.p, %i.s
  %.masked.i.i.i.i.i.i = and i128 %i.o, 79228162495817593519834398720
  %i.u = or disjoint i128 %.masked.i.i.i.i.i.i, %i.n
  %i.v = zext i64 %i.t to i128
  %i.w = add nuw nsw i128 %i.v, 1442695040888963407 ; 2 uses
  %i.x = add i128 %i.u, %i.w
  %i.y = lshr i128 %i.x, 64
  %.tr.i.i.i.i.i.i.i = trunc nuw i128 %i.y to i64
  %.narrow.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i, 6364136223846793005
  %i.z = zext i64 %.narrow.i.i.i.i.i.i.i to i128
  %i.aa = shl nuw i128 %i.z, 64
  %i.ab = and i128 %i.w, 18446744073709551615
  %i.ac = or disjoint i128 %i.aa, %i.ab
  %i.ad = mul i128 %i.ac, 47026247687942121848144207491837523525
  %i.ae = add i128 %i.ad, 1442695040888963407     ; 2 uses
  %i.af = trunc i128 %i.ae to i64
  %i.ag = lshr i128 %i.ae, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.ag to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store i64 %i.af, ptr %2, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.narrow.i.i.i.i.i.i.i.i, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.d

bb.b:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  invoke void @_ZN4absl12lts_2026052615random_internal26ComputeDistributionMomentsENS0_4SpanIKdEE(ptr dead_on_unwind nonnull writable sret(%"struct.absl::lts_20260526::random_internal::DistributionMoments") align 8 %3, ptr nonnull %i.b, i64 400000)
          to label %bb.g unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit26

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614InsecureBitGenC2Ev.exit, %bb.e
  %indvars.iv = phi i64 [ 0, %_ZN4absl12lts_2026052614InsecureBitGenC2Ev.exit ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i64 0, ptr %1, align 8, !tbaa !233
  store i64 1023, ptr %i.ai, align 8, !tbaa !235
  store i64 2, ptr %i.aj, align 8, !tbaa !236
  store i64 1023, ptr %i.ak, align 8, !tbaa !237
  store i32 10, ptr %i.al, align 8, !tbaa !238
  %i.an = invoke noundef i64 @_ZN4absl12lts_2026052628log_uniform_int_distributionIlE8GenerateINS0_14InsecureBitGenEEEmRT_RKNS2_10param_typeE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.ao = sitofp i64 %i.an to double
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double %i.ao, ptr %i.ap, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 400000
  br i1 %exitcond.not, label %bb.b, label %bb.d, !llvm.loop !239

bb.f:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit26

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !166
  invoke void @_ZN7testing8internal20DoubleNearPredFormatEPKcS2_S2_ddd(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.118, double noundef f0x406161745D1745D1, double noundef %i.as, double noundef 2.000000e+00)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.at = load i8, ptr %4, align 8, !tbaa !14, !range !25, !noundef !26
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.v, label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.j:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %5, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052615random_internallsERSoRKNS1_19DistributionMomentsE(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN7testing7MessagelsIN4absl12lts_2026052615random_internal19DistributionMomentsEEERS0_RKT_.exit unwind label %bb.q ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_2026052615random_internal19DistributionMomentsEEERS0_RKT_.exit: ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZN7testing7MessagelsIN4absl12lts_2026052615random_internal19DistributionMomentsEEERS0_RKT_.exit
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.m, %_ZN7testing7MessagelsIN4absl12lts_2026052615random_internal19DistributionMomentsEEERS0_RKT_.exit
  %i.bd = phi ptr [ %i.bc, %bb.m ], [ @.str.50, %_ZN7testing7MessagelsIN4absl12lts_2026052615random_internal19DistributionMomentsEEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 513, ptr noundef %i.bd)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.o unwind label %bb.s

end_hunk_0
