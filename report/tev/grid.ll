Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/grid?download=true
inline.NumInlined: 4608
inline.NumDeleted: 2473
begin_hunk_0_@_ZN9ImageGrid5parseERKNSt3__16vectorIhNS0_9allocatorIhEEEE:bb.a

bb.ag:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dp = load i32, ptr %i.do, align 1
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !56
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !36
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !36
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !36
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.dz = zext i8 %i.dt to i32
  %i.ea = shl nuw i32 %i.dz, 24
  %i.eb = zext i8 %i.dv to i32
  %i.ec = shl nuw nsw i32 %i.eb, 16
  %i.ed = or disjoint i32 %i.ec, %i.ea
  %i.ee = zext i8 %i.dx to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.ed, %i.ef
  br label %bb.ai

bb.ah:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !36
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !36
  %i.el = zext i8 %i.ei to i32
  %i.em = shl nuw nsw i32 %i.el, 8
  %i.en = zext i8 %i.ek to i32
  %i.eo = or disjoint i32 %i.em, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !36
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.et = zext i8 %i.er to i32
  %i.eu = shl nuw nsw i32 %i.et, 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sink.in = phi ptr [ %i.es, %bb.ah ], [ %i.dy, %bb.ag ]
  %.sink51 = phi i32 [ %i.eu, %bb.ah ], [ %i.eg, %bb.ag ]
  %.sink = load i8, ptr %.sink.in, align 1, !tbaa !36
  %i.ev = zext i8 %.sink to i32
  %i.ew = or disjoint i32 %.sink51, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !57
  %i.ey = load i64, ptr @_ZN5Error2OkE, align 8
  store i64 %i.ey, ptr %0, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), align 8
  %i.fb = trunc i8 %i.fa to i1
  br i1 %i.fb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 8), i64 24, i1 false), !tbaa.struct !58
  br label %_ZN5ErrorC2ERKS_.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 24), align 8, !tbaa !36
  %i.fd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5Error2OkE, i64 16), align 8, !tbaa !36
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef %i.fc, i64 noundef %i.fd)
  br label %_ZN5ErrorC2ERKS_.exit

_ZN5ErrorC2ERKS_.exit:                            ; preds = %bb.ak, %bb.aj, %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  ret void

bb.al:                                            ; preds = %bb.z, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35
  %.pn33 = phi { ptr, i32 } [ %i.q, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35 ], [ %.pn.pn, %bb.z ], [ %i.di, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46 ]
  resume { ptr, i32 } %.pn33
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 104), ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !51
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !443
  %i.j = load ptr, ptr %0, align 8, !tbaa !51
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.m, ptr noundef nonnull %i.c)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr null, ptr %i.n, align 8, !tbaa !66
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i32 -1, ptr %i.o, align 8, !tbaa !67
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 32), align 8 ; 2 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !51
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 40), align 8
  %i.r = getelementptr i8, ptr %i.p, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 %i.s
  store ptr %i.q, ptr %i.t, align 8, !tbaa !51
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !51
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 48), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %0, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 104), ptr %i.a, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.b, align 8, !tbaa !51
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.c)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.c, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  store i32 24, ptr %i.aa, align 8, !tbaa !45
  ret void

bb.d:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.ab, %bb.d ]
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #23
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !51
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8, !tbaa !51
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 72), align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.h, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = load i64, ptr %i.i, align 8
  %i.o = and i64 %i.n, -2
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.o) #25
  br label %_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(100) %i.h) #23
  tail call void @_ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.p) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK9ImageGrid5writeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::__1::vector") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56
  %i.c = icmp ugt i32 %i.b, 65535
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp ugt i32 %i.e, 65535
  %or.cond = select i1 %i.c, i1 true, i1 %i.f     ; 3 uses
  %i.g = select i1 %or.cond, i64 12, i64 8        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #24 ; 13 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !35
  %i.k = getelementptr i8, ptr %i.j, i64 %i.g     ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.j, i8 0, i64 %i.g, i1 false), !tbaa !36
  store ptr %i.k, ptr %i.h, align 8, !tbaa !34
  store i8 0, ptr %i.j, align 1, !tbaa !36
  %.0 = zext i1 %or.cond to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %.0, ptr %i.l, align 1, !tbaa !36
  %i.m = load i16, ptr %1, align 4, !tbaa !54
  %i.n = trunc i16 %i.m to i8
  %i.o = add i8 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.r = load i16, ptr %i.q, align 2, !tbaa !55
  %i.s = trunc i16 %i.r to i8
  %i.t = add i8 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 %i.t, ptr %i.u, align 1, !tbaa !36
  %2 = load i32, ptr %i.a, align 4, !tbaa !56     ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %4 = lshr i32 %2, 24
  %5 = trunc nuw i32 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !36
  %i.v = lshr i32 %2, 16
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %i.w, ptr %i.x, align 1, !tbaa !36
  %i.y = load i32, ptr %i.d, align 4, !tbaa !57
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %i.y)
  store i32 %6, ptr %i.z, align 1, !tbaa !36
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %i.aa = lshr i32 %2, 8
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %3, align 1, !tbaa !36
  %i.ac = trunc i32 %2 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !36
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink9.in.in = phi i32 [ %2, %bb.a ], [ %i.ae, %bb.b ] ; 2 uses
  %.sink = trunc i32 %.sink9.in.in to i8
  %.sink9.in = lshr i32 %.sink9.in.in, 8
  %.sink9 = trunc i32 %.sink9.in to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store i8 %.sink9, ptr %i.af, align 1, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  store i8 %.sink, ptr %i.ag, align 1, !tbaa !36
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK9ImageGrid4dumpEv(ptr dead_on_unwind noalias writable sret(%"class.std::__1::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !51
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr %2, align 8, !tbaa !51
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %2, i64 %i.j ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.k, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store ptr null, ptr %i.l, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  store i32 -1, ptr %i.m, align 8, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 24), ptr %2, align 8, !tbaa !51
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !51
  invoke void @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 8)) #23
  br label %bb.e

common.resume:                                    ; preds = %bb.u, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.ca, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.n, %bb.c ]
  call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #23
  br label %common.resume

_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit: ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE, i64 16), ptr %i.b, align 8, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 32, i1 false)
  store i32 16, ptr %i.q, align 8, !tbaa !45
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.4, i64 noundef 6)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.u

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev.exit
  %i.s = load i16, ptr %1, align 4, !tbaa !54
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i16 noundef zeroext %i.s)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit2 unwind label %bb.u

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit2: ; preds = %bb.f
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.6, i64 noundef 9)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit3 unwind label %bb.u

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit3: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !55
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i16 noundef zeroext %i.x)
          to label %bb.g unwind label %bb.u

bb.g:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit3
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit4 unwind label %bb.u

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit4: ; preds = %bb.g
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.7, i64 noundef 14)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit5 unwind label %bb.u

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit5: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !56
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.ac)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit5
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit6 unwind label %bb.u

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit6: ; preds = %bb.h
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.8, i64 noundef 15)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit7 unwind label %bb.u

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit7: ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit6
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !57
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEj(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 noundef %i.ah)
          to label %bb.i unwind label %bb.u

bb.i:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit7
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit8 unwind label %bb.u ; 0 uses

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit8: ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !45, !noalias !453 ; 2 uses
  %i.al = and i32 %i.ak, 16
  %.not.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46, !noalias !453 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47, !noalias !453 ; 3 uses
  %i.aq = icmp ult ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !46, !noalias !453
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi ptr [ %i.ap, %bb.k ], [ %i.an, %bb.j ]
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

bb.m:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit8
  %i.at = and i32 %i.ak, 8
  %.not1.i.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not1.i.i.i.i, label %.thread15.i.i.i, label %bb.n

.thread15.i.i.i:                                  ; preds = %bb.m
  store i8 0, ptr %0, align 8, !alias.scope !453
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48, !noalias !453
  br label %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i

_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i: ; preds = %bb.n, %bb.l
  %.sink22.i.i.i = phi ptr [ %i.ar, %bb.l ], [ %i.ax, %bb.n ]
  %.sink21.in.i.i.i = phi ptr [ %i.as, %bb.l ], [ %i.av, %bb.n ]
  %.sink21.i.i.i = load ptr, ptr %.sink21.in.i.i.i, align 8, !tbaa !49, !noalias !453 ; 2 uses
  %i.ay = ptrtoint ptr %.sink22.i.i.i to i64
  %i.az = ptrtoint ptr %.sink21.i.i.i to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp ugt i64 %i.ba, -9
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev.exit.i.i.i
  %i.bc = icmp ult i64 %i.ba, 23
  br i1 %i.bc, label %bb.q, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.p
  %i.bd = or i64 %i.ba, 7                         ; 2 uses
  %i.be = icmp eq i64 %i.bd, 23
  %i.bf = add nuw i64 %i.bd, 1
  %i.bg = select i1 %i.be, i64 25, i64 %i.bf      ; 2 uses
  %i.bh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #24
          to label %.noexc9 unwind label %bb.u    ; 2 uses

.noexc9:                                          ; preds = %.thread.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !36, !alias.scope !453
  %i.bj = or i64 %i.bg, 1
  store i64 %i.bj, ptr %0, align 8, !alias.scope !453
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ba, ptr %i.bk, align 8, !tbaa !36, !alias.scope !453
end_hunk_0
begin_hunk_1_@_ZN14ImageItem_Grid31populate_component_descriptionsEv:bb.a

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw add ptr %i.w, i64 -1 acq_rel, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #23, !inline_history !0
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #23
  br label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit, %bb.c
  ret void
}

declare void @_ZN9ImageItem31populate_component_descriptionsEv(ptr noundef nonnull align 8 dereferenceable(928)) unnamed_addr #2

declare void @_ZN11HeifContext9get_imageEjb(ptr dead_on_unwind writable sret(%"class.std::__1::shared_ptr.111") align 8, ptr noundef nonnull align 8 dereferenceable(312), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN9ImageItem32populate_descriptions_from_childERKS_jj(ptr noundef nonnull align 8 dereferenceable(928), ptr noundef nonnull align 8 dereferenceable(928), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #23, !inline_history !4
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #23
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN14ImageItem_Grid17add_new_grid_itemEP11HeifContextjjttPK21heif_encoding_options(ptr dead_on_unwind noalias writable sret(%class.Result.322) align 8 %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i16 noundef zeroext %4, i16 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.anon.434, align 1            ; 3 uses
  %8 = alloca %"class.std::__1::allocator.625", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::__1::shared_ptr.335", align 16 ; 10 uses
  %10 = alloca %class.Error, align 8              ; 9 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__1::vector", align 8 ; 9 uses
  %13 = alloca %"class.std::__1::shared_ptr.133", align 8 ; 7 uses
  %14 = alloca %class.Result.277, align 8         ; 12 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %15 = alloca %"class.std::__1::shared_ptr.335", align 8 ; 6 uses
  %16 = alloca %"class.std::__1::shared_ptr.111", align 8 ; 7 uses
  %17 = alloca %"class.std::__1::vector.119", align 8 ; 11 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %mul = tail call { i16, i1 } @llvm.umul.with.overflow.i16(i16 %5, i16 %4)
  %mul.ov = extractvalue { i16, i1 } %mul, 1
  %.0.i37.sroa.gep = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.0.i37.sroa.gep62 = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.0.i37.sroa.gep64 = getelementptr inbounds nuw i8, ptr %14, i64 16
  br i1 %mul.ov, label %.thread.i.i, label %bb.m

.thread.i.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.c = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24
          to label %.noexc32 unwind label %bb.h   ; 3 uses

.noexc32:                                         ; preds = %.thread.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !36
  store i64 33, ptr %11, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 31, ptr %i.e, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.c, ptr noundef nonnull align 1 dereferenceable(31) @.str.28, i64 31, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 31
  store i8 0, ptr %i.f, align 1, !tbaa !36
  invoke void @_ZN5ErrorC1E15heif_error_code18heif_suberror_codeRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %.noexc32
  %i.g = load i64, ptr %10, align 8
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !58
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef %i.m, i64 noundef %i.o)
          to label %._crit_edge unwind label %bb.j

._crit_edge:                                      ; preds = %bb.d
  %.pre78 = load i8, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.p = phi i8 [ %.pre78, %._crit_edge ], [ %i.j, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.q, align 8, !tbaa !301
  %i.r = trunc i8 %i.p to i1
  br i1 %i.r, label %bb.f, label %_ZN5ErrorD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.u = load i64, ptr %i.i, align 8
  %i.v = and i64 %i.u, -2
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #25
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.e, %bb.f
  %i.w = load i8, ptr %11, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZN5ErrorD2Ev.exit
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.z = load i64, ptr %11, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #25
  br label %.thread

.thread:                                          ; preds = %bb.g, %_ZN5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %_ZNSt3__110shared_ptrI14ImageItem_GridED2B8ne180100Ev.exit59

bb.h:                                             ; preds = %.thread.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35

bb.i:                                             ; preds = %.noexc32
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit34

bb.j:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load i8, ptr %i.i, align 8
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_ZN5ErrorD2Ev.exit34

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.ah = load i64, ptr %i.i, align 8
  %i.ai = and i64 %i.ah, -2
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ai) #25
  br label %_ZN5ErrorD2Ev.exit34

_ZN5ErrorD2Ev.exit34:                             ; preds = %bb.k, %bb.j, %bb.i
  %.pn28 = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ] ; 2 uses
  %i.aj = load i8, ptr %11, align 8
  %i.ak = trunc i8 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35

bb.l:                                             ; preds = %_ZN5ErrorD2Ev.exit34
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.am = load i64, ptr %11, align 8
  %i.an = and i64 %i.am, -2
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit35: ; preds = %bb.l, %_ZN5ErrorD2Ev.exit34, %bb.h
  %.pn28.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn28, %_ZN5ErrorD2Ev.exit34 ], [ %.pn28, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.bd

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.ao = or i32 %3, %2
  %or.cond.i = icmp ugt i32 %i.ao, 65535          ; 3 uses
  %i.ap = select i1 %or.cond.i, i64 12, i64 8     ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #24
          to label %.noexc36 unwind label %bb.v   ; 12 uses

.noexc36:                                         ; preds = %bb.m
  store ptr %i.as, ptr %12, align 8, !tbaa !35, !alias.scope !627
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ap  ; 2 uses
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !49, !alias.scope !627
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.as, i8 0, i64 %i.ap, i1 false), !tbaa !36, !noalias !627
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !34, !alias.scope !627
  store i8 0, ptr %i.as, align 1, !tbaa !36, !noalias !627
  %.0.i = zext i1 %or.cond.i to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %.0.i, ptr %i.au, align 1, !tbaa !36, !noalias !627
  %i.av = trunc i16 %4 to i8
  %i.aw = add i8 %i.av, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !36, !noalias !627
  %i.ay = trunc i16 %5 to i8
  %i.az = add i8 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !36, !noalias !627
  %18 = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc36
  %19 = lshr i32 %2, 24
  %i.bb = lshr i32 %2, 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bd = tail call i32 @llvm.bswap.i32(i32 %3)
  store i32 %i.bd, ptr %i.bc, align 1, !tbaa !36, !noalias !627
  br label %bb.p

bb.o:                                             ; preds = %.noexc36
  %i.be = lshr i32 %2, 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink77.in = phi i32 [ %19, %bb.n ], [ %i.be, %bb.o ]
  %.sink.in = phi i32 [ %i.bb, %bb.n ], [ %2, %bb.o ]
  %.sink9.in.in.i = phi i32 [ %2, %bb.n ], [ %3, %bb.o ] ; 2 uses
  %.sink = trunc i32 %.sink.in to i8
  %.sink77 = trunc nuw i32 %.sink77.in to i8
  store i8 %.sink77, ptr %18, align 1, !tbaa !36, !noalias !627
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  store i8 %.sink, ptr %i.bf, align 1, !tbaa !36, !noalias !627
  %.sink.i = trunc i32 %.sink9.in.in.i to i8
  %.sink9.in.i = lshr i32 %.sink9.in.in.i, 8
  %.sink9.i = trunc i32 %.sink9.in.i to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  store i8 %.sink9.i, ptr %i.bg, align 1, !tbaa !36, !noalias !627
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 7
  store i8 %.sink.i, ptr %i.bh, align 1, !tbaa !36, !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !299 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !183, !noalias !628 ; 2 uses
  store ptr %i.bk, ptr %13, align 8, !tbaa !183, !alias.scope !628
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !184, !noalias !628 ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !184, !alias.scope !628
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNK11HeifContext13get_heif_fileEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = atomicrmw add ptr %i.bo, i64 1 monotonic, align 8, !noalias !628 ; 0 uses
  br label %_ZNK11HeifContext13get_heif_fileEv.exit

_ZNK11HeifContext13get_heif_fileEv.exit:          ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN8HeifFile13add_new_imageEj(ptr dead_on_unwind nonnull writable sret(%class.Result.277) align 8 %14, ptr noundef nonnull align 8 dereferenceable(404) %i.bk, i32 noundef 1735551332)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !298
  switch i32 %i.br, label %bb.s [
    i32 0, label %bb.y
    i32 1, label %_ZNK6ResultIjE5errorEv.exit
  ]

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() #26
          to label %.noexc38 unwind label %bb.x

.noexc38:                                         ; preds = %bb.s
  unreachable

_ZNK6ResultIjE5errorEv.exit:                      ; preds = %bb.r
  %i.bs = load i64, ptr %14, align 8
  store i64 %i.bs, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bu = load i8, ptr %.0.i37.sroa.gep, align 8
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNK6ResultIjE5errorEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %.0.i37.sroa.gep, i64 24, i1 false), !tbaa.struct !58
  br label %_ZN6ResultINSt3__110shared_ptrI14ImageItem_GridEEEC2ERK5Error.exit40

bb.u:                                             ; preds = %_ZNK6ResultIjE5errorEv.exit
  %i.bw = load ptr, ptr %.0.i37.sroa.gep62, align 8, !tbaa !36
  %i.bx = load i64, ptr %.0.i37.sroa.gep64, align 8, !tbaa !36
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef %i.bw, i64 noundef %i.bx)
          to label %_ZN6ResultINSt3__110shared_ptrI14ImageItem_GridEEEC2ERK5Error.exit40 unwind label %bb.x

_ZN6ResultINSt3__110shared_ptrI14ImageItem_GridEEEC2ERK5Error.exit40: ; preds = %bb.u, %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.by, align 8, !tbaa !301
  br label %bb.ar

bb.v:                                             ; preds = %bb.m
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit57

bb.w:                                             ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.x:                                             ; preds = %bb.u, %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.y:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.cc = load i32, ptr %14, align 8, !tbaa !195
  store i32 %i.cc, ptr %i.b, align 4, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !629
  invoke void @_ZNSt3__115allocate_sharedB8ne180100I14ImageItem_GridNS_9allocatorIS1_EEJRP11HeifContextRjEvEENS_10shared_ptrIT_EERKT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::shared_ptr.335") align 8 %15, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt3__110shared_ptrI14ImageItem_GridED2B8ne180100Ev.exit unwind label %bb.al

_ZNSt3__110shared_ptrI14ImageItem_GridED2B8ne180100Ev.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !629
  %i.cd = load ptr, ptr %15, align 8, !tbaa !303  ; 13 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !304 ; 4 uses
  store ptr %i.cd, ptr %9, align 16, !tbaa !262
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !271
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cd, i64 976
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  invoke void @heif_encoding_options_copy(ptr noundef %.pre, ptr noundef %6)
          to label %bb.z unwind label %bb.an

bb.z:                                             ; preds = %_ZNSt3__110shared_ptrI14ImageItem_GridED2B8ne180100Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 976
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !165
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  store i32 1, ptr %i.cj, align 4, !tbaa !307
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 928
  store i16 %4, ptr %i.ck, align 8, !tbaa !630
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 930
  store i16 %5, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !630
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 932
  store i32 %2, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !195
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 936
  store i32 %3, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !195
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 944 ; 2 uses
  %i.cm = zext i16 %4 to i64
  %i.cn = zext i16 %5 to i64
  %i.co = mul nuw nsw i64 %i.cn, %i.cm            ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 952 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !167
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !166 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 2                 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, %i.co
  br i1 %i.cw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cx = sub nuw nsw i64 %i.co, %i.cv
  invoke void @_ZNSt3__16vectorIjNS_9allocatorIjEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 noundef %i.cx)
          to label %_ZN14ImageItem_Grid13set_grid_specERK9ImageGrid.exit unwind label %bb.an

bb.ab:                                            ; preds = %bb.z
  %i.cy = icmp ugt i64 %i.cv, %i.co
  br i1 %i.cy, label %bb.ac, label %_ZN14ImageItem_Grid13set_grid_specERK9ImageGrid.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.co
  store ptr %i.cz, ptr %i.cp, align 8, !tbaa !167
  br label %_ZN14ImageItem_Grid13set_grid_specERK9ImageGrid.exit

_ZN14ImageItem_Grid13set_grid_specERK9ImageGrid.exit: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %i.cd, i64 420
  store i32 %2, ptr %i.da, align 4, !tbaa !246
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 424
  store i32 %3, ptr %i.db, align 8, !tbaa !247
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !307
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 968
  store i32 %i.dd, ptr %i.de, align 8, !tbaa !164
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !299
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  store ptr %i.cd, ptr %16, align 8, !tbaa !205
  %i.dh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store ptr %i.cf, ptr %i.dh, align 8, !tbaa !172
  %.not.i46 = icmp eq ptr %i.cf, null
  br i1 %.not.i46, label %_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100I14ImageItem_GridvEERKNS0_IT_EE.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN14ImageItem_Grid13set_grid_specERK9ImageGrid.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dj = atomicrmw add ptr %i.di, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100I14ImageItem_GridvEERKNS0_IT_EE.exit

_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100I14ImageItem_GridvEERKNS0_IT_EE.exit: ; preds = %_ZN14ImageItem_Grid13set_grid_specERK9ImageGrid.exit, %bb.ad
  invoke void @_ZN11HeifContext17insert_image_itemEjRKNSt3__110shared_ptrI9ImageItemEE(ptr noundef nonnull align 8 dereferenceable(312) %i.df, i32 noundef %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %bb.ae unwind label %bb.am

bb.ae:                                            ; preds = %_ZNSt3__110shared_ptrI9ImageItemEC2B8ne180100I14ImageItem_GridvEERKNS0_IT_EE.exit
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !172 ; 5 uses
  %.not.i47 = icmp eq ptr %i.dk, null
  br i1 %.not.i47, label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = atomicrmw add ptr %i.dl, i64 -1 acq_rel, align 8
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.ag, label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #23, !inline_history !0
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #23
  br label %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit: ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.dr = load ptr, ptr %13, align 8, !tbaa !183  ; 3 uses
  %i.ds = load i32, ptr %i.b, align 4, !tbaa !195
end_hunk_1
begin_hunk_2_@_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEED2B8ne180100Ev:bb.a
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI8Box_colrEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI8Box_colrEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !327  ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI8Box_colrEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 -1 acq_rel, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI8Box_colrEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #23, !inline_history !655
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #23
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI8Box_colrEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI8Box_colrEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI8Box_colrEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !323
  br label %_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.m = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !324
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !328
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #25
  br label %_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !173    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177  ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i64 -1 acq_rel, align 8
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #23, !inline_history !656
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #23
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !173
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.m = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !174
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !178
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #25
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI8Box_pixiED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !318  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #23, !inline_history !4
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #23
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6ResultINSt3__110shared_ptrI9ImageItemEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.454, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !309  ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZNSt3__17variantIJNS_10shared_ptrI9ImageItemEE5ErrorEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = zext i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @__const._ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI9ImageItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.__fmatrix, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !191
  invoke void %i.f(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI9ImageItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i unwind label %bb.c, !inline_history !19

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI9ImageItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZNSt3__17variantIJNS_10shared_ptrI9ImageItemEE5ErrorEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

_ZNSt3__17variantIJNS_10shared_ptrI9ImageItemEE5ErrorEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI9ImageItemEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN14ImageItem_Grid24add_and_encode_full_gridEP11HeifContextRKNSt3__16vectorINS2_10shared_ptrI14HeifPixelImageEENS2_9allocatorIS6_EEEEttP12heif_encoderRK21heif_encoding_options(ptr dead_on_unwind noalias writable sret(%class.Result.322) align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(56) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.anon.434, align 1            ; 3 uses
  %8 = alloca %"class.std::__1::allocator.625", align 1 ; 3 uses
  %9 = alloca %class.anon.454, align 1            ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.std::__1::shared_ptr.335", align 16 ; 15 uses
  %11 = alloca %"class.std::__1::vector", align 8 ; 9 uses
  %12 = alloca %"class.std::__1::shared_ptr.133", align 8 ; 9 uses
  %13 = alloca %"class.std::__1::vector.119", align 8 ; 17 uses
  %14 = alloca %"class.std::__1::shared_ptr.368", align 16 ; 11 uses
  %15 = alloca %"class.std::__1::shared_ptr.111", align 8 ; 8 uses
  %16 = alloca %class.Result.345, align 8         ; 12 uses
  %17 = alloca %"class.std::__1::shared_ptr.367", align 8 ; 7 uses
  %18 = alloca %class.Result.277, align 8         ; 12 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %19 = alloca %"class.std::__1::shared_ptr.335", align 16 ; 7 uses
  %20 = alloca %"class.std::__1::shared_ptr.111", align 16 ; 7 uses
  %21 = alloca %"class.std::__1::shared_ptr.387", align 8 ; 6 uses
  %22 = alloca %"class.std::__1::shared_ptr.369", align 8 ; 4 uses
  %23 = alloca %"class.std::__1::shared_ptr.369", align 16 ; 4 uses
  %24 = alloca %"class.std::__1::vector.97", align 8 ; 10 uses
  %25 = alloca %"class.std::__1::shared_ptr.369", align 16 ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %2, align 8, !tbaa !690
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !266  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  %i.f = load i32, ptr %i.e, align 8, !tbaa !691
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 372
  %i.h = load i32, ptr %i.g, align 4, !tbaa !692
  %i.i = zext i16 %4 to i32                       ; 2 uses
  %i.j = mul i32 %i.f, %i.i                       ; 7 uses
  %i.k = zext i16 %3 to i32                       ; 2 uses
  %i.l = mul i32 %i.h, %i.k                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.m = icmp ugt i32 %i.j, 65535
  %i.n = icmp ugt i32 %i.l, 65535
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n   ; 3 uses
  %i.o = select i1 %or.cond.i, i64 12, i64 8      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.0.i79.sroa.gep = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %.0.i79.sroa.gep120 = getelementptr inbounds nuw i8, ptr %18, i64 24
  %.0.i79.sroa.gep122 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.0.i63.sroa.gep = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %.0.i63.sroa.gep127 = getelementptr inbounds nuw i8, ptr %16, i64 24
  %.0.i63.sroa.gep129 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24
          to label %.noexc unwind label %bb.g     ; 12 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.r, ptr %11, align 8, !tbaa !35, !alias.scope !693
  %i.s = getelementptr i8, ptr %i.r, i64 %i.o     ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !49, !alias.scope !693
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.r, i8 0, i64 %i.o, i1 false), !tbaa !36, !noalias !693
  store ptr %i.s, ptr %i.p, align 8, !tbaa !34, !alias.scope !693
  store i8 0, ptr %i.r, align 1, !tbaa !36, !noalias !693
  %.0.i = zext i1 %or.cond.i to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 %.0.i, ptr %i.t, align 1, !tbaa !36, !noalias !693
  %i.u = trunc i16 %3 to i8
  %i.v = add i8 %i.u, -1
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !36, !noalias !693
  %i.x = trunc i16 %4 to i8
  %i.y = add i8 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  store i8 %i.y, ptr %i.z, align 1, !tbaa !36, !noalias !693
  %26 = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %27 = lshr i32 %i.j, 24
  %i.aa = lshr i32 %i.j, 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.ac, ptr %i.ab, align 1, !tbaa !36, !noalias !693
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.ad = lshr i32 %i.j, 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink153.in = phi i32 [ %27, %bb.b ], [ %i.ad, %bb.c ]
  %.sink.in = phi i32 [ %i.aa, %bb.b ], [ %i.j, %bb.c ]
  %.sink9.in.in.i = phi i32 [ %i.j, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.sink = trunc i32 %.sink.in to i8
  %.sink153 = trunc nuw i32 %.sink153.in to i8
  store i8 %.sink153, ptr %26, align 1, !tbaa !36, !noalias !693
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store i8 %.sink, ptr %i.ae, align 1, !tbaa !36, !noalias !693
  %.sink.i = trunc i32 %.sink9.in.in.i to i8
  %.sink9.in.i = lshr i32 %.sink9.in.in.i, 8
  %.sink9.i = trunc i32 %.sink9.in.i to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i8 %.sink9.i, ptr %i.af, align 1, !tbaa !36, !noalias !693
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  store i8 %.sink.i, ptr %i.ag, align 1, !tbaa !36, !noalias !693
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !183, !noalias !694 ; 2 uses
  store ptr %i.ai, ptr %12, align 8, !tbaa !183, !alias.scope !694
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !184, !noalias !694 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !184, !alias.scope !694
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNK11HeifContext13get_heif_fileEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8, !noalias !694 ; 0 uses
  br label %_ZNK11HeifContext13get_heif_fileEv.exit

_ZNK11HeifContext13get_heif_fileEv.exit:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.ao = mul nuw nsw i32 %i.i, %i.k              ; 2 uses
  %.not141.not = icmp eq i32 %i.ao, 0
  br i1 %.not141.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK11HeifContext13get_heif_fileEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ao to i64
  br label %bb.h

bb.f:                                             ; preds = %_ZNSt3__110shared_ptrI9ImageItemED2B8ne180100Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.loopexit, label %bb.h, !llvm.loop !661

bb.g:                                             ; preds = %bb.a
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit113

bb.h:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !299
  %i.az = load ptr, ptr %2, align 8, !tbaa !690
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv
  invoke void @_ZN11HeifContext12encode_imageERKNSt3__110shared_ptrI14HeifPixelImageEEP12heif_encoderRK21heif_encoding_options22heif_image_input_class(ptr dead_on_unwind nonnull writable sret(%class.Result.345) align 8 %16, ptr noundef nonnull align 8 dereferenceable(312) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(56) %6, i32 noundef 1)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bb = load i32, ptr %i.ap, align 8, !tbaa !309 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0                    ; 2 uses
  br i1 %i.bc, label %_ZN6ResultINSt3__110shared_ptrI9ImageItemEEEdeEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %cond = icmp eq i32 %i.bb, 1
  br i1 %cond, label %_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE5errorEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() #26
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.k
  unreachable

_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE5errorEv.exit: ; preds = %bb.j
  %i.bd = load i64, ptr %16, align 8
  store i64 %i.bd, ptr %0, align 8
  %i.be = load i8, ptr %.0.i63.sroa.gep, align 8
  %i.bf = trunc i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE5errorEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.0.i63.sroa.gep, i64 24, i1 false), !tbaa.struct !58
  br label %_ZN6ResultINSt3__110shared_ptrI14ImageItem_GridEEEC2ERK5Error.exit

bb.m:                                             ; preds = %_ZNK6ResultINSt3__110shared_ptrI9ImageItemEEE5errorEv.exit
  %i.bg = load ptr, ptr %.0.i63.sroa.gep127, align 8, !tbaa !36
  %i.bh = load i64, ptr %.0.i63.sroa.gep129, align 8, !tbaa !36
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %_ZN6ResultINSt3__110shared_ptrI14ImageItem_GridEEEC2ERK5Error.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6ResultINSt3__110shared_ptrI14ImageItem_GridEEEC2ERK5Error.exit: ; preds = %bb.m, %bb.l
  store i32 1, ptr %i.ar, align 8, !tbaa !301
  br label %_ZNSt3__110shared_ptrI8Box_pixiED2B8ne180100Ev.exit

bb.n:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

_ZN6ResultINSt3__110shared_ptrI9ImageItemEEEdeEv.exit: ; preds = %bb.i
  %i.bj = load ptr, ptr %16, align 8, !tbaa !205  ; 2 uses
  %i.bk = load ptr, ptr %.0.i63.sroa.gep, align 8, !tbaa !172 ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i67, label %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN6ResultINSt3__110shared_ptrI9ImageItemEEEdeEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit

_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit: ; preds = %bb.o, %_ZN6ResultINSt3__110shared_ptrI9ImageItemEEEdeEv.exit
  store ptr %i.bj, ptr %15, align 8, !tbaa !695
  store ptr %i.bk, ptr %i.as, align 8, !tbaa !271
  %.pre154 = load ptr, ptr %12, align 8, !tbaa !183
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bj, i64 416
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !185
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN8HeifFile12get_infe_boxEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::shared_ptr.367") align 8 %17, ptr noundef nonnull align 8 dereferenceable(404) %.pre154, i32 noundef %.pre)
          to label %bb.p unwind label %bb.af

bb.p:                                             ; preds = %_ZNSt3__110shared_ptrI9ImageItemEaSB8ne180100ERKS2_.exit
  %i.bn = load ptr, ptr %17, align 8, !tbaa !312
  invoke void @_ZN8Box_infe15set_hidden_itemEb(ptr noundef nonnull align 8 dereferenceable(273) %i.bn, i1 noundef zeroext true)
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !313 ; 5 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrI8Box_infeED2B8ne180100Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = atomicrmw add ptr %i.bp, i64 -1 acq_rel, align 8
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.s, label %_ZNSt3__110shared_ptrI8Box_infeED2B8ne180100Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #23, !inline_history !16
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #23
  br label %_ZNSt3__110shared_ptrI8Box_infeED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI8Box_infeED2B8ne180100Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.bv = load ptr, ptr %15, align 8, !tbaa !205  ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 416
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !185 ; 2 uses
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !167 ; 4 uses
  %i.bz = load ptr, ptr %i.av, align 8, !tbaa !168 ; 2 uses
  %i.ca = icmp ult ptr %i.by, %i.bz
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt3__110shared_ptrI8Box_infeED2B8ne180100Ev.exit
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !195
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  br label %bb.y

bb.u:                                             ; preds = %_ZNSt3__110shared_ptrI8Box_infeED2B8ne180100Ev.exit
  %i.cc = load ptr, ptr %13, align 8, !tbaa !166
  %i.cd = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ce = ptrtoint ptr %i.cc to i64               ; 3 uses
  %i.cf = sub i64 %i.cd, %i.ce                    ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 2
  %i.ch = add nsw i64 %i.cg, 1                    ; 2 uses
  %i.ci = icmp ugt i64 %i.ch, 4611686018427387903
  br i1 %i.ci, label %bb.v, label %_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNKSt3__16vectorIjNS_9allocatorIjEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #26
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.v
  unreachable

_ZNKSt3__16vectorIjNS_9allocatorIjEEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.u
  %i.cj = ptrtoint ptr %i.bz to i64
  %i.ck = sub i64 %i.cj, %i.ce                    ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.ck, 9223372036854775804
  %i.cl = ashr exact i64 %i.ck, 1
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.ch)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 4611686018427387903 ; 4 uses
  %i.cm = icmp ne i64 %.0.i.i.i, 0
  call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp ugt i64 %.0.i.i.i, 4611686018427387903
  br i1 %i.cn, label %bb.w, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIjEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m.exit.i.i.i

end_hunk_2
