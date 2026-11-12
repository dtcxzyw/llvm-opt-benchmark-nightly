Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/grid?download=true
inline.NumInlined: 4608
inline.NumDeleted: 2473
begin_hunk_0_@_ZN9ImageGrid5parseERKNSt3__16vectorIhNS0_9allocatorIhEEEE:bb.a
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
  %i.v = load i32, ptr %i.a, align 4, !tbaa !56   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  br i1 %or.cond, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %i.x = lshr i32 %i.v, 24
  %i.y = trunc nuw i32 %i.x to i8
  store i8 %i.y, ptr %i.w, align 1, !tbaa !36
  %i.z = lshr i32 %i.v, 16
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !36
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  store i32 %2, ptr %i.ad, align 1, !tbaa !36
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEEC2Em.exit
  %i.ae = lshr i32 %i.v, 8
  %i.af = trunc i32 %i.ae to i8
  store i8 %i.af, ptr %i.w, align 1, !tbaa !36
  %i.ag = trunc i32 %i.v to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !36
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink9.in.in = phi i32 [ %i.v, %bb.a ], [ %i.ai, %bb.b ] ; 2 uses
  %.sink = trunc i32 %.sink9.in.in to i8
  %.sink9.in = lshr i32 %.sink9.in.in, 8
  %.sink9 = trunc i32 %.sink9.in to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  store i8 %.sink9, ptr %i.aj, align 1, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  store i8 %.sink, ptr %i.ak, align 1, !tbaa !36
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
end_hunk_0
