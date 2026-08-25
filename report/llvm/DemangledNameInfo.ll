Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DemangledNameInfo?download=true
inline.NumInlined: 107
inline.NumDeleted: 29
begin_hunk_0_@_ZN12lldb_private20TrackingOutputBuffer14printRightImplERKN4llvm16itanium_demangle16FunctionEncodingE:bb.a
bb.aa:                                            ; preds = %bb.z
  call void @abort() #11
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i60: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i62, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i57
  %i.eo = phi i64 [ %i.ee, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i57 ], [ %.pre5.i63, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i62 ]
  %i.ep = phi ptr [ %.pre.i59, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i57 ], [ %i.em, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i62 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo
  store i16 9760, ptr %i.eq, align 1
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit64.sink.split

bb.ab:                                            ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit55
  %i.er = load i64, ptr %i.u, align 8, !tbaa !19  ; 3 uses
  %i.es = add i64 %i.er, 3
  %i.et = load i64, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %i.eu = icmp ugt i64 %i.es, %i.et
  br i1 %i.eu, label %bb.ac, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i66

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i66: ; preds = %bb.ab
  %.phi.trans.insert.i67 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i68 = load ptr, ptr %.phi.trans.insert.i67, align 8, !tbaa !69
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i69

bb.ac:                                            ; preds = %bb.ab
  %i.ev = add i64 %i.er, 995
  %i.ew = shl i64 %i.et, 1
  %spec.select.i.i70 = call i64 @llvm.umax.i64(i64 %i.ew, i64 %i.ev) ; 2 uses
  store i64 %spec.select.i.i70, ptr %i.x, align 8, !tbaa !68
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !69
  %i.ez = call ptr @realloc(ptr noundef %i.ey, i64 noundef %spec.select.i.i70) #10 ; 3 uses
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !69
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.ad, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i71

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i71: ; preds = %bb.ac
  %.pre5.i72 = load i64, ptr %i.u, align 8, !tbaa !19
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i69

bb.ad:                                            ; preds = %bb.ac
  call void @abort() #11
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i69: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i71, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i66
  %i.fb = phi i64 [ %i.er, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i66 ], [ %.pre5.i72, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i71 ]
  %i.fc = phi ptr [ %.pre.i68, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i66 ], [ %i.ez, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i71 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit64.sink.split

_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit64.sink.split: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i60, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i69
  %.sink129 = phi i64 [ 3, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i69 ], [ 2, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i60 ]
  %i.fe = load i64, ptr %i.u, align 8, !tbaa !19
  %i.ff = add i64 %i.fe, %.sink129
  store i64 %i.ff, ptr %i.u, align 8, !tbaa !19
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit64

_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit64: ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit64.sink.split, %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit55
  %.not23 = icmp eq ptr %i.cf, null
  br i1 %.not23, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit64
  %i.fg = load ptr, ptr %0, align 8, !tbaa !44
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(11) %i.cf) #9, !inline_history !71
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  %i.fk = load i16, ptr %i.fj, align 1
  %.mask3.i = and i16 %i.fk, 192
  %.not.i74 = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i74, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = load ptr, ptr %0, align 8, !tbaa !44
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(11) %i.cf) #9, !inline_history !71
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit: ; preds = %bb.af, %bb.ae, %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit64
  %.not24 = icmp eq ptr %i.ch, null
  br i1 %.not24, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit86, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %i.fo = load i64, ptr %i.u, align 8, !tbaa !19  ; 3 uses
  %i.fp = add i64 %i.fo, 10
  %i.fq = load i64, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %i.fr = icmp ugt i64 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ah, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i76

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i76: ; preds = %bb.ag
  %.phi.trans.insert.i77 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i78 = load ptr, ptr %.phi.trans.insert.i77, align 8, !tbaa !69
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i79

bb.ah:                                            ; preds = %bb.ag
  %i.fs = add i64 %i.fo, 1002
  %i.ft = shl i64 %i.fq, 1
  %spec.select.i.i80 = call i64 @llvm.umax.i64(i64 %i.ft, i64 %i.fs) ; 2 uses
  store i64 %spec.select.i.i80, ptr %i.x, align 8, !tbaa !68
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !69
  %i.fw = call ptr @realloc(ptr noundef %i.fv, i64 noundef %spec.select.i.i80) #10 ; 3 uses
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !69
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.ai, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i81

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i81: ; preds = %bb.ah
  %.pre5.i82 = load i64, ptr %i.u, align 8, !tbaa !19
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i79

bb.ai:                                            ; preds = %bb.ah
  call void @abort() #11
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i79: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i81, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i76
  %i.fy = phi i64 [ %i.fo, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i76 ], [ %.pre5.i82, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i81 ]
  %i.fz = phi ptr [ %.pre.i78, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i76 ], [ %i.fw, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i81 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ga, ptr noundef nonnull align 1 dereferenceable(10) @.str.6, i64 10, i1 false)
  %i.gb = load i64, ptr %i.u, align 8, !tbaa !19
  %i.gc = add i64 %i.gb, 10
  store i64 %i.gc, ptr %i.u, align 8, !tbaa !19
  %i.gd = load ptr, ptr %0, align 8, !tbaa !44
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(11) %i.ch) #9, !inline_history !71
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  %i.gh = load i16, ptr %i.gg, align 1
  %.mask3.i84 = and i16 %i.gh, 192
  %.not.i85 = icmp eq i16 %.mask3.i84, 64
  br i1 %.not.i85, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit86, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i79
  %i.gi = load ptr, ptr %0, align 8, !tbaa !44
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(11) %i.ch) #9, !inline_history !71
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit86

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit86: ; preds = %bb.aj, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i79, %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %i.gl = load i32, ptr %i.a, align 8, !tbaa !8
  %i.gm = icmp ne i32 %i.gl, 1
  %i.gn = load i8, ptr %i.e, align 4, !range !18
  %i.go = trunc nuw i8 %i.gn to i1
  %or.cond.i.i87 = select i1 %i.gm, i1 true, i1 %i.go
  %i.gp = load i32, ptr %i.h, align 8
  %i.gq = icmp eq i32 %i.gp, 0
  %.0.i.not.i88 = select i1 %or.cond.i.i87, i1 true, i1 %i.gq
  br i1 %.0.i.not.i88, label %_ZN12lldb_private20TrackingOutputBuffer11finalizeEndEv.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit86
  %i.gr = load i64, ptr %i.u, align 8, !tbaa !19
  %i.gs = trunc i64 %i.gr to i32                  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !25
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !21 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !22 ; 2 uses
  %i.gz = icmp ugt i32 %i.gw, %i.gy
  br i1 %i.gz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ha = phi i32 [ %i.gw, %bb.al ], [ %i.gy, %bb.ak ]
  store i32 %i.ha, ptr %i.gu, align 8, !tbaa !29
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.gs, ptr %i.hb, align 8, !tbaa !30
  br label %_ZN12lldb_private20TrackingOutputBuffer11finalizeEndEv.exit

_ZN12lldb_private20TrackingOutputBuffer11finalizeEndEv.exit: ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit86, %bb.am
  store i32 %i.b, ptr %i.a, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle9NodeArray14printWithCommaERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96
  %.not13 = icmp eq i64 %i.b, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !19
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.e = phi i64 [ %.pre, %.lr.ph ], [ %i.ab, %bb.g ] ; 7 uses
  %.015 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.g ] ; 2 uses
  %.01214 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  br i1 %.01214, label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %i.e, 2
  %i.g = load i64, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.h = icmp ugt i64 %i.f, %i.g
  br i1 %i.h, label %bb.d, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.c
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !69
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %i.e, 994
  %i.j = shl i64 %i.g, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.i) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !68
  %i.k = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !69
  %i.l = tail call ptr @realloc(ptr noundef %i.k, i64 noundef %spec.select.i.i) #10 ; 3 uses
  store ptr %i.l, ptr %.phi.trans.insert.i, align 8, !tbaa !69
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.d
  %.pre5.i = load i64, ptr %i.c, align 8, !tbaa !19
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @abort() #11
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.n = phi i64 [ %i.e, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.l, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i16 8236, ptr %i.p, align 1
  %i.q = load i64, ptr %i.c, align 8, !tbaa !19
  %i.r = add i64 %i.q, 2                          ; 2 uses
  store i64 %i.r, ptr %i.c, align 8, !tbaa !19
  br label %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i, %bb.b
  %i.s = phi i64 [ %i.r, %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.015
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !98
  tail call void @_ZNK4llvm16itanium_demangle4Node14printAsOperandERNS0_12OutputBufferENS1_4PrecEb(ptr noundef nonnull align 8 dereferenceable(11) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext 18, i1 noundef zeroext false)
  %i.w = load i64, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.x = icmp eq i64 %i.s, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.s, i64 noundef %i.e) #9, !inline_history !99
  store i64 %i.e, ptr %i.c, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit, %bb.f
  %i.ab = phi i64 [ %i.e, %bb.f ], [ %i.w, %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %.1 = phi i1 [ %.01214, %bb.f ], [ false, %_ZN4llvm16itanium_demangle12OutputBufferpLESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.ac = add i64 %.015, 1                        ; 2 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !96
  %.not = icmp eq i64 %i.ac, %i.ad
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !100
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle12OutputBuffer15notifyInsertionEmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle12OutputBuffer14notifyDeletionEmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle12OutputBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private20TrackingOutputBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle4Node14printAsOperandERNS0_12OutputBufferENS1_4PrecEb(ptr noundef nonnull align 8 dereferenceable(11) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.b = load i16, ptr %i.a, align 1
  %i.c = and i16 %i.b, 63
  %i.d = zext nneg i16 %i.c to i32
  %i.e = zext i8 %2 to i32
  %i.f = zext i1 %3 to i32
  %i.g = add nuw nsw i32 %i.f, %i.e
  %.not = icmp samesign ugt i32 %i.g, %i.d
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !90, !range !18, !noundef !91
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !86
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19   ; 3 uses
  %i.p = add i64 %i.o, 1                          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !68   ; 2 uses
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i: ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !69
  br label %_ZN4llvm16itanium_demangle12OutputBuffer9printOpenEc.exit

bb.e:                                             ; preds = %bb.d
  %i.t = add i64 %i.o, 993
  %i.u = shl i64 %i.r, 1
  %spec.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.t) ; 2 uses
  store i64 %spec.select.i.i.i, ptr %i.q, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69
  %i.x = tail call ptr @realloc(ptr noundef %i.w, i64 noundef %spec.select.i.i.i) #10 ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !69
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i: ; preds = %bb.e
  %.pre2.i.i = load i64, ptr %i.n, align 8, !tbaa !19 ; 2 uses
  %.pre3.i.i = add i64 %.pre2.i.i, 1
  br label %_ZN4llvm16itanium_demangle12OutputBuffer9printOpenEc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #11
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer9printOpenEc.exit: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i
  %.pre-phi.i.i = phi i64 [ %.pre3.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i ], [ %i.p, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i ]
  %i.z = phi i64 [ %.pre2.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i ], [ %i.o, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i ]
  %i.aa = phi ptr [ %i.x, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i ], [ %.pre.i.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i ]
  store i64 %.pre-phi.i.i, ptr %i.n, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 40, ptr %i.ab, align 1, !tbaa !87
  %i.ac = load ptr, ptr %1, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %0) #9, !inline_history !71
  %i.af = load i16, ptr %i.a, align 1
  %.mask3.i = and i16 %i.af, 192
  %.not.i = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer9printOpenEc.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %0) #9, !inline_history !71
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer9printOpenEc.exit, %bb.g
  %i.aj = load i8, ptr %i.h, align 4, !tbaa !90, !range !18, !noundef !91
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !86
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !86
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %i.ao = load i64, ptr %i.n, align 8, !tbaa !19  ; 3 uses
  %i.ap = add i64 %i.ao, 1                        ; 2 uses
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !68  ; 2 uses
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i7

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i7: ; preds = %bb.i
  %.phi.trans.insert.i.i8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i9 = load ptr, ptr %.phi.trans.insert.i.i8, align 8, !tbaa !69
  br label %_ZN4llvm16itanium_demangle12OutputBuffer10printCloseEc.exit

bb.j:                                             ; preds = %bb.i
  %i.as = add i64 %i.ao, 993
  %i.at = shl i64 %i.aq, 1
  %spec.select.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.as) ; 2 uses
  store i64 %spec.select.i.i.i11, ptr %i.q, align 8, !tbaa !68
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !69
  %i.aw = tail call ptr @realloc(ptr noundef %i.av, i64 noundef %spec.select.i.i.i11) #10 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !69
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.k, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i12

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i12: ; preds = %bb.j
  %.pre2.i.i13 = load i64, ptr %i.n, align 8, !tbaa !19 ; 2 uses
  %.pre3.i.i14 = add i64 %.pre2.i.i13, 1
  br label %_ZN4llvm16itanium_demangle12OutputBuffer10printCloseEc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @abort() #11
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer10printCloseEc.exit: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i7, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i12
  %.pre-phi.i.i10 = phi i64 [ %.pre3.i.i14, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i12 ], [ %i.ap, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i7 ]
  %i.ay = phi i64 [ %.pre2.i.i13, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i12 ], [ %i.ao, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i7 ]
  %i.az = phi ptr [ %i.aw, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge1.i.i12 ], [ %.pre.i.i9, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i.i7 ]
  store i64 %.pre-phi.i.i10, ptr %i.n, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 41, ptr %i.ba, align 1, !tbaa !87
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit17

.critedge:                                        ; preds = %bb.a
  %i.bb = load ptr, ptr %1, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %0) #9, !inline_history !71
  %i.be = load i16, ptr %i.a, align 1
  %.mask3.i15 = and i16 %i.be, 192
  %.not.i16 = icmp eq i16 %.mask3.i15, 64
  br i1 %.not.i16, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit17, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.bf = load ptr, ptr %1, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %0) #9, !inline_history !71
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit17

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit17: ; preds = %bb.l, %.critedge, %_ZN4llvm16itanium_demangle12OutputBuffer10printCloseEc.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7
end_hunk_0
