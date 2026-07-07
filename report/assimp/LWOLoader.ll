inline.NumInlined: 3061
inline.NumDeleted: 1386
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6Assimp3LWO7SurfaceD2Ev:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %.09.i.i73, i64 136
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.09.i.i73, i64 152 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74: ; preds = %.lr.ph.i.i72
  %i.ee = load i64, ptr %i.ec, align 8
  %i.ef = add i64 %i.ee, 1
  tail call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75: ; preds = %.lr.ph.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74
  %i.eg = getelementptr inbounds nuw i8, ptr %.09.i.i73, i64 64
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.09.i.i73, i64 80 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75
  %i.ek = load i64, ptr %i.ei, align 8
  %i.el = add i64 %i.ek, 1
  tail call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i76
  %i.em = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.09.i.i73, i64 32 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i77
  %i.ep = load i64, ptr %i.en, align 8
  %i.eq = add i64 %i.ep, 1
  tail call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #26
  br label %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i79

_ZN6Assimp3LWO7TextureD2Ev.exit.i.i79:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i78
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i73, i64 noundef 168) #26
  %.not.i.i80 = icmp eq ptr %i.dy, %i.dw
  br i1 %.not.i.i80, label %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit84, label %.lr.ph.i.i72, !llvm.loop !37

_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit84: ; preds = %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i79, %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit70
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not8.i.i85 = icmp eq ptr %i.es, %i.er
  br i1 %.not8.i.i85, label %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO6ShaderESaIS3_EED2Ev.exit, label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit84, %_ZN6Assimp3LWO6ShaderD2Ev.exit.i.i
  %.09.i.i87 = phi ptr [ %i.et, %_ZN6Assimp3LWO6ShaderD2Ev.exit.i.i ], [ %i.es, %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit84 ] ; 6 uses
  %i.et = load ptr, ptr %.09.i.i87, align 8       ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.09.i.i87, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %.09.i.i87, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.09.i.i87, i64 64 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88: ; preds = %.lr.ph.i.i86
  %i.ez = load i64, ptr %i.ex, align 8
  %i.fa = add i64 %i.ez, 1
  tail call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i89: ; preds = %.lr.ph.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i88
  %i.fb = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.09.i.i87, i64 32 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZN6Assimp3LWO6ShaderD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i89
  %i.fe = load i64, ptr %i.fc, align 8
  %i.ff = add i64 %i.fe, 1
  tail call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #26
  br label %_ZN6Assimp3LWO6ShaderD2Ev.exit.i.i

_ZN6Assimp3LWO6ShaderD2Ev.exit.i.i:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i90
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i87, i64 noundef 88) #26
  %.not.i.i91 = icmp eq ptr %i.et, %i.er
  br i1 %.not.i.i91, label %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO6ShaderESaIS3_EED2Ev.exit, label %.lr.ph.i.i86, !llvm.loop !38

_ZNSt7__cxx1110_List_baseIN6Assimp3LWO6ShaderESaIS3_EED2Ev.exit: ; preds = %_ZN6Assimp3LWO6ShaderD2Ev.exit.i.i, %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit84
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO6ShaderESaIS3_EED2Ev.exit
  %i.fk = load i64, ptr %i.fi, align 8
  %i.fl = add i64 %i.fk, 1
  tail call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO6ShaderESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.fm = load ptr, ptr %0, align 8               ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fp = load i64, ptr %i.fn, align 8
  %i.fq = add i64 %i.fp, 1
  tail call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare void @_ZN6Assimp11LWOImporter14FindUVChannelsERNS_3LWO7SurfaceERSt6vectorIjSaIjEERNS1_5LayerEPj(ptr noundef nonnull align 8 dereferenceable(233), ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(341), ptr noundef) local_unnamed_addr #4

declare void @_ZN6Assimp11LWOImporter14FindVCChannelsERKNS_3LWO7SurfaceERSt6vectorIjSaIjEERKNS1_5LayerEPj(ptr noundef nonnull align 8 dereferenceable(233), ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(341), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter14ComputeNormalsEP6aiMeshRKSt6vectorIjSaIjEERKNS_3LWO7SurfaceE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0, ptr noundef initializes((24, 32)) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(328) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::SGSpatialSort", align 8 ; 12 uses
  %5 = alloca %"class.std::vector.29", align 8    ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 12                 ; 4 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #28 ; 5 uses
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.d, -12                    ; 2 uses
  %i.h = urem i64 %i.g, 12
  %i.i = sub nuw nsw i64 %i.g, %i.h
  %i.j = add nsw i64 %i.i, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.e, i8 0, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.m = load float, ptr %i.l, align 8            ; 3 uses
  %i.n = fcmp une float %i.m, 0.000000e+00
  br i1 %i.n, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

.thread:                                          ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  store ptr %i.e, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 3 uses
  %i.q = load float, ptr %i.p, align 8            ; 3 uses
  %i.r = fcmp une float %i.q, 0.000000e+00
  br i1 %i.r, label %.thread248, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.b
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #28 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.d, i1 false)
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %i.c
  %i.u = ptrtoint ptr %i.t to i64
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

.thread248:                                       ; preds = %.thread
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %.thread248, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i, %.thread, %bb.b
  %i.v = phi float [ %i.q, %.thread ], [ %i.m, %bb.b ], [ %i.m, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.q, %.thread248 ]
  %i.w = phi ptr [ %i.p, %.thread ], [ %i.l, %bb.b ], [ %i.l, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.p, %.thread248 ]
  %i.x = phi ptr [ %i.o, %.thread ], [ %i.k, %bb.b ], [ %i.k, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.o, %.thread248 ] ; 3 uses
  %.sroa.18.0 = phi i64 [ 0, %.thread ], [ 0, %bb.b ], [ %i.u, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ 0, %.thread248 ] ; 2 uses
  %.sroa.0236.0 = phi ptr [ null, %.thread ], [ null, %bb.b ], [ %i.s, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %.thread248 ] ; 9 uses
  %.0 = phi ptr [ %i.e, %.thread ], [ %i.e, %bb.b ], [ %i.s, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ null, %.thread248 ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx ; 7 uses
  %.not278 = icmp eq i32 %i.ab, 0
  br i1 %.not278, label %._crit_edge, label %.lr.ph280

.lr.ph280:                                        ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph280, %.loopexit276
  %.0118279 = phi ptr [ %i.z, %.lr.ph280 ], [ %i.bp, %.loopexit276 ] ; 4 uses
  %i.af = load i32, ptr %.0118279, align 8        ; 2 uses
  %i.ag = icmp ult i32 %i.af, 3
  br i1 %i.ag, label %.loopexit276, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0118279, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.ap ; 3 uses
  %i.ar = add i32 %i.af, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = load float, ptr %i.aq, align 4
  %i.aw = load float, ptr %i.am, align 4          ; 2 uses
  %6 = fsub float %i.av, %i.aw                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %7 = load float, ptr %i.ax, align 4
  %8 = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ay = load float, ptr %8, align 4             ; 2 uses
  %9 = fsub float %7, %i.ay                       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %10 = load float, ptr %i.az, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %12 = load float, ptr %11, align 4              ; 2 uses
  %13 = fsub float %10, %12                       ; 2 uses
  %14 = zext i32 %i.au to i64
  %15 = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %14 ; 3 uses
  %16 = load float, ptr %15, align 4
  %17 = fsub float %16, %i.aw                     ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %19 = load float, ptr %18, align 4
  %20 = fsub float %19, %i.ay                     ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load float, ptr %21, align 4
  %23 = fsub float %22, %12                       ; 2 uses
  %24 = fneg float %20
  %25 = fmul float %13, %24
  %26 = tail call float @llvm.fmuladd.f32(float %9, float %23, float %25) ; 4 uses
  %i.ba = fneg float %23
  %27 = fmul float %6, %i.ba
  %28 = tail call float @llvm.fmuladd.f32(float %13, float %17, float %27) ; 4 uses
  %29 = fneg float %17
  %30 = fmul float %9, %29
  %i.bb = tail call float @llvm.fmuladd.f32(float %6, float %20, float %30) ; 4 uses
  %.sroa.0.0.vec.insert.i152 = insertelement <2 x float> poison, float %26, i64 0
  %.sroa.0.4.vec.insert.i153 = insertelement <2 x float> %.sroa.0.0.vec.insert.i152, float %28, i64 1
  %31 = fmul float %28, %28
  %i.bc = tail call float @llvm.fmuladd.f32(float %26, float %26, float %31)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bc) ; 2 uses
  %i.be = fcmp oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %.lr.ph.preheader, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bd)
  %i.bf = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %32 = fmul float %26, %i.bf
  %.sroa.0230.0.vec.insert = insertelement <2 x float> poison, float %32, i64 0
  %33 = fmul float %28, %i.bf
  %.sroa.0230.4.vec.insert = insertelement <2 x float> %.sroa.0230.0.vec.insert, float %33, i64 1
  %i.bg = fmul float %i.bb, %i.bf
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0230.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i153, %bb.d ], [ %.sroa.0230.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.9233.0 = phi float [ %i.bb, %bb.d ], [ %i.bg, %_ZN10aiVector3tIfEdVEf.exit.i ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bh = load ptr, ptr %i.ai, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %.0, i64 %i.bk ; 2 uses
  store <2 x float> %.sroa.0230.0, ptr %i.bl, align 4
  %.sroa.5235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store float %.sroa.9233.0, ptr %.sroa.5235.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %.0118279, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph, label %.loopexit276, !llvm.loop !39

.loopexit276:                                     ; preds = %.lr.ph, %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %.0118279, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bp, %i.ad
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !40

._crit_edge:                                      ; preds = %.loopexit276, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.bq = fcmp une float %i.v, 0.000000e+00
  br i1 %i.bq, label %bb.e, label %bb.ae

bb.e:                                             ; preds = %._crit_edge
  %i.br = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef %1)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN6Assimp13SGSpatialSortC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not129284 = icmp eq ptr %i.bs, %i.ad
  br i1 %.not129284, label %._crit_edge287, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.bt = load ptr, ptr %2, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge283
  %.1119286 = phi ptr [ %i.bs, %.preheader.lr.ph ], [ %i.bx, %._crit_edge283 ] ; 4 uses
  %.sroa.0221.0285 = phi ptr [ %i.bt, %.preheader.lr.ph ], [ %i.by, %._crit_edge283 ] ; 2 uses
  %i.bv = load i32, ptr %.1119286, align 8
  %.not333 = icmp eq i32 %i.bv, 0
  br i1 %.not333, label %._crit_edge283, label %.lr.ph282

.lr.ph282:                                        ; preds = %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %.1119286, i64 8
  br label %bb.j

._crit_edge283:                                   ; preds = %bb.k, %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %.1119286, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0221.0285, i64 4
  %.not129 = icmp eq ptr %i.bx, %i.ad
  br i1 %.not129, label %._crit_edge287, label %.preheader, !llvm.loop !41

bb.h:                                             ; preds = %bb.e
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.i:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6Assimp13SGSpatialSortD2Ev.exit178

bb.j:                                             ; preds = %.lr.ph282, %bb.k
  %indvars.iv339 = phi i64 [ 0, %.lr.ph282 ], [ %indvars.iv.next340, %bb.k ] ; 2 uses
  %i.cb = load ptr, ptr %i.bw, align 8
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv339
  %i.cd = load i32, ptr %i.cc, align 4            ; 2 uses
  %i.ce = load ptr, ptr %i.bu, align 8
  %i.cf = zext i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %.sroa.0221.0285, align 4
  invoke void @_ZN6Assimp13SGSpatialSort3AddERK10aiVector3tIfEjj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i32 noundef %i.cd, i32 noundef %i.ch)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %i.ci = load i32, ptr %.1119286, align 8
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next340, %i.cj
  br i1 %i.ck, label %bb.j, label %._crit_edge283, !llvm.loop !42

bb.l:                                             ; preds = %bb.j
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

._crit_edge287:                                   ; preds = %._crit_edge283, %bb.g
  invoke void @_ZN6Assimp13SGSpatialSort7PrepareEv(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i unwind label %bb.q

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %._crit_edge287
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.cn = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc156 unwind label %bb.r  ; 3 uses

.noexc156:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr %i.cn, ptr %5, align 8
  store ptr %i.cn, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  store ptr %i.cp, ptr %i.cm, align 8
  %i.cq = load float, ptr %i.w, align 8           ; 2 uses
  %i.cr = fcmp olt float %i.cq, 3.000000e+00
  br i1 %i.cr, label %bb.m, label %bb.u

bb.m:                                             ; preds = %.noexc156
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ct = load i8, ptr %i.cs, align 8, !range !7, !noundef !8
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = call noundef float @cosf(float noundef %i.cq) #25
  %i.cw = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not130303 = icmp eq ptr %i.cw, %i.ad
  br i1 %.not130303, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit173, label %.lr.ph307

.lr.ph307:                                        ; preds = %bb.n
  %i.cx = load ptr, ptr %2, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph307, %._crit_edge302
  %.2120305 = phi ptr [ %i.cw, %.lr.ph307 ], [ %i.fc, %._crit_edge302 ] ; 3 uses
  %.sroa.0221.1304 = phi ptr [ %i.cx, %.lr.ph307 ], [ %i.fd, %._crit_edge302 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.2120305, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %i.db = load i32, ptr %.2120305, align 8        ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %.idx334 = shl nuw nsw i64 %i.dc, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx334
  %.not131298 = icmp eq i32 %i.db, 0
  br i1 %.not131298, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.o, %_ZN10aiVector3tIfE9NormalizeEv.exit159
  %.0124299 = phi ptr [ %i.fb, %_ZN10aiVector3tIfE9NormalizeEv.exit159 ], [ %i.da, %bb.o ] ; 2 uses
  %i.de = load i32, ptr %.0124299, align 4
  %i.df = load ptr, ptr %i.cy, align 8
  %i.dg = zext i32 %i.de to i64                   ; 3 uses
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %.sroa.0221.1304, align 4
  invoke void @_ZNK6Assimp13SGSpatialSort13FindPositionsERK10aiVector3tIfEjfRSt6vectorIjSaIjEEb(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.dh, i32 noundef %i.di, float noundef %i.br, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %.lr.ph301
  %i.dj = load ptr, ptr %5, align 8               ; 2 uses
  %i.dk = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not272288 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not272288, label %._crit_edge295, label %.lr.ph294

.lr.ph294:                                        ; preds = %bb.p
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0236.0, i64 %i.dg ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dq = load float, ptr %i.dp, align 4
  br label %bb.t

._crit_edge295:                                   ; preds = %bb.t, %bb.p
  %.sroa.14219.0.lcssa = phi float [ 0.000000e+00, %bb.p ], [ %.sroa.14219.1, %bb.t ] ; 4 uses
  %i.dr = phi <2 x float> [ zeroinitializer, %bb.p ], [ %i.ew, %bb.t ] ; 5 uses
  %foldExtExtBinop.a = fmul <2 x float> %i.dr, %i.dr
  %i.ds = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.dt = extractelement <2 x float> %i.dr, i64 0 ; 2 uses
  %i.du = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.ds)
  %i.dv = call noundef float @llvm.fmuladd.f32(float %.sroa.14219.0.lcssa, float %.sroa.14219.0.lcssa, float %i.du) ; 2 uses
  %i.dw = fcmp oeq float %i.dv, 0.000000e+00
  br i1 %i.dw, label %_ZN10aiVector3tIfE9NormalizeEv.exit159, label %_ZN10aiVector3tIfEdVEf.exit.i157

_ZN10aiVector3tIfEdVEf.exit.i157:                 ; preds = %._crit_edge295
  %sqrt.i.i158 = call noundef float @llvm.sqrt.f32(float %i.dv)
  %i.dx = fdiv float 1.000000e+00, %sqrt.i.i158   ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dr, %i.dz
  %i.eb = fmul float %.sroa.14219.0.lcssa, %i.dx
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit159

bb.q:                                             ; preds = %._crit_edge287
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit173
  %i.ed = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  store ptr %i.as, ptr %i.aq, align 8, !alias.scope !309, !noalias !312
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !312, !noalias !309 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 24 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29

bb.d:                                             ; preds = %.lr.ph.i.i.i26
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !312, !noalias !309 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !314
  br label %_ZSt19__relocate_object_aIN6Assimp3LWO4ClipES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i26
  store ptr %i.at, ptr %i.aq, align 8, !alias.scope !309, !noalias !312
  %i.ba = load i64, ptr %i.au, align 8, !alias.scope !312, !noalias !309
  store i64 %i.ba, ptr %i.as, align 8, !alias.scope !309, !noalias !312
  %.phi.trans.insert.i.i.i.i30 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 16
  %.pre.i.i.i.i31 = load i64, ptr %.phi.trans.insert.i.i.i.i30, align 8, !alias.scope !312, !noalias !309
  br label %_ZSt19__relocate_object_aIN6Assimp3LWO4ClipES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32

_ZSt19__relocate_object_aIN6Assimp3LWO4ClipES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29, %bb.d
  %i.bb = phi i64 [ %i.ax, %bb.d ], [ %.pre.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i29 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 16
  store i64 %i.bb, ptr %i.bd, align 8, !alias.scope !309, !noalias !312
  store ptr %i.au, ptr %i.ar, align 8, !alias.scope !312, !noalias !309
  store i64 0, ptr %i.bc, align 8, !alias.scope !312, !noalias !309
  store i8 0, ptr %i.au, align 8, !alias.scope !312, !noalias !309
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.be, ptr noundef nonnull align 8 dereferenceable(9) %i.bf, i64 9, i1 false), !alias.scope !314
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 56 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.bg, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, label %.lr.ph.i.i.i26, !llvm.loop !308

_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35: ; preds = %_ZSt19__relocate_object_aIN6Assimp3LWO4ClipES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32, %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.ao, %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bh, %_ZSt19__relocate_object_aIN6Assimp3LWO4ClipES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i32 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN6Assimp3LWO4ClipESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #26
  br label %_ZNSt12_Vector_baseIN6Assimp3LWO4ClipESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3LWO4ClipESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3LWO4ClipESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit35, %bb.e
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #27
  unreachable

_ZNKSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  store <4 x i32> <i32 0, i32 16, i32 1, i32 1>, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 40, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i, i64 16, i1 false), !alias.scope !320
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !alias.scope !318, !noalias !315
  store <2 x ptr> %i.u, ptr %i.s, align 8, !alias.scope !315, !noalias !318
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !318, !noalias !315
  store ptr %i.x, ptr %i.v, align 8, !alias.scope !315, !noalias !318
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !alias.scope !318, !noalias !315
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !alias.scope !320
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !321

_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ab, %.lr.ph.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i16
  %.012.i.i.i17 = phi ptr [ %i.am, %.lr.ph.i.i.i16 ], [ %i.ac, %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i18 = phi ptr [ %i.al, %.lr.ph.i.i.i16 ], [ %1, %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.012.i.i.i17, ptr noundef nonnull align 8 dereferenceable(56) %.0911.i.i.i18, i64 16, i1 false), !alias.scope !327
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !325, !noalias !322
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !alias.scope !322, !noalias !325
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !325, !noalias !322
  store ptr %i.ai, ptr %i.ag, align 8, !alias.scope !322, !noalias !325
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false), !alias.scope !325, !noalias !322
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !alias.scope !327
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 56 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, label %.lr.ph.i.i.i16, !llvm.loop !321

_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21: ; preds = %.lr.ph.i.i.i16, %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i20 = phi ptr [ %i.ac, %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.am, %.lr.ph.i.i.i16 ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i22 = icmp eq ptr %i.c, null
  br i1 %.not.i22, label %_ZNSt12_Vector_baseIN6Assimp3LWO8EnvelopeESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aq) #26
  br label %_ZNSt12_Vector_baseIN6Assimp3LWO8EnvelopeESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3LWO8EnvelopeESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3LWO8EnvelopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i20, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ar, ptr %i.an, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bswap.v2i32(<2 x i32>) #21

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{null}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !4}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !4}
!16 = distinct !{!16, !4}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4}
!19 = distinct !{!19, !4}
!20 = distinct !{!20, !4}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{null, null}
!24 = distinct !{!24, !4}
!25 = !{ptr @_ZN6Assimp3LWO9VMapEntryD2Ev}
!26 = distinct !{ptr @_ZNSt6vectorIN6Assimp3LWO9UVChannelESaIS2_EED2Ev, null, null, null}
!27 = distinct !{!27, !4}
!28 = distinct !{ptr @_ZNSt6vectorIN6Assimp3LWO13VColorChannelESaIS2_EED2Ev, null, null, null}
!29 = distinct !{!29, !4}
!30 = distinct !{ptr @_ZNSt6vectorIN6Assimp3LWO13WeightChannelESaIS2_EED2Ev, null, null, null}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !4}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !4}
!44 = distinct !{!44, !4}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !4}
!47 = distinct !{!47, !4}
!48 = distinct !{!48, !4}
!49 = distinct !{!49, !4}
!50 = distinct !{!50, !4}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!53 = distinct !{!53, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!54 = distinct !{!54, !4}
!55 = distinct !{!55, !4}
!56 = distinct !{!56, !4}
!57 = distinct !{!57, !4}
!58 = distinct !{!58, !4}
!59 = distinct !{!59, !4}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!62 = distinct !{!62, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!65 = distinct !{!65, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!66 = distinct !{!66, !4}
!67 = !{!68, !70}
!68 = distinct !{!68, !69, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!70 = distinct !{!70, !69, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!71 = distinct !{!71, !4}
!72 = distinct !{!72, !4}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !4}
!75 = distinct !{!75, !4}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !4}
!78 = distinct !{!78, !4}
!79 = distinct !{!79, !4}
!80 = distinct !{!80, !4}
!81 = distinct !{!81, !4}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!84 = distinct !{!84, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_"}
!85 = distinct !{!85, !84, !"_ZSt19__relocate_object_aI10aiVector3tIfES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!86 = distinct !{!86, !4}
!87 = distinct !{!87, !4}
!88 = distinct !{!88, !4}
!89 = distinct !{!89, !4}
!90 = !{!91}
!91 = distinct !{!91, !92}
!92 = distinct !{!92, !"LVerDomain"}
!93 = !{!94}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !4, !96, !97}
!96 = !{!"llvm.loop.isvectorized", i32 1}
!97 = !{!"llvm.loop.unroll.runtime.disable"}
!98 = !{!99}
!99 = distinct !{!99, !92}
!100 = !{!94, !91}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !4, !96}
!103 = distinct !{!103, !4}
!104 = distinct !{!104, !4}
!105 = distinct !{!105, !4}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!108 = distinct !{!108, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!111 = distinct !{!111, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!112 = !{!110, !107}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!116 = distinct !{!116, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!119 = distinct !{!119, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!120 = !{!118, !115}
!121 = distinct !{!121, !4}
!122 = !{!123, !125}
!123 = distinct !{!123, !124, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!124 = distinct !{!124, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_"}
!125 = distinct !{!125, !124, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!126 = distinct !{!126, !4}
!127 = distinct !{!127, !4}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!130 = distinct !{!130, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!133 = distinct !{!133, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!136 = distinct !{!136, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!137 = !{!135, !132, !129}
!138 = distinct !{null, null, null}
!139 = distinct !{null, null, null}
!140 = distinct !{null, null, null}
!141 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!142 = distinct !{!142, !4, !96, !97}
!143 = distinct !{!143, !4, !97, !96}
!144 = distinct !{!144, !4, !96, !97}
!145 = distinct !{!145, !4, !97, !96}
!146 = distinct !{!146, !4, !96, !97}
!147 = distinct !{!147, !4, !97, !96}
!148 = distinct !{!148, !4, !96, !97}
!149 = distinct !{!149, !4, !97, !96}
!150 = distinct !{!150, !4}
!151 = distinct !{!151, !4}
!152 = distinct !{!152, !4}
!153 = distinct !{!153, !4}
!154 = distinct !{!154, !4}
!155 = distinct !{!155, !4}
!156 = distinct !{!156, !4}
!157 = distinct !{!157, !4, !96, !97}
!158 = distinct !{!158, !4, !97, !96}
!159 = distinct !{!159, !4, !96, !97}
!160 = distinct !{!160, !4, !97, !96}
!161 = distinct !{!161, !4, !96, !97}
!162 = distinct !{!162, !4, !97, !96}
end_hunk_1
