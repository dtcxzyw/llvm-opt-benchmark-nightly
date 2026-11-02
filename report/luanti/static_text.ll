Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/static_text?download=true
inline.NumInlined: 656
inline.NumDeleted: 300
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gui10StaticText4drawEv:bb.a
  br i1 %i.fe, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  %i.ff = load i64, ptr %i.dx, align 8, !tbaa !73
  %i.fg = shl i64 %i.ff, 2
  %i.fh = add i64 %i.fg, 4
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i, %_ZN4core6stringIwED2Ev.exit44
  %common.resume.op = phi { ptr, i32 } [ %i.fx, %_ZN4core6stringIwED2Ev.exit44 ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i ], [ %i.fc, %bb.y ]
  resume { ptr, i32 } %common.resume.op

_ZN4core6stringIwEC2IwEEPKT_.exit:                ; preds = %bb.x
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.047.062, i64 60
  %.sroa.0.0.copyload = load i32, ptr %i.fi, align 4, !tbaa !84
  %i.fj = load i32, ptr %i.cv, align 4, !tbaa !61
  %i.fk = icmp eq i32 %i.fj, 2
  %i.fl = load i32, ptr %i.cf, align 8, !tbaa !62
  %i.fm = icmp eq i32 %i.fl, 2
  %i.fn = load i8, ptr %i.dz, align 1, !tbaa !66, !range !81, !noundef !82
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = select i1 %i.fo, ptr %i.ea, ptr null
  %i.fq = load ptr, ptr %.1.i56, align 8, !tbaa !15
  %i.fr = load ptr, ptr %i.fq, align 8
  invoke void %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %.1.i56, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 %.sroa.0.0.copyload, i1 noundef zeroext %i.fk, i1 noundef zeroext %i.fm, ptr noundef %i.fp)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZN4core6stringIwEC2IwEEPKT_.exit
  %i.fs = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.dx
  br i1 %i.ft, label %_ZN4core6stringIwED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.z
  %i.fu = load i64, ptr %i.dx, align 8, !tbaa !73
  %i.fv = shl i64 %i.fu, 2
  %i.fw = add i64 %i.fv, 4
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #24
  br label %_ZN4core6stringIwED2Ev.exit

_ZN4core6stringIwED2Ev.exit:                      ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4core6stringIwEC2IwEEPKT_.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  %i.fy = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.dx
  br i1 %i.fz, label %_ZN4core6stringIwED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i41

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i41: ; preds = %bb.aa
  %i.ga = load i64, ptr %i.dx, align 8, !tbaa !73
  %i.gb = shl i64 %i.ga, 2
  %i.gc = add i64 %i.gb, 4
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #24
  br label %_ZN4core6stringIwED2Ev.exit44

_ZN4core6stringIwED2Ev.exit44:                    ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %common.resume

bb.ab:                                            ; preds = %_ZN4core6stringIwED2Ev.exit, %bb.w
  %i.gd = load i32, ptr %i.eb, align 4, !tbaa !91
  %i.ge = add nsw i32 %i.gd, %i.bw
  store i32 %i.ge, ptr %i.eb, align 4, !tbaa !91
  %i.gf = load i32, ptr %i.ec, align 4, !tbaa !90
  %i.gg = add nsw i32 %i.gf, %i.bw
  store i32 %i.gg, ptr %i.ec, align 4, !tbaa !90
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.047.062, i64 80 ; 2 uses
  %.not57 = icmp eq ptr %i.gh, %i.du
  br i1 %.not57, label %._crit_edge, label %bb.t

_ZNK3gui10StaticText13getActiveFontEv.exit.thread: ; preds = %bb.j, %._crit_edge, %_ZNK3gui10StaticText13getActiveFontEv.exit.thread53, %_ZNK3gui10StaticText13getActiveFontEv.exit
  %i.gi = load ptr, ptr %0, align 8, !tbaa !15
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 104
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef zeroext i1 %i.gk(ptr noundef nonnull align 8 dereferenceable(308) %0), !inline_history !132
  br i1 %i.gl, label %bb.ac, label %_ZN3gui11IGUIElement4drawEv.exit

bb.ac:                                            ; preds = %_ZNK3gui10StaticText13getActiveFontEv.exit.thread
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.04.07.i = load ptr, ptr %i.gm, align 8, !tbaa !98 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.04.07.i, %i.gm
  br i1 %.not8.i, label %_ZN3gui11IGUIElement4drawEv.exit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.ac, %.lr.ph.i45
  %.sroa.04.09.i = phi ptr [ %.sroa.04.0.i, %.lr.ph.i45 ], [ %.sroa.04.07.i, %bb.ac ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !99 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !15
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 80
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(308) %i.go), !inline_history !132
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.09.i, align 8, !tbaa !98 ; 2 uses
  %.not.i46 = icmp eq ptr %.sroa.04.0.i, %i.gm
  br i1 %.not.i46, label %_ZN3gui11IGUIElement4drawEv.exit, label %.lr.ph.i45

_ZN3gui11IGUIElement4drawEv.exit:                 ; preds = %.lr.ph.i45, %_ZNK3gui10StaticText13getActiveFontEv.exit.thread, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN3gui11IGUIElement4drawEv.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local i32 @_ZNK3gui10StaticText18getBackgroundColorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.h = load i8, ptr %i.g, align 8, !tbaa !86, !range !81, !noundef !82
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp eq ptr %i.f, null
  %or.cond.not = or i1 %i.j, %i.i
  br i1 %or.cond.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8, !tbaa !84
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i32 [ %i.o, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.b ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK3gui10StaticText13getActiveFontEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(464) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 3 uses
  %.not6 = icmp eq ptr %i.h, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3gui10StaticText10updateTextEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.EnrichedString, align 8      ; 82 uses
  %2 = alloca %class.EnrichedString, align 8      ; 41 uses
  %3 = alloca %class.EnrichedString, align 8      ; 32 uses
  %4 = alloca %"class.core::string", align 8      ; 10 uses
  %5 = alloca %class.EnrichedString, align 8      ; 11 uses
  %6 = alloca %class.EnrichedString, align 8      ; 12 uses
  %7 = alloca %class.EnrichedString, align 8      ; 14 uses
  %8 = alloca %class.EnrichedString, align 8      ; 14 uses
  %9 = alloca %class.EnrichedString, align 8      ; 14 uses
  %10 = alloca %class.EnrichedString, align 8     ; 14 uses
  %11 = alloca %class.EnrichedString, align 8     ; 10 uses
  %12 = alloca %class.EnrichedString, align 8     ; 14 uses
  %13 = alloca %class.EnrichedString, align 8     ; 14 uses
  %14 = alloca %class.EnrichedString, align 8     ; 14 uses
  %15 = alloca %class.EnrichedString, align 8     ; 10 uses
  %16 = alloca %class.EnrichedString, align 8     ; 19 uses
  %17 = alloca %class.EnrichedString, align 8     ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 26 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70   ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %bb.d, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyI14EnrichedStringEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.s, %_ZSt8_DestroyI14EnrichedStringEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.m = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !68 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt8_DestroyI14EnrichedStringEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !73
  %i.q = shl i64 %i.p, 2
  %i.r = add i64 %i.q, 4
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #24
  br label %_ZSt8_DestroyI14EnrichedStringEvPT_.exit.i.i.i.i

_ZSt8_DestroyI14EnrichedStringEvPT_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5video6SColorESaIS1_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i, !llvm.loop !0

bb.c:                                             ; preds = %_ZSt8_DestroyI14EnrichedStringEvPT_.exit.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %18 = phi ptr [ %i.e, %bb.a ], [ %i.c, %bb.c ]  ; 3 uses
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %20 = load i8, ptr %19, align 8, !tbaa !86, !range !81, !noundef !82
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 318
  store i8 %20, ptr %i.t, align 2, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 317
  %i.v = load i8, ptr %i.u, align 1, !tbaa !64, !range !81, !noundef !82
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75
  %.not.i = icmp eq ptr %18, %i.y
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN14EnrichedStringC2ERKS_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(80) %i.a)
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt6vectorI14EnrichedStringSaIS0_EE9push_backERKS0_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_ZNSt6vectorI14EnrichedStringSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %18, ptr noundef nonnull align 8 dereferenceable(80) %i.a)
  br label %_ZNSt6vectorI14EnrichedStringSaIS0_EE9push_backERKS0_.exit

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !78 ; 2 uses
  %.not.i173 = icmp eq ptr %i.ai, null
  br i1 %.not.i173, label %bb.i, label %_ZNK3gui10StaticText13getActiveFontEv.exit.thread417

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj), !inline_history !88 ; 3 uses
  %.not6.i = icmp eq ptr %i.an, null
  br i1 %.not6.i, label %_ZNSt6vectorI14EnrichedStringSaIS0_EE9push_backERKS0_.exit, label %_ZNK3gui10StaticText13getActiveFontEv.exit

_ZNK3gui10StaticText13getActiveFontEv.exit:       ; preds = %bb.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef 0), !inline_history !88 ; 2 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %_ZNSt6vectorI14EnrichedStringSaIS0_EE9push_backERKS0_.exit, label %_ZNK3gui10StaticText13getActiveFontEv.exit.thread417

_ZNK3gui10StaticText13getActiveFontEv.exit.thread417: ; preds = %bb.h, %_ZNK3gui10StaticText13getActiveFontEv.exit
  %.1.i420 = phi ptr [ %i.ar, %_ZNK3gui10StaticText13getActiveFontEv.exit ], [ %i.ai, %bb.h ] ; 11 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %.1.i420, ptr %i.as, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN14EnrichedStringC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZN14EnrichedStringC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZNK3gui10StaticText13getActiveFontEv.exit.thread417
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN14EnrichedStringC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.au = load i64, ptr %i.at, align 8, !tbaa !95 ; 4 uses
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !92
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !87
  %i.ba = sub nsw i32 %i.ay, %i.az                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !63, !range !81, !noundef !82
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, i32 noundef 8)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = sub nsw i32 %i.ba, %i.bi
  br label %bb.p

bb.n:                                             ; preds = %_ZNK3gui10StaticText13getActiveFontEv.exit.thread417
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.o:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.p:                                             ; preds = %bb.m, %bb.k
  %.096 = phi i32 [ %i.bj, %bb.m ], [ %i.ba, %bb.k ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !67, !range !81, !noundef !82
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.preheader, label %.preheader440

.preheader440:                                    ; preds = %bb.p
  %i.bp = icmp sgt i32 %i.av, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader440
  %i.bq = add i64 %i.au, 4294967295
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cl = and i64 %i.bq, 4294967295
  %wide.trip.count = and i64 %i.au, 2147483647
  br label %bb.q

.preheader:                                       ; preds = %bb.p
  %i.cm = icmp sgt i32 %i.av, -1
  br i1 %i.cm, label %.lr.ph461, label %._crit_edge462

.lr.ph461:                                        ; preds = %.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 9 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.en = and i64 %i.au, 2147483647
  br label %bb.cd

._crit_edge:                                      ; preds = %bb.ca, %.preheader440
end_hunk_0
